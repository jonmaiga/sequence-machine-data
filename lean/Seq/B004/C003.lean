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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
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
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B003.C005

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A334907.P12812039533966240543

`n!*A001790(2*n+1)/A060818(n)`
-/

namespace A334907.P12812039533966240543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * A001790 (2 * n + 1) : ℚ) / (A060818 n : ℚ)

end

end A334907.P12812039533966240543

noncomputable section

/-- A334907: Comtet's expansion of the e.g.f. (sqrt(1 + sqrt(8*s)) - sqrt(1 - sqrt(8*s)))/ sqrt(8*s * (1 - 8*s)).

Offset 0, canonical program `A334907.P12812039533966240543`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334907 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A334907.P12812039533966240543.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334907.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A351864.P6848579617677032466

`2^A240883(n)`
-/

namespace A351864.P6848579617677032466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A240883 n : ℤ)

end

end A351864.P6848579617677032466

noncomputable section

/-- A351864: Numerator of zeta({6}_n)/Pi^(6n).

Offset 0, canonical program `A351864.P6848579617677032466`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351864 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A351864.P6848579617677032466.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351864.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378781.P6898465891069053923

`n*A378778(n)/3`
-/

namespace A378781.P6898465891069053923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A378778 n : ℚ) / 3

end

end A378781.P6898465891069053923

noncomputable section

/-- A378781: a(n) = n^3 * 2^n * binomial(3*n, n) / 3.

Offset 0, canonical program `A378781.P6898465891069053923`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378781 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378781.P6898465891069053923.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378781.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336225.P17998549237820422195

`A007953(A004247(n))`
-/

namespace A336225.P17998549237820422195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A004247 n).toNat

end

end A336225.P17998549237820422195

noncomputable section

/-- A336225: Table read by antidiagonals: T(n, k) = digitsum(n*k) with n >= 0 and k >= 0.

Offset 0, canonical program `A336225.P17998549237820422195`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336225 (n : ℕ) : ℤ :=
  A336225.P17998549237820422195.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336225.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A343754.P7504119164661584635

`n-A174574(n)`
-/

namespace A343754.P7504119164661584635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A174574 n

end

end A343754.P7504119164661584635

noncomputable section

/-- A343754: a(n) = 0, and for any n > 0, a(n+1) = a(n) - A065363(n) + 1.

Offset 0, canonical program `A343754.P7504119164661584635`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343754 (n : ℕ) : ℤ :=
  A343754.P7504119164661584635.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343754.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353109.P16770643257705871787

`A010888(A004247(n))`
-/

namespace A353109.P16770643257705871787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A004247 n).toNat

end

end A353109.P16770643257705871787

noncomputable section

/-- A353109: Array read by antidiagonals: A(n, k) is the digital root of n*k with n >= 0 and k >= 0.

Offset 0, canonical program `A353109.P16770643257705871787`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353109 (n : ℕ) : ℤ :=
  A353109.P16770643257705871787.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353109.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359499.P4428695671887271465

`A219086(n)*A175110(n)*A359844(n)`
-/

namespace A359499.P4428695671887271465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 n * A175110 n * A359844 n

end

end A359499.P4428695671887271465

noncomputable section

/-- A359499: a(n) = ((2*n+1)^16 - 1)/64.

Offset 0, canonical program `A359499.P4428695671887271465`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359499 (n : ℕ) : ℤ :=
  A359499.P4428695671887271465.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359499.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369510.P1265040740689767623

`2^n*A006013(n)`
-/

namespace A369510.P1265040740689767623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A006013 n

end

end A369510.P1265040740689767623

noncomputable section

/-- A369510: Expansion of (1/x) * Series_Reversion( x * ((1-x)^2-x^2)^2 ).

Offset 0, canonical program `A369510.P1265040740689767623`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369510 (n : ℕ) : ℤ :=
  A369510.P1265040740689767623.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369510.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286460.P5982496039173164368

`1/2*(2+(A001511(n+1)+A000203(n+1))²-A001511(n+1)-3*A000203(n+1))`
-/

namespace A286460.P5982496039173164368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + ((A001511 (n + 1) + A000203 (n + 1)) ^ 2 - A001511 (n + 1)) - 3 * A000203 (n + 1) : ℚ)

end

end A286460.P5982496039173164368

noncomputable section

/-- A286460: Compound filter (2-adic valuation & sum of the divisors): a(n) = P(A001511(n), A000203(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286460.P5982496039173164368`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286460 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286460.P5982496039173164368.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286460.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A308546.P17597284659635134973

`a(n-1)*(1+1/A001511(n))` with `a(0)=1`
-/

namespace A308546.P17597284659635134973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (1 + 1 / (A001511 n : ℚ))

end

end A308546.P17597284659635134973

noncomputable section

/-- A308546: Number of double-closed subsets of {1..n}.

Offset 0, canonical program `A308546.P17597284659635134973`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308546 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A308546.P17597284659635134973.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308546.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A352375.P700649589614720325

`A007618(n+2)-A007618(n+1)`
-/

namespace A352375.P700649589614720325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007618 (n + 2) - A007618 (n + 1)

end

end A352375.P700649589614720325

noncomputable section

/-- A352375: Sum of digits of A007618.

Offset 1, canonical program `A352375.P700649589614720325`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A352375 (n : ℕ) : ℤ :=
  A352375.P700649589614720325.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A352375.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366839.P8593895561095689137

`2*A001511(n+1)`
-/

namespace A366839.P8593895561095689137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001511 (n + 1)

end

end A366839.P8593895561095689137

noncomputable section

/-- A366839: Sum of even prime factors of 2n, counted with multiplicity.

Offset 1, canonical program `A366839.P8593895561095689137`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366839 (n : ℕ) : ℤ :=
  A366839.P8593895561095689137.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366839.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376583.P3078053738808332107

`A000035(A002260(n+1))`
-/

namespace A376583.P3078053738808332107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A002260 (n + 1)).toNat

end

end A376583.P3078053738808332107

noncomputable section

/-- A376583: Parity of A002260.

Offset 1, canonical program `A376583.P3078053738808332107`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376583 (n : ℕ) : ℤ :=
  A376583.P3078053738808332107.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376583.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286063.P1257865481194737079

`A254379(lt[val(n+1, 2), 2])`
-/

namespace A286063.P1257865481194737079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A286063.P1257865481194737079

noncomputable section

/-- A286063: Fixed point of the mapping 00->001, 1->100, starting with 00.

Offset 1, canonical program `A286063.P1257865481194737079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286063 (n : ℕ) : ℤ :=
  A286063.P1257865481194737079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286109.P13280078457702034505

`A057944(n)+A003987(n)`
-/

namespace A286109.P13280078457702034505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A003987 n

end

end A286109.P13280078457702034505

noncomputable section

/-- A286109: Square array read by antidiagonals: A(n,k) = T(n XOR k, 2*(n AND k)), where T(n,k) is sequence A001477 considered as a two-dimensional table, AND is bitwise-and (A004198) and XOR is bitwise-xor (A003987).

Offset 0, canonical program `A286109.P13280078457702034505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286109 (n : ℕ) : ℤ :=
  A286109.P13280078457702034505.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286145.P7193597459372370240

`A003987(n)+A000217(A025581(n)+A003987(n))`
-/

namespace A286145.P7193597459372370240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 n + A000217 (A025581 n + A003987 n).toNat

end

end A286145.P7193597459372370240

noncomputable section

/-- A286145: Square array read by antidiagonals: A(n,k) = T(n XOR k, k), where T(n,k) is sequence A001477 considered as a two-dimensional table, and XOR is bitwise-xor (A003987).

Offset 0, canonical program `A286145.P7193597459372370240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286145 (n : ℕ) : ℤ :=
  A286145.P7193597459372370240.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286727.P12806024800689892931

`A095190(n)+A001651(n+1)`
-/

namespace A286727.P12806024800689892931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095190 n + A001651 (n + 1)

end

end A286727.P12806024800689892931

noncomputable section

/-- A286727: Positions of 0 in A286063; complement of A286728.

Offset 1, canonical program `A286727.P12806024800689892931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286727 (n : ℕ) : ℤ :=
  A286727.P12806024800689892931.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286803.P3688873761259965348

`A286692(n+1)-A286665(n+1)`
-/

namespace A286803.P3688873761259965348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286692 (n + 1) - A286665 (n + 1)

end

end A286803.P3688873761259965348

noncomputable section

/-- A286803: Positions of 1 in A286801; complement of A286802.

Offset 1, canonical program `A286803.P3688873761259965348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286803 (n : ℕ) : ℤ :=
  A286803.P3688873761259965348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286996.P13697868704389971951

`A187969(A104521(n)+n)`
-/

namespace A286996.P13697868704389971951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187969 (A104521 n + (n : ℤ)).toNat

end

end A286996.P13697868704389971951

noncomputable section

/-- A286996: {0->000, 11->null}-transform of the Sturmian word A080764.

Offset 1, canonical program `A286996.P13697868704389971951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286996 (n : ℕ) : ℤ :=
  A286996.P13697868704389971951.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287555.P853673800569344600

`A004766(n+1)-A273149(n)`
-/

namespace A287555.P853673800569344600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1) - A273149 n

end

end A287555.P853673800569344600

noncomputable section

/-- A287555: Positions of 3 in A053839.

Offset 1, canonical program `A287555.P853673800569344600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287555 (n : ℕ) : ℤ :=
  A287555.P853673800569344600.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288777.P1163062613546913329

`A002260(n+1)*A137948(n)`
-/

namespace A288777.P1163062613546913329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A137948 n

end

end A288777.P1163062613546913329

noncomputable section

/-- A288777: Triangle read by rows in which column k lists the positive multiples of the factorial of k, with 1 <= k <= n.

Offset 1, canonical program `A288777.P1163062613546913329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A288777 (n : ℕ) : ℤ :=
  A288777.P1163062613546913329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A288777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288811.P11306443262646702706

`A095121(n)+1-A288807(n)`
-/

namespace A288811.P11306443262646702706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A288807 n)

end

end A288811.P11306443262646702706

noncomputable section

/-- A288811: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 513", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A288811.P11306443262646702706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A288811 (n : ℕ) : ℤ :=
  A288811.P11306443262646702706.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A288811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288930.P1598540981707641911

`2*A288625(n+1)-(n+2)`
-/

namespace A288930.P1598540981707641911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A288625 (n + 1) - (n + 2 : ℤ)

end

end A288930.P1598540981707641911

noncomputable section

/-- A288930: Positions of 0 in A288929; complement of A288931.

Offset 1, canonical program `A288930.P1598540981707641911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288930 (n : ℕ) : ℤ :=
  A288930.P1598540981707641911.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289450.P12865695419556516410

`A120588(n)+A141351(n)-A155587(n)`
-/

namespace A289450.P12865695419556516410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n + (A141351 n - A155587 n)

end

end A289450.P12865695419556516410

noncomputable section

/-- A289450: Related to number of mesh patterns of length 2 that avoid the pattern 231 or 321. For details see the comment section.

Offset 0, canonical program `A289450.P12865695419556516410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289450 (n : ℕ) : ℤ :=
  A289450.P12865695419556516410.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289869.P12188574629883902402

`A005836(A002260(n+1))+A005823(A004736(n+1))`
-/

namespace A289869.P12188574629883902402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A002260 (n + 1)).toNat + A005823 (A004736 (n + 1)).toNat

end

end A289869.P12188574629883902402

noncomputable section

/-- A289869: Square array T(n,k) (n>=0, k>=0) read by antidiagonals downwards: T(n,k) = A005836(n) + 2*A005836(k).

Offset 1, canonical program `A289869.P12188574629883902402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A289869 (n : ℕ) : ℤ :=
  A289869.P12188574629883902402.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A289869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290021.P11662465135056403279

`A071673(n)+1`
-/

namespace A290021.P11662465135056403279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071673 n + 1

end

end A290021.P11662465135056403279

noncomputable section

/-- A290021: a(0) = 1; for n > 0, a(n) = a(k) + a(m) where binomial(k + m + 2, 2) - m = n and binomial(k + m + 2, 2) is the smallest triangular number larger than or equal to m.

Offset 0, canonical program `A290021.P11662465135056403279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290021 (n : ℕ) : ℤ :=
  A290021.P11662465135056403279.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290231.P14487216163094283759

`or(A277928(n), A288812(n))`
-/

namespace A290231.P14487216163094283759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277928 n) (A288812 n)

end

end A290231.P14487216163094283759

noncomputable section

/-- A290231: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290231.P14487216163094283759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290231 (n : ℕ) : ℤ :=
  A290231.P14487216163094283759.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290257.P10947685291748395

`A037870(2*(n+1))`
-/

namespace A290257.P10947685291748395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037870 (2 * (n + 1))

end

end A290257.P10947685291748395

noncomputable section

/-- A290257: a(n) is the size of the Durfee square of the integer partition having viabin number n.

Offset 1, canonical program `A290257.P10947685291748395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290257 (n : ℕ) : ℤ :=
  A290257.P10947685291748395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290418.P2473438558105985708

`A052551(n+1)-A285773(n+1)`
-/

namespace A290418.P2473438558105985708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (n + 1) - A285773 (n + 1)

end

end A290418.P2473438558105985708

noncomputable section

/-- A290418: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 790", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290418.P2473438558105985708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A290418 (n : ℕ) : ℤ :=
  A290418.P2473438558105985708.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A290418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290605.P11328133936199522296

`A000108(A002262(n))*A003992(n)`
-/

namespace A290605.P11328133936199522296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n).toNat * A003992 n

end

end A290605.P11328133936199522296

noncomputable section

/-- A290605: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of 2/(1 + sqrt(1 - 4*k*x)).

Offset 0, canonical program `A290605.P11328133936199522296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2758 terms. -/
def A290605 (n : ℕ) : ℤ :=
  A290605.P11328133936199522296.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2758 terms. -/
def A290605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290739.P10153310189044843911

`A089802(n)*A089802(∑[A089802(n)]²)`
-/

namespace A290739.P10153310189044843911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089802 n * A089802 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A290739.P10153310189044843911

noncomputable section

/-- A290739: a(n) = 0 unless n = 3j^2+2j or 3j^2+4j+1 for some j>=0, in which case a(n) = (-1)^(j+1).

Offset 0, canonical program `A290739.P10153310189044843911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290739 (n : ℕ) : ℤ :=
  A290739.P10153310189044843911.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291662.P18141742761416750643

`A165817(n)-n`
-/

namespace A291662.P18141742761416750643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165817 n - (n : ℤ)

end

end A291662.P18141742761416750643

noncomputable section

/-- A291662: Number of ordered rooted trees with 2n non-root nodes such that the maximal outdegree equals n.

Offset 0, canonical program `A291662.P18141742761416750643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A291662 (n : ℕ) : ℤ :=
  A291662.P18141742761416750643.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A291662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292666.P16137424853136077463

`A189523(n+1)-A000572(n+1)`
-/

namespace A292666.P16137424853136077463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189523 (n + 1) - A000572 (n + 1)

end

end A292666.P16137424853136077463

noncomputable section

/-- A292666: Rank of n*(e+1) when all the numbers j*(e-1) and k*(e+1), for j>=1, k>=1, are jointly ranked.

Offset 1, canonical program `A292666.P16137424853136077463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292666 (n : ℕ) : ℤ :=
  A292666.P16137424853136077463.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293795.P7536653038350909202

`A094058(eq[1, A094058(n+1)-A004712(n+1)]+1)`
-/

namespace A293795.P7536653038350909202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094058 (n + 1) - A004712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094058 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A293795.P7536653038350909202

noncomputable section

/-- A293795: Numbers k such that (d(k), d(k+1)) = (1,1) in the base-2 digits d(i) of e.

Offset 1, canonical program `A293795.P7536653038350909202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5047 terms. -/
def A293795 (n : ℕ) : ℤ :=
  A293795.P7536653038350909202.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5047 terms. -/
def A293795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293899.P5665492798636299173

`A293895(n+1)-A293896(n+1)`
-/

namespace A293899.P5665492798636299173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293895 (n + 1) - A293896 (n + 1)

end

end A293899.P5665492798636299173

noncomputable section

/-- A293899: Number of proper divisors of the form 3k+1 minus number of proper divisors of the form 3k+2.

Offset 1, canonical program `A293899.P5665492798636299173`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293895, A293896, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293899 (n : ℕ) : ℤ :=
  A293899.P5665492798636299173.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293895, A293896, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293899.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295112.P4111876458135597642

`n-∑[∑[A168058(n)]]`
-/

namespace A295112.P4111876458135597642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168058 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295112.P4111876458135597642

noncomputable section

/-- A295112: a(n) = Sum_{k=0..n} binomial(n,2*k)*binomial(2*k,k)/(2*k-1).

Offset 0, canonical program `A295112.P4111876458135597642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A295112 (n : ℕ) : ℤ :=
  A295112.P4111876458135597642.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A295112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295584.P3807937795834831549

`eq[char[A182139(n+1)], A126120(n)]`
-/

namespace A295584.P3807937795834831549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182139 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A295584.P3807937795834831549

noncomputable section

/-- A295584: Odd numbers that are not a product of Mersenne numbers (A000225).

Offset 1, canonical program `A295584.P3807937795834831549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A295584 (n : ℕ) : ℤ :=
  (A295584.P3807937795834831549.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A295584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296612.P17703809730803621848

`A002260(n+1)*A155038(n+1)`
-/

namespace A296612.P17703809730803621848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A155038 (n + 1)

end

end A296612.P17703809730803621848

noncomputable section

/-- A296612: Square array read by antidiagonals upwards: T(n,k) equals k times the number of compositions (ordered partitions) of n, with n >= 0 and k >= 1.

Offset 0, canonical program `A296612.P17703809730803621848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296612 (n : ℕ) : ℤ :=
  A296612.P17703809730803621848.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298879.P12503287432390370405

`eq[0, A228039(n)]`
-/

namespace A298879.P12503287432390370405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298879.P12503287432390370405

noncomputable section

/-- A298879: Numbers whose square is not odious.

Offset 1, canonical program `A298879.P12503287432390370405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298879 (n : ℕ) : ℤ :=
  (A298879.P12503287432390370405.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298944.P11431826460709050354

`A220105(Δ[A053767(n)])`
-/

namespace A298944.P11431826460709050354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220105 (f1 (n + 1) - f1 n).toNat

end

end A298944.P11431826460709050354

noncomputable section

/-- A298944: a(n) = 2^(c-1) mod c^2, where c is the n-th composite number.

Offset 1, canonical program `A298944.P11431826460709050354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A298944 (n : ℕ) : ℤ :=
  A298944.P11431826460709050354.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A298944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300656.P11645637042434351895

`A158558(A004247(n))`
-/

namespace A300656.P11645637042434351895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158558 (A004247 n).toNat

end

end A300656.P11645637042434351895

noncomputable section

/-- A300656: Triangle read by rows: T(n,k) = 30*k^2*(n-k)^2 + 1; n >= 0, 0 <= k <= n.

Offset 0, canonical program `A300656.P11645637042434351895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300656 (n : ℕ) : ℤ :=
  A300656.P11645637042434351895.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301631.P7848595426494631471

`A191309(Δ[n²])/4^val(n+1, 2)`
-/

namespace A301631.P7848595426494631471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191309 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

end

end A301631.P7848595426494631471

noncomputable section

/-- A301631: Numerator of population variance of n-th row of Pascal's triangle.

Offset 0, canonical program `A301631.P7848595426494631471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A301631 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A301631.P7848595426494631471.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A301631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302445.P980944586648019814

`p?[A002260(A038722(n+1))+A002260(n+1)²]`
-/

namespace A302445.P980944586648019814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A038722 (n + 1)).toNat + A002260 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A302445.P980944586648019814

noncomputable section

/-- A302445: Triangle read by rows: row n gives primes of form k^2 + n - k for 0 < k < n.

Offset 2, canonical program `A302445.P980944586648019814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1627 terms. -/
def A302445 (n : ℕ) : ℤ :=
  A302445.P980944586648019814.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1627 terms. -/
def A302445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303581.P15071600454215095240

`A070941(n)-A010059(n)`
-/

namespace A303581.P15071600454215095240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 n - A010059 n

end

end A303581.P15071600454215095240

noncomputable section

/-- A303581: Add i (>= 0) to the i-th block of terms in the Thue-Morse sequence A010060.

Offset 0, canonical program `A303581.P15071600454215095240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303581 (n : ℕ) : ℤ :=
  A303581.P15071600454215095240.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304096.P2157519849104045744

`A304094(n+1)-A177702(n)`
-/

namespace A304096.P2157519849104045744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304094 (n + 1) - A177702 n

end

end A304096.P2157519849104045744

noncomputable section

/-- A304096: Number of Lucas numbers larger than 3 (4, 7, 11, 18, ...) that divide n.

Offset 1, canonical program `A304096.P2157519849104045744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304096 (n : ℕ) : ℤ :=
  A304096.P2157519849104045744.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304182.P17931139108651068119

`∑{d}[n+1, A091379(#)*A284059((n+1)/#)]`
-/

namespace A304182.P17931139108651068119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091379 d * A284059 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304182.P17931139108651068119

noncomputable section

/-- A304182: Number of primitive inequivalent mirror-symmetric sublattices of rectangular lattice of index n.

Offset 1, canonical program `A304182.P17931139108651068119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304182 (n : ℕ) : ℤ :=
  A304182.P17931139108651068119.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304876.P15055631552920192285

`∑{d}[n+1, A033999(#-1)*A127773((n+1)/#)]`
-/

namespace A304876.P15055631552920192285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A127773 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304876.P15055631552920192285

noncomputable section

/-- A304876: L.g.f.: log(Product_{k>=1} (1 + x^(k*(k+1)/2))) = Sum_{n>=1} a(n)*x^n/n.

Offset 1, canonical program `A304876.P15055631552920192285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304876 (n : ℕ) : ℤ :=
  A304876.P15055631552920192285.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305007.P6262789419513029025

`(n+1)/gcd(n+1, A002129(n+1))`
-/

namespace A305007.P6262789419513029025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A002129 (n + 1)) : ℚ)

end

end A305007.P6262789419513029025

noncomputable section

/-- A305007: Denominators of coefficients in expansion of Sum_{k>=1} x^k/(k*(1 + x^k)).

Offset 1, canonical program `A305007.P6262789419513029025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305007 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A305007.P6262789419513029025.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305549.P11754656348602292953

`∑[A019562(n)]`
-/

namespace A305549.P11754656348602292953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305549.P11754656348602292953

noncomputable section

/-- A305549: Crystal ball sequence for the lattice C_6.

Offset 0, canonical program `A305549.P11754656348602292953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305549 (n : ℕ) : ℤ :=
  A305549.P11754656348602292953.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306411.P4997274916916446077

`(n+1)*A238533(n+1)`
-/

namespace A306411.P4997274916916446077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A238533 (n + 1)

end

end A306411.P4997274916916446077

noncomputable section

/-- A306411: a(n) = phi(n^6) = n^5*phi(n).

Offset 1, canonical program `A306411.P4997274916916446077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306411 (n : ℕ) : ℤ :=
  A306411.P4997274916916446077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306863.P15409555806204532107

`Δ[A153052(n+1)]-1`
-/

namespace A306863.P15409555806204532107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A306863.P15409555806204532107

noncomputable section

/-- A306863: a(n) is the number of primes between the n-th and (n+1)-st odd composite numbers.

Offset 1, canonical program `A306863.P15409555806204532107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A306863 (n : ℕ) : ℤ :=
  A306863.P15409555806204532107.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A306863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306896.P1446490085044688091

`2*(A034738(n+1)-A193356(n+1))`
-/

namespace A306896.P1446490085044688091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A034738 (n + 1) - A193356 (n + 1))

end

end A306896.P1446490085044688091

noncomputable section

/-- A306896: a(n) = Sum_{d|n} (2^d + 2*(-1)^d)*phi(n/d).

Offset 1, canonical program `A306896.P1446490085044688091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A306896 (n : ℕ) : ℤ :=
  A306896.P1446490085044688091.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A306896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307597.P12525034653730918067

`floor(A053603(n)/2)`
-/

namespace A307597.P12525034653730918067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053603 n : ℚ) / 2⌋

end

end A307597.P12525034653730918067

noncomputable section

/-- A307597: Number of partitions of n into 2 distinct positive triangular numbers.

Offset 0, canonical program `A307597.P12525034653730918067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307597 (n : ℕ) : ℤ :=
  A307597.P12525034653730918067.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307673.P7363177245116075700

`∑[A108754(n+1)]`
-/

namespace A307673.P7363177245116075700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307673.P7363177245116075700

noncomputable section

/-- A307673: Partial sums of A108754.

Offset 1, canonical program `A307673.P7363177245116075700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307673 (n : ℕ) : ℤ :=
  A307673.P7363177245116075700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308430.P10162572136234299228

`∑[A037861(A130290(n+1))+1]`
-/

namespace A308430.P10162572136234299228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A130290 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308430.P10162572136234299228

noncomputable section

/-- A308430: Number of 0's minus number of 1's among the edge truncated binary representations of the first n prime numbers.

Offset 1, canonical program `A308430.P10162572136234299228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. -/
def A308430 (n : ℕ) : ℤ :=
  A308430.P10162572136234299228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. -/
def A308430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308504.P8854437065577094015

`∑{d}[A002260(n+1), #^A123578(n)]`
-/

namespace A308504.P8854437065577094015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A123578 n : ℤ)

end

end A308504.P8854437065577094015

noncomputable section

/-- A308504: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals: A(n,k) = Sum_{d|n} d^(n+k).

Offset 1, canonical program `A308504.P8854437065577094015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. -/
def A308504 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A308504.P8854437065577094015.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. -/
def A308504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308813.P9690503853493089291

`∑{d}[A002260(n+1), A025581(n)^(#-1)]`
-/

namespace A308813.P9690503853493089291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A025581 n : ℚ) ^ ((d : ℤ) - 1 : ℤ)

end

end A308813.P9690503853493089291

noncomputable section

/-- A308813: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals downwards, where A(n,k) is Sum_{d|n} k^(d-1).

Offset 1, canonical program `A308813.P9690503853493089291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4823 terms. -/
def A308813 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A308813.P9690503853493089291.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4823 terms. -/
def A308813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309398.P9325976622887262783

`∑[A281814(n²)]`
-/

namespace A309398.P9325976622887262783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281814 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309398.P9325976622887262783

noncomputable section

/-- A309398: a(n) is the nearest integer to log(log(10^n)).

Offset 1, canonical program `A309398.P9325976622887262783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A309398 (n : ℕ) : ℤ :=
  A309398.P9325976622887262783.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A309398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309530.P10769901675090293297

`A001511(A051027(A000079(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A309530.P10769901675090293297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A051027 (A000079 n).toNat).toNat

end

end A309530.P10769901675090293297

noncomputable section

/-- A309530: Number of power-of-two-divisors of sum of divisors of sum of divisors of powers of two: a(n) = A001511(A051027(A000079(n))).

Offset 0, canonical program `A309530.P10769901675090293297`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051027, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309530 (n : ℕ) : ℤ :=
  A309530.P10769901675090293297.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051027, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309530.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A309831.P15864747999336176262

`∑[A029140(n)]-A001400(n)`
-/

namespace A309831.P15864747999336176262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001400 n

end

end A309831.P15864747999336176262

noncomputable section

/-- A309831: Number of even parts appearing among the smallest parts of the partitions of n into 5 parts.

Offset 0, canonical program `A309831.P15864747999336176262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309831 (n : ℕ) : ℤ :=
  A309831.P15864747999336176262.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312682.P2011729354850800503

`A312205(n)+Δ[A011861(n)]`
-/

namespace A312682.P2011729354850800503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312205 n + (f1 (n + 1) - f1 n)

end

end A312682.P2011729354850800503

noncomputable section

/-- A312682: Coordination sequence Gal.5.112.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312682.P2011729354850800503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A312682 (n : ℕ) : ℤ :=
  A312682.P2011729354850800503.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A312682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312903.P5186887365123370171

`A330025(n-A330025(n))+A311384(n)`
-/

namespace A312903.P5186887365123370171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 ((n : ℤ) - A330025 n).toNat + A311384 n

end

end A312903.P5186887365123370171

noncomputable section

/-- A312903: Coordination sequence Gal.5.65.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312903.P5186887365123370171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2534 terms. -/
def A312903 (n : ℕ) : ℤ :=
  A312903.P5186887365123370171.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2534 terms. -/
def A312903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313116.P8612234978426201844

`A330025(n-A330025(n))+A312162(n)`
-/

namespace A313116.P8612234978426201844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 ((n : ℤ) - A330025 n).toNat + A312162 n

end

end A313116.P8612234978426201844

noncomputable section

/-- A313116: Coordination sequence Gal.5.116.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313116.P8612234978426201844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A313116 (n : ℕ) : ℤ :=
  A313116.P8612234978426201844.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A313116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313144.P17775273712726456344

`A312620(n)+A004525(A087509(n))`
-/

namespace A313144.P17775273712726456344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312620 n + A004525 (A087509 n).toNat

end

end A313144.P17775273712726456344

noncomputable section

/-- A313144: Coordination sequence Gal.5.219.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313144.P17775273712726456344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. -/
def A313144 (n : ℕ) : ℤ :=
  A313144.P17775273712726456344.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. -/
def A313144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313154.P7910125893097236437

`A312162(n)+Δ[A011858(n)]`
-/

namespace A313154.P7910125893097236437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312162 n + (f1 (n + 1) - f1 n)

end

end A313154.P7910125893097236437

noncomputable section

/-- A313154: Coordination sequence Gal.6.252.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313154.P7910125893097236437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A313154 (n : ℕ) : ℤ :=
  A313154.P7910125893097236437.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A313154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313246.P15329026928054582960

`A312620(n)+A004525(n-A004396(n))`
-/

namespace A313246.P15329026928054582960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312620 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A313246.P15329026928054582960

noncomputable section

/-- A313246: Coordination sequence Gal.6.264.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313246.P15329026928054582960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A313246 (n : ℕ) : ℤ :=
  A313246.P15329026928054582960.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A313246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313251.P8215173569806842908

`A312620(n)+A004396(n-A004525(n))`
-/

namespace A313251.P8215173569806842908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312620 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A313251.P8215173569806842908

noncomputable section

/-- A313251: Coordination sequence Gal.6.203.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313251.P8215173569806842908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2371 terms. -/
def A313251 (n : ℕ) : ℤ :=
  A313251.P8215173569806842908.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2371 terms. -/
def A313251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313292.P15392932412953787641

`A312205(n)+∑[A021913(n)]`
-/

namespace A313292.P15392932412953787641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312205 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313292.P15392932412953787641

noncomputable section

/-- A313292: Coordination sequence Gal.4.56.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313292.P15392932412953787641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A313292 (n : ℕ) : ℤ :=
  A313292.P15392932412953787641.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A313292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313837.P17641795558428794836

`A313213(n)+A004396(A004525(n))`
-/

namespace A313837.P17641795558428794836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313213 n + A004396 (A004525 n).toNat

end

end A313837.P17641795558428794836

noncomputable section

/-- A313837: Coordination sequence Gal.6.618.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313837.P17641795558428794836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2328 terms. -/
def A313837 (n : ℕ) : ℤ :=
  A313837.P17641795558428794836.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2328 terms. -/
def A313837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313891.P9038549751761829655

`A313213(n)+A004525(n)`
-/

namespace A313891.P9038549751761829655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313213 n + A004525 n

end

end A313891.P9038549751761829655

noncomputable section

/-- A313891: Coordination sequence Gal.4.142.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313891.P9038549751761829655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A313891 (n : ℕ) : ℤ :=
  A313891.P9038549751761829655.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A313891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313962.P258668997932417056

`A313835(n)+Δ[A011862(n)]`
-/

namespace A313962.P258668997932417056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313835 n + (f1 (n + 1) - f1 n)

end

end A313962.P258668997932417056

noncomputable section

/-- A313962: Coordination sequence Gal.3.53.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313962.P258668997932417056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A313962 (n : ℕ) : ℤ :=
  A313962.P258668997932417056.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A313962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313979.P9481199202513523421

`A313894(n)+Δ[A011862(n)]`
-/

namespace A313979.P9481199202513523421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n + (f1 (n + 1) - f1 n)

end

end A313979.P9481199202513523421

noncomputable section

/-- A313979: Coordination sequence Gal.6.654.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313979.P9481199202513523421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2222 terms. -/
def A313979 (n : ℕ) : ℤ :=
  A313979.P9481199202513523421.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2222 terms. -/
def A313979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314066.P16209138057789803329

`2*A314043(n)-A314022(n)`
-/

namespace A314066.P16209138057789803329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314043 n - A314022 n

end

end A314066.P16209138057789803329

noncomputable section

/-- A314066: Coordination sequence Gal.4.144.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314066.P16209138057789803329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2270 terms. -/
def A314066 (n : ℕ) : ℤ :=
  A314066.P16209138057789803329.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2270 terms. -/
def A314066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314093.P5564140878793647355

`A313127(n)+A253262(n)`
-/

namespace A314093.P5564140878793647355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313127 n + A253262 n

end

end A314093.P5564140878793647355

noncomputable section

/-- A314093: Coordination sequence Gal.5.137.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314093.P5564140878793647355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A314093 (n : ℕ) : ℤ :=
  A314093.P5564140878793647355.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A314093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314097.P8368931035641708472

`A313510(n)+∑[A021913(n)]`
-/

namespace A314097.P8368931035641708472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313510 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314097.P8368931035641708472

noncomputable section

/-- A314097: Coordination sequence Gal.6.354.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314097.P8368931035641708472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2310 terms. -/
def A314097 (n : ℕ) : ℤ :=
  A314097.P8368931035641708472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2310 terms. -/
def A314097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314159.P9267206370846563594

`A310457(n)+A004525(n)`
-/

namespace A314159.P9267206370846563594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310457 n + A004525 n

end

end A314159.P9267206370846563594

noncomputable section

/-- A314159: Coordination sequence Gal.6.624.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314159.P9267206370846563594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A314159 (n : ℕ) : ℤ :=
  A314159.P9267206370846563594.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A314159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314189.P7331010239298869687

`A313829(n)+∑[A022003(n)]`
-/

namespace A314189.P7331010239298869687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313829 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314189.P7331010239298869687

noncomputable section

/-- A314189: Coordination sequence Gal.6.636.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314189.P7331010239298869687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. -/
def A314189 (n : ℕ) : ℤ :=
  A314189.P7331010239298869687.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. -/
def A314189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314205.P7191445224176703751

`A313860(n)+A004396(n-A004396(n))`
-/

namespace A314205.P7191445224176703751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313860 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A314205.P7191445224176703751

noncomputable section

/-- A314205: Coordination sequence Gal.5.133.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314205.P7191445224176703751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. -/
def A314205 (n : ℕ) : ℤ :=
  A314205.P7191445224176703751.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. -/
def A314205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314208.P13024500297364737836

`A313872(n)+A004525(n-A004396(n))`
-/

namespace A314208.P13024500297364737836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313872 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A314208.P13024500297364737836

noncomputable section

/-- A314208: Coordination sequence Gal.6.619.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314208.P13024500297364737836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A314208 (n : ℕ) : ℤ :=
  A314208.P13024500297364737836.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A314208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314216.P14114423026474714885

`round(A313872(n)+n/3)`
-/

namespace A314216.P14114423026474714885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A313872 n : ℚ) + (n : ℚ) / 3)

end

end A314216.P14114423026474714885

noncomputable section

/-- A314216: Coordination sequence Gal.6.624.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314216.P14114423026474714885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2246 terms. -/
def A314216 (n : ℕ) : ℤ :=
  A314216.P14114423026474714885.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2246 terms. -/
def A314216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314227.P16301604767465595439

`2*A314161(n)-A314068(n)`
-/

namespace A314227.P16301604767465595439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314161 n - A314068 n

end

end A314227.P16301604767465595439

noncomputable section

/-- A314227: Coordination sequence Gal.4.146.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314227.P16301604767465595439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2223 terms. -/
def A314227 (n : ℕ) : ℤ :=
  A314227.P16301604767465595439.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2223 terms. -/
def A314227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314841.P5099753023197914535

`A312620(n)+A128834(n)`
-/

namespace A314841.P5099753023197914535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312620 n + A128834 n

end

end A314841.P5099753023197914535

noncomputable section

/-- A314841: Coordination sequence Gal.6.151.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314841.P5099753023197914535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2438 terms. -/
def A314841 (n : ℕ) : ℤ :=
  A314841.P5099753023197914535.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2438 terms. -/
def A314841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314972.P7314181398495225486

`abs(A008592(n)-A314087(n))`
-/

namespace A314972.P7314181398495225486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314087 n|

end

end A314972.P7314181398495225486

noncomputable section

/-- A314972: Coordination sequence Gal.5.139.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314972.P7314181398495225486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A314972 (n : ℕ) : ℤ :=
  A314972.P7314181398495225486.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A314972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315171.P4366655332392387557

`A311384(n)+2*A330025(n)`
-/

namespace A315171.P4366655332392387557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311384 n + 2 * A330025 n

end

end A315171.P4366655332392387557

noncomputable section

/-- A315171: Coordination sequence Gal.6.220.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315171.P4366655332392387557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2531 terms. -/
def A315171 (n : ℕ) : ℤ :=
  A315171.P4366655332392387557.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2531 terms. -/
def A315171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315191.P3733796500025227034

`A313510(n)+A004396(lcm(n, A134667(n)))`
-/

namespace A315191.P3733796500025227034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313510 n + A004396 (Int.lcm (n : ℤ) (A134667 n))

end

end A315191.P3733796500025227034

noncomputable section

/-- A315191: Coordination sequence Gal.5.186.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315191.P3733796500025227034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2412 terms. -/
def A315191 (n : ℕ) : ℤ :=
  A315191.P3733796500025227034.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2412 terms. -/
def A315191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315246.P15325396058034907963

`A315067(n)+A128834(n)`
-/

namespace A315246.P15325396058034907963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315067 n + A128834 n

end

end A315246.P15325396058034907963

noncomputable section

/-- A315246: Coordination sequence Gal.6.203.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315246.P15325396058034907963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2243 terms. -/
def A315246 (n : ℕ) : ℤ :=
  A315246.P15325396058034907963.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2243 terms. -/
def A315246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315247.P17209575023830611151

`abs(A008592(n)-A310469(n))`
-/

namespace A315247.P17209575023830611151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310469 n|

end

end A315247.P17209575023830611151

noncomputable section

/-- A315247: Coordination sequence Gal.5.87.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315247.P17209575023830611151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A315247 (n : ℕ) : ℤ :=
  A315247.P17209575023830611151.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A315247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315260.P11757777825462435444

`A314683(n)+A004396(n)`
-/

namespace A315260.P11757777825462435444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314683 n + A004396 n

end

end A315260.P11757777825462435444

noncomputable section

/-- A315260: Coordination sequence Gal.6.340.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315260.P11757777825462435444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A315260 (n : ℕ) : ℤ :=
  A315260.P11757777825462435444.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A315260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315265.P13761514949050069837

`A315198(n)+Δ[A011862(n)]`
-/

namespace A315265.P13761514949050069837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315198 n + (f1 (n + 1) - f1 n)

end

end A315265.P13761514949050069837

noncomputable section

/-- A315265: Coordination sequence Gal.5.132.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315265.P13761514949050069837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2112 terms. -/
def A315265 (n : ℕ) : ℤ :=
  A315265.P13761514949050069837.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2112 terms. -/
def A315265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315271.P18267485139840011839

`A313778(n)+A128834(A128834(n)+n)`
-/

namespace A315271.P18267485139840011839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313778 n + A128834 (A128834 n + (n : ℤ)).toNat

end

end A315271.P18267485139840011839

noncomputable section

/-- A315271: Coordination sequence Gal.6.345.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315271.P18267485139840011839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A315271 (n : ℕ) : ℤ :=
  A315271.P18267485139840011839.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A315271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315303.P11415585503323507612

`A312561(n)+2*A330025(n)`
-/

namespace A315303.P11415585503323507612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312561 n + 2 * A330025 n

end

end A315303.P11415585503323507612

noncomputable section

/-- A315303: Coordination sequence Gal.6.247.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315303.P11415585503323507612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2406 terms. -/
def A315303 (n : ℕ) : ℤ :=
  A315303.P11415585503323507612.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2406 terms. -/
def A315303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315415.P4703822425570866206

`A313494(n)+A004525(n)`
-/

namespace A315415.P4703822425570866206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313494 n + A004525 n

end

end A315415.P4703822425570866206

noncomputable section

/-- A315415: Coordination sequence Gal.6.207.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315415.P4703822425570866206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A315415 (n : ℕ) : ℤ :=
  A315415.P4703822425570866206.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A315415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315416.P2094941697725940061

`abs(A008592(n)-A313241(n))`
-/

namespace A315416.P2094941697725940061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313241 n|

end

end A315416.P2094941697725940061

noncomputable section

/-- A315416: Coordination sequence Gal.5.142.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315416.P2094941697725940061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2327 terms. -/
def A315416 (n : ℕ) : ℤ :=
  A315416.P2094941697725940061.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2327 terms. -/
def A315416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315417.P14288503187681228952

`A313510(n)+A004525(n)`
-/

namespace A315417.P14288503187681228952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313510 n + A004525 n

end

end A315417.P14288503187681228952

noncomputable section

/-- A315417: Coordination sequence Gal.6.354.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315417.P14288503187681228952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2258 terms. -/
def A315417 (n : ℕ) : ℤ :=
  A315417.P14288503187681228952.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2258 terms. -/
def A315417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315425.P4836031059753264018

`abs(A008592(n)-A313213(n))`
-/

namespace A315425.P4836031059753264018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313213 n|

end

end A315425.P4836031059753264018

noncomputable section

/-- A315425: Coordination sequence Gal.6.341.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315425.P4836031059753264018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A315425 (n : ℕ) : ℤ :=
  A315425.P4836031059753264018.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A315425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315427.P10019411848564302205

`abs(A008592(n)-A313201(n))`
-/

namespace A315427.P10019411848564302205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313201 n|

end

end A315427.P10019411848564302205

noncomputable section

/-- A315427: Coordination sequence Gal.5.133.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315427.P10019411848564302205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2307 terms. -/
def A315427 (n : ℕ) : ℤ :=
  A315427.P10019411848564302205.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2307 terms. -/
def A315427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315463.P16900864329988193490

`A315256(n)+A004396(n-A004396(n))`
-/

namespace A315463.P16900864329988193490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315256 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A315463.P16900864329988193490

noncomputable section

/-- A315463: Coordination sequence Gal.5.113.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315463.P16900864329988193490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A315463 (n : ℕ) : ℤ :=
  A315463.P16900864329988193490.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A315463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315476.P2170121001378105124

`A314683(n)+n`
-/

namespace A315476.P2170121001378105124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314683 n + (n : ℤ)

end

end A315476.P2170121001378105124

noncomputable section

/-- A315476: Coordination sequence Gal.6.619.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315476.P2170121001378105124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2258 terms. -/
def A315476 (n : ℕ) : ℤ :=
  A315476.P2170121001378105124.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2258 terms. -/
def A315476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315496.P12709107915748676081

`A315397(n)+n-A253262(n)`
-/

namespace A315496.P12709107915748676081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315397 n + ((n : ℤ) - A253262 n)

end

end A315496.P12709107915748676081

noncomputable section

/-- A315496: Coordination sequence Gal.5.306.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315496.P12709107915748676081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2249 terms. -/
def A315496 (n : ℕ) : ℤ :=
  A315496.P12709107915748676081.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2249 terms. -/
def A315496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315539.P1091420804308675647

`2*n+A004396(A315340(n))`
-/

namespace A315539.P1091420804308675647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A315340 n).toNat

end

end A315539.P1091420804308675647

noncomputable section

/-- A315539: Coordination sequence Gal.6.642.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315539.P1091420804308675647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A315539 (n : ℕ) : ℤ :=
  A315539.P1091420804308675647.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A315539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315641.P11101292632011724698

`abs(A008592(n)-A312620(n))`
-/

namespace A315641.P11101292632011724698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312620 n|

end

end A315641.P11101292632011724698

noncomputable section

/-- A315641: Coordination sequence Gal.6.208.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315641.P11101292632011724698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2276 terms. -/
def A315641 (n : ℕ) : ℤ :=
  A315641.P11101292632011724698.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2276 terms. -/
def A315641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315644.P13515404179755767154

`abs(10*n-A312561(n))`
-/

namespace A315644.P13515404179755767154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A312561 n|

end

end A315644.P13515404179755767154

noncomputable section

/-- A315644: Coordination sequence Gal.6.325.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315644.P13515404179755767154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2334 terms. -/
def A315644 (n : ℕ) : ℤ :=
  A315644.P13515404179755767154.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2334 terms. -/
def A315644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315670.P4155248808049658205

`A315395(n)+∑[A021913(n)]`
-/

namespace A315670.P4155248808049658205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315395 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315670.P4155248808049658205

noncomputable section

/-- A315670: Coordination sequence Gal.6.262.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315670.P4155248808049658205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A315670 (n : ℕ) : ℤ :=
  A315670.P4155248808049658205.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A315670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315671.P3317811173439516931

`abs(A008592(n)-A312205(n))`
-/

namespace A315671.P3317811173439516931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312205 n|

end

end A315671.P3317811173439516931

noncomputable section

/-- A315671: Coordination sequence Gal.4.56.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315671.P3317811173439516931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2302 terms. -/
def A315671 (n : ℕ) : ℤ :=
  A315671.P3317811173439516931.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2302 terms. -/
def A315671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315675.P17317459834281065460

`A315403(n)+∑[A021913(n)]`
-/

namespace A315675.P17317459834281065460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315403 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315675.P17317459834281065460

noncomputable section

/-- A315675: Coordination sequence Gal.6.356.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315675.P17317459834281065460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2307 terms. -/
def A315675 (n : ℕ) : ℤ :=
  A315675.P17317459834281065460.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2307 terms. -/
def A315675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315676.P8029250797834690021

`abs(A008592(n)-A312183(n))`
-/

namespace A315676.P8029250797834690021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312183 n|

end

end A315676.P8029250797834690021

noncomputable section

/-- A315676: Coordination sequence Gal.4.75.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315676.P8029250797834690021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2289 terms. -/
def A315676 (n : ℕ) : ℤ :=
  A315676.P8029250797834690021.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2289 terms. -/
def A315676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315679.P7787860321428887982

`abs(A008592(n)-A312162(n))`
-/

namespace A315679.P7787860321428887982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312162 n|

end

end A315679.P7787860321428887982

noncomputable section

/-- A315679: Coordination sequence Gal.6.252.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315679.P7787860321428887982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A315679 (n : ℕ) : ℤ :=
  A315679.P7787860321428887982.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A315679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315731.P13330025247901741464

`A315304(n)+A008612(A016813(n))`
-/

namespace A315731.P13330025247901741464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315304 n + A008612 (A016813 n).toNat

end

end A315731.P13330025247901741464

noncomputable section

/-- A315731: Coordination sequence Gal.5.301.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315731.P13330025247901741464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2244 terms. -/
def A315731 (n : ℕ) : ℤ :=
  A315731.P13330025247901741464.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2244 terms. -/
def A315731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315755.P16242125238513878474

`abs(A008592(n)-A311384(n))`
-/

namespace A315755.P16242125238513878474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311384 n|

end

end A315755.P16242125238513878474

noncomputable section

/-- A315755: Coordination sequence Gal.6.333.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315755.P16242125238513878474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2252 terms. -/
def A315755 (n : ℕ) : ℤ :=
  A315755.P16242125238513878474.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2252 terms. -/
def A315755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316385.P15918225833941816828

`A003817(n+1)-A025480((A035327(n+1)+A010078(n+2))/2)`
-/

namespace A316385.P15918225833941816828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (n + 1) - A025480 (SequenceMachineLib.roundAway ((A035327 (n + 1) + A010078 (n + 2) : ℚ) / 2)).toNat

end

end A316385.P15918225833941816828

noncomputable section

/-- A316385: Lexicographically earliest sequence of distinct positive terms such that for any n > 0, a(n) AND a(2*n) = a(n) (where AND denotes the binary AND operator).

Offset 1, canonical program `A316385.P15918225833941816828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A316385 (n : ℕ) : ℤ :=
  A316385.P15918225833941816828.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A316385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316826.P16423883963804976449

`A029884(n-2)+a(n-1)` with `a(0)=3, a(1)=2`
-/

namespace A316826.P16423883963804976449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  A029884 (n - 2) + a (n - 1)

end

end A316826.P16423883963804976449

noncomputable section

/-- A316826: Image of 3 under repeated application of the morphism 3 -> 3,2, 2 -> 1,0,2,0,1,2, 1 -> 1,0,1,2, 0 -> 0,2.

Offset 0, canonical program `A316826.P16423883963804976449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316826 (n : ℕ) : ℤ :=
  A316826.P16423883963804976449.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316964.P17608788837257111621

`Δ[A193592(n)]+n`
-/

namespace A316964.P17608788837257111621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A316964.P17608788837257111621

noncomputable section

/-- A316964: Same as A316669, except numbering of the squares starts at 0 rather than 1.

Offset 0, canonical program `A316964.P17608788837257111621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A316964 (n : ℕ) : ℤ :=
  A316964.P17608788837257111621.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A316964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317198.P16178072195932306559

`1-(A317193(n+1)+17)%3`
-/

namespace A317198.P16178072195932306559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A317193 (n + 1) + 17) 3

end

end A317198.P16178072195932306559

noncomputable section

/-- A317198: Yet another version of the ternary tribonacci word: fixed point of the morphism 1 -> 1,0; 0 -> 1,-1; -1 -> 1; starting from a(0) = 1.

Offset 0, canonical program `A317198.P16178072195932306559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317198 (n : ℕ) : ℤ :=
  A317198.P16178072195932306559.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318162.P10619803318737600839

`Δ[n²]*A165817(n)`
-/

namespace A318162.P10619803318737600839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A165817 n

end

end A318162.P10619803318737600839

noncomputable section

/-- A318162: Number of compositions of 2n-1 into exactly 2n-1 nonnegative parts with largest part n.

Offset 1, canonical program `A318162.P10619803318737600839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A318162 (n : ℕ) : ℤ :=
  A318162.P10619803318737600839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A318162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318453.P807959455249756453

`A001790(val(n+1, 2))`
-/

namespace A318453.P807959455249756453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 (SequenceMachineLib.valuation (n + 1) 2)

end

end A318453.P807959455249756453

noncomputable section

/-- A318453: Numerators of the sequence whose Dirichlet convolution with itself yields A001227, number of odd divisors of n.

Offset 1, canonical program `A318453.P807959455249756453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318453 (n : ℕ) : ℤ :=
  A318453.P807959455249756453.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319028.P8839523077166718591

`abs(A024483(n+2)-A000302(n))`
-/

namespace A319028.P8839523077166718591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024483 (n + 2) - A000302 n|

end

end A319028.P8839523077166718591

noncomputable section

/-- A319028: Number of permutations pi of [n] such that s(pi) avoids the patterns 132 and 321, where s is West's stack-sorting map.

Offset 1, canonical program `A319028.P8839523077166718591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A319028 (n : ℕ) : ℤ :=
  A319028.P8839523077166718591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A319028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319102.P8736418722383109281

`ceil(ratio[A074909(n)])%2`
-/

namespace A319102.P8736418722383109281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ 2

end

end A319102.P8736418722383109281

noncomputable section

/-- A319102: Triangle read by rows: The k-th column has alternating blocks of k 1's followed by k 0's (see example).

Offset 1, canonical program `A319102.P8736418722383109281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319102 (n : ℕ) : ℤ :=
  A319102.P8736418722383109281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319713.P11183865929377716110

`∑{d}[n+1, A276150(#%(n+1))]`
-/

namespace A319713.P11183865929377716110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A276150 (d % (n + 1))

end

end A319713.P11183865929377716110

noncomputable section

/-- A319713: Sum of A276150(d) over proper divisors d of n, where A276150 gives the sum of digits in primorial base.

Offset 1, canonical program `A319713.P11183865929377716110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319713 (n : ℕ) : ℤ :=
  A319713.P11183865929377716110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319715.P13658229882711999882

`∑{d}[n+1, A276150(#)]`
-/

namespace A319715.P13658229882711999882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A276150 d

end

end A319715.P13658229882711999882

noncomputable section

/-- A319715: Sum of A276150(d) over divisors d of n, where A276150 gives the sum of digits in primorial base.

Offset 1, canonical program `A319715.P13658229882711999882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319715 (n : ℕ) : ℤ :=
  A319715.P13658229882711999882.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320283.P15640859263192477612

`n-and(A005843(n), A270106(n))`
-/

namespace A320283.P15640859263192477612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (A005843 n) (A270106 n)

end

end A320283.P15640859263192477612

noncomputable section

/-- A320283: Lexicographical ordering of pure imaginary integers in the base (-1+i) numeral system.

Offset 0, canonical program `A320283.P15640859263192477612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4825 terms. -/
def A320283 (n : ℕ) : ℤ :=
  A320283.P15640859263192477612.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4825 terms. -/
def A320283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320841.P10418808688263106149

`A256434(A130330(n)-A010054(n))`
-/

namespace A320841.P10418808688263106149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256434 (A130330 n - A010054 n).toNat

end

end A320841.P10418808688263106149

noncomputable section

/-- A320841: Number T(n,k) of partitions of n into k positive cubes; triangle T(n,k), n >= 0, 0 <= k <= n, read by rows.

Offset 0, canonical program `A320841.P10418808688263106149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A320841 (n : ℕ) : ℤ :=
  A320841.P10418808688263106149.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A320841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320926.P3058602061450553408

`A079979(A286692(n+1))`
-/

namespace A320926.P3058602061450553408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (A286692 (n + 1)).toNat

end

end A320926.P3058602061450553408

noncomputable section

/-- A320926: Concatenation of successive segments generated by the morphism {0 -> {0, 0, 1}, 1 -> {0}}, starting with 0.

Offset 1, canonical program `A320926.P3058602061450553408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320926 (n : ℕ) : ℤ :=
  A320926.P3058602061450553408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321500.P13328065906800071465

`A051162(n)*A069011(n)`
-/

namespace A321500.P13328065906800071465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n * A069011 n

end

end A321500.P13328065906800071465

noncomputable section

/-- A321500: Triangular table T(n,k) = (n+k)*(n^2+k^2), n >= k >= 0; read by rows n = 0, 1, 2, ...

Offset 0, canonical program `A321500.P13328065906800071465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321500 (n : ℕ) : ℤ :=
  A321500.P13328065906800071465.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321811.P9218127194473127473

`A081865(A025480(n)+1)`
-/

namespace A321811.P9218127194473127473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081865 (A025480 n + 1).toNat

end

end A321811.P9218127194473127473

noncomputable section

/-- A321811: Sum of 7th powers of odd divisors of n.

Offset 1, canonical program `A321811.P9218127194473127473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321811 (n : ℕ) : ℤ :=
  A321811.P9218127194473127473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322026.P9939505646475219061

`A071521(A065331(n+1))`
-/

namespace A322026.P9939505646475219061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (A065331 (n + 1)).toNat

end

end A322026.P9939505646475219061

noncomputable section

/-- A322026: Lexicographically earliest infinite sequence such that a(i) = a(j) => A007814(i) = A007814(j) and A007949(i) = A007949(j), for all i, j, where A007814 and A007949 give the 2- and 3-adic valuations of n.

Offset 1, canonical program `A322026.P9939505646475219061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322026 (n : ℕ) : ℤ :=
  A322026.P9939505646475219061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322080.P8227606125856028005

`∑{p}[A002260(n+1), #^A025581(n)]`
-/

namespace A322080.P8227606125856028005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℚ) ^ (A025581 n : ℤ)

end

end A322080.P8227606125856028005

noncomputable section

/-- A322080: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals: A(n,k) = Sum_{p|n, p prime} p^k.

Offset 1, canonical program `A322080.P8227606125856028005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4678 terms. -/
def A322080 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322080.P8227606125856028005.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4678 terms. -/
def A322080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322756.P15132893621044649410

`2*A001790(n+1)`
-/

namespace A322756.P15132893621044649410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001790 (n + 1)

end

end A322756.P15132893621044649410

noncomputable section

/-- A322756: Denominator of expected payoff in the "Guessing Card Colors" game with a 2n-card deck, using an optimal strategy.

Offset 1, canonical program `A322756.P15132893621044649410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A322756 (n : ℕ) : ℤ :=
  A322756.P15132893621044649410.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A322756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323704.P18318986639112400400

`A236959(n+1)+1`
-/

namespace A323704.P18318986639112400400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236959 (n + 1) + 1

end

end A323704.P18318986639112400400

noncomputable section

/-- A323704: Number of cubic residues (including 0) modulo the n-th prime.

Offset 1, canonical program `A323704.P18318986639112400400`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A236959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323704 (n : ℕ) : ℤ :=
  A323704.P18318986639112400400.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A236959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323704.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325006.P11097347585470060049

`C(C(A004736(n+1), 2), A002260(n+1))`
-/

namespace A325006.P11097347585470060049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (A004736 (n + 1)).toNat 2) (A002260 (n + 1)).toNat

end

end A325006.P11097347585470060049

noncomputable section

/-- A325006: Array read by descending antidiagonals: A(n,k) is the number of chiral pairs of colorings of the facets of a regular n-dimensional orthotope using up to k colors.

Offset 1, canonical program `A325006.P11097347585470060049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5518 terms. -/
def A325006 (n : ℕ) : ℤ :=
  (A325006.P11097347585470060049.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5518 terms. -/
def A325006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325095.P4478772866640746713

`a(n-1)+a(A115378(n))` with `a(0)=1`
-/

namespace A325095.P4478772866640746713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (A115378 n).toNat

end

end A325095.P4478772866640746713

noncomputable section

/-- A325095: Number of subsets of {1...n} with no binary carries.

Offset 0, canonical program `A325095.P4478772866640746713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325095 (n : ℕ) : ℤ :=
  (A325095.P4478772866640746713.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325191.P1948114789834443761

`A074909(n)-A010054(n)`
-/

namespace A325191.P1948114789834443761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n - A010054 n

end

end A325191.P1948114789834443761

noncomputable section

/-- A325191: Number of integer partitions of n such that the difference between the length of the minimal triangular partition containing and the maximal triangular partition contained in the Young diagram is 1.

Offset 0, canonical program `A325191.P1948114789834443761`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074909, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325191 (n : ℕ) : ℤ :=
  A325191.P1948114789834443761.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074909, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325191.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326354.P10591338432418692922

`2*A206350(n+1)-1`
-/

namespace A326354.P10591338432418692922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A206350 (n + 1) - 1

end

end A326354.P10591338432418692922

noncomputable section

/-- A326354: a(n) is the number of fractions reduced to lowest terms with numerator and denominator less than or equal to n in absolute value.

Offset 0, canonical program `A326354.P10591338432418692922`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206350, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326354 (n : ℕ) : ℤ :=
  A326354.P10591338432418692922.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206350, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326354.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326729.P660711864705047236

`xor(n, ceil(A335063(n)/(n+1)))`
-/

namespace A326729.P660711864705047236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌈(A335063 n : ℚ) / (n + 1 : ℚ)⌉

end

end A326729.P660711864705047236

noncomputable section

/-- A326729: a(0) = 0; for n >= 1, a(n) is the result of inverting s-th bit (from right) in n, where s is the number of ones in the binary representation of n.

Offset 0, canonical program `A326729.P660711864705047236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326729 (n : ℕ) : ℤ :=
  A326729.P660711864705047236.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326813.P11104410736738472879

`and(1, A162419(n+1))*A115362(n)`
-/

namespace A326813.P11104410736738472879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A162419 (n + 1)) * A115362 n

end

end A326813.P11104410736738472879

noncomputable section

/-- A326813: Dirichlet g.f.: zeta(2*s) / (1 - 2^(-s)).

Offset 1, canonical program `A326813.P11104410736738472879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326813 (n : ℕ) : ℤ :=
  A326813.P11104410736738472879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327123.P13363056094402647823

`∑{d}[n+1, A007427(#)*A327122((n+1)/#)]`
-/

namespace A327123.P13363056094402647823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A327122 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327123.P13363056094402647823

noncomputable section

/-- A327123: Expansion of Sum_{k>=1} phi(k) * x^k / (1 + x^(2*k)), where phi = A000010.

Offset 1, canonical program `A327123.P13363056094402647823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327123 (n : ℕ) : ℤ :=
  A327123.P13363056094402647823.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327142.P16301444400706724941

`A327141(n+1)-∑[n+1]`
-/

namespace A327142.P16301444400706724941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327141 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A327142.P16301444400706724941

noncomputable section

/-- A327142: a(n) is the number of different sizes of integer-sided rectangles which can be placed inside an n X n square and with length greater than n.

Offset 1, canonical program `A327142.P16301444400706724941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327142 (n : ℕ) : ℤ :=
  A327142.P16301444400706724941.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327175.P4858780168493079708

`lt[A327174(n+1), 1]+1`
-/

namespace A327175.P4858780168493079708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A327175.P4858780168493079708

noncomputable section

/-- A327175: Positions of 0's in {A327174(n) : n > 0}.

Offset 1, canonical program `A327175.P4858780168493079708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327175 (n : ℕ) : ℤ :=
  (A327175.P4858780168493079708.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327176.P1040020970767484414

`lt[0, A327174(n)]`
-/

namespace A327176.P1040020970767484414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327176.P1040020970767484414

noncomputable section

/-- A327176: Positions of 1's in {A327174(n) : n > 0}.

Offset 1, canonical program `A327176.P1040020970767484414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327176 (n : ℕ) : ℤ :=
  (A327176.P1040020970767484414.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327178.P10784989447855658781

`lt[n*A327177(n), n]`
-/

namespace A327178.P10784989447855658781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327177 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327178.P10784989447855658781

noncomputable section

/-- A327178: Positions of 0's in {A327177(n) : n > 0}.

Offset 1, canonical program `A327178.P10784989447855658781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. -/
def A327178 (n : ℕ) : ℤ :=
  (A327178.P10784989447855658781.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. -/
def A327178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327179.P1020334519859577474

`lt[0, A327177(n)]`
-/

namespace A327179.P1020334519859577474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327179.P1020334519859577474

noncomputable section

/-- A327179: Positions of 1's in {A327177(n) : n > 0}.

Offset 1, canonical program `A327179.P1020334519859577474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A327179 (n : ℕ) : ℤ :=
  (A327179.P1020334519859577474.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A327179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327204.P13706687149448486667

`lt[0, A327202(n)]`
-/

namespace A327204.P13706687149448486667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327202 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327204.P13706687149448486667

noncomputable section

/-- A327204: Positions of 1's in {A327202(n) : n > 0}.

Offset 1, canonical program `A327204.P13706687149448486667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A327204 (n : ℕ) : ℤ :=
  (A327204.P13706687149448486667.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A327204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327207.P10451738580629158760

`lt[0, A327205(n)]`
-/

namespace A327207.P10451738580629158760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327205 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327207.P10451738580629158760

noncomputable section

/-- A327207: Positions of 1's in {A327205(n) : n > 0}.

Offset 1, canonical program `A327207.P10451738580629158760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A327207 (n : ℕ) : ℤ :=
  (A327207.P10451738580629158760.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A327207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327216.P5007103424748823424

`A327174(2*A327174(n+1)+n)`
-/

namespace A327216.P5007103424748823424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 (2 * A327174 (n + 1) + (n : ℤ)).toNat

end

end A327216.P5007103424748823424

noncomputable section

/-- A327216: a(n) = [(2n+3)r] - [(n+3)r] - [nr], where [ ] = floor and r = (1+sqrt(5))/2.

Offset 0, canonical program `A327216.P5007103424748823424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327216 (n : ℕ) : ℤ :=
  A327216.P5007103424748823424.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327316.P2975238328497280231

`A001047(A004736(n+1))*A074909(n)`
-/

namespace A327316.P2975238328497280231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (A004736 (n + 1)).toNat * A074909 n

end

end A327316.P2975238328497280231

noncomputable section

/-- A327316: Triangular array read by rows: row n shows the coefficients of this polynomial of degree n: p(x,n) = ((x+r)^n - (x+s)^n)/(r - s), where r = 3 and s = 2.

Offset 1, canonical program `A327316.P2975238328497280231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327316 (n : ℕ) : ℤ :=
  A327316.P2975238328497280231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327853.P14020414065990505661

`A002262(n*A047999(n))`
-/

namespace A327853.P14020414065990505661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 ((n : ℤ) * A047999 n).toNat

end

end A327853.P14020414065990505661

noncomputable section

/-- A327853: Triangle read by rows, Sierpinski's gasket, A047999 * (0,1,2,3,4,...) diagonalized.

Offset 1, canonical program `A327853.P14020414065990505661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327853 (n : ℕ) : ℤ :=
  A327853.P14020414065990505661.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327916.P14309064169059662937

`(A051162(n)+1)*A130321(n)`
-/

namespace A327916.P14309064169059662937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051162 n + 1) * A130321 n

end

end A327916.P14309064169059662937

noncomputable section

/-- A327916: Triangle T(k, n) read by rows: Array A(k, n) = 2^k*(k + 1 + 2*n), k >= 0, n >= 0, read by antidiagonals upwards.

Offset 0, canonical program `A327916.P14309064169059662937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327916 (n : ℕ) : ℤ :=
  A327916.P14309064169059662937.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328408.P6379189173016059792

`∑{d}[n+1, A001511(#)*A059376((n+1)/#)]`
-/

namespace A328408.P6379189173016059792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A059376 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328408.P6379189173016059792

noncomputable section

/-- A328408: G.f. A(x) satisfies: A(x) = A(x^2) + x * (1 + 4*x + x^2) / (1 - x)^4.

Offset 1, canonical program `A328408.P6379189173016059792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328408 (n : ℕ) : ℤ :=
  A328408.P6379189173016059792.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328667.P10039655287552102416

`(-1)^n*A321558(n+1)`
-/

namespace A328667.P10039655287552102416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A321558 (n + 1)

end

end A328667.P10039655287552102416

noncomputable section

/-- A328667: a(n) = Sum_{d divides n} (-1)^(n + 1 + d + n/d) * d^2.

Offset 1, canonical program `A328667.P10039655287552102416`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321558, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328667 (n : ℕ) : ℤ :=
  A328667.P10039655287552102416.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321558, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328667.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328865.P7576153008617993152

`A087121(n+1)%10`
-/

namespace A328865.P7576153008617993152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087121 (n + 1)) 10

end

end A328865.P7576153008617993152

noncomputable section

/-- A328865: The first repeating term in the trajectory of n under iterations of A329623, or -1 if no such terms exists.

Offset 1, canonical program `A328865.P7576153008617993152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A328865 (n : ℕ) : ℤ :=
  A328865.P7576153008617993152.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A328865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329686.P15611330832861329198

`A126120(ceil(n/2))+A126120(A123108(n))`
-/

namespace A329686.P15611330832861329198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 ⌈(n : ℚ) / 2⌉.toNat + A126120 (A123108 n).toNat

end

end A329686.P15611330832861329198

noncomputable section

/-- A329686: Number of excursions of length n with Motzkin-steps forbidding all consecutive steps of length 2 except UH, HU, HD and DH.

Offset 0, canonical program `A329686.P15611330832861329198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 688 terms. -/
def A329686 (n : ℕ) : ℤ :=
  A329686.P15611330832861329198.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 688 terms. -/
def A329686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329687.P17295788275179189251

`A126120(floor(2*n/3))`
-/

namespace A329687.P17295788275179189251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 ⌊2 * ((n : ℚ) / 3)⌋.toNat

end

end A329687.P17295788275179189251

noncomputable section

/-- A329687: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UU, UD, HH and DH.

Offset 0, canonical program `A329687.P17295788275179189251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 519 terms. -/
def A329687 (n : ℕ) : ℤ :=
  A329687.P17295788275179189251.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 519 terms. -/
def A329687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329696.P2445749868837722424

`A126120((2*n)%(n+1)+1)+1`
-/

namespace A329696.P2445749868837722424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n % (n + 1) + 1) + 1

end

end A329696.P2445749868837722424

noncomputable section

/-- A329696: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UH, HU, HD and DH.

Offset 0, canonical program `A329696.P2445749868837722424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A329696 (n : ℕ) : ℤ :=
  A329696.P2445749868837722424.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A329696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329779.P10369336807012279079

`∑[ceil(gcd(3, A315543(n))/ϕ)]`
-/

namespace A329779.P10369336807012279079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.gcd 3 (A315543 n) : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329779.P10369336807012279079

noncomputable section

/-- A329779: Numbers that are either odd or are congruent to {+-4, +-6, +-8, +-10} (mod 32).

Offset 1, canonical program `A329779.P10369336807012279079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A329779 (n : ℕ) : ℤ :=
  A329779.P10369336807012279079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A329779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330171.P1169059455589441269

`A189381(n+1)+1+n`
-/

namespace A330171.P1169059455589441269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189381 (n + 1) + 1 + (n : ℤ)

end

end A330171.P1169059455589441269

noncomputable section

/-- A330171: a(n) = n + floor(ns/r) + floor(nt/r), where r = sqrt(2) - 1, s = sqrt(2), t = sqrt(2) + 1.

Offset 1, canonical program `A330171.P1169059455589441269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330171 (n : ℕ) : ℤ :=
  A330171.P1169059455589441269.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330172.P5679262320590246351

`A017497(n)-A189381(n+1)`
-/

namespace A330172.P5679262320590246351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n - A189381 (n + 1)

end

end A330172.P5679262320590246351

noncomputable section

/-- A330172: a(n) = n + floor(nr/t) + floor(ns/t), where r = sqrt(2) - 1, s = sqrt(2), t = sqrt(2) + 1.

Offset 1, canonical program `A330172.P5679262320590246351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330172 (n : ℕ) : ℤ :=
  A330172.P5679262320590246351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330503.P13920411221590897860

`(n+2)*A092249(n+1)`
-/

namespace A330503.P13920411221590897860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A092249 (n + 1)

end

end A330503.P13920411221590897860

noncomputable section

/-- A330503: Number of Sós permutations of {0,1,...,n}.

Offset 1, canonical program `A330503.P13920411221590897860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330503 (n : ℕ) : ℤ :=
  A330503.P13920411221590897860.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330503.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A330561.P8312419357431212609

`n-A330560(n+1)`
-/

namespace A330561.P8312419357431212609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A330560 (n + 1)

end

end A330561.P8312419357431212609

noncomputable section

/-- A330561: a(n) = number of primes p <= prime(n) with Delta(p) == 0 (mod 4), where Delta(p) = nextprime(p) - p.

Offset 1, canonical program `A330561.P8312419357431212609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330561 (n : ℕ) : ℤ :=
  A330561.P8312419357431212609.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330578.P18419266173771204815

`A053767(n)%Δ[A053767(n)]`
-/

namespace A330578.P18419266173771204815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053767 n) (f1 (n + 1) - f1 n)

end

end A330578.P18419266173771204815

noncomputable section

/-- A330578: a(n) is the remainder when the sum of the first n composite numbers is divided by the n-th composite number.

Offset 1, canonical program `A330578.P18419266173771204815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330578 (n : ℕ) : ℤ :=
  A330578.P18419266173771204815.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330932.P4071948875635423639

`∩[A330931(n+1)-1, A330931(n+1)]`
-/

namespace A330932.P4071948875635423639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330931 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330932.P4071948875635423639

noncomputable section

/-- A330932: Starts of runs of 3 consecutive Niven numbers in base 2 (A049445).

Offset 1, canonical program `A330932.P4071948875635423639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A330932 (n : ℕ) : ℤ :=
  (A330932.P4071948875635423639.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A330932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332027.P932938761239312692

`A060432(n+1)+A014132(n+1)`
-/

namespace A332027.P932938761239312692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060432 (n + 1) + A014132 (n + 1)

end

end A332027.P932938761239312692

noncomputable section

/-- A332027: Savannah problem: number of distinct possible populations after n weeks, allowing populations after the empty set.

Offset 1, canonical program `A332027.P932938761239312692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332027 (n : ℕ) : ℤ :=
  A332027.P932938761239312692.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332252.P10279896766399306977

`∑[A131852(1-A261366(n)+n)]`
-/

namespace A332252.P10279896766399306977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (1 - A261366 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332252.P10279896766399306977

noncomputable section

/-- A332252: a(n) is the imaginary part of f(n) defined by f(0) = 0 and f(n+1) = f(n) + i^A000120(n) (where i denotes the imaginary unit). Sequence A332251 gives real parts.

Offset 0, canonical program `A332252.P10279896766399306977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A332252 (n : ℕ) : ℤ :=
  A332252.P10279896766399306977.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A332252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332674.P11479518678889470787

`∩[A045453(n+1), A253970(n+1)]`
-/

namespace A332674.P11479518678889470787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332674.P11479518678889470787

noncomputable section

/-- A332674: Prime numbers p_k such that p_k == 1 (mod 10) and p_(k+1) == 9 (mod 10).

Offset 1, canonical program `A332674.P11479518678889470787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A332674 (n : ℕ) : ℤ :=
  (A332674.P11479518678889470787.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A332674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332789.P9919765140023462536

`Δ[A007069(n+1)]`
-/

namespace A332789.P9919765140023462536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332789.P9919765140023462536

noncomputable section

/-- A332789: First differences of the iterated Beatty sequence A007069.

Offset 1, canonical program `A332789.P9919765140023462536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A332789 (n : ℕ) : ℤ :=
  A332789.P9919765140023462536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A332789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332844.P5563851115630311888

`∑{d}[n+1, A038712(#)*A328373((n+1)/#)]`
-/

namespace A332844.P5563851115630311888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A328373 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332844.P5563851115630311888

noncomputable section

/-- A332844: Dirichlet g.f.: zeta(s) * zeta(s-1) * zeta(2*s).

Offset 1, canonical program `A332844.P5563851115630311888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332844 (n : ℕ) : ℤ :=
  A332844.P5563851115630311888.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333426.P8518684395099641354

`eq[0, (n+1)%A276150(n+1)]+1`
-/

namespace A333426.P8518684395099641354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A276150 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A333426.P8518684395099641354

noncomputable section

/-- A333426: Primorial base Niven numbers: numbers divisible by their sum of digits in primorial base (A276150).

Offset 1, canonical program `A333426.P8518684395099641354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2622 terms. -/
def A333426 (n : ℕ) : ℤ :=
  (A333426.P8518684395099641354.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2622 terms. -/
def A333426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334913.P6654791302565191951

`A036555(n)-∑[∑{e}[xor(n, -n), 2-#]]`
-/

namespace A334913.P6654791302565191951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036555 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334913.P6654791302565191951

noncomputable section

/-- A334913: a(n) is the sum of digits of n in signed binary nonadjacent form.

Offset 0, canonical program `A334913.P6654791302565191951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334913 (n : ℕ) : ℤ :=
  A334913.P6654791302565191951.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335262.P797207076152892983

`C(abs(A056951(n+1)), 2)`
-/

namespace A335262.P797207076152892983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |A056951 (n + 1)|.toNat 2

end

end A335262.P797207076152892983

noncomputable section

/-- A335262: Triangle of triangular numbers, read by rows, constructed like this: Given a sequence t, start row 0 with t(0). Compute row n for n > 0 by reversing row n-1 and prepending t(n). The sequence t is here chosen as the triangular numbers.

Offset 0, canonical program `A335262.P797207076152892983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335262 (n : ℕ) : ℤ :=
  (A335262.P797207076152892983.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335587.P17858235810342075243

`A335063(A003817(n)-n)`
-/

namespace A335587.P17858235810342075243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335063 (A003817 n - (n : ℤ)).toNat

end

end A335587.P17858235810342075243

noncomputable section

/-- A335587: a(n) is the sum of the numbers k such that 0 <= k <= n and n AND k = 0 (where AND denotes the bitwise AND operator).

Offset 0, canonical program `A335587.P17858235810342075243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335587 (n : ℕ) : ℤ :=
  A335587.P17858235810342075243.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335821.P7622737242616201629

`2*(n+1)-A092283(n+1)`
-/

namespace A335821.P7622737242616201629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A092283 (n + 1)

end

end A335821.P7622737242616201629

noncomputable section

/-- A335821: Triangular array T(n, k) = n^2 - k^2, read by rows.

Offset 0, canonical program `A335821.P7622737242616201629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335821 (n : ℕ) : ℤ :=
  A335821.P7622737242616201629.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335965.P14590338528508009539

`A048896(n)+abs(Δ[A048896(n)])`
-/

namespace A335965.P14590338528508009539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n + |f1 (n + 1) - f1 n|

end

end A335965.P14590338528508009539

noncomputable section

/-- A335965: a(n) = number of odd numbers in the n-th row of the Narayana triangle A001263.

Offset 1, canonical program `A335965.P14590338528508009539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1107 terms. -/
def A335965 (n : ℕ) : ℤ :=
  A335965.P14590338528508009539.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1107 terms. -/
def A335965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338234.P15734799249778123728

`A338231(n+1)-(n+1)%Δ[n²]`
-/

namespace A338234.P15734799249778123728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338231 (n + 1) - Int.tmod (n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A338234.P15734799249778123728

noncomputable section

/-- A338234: Sum of the numbers less than n whose square does not divide n.

Offset 1, canonical program `A338234.P15734799249778123728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338234 (n : ℕ) : ℤ :=
  A338234.P15734799249778123728.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338654.P4635307025439918129

`A056040(A002262(n))*A130321(n)`
-/

namespace A338654.P4635307025439918129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (A002262 n).toNat * A130321 n

end

end A338654.P4635307025439918129

noncomputable section

/-- A338654: T(n, k) = 2^n * Product_{j=1..k} (j/2)^((-1)^(j - 1)). Triangle read by rows, for 0 <= k <= n.

Offset 0, canonical program `A338654.P4635307025439918129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338654 (n : ℕ) : ℤ :=
  A338654.P4635307025439918129.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338722.P15631712721895948208

`∑[A335616(n+1)]`
-/

namespace A338722.P15631712721895948208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338722.P15631712721895948208

noncomputable section

/-- A338722: Row sums in triangle A338721.

Offset 1, canonical program `A338722.P15631712721895948208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338722 (n : ℕ) : ℤ :=
  A338722.P15631712721895948208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338854.P6322233544526817225

`2^A160382(n)*3^A160383(n)`
-/

namespace A338854.P6322233544526817225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A160382 n : ℤ) * (3 : ℚ) ^ (A160383 n : ℤ)

end

end A338854.P6322233544526817225

noncomputable section

/-- A338854: Product of the nonzero digits of (n written in base 4).

Offset 0, canonical program `A338854.P6322233544526817225`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160382, A160383, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A338854 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A338854.P6322233544526817225.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160382, A160383, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A338854.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338971.P5507288159481919178

`A290255(2*lt[and(n, -n), n])%∑{d}[n+1, #]`
-/

namespace A338971.P5507288159481919178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290255 (2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)) ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

end

end A338971.P5507288159481919178

noncomputable section

/-- A338971: Linear representation of the complete labeled binary trees of all integer heights, where the nodes at level i, 0 <= i <= n, of a binary tree with height n are labeled with the number n-i.

Offset 0, canonical program `A338971.P5507288159481919178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A338971 (n : ℕ) : ℤ :=
  A338971.P5507288159481919178.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A338971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339080.P13752444290317850624

`A045319(eq[A035103(n+1), A035103(n+2)])`
-/

namespace A339080.P13752444290317850624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035103 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A339080.P13752444290317850624

noncomputable section

/-- A339080: Smaller members of binary Ormiston prime pairs: two consecutive primes whose binary representations are anagrams of each other.

Offset 1, canonical program `A339080.P13752444290317850624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2576 terms. -/
def A339080 (n : ℕ) : ℤ :=
  A339080.P13752444290317850624.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2576 terms. -/
def A339080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339331.P5205086312218789208

`∑[2*A283682(n+1)]`
-/

namespace A339331.P5205086312218789208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A283682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339331.P5205086312218789208

noncomputable section

/-- A339331: Sums of antidiagonals in A283682.

Offset 1, canonical program `A339331.P5205086312218789208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339331 (n : ℕ) : ℤ :=
  A339331.P5205086312218789208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340161.P779018813949303739

`A018900(n)+a(floor(sin(n+1)²))` with `a(0)=1`
-/

namespace A340161.P779018813949303739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018900 n + a ⌊Real.sin (n + 1 : ℝ) ^ 2⌋.toNat

end

end A340161.P779018813949303739

noncomputable section

/-- A340161: a(n) is the smallest number k for which the set {k + 1, k + 2, ..., k + k} contains exactly n elements with exactly three 1-bits (A014311).

Offset 0, canonical program `A340161.P779018813949303739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340161 (n : ℕ) : ℤ :=
  A340161.P779018813949303739.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340251.P9337903050879607244

`A153036(A142151(n))`
-/

namespace A340251.P9337903050879607244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153036 (A142151 n).toNat

end

end A340251.P9337903050879607244

noncomputable section

/-- A340251: a(n) is the index of the bit that was inverted in A340250(n) to get A340250(n+1).

Offset 0, canonical program `A340251.P9337903050879607244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A340251 (n : ℕ) : ℤ :=
  A340251.P9337903050879607244.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A340251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341239.P9386503938490555449

`A007069(n+1)+A001951(n+1)`
-/

namespace A341239.P9386503938490555449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007069 (n + 1) + A001951 (n + 1)

end

end A341239.P9386503938490555449

noncomputable section

/-- A341239: a(n) = floor(r*floor(s*n)), where r = 1 + sqrt(2) and s = sqrt(2).

Offset 1, canonical program `A341239.P9386503938490555449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341239 (n : ℕ) : ℤ :=
  A341239.P9386503938490555449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341249.P10730097604345596581

`A286909(n+1)+A007069(n+1)`
-/

namespace A341249.P10730097604345596581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286909 (n + 1) + A007069 (n + 1)

end

end A341249.P10730097604345596581

noncomputable section

/-- A341249: a(n) = floor(r*floor(s*n)), where r = 2 + sqrt(2) and s = sqrt(2).

Offset 1, canonical program `A341249.P10730097604345596581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341249 (n : ℕ) : ℤ :=
  A341249.P10730097604345596581.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341254.P15874538325871161202

`A193766(n+1)+2*A194151(n+1)`
-/

namespace A341254.P15874538325871161202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193766 (n + 1) + 2 * A194151 (n + 1)

end

end A341254.P15874538325871161202

noncomputable section

/-- A341254: a(n) = floor(r*floor(r*n)), where r = (2 + sqrt(5))/2.

Offset 1, canonical program `A341254.P15874538325871161202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341254 (n : ℕ) : ℤ :=
  A341254.P15874538325871161202.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341315.P7736784569741981111

`A051162(n)/A109004(A028310(n))`
-/

namespace A341315.P7736784569741981111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051162 n : ℚ) / (A109004 (A028310 n).toNat : ℚ)

end

end A341315.P7736784569741981111

noncomputable section

/-- A341315: Triangle read by rows: T(n,k) = (n+k)/gcd(n,k), n>=0, 0<=k<=n.

Offset 0, canonical program `A341315.P7736784569741981111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341315 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A341315.P7736784569741981111.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341677.P7034296537446804868

`∑{e}[n+1, #]-A341593(n+1)`
-/

namespace A341677.P7034296537446804868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - A341593 (n + 1)

end

end A341677.P7034296537446804868

noncomputable section

/-- A341677: Number of strictly inferior prime-power divisors of n.

Offset 1, canonical program `A341677.P7034296537446804868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341677 (n : ℕ) : ℤ :=
  A341677.P7034296537446804868.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341732.P13236215540058293646

`∪[A128634(n+1)+A001453(n+2), A128634(n+2)]`
-/

namespace A341732.P13236215540058293646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128634 (n + 1) + A001453 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128634 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341732.P13236215540058293646

noncomputable section

/-- A341732: Row 2 of array in A341731.

Offset 4, canonical program `A341732.P13236215540058293646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A341732 (n : ℕ) : ℤ :=
  (A341732.P13236215540058293646.a (n - 4) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A341732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341836.P13945260103919537689

`∑{d}[n+1, A007427(#)*A341834((n+1)/#)]`
-/

namespace A341836.P13945260103919537689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A341834 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341836.P13945260103919537689

noncomputable section

/-- A341836: Dirichlet g.f.: 1 / zeta(s)^10.

Offset 1, canonical program `A341836.P13945260103919537689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341836 (n : ℕ) : ℤ :=
  A341836.P13945260103919537689.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342906.P2056090426158184738

`abs(4^n-∑[A071724(n)])`
-/

namespace A342906.P2056090426158184738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A342906.P2056090426158184738

noncomputable section

/-- A342906: a(n) = 2^(2*n-2) - Catalan(n).

Offset 1, canonical program `A342906.P2056090426158184738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A342906 (n : ℕ) : ℤ :=
  A342906.P2056090426158184738.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A342906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342982.P15832304321140669079

`A000108(A002262(n))*A280580(n)`
-/

namespace A342982.P15832304321140669079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n).toNat * A280580 n

end

end A342982.P15832304321140669079

noncomputable section

/-- A342982: Triangle read by rows: T(n,k) is the number of tree-rooted planar maps with n edges and k+1 faces, n >= 0, k = 0..n.

Offset 0, canonical program `A342982.P15832304321140669079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4045 terms. -/
def A342982 (n : ℕ) : ℤ :=
  A342982.P15832304321140669079.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4045 terms. -/
def A342982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343408.P1295939081408960791

`∑{d}[n+1, A127773(#)%(n+1)]`
-/

namespace A343408.P1295939081408960791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A127773 d) (n + 1 : ℤ)

end

end A343408.P1295939081408960791

noncomputable section

/-- A343408: Sum of proper divisors of n that are triangular numbers.

Offset 1, canonical program `A343408.P1295939081408960791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343408 (n : ℕ) : ℤ :=
  A343408.P1295939081408960791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344299.P896777767716778994

`(2-A115362(n))*A298735(n+1)`
-/

namespace A344299.P896777767716778994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A115362 n) * A298735 (n + 1)

end

end A344299.P896777767716778994

noncomputable section

/-- A344299: Expansion of Sum_{k>=1} (-1)^(k+1) * x^(k^2) / (1 - x^(k^2)).

Offset 1, canonical program `A344299.P896777767716778994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344299 (n : ℕ) : ℤ :=
  A344299.P896777767716778994.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344342.P1548768335190184719

`A344341(lt[Δ[A344341(n+1)], 2]+1)`
-/

namespace A344342.P1548768335190184719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344341 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344341 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A344342.P1548768335190184719

noncomputable section

/-- A344342: Numbers k such that k and k + 1 are both Gray-code Niven numbers (A344341).

Offset 1, canonical program `A344342.P1548768335190184719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2017 terms. -/
def A344342 (n : ℕ) : ℤ :=
  A344342.P1548768335190184719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2017 terms. -/
def A344342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344438.P15929750037164641707

`char[A323505(n)-1]`
-/

namespace A344438.P15929750037164641707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323505 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A344438.P15929750037164641707

noncomputable section

/-- A344438: a(n) = 1 if n can be written as a product of factorials (A000142), 0 otherwise; Characteristic function of Jordan-Polya numbers (A001013).

Offset 1, canonical program `A344438.P15929750037164641707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344438 (n : ℕ) : ℤ :=
  (A344438.P15929750037164641707.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344868.P11898745600634897145

`p?[A162345(n+2)+A034961(n+1)]`
-/

namespace A344868.P11898745600634897145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 2) + A034961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A344868.P11898745600634897145

noncomputable section

/-- A344868: Primes p that are equal to (prime(k)+2*prime(k+1)+3*prime(k+2))/2 for some k.

Offset 1, canonical program `A344868.P11898745600634897145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 830 terms. -/
def A344868 (n : ℕ) : ℤ :=
  A344868.P11898745600634897145.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 830 terms. -/
def A344868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344877.P6074659472045598504

`gcd(n+1, A344875(n+1))`
-/

namespace A344877.P6074659472045598504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A344875 (n + 1))

end

end A344877.P6074659472045598504

noncomputable section

/-- A344877: a(n) = gcd(n, A344875(n)), where A344875 is multiplicative with a(2^e) = 2^(1+e) - 1, and a(p^e) = p^e -1 for odd primes p.

Offset 1, canonical program `A344877.P6074659472045598504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344877 (n : ℕ) : ℤ :=
  (A344877.P6074659472045598504.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344985.P13634796832414183033

`a(ceil(n/2)-1)+abs(A037861(n+1))` with `a(0)=1`
-/

namespace A344985.P13634796832414183033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (⌈(n : ℚ) / 2⌉ - 1).toNat + |A037861 (n + 1)|

end

end A344985.P13634796832414183033

noncomputable section

/-- A344985: Sum of imbalance of all initial subsequences of the binary representation of n.

Offset 1, canonical program `A344985.P13634796832414183033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344985 (n : ℕ) : ℤ :=
  A344985.P13634796832414183033.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344992.P14212236107352668806

`∑[∑{d}[n+1, A326305(#)*A338046((n+1)/#)]]`
-/

namespace A344992.P14212236107352668806
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A326305 d * A338046 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344992.P14212236107352668806

noncomputable section

/-- A344992: a(n) = Sum_{1 <= i <= j <= k <= m <= n} gcd(i,j,k,m).

Offset 1, canonical program `A344992.P14212236107352668806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344992 (n : ℕ) : ℤ :=
  A344992.P14212236107352668806.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345089.P14459247808587654407

`A345071(n+2)/2`
-/

namespace A345089.P14459247808587654407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345071 (n + 2) : ℚ) / 2

end

end A345089.P14459247808587654407

noncomputable section

/-- A345089: Averages of two consecutive odd-indexed odd primes.

Offset 1, canonical program `A345089.P14459247808587654407`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A345071, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345089 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345089.P14459247808587654407.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A345071, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345089.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345366.P6154496919403499449

`A083553(n+1)%Δ[A061802(n)]`
-/

namespace A345366.P6154496919403499449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083553 (n + 1)) (f1 (n + 1) - f1 n)

end

end A345366.P6154496919403499449

noncomputable section

/-- A345366: a(n) = (p*q+1) mod (p+q) where p=prime(n) and q=prime(n+1).

Offset 1, canonical program `A345366.P6154496919403499449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345366 (n : ℕ) : ℤ :=
  A345366.P6154496919403499449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345671.P18289345079455578265

`A205591(2*n+1)/A205592(2*(n+1))`
-/

namespace A345671.P18289345079455578265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205591 (2 * n + 1) : ℚ) / (A205592 (2 * (n + 1)) : ℚ)

end

end A345671.P18289345079455578265

noncomputable section

/-- A345671: Inverse permutation to A344792.

Offset 1, canonical program `A345671.P18289345079455578265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A345671 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345671.P18289345079455578265.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A345671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345867.P1544400621235796239

`∑[A035103(n+1)]`
-/

namespace A345867.P1544400621235796239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345867.P1544400621235796239

noncomputable section

/-- A345867: Total number of 0's in the binary expansions of the first n primes.

Offset 1, canonical program `A345867.P1544400621235796239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345867 (n : ℕ) : ℤ :=
  A345867.P1544400621235796239.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345947.P5146707115355177484

`gcd(A153151(n+1), A344875(n+1))`
-/

namespace A345947.P5146707115355177484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A153151 (n + 1)) (A344875 (n + 1))

end

end A345947.P5146707115355177484

noncomputable section

/-- A345947: a(n) = gcd(A153151(n), A344875(n)).

Offset 1, canonical program `A345947.P5146707115355177484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A345947 (n : ℕ) : ℤ :=
  (A345947.P5146707115355177484.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A345947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346558.P4046901257516319656

`2*A034738(n+1)-(n+1)`
-/

namespace A346558.P4046901257516319656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034738 (n + 1) - (n + 1 : ℤ)

end

end A346558.P4046901257516319656

noncomputable section

/-- A346558: a(n) = Sum_{d|n} phi(n/d) * (2^d - 1).

Offset 1, canonical program `A346558.P4046901257516319656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A346558 (n : ℕ) : ℤ :=
  A346558.P4046901257516319656.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A346558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346618.P909238526954114988

`A121262(A034932(n)+2)`
-/

namespace A346618.P909238526954114988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A034932 n + 2).toNat

end

end A346618.P909238526954114988

noncomputable section

/-- A346618: Triangle read by rows: T(n,k) = 1 iff 2 divides binomial(n,k) but 4 does not (0 <= k <= n).

Offset 0, canonical program `A346618.P909238526954114988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346618 (n : ℕ) : ℤ :=
  A346618.P909238526954114988.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347155.P13342997283039283042

`A000203(A014132(n+1))+C(n, A000203(n+1))`
-/

namespace A347155.P13342997283039283042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A014132 (n + 1)).toNat + (Nat.choose n (A000203 (n + 1)).toNat : ℤ)

end

end A347155.P13342997283039283042

noncomputable section

/-- A347155: Sum of divisors of nontriangular numbers.

Offset 1, canonical program `A347155.P13342997283039283042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347155 (n : ℕ) : ℤ :=
  A347155.P13342997283039283042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347176.P15524223857312001555

`A002129(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A347176.P15524223857312001555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A347176.P15524223857312001555

noncomputable section

/-- A347176: G.f.: Sum_{k>=1} (-1)^(k+1) * k * x^(k^2) / (1 - x^(k^2)).

Offset 1, canonical program `A347176.P15524223857312001555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347176 (n : ℕ) : ℤ :=
  A347176.P15524223857312001555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348237.P8907809592444207224

`A301730(n)-(A185012(n)+A047599(n+1))`
-/

namespace A348237.P8907809592444207224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301730 n - (A185012 n + A047599 (n + 1))

end

end A348237.P8907809592444207224

noncomputable section

/-- A348237: Coordination sequence for the cpq net with respect to a node where a hexagon and two octagons meet.

Offset 0, canonical program `A348237.P8907809592444207224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348237 (n : ℕ) : ℤ :=
  A348237.P8907809592444207224.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348368.P5469906356835698158

`lt[A229745(n), 0]`
-/

namespace A348368.P5469906356835698158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229745 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A348368.P5469906356835698158

noncomputable section

/-- A348368: Numbers k such that w(k + w(k)) < w(k), where w(k) is the binary weight of k, A000120(k).

Offset 1, canonical program `A348368.P5469906356835698158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3154 terms. -/
def A348368 (n : ℕ) : ℤ :=
  (A348368.P5469906356835698158.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3154 terms. -/
def A348368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348482.P17332133400386320147

`A143122(n)/A233543(n)`
-/

namespace A348482.P17332133400386320147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143122 n : ℚ) / (A233543 n : ℚ)

end

end A348482.P17332133400386320147

noncomputable section

/-- A348482: Triangle read by rows: T(n,k) = (Sum_{i=k..n} i!)/(k!) for 0 <= k <= n.

Offset 0, canonical program `A348482.P17332133400386320147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A348482 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348482.P17332133400386320147.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A348482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348647.P9920592203306078487

`Δ[record[n-A080098(n)]]`
-/

namespace A348647.P9920592203306078487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A080098 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348647.P9920592203306078487

noncomputable section

/-- A348647: Irregular table read by rows; the n-th row contains the lengths of the runs of consecutive terms with the same parity in the n-th row of Pascal's triangle (A007318).

Offset 0, canonical program `A348647.P9920592203306078487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6305 terms. -/
def A348647 (n : ℕ) : ℤ :=
  A348647.P9920592203306078487.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6305 terms. -/
def A348647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349258.P3621422876160068224

`∑{e}[n+1, A038573(#)]`
-/

namespace A349258.P3621422876160068224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A038573 (Nat.factorization (f1 n) p)

end

end A349258.P3621422876160068224

noncomputable section

/-- A349258: a(n) is the number of prime powers (not including 1) that are infinitary divisors of n.

Offset 1, canonical program `A349258.P3621422876160068224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349258 (n : ℕ) : ℤ :=
  A349258.P3621422876160068224.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349342.P410978235680775061

`A349341(n+1)+gcd(n+1, ∑[n])`
-/

namespace A349342.P410978235680775061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349341 (n + 1) + (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A349342.P410978235680775061

noncomputable section

/-- A349342: Sum of A026741 and its Dirichlet inverse.

Offset 1, canonical program `A349342.P410978235680775061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349342 (n : ℕ) : ℤ :=
  A349342.P410978235680775061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349570.P17612151739237528463

`∑{d}[n+1, A034738(#)*A101035((n+1)/#)]`
-/

namespace A349570.P17612151739237528463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034738 d * A101035 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349570.P17612151739237528463

noncomputable section

/-- A349570: Dirichlet convolution of A011782 [2^(n-1)] with A055615 (Dirichlet inverse of n).

Offset 1, canonical program `A349570.P17612151739237528463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A349570 (n : ℕ) : ℤ :=
  A349570.P17612151739237528463.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A349570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349830.P2239163741490567929

`∩[A228082(n+1), A349829(n+1)]`
-/

namespace A349830.P2239163741490567929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349830.P2239163741490567929

noncomputable section

/-- A349830: Intersection of A228082 and A349829.

Offset 1, canonical program `A349830.P2239163741490567929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7580 terms. -/
def A349830 (n : ℕ) : ℤ :=
  (A349830.P2239163741490567929.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7580 terms. -/
def A349830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349835.P853498659600068463

`2*A028283(n)-A000984(n)`
-/

namespace A349835.P853498659600068463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028283 n - A000984 n

end

end A349835.P853498659600068463

noncomputable section

/-- A349835: Expansion of (1 + 4*x)/sqrt(1 - 4*x).

Offset 0, canonical program `A349835.P853498659600068463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A349835 (n : ℕ) : ℤ :=
  A349835.P853498659600068463.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A349835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350149.P10072754262710028707

`A079901(A061579(n))*A233543(n)`
-/

namespace A350149.P10072754262710028707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079901 (A061579 n).toNat * A233543 n

end

end A350149.P10072754262710028707

noncomputable section

/-- A350149: Triangle read by rows: T(n, k) = n^(n-k)*k!.

Offset 0, canonical program `A350149.P10072754262710028707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A350149 (n : ℕ) : ℤ :=
  A350149.P10072754262710028707.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A350149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351602.P15349090548129750929

`(n+1)²*A328271(n+1)`
-/

namespace A351602.P15349090548129750929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A328271 (n + 1)

end

end A351602.P15349090548129750929

noncomputable section

/-- A351602: a(n) = n^4 * Sum_{d^2|n} 1 / d^4.

Offset 1, canonical program `A351602.P15349090548129750929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351602 (n : ℕ) : ℤ :=
  A351602.P15349090548129750929.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352037.P5865451845067830304

`A321813(n+1)-A001017(A193356(n+1))`
-/

namespace A352037.P5865451845067830304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321813 (n + 1) - A001017 (A193356 (n + 1)).toNat

end

end A352037.P5865451845067830304

noncomputable section

/-- A352037: Sum of the 9th powers of the odd proper divisors of n.

Offset 1, canonical program `A352037.P5865451845067830304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352037 (n : ℕ) : ℤ :=
  A352037.P5865451845067830304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352051.P5720028931250929903

`∑{d}[n+1, A238533(#)*A285989((n+1)/#)]-A059841(n)`
-/

namespace A352051.P5720028931250929903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A238533 d * A285989 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A059841 n

end

end A352051.P5720028931250929903

noncomputable section

/-- A352051: Sum of the 5th powers of the divisor complements of the odd proper divisors of n.

Offset 1, canonical program `A352051.P5720028931250929903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352051 (n : ℕ) : ℤ :=
  A352051.P5720028931250929903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352776.P13844907865842794739

`eq[0, A229745(n)]`
-/

namespace A352776.P13844907865842794739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229745 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352776.P13844907865842794739

noncomputable section

/-- A352776: Numbers k such that w(k + w(k)) = w(k), where w(k) is the binary weight of k, A000120(k).

Offset 1, canonical program `A352776.P13844907865842794739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2553 terms. -/
def A352776 (n : ℕ) : ℤ :=
  (A352776.P13844907865842794739.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2553 terms. -/
def A352776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352778.P11519302946014693249

`lt[0, A229745(n)]`
-/

namespace A352778.P11519302946014693249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229745 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A352778.P11519302946014693249

noncomputable section

/-- A352778: Numbers k such that w(k + w(k)) > w(k), where w(k) is the binary weight of k, A000120(k).

Offset 1, canonical program `A352778.P11519302946014693249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4294 terms. -/
def A352778 (n : ℕ) : ℤ :=
  (A352778.P11519302946014693249.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4294 terms. -/
def A352778.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A354036.P3114890599913054156

`A354035(5*(n+1))`
-/

namespace A354036.P3114890599913054156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354035 (5 * (n + 1))

end

end A354036.P3114890599913054156

noncomputable section

/-- A354036: a(n) = 1 if n is odd and sigma(n^2) == 1 (mod 4), otherwise 0.

Offset 1, canonical program `A354036.P3114890599913054156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354036 (n : ℕ) : ℤ :=
  A354036.P3114890599913054156.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354626.P396020870782513592

`comp[A141169(n)+A141169(A099375(n))²]`
-/

namespace A354626.P396020870782513592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n + A141169 (A099375 n).toNat ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A354626.P396020870782513592

noncomputable section

/-- A354626: Numbers that can't be written as the sum of a Fibonacci number and the square of a Fibonacci number.

Offset 1, canonical program `A354626.P396020870782513592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354626 (n : ℕ) : ℤ :=
  (A354626.P396020870782513592.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355347.P17583172323529427336

`A165817(n+1)-A001764(n+1)`
-/

namespace A355347.P17583172323529427336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165817 (n + 1) - A001764 (n + 1)

end

end A355347.P17583172323529427336

noncomputable section

/-- A355347: a(n) = binomial(3*n+3,n) + binomial(3*n+2,n-1) for n >= 0.

Offset 0, canonical program `A355347.P17583172323529427336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A355347 (n : ℕ) : ℤ :=
  A355347.P17583172323529427336.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A355347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355859.P3189748681053471770

`A027656(A051162(n))`
-/

namespace A355859.P3189748681053471770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A051162 n).toNat

end

end A355859.P3189748681053471770

noncomputable section

/-- A355859: Triangle read by rows: T(n,k) = (n + k)/2 if (n + k) is congruent to 0 (mod 2), otherwise T(n,k) = 0; n >= 1, k >= 1.

Offset 1, canonical program `A355859.P3189748681053471770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355859 (n : ℕ) : ℤ :=
  A355859.P3189748681053471770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356058.P16865421204104617380

`A356056(n+1)+2*A137803(n+1)`
-/

namespace A356058.P16865421204104617380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356056 (n + 1) + 2 * A137803 (n + 1)

end

end A356058.P16865421204104617380

noncomputable section

/-- A356058: a(n) = A001952(A137803(n)).

Offset 1, canonical program `A356058.P16865421204104617380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356058 (n : ℕ) : ℤ :=
  A356058.P16865421204104617380.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356091.P12079172387230656621

`A356089(n+1)+2*A054406(n+1)`
-/

namespace A356091.P12079172387230656621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356089 (n + 1) + 2 * A054406 (n + 1)

end

end A356091.P12079172387230656621

noncomputable section

/-- A356091: a(n) = A001952(A054406(n)).

Offset 1, canonical program `A356091.P12079172387230656621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356091 (n : ℕ) : ℤ :=
  A356091.P12079172387230656621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356220.P5439673781699328046

`ceil(A003623(n+1)+n/2)`
-/

namespace A356220.P5439673781699328046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003623 (n + 1) : ℚ) + (n : ℚ) / 2⌉

end

end A356220.P5439673781699328046

noncomputable section

/-- A356220: a(n) = A108598(A001950(n)).

Offset 1, canonical program `A356220.P5439673781699328046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356220 (n : ℕ) : ℤ :=
  A356220.P5439673781699328046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356520.P11715847703644159576

`floor(A052216(n+2)/10)`
-/

namespace A356520.P11715847703644159576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052216 (n + 2) : ℚ) / 10⌋

end

end A356520.P11715847703644159576

noncomputable section

/-- A356520: Numbers k such that A000005(A007953(k)) = A007953(k).

Offset 1, canonical program `A356520.P11715847703644159576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. -/
def A356520 (n : ℕ) : ℤ :=
  A356520.P11715847703644159576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. -/
def A356520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357070.P10423961064623382199

`A010054(n)+A053603(n)-A110654(A053603(n))`
-/

namespace A357070.P10423961064623382199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + (A053603 n - A110654 (A053603 n).toNat)

end

end A357070.P10423961064623382199

noncomputable section

/-- A357070: Number of partitions of n into at most 2 distinct positive triangular numbers.

Offset 0, canonical program `A357070.P10423961064623382199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A357070 (n : ℕ) : ℤ :=
  A357070.P10423961064623382199.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A357070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357251.P3468567000620855618

`A065762(n+1)/2`
-/

namespace A357251.P3468567000620855618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065762 (n + 1) : ℚ) / 2

end

end A357251.P3468567000620855618

noncomputable section

/-- A357251: a(n) = Sum_{1<=i<=j<=n} prime(i)*prime(j).

Offset 1, canonical program `A357251.P3468567000620855618`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357251 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A357251.P3468567000620855618.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357251.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357298.P5592803203464036952

`A003986(n)%2`
-/

namespace A357298.P5592803203464036952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003986 n) 2

end

end A357298.P5592803203464036952

noncomputable section

/-- A357298: Triangle read by rows where all entries in every even row are 1's and the entries in every odd row alternate between 0 (start/end) and 1.

Offset 1, canonical program `A357298.P5592803203464036952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A357298 (n : ℕ) : ℤ :=
  A357298.P5592803203464036952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A357298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358135.P7118374584011746424

`val(n+1, 2)-A290255(n+1)`
-/

namespace A358135.P7118374584011746424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℤ) - A290255 (n + 1)

end

end A358135.P7118374584011746424

noncomputable section

/-- A358135: Difference of first and last parts of the n-th composition in standard order.

Offset 1, canonical program `A358135.P7118374584011746424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358135 (n : ℕ) : ℤ :=
  A358135.P7118374584011746424.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358292.P11859919113194006918

`A318274(n)²*A000578(A004247(n))`
-/

namespace A358292.P11859919113194006918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318274 n ^ 2 * A000578 (A004247 n).toNat

end

end A358292.P11859919113194006918

noncomputable section

/-- A358292: Array read by antidiagonals: T(n,k) = n^3*k^3*(n+k)^2, n>=0, k>=0.

Offset 0, canonical program `A358292.P11859919113194006918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358292 (n : ℕ) : ℤ :=
  A358292.P11859919113194006918.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358877.P15176719959387656287

`ceil(ratio[A074909(n)])^3`
-/

namespace A358877.P15176719959387656287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ ^ 3

end

end A358877.P15176719959387656287

noncomputable section

/-- A358877: Triangle read by rows: T(n,k) is the number of cubes of side length k that can be placed inside a cube of side length n without overlap, 1 <= k <= n.

Offset 1, canonical program `A358877.P15176719959387656287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358877 (n : ℕ) : ℤ :=
  A358877.P15176719959387656287.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358977.P3842764694478648946

`eq[1, gcd(n, A276150(n))]`
-/

namespace A358977.P3842764694478648946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A276150 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358977.P3842764694478648946

noncomputable section

/-- A358977: Numbers that are coprime to the sum of their primorial base digits (A276150).

Offset 1, canonical program `A358977.P3842764694478648946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358977 (n : ℕ) : ℤ :=
  (A358977.P3842764694478648946.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359151.P11123410445715459201

`filter[A077425(n+1), A354035(#)]`
-/

namespace A359151.P11123410445715459201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354035 (f1 j).toNat = 1) n)

end

end A359151.P11123410445715459201

noncomputable section

/-- A359151: Numbers of the form 4u+1 with an odd number of prime factors (counted with multiplicity).

Offset 1, canonical program `A359151.P11123410445715459201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5058 terms. -/
def A359151 (n : ℕ) : ℤ :=
  A359151.P11123410445715459201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5058 terms. -/
def A359151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359372.P10350618056396225445

`and(∑{e}[n+1, #], A274179(and(n, -(n+2))))`
-/

namespace A359372.P10350618056396225445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A274179 (Int.land (n : ℤ) (-(n + 2 : ℤ))).toNat)

end

end A359372.P10350618056396225445

noncomputable section

/-- A359372: a(n) = 1 if n is not a multiple of 4 and has an odd number of prime factors (with multiplicity), otherwise a(n) = 0.

Offset 1, canonical program `A359372.P10350618056396225445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359372 (n : ℕ) : ℤ :=
  A359372.P10350618056396225445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360128.P10742742717207604320

`A000007(A088722(n+1))`
-/

namespace A360128.P10742742717207604320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A088722 (n + 1)).toNat

end

end A360128.P10742742717207604320

noncomputable section

/-- A360128: a(n) = 1 if there are no divisors d>1 of n such that also d+1 is a divisor of n, otherwise 0.

Offset 1, canonical program `A360128.P10742742717207604320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360128 (n : ℕ) : ℤ :=
  A360128.P10742742717207604320.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360138.P2833924897830709977

`1+A026430(A356133(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A360138.P2833924897830709977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A026430 (A356133 (n + 1)).toNat

end

end A360138.P2833924897830709977

noncomputable section

/-- A360138: a(n) = 1 + A026430(A356133(n)).

Offset 1, canonical program `A360138.P2833924897830709977`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, A356133, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360138 (n : ℕ) : ℤ :=
  A360138.P2833924897830709977.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, A356133, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360138.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360323.P246349588085984246

`A006093(n+1)*A076342(n+1)`
-/

namespace A360323.P246349588085984246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) * A076342 (n + 1)

end

end A360323.P246349588085984246

noncomputable section

/-- A360323: a(n) is the number of solutions to gcd(a^2 + b^2, p) = 1 where p is the n-th prime and 0 <= a,b <= p-1.

Offset 1, canonical program `A360323.P246349588085984246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360323 (n : ℕ) : ℤ :=
  A360323.P246349588085984246.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360402.P3924247682031302641

`A026430(∑[2-(n-a(floor(n/2)))%2])+2` with `a(0)=1`
-/

namespace A360402.P3924247682031302641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 - Int.tmod ((n : ℤ) - f1 ⌊(n : ℚ) / 2⌋.toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 2

end

end A360402.P3924247682031302641

noncomputable section

/-- A360402: a(n) = A360392(A026430(n)).

Offset 1, canonical program `A360402.P3924247682031302641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A360402 (n : ℕ) : ℤ :=
  A360402.P3924247682031302641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A360402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360445.P439609881080055747

`∑[A178244(n)]-A178244(n)`
-/

namespace A360445.P439609881080055747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A178244 n

end

end A360445.P439609881080055747

noncomputable section

/-- A360445: a(n) = Sum_{k=1..n} A178244(k-1).

Offset 0, canonical program `A360445.P439609881080055747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360445 (n : ℕ) : ℤ :=
  A360445.P439609881080055747.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360610.P9311282744771957275

`ceil(ratio[A074909(n)])²`
-/

namespace A360610.P9311282744771957275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ ^ 2

end

end A360610.P9311282744771957275

noncomputable section

/-- A360610: Triangle read by rows: T(n,k) is the number of squares of side length k that can be placed inside a square of side length n without overlap, 1 <= k <= n.

Offset 1, canonical program `A360610.P9311282744771957275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360610 (n : ℕ) : ℤ :=
  A360610.P9311282744771957275.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361122.P3369539810080432684

`Δ[A053767(n)]²%3`
-/

namespace A361122.P3369539810080432684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) ^ 2) 3

end

end A361122.P3369539810080432684

noncomputable section

/-- A361122: 0 if n-th composite number A002808(n) is divisible by 3, otherwise 1.

Offset 1, canonical program `A361122.P3369539810080432684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361122 (n : ℕ) : ℤ :=
  A361122.P3369539810080432684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361145.P6887436568620065037

`A117973(n)-A048896(n)`
-/

namespace A361145.P6887436568620065037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117973 n - A048896 n

end

end A361145.P6887436568620065037

noncomputable section

/-- A361145: Number of downwards peaks in row 2*n-1 of the Sierpinski triangle.

Offset 1, canonical program `A361145.P6887436568620065037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361145 (n : ℕ) : ℤ :=
  A361145.P6887436568620065037.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361226.P9806622768199314781

`A004736(n+1)*A143844(n)-A112367(n)`
-/

namespace A361226.P9806622768199314781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A143844 n - A112367 n

end

end A361226.P9806622768199314781

noncomputable section

/-- A361226: Square array T(n,k) = k*((1+2*n)*k - 1)/2; n>=0, k>=0, read by antidiagonals upwards.

Offset 0, canonical program `A361226.P9806622768199314781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361226 (n : ℕ) : ℤ :=
  A361226.P9806622768199314781.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361341.P8255711080193377984

`eq[2, A361338(n)]`
-/

namespace A361341.P8255711080193377984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361338 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361341.P8255711080193377984

noncomputable section

/-- A361341: Numbers k such that A361338(k) = 2.

Offset 1, canonical program `A361341.P8255711080193377984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1398 terms. -/
def A361341 (n : ℕ) : ℤ :=
  (A361341.P8255711080193377984.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1398 terms. -/
def A361341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361342.P1528223230497361746

`eq[3, A361338(n)]`
-/

namespace A361342.P1528223230497361746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361338 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361342.P1528223230497361746

noncomputable section

/-- A361342: Numbers k such that A361338(k) = 3.

Offset 1, canonical program `A361342.P1528223230497361746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 677 terms. -/
def A361342 (n : ℕ) : ℤ :=
  (A361342.P1528223230497361746.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 677 terms. -/
def A361342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361464.P557628188156379608

`lt[0, A361463(n+1)]+1`
-/

namespace A361464.P557628188156379608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361463 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A361464.P557628188156379608

noncomputable section

/-- A361464: Numbers k such that A135504(k+1) / A135504(k) is a multiple of 4.

Offset 1, canonical program `A361464.P557628188156379608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2233 terms. -/
def A361464 (n : ℕ) : ℤ :=
  (A361464.P557628188156379608.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2233 terms. -/
def A361464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362195.P3919212362460993078

`A008860(n)-n`
-/

namespace A362195.P3919212362460993078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008860 n - (n : ℤ)

end

end A362195.P3919212362460993078

noncomputable section

/-- A362195: Number of Grassmannian permutations of size n that avoid a pattern, sigma, where sigma is a pattern of size 8 with exactly one descent.

Offset 0, canonical program `A362195.P3919212362460993078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362195 (n : ℕ) : ℤ :=
  A362195.P3919212362460993078.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362595.P1441981575621675091

`A194590(A004275(n))+A126120(2*n)`
-/

namespace A362595.P1441981575621675091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194590 (A004275 n).toNat + A126120 (2 * n)

end

end A362595.P1441981575621675091

noncomputable section

/-- A362595: Number of parking functions of size n avoiding the patterns 132 and 321.

Offset 0, canonical program `A362595.P1441981575621675091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A362595 (n : ℕ) : ℤ :=
  A362595.P1441981575621675091.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A362595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362935.P15794074966290772588

`A362934(n+1)/2`
-/

namespace A362935.P15794074966290772588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362934 (n + 1) : ℚ) / 2

end

end A362935.P15794074966290772588

noncomputable section

/-- A362935: a(n) = (A000982(n) - A132188(n))/2.

Offset 1, canonical program `A362935.P15794074966290772588`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A362934, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362935 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A362935.P15794074966290772588.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A362934, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362935.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363022.P8132570921243997596

`(A002129(n+1)-A321543(n+1))/2`
-/

namespace A363022.P8132570921243997596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002129 (n + 1) - A321543 (n + 1) : ℚ) / 2

end

end A363022.P8132570921243997596

noncomputable section

/-- A363022: Expansion of Sum_{k>0} x^(2*k)/(1+x^k)^3.

Offset 1, canonical program `A363022.P8132570921243997596`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321543, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363022 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363022.P8132570921243997596.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321543, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363022.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363329.P11768281149440784561

`∏{e}[n+1, A038573(#)]`
-/

namespace A363329.P11768281149440784561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A038573 (Nat.factorization (f1 n) p)

end

end A363329.P11768281149440784561

noncomputable section

/-- A363329: a(n) is the number of divisors of n that are both coreful and infinitary.

Offset 1, canonical program `A363329.P11768281149440784561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363329 (n : ℕ) : ℤ :=
  A363329.P11768281149440784561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363406.P13581238420585602676

`or(1, A215247(n+1)+1)`
-/

namespace A363406.P13581238420585602676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A215247 (n + 1) + 1)

end

end A363406.P13581238420585602676

noncomputable section

/-- A363406: Start with list L = 1,2,3,4,.... For n = 1,2,3,..., iterate as follows: let j = L(1) and k = L(j+1), get a(n) = j + k, and remove j and k from L.

Offset 1, canonical program `A363406.P13581238420585602676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363406 (n : ℕ) : ℤ :=
  A363406.P13581238420585602676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363570.P11081120696578831770

`(A069835(n)-1)/3`
-/

namespace A363570.P11081120696578831770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069835 n - 1 : ℚ) / 3

end

end A363570.P11081120696578831770

noncomputable section

/-- A363570: Expansion of (1 / sqrt(1 - 8*x + 4*x^2) - 1 / (1 - x)) / 3.

Offset 0, canonical program `A363570.P11081120696578831770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363570 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363570.P11081120696578831770.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363570.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363828.P14035750330722355806

`A363827(A048671(n+1))`
-/

namespace A363828.P14035750330722355806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363827 (A048671 (n + 1)).toNat

end

end A363828.P14035750330722355806

noncomputable section

/-- A363828: Highest power of 2 dividing n which is < sqrt(n), for n >= 2; a(1) = 1.

Offset 1, canonical program `A363828.P14035750330722355806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A363828 (n : ℕ) : ℤ :=
  A363828.P14035750330722355806.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A363828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363890.P2710752947543390885

`A144615(n)-A363514(n+1)`
-/

namespace A363890.P2710752947543390885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144615 n - A363514 (n + 1)

end

end A363890.P2710752947543390885

noncomputable section

/-- A363890: Sum of divisors of 3*n-1 of form 3*k+2.

Offset 1, canonical program `A363890.P2710752947543390885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363890 (n : ℕ) : ℤ :=
  A363890.P2710752947543390885.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364067.P12319574783518078769

`A103627(A363891(n+1)+∑{d}[9*n+3, C(#, 2)%3])`
-/

namespace A364067.P12319574783518078769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A363891 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), Nat.choose d 2 % 3 : ℕ) : ℤ)).toNat

end

end A364067.P12319574783518078769

noncomputable section

/-- A364067: Expansion of Sum_{k>0} k * x^(2*k) / (1 - x^(3*k-1)).

Offset 1, canonical program `A364067.P12319574783518078769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3173 terms. -/
def A364067 (n : ℕ) : ℤ :=
  A364067.P12319574783518078769.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3173 terms. -/
def A364067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364205.P2014408668369465084

`A364204(n+1)-A122860(n+1)`
-/

namespace A364205.P2014408668369465084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364204 (n + 1) - A122860 (n + 1)

end

end A364205.P2014408668369465084

noncomputable section

/-- A364205: Expansion of Sum_{k>=0} x^(3*k+2) / (1 + x^(3*k+2)).

Offset 1, canonical program `A364205.P2014408668369465084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364205 (n : ℕ) : ℤ :=
  A364205.P2014408668369465084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364411.P4113167057820616581

`a(n-1)+A191472(n)` with `a(0)=8`
-/

namespace A364411.P4113167057820616581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + A191472 n

end

end A364411.P4113167057820616581

noncomputable section

/-- A364411: a(n) = prime(n) + 2*prime(n+1).

Offset 1, canonical program `A364411.P4113167057820616581`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A191472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364411 (n : ℕ) : ℤ :=
  A364411.P4113167057820616581.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A191472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364411.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364699.P5284075010875007829

`∩[A111333(n+1), A360927(n)]`
-/

namespace A364699.P5284075010875007829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360927 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364699.P5284075010875007829

noncomputable section

/-- A364699: Numbers k such that 1 + 2^k + 3^k is divisible by 2*k-1.

Offset 1, canonical program `A364699.P5284075010875007829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. -/
def A364699 (n : ℕ) : ℤ :=
  (A364699.P5284075010875007829.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. -/
def A364699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365173.P512538171508930422

`∏{e}[n+1, A073425(#)]`
-/

namespace A365173.P512538171508930422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A073425 (Nat.factorization (f1 n) p)

end

end A365173.P512538171508930422

noncomputable section

/-- A365173: The number of divisors d of n such that gcd(d, n/d) is an exponentially odd number (A268335).

Offset 1, canonical program `A365173.P512538171508930422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365173 (n : ℕ) : ℤ :=
  A365173.P512538171508930422.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365618.P11364698970973671119

`val(A067804(n), 2)`
-/

namespace A365618.P11364698970973671119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A067804 n).toNat 2

end

end A365618.P11364698970973671119

noncomputable section

/-- A365618: Table read by antidiagonals: T(n, k) = A000120(n) + A000120(k).

Offset 0, canonical program `A365618.P11364698970973671119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365618 (n : ℕ) : ℤ :=
  (A365618.P11364698970973671119.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365771.P5740291251164711934

`A000108(n)*A165817(n)`
-/

namespace A365771.P5740291251164711934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A165817 n

end

end A365771.P5740291251164711934

noncomputable section

/-- A365771: a(n) = binomial(2*n+1, n)/(2*n+1) * binomial(3*n-1, n) for n >= 0.

Offset 0, canonical program `A365771.P5740291251164711934`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165817, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365771 (n : ℕ) : ℤ :=
  A365771.P5740291251164711934.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165817, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365771.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366395.P13167208851470863280

`∑[A365007(n+1)]`
-/

namespace A366395.P13167208851470863280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366395.P13167208851470863280

noncomputable section

/-- A366395: a(n) = Sum_{k=1..n} (-1)^(k-1) * binomial(floor(n/k)+2,3).

Offset 1, canonical program `A366395.P13167208851470863280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366395 (n : ℕ) : ℤ :=
  A366395.P13167208851470863280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366813.P13812225395229694479

`∑{d}[n+1, A230074(#)*A338046((n+1)/#)]`
-/

namespace A366813.P13812225395229694479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A230074 d * A338046 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A366813.P13812225395229694479

noncomputable section

/-- A366813: a(n) = Sum_{d|n} (-1)^(n/d-1) * binomial(d+2,3).

Offset 1, canonical program `A366813.P13812225395229694479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366813 (n : ℕ) : ℤ :=
  A366813.P13812225395229694479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366814.P6493619483422513450

`∑{d}[n+1, A117212(#)*A343545((n+1)/#)]`
-/

namespace A366814.P6493619483422513450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117212 d * A343545 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A366814.P6493619483422513450

noncomputable section

/-- A366814: a(n) = Sum_{d|n} (-1)^(n/d-1) * binomial(d+3,4).

Offset 1, canonical program `A366814.P6493619483422513450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366814 (n : ℕ) : ℤ :=
  A366814.P6493619483422513450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366902.P10509626406814896750

`∏{e}[A159481(2*n+1), A159481(#)]`
-/

namespace A366902.P10509626406814896750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A159481 (Nat.factorization (f1 n).natAbs p)

end

end A366902.P10509626406814896750

noncomputable section

/-- A366902: The number of exponentially evil divisors of n.

Offset 1, canonical program `A366902.P10509626406814896750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A366902 (n : ℕ) : ℤ :=
  A366902.P10509626406814896750.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A366902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367515.P13637258747578568205

`2^A293439(n+1)`
-/

namespace A367515.P13637258747578568205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A293439 (n + 1) : ℤ)

end

end A367515.P13637258747578568205

noncomputable section

/-- A367515: The number of unitary divisors of n that are exponentially odious numbers (A270428).

Offset 1, canonical program `A367515.P13637258747578568205`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367515 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367515.P13637258747578568205.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367515.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367564.P6431556321484000451

`A002965(A099375(n))*A074909(A056943(n))`
-/

namespace A367564.P6431556321484000451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A099375 n).toNat * A074909 (A056943 n).toNat

end

end A367564.P6431556321484000451

noncomputable section

/-- A367564: Triangular array read by rows: T(n, k) = binomial(n, k) * A001333(n - k).

Offset 0, canonical program `A367564.P6431556321484000451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367564 (n : ℕ) : ℤ :=
  A367564.P6431556321484000451.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368405.P11135542014781809674

`∑[∏{e}[n+1, A106400(#)]]`
-/

namespace A368405.P11135542014781809674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A106400 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368405.P11135542014781809674

noncomputable section

/-- A368405: Infinitary version of Mertens's function: a(n) = Sum_{k=1..n} A064179(k).

Offset 1, canonical program `A368405.P11135542014781809674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368405 (n : ℕ) : ℤ :=
  A368405.P11135542014781809674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368405.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A368745.P15289978267782018387

`A074909(n)*A168256(n)`
-/

namespace A368745.P15289978267782018387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A168256 n

end

end A368745.P15289978267782018387

noncomputable section

/-- A368745: Triangular array read by rows: T(n, k) is the number of n X 2 Young tableaux with k vertical walls.

Offset 0, canonical program `A368745.P15289978267782018387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6836 terms. -/
def A368745 (n : ℕ) : ℤ :=
  A368745.P15289978267782018387.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6836 terms. -/
def A368745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368978.P8301569034531244745

`A365171((n+1)/∏{p}[n+1, #])`
-/

namespace A368978.P8301569034531244745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365171 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A368978.P8301569034531244745

noncomputable section

/-- A368978: The number of bi-unitary divisors of n that are squares (A000290).

Offset 1, canonical program `A368978.P8301569034531244745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368978 (n : ℕ) : ℤ :=
  A368978.P8301569034531244745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369100.P3381107726307047957

`∑{d}[n+1, A115607(#)*A130054((n+1)/#)]`
-/

namespace A369100.P3381107726307047957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115607 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369100.P3381107726307047957

noncomputable section

/-- A369100: Dirichlet g.f.: zeta(s)^3 * (1 - 2^(1-s))^2.

Offset 1, canonical program `A369100.P3381107726307047957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369100 (n : ℕ) : ℤ :=
  A369100.P3381107726307047957.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370173.P7127620840381726044

`Δ[-A026729(n)]`
-/

namespace A370173.P7127620840381726044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A026729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370173.P7127620840381726044

noncomputable section

/-- A370173: Riordan array (1-x-x^2, x*(1+x)).

Offset 0, canonical program `A370173.P7127620840381726044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A370173 (n : ℕ) : ℤ :=
  A370173.P7127620840381726044.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A370173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371492.P8329581871496110581

`∑{d}[n+1, A053191(#)*A084218((n+1)/#)]`
-/

namespace A371492.P8329581871496110581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A084218 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A371492.P8329581871496110581

noncomputable section

/-- A371492: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} ( gcd(x_1, n)/gcd(x_1, x_2, x_3, n) )^2.

Offset 1, canonical program `A371492.P8329581871496110581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371492 (n : ℕ) : ℤ :=
  A371492.P8329581871496110581.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371767.P2734306466527776873

`A008279(n)*A233543(n)`
-/

namespace A371767.P2734306466527776873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A233543 n

end

end A371767.P2734306466527776873

noncomputable section

/-- A371767: Triangle read by rows: T(n, k) = (k! * n!)/(n - k)!.

Offset 0, canonical program `A371767.P2734306466527776873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 944 terms. -/
def A371767 (n : ℕ) : ℤ :=
  A371767.P2734306466527776873.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 944 terms. -/
def A371767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372239.P17364523708032955431

`2*a(n-1)+A028283(n)` with `a(0)=1`
-/

namespace A372239.P17364523708032955431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A028283 n

end

end A372239.P17364523708032955431

noncomputable section

/-- A372239: Expansion of (1 + 2*x) / ((1 - 2*x)*sqrt(1 - 4*x)).

Offset 0, canonical program `A372239.P17364523708032955431`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372239 (n : ℕ) : ℤ :=
  A372239.P17364523708032955431.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372511.P6889518927263151039

`∑[A290081(n)]`
-/

namespace A372511.P6889518927263151039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372511.P6889518927263151039

noncomputable section

/-- A372511: Number of solutions to x^2 + y^2 <= n, where x, y are positive odd integers.

Offset 0, canonical program `A372511.P6889518927263151039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. -/
def A372511 (n : ℕ) : ℤ :=
  A372511.P6889518927263151039.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. -/
def A372511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372516.P8084116944890719171

`A014499(n+1)-A035103(n+1)`
-/

namespace A372516.P8084116944890719171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (n + 1) - A035103 (n + 1)

end

end A372516.P8084116944890719171

noncomputable section

/-- A372516: Number of ones minus number of zeros in the binary expansion of the n-th prime number.

Offset 1, canonical program `A372516.P8084116944890719171`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014499, A035103, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372516 (n : ℕ) : ℤ :=
  A372516.P8084116944890719171.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014499, A035103, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372516.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372635.P4289521867509819939

`A092249(n+1)²`
-/

namespace A372635.P4289521867509819939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092249 (n + 1) ^ 2

end

end A372635.P4289521867509819939

noncomputable section

/-- A372635: a(n) = Sum_{j=1..n} Sum_{k=1..n} phi(j)*phi(k).

Offset 1, canonical program `A372635.P4289521867509819939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1716 terms. -/
def A372635 (n : ℕ) : ℤ :=
  A372635.P4289521867509819939.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1716 terms. -/
def A372635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372931.P12025526412560099198

`∑{d}[n+1, A189393(#)*A372929((n+1)/#)]`
-/

namespace A372931.P12025526412560099198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A189393 d * A372929 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372931.P12025526412560099198

noncomputable section

/-- A372931: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4 <= n} gcd(x_1, x_2, x_3, x_4, n)^4.

Offset 1, canonical program `A372931.P12025526412560099198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372931 (n : ℕ) : ℤ :=
  A372931.P12025526412560099198.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372937.P5162355273622128373

`∑{d}[n+1, A189393(#)*A372930((n+1)/#)]`
-/

namespace A372937.P5162355273622128373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A189393 d * A372930 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372937.P5162355273622128373

noncomputable section

/-- A372937: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4 <= n} gcd(x_1, x_2, x_3, x_4, n)^5.

Offset 1, canonical program `A372937.P5162355273622128373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372937 (n : ℕ) : ℤ :=
  A372937.P5162355273622128373.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372950.P9193589771118210262

`∑{d}[n+1, A068970(#)*A238533((n+1)/#)]`
-/

namespace A372950.P9193589771118210262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068970 d * A238533 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372950.P9193589771118210262

noncomputable section

/-- A372950: a(n) = Sum_{1 <= x_1, x_2 <= n} ( n/gcd(x_1, x_2, n) )^3.

Offset 1, canonical program `A372950.P9193589771118210262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372950 (n : ℕ) : ℤ :=
  A372950.P9193589771118210262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372962.P14331124591361525302

`∑{d}[n+1, A084218(#)*A238533((n+1)/#)]`
-/

namespace A372962.P14331124591361525302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A084218 d * A238533 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372962.P14331124591361525302

noncomputable section

/-- A372962: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} ( n/gcd(x_1, x_2, x_3, n) )^2.

Offset 1, canonical program `A372962.P14331124591361525302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372962 (n : ℕ) : ℤ :=
  A372962.P14331124591361525302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372965.P15064860381763423356

`∑{d}[n+1, A238533(#)]`
-/

namespace A372965.P15064860381763423356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A238533 d

end

end A372965.P15064860381763423356

noncomputable section

/-- A372965: a(n) = Sum_{k = 1..n} ( n/gcd(k, n) )^4.

Offset 1, canonical program `A372965.P15064860381763423356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372965 (n : ℕ) : ℤ :=
  A372965.P15064860381763423356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373040.P10623131507799743519

`(A084218(n+1)-1)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373040.P10623131507799743519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084218 (n + 1) - 1 : ℚ) / 12

end

end A373040.P10623131507799743519

noncomputable section

/-- A373040: a(n) = (A084218(n) - 1)/12.

Offset 1, canonical program `A373040.P10623131507799743519`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373040 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373040.P10623131507799743519.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373040.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373187.P18015203837873108425

`∑{d}[n+1, A154269(#)*A338046((n+1)/#)]`
-/

namespace A373187.P18015203837873108425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154269 d * A338046 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373187.P18015203837873108425

noncomputable section

/-- A373187: Expansion of Sum_{k>=0} x^(4^k) / (1 - x^(4^k))^4.

Offset 1, canonical program `A373187.P18015203837873108425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373187 (n : ℕ) : ℤ :=
  A373187.P18015203837873108425.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373189.P2339985558679468875

`∑{d}[n+1, A023896(#)*A373188((n+1)/#)]`
-/

namespace A373189.P2339985558679468875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023896 d * A373188 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373189.P2339985558679468875

noncomputable section

/-- A373189: Expansion of Sum_{k>=0} x^(4^k) / (1 - x^(4^k))^3.

Offset 1, canonical program `A373189.P2339985558679468875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373189 (n : ℕ) : ℤ :=
  A373189.P2339985558679468875.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373347.P5073638856647458269

`comp[A335063(n)]`
-/

namespace A373347.P5073638856647458269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335063 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A373347.P5073638856647458269

noncomputable section

/-- A373347: Positive integers k such that A000120(k) > A001511(k).

Offset 1, canonical program `A373347.P5073638856647458269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373347 (n : ℕ) : ℤ :=
  (A373347.P5073638856647458269.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373710.P6586249079354997292

`A048147(lt[n, A038722(n+1)])`
-/

namespace A373710.P6586249079354997292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048147 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A373710.P6586249079354997292

noncomputable section

/-- A373710: Triangle read by rows: T(n,k) is the area of the square whose vertices divide the sides n of a circumscribed square into integer sections k and n - k, 0 <= k <= floor(n/2).

Offset 0, canonical program `A373710.P6586249079354997292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A373710 (n : ℕ) : ℤ :=
  A373710.P6586249079354997292.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A373710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373832.P1127002514526717850

`(n+1)%A276150(n+1)`
-/

namespace A373832.P1127002514526717850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A276150 (n + 1))

end

end A373832.P1127002514526717850

noncomputable section

/-- A373832: a(n) = n mod A276150(n), where A276150 is the digit sum in the primorial base.

Offset 1, canonical program `A373832.P1127002514526717850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373832 (n : ℕ) : ℤ :=
  A373832.P1127002514526717850.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373833.P1677573499582523216

`gcd(n, A276150(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373833.P1677573499582523216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A276150 n)

end

end A373833.P1677573499582523216

noncomputable section

/-- A373833: a(n) = gcd(n, A276150(n)), where A276150 is the digit sum in the primorial base.

Offset 0, canonical program `A373833.P1677573499582523216`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373833 (n : ℕ) : ℤ :=
  (A373833.P1677573499582523216.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373833.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373840.P5142814624606687256

`A079978(A276150(n))`
-/

namespace A373840.P5142814624606687256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A276150 n).toNat

end

end A373840.P5142814624606687256

noncomputable section

/-- A373840: a(n) = 1 if A276150(n) is a multiple of 3, otherwise 0, where A276150 is the digit sum in the primorial base.

Offset 0, canonical program `A373840.P5142814624606687256`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373840 (n : ℕ) : ℤ :=
  A373840.P5142814624606687256.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373840.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373990.P1245803868984221180

`char[A335063(n)-1]`
-/

namespace A373990.P1245803868984221180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335063 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373990.P1245803868984221180

noncomputable section

/-- A373990: a(n) = 1 if the binary weight of n is not greater than the 2-adic valuation of 2*n, otherwise 0.

Offset 1, canonical program `A373990.P1245803868984221180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373990 (n : ℕ) : ℤ :=
  (A373990.P1245803868984221180.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374348.P7186734061745376650

`2*A129195(n)-(n+1)`
-/

namespace A374348.P7186734061745376650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129195 n - (n + 1 : ℤ)

end

end A374348.P7186734061745376650

noncomputable section

/-- A374348: a(n) = k where wt(k) = n and k + wt(k) = a power of two, where wt(n) = A000120(n) = binary weight of n.

Offset 1, canonical program `A374348.P7186734061745376650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A374348 (n : ℕ) : ℤ :=
  A374348.P7186734061745376650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A374348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374560.P17619647553025524916

`A005836(A002260(n+1))+A005836(A004736(n+1))`
-/

namespace A374560.P17619647553025524916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A002260 (n + 1)).toNat + A005836 (A004736 (n + 1)).toNat

end

end A374560.P17619647553025524916

noncomputable section

/-- A374560: Square array A(n, k), n, k >= 0, read by antidiagonals; A(n, k) = A005836(n+1) + A005836(k+1).

Offset 0, canonical program `A374560.P17619647553025524916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8256 terms. -/
def A374560 (n : ℕ) : ℤ :=
  A374560.P17619647553025524916.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8256 terms. -/
def A374560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375097.P16198997814863634870

`A031165(n+1)-A305748(n+1)`
-/

namespace A375097.P16198997814863634870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031165 (n + 1) - A305748 (n + 1)

end

end A375097.P16198997814863634870

noncomputable section

/-- A375097: a(n) = prime(n+2) - (prime(n) + prime(n+1))/2.

Offset 2, canonical program `A375097.P16198997814863634870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375097 (n : ℕ) : ℤ :=
  A375097.P16198997814863634870.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375108.P7246935247640333009

`A363887(n+2)-A363888(n+2)`
-/

namespace A375108.P7246935247640333009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363887 (n + 2) - A363888 (n + 2)

end

end A375108.P7246935247640333009

noncomputable section

/-- A375108: Expansion of Sum_{k in Z} x^(3*k) / (1 - x^(7*k+3)).

Offset 0, canonical program `A375108.P7246935247640333009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A375108 (n : ℕ) : ℤ :=
  A375108.P7246935247640333009.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A375108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375670.P2533037032003293189

`A051903((n+1)/A065331(n+1))`
-/

namespace A375670.P2533037032003293189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A065331 (n + 1) : ℚ))).toNat

end

end A375670.P2533037032003293189

noncomputable section

/-- A375670: The maximum exponent in the prime factorization of the largest 5-rough divisor of n.

Offset 1, canonical program `A375670.P2533037032003293189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375670 (n : ℕ) : ℤ :=
  A375670.P2533037032003293189.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376354.P18229745816785603977

`lt[2, or(2, a(A002260(n+1)-1))]` with `a(0)=1, a(1)=2, a(2)=-2`
-/

namespace A376354.P18229745816785603977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, -2] fun n f2 =>
  Int.lor 2 (f2 (A002260 (n + 1) - 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A376354.P18229745816785603977

noncomputable section

/-- A376354: Numbers that end in 0 when written in base of triangular numbers (cf. A000462).

Offset 1, canonical program `A376354.P18229745816785603977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4504 terms. -/
def A376354 (n : ℕ) : ℤ :=
  (A376354.P18229745816785603977.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4504 terms. -/
def A376354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376885.P9304065174401764500

`∑{e}[n+1, A276150(#)]`
-/

namespace A376885.P9304065174401764500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A276150 (Nat.factorization (f1 n) p)

end

end A376885.P9304065174401764500

noncomputable section

/-- A376885: The number of factors of n of the form p^(k!) counted with multiplicity, where p is a prime and k >= 1, when the factorization is uniquely done using the factorial-base representation of the exponents in the prime factorization of n.

Offset 1, canonical program `A376885.P9304065174401764500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376885 (n : ℕ) : ℤ :=
  A376885.P9304065174401764500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377627.P16180455227699645803

`A306847(2*n)`
-/

namespace A377627.P16180455227699645803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 (2 * n)

end

end A377627.P16180455227699645803

noncomputable section

/-- A377627: Cogrowth sequence of the 12-element group C6 X C2 = .

Offset 0, canonical program `A377627.P16180455227699645803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A377627 (n : ℕ) : ℤ :=
  A377627.P16180455227699645803.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A377627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378031.P538866673895415262

`A306847(3*n)`
-/

namespace A378031.P538866673895415262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 (3 * n)

end

end A378031.P538866673895415262

noncomputable section

/-- A378031: Cogrowth sequence for the 18-element group C6 X C3 = .

Offset 0, canonical program `A378031.P538866673895415262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A378031 (n : ℕ) : ℤ :=
  A378031.P538866673895415262.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A378031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378071.P4414927123568891139

`(2*n+3)*A001790(n)`
-/

namespace A378071.P4414927123568891139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A001790 n

end

end A378071.P4414927123568891139

noncomputable section

/-- A378071: a(n) = denominator((4^(2*n+1)*n!^2)/((2*n+3)*(2*n)!)).

Offset 0, canonical program `A378071.P4414927123568891139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A378071 (n : ℕ) : ℤ :=
  A378071.P4414927123568891139.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A378071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378248.P16323363356914607129

`A029041(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A378248.P16323363356914607129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A029041 n + a (n - 3)

end

end A378248.P16323363356914607129

noncomputable section

/-- A378248: Number of sets of chess pieces whose collective material value adds to n.

Offset 0, canonical program `A378248.P16323363356914607129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378248 (n : ℕ) : ℤ :=
  A378248.P16323363356914607129.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378803.P7258404273834306747

`n*A378802(n)`
-/

namespace A378803.P7258404273834306747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A378802 n

end

end A378803.P7258404273834306747

noncomputable section

/-- A378803: a(n) = n^2 * binomial(4*n, n).

Offset 0, canonical program `A378803.P7258404273834306747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378802, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378803 (n : ℕ) : ℤ :=
  A378803.P7258404273834306747.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378802, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378803.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378804.P16177032303995721285

`2^n*A378802(n)`
-/

namespace A378804.P16177032303995721285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A378802 n

end

end A378804.P16177032303995721285

noncomputable section

/-- A378804: a(n) = n * 2^n * binomial(4*n, n).

Offset 0, canonical program `A378804.P16177032303995721285`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378802, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378804 (n : ℕ) : ℤ :=
  A378804.P16177032303995721285.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378802, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378804.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379227.P2007350133702125727

`C(n-A379225(n+1), n)`
-/

namespace A379227.P2007350133702125727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) - A379225 (n + 1)).toNat n

end

end A379227.P2007350133702125727

noncomputable section

/-- A379227: a(n) = 1 if A113177(n) is a multiple of 5, otherwise 0, where A113177 is fully additive with a(p) = Fibonacci(p).

Offset 1, canonical program `A379227.P2007350133702125727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379227 (n : ℕ) : ℤ :=
  (A379227.P2007350133702125727.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380804.P3432496646295256472

`2*A007064(n+1)-(n+1)`
-/

namespace A380804.P3432496646295256472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007064 (n + 1) - (n + 1 : ℤ)

end

end A380804.P3432496646295256472

noncomputable section

/-- A380804: a(n) = floor(A001622*A007064(n)).

Offset 1, canonical program `A380804.P3432496646295256472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380804 (n : ℕ) : ℤ :=
  A380804.P3432496646295256472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382129.P16834690865365871740

`A000040(A025480(n)+1)`
-/

namespace A382129.P16834690865365871740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A025480 n + 1).toNat

end

end A382129.P16834690865365871740

noncomputable section

/-- A382129: Fractalization of the prime numbers.

Offset 1, canonical program `A382129.P16834690865365871740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382129 (n : ℕ) : ℤ :=
  A382129.P16834690865365871740.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382490.P7458942026486810991

`∏{e}[A065331(n+1), A001316(#)]`
-/

namespace A382490.P7458942026486810991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001316 (Nat.factorization (f1 n).natAbs p)

end

end A382490.P7458942026486810991

noncomputable section

/-- A382490: The number of infinitary 3-smooth divisors of n.

Offset 1, canonical program `A382490.P7458942026486810991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382490 (n : ℕ) : ℤ :=
  A382490.P7458942026486810991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382668.P9934936757865442400

`A280891(n+2)-A000108(n)-A000108(n)`
-/

namespace A382668.P9934936757865442400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280891 (n + 2) - A000108 n - A000108 n

end

end A382668.P9934936757865442400

noncomputable section

/-- A382668: a(n) = C(n+1) - C(n-1) - 2*C(n-2) where C(n) = A000108(n) are the Catalan numbers.

Offset 2, canonical program `A382668.P9934936757865442400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A382668 (n : ℕ) : ℤ :=
  A382668.P9934936757865442400.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A382668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382988.P3704890568810450556

`A298300(n+2)-A189912(n)`
-/

namespace A382988.P3704890568810450556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298300 (n + 2) - A189912 n

end

end A382988.P3704890568810450556

noncomputable section

/-- A382988: a(n) is the total sum of semiperimeters over all (>=,>=)-polyominoes of length n.

Offset 0, canonical program `A382988.P3704890568810450556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A382988 (n : ℕ) : ℤ :=
  A382988.P3704890568810450556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A382988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383427.P11284326733180387964

`comp[∪[A383425(n+1), A383426(n+1)]]`
-/

namespace A383427.P11284326733180387964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383425 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383426 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A383427.P11284326733180387964

noncomputable section

/-- A383427: Indices k such that A003849(k) = A383422(k).

Offset 1, canonical program `A383427.P11284326733180387964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383427 (n : ℕ) : ℤ :=
  (A383427.P11284326733180387964.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383776.P498288519129441269

`A051960(n+1)+A000108(n)-A001791(n)`
-/

namespace A383776.P498288519129441269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051960 (n + 1) + (A000108 n - A001791 n)

end

end A383776.P498288519129441269

noncomputable section

/-- A383776: a(n) = (11*n + 3 + 6/(n+2)) * Catalan(n).

Offset 0, canonical program `A383776.P498288519129441269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A383776 (n : ℕ) : ℤ :=
  A383776.P498288519129441269.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A383776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385072.P12514858410014300209

`A360010(∑[n]+1)`
-/

namespace A385072.P12514858410014300209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360010 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A385072.P12514858410014300209

noncomputable section

/-- A385072: a(n) = number of tetrahedral numbers <= n-th triangular number.

Offset 0, canonical program `A385072.P12514858410014300209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A385072 (n : ℕ) : ℤ :=
  A385072.P12514858410014300209.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A385072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385682.P16939074830974081935

`n*(A092249(n+1)-1)`
-/

namespace A385682.P16939074830974081935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A092249 (n + 1) - 1)

end

end A385682.P16939074830974081935

noncomputable section

/-- A385682: a(n) = (n - 1) * Sum_{k=2..n} A000010(k).

Offset 1, canonical program `A385682.P16939074830974081935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385682 (n : ℕ) : ℤ :=
  A385682.P16939074830974081935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386260.P6511394381099978900

`A051903(A001511(n+1)+1)`
-/

namespace A386260.P6511394381099978900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A001511 (n + 1) + 1).toNat

end

end A386260.P6511394381099978900

noncomputable section

/-- A386260: Maximum exponent in the prime factorization of the exponent of the highest power of 2 dividing 4*n.

Offset 1, canonical program `A386260.P6511394381099978900`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386260 (n : ℕ) : ℤ :=
  A386260.P6511394381099978900.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386260.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386441.P6963524747857182039

`A074909(A056943(n))%27`
-/

namespace A386441.P6963524747857182039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074909 (A056943 n).toNat) 27

end

end A386441.P6963524747857182039

noncomputable section

/-- A386441: Triangle, read by rows, formed by reading Pascal's triangle (A007318) mod 27.

Offset 0, canonical program `A386441.P6963524747857182039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386441 (n : ℕ) : ℤ :=
  A386441.P6963524747857182039.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386843.P18321489374068669319

`(n+1)*A062992(n)`
-/

namespace A386843.P18321489374068669319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A062992 n

end

end A386843.P18321489374068669319

noncomputable section

/-- A386843: a(n) = Sum_{k=0..n} binomial(2*n+2,k) * binomial(2*n-k,n-k).

Offset 0, canonical program `A386843.P18321489374068669319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A386843 (n : ℕ) : ℤ :=
  A386843.P18321489374068669319.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A386843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386963.P9105300058504622331

`Δ[A153043(n+1)]+1`
-/

namespace A386963.P9105300058504622331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A386963.P9105300058504622331

noncomputable section

/-- A386963: Gaps between positions of odd terms in A065090.

Offset 1, canonical program `A386963.P9105300058504622331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A386963 (n : ℕ) : ℤ :=
  A386963.P9105300058504622331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A386963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387027.P11190749158434269992

`A002944(A028310(n))*A028310(n+1)`
-/

namespace A387027.P11190749158434269992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (A028310 n).toNat * A028310 (n + 1)

end

end A387027.P11190749158434269992

noncomputable section

/-- A387027: a(n) = lcm({1, 2, ..., n}) * (n + 1) / n for n > 0, a(0) = 1.

Offset 0, canonical program `A387027.P11190749158434269992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A387027 (n : ℕ) : ℤ :=
  A387027.P11190749158434269992.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A387027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387348.P10737065631606712067

`A096270(n)-A327174(n)`
-/

namespace A387348.P10737065631606712067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n - A327174 n

end

end A387348.P10737065631606712067

noncomputable section

/-- A387348: a(n) = W(n,2) - S(n,2) where W is the Wythoff array (A035513) and S is the Stolarsky array (A035506).

Offset 1, canonical program `A387348.P10737065631606712067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387348 (n : ℕ) : ℤ :=
  A387348.P10737065631606712067.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387874.P13171271536536116590

`A306847(Δ[n²])`
-/

namespace A387874.P13171271536536116590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A387874.P13171271536536116590

noncomputable section

/-- A387874: a(n) = Sum_{k=0..n} binomial(2*n+1,6*k).

Offset 0, canonical program `A387874.P13171271536536116590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A387874 (n : ℕ) : ℤ :=
  A387874.P13171271536536116590.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A387874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387914.P2450204624829324869

`A071724(A028242(2*(n+2)))-A000124(n+3)`
-/

namespace A387914.P2450204624829324869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (A028242 (2 * (n + 2))).toNat - A000124 (n + 3)

end

end A387914.P2450204624829324869

noncomputable section

/-- A387914: a(n) = 3*binomial(2*n+4,n+3)/(n+4) - (n+2)*(n+3)/2 - 1.

Offset 1, canonical program `A387914.P2450204624829324869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A387914 (n : ℕ) : ℤ :=
  A387914.P2450204624829324869.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A387914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388974.P5470956650158130436

`log2(A388973(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388974.P5470956650158130436
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A388973 (n + 1) : ℝ)

end

end A388974.P5470956650158130436

noncomputable section

/-- A388974: a(n) = log_2(A388973(n)).

Offset 1, canonical program `A388974.P5470956650158130436`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A388973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388974 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A388974.P5470956650158130436.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A388973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388974.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389101.P527784350690185921

`gcd(A002262(n), A003992(n))`
-/

namespace A389101.P527784350690185921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A003992 n)

end

end A389101.P527784350690185921

noncomputable section

/-- A389101: Array read by ascending antidiagonals: A(n, k) = gcd(n^k, k).

Offset 0, canonical program `A389101.P527784350690185921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4823 terms. -/
def A389101 (n : ℕ) : ℤ :=
  (A389101.P527784350690185921.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4823 terms. -/
def A389101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390808.P15368856780448354872

`∑{d}[n+1, A125287(#)*A351600((n+1)/#)]`
-/

namespace A390808.P15368856780448354872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A125287 d * A351600 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390808.P15368856780448354872

noncomputable section

/-- A390808: The sum of the integers k from 1 to n such that gcd(n, k) is a square.

Offset 1, canonical program `A390808.P15368856780448354872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390808 (n : ℕ) : ℤ :=
  A390808.P15368856780448354872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391575.P15759118219380588408

`eq[A286576(n), A293162(n)]`
-/

namespace A391575.P15759118219380588408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391575.P15759118219380588408

noncomputable section

/-- A391575: Numbers k such that 3*k = A048720(3,m) for some m > k, where A048720 is carryless base-2 multiplication.

Offset 1, canonical program `A391575.P15759118219380588408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5568 terms. -/
def A391575 (n : ℕ) : ℤ :=
  (A391575.P15759118219380588408.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5568 terms. -/
def A391575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391577.P11927412629419877182

`eq[A284574(n), A286576(n)]`
-/

namespace A391577.P11927412629419877182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391577.P11927412629419877182

noncomputable section

/-- A391577: Numbers k such that A048720(3,k) = 3*m for some m < k, where A048720 is carryless base-2 multiplication.

Offset 1, canonical program `A391577.P11927412629419877182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3427 terms. -/
def A391577 (n : ℕ) : ℤ :=
  (A391577.P11927412629419877182.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3427 terms. -/
def A391577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391990.P7637229657384781661

`A163865(n)-A372342(n)`
-/

namespace A391990.P7637229657384781661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163865 n - A372342 n

end

end A391990.P7637229657384781661

noncomputable section

/-- A391990: a(n) = Sum_{k=0..floor(n/2)} (k+1) * binomial(n,k) * binomial(n-k,k).

Offset 0, canonical program `A391990.P7637229657384781661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A391990 (n : ℕ) : ℤ :=
  A391990.P7637229657384781661.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A391990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392114.P11332587441482956445

`A072570(n+2)/6`
-/

namespace A392114.P11332587441482956445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072570 (n + 2) : ℚ) / 6

end

end A392114.P11332587441482956445

noncomputable section

/-- A392114: Numbers k such that 6*k - (greatest prime < 6*n) = (least prime > 6*n) - 6*k.

Offset 1, canonical program `A392114.P11332587441482956445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A392114 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392114.P11332587441482956445.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A392114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286057.P14495721961754591744

`filter[n+1, A286055(#)]`
-/

namespace A286057.P14495721961754591744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286055 (f1 j) = 1) n)

end

end A286057.P14495721961754591744

noncomputable section

/-- A286057: Positions of 1 in A286055; complement of A286056.

Offset 1, canonical program `A286057.P14495721961754591744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7499 terms. -/
def A286057 (n : ℕ) : ℤ :=
  (A286057.P14495721961754591744.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7499 terms. -/
def A286057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286546.P17363262112593177841

`A006068(n)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286546.P17363262112593177841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n - (n : ℤ)

end

end A286546.P17363262112593177841

noncomputable section

/-- A286546: a(n) = A006068(n) - n.

Offset 0, canonical program `A286546.P17363262112593177841`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286546 (n : ℕ) : ℤ :=
  A286546.P17363262112593177841.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286546.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286634.P1089138795719838063

`ratio[A083550(n+1)]*A285851(n+1)`
-/

namespace A286634.P1089138795719838063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083550 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A285851 (n + 1) : ℚ)

end

end A286634.P1089138795719838063

noncomputable section

/-- A286634: Numerator of the ratio of alternate consecutive prime gaps: Numerator ((prime(n + 3) - prime(n + 2))/(prime(n + 1) - prime(n))).

Offset 1, canonical program `A286634.P1089138795719838063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A286634 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286634.P1089138795719838063.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A286634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286726.P13971804869111894166

`1-A286685(n+1)`
-/

namespace A286726.P13971804869111894166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286685 (n + 1)

end

end A286726.P13971804869111894166

noncomputable section

/-- A286726: {0->10, 1->01}-transform of the Pell word, A171588.

Offset 1, canonical program `A286726.P13971804869111894166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286726 (n : ℕ) : ℤ :=
  A286726.P13971804869111894166.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286804.P16215063288714846442

`char[A286806(n+1)-1]`
-/

namespace A286804.P16215063288714846442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286806 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286804.P16215063288714846442

noncomputable section

/-- A286804: {000->null}-transform of the Pell word, A171588.

Offset 1, canonical program `A286804.P16215063288714846442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286804 (n : ℕ) : ℤ :=
  (A286804.P16215063288714846442.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286900.P7686726523732709747

`A000217(A151800(n+1))-∑[n]`
-/

namespace A286900.P7686726523732709747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A151800 (n + 1)).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A286900.P7686726523732709747

noncomputable section

/-- A286900: Sum of the numbers from n to nextprime(n).

Offset 1, canonical program `A286900.P7686726523732709747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286900 (n : ℕ) : ℤ :=
  A286900.P7686726523732709747.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286901.P11134869275173269859

`A000217(n+3)-A000217(A070320(n+2))`
-/

namespace A286901.P11134869275173269859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 3) - A000217 (A070320 (n + 2)).toNat

end

end A286901.P11134869275173269859

noncomputable section

/-- A286901: Sum of the numbers from prevprime(n) to n.

Offset 3, canonical program `A286901.P11134869275173269859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A286901 (n : ℕ) : ℤ :=
  A286901.P11134869275173269859.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A286901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286991.P960293502275245523

`A187970(n+1)+1+n`
-/

namespace A286991.P960293502275245523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187970 (n + 1) + 1 + (n : ℤ)

end

end A286991.P960293502275245523

noncomputable section

/-- A286991: Positions of 0 in A286990; complement of A286992.

Offset 1, canonical program `A286991.P960293502275245523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286991 (n : ℕ) : ℤ :=
  A286991.P960293502275245523.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287526.P12703940711411786649

`A189725(A189633(2*n+1)-n)`
-/

namespace A287526.P12703940711411786649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189725 (A189633 (2 * n + 1) - (n : ℤ)).toNat

end

end A287526.P12703940711411786649

noncomputable section

/-- A287526: Positions of 1 in A287524.

Offset 1, canonical program `A287526.P12703940711411786649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A287526 (n : ℕ) : ℤ :=
  A287526.P12703940711411786649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A287526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287801.P16564018995618813451

`A079978(A287773(n+1)+n)`
-/

namespace A287801.P16564018995618813451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A287773 (n + 1) + (n : ℤ)).toNat

end

end A287801.P16564018995618813451

noncomputable section

/-- A287801: {0->100, 1->001}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A287801.P16564018995618813451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287801 (n : ℕ) : ℤ :=
  A287801.P16564018995618813451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287896.P8146581605241777791

`A001511(n+1)*A002487(n+1)`
-/

namespace A287896.P8146581605241777791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A002487 (n + 1)

end

end A287896.P8146581605241777791

noncomputable section

/-- A287896: a(n) = A002487(n)*A001511(n).

Offset 1, canonical program `A287896.P8146581605241777791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287896 (n : ℕ) : ℤ :=
  A287896.P8146581605241777791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288375.P15167059163787172092

`char[comp[A288625(n+1)-1]]`
-/

namespace A288375.P15167059163787172092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288625 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288375.P15167059163787172092

noncomputable section

/-- A288375: Fixed point of the mapping 00->1000, 10->1001, starting at 00.

Offset 1, canonical program `A288375.P15167059163787172092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288375 (n : ℕ) : ℤ :=
  (A288375.P15167059163787172092.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289055.P6960658718910037824

`(1-C(∑[char[∑[n]]], 2)+n)*A028815(∑[char[∑[n+1]]])`
-/

namespace A289055.P6960658718910037824
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A028815 (∑ j ∈ Finset.range (n + 1), f4 j)

end

end A289055.P6960658718910037824

noncomputable section

/-- A289055: Triangle read by rows: T(n,k) = (k+1)*A028815(n) for 0 <= k <= n.

Offset 0, canonical program `A289055.P6960658718910037824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A289055 (n : ℕ) : ℤ :=
  A289055.P6960658718910037824.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A289055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289323.P568056266206430904

`2^n-2*A289322(n)`
-/

namespace A289323.P568056266206430904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 2 * A289322 n

end

end A289323.P568056266206430904

noncomputable section

/-- A289323: Number of twos minus number of ones in the first 2^n entries of the Kolakoski sequence, A000002.

Offset 0, canonical program `A289323.P568056266206430904`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289322, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289323 (n : ℕ) : ℤ :=
  A289323.P568056266206430904.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289322, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289323.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A289341.P18206740167896856464

`a(n-1)+A288002(n)` with `a(0)=1, a(1)=1`
-/

namespace A289341.P18206740167896856464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + A288002 n

end

end A289341.P18206740167896856464

noncomputable section

/-- A289341: Partial sums of l-fusc A288002(n-1) + 1.

Offset 1, canonical program `A289341.P18206740167896856464`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A288002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289341 (n : ℕ) : ℤ :=
  A289341.P18206740167896856464.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A288002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289341.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A289342.P19232162365294286

`a(n-1)+A288003(n)` with `a(0)=1`
-/

namespace A289342.P19232162365294286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A288003 n

end

end A289342.P19232162365294286

noncomputable section

/-- A289342: Partial sums of r-fusc A288003(n-1) + 1.

Offset 1, canonical program `A289342.P19232162365294286`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A288003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289342 (n : ℕ) : ℤ :=
  A289342.P19232162365294286.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A288003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A289363.P17304641566808962649

`p?[2-A108151(n+1)+n]`
-/

namespace A289363.P17304641566808962649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A108151 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289363.P17304641566808962649

noncomputable section

/-- A289363: Primes p such that p^2 + p - 1 is composite.

Offset 1, canonical program `A289363.P17304641566808962649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 972 terms. -/
def A289363 (n : ℕ) : ℤ :=
  A289363.P17304641566808962649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 972 terms. -/
def A289363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290012.P1928420523366165154

`A151800(A127719(n+1)-A000007(n))`
-/

namespace A290012.P1928420523366165154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A127719 (n + 1) - A000007 n).toNat

end

end A290012.P1928420523366165154

noncomputable section

/-- A290012: a(n) is the smallest prime number p satisfying p^2 >= Sum_{1 <= k <= n} prime(k)^2.

Offset 1, canonical program `A290012.P1928420523366165154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 822 terms. -/
def A290012 (n : ℕ) : ℤ :=
  A290012.P1928420523366165154.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 822 terms. -/
def A290012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292600.P3914548694480041296

`A006068(floor(n/2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292600.P3914548694480041296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 ⌊(n : ℚ) / 2⌋.toNat

end

end A292600.P3914548694480041296

noncomputable section

/-- A292600: a(n) = A006068(floor(n/2)); A006068 with every term duplicated, where A006068 is the inverse of binary gray code.

Offset 0, canonical program `A292600.P3914548694480041296`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292600 (n : ℕ) : ℤ :=
  A292600.P3914548694480041296.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292600.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292918.P8931066894349998368

`2*A071917(n+1)+1`
-/

namespace A292918.P8931066894349998368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071917 (n + 1) + 1

end

end A292918.P8931066894349998368

noncomputable section

/-- A292918: Let A_n be a square n X n matrix with entries A_n(i,j)=1 if i+j is prime, and A_n(i,j)=0 otherwise. Then a(n) counts the 1's in A_n.

Offset 1, canonical program `A292918.P8931066894349998368`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292918 (n : ℕ) : ℤ :=
  A292918.P8931066894349998368.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292918.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293451.P7933704041420674484

`A001826(n+1)-A121262(n)`
-/

namespace A293451.P7933704041420674484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (n + 1) - A121262 n

end

end A293451.P7933704041420674484

noncomputable section

/-- A293451: Number of proper divisors of n of the form 4k+1.

Offset 1, canonical program `A293451.P7933704041420674484`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001826, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293451 (n : ℕ) : ℤ :=
  A293451.P7933704041420674484.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001826, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293451.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293643.P4507541113369721667

`A293642(n)+A011558(n)`
-/

namespace A293643.P4507541113369721667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293642 n + A011558 n

end

end A293643.P4507541113369721667

noncomputable section

/-- A293643: a(n) is the least integer k such that k/Fibonacci(n) > 3/5.

Offset 0, canonical program `A293643.P4507541113369721667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. -/
def A293643 (n : ℕ) : ℤ :=
  A293643.P4507541113369721667.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. -/
def A293643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293644.P9174250443400626299

`A293640(n)+A004698(n)`
-/

namespace A293644.P9174250443400626299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293640 n + A004698 n

end

end A293644.P9174250443400626299

noncomputable section

/-- A293644: a(n) is the integer k that minimizes |k/Fibonacci(n) - 3/5|.

Offset 0, canonical program `A293644.P9174250443400626299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. -/
def A293644 (n : ℕ) : ℤ :=
  A293644.P9174250443400626299.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. -/
def A293644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293975.P1441853442646380636

`A026741(n)+A000035(n)*A151800(n)`
-/

namespace A293975.P1441853442646380636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + A000035 n * A151800 n

end

end A293975.P1441853442646380636

noncomputable section

/-- A293975: If n is even, divide by 2; otherwise, add the next larger prime.

Offset 0, canonical program `A293975.P1441853442646380636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293975 (n : ℕ) : ℤ :=
  A293975.P1441853442646380636.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295505.P10874738563649779947

`∑{d}[n+1, A046692(#)*A359190((n+1)/#)]`
-/

namespace A295505.P10874738563649779947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A359190 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A295505.P10874738563649779947

noncomputable section

/-- A295505: a(n) = Sum_{d|n} mu(n/d)*4^(d-1).

Offset 1, canonical program `A295505.P10874738563649779947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A295505 (n : ℕ) : ℤ :=
  A295505.P10874738563649779947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A295505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295820.P16692635017392490781

`a(n-1)+A295819(n)` with `a(0)=0`
-/

namespace A295820.P16692635017392490781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A295819 n

end

end A295820.P16692635017392490781

noncomputable section

/-- A295820: Number of nonnegative solutions to (x,y) = 1 and x^2 + y^2 <= n.

Offset 0, canonical program `A295820.P16692635017392490781`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295819, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295820 (n : ℕ) : ℤ :=
  A295820.P16692635017392490781.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295819, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295820.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A297040.P2860188233135443845

`A020951(2^A064458(n))`
-/

namespace A297040.P2860188233135443845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A064458 n : ℤ))).toNat

end

end A297040.P2860188233135443845

noncomputable section

/-- A297040: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-12 digits of n; see Comments.

Offset 1, canonical program `A297040.P2860188233135443845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A297040 (n : ℕ) : ℤ :=
  A297040.P2860188233135443845.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A297040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297044.P13798135279491243698

`A359326(A175144(floor(log2(n+1))!))`
-/

namespace A297044.P13798135279491243698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359326 (A175144 (Nat.factorial (Nat.log 2 (n + 1)))).toNat

end

end A297044.P13798135279491243698

noncomputable section

/-- A297044: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-16 digits of n; see Comments.

Offset 1, canonical program `A297044.P13798135279491243698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A297044 (n : ℕ) : ℤ :=
  A297044.P13798135279491243698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A297044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297150.P3820632814485889049

`5*A049591(n+1)`
-/

namespace A297150.P3820632814485889049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A049591 (n + 1)

end

end A297150.P3820632814485889049

noncomputable section

/-- A297150: Let b(k) denote A292081(k); the sequence lists numbers b(2n) where for all m > n, b(2m) > b(2n).

Offset 1, canonical program `A297150.P3820632814485889049`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297150 (n : ℕ) : ℤ :=
  A297150.P3820632814485889049.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297150.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A297925.P18079423066294423131

`A049591(n+1)+5`
-/

namespace A297925.P18079423066294423131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1) + 5

end

end A297925.P18079423066294423131

noncomputable section

/-- A297925: Even numbers k such that k - 5 is prime but k - 3 is not prime.

Offset 1, canonical program `A297925.P18079423066294423131`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297925 (n : ℕ) : ℤ :=
  A297925.P18079423066294423131.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297925.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A298861.P498187030667195910

`a(n-1)+A217564(n)+1` with `a(0)=1`
-/

namespace A298861.P498187030667195910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A217564 n + 1)

end

end A298861.P498187030667195910

noncomputable section

/-- A298861: Rank of n-th prime when all the primes and twice-primes are jointly ranked.

Offset 1, canonical program `A298861.P498187030667195910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298861 (n : ℕ) : ℤ :=
  A298861.P498187030667195910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300836.P11681242100459120982

`∑{d}[n+1, A007895(#%(n+1))]`
-/

namespace A300836.P11681242100459120982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007895 (d % (n + 1))

end

end A300836.P11681242100459120982

noncomputable section

/-- A300836: a(n) is the total number of terms (1-digits) in Zeckendorf representation of all proper divisors of n.

Offset 1, canonical program `A300836.P11681242100459120982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300836 (n : ℕ) : ℤ :=
  A300836.P11681242100459120982.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300837.P3256330413758577014

`∑{d}[n+1, A007895(#)]`
-/

namespace A300837.P3256330413758577014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007895 d

end

end A300837.P3256330413758577014

noncomputable section

/-- A300837: a(n) is the total number of terms (1-digits) in Zeckendorf representation of all divisors of n.

Offset 1, canonical program `A300837.P3256330413758577014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300837 (n : ℕ) : ℤ :=
  A300837.P3256330413758577014.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300839.P17405904623820629113

`A006068(A057300(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A300839.P17405904623820629113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A057300 n).toNat

end

end A300839.P17405904623820629113

noncomputable section

/-- A300839: Permutation of nonnegative integers: a(n) = A006068(A057300(n)).

Offset 0, canonical program `A300839.P17405904623820629113`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, A057300, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300839 (n : ℕ) : ℤ :=
  A300839.P17405904623820629113.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, A057300, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300839.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300915.P2814181824402378078

`A000056(n+1)/A060594(n+1)`
-/

namespace A300915.P2814181824402378078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A060594 (n + 1) : ℚ)

end

end A300915.P2814181824402378078

noncomputable section

/-- A300915: Order of the group PSL(2,Z_n).

Offset 1, canonical program `A300915.P2814181824402378078`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000056, A060594, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300915 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A300915.P2814181824402378078.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000056, A060594, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300915.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A301300.P2291985338386002746

`∑[A301299(n)]`
-/

namespace A301300.P2291985338386002746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301300.P2291985338386002746

noncomputable section

/-- A301300: Partial sums of A301299.

Offset 0, canonical program `A301300.P2291985338386002746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2590 terms. -/
def A301300 (n : ℕ) : ℤ :=
  A301300.P2291985338386002746.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2590 terms. -/
def A301300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301677.P2251903067479057057

`∑[A301676(n)]`
-/

namespace A301677.P2251903067479057057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301677.P2251903067479057057

noncomputable section

/-- A301677: Partial sums of A301676.

Offset 0, canonical program `A301677.P2251903067479057057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2518 terms. -/
def A301677 (n : ℕ) : ℤ :=
  A301677.P2251903067479057057.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2518 terms. -/
def A301677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301724.P3038787070238484686

`A330033(n)+A314209(n)`
-/

namespace A301724.P3038787070238484686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330033 n + A314209 n

end

end A301724.P3038787070238484686

noncomputable section

/-- A301724: Coordination sequence for node of type V1 in "kra" 2-D tiling (or net).

Offset 0, canonical program `A301724.P3038787070238484686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2256 terms. -/
def A301724 (n : ℕ) : ℤ :=
  A301724.P3038787070238484686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2256 terms. -/
def A301724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303120.P13190736090509542257

`record[A023855(n+1)*A214295(n+2)]`
-/

namespace A303120.P13190736090509542257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023855 (n + 1) * A214295 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303120.P13190736090509542257

noncomputable section

/-- A303120: Total area of all rectangles of size p X q such that p + q = n^2 and p <= q.

Offset 1, canonical program `A303120.P13190736090509542257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A303120 (n : ℕ) : ℤ :=
  A303120.P13190736090509542257.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A303120.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A303741.P16635402102150810536

`A091194(A231086(n+1)+1)`
-/

namespace A303741.P16635402102150810536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (A231086 (n + 1) + 1).toNat

end

end A303741.P16635402102150810536

noncomputable section

/-- A303741: Numbers k such that A(k+1) = A(k) + 2, where A() = A005101() are the abundant numbers.

Offset 1, canonical program `A303741.P16635402102150810536`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091194, A231086, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A303741 (n : ℕ) : ℤ :=
  A303741.P16635402102150810536.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091194, A231086, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A303741.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A304275.P15555862402224262054

`A069097(2*n+1)`
-/

namespace A304275.P15555862402224262054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069097 (2 * n + 1)

end

end A304275.P15555862402224262054

noncomputable section

/-- A304275: a(n) = Sum_{k = 1..n} gcd(k,n) / cos(Pi*k/n)^2 for odd n.

Offset 1, canonical program `A304275.P15555862402224262054`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304275 (n : ℕ) : ℤ :=
  A304275.P15555862402224262054.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304275.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305558.P27703621975583429

`A084291(n+1)-A084290(n+1)`
-/

namespace A305558.P27703621975583429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084291 (n + 1) - A084290 (n + 1)

end

end A305558.P27703621975583429

noncomputable section

/-- A305558: If (p1,p2) is the n-th twin prime pair and p the prime before p1 and q the prime after p2 then a(n) = p + q - (p1 + p2).

Offset 1, canonical program `A305558.P27703621975583429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305558 (n : ℕ) : ℤ :=
  A305558.P27703621975583429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305624.P13235165757477837643

`A000919(n+1)-A056311(n+1)`
-/

namespace A305624.P13235165757477837643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000919 (n + 1) - A056311 (n + 1)

end

end A305624.P13235165757477837643

noncomputable section

/-- A305624: Number of chiral pairs of rows of n colors with exactly 4 different colors.

Offset 1, canonical program `A305624.P13235165757477837643`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000919, A056311, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A305624 (n : ℕ) : ℤ :=
  A305624.P13235165757477837643.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000919, A056311, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A305624.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305876.P10182350532949549985

`A003714(2^n)`
-/

namespace A305876.P10182350532949549985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (2 ^ n)

end

end A305876.P10182350532949549985

noncomputable section

/-- A305876: a(n) = Fibbinary(2^n).

Offset 0, canonical program `A305876.P10182350532949549985`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305876 (n : ℕ) : ℤ :=
  A305876.P10182350532949549985.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305876.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306323.P12186467086008578801

`A074286(Δ[record[A074288(n+1)]])`
-/

namespace A306323.P12186467086008578801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074288 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (f1 (n + 1) - f1 n).toNat

end

end A306323.P12186467086008578801

noncomputable section

/-- A306323: Break up the Kolakoski sequence A000002 into pieces by inserting a space between every pair of equal terms; sequence gives lengths of successive pieces.

Offset 1, canonical program `A306323.P12186467086008578801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A306323 (n : ℕ) : ℤ :=
  A306323.P12186467086008578801.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A306323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307013.P16025431409212704238

`A307011(n)+A307012(n)`
-/

namespace A307013.P16025431409212704238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307011 n + A307012 n

end

end A307013.P16025431409212704238

noncomputable section

/-- A307013: Third coordinate (asymmetric variant) in a redundant hexagonal coordinate system of the points of a counterclockwise spiral on an hexagonal grid. First and second coordinates are given in A307011 and A307012.

Offset 0, canonical program `A307013.P16025431409212704238`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307011, A307012, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307013 (n : ℕ) : ℤ :=
  A307013.P16025431409212704238.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307011, A307012, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307013.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307445.P6220732114162355976

`∑{d}[n+1, A046692(#)*A063659((n+1)/#)]`
-/

namespace A307445.P6220732114162355976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A063659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307445.P6220732114162355976

noncomputable section

/-- A307445: Dirichlet g.f.: 1 / (zeta(s) * zeta(2*s)).

Offset 1, canonical program `A307445.P6220732114162355976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307445 (n : ℕ) : ℤ :=
  A307445.P6220732114162355976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308022.P12381398611717644389

`A033558(n+1)-A238737(n)`
-/

namespace A308022.P12381398611717644389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033558 (n + 1) - A238737 n

end

end A308022.P12381398611717644389

noncomputable section

/-- A308022: a(n) = prevprime(2*n-1) - nextprime(n-1), where prevprime = A151799 and nextprime = A151800.

Offset 2, canonical program `A308022.P12381398611717644389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308022 (n : ℕ) : ℤ :=
  A308022.P12381398611717644389.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309076.P2241331786193624643

`A356327(A003714(n))`
-/

namespace A309076.P2241331786193624643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356327 (A003714 n).toNat

end

end A309076.P2241331786193624643

noncomputable section

/-- A309076: The Zeckendorf representation of n read as a NegaFibonacci representation.

Offset 0, canonical program `A309076.P2241331786193624643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A309076 (n : ℕ) : ℤ :=
  A309076.P2241331786193624643.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A309076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309288.P1252972145664633864

`∑[A361984(A028310(n))]-1`
-/

namespace A309288.P1252972145664633864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361984 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A309288.P1252972145664633864

noncomputable section

/-- A309288: a(0) = 0, a(1) = 1, and for any n > 1, a(n) = Sum_{k > 1} (-1)^k * a(floor(n/k)).

Offset 0, canonical program `A309288.P1252972145664633864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309288 (n : ℕ) : ℤ :=
  A309288.P1252972145664633864.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309355.P9345418795961828822

`A071904(n+1)-1`
-/

namespace A309355.P9345418795961828822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1) - 1

end

end A309355.P9345418795961828822

noncomputable section

/-- A309355: Even numbers k such that k! is divisible by k*(k+1)/2.

Offset 1, canonical program `A309355.P9345418795961828822`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309355 (n : ℕ) : ℤ :=
  A309355.P9345418795961828822.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309355.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A310380.P5834693299645205668

`A315034(n)-A011582(n)`
-/

namespace A310380.P5834693299645205668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315034 n - A011582 n

end

end A310380.P5834693299645205668

noncomputable section

/-- A310380: Coordination sequence Gal.6.322.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310380.P5834693299645205668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2264 terms. -/
def A310380 (n : ℕ) : ℤ :=
  A310380.P5834693299645205668.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2264 terms. -/
def A310380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310421.P18423327400045776034

`abs(A008592(n)-A315304(n))`
-/

namespace A310421.P18423327400045776034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315304 n|

end

end A310421.P18423327400045776034

noncomputable section

/-- A310421: Coordination sequence Gal.5.131.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310421.P18423327400045776034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2345 terms. -/
def A310421 (n : ℕ) : ℤ :=
  A310421.P18423327400045776034.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2345 terms. -/
def A310421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310462.P14374953291466899148

`abs(10*n-A315256(n))`
-/

namespace A310462.P14374953291466899148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315256 n|

end

end A310462.P14374953291466899148

noncomputable section

/-- A310462: Coordination sequence Gal.5.138.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310462.P14374953291466899148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2358 terms. -/
def A310462 (n : ℕ) : ℤ :=
  A310462.P14374953291466899148.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2358 terms. -/
def A310462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310464.P516578395885125778

`abs(10*n-A315255(n))`
-/

namespace A310464.P516578395885125778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315255 n|

end

end A310464.P516578395885125778

noncomputable section

/-- A310464: Coordination sequence Gal.5.139.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310464.P516578395885125778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A310464 (n : ℕ) : ℤ :=
  A310464.P516578395885125778.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A310464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310492.P3547860379058493254

`A315445(n)-A253262(A253262(n)+n)`
-/

namespace A310492.P3547860379058493254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315445 n - A253262 (A253262 n + (n : ℤ)).toNat

end

end A310492.P3547860379058493254

noncomputable section

/-- A310492: Coordination sequence Gal.6.249.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310492.P3547860379058493254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2411 terms. -/
def A310492 (n : ℕ) : ℤ :=
  A310492.P3547860379058493254.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2411 terms. -/
def A310492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310496.P10218133312535367939

`A315034(n)+A011582(A011582(n)+n)`
-/

namespace A310496.P10218133312535367939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315034 n + A011582 (A011582 n + (n : ℤ)).toNat

end

end A310496.P10218133312535367939

noncomputable section

/-- A310496: Coordination sequence Gal.6.327.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310496.P10218133312535367939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. -/
def A310496 (n : ℕ) : ℤ :=
  A310496.P10218133312535367939.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. -/
def A310496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310509.P5623356039193188941

`A313201(n)+A002264(A004773(n+1))`
-/

namespace A310509.P5623356039193188941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313201 n + A002264 (A004773 (n + 1)).toNat

end

end A310509.P5623356039193188941

noncomputable section

/-- A310509: Coordination sequence Gal.5.142.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310509.P5623356039193188941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2432 terms. -/
def A310509 (n : ℕ) : ℤ :=
  A310509.P5623356039193188941.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2432 terms. -/
def A310509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311425.P6783800476576581403

`A315495(n)-A047363(n+1)`
-/

namespace A311425.P6783800476576581403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315495 n - A047363 (n + 1)

end

end A311425.P6783800476576581403

noncomputable section

/-- A311425: Coordination sequence Gal.5.52.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311425.P6783800476576581403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2245 terms. -/
def A311425 (n : ℕ) : ℤ :=
  A311425.P6783800476576581403.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2245 terms. -/
def A311425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312184.P16435784878311802560

`A004772(A312123(n)-n)+1`
-/

namespace A312184.P16435784878311802560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004772 (A312123 n - (n : ℤ)).toNat + 1

end

end A312184.P16435784878311802560

noncomputable section

/-- A312184: Coordination sequence Gal.6.155.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312184.P16435784878311802560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A312184 (n : ℕ) : ℤ :=
  A312184.P16435784878311802560.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A312184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312555.P10974015177557321906

`A311993(n)+Δ[A011862(n)]`
-/

namespace A312555.P10974015177557321906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311993 n + (f1 (n + 1) - f1 n)

end

end A312555.P10974015177557321906

noncomputable section

/-- A312555: Coordination sequence Gal.5.110.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312555.P10974015177557321906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A312555 (n : ℕ) : ℤ :=
  A312555.P10974015177557321906.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A312555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312669.P16662175868118744166

`2*A312100(n)-A008574(n)`
-/

namespace A312669.P16662175868118744166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312100 n - A008574 n

end

end A312669.P16662175868118744166

noncomputable section

/-- A312669: Coordination sequence Gal.5.111.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312669.P16662175868118744166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A312669 (n : ℕ) : ℤ :=
  A312669.P16662175868118744166.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A312669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312935.P3936906225367747265

`abs(A008592(n)-A315521(n))`
-/

namespace A312935.P3936906225367747265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315521 n|

end

end A312935.P3936906225367747265

noncomputable section

/-- A312935: Coordination sequence Gal.4.105.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312935.P3936906225367747265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A312935 (n : ℕ) : ℤ :=
  A312935.P3936906225367747265.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A312935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313064.P10281981631680228567

`A311312(n)+∑[A021913(n)]`
-/

namespace A313064.P10281981631680228567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313064.P10281981631680228567

noncomputable section

/-- A313064: Coordination sequence Gal.6.195.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313064.P10281981631680228567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A313064 (n : ℕ) : ℤ :=
  A313064.P10281981631680228567.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A313064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313117.P16447127706921561156

`A312123(n)+A004396(n-A004525(n))`
-/

namespace A313117.P16447127706921561156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312123 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A313117.P16447127706921561156

noncomputable section

/-- A313117: Coordination sequence Gal.6.134.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313117.P16447127706921561156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2396 terms. -/
def A313117 (n : ℕ) : ℤ :=
  A313117.P16447127706921561156.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2396 terms. -/
def A313117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313262.P4986091702170886326

`A312144(n)+∑[A021913(n)]`
-/

namespace A313262.P4986091702170886326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312144 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313262.P4986091702170886326

noncomputable section

/-- A313262: Coordination sequence Gal.6.205.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313262.P4986091702170886326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. -/
def A313262 (n : ℕ) : ℤ :=
  A313262.P4986091702170886326.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. -/
def A313262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313283.P1676533140886781686

`abs(10*n-A315403(n))`
-/

namespace A313283.P1676533140886781686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315403 n|

end

end A313283.P1676533140886781686

noncomputable section

/-- A313283: Coordination sequence Gal.6.207.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313283.P1676533140886781686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A313283 (n : ℕ) : ℤ :=
  A313283.P1676533140886781686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A313283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313293.P9420717771788987788

`A313894(n)-A128834(A004396(n))`
-/

namespace A313293.P9420717771788987788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n - A128834 (A004396 n).toNat

end

end A313293.P9420717771788987788

noncomputable section

/-- A313293: Coordination sequence Gal.5.89.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313293.P9420717771788987788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2264 terms. -/
def A313293 (n : ℕ) : ℤ :=
  A313293.P9420717771788987788.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2264 terms. -/
def A313293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313297.P8971349673296799465

`abs(A008592(n)-A315395(n))`
-/

namespace A313297.P8971349673296799465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315395 n|

end

end A313297.P8971349673296799465

noncomputable section

/-- A313297: Coordination sequence Gal.6.210.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313297.P8971349673296799465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2264 terms. -/
def A313297 (n : ℕ) : ℤ :=
  A313297.P8971349673296799465.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2264 terms. -/
def A313297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313611.P14084562864274338654

`A004525(n)+A313540(n)-A004396(A004525(n))`
-/

namespace A313611.P14084562864274338654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313540 n - A004396 (A004525 n).toNat)

end

end A313611.P14084562864274338654

noncomputable section

/-- A313611: Coordination sequence Gal.6.337.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313611.P14084562864274338654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A313611 (n : ℕ) : ℤ :=
  A313611.P14084562864274338654.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A313611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313619.P4479225662466088296

`A004525(n)+A313540(n)-A004525(A004396(n))`
-/

namespace A313619.P4479225662466088296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313540 n - A004525 (A004396 n).toNat)

end

end A313619.P4479225662466088296

noncomputable section

/-- A313619: Coordination sequence Gal.6.260.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313619.P4479225662466088296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2423 terms. -/
def A313619 (n : ℕ) : ℤ :=
  A313619.P4479225662466088296.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2423 terms. -/
def A313619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313623.P10903003669249707041

`abs(A008592(n)-A313827(n))`
-/

namespace A313623.P10903003669249707041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313827 n|

end

end A313623.P10903003669249707041

noncomputable section

/-- A313623: Coordination sequence Gal.5.87.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313623.P10903003669249707041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2357 terms. -/
def A313623 (n : ℕ) : ℤ :=
  A313623.P10903003669249707041.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2357 terms. -/
def A313623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313704.P6800385676171828535

`A313560(n)+Δ[A011864(n)]`
-/

namespace A313704.P6800385676171828535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313560 n + (f1 (n + 1) - f1 n)

end

end A313704.P6800385676171828535

noncomputable section

/-- A313704: Coordination sequence Gal.6.323.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313704.P6800385676171828535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. -/
def A313704 (n : ℕ) : ℤ :=
  A313704.P6800385676171828535.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. -/
def A313704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313717.P15469880172162145756

`abs(9*n-A311312(n))`
-/

namespace A313717.P15469880172162145756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 * n : ℤ) - A311312 n|

end

end A313717.P15469880172162145756

noncomputable section

/-- A313717: Coordination sequence Gal.6.151.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313717.P15469880172162145756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2441 terms. -/
def A313717 (n : ℕ) : ℤ :=
  A313717.P15469880172162145756.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2441 terms. -/
def A313717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313719.P4530197353488080189

`A312195(n)+A253262(n)`
-/

namespace A313719.P4530197353488080189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312195 n + A253262 n

end

end A313719.P4530197353488080189

noncomputable section

/-- A313719: Coordination sequence Gal.5.116.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313719.P4530197353488080189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2410 terms. -/
def A313719 (n : ℕ) : ℤ :=
  A313719.P4530197353488080189.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2410 terms. -/
def A313719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313768.P5164488227941106115

`abs(A008592(n)-A313711(n))`
-/

namespace A313768.P5164488227941106115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313711 n|

end

end A313768.P5164488227941106115

noncomputable section

/-- A313768: Coordination sequence Gal.6.261.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313768.P5164488227941106115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2366 terms. -/
def A313768 (n : ℕ) : ℤ :=
  A313768.P5164488227941106115.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2366 terms. -/
def A313768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313794.P6065180597494154832

`abs(10*n-A313684(n))`
-/

namespace A313794.P6065180597494154832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313684 n|

end

end A313794.P6065180597494154832

noncomputable section

/-- A313794: Coordination sequence Gal.6.619.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313794.P6065180597494154832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A313794 (n : ℕ) : ℤ :=
  A313794.P6065180597494154832.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A313794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313799.P9233664221489644288

`abs(A008592(n)-A313683(n))`
-/

namespace A313799.P9233664221489644288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313683 n|

end

end A313799.P9233664221489644288

noncomputable section

/-- A313799: Coordination sequence Gal.3.53.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313799.P9233664221489644288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A313799 (n : ℕ) : ℤ :=
  A313799.P9233664221489644288.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A313799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313876.P7091103484459184855

`abs(A008592(n)-A313560(n))`
-/

namespace A313876.P7091103484459184855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313560 n|

end

end A313876.P7091103484459184855

noncomputable section

/-- A313876: Coordination sequence Gal.6.342.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313876.P7091103484459184855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A313876 (n : ℕ) : ℤ :=
  A313876.P7091103484459184855.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A313876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313895.P8605907711539961465

`A313873(n)+A313926(n)-A313916(n)`
-/

namespace A313895.P8605907711539961465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313873 n + (A313926 n - A313916 n)

end

end A313895.P8605907711539961465

noncomputable section

/-- A313895: Coordination sequence Gal.6.647.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313895.P8605907711539961465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A313895 (n : ℕ) : ℤ :=
  A313895.P8605907711539961465.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A313895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313915.P8871065517544398615

`A008486(2*n)+A312140(n)-A313752(n)`
-/

namespace A313915.P8871065517544398615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) + (A312140 n - A313752 n)

end

end A313915.P8871065517544398615

noncomputable section

/-- A313915: Coordination sequence Gal.6.647.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313915.P8871065517544398615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. -/
def A313915 (n : ℕ) : ℤ :=
  A313915.P8871065517544398615.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. -/
def A313915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313932.P4222521981908948703

`A315344(n)-A134667(n)`
-/

namespace A313932.P4222521981908948703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315344 n - A134667 n

end

end A313932.P4222521981908948703

noncomputable section

/-- A313932: Coordination sequence Gal.6.370.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313932.P4222521981908948703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A313932 (n : ℕ) : ℤ :=
  A313932.P4222521981908948703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A313932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313966.P14662508330527286566

`A028310(A313957(2*n)-A314123(n))`
-/

namespace A313966.P14662508330527286566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A313957 (2 * n) - A314123 n).toNat

end

end A313966.P14662508330527286566

noncomputable section

/-- A313966: Coordination sequence Gal.5.310.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313966.P14662508330527286566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1151 terms. -/
def A313966 (n : ℕ) : ℤ :=
  A313966.P14662508330527286566.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1151 terms. -/
def A313966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313978.P4030524710208457101

`A313836(n)+A315490(n)-A315413(n)`
-/

namespace A313978.P4030524710208457101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313836 n + (A315490 n - A315413 n)

end

end A313978.P4030524710208457101

noncomputable section

/-- A313978: Coordination sequence Gal.6.653.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313978.P4030524710208457101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1997 terms. -/
def A313978 (n : ℕ) : ℤ :=
  A313978.P4030524710208457101.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1997 terms. -/
def A313978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314029.P11928005688573589694

`abs(8*n-A004396(A312472(n)))`
-/

namespace A314029.P11928005688573589694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(8 * n : ℤ) - A004396 (A312472 n).toNat|

end

end A314029.P11928005688573589694

noncomputable section

/-- A314029: Coordination sequence Gal.6.328.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314029.P11928005688573589694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A314029 (n : ℕ) : ℤ :=
  A314029.P11928005688573589694.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A314029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314038.P12633839293519020832

`abs(A008592(n)-A315034(n))`
-/

namespace A314038.P12633839293519020832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315034 n|

end

end A314038.P12633839293519020832

noncomputable section

/-- A314038: Coordination sequence Gal.6.616.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314038.P12633839293519020832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. -/
def A314038 (n : ℕ) : ℤ :=
  A314038.P12633839293519020832.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. -/
def A314038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314054.P9922859689794149841

`A313754(n)+A128834(A142150(n))`
-/

namespace A314054.P9922859689794149841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313754 n + A128834 (A142150 n).toNat

end

end A314054.P9922859689794149841

noncomputable section

/-- A314054: Coordination sequence Gal.4.142.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314054.P9922859689794149841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A314054 (n : ℕ) : ℤ :=
  A314054.P9922859689794149841.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A314054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314057.P17750692989560915075

`A004396(A313620(n))+2*n`
-/

namespace A314057.P17750692989560915075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313620 n).toNat + (2 * n : ℤ)

end

end A314057.P17750692989560915075

noncomputable section

/-- A314057: Coordination sequence Gal.6.635.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314057.P17750692989560915075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. -/
def A314057 (n : ℕ) : ℤ :=
  A314057.P17750692989560915075.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. -/
def A314057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314088.P4296014599447221606

`A042965(A313683(n)+1-n)`
-/

namespace A314088.P4296014599447221606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A313683 n + (1 - (n : ℤ))).toNat

end

end A314088.P4296014599447221606

noncomputable section

/-- A314088: Coordination sequence Gal.5.111.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314088.P4296014599447221606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A314088 (n : ℕ) : ℤ :=
  A314088.P4296014599447221606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A314088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314121.P12858251584792299681

`abs(A134667(n)-A038608(A315475(n)))`
-/

namespace A314121.P12858251584792299681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134667 n - A038608 (A315475 n).toNat|

end

end A314121.P12858251584792299681

noncomputable section

/-- A314121: Coordination sequence Gal.6.657.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314121.P12858251584792299681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1875 terms. -/
def A314121 (n : ℕ) : ℤ :=
  A314121.P12858251584792299681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1875 terms. -/
def A314121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314133.P10587469180771269075

`A314052(n)+Δ[A011864(n)]`
-/

namespace A314133.P10587469180771269075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314052 n + (f1 (n + 1) - f1 n)

end

end A314133.P10587469180771269075

noncomputable section

/-- A314133: Coordination sequence Gal.6.623.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314133.P10587469180771269075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314133 (n : ℕ) : ℤ :=
  A314133.P10587469180771269075.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314234.P3486160622524508479

`A004396(2*(A313869(n)-n))`
-/

namespace A314234.P3486160622524508479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A313869 n - (n : ℤ))).toNat

end

end A314234.P3486160622524508479

noncomputable section

/-- A314234: Coordination sequence Gal.6.332.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314234.P3486160622524508479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1223 terms. -/
def A314234 (n : ℕ) : ℤ :=
  A314234.P3486160622524508479.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1223 terms. -/
def A314234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314263.P7199020950879472314

`A315732(n)-A128834(n)`
-/

namespace A314263.P7199020950879472314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315732 n - A128834 n

end

end A314263.P7199020950879472314

noncomputable section

/-- A314263: Coordination sequence Gal.6.662.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314263.P7199020950879472314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2173 terms. -/
def A314263 (n : ℕ) : ℤ :=
  A314263.P7199020950879472314.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2173 terms. -/
def A314263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314364.P3264614006262536072

`A315943(n)-A006368(A004396(n))`
-/

namespace A314364.P3264614006262536072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315943 n - A006368 (A004396 n).toNat

end

end A314364.P3264614006262536072

noncomputable section

/-- A314364: Coordination sequence Gal.5.91.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314364.P3264614006262536072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A314364 (n : ℕ) : ℤ :=
  A314364.P3264614006262536072.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A314364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314671.P7548887448611647947

`A008458(n)+A008576(n)-A312100(n)`
-/

namespace A314671.P7548887448611647947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008576 n - A312100 n)

end

end A314671.P7548887448611647947

noncomputable section

/-- A314671: Coordination sequence Gal.5.95.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314671.P7548887448611647947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2517 terms. -/
def A314671 (n : ℕ) : ℤ :=
  A314671.P7548887448611647947.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2517 terms. -/
def A314671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314691.P8896103277328395044

`A311312(n)+A004525(A004396(n))`
-/

namespace A314691.P8896103277328395044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n + A004525 (A004396 n).toNat

end

end A314691.P8896103277328395044

noncomputable section

/-- A314691: Coordination sequence Gal.6.256.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314691.P8896103277328395044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2478 terms. -/
def A314691 (n : ℕ) : ℤ :=
  A314691.P8896103277328395044.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2478 terms. -/
def A314691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314737.P17028861215793571548

`A313583(n)-A004525(n-A004396(n))`
-/

namespace A314737.P17028861215793571548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313583 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A314737.P17028861215793571548

noncomputable section

/-- A314737: Coordination sequence Gal.6.260.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314737.P17028861215793571548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. -/
def A314737 (n : ℕ) : ℤ :=
  A314737.P17028861215793571548.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. -/
def A314737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314961.P17305649603709339470

`A330033(n)+A310446(n)`
-/

namespace A314961.P17305649603709339470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330033 n + A310446 n

end

end A314961.P17305649603709339470

noncomputable section

/-- A314961: Coordination sequence Gal.5.137.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314961.P17305649603709339470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2360 terms. -/
def A314961 (n : ℕ) : ℤ :=
  A314961.P17305649603709339470.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2360 terms. -/
def A314961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315039.P14949474118116711109

`A314922(n)+A008615(A019425(n))`
-/

namespace A315039.P14949474118116711109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314922 n + A008615 (A019425 n).toNat

end

end A315039.P14949474118116711109

noncomputable section

/-- A315039: Coordination sequence Gal.3.61.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315039.P14949474118116711109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2357 terms. -/
def A315039 (n : ℕ) : ℤ :=
  A315039.P14949474118116711109.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2357 terms. -/
def A315039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315068.P4253477378695981415

`A311993(n)+A004396(n)`
-/

namespace A315068.P4253477378695981415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311993 n + A004396 n

end

end A315068.P4253477378695981415

noncomputable section

/-- A315068: Coordination sequence Gal.5.131.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315068.P4253477378695981415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A315068 (n : ℕ) : ℤ :=
  A315068.P4253477378695981415.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A315068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315185.P5138845310423041581

`A313683(n)+A102283(A006369(n))`
-/

namespace A315185.P5138845310423041581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313683 n + A102283 (A006369 n).toNat

end

end A315185.P5138845310423041581

noncomputable section

/-- A315185: Coordination sequence Gal.5.115.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315185.P5138845310423041581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2454 terms. -/
def A315185 (n : ℕ) : ℤ :=
  A315185.P5138845310423041581.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2454 terms. -/
def A315185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315213.P4408684047996262783

`A008574(n)+A250120(n)-A310252(n)`
-/

namespace A315213.P4408684047996262783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A250120 n - A310252 n)

end

end A315213.P4408684047996262783

noncomputable section

/-- A315213: Coordination sequence Gal.6.453.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315213.P4408684047996262783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A315213 (n : ℕ) : ℤ :=
  A315213.P4408684047996262783.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A315213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315214.P13359799671460808905

`abs(A008592(n)-A310493(n))`
-/

namespace A315214.P13359799671460808905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310493 n|

end

end A315214.P13359799671460808905

noncomputable section

/-- A315214: Coordination sequence Gal.5.142.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315214.P13359799671460808905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. -/
def A315214 (n : ℕ) : ℤ :=
  A315214.P13359799671460808905.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. -/
def A315214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315242.P2454074657046270504

`A314851(n)+A046978(n)`
-/

namespace A315242.P2454074657046270504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314851 n + A046978 n

end

end A315242.P2454074657046270504

noncomputable section

/-- A315242: Coordination sequence Gal.6.36.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315242.P2454074657046270504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A315242 (n : ℕ) : ℤ :=
  A315242.P2454074657046270504.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A315242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315261.P9856986548447563779

`A315208(n)+Δ[A011864(n)]`
-/

namespace A315261.P9856986548447563779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315208 n + (f1 (n + 1) - f1 n)

end

end A315261.P9856986548447563779

noncomputable section

/-- A315261: Coordination sequence Gal.6.204.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315261.P9856986548447563779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A315261 (n : ℕ) : ℤ :=
  A315261.P9856986548447563779.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A315261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315305.P7723534029147284216

`A315208(2*n)+A310413(n+1)-A310413(2*n+1)`
-/

namespace A315305.P7723534029147284216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315208 (2 * n) + (A310413 (n + 1) - A310413 (2 * n + 1))

end

end A315305.P7723534029147284216

noncomputable section

/-- A315305: Coordination sequence Gal.6.338.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315305.P7723534029147284216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1202 terms. -/
def A315305 (n : ℕ) : ℤ :=
  A315305.P7723534029147284216.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1202 terms. -/
def A315305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315398.P956186230154904565

`A313683(n)+A134667(A004396(n))`
-/

namespace A315398.P956186230154904565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313683 n + A134667 (A004396 n).toNat

end

end A315398.P956186230154904565

noncomputable section

/-- A315398: Coordination sequence Gal.5.100.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315398.P956186230154904565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2455 terms. -/
def A315398 (n : ℕ) : ℤ :=
  A315398.P956186230154904565.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2455 terms. -/
def A315398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315426.P10794003030174514312

`abs(A008592(n)-A313212(n))`
-/

namespace A315426.P10794003030174514312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313212 n|

end

end A315426.P10794003030174514312

noncomputable section

/-- A315426: Coordination sequence Gal.6.331.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315426.P10794003030174514312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A315426 (n : ℕ) : ℤ :=
  A315426.P10794003030174514312.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A315426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315467.P13448828790190736749

`A313684(n)+A004525(n)`
-/

namespace A315467.P13448828790190736749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313684 n + A004525 n

end

end A315467.P13448828790190736749

noncomputable section

/-- A315467: Coordination sequence Gal.6.159.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315467.P13448828790190736749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2311 terms. -/
def A315467 (n : ℕ) : ℤ :=
  A315467.P13448828790190736749.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2311 terms. -/
def A315467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315650.P2311187658339544642

`2*A313560(n)-A008574(n)`
-/

namespace A315650.P2311187658339544642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313560 n - A008574 n

end

end A315650.P2311187658339544642

noncomputable section

/-- A315650: Coordination sequence Gal.6.623.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315650.P2311187658339544642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2279 terms. -/
def A315650 (n : ℕ) : ℤ :=
  A315650.P2311187658339544642.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2279 terms. -/
def A315650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315666.P9638974132160474731

`A314089(n)+A046978(A004396(n))`
-/

namespace A315666.P9638974132160474731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314089 n + A046978 (A004396 n).toNat

end

end A315666.P9638974132160474731

noncomputable section

/-- A315666: Coordination sequence Gal.6.134.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315666.P9638974132160474731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A315666 (n : ℕ) : ℤ :=
  A315666.P9638974132160474731.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A315666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315669.P3322575996641601745

`2*A313683(n)-A311816(n)`
-/

namespace A315669.P3322575996641601745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313683 n - A311816 n

end

end A315669.P3322575996641601745

noncomputable section

/-- A315669: Coordination sequence Gal.5.113.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315669.P3322575996641601745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A315669 (n : ℕ) : ℤ :=
  A315669.P3322575996641601745.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A315669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315672.P4140044369733124398

`abs(A008592(n)-A312195(n))`
-/

namespace A315672.P4140044369733124398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312195 n|

end

end A315672.P4140044369733124398

noncomputable section

/-- A315672: Coordination sequence Gal.5.139.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315672.P4140044369733124398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A315672 (n : ℕ) : ℤ :=
  A315672.P4140044369733124398.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A315672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315808.P6560214606252712380

`A004277(A315187(2*n))-A313583(3*n)`
-/

namespace A315808.P6560214606252712380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A315187 (2 * n)).toNat - A313583 (3 * n)

end

end A315808.P6560214606252712380

noncomputable section

/-- A315808: Coordination sequence Gal.4.19.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315808.P6560214606252712380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 794 terms. -/
def A315808 (n : ℕ) : ℤ :=
  A315808.P6560214606252712380.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 794 terms. -/
def A315808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315828.P14903365613760459994

`A008486(A250120(n)-A310252(n))`
-/

namespace A315828.P14903365613760459994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A250120 n - A310252 n).toNat

end

end A315828.P14903365613760459994

noncomputable section

/-- A315828: Coordination sequence Gal.3.6.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315828.P14903365613760459994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2768 terms. -/
def A315828 (n : ℕ) : ℤ :=
  A315828.P14903365613760459994.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2768 terms. -/
def A315828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317048.P2477783459153018181

`A005100(A317045(n+1))`
-/

namespace A317048.P2477783459153018181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (A317045 (n + 1)).toNat

end

end A317048.P2477783459153018181

noncomputable section

/-- A317048: Numbers k such that both k and k + 2 are consecutive deficient numbers.

Offset 1, canonical program `A317048.P2477783459153018181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3300 terms. -/
def A317048 (n : ℕ) : ℤ :=
  A317048.P2477783459153018181.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3300 terms. -/
def A317048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317192.P6011938822451770942

`A317193(n)+a(n-1)` with `a(0)=0`
-/

namespace A317192.P6011938822451770942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A317193 n + a (n - 1)

end

end A317192.P6011938822451770942

noncomputable section

/-- A317192: A140100(n) - A140102(n).

Offset 1, canonical program `A317192.P6011938822451770942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317192 (n : ℕ) : ℤ :=
  A317192.P6011938822451770942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317294.P12259097841120540514

`eq[A000120(n), A136548(A000120(n)+1)]`
-/

namespace A317294.P12259097841120540514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A000120 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317294.P12259097841120540514

noncomputable section

/-- A317294: Numbers with a noncomposite number of 1's in their binary expansion.

Offset 1, canonical program `A317294.P12259097841120540514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4266 terms. -/
def A317294 (n : ℕ) : ℤ :=
  (A317294.P12259097841120540514.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4266 terms. -/
def A317294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317529.P1429029592004012439

`∑{d}[n+1, A076752(#)*A117212((n+1)/#)]`
-/

namespace A317529.P1429029592004012439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076752 d * A117212 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317529.P1429029592004012439

noncomputable section

/-- A317529: Expansion of Sum_{k>=1} x^(k^2)/(1 + x^(k^2)).

Offset 1, canonical program `A317529.P1429029592004012439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317529 (n : ℕ) : ℤ :=
  A317529.P1429029592004012439.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317842.P17069676008697325351

`∑{d}[n+1, A284013(#)*A284013((n+1)/#)]`
-/

namespace A317842.P17069676008697325351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A284013 d * A284013 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317842.P17069676008697325351

noncomputable section

/-- A317842: Dirichlet convolution of A284013 (= n - A002487(n)) with itself, where A002487 is Stern's Diatomic sequence.

Offset 1, canonical program `A317842.P17069676008697325351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A317842 (n : ℕ) : ℤ :=
  A317842.P17069676008697325351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A317842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318307.P12888497718899274042

`2^A318306(n+1)`
-/

namespace A318307.P12888497718899274042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A318306 (n + 1) : ℤ)

end

end A318307.P12888497718899274042

noncomputable section

/-- A318307: Multiplicative with a(p^e) = 2^A002487(e).

Offset 1, canonical program `A318307.P12888497718899274042`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318307 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318307.P12888497718899274042.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318307.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318447.P10080329051014422547

`A296074(n+1)-A292257(n+1)`
-/

namespace A318447.P10080329051014422547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296074 (n + 1) - A292257 (n + 1)

end

end A318447.P10080329051014422547

noncomputable section

/-- A318447: a(n) = Sum_{d|n, d

Offset 1, canonical program `A318447.P10080329051014422547`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292257, A296074, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318447 (n : ℕ) : ℤ :=
  A318447.P10080329051014422547.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292257, A296074, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318447.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318461.P3813051560236741660

`A000203(n+1)-A318463(n+1)`
-/

namespace A318461.P3813051560236741660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A318463 (n + 1)

end

end A318461.P3813051560236741660

noncomputable section

/-- A318461: a(n) = Sum_{d|n, d <= n/d} (d OR n/d), where OR is bitwise-or (A003986).

Offset 1, canonical program `A318461.P3813051560236741660`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318461 (n : ℕ) : ℤ :=
  A318461.P3813051560236741660.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318461.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318464.P588851004892053715

`∑{e}[n+1, A007895(#)]`
-/

namespace A318464.P588851004892053715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A007895 (Nat.factorization (f1 n) p)

end

end A318464.P588851004892053715

noncomputable section

/-- A318464: Additive with a(p^e) = A007895(e), where A007895(n) gives the number of terms in Zeckendorf representation of n.

Offset 1, canonical program `A318464.P588851004892053715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318464 (n : ℕ) : ℤ :=
  A318464.P588851004892053715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319281.P15976617881653790280

`record[and(A097262(n)+1, n+1)]`
-/

namespace A319281.P15976617881653790280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097262 n + 1) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319281.P15976617881653790280

noncomputable section

/-- A319281: Numbers of the form 16^i*(16*j + 1).

Offset 1, canonical program `A319281.P15976617881653790280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 668 terms. -/
def A319281 (n : ℕ) : ℤ :=
  A319281.P15976617881653790280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 668 terms. -/
def A319281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319613.P13901213373723697006

`A000040(n+1)*A031215(n+1)`
-/

namespace A319613.P13901213373723697006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A031215 (n + 1)

end

end A319613.P13901213373723697006

noncomputable section

/-- A319613: a(n) = prime(n) * prime(2n).

Offset 1, canonical program `A319613.P13901213373723697006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319613 (n : ℕ) : ℤ :=
  A319613.P13901213373723697006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319840.P10443051831769235735

`A318274(n)+A000523(A137688(n))`
-/

namespace A319840.P10443051831769235735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318274 n + A000523 (A137688 n).toNat

end

end A319840.P10443051831769235735

noncomputable section

/-- A319840: Table read by antidiagonals: T(n, k) is the number of elements on the perimeter of an n X k matrix.

Offset 1, canonical program `A319840.P10443051831769235735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A319840 (n : ℕ) : ℤ :=
  A319840.P10443051831769235735.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A319840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320528.P16363146703979691685

`A056329(n+1)-A304975(n+1)`
-/

namespace A320528.P16363146703979691685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056329 (n + 1) - A304975 (n + 1)

end

end A320528.P16363146703979691685

noncomputable section

/-- A320528: Number of chiral pairs of color patterns (set partitions) in a row of length n using exactly 5 colors (subsets).

Offset 1, canonical program `A320528.P16363146703979691685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A320528 (n : ℕ) : ℤ :=
  A320528.P16363146703979691685.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A320528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321548.P14602039721236023997

`2*A321813(n+1)-A013957(n+1)`
-/

namespace A321548.P14602039721236023997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321813 (n + 1) - A013957 (n + 1)

end

end A321548.P14602039721236023997

noncomputable section

/-- A321548: a(n) = Sum_{d|n} (-1)^(d-1)*d^9.

Offset 1, canonical program `A321548.P14602039721236023997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321548 (n : ℕ) : ℤ :=
  A321548.P14602039721236023997.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322201.P14556813389480413780

`2*∑{d}[n, A081875(#)]`
-/

namespace A322201.P14556813389480413780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), A081875 d)

end

end A322201.P14556813389480413780

noncomputable section

/-- A322201: Main diagonal of square table A322200.

Offset 0, canonical program `A322201.P14556813389480413780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A322201 (n : ℕ) : ℤ :=
  A322201.P14556813389480413780.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A322201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322432.P15750206088003482334

`eq[0, A121361(n)]`
-/

namespace A322432.P15750206088003482334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121361 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322432.P15750206088003482334

noncomputable section

/-- A322432: Numbers k such that the coefficient of x^k in the expansion of Product_{j>=1} (1-x^j)^14 is zero.

Offset 1, canonical program `A322432.P15750206088003482334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4350 terms. -/
def A322432 (n : ℕ) : ℤ :=
  (A322432.P15750206088003482334.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4350 terms. -/
def A322432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323403.P2905685922637902047

`A000203(n+1)+A046692(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323403.P2905685922637902047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A046692 (n + 1)

end

end A323403.P2905685922637902047

noncomputable section

/-- A323403: Sum of sigma and its Dirichlet inverse: a(n) = A000203(n) + A046692(n).

Offset 1, canonical program `A323403.P2905685922637902047`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323403 (n : ℕ) : ℤ :=
  A323403.P2905685922637902047.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323403.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323641.P1592555987281222169

`A323651(n+3)/4`
-/

namespace A323641.P1592555987281222169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323651 (n + 3) : ℚ) / 4

end

end A323641.P1592555987281222169

noncomputable section

/-- A323641: Triangle read by rows in which row n lists the first 2^n terms of A323642, n >= 1.

Offset 1, canonical program `A323641.P1592555987281222169`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323651, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323641 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A323641.P1592555987281222169.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323651, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323641.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323650.P9549203786306784903

`A323651(n)+a(n-1)` with `a(0)=0`
-/

namespace A323650.P9549203786306784903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A323651 n + a (n - 1)

end

end A323650.P9549203786306784903

noncomputable section

/-- A323650: Flower garden sequence (see Comments for precise definition).

Offset 0, canonical program `A323650.P9549203786306784903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323650 (n : ℕ) : ℤ :=
  A323650.P9549203786306784903.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324337.P2577203300185584379

`A002487(A006068(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324337.P2577203300185584379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A006068 n).toNat

end

end A324337.P2577203300185584379

noncomputable section

/-- A324337: a(n) = A002487(A006068(n)).

Offset 0, canonical program `A324337.P2577203300185584379`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A006068, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324337 (n : ℕ) : ℤ :=
  A324337.P2577203300185584379.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A006068, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324337.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324338.P10012383172274989098

`A002487(1+A006068(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324338.P10012383172274989098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (1 + A006068 n).toNat

end

end A324338.P10012383172274989098

noncomputable section

/-- A324338: a(n) = A002487(1+A006068(n)).

Offset 0, canonical program `A324338.P10012383172274989098`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A006068, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324338 (n : ℕ) : ℤ :=
  A324338.P10012383172274989098.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A006068, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324338.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324568.P1592931569969043723

`A014300(n+1)+∑[A014301(n+1)+A000302(n)]`
-/

namespace A324568.P1592931569969043723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014301 (n + 1) + A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014300 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324568.P1592931569969043723

noncomputable section

/-- A324568: a(n) = Sum_{i=0..n, j=0..n} (binomial(2*i, j) + binomial(2*j, i)).

Offset 0, canonical program `A324568.P1592931569969043723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A324568 (n : ℕ) : ℤ :=
  A324568.P1592931569969043723.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A324568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325401.P9378557464177393728

`(A055944(n)-abs(A055945(n)))/2`
-/

namespace A325401.P9378557464177393728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055944 n - |A055945 n| : ℚ) / 2

end

end A325401.P9378557464177393728

noncomputable section

/-- A325401: minflip(n) = min(n, r(n)) where r(n) is the binary reverse of n.

Offset 0, canonical program `A325401.P9378557464177393728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325401 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A325401.P9378557464177393728.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326674.P12564829722531985873

`A356352(A006068(n+1))`
-/

namespace A326674.P12564829722531985873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356352 (A006068 (n + 1)).toNat

end

end A326674.P12564829722531985873

noncomputable section

/-- A326674: GCD of the set of positions of 1's in the reversed binary expansion of n.

Offset 1, canonical program `A326674.P12564829722531985873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A326674 (n : ℕ) : ℤ :=
  A326674.P12564829722531985873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A326674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326814.P16037789110182484349

`∑{d}[n+1, A046692(#)*A058026((n+1)/#)]`
-/

namespace A326814.P16037789110182484349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A058026 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326814.P16037789110182484349

noncomputable section

/-- A326814: Dirichlet g.f.: (1/zeta(s)) * Product_{p prime} (1 - 2 * p^(-s)).

Offset 1, canonical program `A326814.P16037789110182484349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326814 (n : ℕ) : ℤ :=
  A326814.P16037789110182484349.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327210.P13644412801249598343

`A190671(n+1)+A005087(Δ[A190671(n+1)])`
-/

namespace A327210.P13644412801249598343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190671 (n + 1) + A005087 (f1 (n + 1) - f1 n).toNat

end

end A327210.P13644412801249598343

noncomputable section

/-- A327210: Positions of 1's in {A327208(n) : n > 0}.

Offset 1, canonical program `A327210.P13644412801249598343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A327210 (n : ℕ) : ℤ :=
  A327210.P13644412801249598343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A327210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327220.P13650656345071813810

`lt[n*A327219(n), n]`
-/

namespace A327220.P13650656345071813810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327219 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327220.P13650656345071813810

noncomputable section

/-- A327220: Positions of 0's in {A327219(k) : n > 0}.

Offset 1, canonical program `A327220.P13650656345071813810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A327220 (n : ℕ) : ℤ :=
  (A327220.P13650656345071813810.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A327220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327260.P5995801857761508768

`record[gcd(n+1, A050460(2*n+1))]`
-/

namespace A327260.P5995801857761508768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A050460 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327260.P5995801857761508768

noncomputable section

/-- A327260: Odd numbers not of the form 2*n*k - n - k + 1 where n and k are odd numbers > 1.

Offset 1, canonical program `A327260.P5995801857761508768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1231 terms. -/
def A327260 (n : ℕ) : ℤ :=
  (A327260.P5995801857761508768.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1231 terms. -/
def A327260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327527.P10875965028528454969

`∑{d}[n+1, A384667(#)]`
-/

namespace A327527.P10875965028528454969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A384667 d

end

end A327527.P10875965028528454969

noncomputable section

/-- A327527: Number of uniform divisors of n.

Offset 1, canonical program `A327527.P10875965028528454969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327527 (n : ℕ) : ℤ :=
  A327527.P10875965028528454969.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328190.P10977472533607710601

`A328984(n+1)+and(A298468(n), A328979(n+1))`
-/

namespace A328190.P10977472533607710601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328984 (n + 1) + Int.land (A298468 n) (A328979 (n + 1))

end

end A328190.P10977472533607710601

noncomputable section

/-- A328190: Lexicographically earliest infinite sequence of distinct positive integers such that the sequence and its first differences have no values in common.

Offset 1, canonical program `A328190.P10977472533607710601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328190 (n : ℕ) : ℤ :=
  A328190.P10977472533607710601.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328254.P15532936558878328748

`∑{d}[n+1, A046692(#)*A334657((n+1)/#)]`
-/

namespace A328254.P15532936558878328748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A334657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328254.P15532936558878328748

noncomputable section

/-- A328254: Dirichlet g.f.: 1 / (zeta(s) * zeta(s-1) * zeta(s-2)).

Offset 1, canonical program `A328254.P15532936558878328748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328254 (n : ℕ) : ℤ :=
  A328254.P15532936558878328748.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330136.P7111195287136975651

`∩[A047229(n+1), A081062(n+1)]`
-/

namespace A330136.P7111195287136975651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330136.P7111195287136975651

noncomputable section

/-- A330136: Numbers m such that 1 < gcd(m, 6) < m and m does not divide 6^e for e >= 0.

Offset 1, canonical program `A330136.P7111195287136975651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7589 terms. -/
def A330136 (n : ℕ) : ℤ :=
  (A330136.P7111195287136975651.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7589 terms. -/
def A330136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330319.P9551825162349702017

`∑[A055034(2*(n+1))*A055034(n+2)]`
-/

namespace A330319.P9551825162349702017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (2 * (n + 1)) * A055034 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330319.P9551825162349702017

noncomputable section

/-- A330319: a(n) = Sum_{i=1..n} phi(i)*phi(i+1), where phi(n) = A000010(n) is Euler's totient function.

Offset 1, canonical program `A330319.P9551825162349702017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A330319 (n : ℕ) : ℤ :=
  A330319.P9551825162349702017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A330319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331109.P2249905351014711055

`2^∑{e}[n+1, A112310(#)]`
-/

namespace A331109.P2249905351014711055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), A112310 (Nat.factorization (f1 n) p) : ℤ)

end

end A331109.P2249905351014711055

noncomputable section

/-- A331109: The number of dual-Zeckendorf-infinitary divisors of n = Product_{i} p(i)^r(i): divisors d = Product_{i} p(i)^s(i), such that the dual Zeckendorf expansion (A104326) of each s(i) contains only terms that are in the dual Zeckendorf expansion of r(i).

Offset 1, canonical program `A331109.P2249905351014711055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331109 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A331109.P2249905351014711055.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331109.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A331999.P3156831626282684287

`(n+1)*A067563(n+1)`
-/

namespace A331999.P3156831626282684287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A067563 (n + 1)

end

end A331999.P3156831626282684287

noncomputable section

/-- A331999: a(n) is the product of n, the n-th prime and the n-th composite number.

Offset 1, canonical program `A331999.P3156831626282684287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331999 (n : ℕ) : ℤ :=
  A331999.P3156831626282684287.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332269.P10183402854127300414

`∪[A030513(n+1), A030514(n+1)]`
-/

namespace A332269.P10183402854127300414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332269.P10183402854127300414

noncomputable section

/-- A332269: Numbers m with only one divisor d such that sqrt(m) < d < m.

Offset 1, canonical program `A332269.P10183402854127300414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332269 (n : ℕ) : ℤ :=
  (A332269.P10183402854127300414.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332658.P8837612117912986795

`∑{d}[n+1, A007427(#)*A056789((n+1)/#)]`
-/

namespace A332658.P8837612117912986795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A056789 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332658.P8837612117912986795

noncomputable section

/-- A332658: a(n) = Sum_{k=1..n} mu(gcd(n, k)) * lcm(n, k) / gcd(n, k).

Offset 1, canonical program `A332658.P8837612117912986795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332658 (n : ℕ) : ℤ :=
  A332658.P8837612117912986795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332754.P10825314309462176498

`A191790(n)+A000035(n)`
-/

namespace A332754.P10825314309462176498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191790 n + A000035 n

end

end A332754.P10825314309462176498

noncomputable section

/-- A332754: a(n) = Sum_{k=1..n-1} ((-1)^(k+n+1)*binomial(k,floor(k/2))).

Offset 1, canonical program `A332754.P10825314309462176498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A332754 (n : ℕ) : ℤ :=
  A332754.P10825314309462176498.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A332754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333461.P9303211101842763133

`A058005(n+1)/2`
-/

namespace A333461.P9303211101842763133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058005 (n + 1) : ℚ) / 2

end

end A333461.P9303211101842763133

noncomputable section

/-- A333461: a(n) = gcd(2*n, binomial(2*n,n))/2.

Offset 1, canonical program `A333461.P9303211101842763133`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333461 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A333461.P9303211101842763133.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333461.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333618.P6178487430166416808

`∑{d}[n+1, A112310(#)]`
-/

namespace A333618.P6178487430166416808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112310 d

end

end A333618.P6178487430166416808

noncomputable section

/-- A333618: a(n) is the total number of terms (1-digits) in the dual Zeckendorf representation of all divisors of n.

Offset 1, canonical program `A333618.P6178487430166416808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333618 (n : ℕ) : ℤ :=
  A333618.P6178487430166416808.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333748.P1056566153908479740

`ceil(∏{e}[n+1, #+1]/2)-A063962(n+1)`
-/

namespace A333748.P1056566153908479740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌉ - A063962 (n + 1)

end

end A333748.P1056566153908479740

noncomputable section

/-- A333748: Number of nonprime divisors of n that are <= sqrt(n).

Offset 1, canonical program `A333748.P1056566153908479740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333748 (n : ℕ) : ℤ :=
  A333748.P1056566153908479740.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333777.P17376492726482821964

`A053644(n)+a(A030109(n))` with `a(0)=0`
-/

namespace A333777.P17376492726482821964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A053644 n + a (A030109 n).toNat

end

end A333777.P17376492726482821964

noncomputable section

/-- A333777: Inverse permutation to A333776.

Offset 0, canonical program `A333777.P17376492726482821964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A333777 (n : ℕ) : ℤ :=
  A333777.P17376492726482821964.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A333777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333806.P3114427543706526191

`A063962(A048671(n+1))`
-/

namespace A333806.P3114427543706526191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (A048671 (n + 1)).toNat

end

end A333806.P3114427543706526191

noncomputable section

/-- A333806: Number of distinct prime divisors of n that are < sqrt(n).

Offset 1, canonical program `A333806.P3114427543706526191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333806 (n : ℕ) : ℤ :=
  A333806.P3114427543706526191.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333814.P13105421635871502220

`∩[A062753(n+1), A019557(n)]`
-/

namespace A333814.P13105421635871502220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019557 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333814.P13105421635871502220

noncomputable section

/-- A333814: Multiples of 12 whose sum of digits is 12.

Offset 1, canonical program `A333814.P13105421635871502220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 852 terms. -/
def A333814 (n : ℕ) : ℤ :=
  (A333814.P13105421635871502220.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 852 terms. -/
def A333814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334818.P9742911378252436579

`lt[4, A086933(n+1)]+1`
-/

namespace A334818.P9742911378252436579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086933 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A334818.P9742911378252436579

noncomputable section

/-- A334818: Integers whose square root is the longest side of a non-right triangle whose side lengths are also square roots of integers, and with integer area.

Offset 1, canonical program `A334818.P9742911378252436579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A334818 (n : ℕ) : ℤ :=
  (A334818.P9742911378252436579.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A334818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334985.P2617165009463626642

`A336723(n+1)/A337323(n+1)`
-/

namespace A334985.P2617165009463626642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336723 (n + 1) : ℚ) / (A337323 (n + 1) : ℚ)

end

end A334985.P2617165009463626642

noncomputable section

/-- A334985: a(n) = lcm(n, tau(n), sigma(n), pod(n)) / gcd(n, tau(n), sigma(n), pod(n)) where tau(k) is the number of divisors of k (A000005), sigma(k) is the sum of divisors of k (A000203) and pod(k) is the product of divisors of k (A007955).

Offset 1, canonical program `A334985.P2617165009463626642`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336723, A337323, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334985 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A334985.P2617165009463626642.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336723, A337323, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334985.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335657.P17958321216927884544

`A036348(n+1)/2`
-/

namespace A335657.P17958321216927884544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036348 (n + 1) : ℚ) / 2

end

end A335657.P17958321216927884544

noncomputable section

/-- A335657: Numbers whose prime factors (including repetitions) sum to an odd number.

Offset 1, canonical program `A335657.P17958321216927884544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335657 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A335657.P17958321216927884544.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336375.P132868949489915150

`comp[A336374(n+1)-1]+1`
-/

namespace A336375.P132868949489915150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336374 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A336375.P132868949489915150

noncomputable section

/-- A336375: Numbers k such that gcd(k, prime(k) + prime(k+2)) > 1.

Offset 1, canonical program `A336375.P132868949489915150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336375 (n : ℕ) : ℤ :=
  (A336375.P132868949489915150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336376.P9608865408552650573

`A000040(A336374(n+1))`
-/

namespace A336376.P9608865408552650573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A336374 (n + 1)).toNat

end

end A336376.P9608865408552650573

noncomputable section

/-- A336376: Primes p(n) such that gcd(n, prime(n)+prime(n+2)) = 1.

Offset 1, canonical program `A336376.P9608865408552650573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3636 terms. -/
def A336376 (n : ℕ) : ℤ :=
  A336376.P9608865408552650573.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3636 terms. -/
def A336376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336381.P12343124691346730794

`A000040(A336379(n+1))`
-/

namespace A336381.P12343124691346730794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A336379 (n + 1)).toNat

end

end A336381.P12343124691346730794

noncomputable section

/-- A336381: Primes p(n) such that gcd(n, prime(n-1)+prime(n+1)) > 1.

Offset 1, canonical program `A336381.P12343124691346730794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6322 terms. -/
def A336381 (n : ℕ) : ℤ :=
  A336381.P12343124691346730794.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6322 terms. -/
def A336381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336410.P10465025755564632149

`A049579(n+1)-3`
-/

namespace A336410.P10465025755564632149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049579 (n + 1) - 3

end

end A336410.P10465025755564632149

noncomputable section

/-- A336410: Complement of A336411.

Offset 1, canonical program `A336410.P10465025755564632149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336410 (n : ℕ) : ℤ :=
  A336410.P10465025755564632149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336465.P4910938732238570745

`∑{d}[A261969(A003557(n+1)), (n+1)/#]`
-/

namespace A336465.P4910938732238570745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261969 (A003557 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (n + 1 : ℚ) / (d : ℚ)

end

end A336465.P4910938732238570745

noncomputable section

/-- A336465: Recursive variant of A057723: If n is cubefree, then a(n) = A057723(n), otherwise a(n) = A007947(n) * a(n/A007947(n)).

Offset 1, canonical program `A336465.P4910938732238570745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336465 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336465.P4910938732238570745.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336963.P15058899882861974710

`A057889(A336962(A057889(n)))`
-/

namespace A336963.P15058899882861974710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A336962 (A057889 n).toNat).toNat

end

end A336963.P15058899882861974710

noncomputable section

/-- A336963: Left-rotate run-lengths of consecutive equal digits in binary representation of n.

Offset 0, canonical program `A336963.P15058899882861974710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A336963 (n : ℕ) : ℤ :=
  A336963.P15058899882861974710.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A336963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337277.P696928167752070774

`A020951(A062289(n+1))`
-/

namespace A337277.P696928167752070774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (A062289 (n + 1)).toNat

end

end A337277.P696928167752070774

noncomputable section

/-- A337277: Stern's triangle read by rows.

Offset 0, canonical program `A337277.P696928167752070774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9987 terms. -/
def A337277 (n : ℕ) : ℤ :=
  A337277.P696928167752070774.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9987 terms. -/
def A337277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337480.P8362700632099792972

`eq[1, A075743(2*n+1)+A075743(4*n+1)]`
-/

namespace A337480.P8362700632099792972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (2 * n + 1) + A075743 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337480.P8362700632099792972

noncomputable section

/-- A337480: Numbers k such that exactly one of 6*k + 5 and 12*k + 5 is prime.

Offset 1, canonical program `A337480.P8362700632099792972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3196 terms. -/
def A337480 (n : ℕ) : ℤ :=
  (A337480.P8362700632099792972.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3196 terms. -/
def A337480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338524.P14576734370194940708

`A006068(A000040(n+1))`
-/

namespace A338524.P14576734370194940708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A000040 (n + 1)).toNat

end

end A338524.P14576734370194940708

noncomputable section

/-- A338524: prime(n) Gray code decoding.

Offset 1, canonical program `A338524.P14576734370194940708`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006068, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A338524 (n : ℕ) : ℤ :=
  A338524.P14576734370194940708.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006068, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A338524.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338939.P9017893110723882401

`ceil(A092147(n+1)/2)`
-/

namespace A338939.P9017893110723882401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092147 (n + 1) : ℚ) / 2⌉

end

end A338939.P9017893110723882401

noncomputable section

/-- A338939: a(n) is the number of partitions n = a + b such that a*b is a perfect square.

Offset 1, canonical program `A338939.P9017893110723882401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338939 (n : ℕ) : ℤ :=
  A338939.P9017893110723882401.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338976.P3724280392145629394

`p?[A089227(n+1)]`
-/

namespace A338976.P3724280392145629394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338976.P3724280392145629394

noncomputable section

/-- A338976: Primes p such that p*A007953(p)+1 is prime.

Offset 1, canonical program `A338976.P3724280392145629394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 608 terms. -/
def A338976 (n : ℕ) : ℤ :=
  A338976.P3724280392145629394.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 608 terms. -/
def A338976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339217.P11568586104941741007

`A099055(n)-Δ[n²]`
-/

namespace A339217.P11568586104941741007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099055 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A339217.P11568586104941741007

noncomputable section

/-- A339217: a(n) = Sum_{k=1..n} floor((2*n-k)/k).

Offset 0, canonical program `A339217.P11568586104941741007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339217 (n : ℕ) : ℤ :=
  A339217.P11568586104941741007.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339638.P3283840874986225576

`∑[A076078(n+1)]`
-/

namespace A339638.P3283840874986225576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339638.P3283840874986225576

noncomputable section

/-- A339638: Number of nonempty sets of distinct positive integers that have a least common multiple <= n.

Offset 1, canonical program `A339638.P3283840874986225576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339638 (n : ℕ) : ℤ :=
  A339638.P3283840874986225576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339667.P11239473250096639083

`A100587(n+1)-A076078(n+1)`
-/

namespace A339667.P11239473250096639083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100587 (n + 1) - A076078 (n + 1)

end

end A339667.P11239473250096639083

noncomputable section

/-- A339667: Number of nonempty subsets of divisors of n having a common factor > 1.

Offset 1, canonical program `A339667.P11239473250096639083`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076078, A100587, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A339667 (n : ℕ) : ℤ :=
  A339667.P11239473250096639083.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076078, A100587, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A339667.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340568.P8040469025914050039

`A191522(n)+A191309(n)`
-/

namespace A340568.P8040469025914050039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191522 n + A191309 n

end

end A340568.P8040469025914050039

noncomputable section

/-- A340568: Total number of consecutive triples matching the pattern 132 in all faro permutations of length n.

Offset 0, canonical program `A340568.P8040469025914050039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A340568 (n : ℕ) : ℤ :=
  A340568.P8040469025914050039.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A340568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340674.P16491084588076078124

`∩[A062770(n+1), A138302(n+1)]²`
-/

namespace A340674.P16491084588076078124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A340674.P16491084588076078124

noncomputable section

/-- A340674: Numbers of the form s^(2^e), where s is a squarefree number, and e >= 1.

Offset 1, canonical program `A340674.P16491084588076078124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7036 terms. -/
def A340674 (n : ℕ) : ℤ :=
  (A340674.P16491084588076078124.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7036 terms. -/
def A340674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341099.P7728834317984338606

`lt[2, A072627(n+1)]+1`
-/

namespace A341099.P7728834317984338606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A341099.P7728834317984338606

noncomputable section

/-- A341099: Numbers divisible by at least three terms of A008864.

Offset 1, canonical program `A341099.P7728834317984338606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2568 terms. -/
def A341099 (n : ℕ) : ℤ :=
  (A341099.P7728834317984338606.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2568 terms. -/
def A341099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341833.P7490125277756735496

`∑{d}[n+1, A341834(#)]`
-/

namespace A341833.P7490125277756735496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341834 d

end

end A341833.P7490125277756735496

noncomputable section

/-- A341833: Dirichlet g.f.: 1 / zeta(s)^7.

Offset 1, canonical program `A341833.P7490125277756735496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341833 (n : ℕ) : ℤ :=
  A341833.P7490125277756735496.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341952.P5326500736965225411

`A102283(A028334(n+2))`
-/

namespace A341952.P5326500736965225411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A028334 (n + 2)).toNat

end

end A341952.P5326500736965225411

noncomputable section

/-- A341952: Let x = (prime(n+1) - prime(n))/2 modulo 3 for n >= 2, then a(n) = -1 if x = 2, otherwise a(n) = x.

Offset 2, canonical program `A341952.P5326500736965225411`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028334, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341952 (n : ℕ) : ℤ :=
  A341952.P5326500736965225411.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028334, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341952.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342567.P15885445761304597193

`A056221(n+2)/2`
-/

namespace A342567.P15885445761304597193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056221 (n + 2) : ℚ) / 2

end

end A342567.P15885445761304597193

noncomputable section

/-- A342567: a(n) = (prime(n)^2 - prime(n-1)*prime(n+1))/2, n >= 3.

Offset 3, canonical program `A342567.P15885445761304597193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A342567 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342567.P15885445761304597193.a (n - 3))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A342567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343794.P987061178062544182

`A055034(A000040(n+28))`
-/

namespace A343794.P987061178062544182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A000040 (n + 28)).toNat

end

end A343794.P987061178062544182

noncomputable section

/-- A343794: Numbers k > 0 such that 630*k + 315 is not an abundant number (A005101).

Offset 1, canonical program `A343794.P987061178062544182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1202 terms. -/
def A343794 (n : ℕ) : ℤ :=
  A343794.P987061178062544182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1202 terms. -/
def A343794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344221.P10470935627830531370

`∑{d}[n+1, A007432(#)*A397549((n+1)/#)]`
-/

namespace A344221.P10470935627830531370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A397549 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344221.P10470935627830531370

noncomputable section

/-- A344221: a(n) = Sum_{k=1..n} tau(gcd(k,n)^3), where tau(n) is the number of divisors of n.

Offset 1, canonical program `A344221.P10470935627830531370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344221 (n : ℕ) : ℤ :=
  A344221.P10470935627830531370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344222.P16415953736657626465

`∑{d}[n+1, A007432(#)*A062368((n+1)/#)]`
-/

namespace A344222.P16415953736657626465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A062368 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344222.P16415953736657626465

noncomputable section

/-- A344222: a(n) = Sum_{k=1..n} tau(gcd(k,n)^4), where tau(n) is the number of divisors of n.

Offset 1, canonical program `A344222.P16415953736657626465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344222 (n : ℕ) : ℤ :=
  A344222.P16415953736657626465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344948.P15637096215189460641

`record[A025473(A000040(n+1))]`
-/

namespace A344948.P15637096215189460641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344948.P15637096215189460641

noncomputable section

/-- A344948: Primes whose position among the powers of primes (A000961) is also prime.

Offset 1, canonical program `A344948.P15637096215189460641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1214 terms. -/
def A344948 (n : ℕ) : ℤ :=
  A344948.P15637096215189460641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1214 terms. -/
def A344948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345069.P2385897774581200277

`A155750(n+1)+2*A031215(n+1)`
-/

namespace A345069.P2385897774581200277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155750 (n + 1) + 2 * A031215 (n + 1)

end

end A345069.P2385897774581200277

noncomputable section

/-- A345069: Sums of two consecutive even-indexed primes.

Offset 1, canonical program `A345069.P2385897774581200277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345069 (n : ℕ) : ℤ :=
  A345069.P2385897774581200277.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345201.P2335743236257920929

`A022290(A057889(A003714(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345201.P2335743236257920929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A057889 (A003714 n).toNat).toNat

end

end A345201.P2335743236257920929

noncomputable section

/-- A345201: Bit-reverse the odd part of the Zeckendorf representation of n: a(n) = A022290(A057889(A003714(n))).

Offset 0, canonical program `A345201.P2335743236257920929`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A022290, A057889, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345201 (n : ℕ) : ℤ :=
  A345201.P2335743236257920929.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A022290, A057889, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345201.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345281.P10556684959762605774

`∑{p}[n+1, A151800((n+1)/#)]`
-/

namespace A345281.P10556684959762605774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A151800 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A345281.P10556684959762605774

noncomputable section

/-- A345281: a(n) = Sum_{p|n} nextprime(n/p), where nextprime(m) is the smallest prime > m.

Offset 1, canonical program `A345281.P10556684959762605774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345281 (n : ℕ) : ℤ :=
  A345281.P10556684959762605774.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345282.P3924199475300037871

`∑{d}[n+1, A061397(#)*A151800((n+1)/#)]`
-/

namespace A345282.P3924199475300037871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061397 d * A151800 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345282.P3924199475300037871

noncomputable section

/-- A345282: a(n) = Sum_{p|n, p prime} p * nextprime(n/p).

Offset 1, canonical program `A345282.P3924199475300037871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345282 (n : ℕ) : ℤ :=
  A345282.P3924199475300037871.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345447.P7254054826736061183

`∪[A047845(n+2)+2, A047845(n+2)]`
-/

namespace A345447.P7254054826736061183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 2) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345447.P7254054826736061183

noncomputable section

/-- A345447: Numbers of the form i+j+2*i*j and 2+i+j+2*i*j for i,j >= 1.

Offset 1, canonical program `A345447.P7254054826736061183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345447 (n : ℕ) : ℤ :=
  (A345447.P7254054826736061183.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345927.P11668894418822586614

`(-1)^(A070939(n)-1)*A065359(n)`
-/

namespace A345927.P11668894418822586614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A070939 n - 1 : ℤ) * (A065359 n : ℚ)

end

end A345927.P11668894418822586614

noncomputable section

/-- A345927: Alternating sum of the binary expansion of n (row n of A030190). Replace 2^k with (-1)^(A070939(n)-k) in the binary expansion of n (compare to the definition of A065359).

Offset 0, canonical program `A345927.P11668894418822586614`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065359, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345927 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345927.P11668894418822586614.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065359, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345927.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346180.P6210635577582370619

`A000040(n+1)+A061397(n+1)`
-/

namespace A346180.P6210635577582370619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A061397 (n + 1)

end

end A346180.P6210635577582370619

noncomputable section

/-- A346180: a(n) = prime(n) + n if n is prime, a(n) = prime(n) otherwise.

Offset 1, canonical program `A346180.P6210635577582370619`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A061397, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346180 (n : ℕ) : ℤ :=
  A346180.P6210635577582370619.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A061397, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346180.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346612.P17658702918821457984

`∑{d}[n+1, A046692(#)*A057670((n+1)/#)]`
-/

namespace A346612.P17658702918821457984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A057670 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346612.P17658702918821457984

noncomputable section

/-- A346612: Moebius transform of A019554.

Offset 1, canonical program `A346612.P17658702918821457984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346612 (n : ℕ) : ℤ :=
  A346612.P17658702918821457984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347090.P2915293843078708431

`∑{d}[n+1, A046692(#)*A271102((n+1)/#)]`
-/

namespace A347090.P2915293843078708431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347090.P2915293843078708431

noncomputable section

/-- A347090: Dirichlet inverse of A332844.

Offset 1, canonical program `A347090.P2915293843078708431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347090 (n : ℕ) : ℤ :=
  A347090.P2915293843078708431.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347127.P10886603177571656754

`A327251(n+1)/A003557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347127.P10886603177571656754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327251 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A347127.P10886603177571656754

noncomputable section

/-- A347127: a(n) = A327251(n) / A003557(n).

Offset 1, canonical program `A347127.P10886603177571656754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A327251, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347127 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A347127.P10886603177571656754.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A327251, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347127.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347135.P3376495977078427615

`∑{d}[n+1, A010051(#)*A327251((n+1)/#)]`
-/

namespace A347135.P3376495977078427615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A327251 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347135.P3376495977078427615

noncomputable section

/-- A347135: a(n) = Sum_{d|n} A001615(n/d) * A069359(d).

Offset 1, canonical program `A347135.P3376495977078427615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347135 (n : ℕ) : ℤ :=
  A347135.P3376495977078427615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347587.P13944628912885106107

`A008628(n)+A014591(n)-A001401(n)`
-/

namespace A347587.P13944628912885106107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008628 n + (A014591 n - A001401 n)

end

end A347587.P13944628912885106107

noncomputable section

/-- A347587: Number of partitions of n into at most 5 distinct parts.

Offset 0, canonical program `A347587.P13944628912885106107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347587 (n : ℕ) : ℤ :=
  A347587.P13944628912885106107.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347702.P3905593689057913648

`p?[A209871(n+1)]`
-/

namespace A347702.P3905593689057913648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347702.P3905593689057913648

noncomputable section

/-- A347702: Prime numbers that give a remainder of 1 when divided by the sum of their digits.

Offset 1, canonical program `A347702.P3905593689057913648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2152 terms. -/
def A347702 (n : ℕ) : ℤ :=
  A347702.P3905593689057913648.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2152 terms. -/
def A347702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347717.P14124952787573780266

`A038502(n+1)+Δ[A054861(n)]`
-/

namespace A347717.P14124952787573780266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1) + (f1 (n + 1) - f1 n)

end

end A347717.P14124952787573780266

noncomputable section

/-- A347717: Number of states of the minimal deterministic finite automaton that accepts ternary strings that represent numbers that are divisible by n.

Offset 1, canonical program `A347717.P14124952787573780266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347717 (n : ℕ) : ℤ :=
  A347717.P14124952787573780266.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348264.P11437599824618656356

`and(A000034(A323024(n+1)), A000292(n))`
-/

namespace A348264.P11437599824618656356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000034 (A323024 (n + 1)).toNat) (A000292 n)

end

end A348264.P11437599824618656356

noncomputable section

/-- A348264: a(n) is the number of iterations that n requires to reach a fixed point under the map x -> A348173(x).

Offset 1, canonical program `A348264.P11437599824618656356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A348264 (n : ℕ) : ℤ :=
  A348264.P11437599824618656356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A348264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349136.P13757251460804811731

`A055034(n+1)*A059841(n)`
-/

namespace A349136.P13757251460804811731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (n + 1) * A059841 n

end

end A349136.P13757251460804811731

noncomputable section

/-- A349136: Möbius transform of Kimberling's paraphrase, A003602.

Offset 1, canonical program `A349136.P13757251460804811731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349136 (n : ℕ) : ℤ :=
  A349136.P13757251460804811731.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349374.P2436747337903792946

`∑{d}[n+1, A332618(#)*A349431((n+1)/#)]`
-/

namespace A349374.P2436747337903792946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A332618 d * A349431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349374.P2436747337903792946

noncomputable section

/-- A349374: Dirichlet convolution of Kimberling's paraphrase, A003602, with squarefree part of n (A007913).

Offset 1, canonical program `A349374.P2436747337903792946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349374 (n : ℕ) : ℤ :=
  A349374.P2436747337903792946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349629.P6415063026675190056

`A046692(n+1)/gcd(n+1, A046692(n+1))`
-/

namespace A349629.P6415063026675190056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046692 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A046692 (n + 1)) : ℚ)

end

end A349629.P6415063026675190056

noncomputable section

/-- A349629: Numerators of the Dirichlet inverse of the abundancy index, sigma(n)/n.

Offset 1, canonical program `A349629.P6415063026675190056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349629 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349629.P6415063026675190056.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349630.P15265834467087415735

`(n+1)/gcd(n+1, A046692(n+1))`
-/

namespace A349630.P15265834467087415735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A046692 (n + 1)) : ℚ)

end

end A349630.P15265834467087415735

noncomputable section

/-- A349630: Denominators of the Dirichlet inverse of the abundancy index, sigma(n)/n.

Offset 1, canonical program `A349630.P15265834467087415735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349630 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349630.P15265834467087415735.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351140.P15868147787886378278

`A151800(a(n-1)+1+n)` with `a(0)=1`
-/

namespace A351140.P15868147787886378278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151800 (a (n - 1) + 1 + (n : ℤ)).toNat

end

end A351140.P15868147787886378278

noncomputable section

/-- A351140: a(1) = 1, a(n) = smallest prime > a(n-1) + n.

Offset 1, canonical program `A351140.P15868147787886378278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 438 terms. -/
def A351140 (n : ℕ) : ℤ :=
  A351140.P15868147787886378278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 438 terms. -/
def A351140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351362.P11704435323759019704

`A351355(n+1)+A069283(n+1)`
-/

namespace A351362.P11704435323759019704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351355 (n + 1) + A069283 (n + 1)

end

end A351362.P11704435323759019704

noncomputable section

/-- A351362: Number of ways the numbers from 1..n do not divide the numbers from n..2n-1.

Offset 1, canonical program `A351362.P11704435323759019704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351362 (n : ℕ) : ℤ :=
  A351362.P11704435323759019704.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351564.P3049616022136322792

`floor(1/A351944(n+1))`
-/

namespace A351564.P3049616022136322792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A351944 (n + 1) : ℚ)⌋

end

end A351564.P3049616022136322792

noncomputable section

/-- A351564: a(n) = 1 if all the exponents in the prime factorization of n are distinct, and 0 otherwise.

Offset 1, canonical program `A351564.P3049616022136322792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351564 (n : ℕ) : ℤ :=
  A351564.P3049616022136322792.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351654.P14786926509315681649

`∑{d}[n+1, #*A046692(#)]`
-/

namespace A351654.P14786926509315681649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A046692 d

end

end A351654.P14786926509315681649

noncomputable section

/-- A351654: Dirichlet g.f.: zeta(s) / (zeta(s-1) * zeta(s-2)).

Offset 1, canonical program `A351654.P14786926509315681649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351654 (n : ℕ) : ℤ :=
  A351654.P14786926509315681649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352034.P15417253199617285294

`A321810(n+1)%(lcm(6, (n+1)^3)/6)²`
-/

namespace A352034.P15417253199617285294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321810 (n + 1)) (SequenceMachineLib.roundAway (((Nat.lcm 6 ((n + 1) ^ 3) : ℚ) / 6) ^ 2))

end

end A352034.P15417253199617285294

noncomputable section

/-- A352034: Sum of the 6th powers of the odd proper divisors of n.

Offset 1, canonical program `A352034.P15417253199617285294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352034 (n : ℕ) : ℤ :=
  A352034.P15417253199617285294.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352167.P833396178534285227

`A001414(n+1)-A061397(n+1)`
-/

namespace A352167.P833396178534285227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) - A061397 (n + 1)

end

end A352167.P833396178534285227

noncomputable section

/-- A352167: a(n) is the sum of the prime factors of n (with multiplicity) that are less than n.

Offset 1, canonical program `A352167.P833396178534285227`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A061397, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352167 (n : ℕ) : ℤ :=
  A352167.P833396178534285227.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A061397, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352167.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352777.P13491865834472496179

`∑[∑{p}[n+1, C(#, n)]]*A073837(n+1)`
-/

namespace A352777.P13491865834472496179
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A073837 (n + 1)

end

end A352777.P13491865834472496179

noncomputable section

/-- A352777: a(n) = Sum_{p <= n <= q < 2n, p,q prime} (p * q).

Offset 1, canonical program `A352777.P13491865834472496179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1595 terms. -/
def A352777 (n : ℕ) : ℤ :=
  A352777.P13491865834472496179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1595 terms. -/
def A352777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353464.P7528674575556997429

`A353463(A065164(n+1))`
-/

namespace A353464.P7528674575556997429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353463 (A065164 (n + 1)).toNat

end

end A353464.P7528674575556997429

noncomputable section

/-- A353464: Characteristic function of greater twin primes: a(n) = 1 if both n and n-2 are primes, otherwise 0.

Offset 1, canonical program `A353464.P7528674575556997429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353464 (n : ℕ) : ℤ :=
  A353464.P7528674575556997429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353482.P1861555732296100642

`and(∑[∑[n+1]], A340370(n+1))`
-/

namespace A353482.P1861555732296100642
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A340370 (n + 1))

end

end A353482.P1861555732296100642

noncomputable section

/-- A353482: a(n) = 1 if n is a squarefree semiprime of the form 4k+1, otherwise 0.

Offset 1, canonical program `A353482.P1861555732296100642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353482 (n : ℕ) : ℤ :=
  A353482.P1861555732296100642.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355643.P7908360887346496092

`lt[0, A282849(n+1)]+1`
-/

namespace A355643.P7908360887346496092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282849 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A355643.P7908360887346496092

noncomputable section

/-- A355643: Numbers k having a divisor d such that d+k/d is prime.

Offset 1, canonical program `A355643.P7908360887346496092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2809 terms. -/
def A355643 (n : ℕ) : ℤ :=
  (A355643.P7908360887346496092.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2809 terms. -/
def A355643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357695.P9882906667997209006

`eq[A050361(n+1), A082551(n+1)]+1`
-/

namespace A357695.P9882906667997209006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A357695.P9882906667997209006

noncomputable section

/-- A357695: Cubefree abundant numbers.

Offset 1, canonical program `A357695.P9882906667997209006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7230 terms. -/
def A357695 (n : ℕ) : ℤ :=
  (A357695.P9882906667997209006.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7230 terms. -/
def A357695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358350.P1332157614416825726

`eq[1, char[A161351(n+1)]]`
-/

namespace A358350.P1332157614416825726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161351 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358350.P1332157614416825726

noncomputable section

/-- A358350: Numbers that can be written as (m + sum of digits of m + product of digits of m) for some m.

Offset 1, canonical program `A358350.P1332157614416825726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6261 terms. -/
def A358350 (n : ℕ) : ℤ :=
  (A358350.P1332157614416825726.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6261 terms. -/
def A358350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358978.P4910650545126068101

`eq[1, gcd(n, A007895(n))]`
-/

namespace A358978.P4910650545126068101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A007895 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358978.P4910650545126068101

noncomputable section

/-- A358978: Numbers that are coprime to the number of terms in their Zeckendorf representation (A007895).

Offset 1, canonical program `A358978.P4910650545126068101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6028 terms. -/
def A358978 (n : ℕ) : ℤ :=
  (A358978.P4910650545126068101.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6028 terms. -/
def A358978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359227.P14181940212976785679

`A001826(4*n+1)`
-/

namespace A359227.P14181940212976785679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (4 * n + 1)

end

end A359227.P14181940212976785679

noncomputable section

/-- A359227: Number of divisors of 4*n-3 of form 4*k+1.

Offset 1, canonical program `A359227.P14181940212976785679`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001826, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359227 (n : ℕ) : ℤ :=
  A359227.P14181940212976785679.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001826, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359227.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359249.P8196808652904358102

`∑{d}[n+1, A010051(#)*A295405((n+1)/#)]`
-/

namespace A359249.P8196808652904358102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A295405 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359249.P8196808652904358102

noncomputable section

/-- A359249: a(n) is the number of primes p such that (n/p)^2 + 1 is prime.

Offset 1, canonical program `A359249.P8196808652904358102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A359249 (n : ℕ) : ℤ :=
  A359249.P8196808652904358102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A359249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359478.P9305944363533904150

`∑[A359484(n+1)]`
-/

namespace A359478.P9305944363533904150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359478.P9305944363533904150

noncomputable section

/-- A359478: a(1) = 1; a(n) = -Sum_{k=2..n} k * a(floor(n/k)).

Offset 1, canonical program `A359478.P9305944363533904150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359478 (n : ℕ) : ℤ :=
  A359478.P9305944363533904150.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359580.P9567122532987640095

`filter[A096033(n+1), A212793(#)]`
-/

namespace A359580.P9567122532987640095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A359580.P9567122532987640095

noncomputable section

/-- A359580: Numbers that are either (an odd squarefree number squared) or twice such a number.

Offset 1, canonical program `A359580.P9567122532987640095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A359580 (n : ℕ) : ℤ :=
  A359580.P9567122532987640095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A359580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359792.P6485658559254933744

`A057077(A092089(n+1))`
-/

namespace A359792.P6485658559254933744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A092089 (n + 1)).toNat

end

end A359792.P6485658559254933744

noncomputable section

/-- A359792: a(n) = (-1)^A003415(n), where A003415 is the arithmetic derivative of n.

Offset 1, canonical program `A359792.P6485658559254933744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359792 (n : ℕ) : ℤ :=
  A359792.P6485658559254933744.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359821.P15316925035218251936

`∪[A046337(n+1), A016825(n)]`
-/

namespace A359821.P15316925035218251936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359821.P15316925035218251936

noncomputable section

/-- A359821: Numbers k whose arithmetic derivative, A003415(k), has the opposite parity to k.

Offset 1, canonical program `A359821.P15316925035218251936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359821 (n : ℕ) : ℤ :=
  (A359821.P15316925035218251936.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359954.P251505247951898520

`∑{d}[n+1, A007432(#)*A333645((n+1)/#)]`
-/

namespace A359954.P251505247951898520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A333645 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359954.P251505247951898520

noncomputable section

/-- A359954: a(n) = Sum_{d|n} tau(d)*phi(d)*mu(n/d).

Offset 1, canonical program `A359954.P251505247951898520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359954 (n : ℕ) : ℤ :=
  A359954.P251505247951898520.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360567.P16353749552312502386

`p?[∑[2-Δ[A143536(n+1)]]+2]`
-/

namespace A360567.P16353749552312502386
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A360567.P16353749552312502386

noncomputable section

/-- A360567: Primes p such that the nearest integer to sqrt(p) is also prime.

Offset 1, canonical program `A360567.P16353749552312502386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A360567 (n : ℕ) : ℤ :=
  A360567.P16353749552312502386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A360567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360639.P11777009454422486410

`∩[A175522(n+1)-2, A175522(n+1)]`
-/

namespace A360639.P11777009454422486410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175522 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360639.P11777009454422486410

noncomputable section

/-- A360639: Numbers k such that k and k+2 are both A000120-perfect numbers (A175522).

Offset 1, canonical program `A360639.P11777009454422486410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A360639 (n : ℕ) : ℤ :=
  (A360639.P11777009454422486410.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A360639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361267.P7495545048524852458

`eq[6, A075527(n)]`
-/

namespace A361267.P7495545048524852458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361267.P7495545048524852458

noncomputable section

/-- A361267: Numbers k such that prime(k+2) - prime(k) = 6.

Offset 1, canonical program `A361267.P7495545048524852458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 526 terms. -/
def A361267 (n : ℕ) : ℤ :=
  (A361267.P7495545048524852458.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 526 terms. -/
def A361267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361743.P17164138405407850184

`A028310(n)*A123164(n)`
-/

namespace A361743.P17164138405407850184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A123164 n

end

end A361743.P17164138405407850184

noncomputable section

/-- A361743: Central circular Delannoy numbers: a(n) is the number of Delannoy loops on an n X n toroidal grid.

Offset 0, canonical program `A361743.P17164138405407850184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A361743 (n : ℕ) : ℤ :=
  A361743.P17164138405407850184.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A361743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362883.P10543237193728473399

`A055498(n)-A055500(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A362883.P10543237193728473399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055498 n - A055500 n

end

end A362883.P10543237193728473399

noncomputable section

/-- A362883: a(n) = A055498(n) - A055500(n).

Offset 0, canonical program `A362883.P10543237193728473399`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055498, A055500, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A362883 (n : ℕ) : ℤ :=
  A362883.P10543237193728473399.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055498, A055500, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A362883.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363012.P16784957771045360227

`∑{d}[n+1, A046692(#)*A127469((n+1)/#)]`
-/

namespace A363012.P16784957771045360227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A127469 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A363012.P16784957771045360227

noncomputable section

/-- A363012: a(n) = Sum_{d|n} d*tau(d)*phi(d)*mu(n/d).

Offset 1, canonical program `A363012.P16784957771045360227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363012 (n : ℕ) : ℤ :=
  A363012.P16784957771045360227.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363012.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A363598.P10065687439542942200

`(A002129(n+1)-A138503(n+1))/6`
-/

namespace A363598.P10065687439542942200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002129 (n + 1) - A138503 (n + 1) : ℚ) / 6

end

end A363598.P10065687439542942200

noncomputable section

/-- A363598: Expansion of Sum_{k>0} x^(2*k)/(1+x^k)^4.

Offset 1, canonical program `A363598.P10065687439542942200`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363598 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363598.P10065687439542942200.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363598.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A365332.P3532324304065940767

`∑{d}[A358272(n+1), #]`
-/

namespace A365332.P3532324304065940767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A365332.P3532324304065940767

noncomputable section

/-- A365332: The sum of divisors of the largest square dividing n.

Offset 1, canonical program `A365332.P3532324304065940767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365332 (n : ℕ) : ℤ :=
  (A365332.P3532324304065940767.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366378.P2407206345280088483

`eq[A010872(n), A010872(A057889(n))]`
-/

namespace A366378.P2407206345280088483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A057889 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366378.P2407206345280088483

noncomputable section

/-- A366378: Numbers k such that A057889(k) == k (mod 3), where A057889 is the bijective bit-reverse.

Offset 1, canonical program `A366378.P2407206345280088483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5799 terms. -/
def A366378 (n : ℕ) : ℤ :=
  (A366378.P2407206345280088483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5799 terms. -/
def A366378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366403.P15389599088929656846

`A099323(n)+A057427(n)`
-/

namespace A366403.P15389599088929656846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 n + A057427 n

end

end A366403.P15389599088929656846

noncomputable section

/-- A366403: G.f. A(x) satisfies A(x) = (1 + x / sqrt(A(x))) / (1 - x).

Offset 0, canonical program `A366403.P15389599088929656846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A366403 (n : ℕ) : ℤ :=
  A366403.P15389599088929656846.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A366403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366990.P7446816452467653986

`∑{d}[n+1, #*A293449(#)]`
-/

namespace A366990.P7446816452467653986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A293449 d

end

end A366990.P7446816452467653986

noncomputable section

/-- A366990: The sum of divisors of n that are terms of A056166.

Offset 1, canonical program `A366990.P7446816452467653986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366990 (n : ℕ) : ℤ :=
  A366990.P7446816452467653986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368886.P14991200523902703916

`(n+1)/A368884(n+1)`
-/

namespace A368886.P14991200523902703916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A368884 (n + 1) : ℚ)

end

end A368886.P14991200523902703916

noncomputable section

/-- A368886: The largest unitary divisor of n without an exponent 2 in its prime factorization (A337050).

Offset 1, canonical program `A368886.P14991200523902703916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368886 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A368886.P14991200523902703916.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369032.P9747696111945326450

`A105560(n+1)^A304438(n+1)²`
-/

namespace A369032.P9747696111945326450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105560 (n + 1) : ℚ) ^ (A304438 (n + 1) ^ 2 : ℤ)

end

end A369032.P9747696111945326450

noncomputable section

/-- A369032: LCM-transform of permutation A241909.

Offset 1, canonical program `A369032.P9747696111945326450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369032 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369032.P9747696111945326450.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369306.P7838133556568546041

`∑{d}[n+1, A212793(#)*A212793((n+1)/#)]`
-/

namespace A369306.P7838133556568546041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A212793 d * A212793 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369306.P7838133556568546041

noncomputable section

/-- A369306: The number of cubefree divisors d of n such that n/d is also cubefree.

Offset 1, canonical program `A369306.P7838133556568546041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369306 (n : ℕ) : ℤ :=
  A369306.P7838133556568546041.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369749.P2966338414670891840

`∑{d}[n+1, A000040(#)*A061397((n+1)/#)]`
-/

namespace A369749.P2966338414670891840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000040 d * A061397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369749.P2966338414670891840

noncomputable section

/-- A369749: a(n) = Sum_{p|n, p prime} p * prime(n/p).

Offset 1, canonical program `A369749.P2966338414670891840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369749 (n : ℕ) : ℤ :=
  A369749.P2966338414670891840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369758.P9573960623200247307

`A091306(n+1)*A365349(n+1)`
-/

namespace A369758.P9573960623200247307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091306 (n + 1) * A365349 (n + 1)

end

end A369758.P9573960623200247307

noncomputable section

/-- A369758: The sum of divisors of the smallest cubefull exponentially odd number that is divisible by n.

Offset 1, canonical program `A369758.P9573960623200247307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369758 (n : ℕ) : ℤ :=
  A369758.P9573960623200247307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370009.P11224753345839745758

`A151800(A001748(n+1))`
-/

namespace A370009.P11224753345839745758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A001748 (n + 1)).toNat

end

end A370009.P11224753345839745758

noncomputable section

/-- A370009: a(n) is the least prime greater than 3*prime(n).

Offset 1, canonical program `A370009.P11224753345839745758`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001748, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A370009 (n : ℕ) : ℤ :=
  A370009.P11224753345839745758.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001748, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A370009.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371188.P16600339561144693768

`lt[A368712(n+1), 2]+1`
-/

namespace A371188.P16600339561144693768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368712 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A371188.P16600339561144693768

noncomputable section

/-- A371188: Indices of the squarefree numbers in the sequence of cubefree numbers.

Offset 1, canonical program `A371188.P16600339561144693768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7305 terms. -/
def A371188 (n : ℕ) : ℤ :=
  (A371188.P16600339561144693768.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7305 terms. -/
def A371188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371256.P3370008578592475256

`A006068(A060585(n))`
-/

namespace A371256.P3370008578592475256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A060585 n).toNat

end

end A371256.P3370008578592475256

noncomputable section

/-- A371256: The run lengths transform of the ternary expansion of n corresponds to the run lengths transform of the binary expansion of a(n).

Offset 0, canonical program `A371256.P3370008578592475256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A371256 (n : ℕ) : ℤ :=
  A371256.P3370008578592475256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A371256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372023.P3112973141915195590

`A036453(n+1)*A099323(n)`
-/

namespace A372023.P3112973141915195590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A099323 n

end

end A372023.P3112973141915195590

noncomputable section

/-- A372023: Expansion of ( (1 + 3*x)/(1 - x) )^(1/2).

Offset 0, canonical program `A372023.P3112973141915195590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A372023 (n : ℕ) : ℤ :=
  A372023.P3112973141915195590.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A372023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372475.P6789191976370700518

`A372472(n+1)+A372433(n+1)`
-/

namespace A372475.P6789191976370700518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372472 (n + 1) + A372433 (n + 1)

end

end A372475.P6789191976370700518

noncomputable section

/-- A372475: Length of binary expansion (or number of bits) of the n-th squarefree number.

Offset 1, canonical program `A372475.P6789191976370700518`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372433, A372472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372475 (n : ℕ) : ℤ :=
  A372475.P6789191976370700518.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372433, A372472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372475.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372505.P10493546541746876935

`log2(A368473(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372505.P10493546541746876935
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A368473 (n + 1) : ℝ)

end

end A372505.P10493546541746876935

noncomputable section

/-- A372505: a(n) = log_2(A368473(n)).

Offset 1, canonical program `A372505.P10493546541746876935`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372505 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372505.P10493546541746876935.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372505.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372573.P2519904625794954656

`1-A234045(A065331(n+1))²`
-/

namespace A372573.P2519904625794954656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A234045 (A065331 (n + 1)).toNat ^ 2

end

end A372573.P2519904625794954656

noncomputable section

/-- A372573: a(n) = 1 if A276085(n) is a multiple of 3, otherwise 0, where A276085 is the primorial base log-function.

Offset 1, canonical program `A372573.P2519904625794954656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372573 (n : ℕ) : ℤ :=
  A372573.P2519904625794954656.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372683.P240190754825945608

`A067535(2^n)`
-/

namespace A372683.P240190754825945608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (2 ^ n)

end

end A372683.P240190754825945608

noncomputable section

/-- A372683: Least squarefree number >= 2^n.

Offset 0, canonical program `A372683.P240190754825945608`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067535, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372683 (n : ℕ) : ℤ :=
  A372683.P240190754825945608.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067535, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372683.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372889.P15805631827507383

`A070321(2^n)`
-/

namespace A372889.P15805631827507383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (2 ^ n)

end

end A372889.P15805631827507383

noncomputable section

/-- A372889: Greatest squarefree number <= 2^n.

Offset 0, canonical program `A372889.P15805631827507383`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070321, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372889 (n : ℕ) : ℤ :=
  A372889.P15805631827507383.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070321, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372889.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373153.P13043252029439132361

`A234045(A065331(n+1))`
-/

namespace A373153.P13043252029439132361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234045 (A065331 (n + 1)).toNat

end

end A373153.P13043252029439132361

noncomputable section

/-- A373153: a(n) is -1, 0, or 1 such that a(n) == A276085(n) (mod 3), where A276085 is the primorial base log-function.

Offset 1, canonical program `A373153.P13043252029439132361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373153 (n : ℕ) : ℤ :=
  A373153.P13043252029439132361.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373247.P5400179974361207205

`A056011(A056011(n+1))%∏{e}[n+1, A000040(#)]`
-/

namespace A373247.P5400179974361207205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056011 (A056011 (n + 1)).toNat) (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p))

end

end A373247.P5400179974361207205

noncomputable section

/-- A373247: a(n) = n mod A181819(n), where A181819(n) is the prime shadow of n.

Offset 1, canonical program `A373247.P5400179974361207205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373247 (n : ℕ) : ℤ :=
  A373247.P5400179974361207205.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373439.P16901655103107973233

`A017667(sqrt(abs(A358272(n+1))))`
-/

namespace A373439.P16901655103107973233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017667 (SequenceMachineLib.roundAway (Real.sqrt (|A358272 (n + 1)| : ℝ))).toNat

end

end A373439.P16901655103107973233

noncomputable section

/-- A373439: Numerator of sum of reciprocals of square divisors of n.

Offset 1, canonical program `A373439.P16901655103107973233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373439 (n : ℕ) : ℤ :=
  A373439.P16901655103107973233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373479.P13766568938091345809

`filter[A373478(n+1), A079978(#)]`
-/

namespace A373479.P13766568938091345809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A373479.P13766568938091345809

noncomputable section

/-- A373479: Numbers k such that A001414(k) and A003415(k) are both multiples of 3, but A083345(k) is not, where A001414 is the sum of prime factors with repetition, A003415 is the arithmetic derivative, and A083345(n) = A003415(n)/gcd(n,A003415(n)).

Offset 1, canonical program `A373479.P13766568938091345809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A373479 (n : ℕ) : ℤ :=
  A373479.P13766568938091345809.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A373479.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A374052.P16324426234516621321

`lt[0, A374051(n+1)]+1`
-/

namespace A374052.P16324426234516621321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A374052.P16324426234516621321

noncomputable section

/-- A374052: Numbers k for which A113177(k) is a multiple of 3, where A113177 is fully additive with a(p) = Fibonacci(p).

Offset 1, canonical program `A374052.P16324426234516621321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374052 (n : ℕ) : ℤ :=
  (A374052.P16324426234516621321.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374093.P11725955277954229124

`C(A035187(A008574(n)), 2)`
-/

namespace A374093.P11725955277954229124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A035187 (A008574 n).toNat).toNat 2

end

end A374093.P11725955277954229124

noncomputable section

/-- A374093: Number of solutions to n = x^2 + 3*x*y + y^2 with 0 < x < y.

Offset 0, canonical program `A374093.P11725955277954229124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A374093 (n : ℕ) : ℤ :=
  (A374093.P11725955277954229124.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A374093.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A374183.P5104469556233860384

`filter[A374180(n+1), A011558(#)]`
-/

namespace A374183.P5104469556233860384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A374183.P5104469556233860384

noncomputable section

/-- A374183: Numbers k such that K(15 / k) != K((-1)^floor(k/2)*k / 15), where K(a/b) is the Kronecker symbol. Row 4 of A374188.

Offset 1, canonical program `A374183.P5104469556233860384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8004 terms. -/
def A374183 (n : ℕ) : ℤ :=
  A374183.P5104469556233860384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8004 terms. -/
def A374183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374263.P13870174198891008911

`∑[A055034(n+2)]`
-/

namespace A374263.P13870174198891008911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374263.P13870174198891008911

noncomputable section

/-- A374263: Number of distinct primitive Pythagorean triples (j^2 - k^2, 2*j*k, j^2 + k^2) where 1 <= k < j <= n.

Offset 2, canonical program `A374263.P13870174198891008911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A374263 (n : ℕ) : ℤ :=
  A374263.P13870174198891008911.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A374263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375010.P8651243061065902656

`-floor(A036263(n+1)/3)`
-/

namespace A375010.P8651243061065902656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊(A036263 (n + 1) : ℚ) / 3⌋

end

end A375010.P8651243061065902656

noncomputable section

/-- A375010: a(n) = prime(n-1) - floor((prime(n-2) + prime(n-1) + prime(n)) / 3).

Offset 3, canonical program `A375010.P8651243061065902656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375010 (n : ℕ) : ℤ :=
  A375010.P8651243061065902656.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375087.P8456723521891746720

`A075526(n)-A036263(n+1)`
-/

namespace A375087.P8456723521891746720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n - A036263 (n + 1)

end

end A375087.P8456723521891746720

noncomputable section

/-- A375087: Numbers added to cumulative correction term in order for prime numbers to resemble a recursive sequence.

Offset 1, canonical program `A375087.P8456723521891746720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375087 (n : ℕ) : ℤ :=
  A375087.P8456723521891746720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375184.P6361993029201309949

`A375183(A165199(n))`
-/

namespace A375184.P6361993029201309949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375183 (A165199 n).toNat

end

end A375184.P6361993029201309949

noncomputable section

/-- A375184: In the binary expansion of n, complement bits at even positions and to the right of a 0 (the most significant bit corresponding to position 1).

Offset 0, canonical program `A375184.P6361993029201309949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A375184 (n : ℕ) : ℤ :=
  A375184.P6361993029201309949.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A375184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375735.P17339394773180058432

`A375708(n+2)`
-/

namespace A375735.P17339394773180058432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375708 (n + 2)

end

end A375735.P17339394773180058432

noncomputable section

/-- A375735: First differences of non-prime-powers (inclusive).

Offset 1, canonical program `A375735.P17339394773180058432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A375735 (n : ℕ) : ℤ :=
  A375735.P17339394773180058432.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A375735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375931.P9740495412486584682

`A261969(n+1)^A051903(n+1)`
-/

namespace A375931.P9740495412486584682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261969 (n + 1) : ℚ) ^ (A051903 (n + 1) : ℤ)

end

end A375931.P9740495412486584682

noncomputable section

/-- A375931: The product of the prime powers in the prime factorization of n that have an exponent that is equal to the maximum exponent in this factorization.

Offset 1, canonical program `A375931.P9740495412486584682`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A261969, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375931 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375931.P9740495412486584682.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A261969, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375931.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376365.P7589948204282213465

`∑{e}[A358040(n+1), #]`
-/

namespace A376365.P7589948204282213465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A376365.P7589948204282213465

noncomputable section

/-- A376365: The number of distinct prime factors of the cubefree numbers.

Offset 1, canonical program `A376365.P7589948204282213465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376365 (n : ℕ) : ℤ :=
  (A376365.P7589948204282213465.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376590.P15911683092171224194

`Δ[A076259(n+1)]`
-/

namespace A376590.P15911683092171224194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376590.P15911683092171224194

noncomputable section

/-- A376590: Second differences of consecutive squarefree numbers (A005117). First differences of A076259.

Offset 1, canonical program `A376590.P15911683092171224194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A376590 (n : ℕ) : ℤ :=
  A376590.P15911683092171224194.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A376590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376603.P13156490468514965856

`eq[2, A073784(n+1)+A065310(n+1)]`
-/

namespace A376603.P13156490468514965856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073784 (n + 1) + A065310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376603.P13156490468514965856

noncomputable section

/-- A376603: Points of nonzero curvature in the sequence of composite numbers (A002808).

Offset 1, canonical program `A376603.P13156490468514965856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A376603 (n : ℕ) : ℤ :=
  (A376603.P13156490468514965856.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A376603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376652.P17197450697105744310

`A065890(A049579(n+1))`
-/

namespace A376652.P17197450697105744310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (A049579 (n + 1)).toNat

end

end A376652.P17197450697105744310

noncomputable section

/-- A376652: Points of downward concavity in the sequence of composite numbers (A002808).

Offset 1, canonical program `A376652.P17197450697105744310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8729 terms. -/
def A376652 (n : ℕ) : ℤ :=
  A376652.P17197450697105744310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8729 terms. -/
def A376652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378040.P15613936278681359725

`record[A377783(A100727(n))]`
-/

namespace A378040.P15613936278681359725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377783 (A100727 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378040.P15613936278681359725

noncomputable section

/-- A378040: Union of A377783(n) = least nonsquarefree number > prime(n).

Offset 1, canonical program `A378040.P15613936278681359725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A378040 (n : ℕ) : ℤ :=
  A378040.P15613936278681359725.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A378040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378135.P14945920561631951396

`A151800(n*A151800(n))`
-/

namespace A378135.P14945920561631951396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n : ℤ) * A151800 n).toNat

end

end A378135.P14945920561631951396

noncomputable section

/-- A378135: a(n) = p(n*p(n)), where p(x) = least prime > x.

Offset 0, canonical program `A378135.P14945920561631951396`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378135 (n : ℕ) : ℤ :=
  A378135.P14945920561631951396.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378135.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378137.P1083240671086047846

`A151800(n²*A151800(n))`
-/

namespace A378137.P1083240671086047846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n ^ 2 : ℤ) * A151800 n).toNat

end

end A378137.P1083240671086047846

noncomputable section

/-- A378137: a(n) = p(n^2*p(n)), where p(x) is the least prime > x.

Offset 0, canonical program `A378137.P1083240671086047846`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378137 (n : ℕ) : ℤ :=
  A378137.P1083240671086047846.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378137.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378211.P10174579376731078055

`2*A046692(n+1)-A055615(n+1)`
-/

namespace A378211.P10174579376731078055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046692 (n + 1) - A055615 (n + 1)

end

end A378211.P10174579376731078055

noncomputable section

/-- A378211: Dirichlet inverse of A191161, hypersigma variant 2.

Offset 1, canonical program `A378211.P10174579376731078055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378211 (n : ℕ) : ℤ :=
  A378211.P10174579376731078055.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378224.P17280632333159008747

`∑{d}[n+1, A033879(#)*A326938((n+1)/#)]`
-/

namespace A378224.P17280632333159008747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033879 d * A326938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378224.P17280632333159008747

noncomputable section

/-- A378224: Dirichlet inverse of A378223.

Offset 1, canonical program `A378224.P17280632333159008747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378224 (n : ℕ) : ℤ :=
  A378224.P17280632333159008747.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378299.P15957382925163367627

`A006068(A030101(n))`
-/

namespace A378299.P15957382925163367627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A030101 n).toNat

end

end A378299.P15957382925163367627

noncomputable section

/-- A378299: Read the binary representation of n from the most to least significant bit then perform a cumulative XOR and store by reading from least to most significant bit.

Offset 0, canonical program `A378299.P15957382925163367627`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, A030101, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378299 (n : ℕ) : ℤ :=
  A378299.P15957382925163367627.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, A030101, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378299.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378619.P11539688597753958083

`1-A070321(n+1)+n`
-/

namespace A378619.P11539688597753958083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A070321 (n + 1) + (n : ℤ)

end

end A378619.P11539688597753958083

noncomputable section

/-- A378619: Distance between n and the greatest squarefree number <= n.

Offset 1, canonical program `A378619.P11539688597753958083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378619 (n : ℕ) : ℤ :=
  A378619.P11539688597753958083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378901.P14259229191590537326

`C(C(2, A072047(n+1)), 2)`
-/

namespace A378901.P14259229191590537326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A072047 (n + 1)).toNat) 2

end

end A378901.P14259229191590537326

noncomputable section

/-- A378901: a(n) = 0 if s(n) is nonprime, a(n) = 1 if s(n) is prime, where s = A005117.

Offset 1, canonical program `A378901.P14259229191590537326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378901 (n : ℕ) : ℤ :=
  (A378901.P14259229191590537326.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379054.P8796397969431837503

`Δ[A099862(n+1)]`
-/

namespace A379054.P8796397969431837503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379054.P8796397969431837503

noncomputable section

/-- A379054: a(n) = composite(2*n+2) - composite(2*n).

Offset 1, canonical program `A379054.P8796397969431837503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A379054 (n : ℕ) : ℤ :=
  A379054.P8796397969431837503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A379054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379109.P7269606756069471216

`∑{d}[n+1, A046692(#)*A336923((n+1)/#)]`
-/

namespace A379109.P7269606756069471216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A336923 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379109.P7269606756069471216

noncomputable section

/-- A379109: Dirichlet convolution of A046692 (inverse of sigma) with A336923, where A336923(n) = 1 if sigma(2n) - sigma(n) is a power of 2, otherwise 0.

Offset 1, canonical program `A379109.P7269606756069471216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379109 (n : ℕ) : ℤ :=
  A379109.P7269606756069471216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379207.P2947985908837733843

`A072055(n+1)-A046933(n+1)²`
-/

namespace A379207.P2947985908837733843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) - A046933 (n + 1) ^ 2

end

end A379207.P2947985908837733843

noncomputable section

/-- A379207: a(n) = 2*prime(n+1) - (prime(n+1) - prime(n))^2.

Offset 1, canonical program `A379207.P2947985908837733843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379207 (n : ℕ) : ℤ :=
  A379207.P2947985908837733843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379405.P17696526180092176553

`A151800(A053024(n+1))`
-/

namespace A379405.P17696526180092176553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A053024 (n + 1)).toNat

end

end A379405.P17696526180092176553

noncomputable section

/-- A379405: a(n) = p((n+1)*p(n)), where p(x) = least prime > x; i.e., p = A151800.

Offset 0, canonical program `A379405.P17696526180092176553`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053024, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379405 (n : ℕ) : ℤ :=
  A379405.P17696526180092176553.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053024, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379405.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379715.P13429462799020016911

`A049200(n+1)*A062822(n+1)`
-/

namespace A379715.P13429462799020016911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049200 (n + 1) * A062822 (n + 1)

end

end A379715.P13429462799020016911

noncomputable section

/-- A379715: The second Jordan totient function applied to the squarefree numbers.

Offset 1, canonical program `A379715.P13429462799020016911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379715 (n : ℕ) : ℤ :=
  A379715.P13429462799020016911.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380329.P8351164185332422839

`A151800((A028310(n)-1)*A151800(n))`
-/

namespace A380329.P8351164185332422839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((A028310 n - 1) * A151800 n).toNat

end

end A380329.P8351164185332422839

noncomputable section

/-- A380329: a(n) = A151800((n-1)*A151800(n)).

Offset 0, canonical program `A380329.P8351164185332422839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A380329 (n : ℕ) : ℤ :=
  A380329.P8351164185332422839.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A380329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380330.P10363215935538864354

`A151800(A000040(n+1)*A151800(n+1))`
-/

namespace A380330.P10363215935538864354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000040 (n + 1) * A151800 (n + 1)).toNat

end

end A380330.P10363215935538864354

noncomputable section

/-- A380330: a(n) = A151800(prime(n)*A151800(n)).

Offset 1, canonical program `A380330.P10363215935538864354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A380330 (n : ℕ) : ℤ :=
  A380330.P10363215935538864354.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A380330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381822.P13589790418829358810

`filter[2*n+1, A212793(#)]`
-/

namespace A381822.P13589790418829358810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j) = 1) n)

end

end A381822.P13589790418829358810

noncomputable section

/-- A381822: Odd cubefree numbers: odd numbers that are not divisible by any cube greater than 1.

Offset 1, canonical program `A381822.P13589790418829358810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9508 terms. -/
def A381822 (n : ℕ) : ℤ :=
  (A381822.P13589790418829358810.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9508 terms. -/
def A381822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381823.P9333839630862203631

`filter[A053850(n+1), A212793(#)]`
-/

namespace A381823.P9333839630862203631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A381823.P9333839630862203631

noncomputable section

/-- A381823: Odd cubefree numbers that are not squarefree.

Offset 1, canonical program `A381823.P9333839630862203631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7009 terms. -/
def A381823 (n : ℕ) : ℤ :=
  A381823.P9333839630862203631.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7009 terms. -/
def A381823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381841.P11592063328882471830

`A136495(n+1)+A136496(n+1)`
-/

namespace A381841.P11592063328882471830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (n + 1) + A136496 (n + 1)

end

end A381841.P11592063328882471830

noncomputable section

/-- A381841: Position of the n-th occurrence of the digit 3 in A105083(n-1) for n>=1.

Offset 1, canonical program `A381841.P11592063328882471830`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136495, A136496, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A381841 (n : ℕ) : ℤ :=
  A381841.P11592063328882471830.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136495, A136496, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A381841.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382113.P6513657586340795000

`A022290(A006068(A003714(n)))`
-/

namespace A382113.P6513657586340795000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A006068 (A003714 n).toNat).toNat

end

end A382113.P6513657586340795000

noncomputable section

/-- A382113: Gray code transformation of the Zeckendorf representation of n.

Offset 0, canonical program `A382113.P6513657586340795000`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A006068, A022290, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382113 (n : ℕ) : ℤ :=
  A382113.P6513657586340795000.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A006068, A022290, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382113.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382415.P7885958803409723842

`comp[A023721(n+1)]`
-/

namespace A382415.P7885958803409723842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382415.P7885958803409723842

noncomputable section

/-- A382415: Numbers with at least one zero in their base-5 representation.

Offset 1, canonical program `A382415.P7885958803409723842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382415 (n : ℕ) : ℤ :=
  (A382415.P7885958803409723842.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382983.P16864973918105220280

`A004525(A282849(n+1))`
-/

namespace A382983.P16864973918105220280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A282849 (n + 1)).toNat

end

end A382983.P16864973918105220280

noncomputable section

/-- A382983: a(n) is the number of solutions to n = x*y in positive integers x <= y where x + y is prime.

Offset 1, canonical program `A382983.P16864973918105220280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382983 (n : ℕ) : ℤ :=
  A382983.P16864973918105220280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383242.P14757656710033611047

`A383241(n+1)+2`
-/

namespace A383242.P14757656710033611047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383241 (n + 1) + 2

end

end A383242.P14757656710033611047

noncomputable section

/-- A383242: a(n) = p(n)*p(n+1)*(p(n+1) - p(n)) + 1, where p(n) = prime(n).

Offset 1, canonical program `A383242.P14757656710033611047`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A383241, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383242 (n : ℕ) : ℤ :=
  A383242.P14757656710033611047.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A383241, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383242.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384041.P8191093603258971194

`∑{d}[n+1, A007432(#)*A332730((n+1)/#)]`
-/

namespace A384041.P8191093603258971194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A332730 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384041.P8191093603258971194

noncomputable section

/-- A384041: The number of integers k from 1 to n such that gcd(n,k) is an exponentially odd number.

Offset 1, canonical program `A384041.P8191093603258971194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384041 (n : ℕ) : ℤ :=
  A384041.P8191093603258971194.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384298.P2233638191356320914

`∩[A046137(n+1), A049492(n+1)]`
-/

namespace A384298.P2233638191356320914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384298.P2233638191356320914

noncomputable section

/-- A384298: Primes p such that p + 4, p + 12 and p + 16 are also primes.

Offset 1, canonical program `A384298.P2233638191356320914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 976 terms. -/
def A384298 (n : ℕ) : ℤ :=
  (A384298.P2233638191356320914.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 976 terms. -/
def A384298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384420.P10522523073999906591

`∑{e}[n+1, A070321(#)]`
-/

namespace A384420.P10522523073999906591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A070321 (Nat.factorization (f1 n) p)

end

end A384420.P10522523073999906591

noncomputable section

/-- A384420: The number of exponentially squarefree prime powers (not including 1) that divide n.

Offset 1, canonical program `A384420.P10522523073999906591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384420 (n : ℕ) : ℤ :=
  A384420.P10522523073999906591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384517.P2524242939913956237

`A062770(n+1)²`
-/

namespace A384517.P2524242939913956237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1) ^ 2

end

end A384517.P2524242939913956237

noncomputable section

/-- A384517: Nonsquarefree numbers that are squarefree numbers raised to an even power.

Offset 1, canonical program `A384517.P2524242939913956237`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062770, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384517 (n : ℕ) : ℤ :=
  A384517.P2524242939913956237.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062770, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384517.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385007.P2853750131647033924

`A053165((n+1)/A062379(A003557(n+1)))`
-/

namespace A385007.P2853750131647033924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A062379 (A003557 (n + 1)).toNat : ℚ))).toNat

end

end A385007.P2853750131647033924

noncomputable section

/-- A385007: The largest unitary divisor of n that is a biquadratefree number (A046100).

Offset 1, canonical program `A385007.P2853750131647033924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385007 (n : ℕ) : ℤ :=
  A385007.P2853750131647033924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385186.P4786045568556836293

`2*A147846(n+1)`
-/

namespace A385186.P4786045568556836293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147846 (n + 1)

end

end A385186.P4786045568556836293

noncomputable section

/-- A385186: Oblong numbers of the form k*(k + 1) such that at least one of k and k + 1 is prime.

Offset 1, canonical program `A385186.P4786045568556836293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385186 (n : ℕ) : ℤ :=
  A385186.P4786045568556836293.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385349.P6182123105730510131

`gcd(A007956(n+1), A136655(n+1))`
-/

namespace A385349.P6182123105730510131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007956 (n + 1)) (A136655 (n + 1))

end

end A385349.P6182123105730510131

noncomputable section

/-- A385349: Product of odd proper divisors of n.

Offset 1, canonical program `A385349.P6182123105730510131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A385349 (n : ℕ) : ℤ :=
  (A385349.P6182123105730510131.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A385349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385533.P17951931454137274781

`n-(A385532(n+1)+2)`
-/

namespace A385533.P17951931454137274781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A385532 (n + 1) + 2)

end

end A385533.P17951931454137274781

noncomputable section

/-- A385533: Third prepended column of the tribonacci array of the second kind, A385436.

Offset 1, canonical program `A385533.P17951931454137274781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385533 (n : ℕ) : ℤ :=
  A385533.P17951931454137274781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385640.P9288820387589926577

`filter[A385656(n+1), A188641(#)]`
-/

namespace A385640.P9288820387589926577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A385640.P9288820387589926577

noncomputable section

/-- A385640: Numbers k such that the sum of the digits of k divides k and the sum of the digits of k^2 divides k^2.

Offset 1, canonical program `A385640.P9288820387589926577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 756 terms. -/
def A385640 (n : ℕ) : ℤ :=
  A385640.P9288820387589926577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 756 terms. -/
def A385640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386596.P2721160456246764298

`∑{d}[n+1, A333699(#)]`
-/

namespace A386596.P2721160456246764298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A333699 d

end

end A386596.P2721160456246764298

noncomputable section

/-- A386596: a(n) = Sum_{d|n} d * pi(n/d).

Offset 1, canonical program `A386596.P2721160456246764298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386596 (n : ℕ) : ℤ :=
  A386596.P2721160456246764298.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387944.P5952151805390949890

`n-∑[A106743(n+1)²]`
-/

namespace A387944.P5952151805390949890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106743 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387944.P5952151805390949890

noncomputable section

/-- A387944: Number of squarefree composites <= n.

Offset 1, canonical program `A387944.P5952151805390949890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387944 (n : ℕ) : ℤ :=
  A387944.P5952151805390949890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389447.P10658135204883957213

`A000203(n+1)/A389446(n+1)`
-/

namespace A389447.P10658135204883957213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A389446 (n + 1) : ℚ)

end

end A389447.P10658135204883957213

noncomputable section

/-- A389447: Numerator of ratio sigma(n) / A057723(n), where A057723 is sum of positive divisors of n that are divisible by every prime that divides n and sigma is the sum of divisors function.

Offset 1, canonical program `A389447.P10658135204883957213`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A389446, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389447 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389447.P10658135204883957213.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A389446, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389447.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389448.P4992283218641598864

`A057723(n+1)/A389446(n+1)`
-/

namespace A389448.P4992283218641598864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057723 (n + 1) : ℚ) / (A389446 (n + 1) : ℚ)

end

end A389448.P4992283218641598864

noncomputable section

/-- A389448: Denominator of ratio sigma(n) / A057723(n), where A057723 is sum of positive divisors of n that are divisible by every prime that divides n and sigma is the sum of divisors function.

Offset 1, canonical program `A389448.P4992283218641598864`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057723, A389446, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389448 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389448.P4992283218641598864.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057723, A389446, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389448.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390801.P7518913584261521193

`∑{d}[n+1, A023896(#)*A061397((n+1)/#)]`
-/

namespace A390801.P7518913584261521193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023896 d * A061397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390801.P7518913584261521193

noncomputable section

/-- A390801: The sum of the integers k from 1 to n such that gcd(n, k) is prime.

Offset 1, canonical program `A390801.P7518913584261521193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390801 (n : ℕ) : ℤ :=
  A390801.P7518913584261521193.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391804.P2522922692948596025

`A151800(A006094(n+1))`
-/

namespace A391804.P2522922692948596025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A006094 (n + 1)).toNat

end

end A391804.P2522922692948596025

noncomputable section

/-- A391804: a(n) = least prime greater than prime(n)*prime(n+1).

Offset 1, canonical program `A391804.P2522922692948596025`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006094, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391804 (n : ℕ) : ℤ :=
  A391804.P2522922692948596025.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006094, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391804.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392014.P7869186675893607837

`∏{e}[A138302(n+1), A076826(#)]`
-/

namespace A392014.P7869186675893607837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A076826 (Nat.factorization (f1 n).natAbs p)

end

end A392014.P7869186675893607837

noncomputable section

/-- A392014: The number of exponential unitary divisors of the exponentially-2^n numbers.

Offset 1, canonical program `A392014.P7869186675893607837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392014 (n : ℕ) : ℤ :=
  A392014.P7869186675893607837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392034.P3707045700656422187

`A291463(n+1)/2`
-/

namespace A392034.P3707045700656422187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291463 (n + 1) : ℚ) / 2

end

end A392034.P3707045700656422187

noncomputable section

/-- A392034: a(n) = prime(n)*(prime(n+1) - prime(n))/2.

Offset 1, canonical program `A392034.P3707045700656422187`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392034 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392034.P3707045700656422187.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392034.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A287073.P14749507163745126481

`A287074(A287106(n+1))-A287106(n+1)`
-/

namespace A287073.P14749507163745126481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287074 (A287106 (n + 1)).toNat - A287106 (n + 1)

end

end A287073.P14749507163745126481

noncomputable section

/-- A287073: Positions of 0 in A287072.

Offset 1, canonical program `A287073.P14749507163745126481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4302 terms. -/
def A287073 (n : ℕ) : ℤ :=
  A287073.P14749507163745126481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4302 terms. -/
def A287073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289553.P10222352224202675943

`∪[(n+1)², A033942(n+1)]`
-/

namespace A289553.P10222352224202675943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A289553.P10222352224202675943

noncomputable section

/-- A289553: Numbers that are not the product of two distinct noncomposite numbers (A008578).

Offset 1, canonical program `A289553.P10222352224202675943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289553 (n : ℕ) : ℤ :=
  (A289553.P10222352224202675943.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289653.P13128161815598754898

`A289652(n)+A185013(n)`
-/

namespace A289653.P13128161815598754898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289652 n + A185013 n

end

end A289653.P13128161815598754898

noncomputable section

/-- A289653: Catalan numbers - 2 (A120304) with first four terms changed to 1,1,1,4.

Offset 1, canonical program `A289653.P13128161815598754898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289653 (n : ℕ) : ℤ :=
  A289653.P13128161815598754898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289654.P3590409810907321973

`A289652(n)+A185014(n)`
-/

namespace A289654.P3590409810907321973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289652 n + A185014 n

end

end A289654.P3590409810907321973

noncomputable section

/-- A289654: Related to number of mesh patterns of length 2 that avoid the pattern 321.

Offset 1, canonical program `A289654.P3590409810907321973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289654 (n : ℕ) : ℤ :=
  A289654.P3590409810907321973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290254.P4242582675085589106

`A035928(n%a(n-1))/2` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A290254.P4242582675085589106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  (A035928 (Int.tmod (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1)))).toNat : ℚ) / 2

end

end A290254.P4242582675085589106

noncomputable section

/-- A290254: The viabin numbers of the self-conjugate integer partitions.

Offset 1, canonical program `A290254.P4242582675085589106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290254 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A290254.P4242582675085589106.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291167.P12219534965446572701

`record[A000027(n+1)*A214295(A001615(n+1))]`
-/

namespace A291167.P12219534965446572701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A214295 (A001615 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291167.P12219534965446572701

noncomputable section

/-- A291167: Numbers k such that psi(k) is a perfect square where psi(k) = A001615(k).

Offset 1, canonical program `A291167.P12219534965446572701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A291167 (n : ℕ) : ℤ :=
  A291167.P12219534965446572701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A291167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292144.P13355653509212919962

`(sqrt(n+1)-sqrt(sqrt(A055491(n+1))))²`
-/

namespace A292144.P13355653509212919962
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (n + 1 : ℝ) - Real.sqrt (Real.sqrt (A055491 (n + 1) : ℝ))) ^ 2

end

end A292144.P13355653509212919962

noncomputable section

/-- A292144: a(n) is the greatest k < n such that k*n is square.

Offset 1, canonical program `A292144.P13355653509212919962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292144 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A292144.P13355653509212919962.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292509.P11294046245130525337

`A132763(A300473(n+1))+1`
-/

namespace A292509.P11294046245130525337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132763 (A300473 (n + 1)).toNat + 1

end

end A292509.P11294046245130525337

noncomputable section

/-- A292509: Primes of the form k^2 + 23*k + 23.

Offset 1, canonical program `A292509.P11294046245130525337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3444 terms. -/
def A292509 (n : ℕ) : ℤ :=
  A292509.P11294046245130525337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3444 terms. -/
def A292509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294107.P14015073582122171902

`A185013(n)+A055679(n+1)`
-/

namespace A294107.P14015073582122171902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185013 n + A055679 (n + 1)

end

end A294107.P14015073582122171902

noncomputable section

/-- A294107: Maximum of the number of primes appearing among the smaller parts and the number of primes appearing among the larger parts of the partitions of n into two parts.

Offset 1, canonical program `A294107.P14015073582122171902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A294107 (n : ℕ) : ℤ :=
  A294107.P14015073582122171902.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A294107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295878.P12559335493611426634

`∏{e}[A071975(n+1), A000040(#)]`
-/

namespace A295878.P12559335493611426634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A295878.P12559335493611426634

noncomputable section

/-- A295878: Multiplicative with a(p^(2e)) = 1, a(p^(2e-1)) = prime(e).

Offset 1, canonical program `A295878.P12559335493611426634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295878 (n : ℕ) : ℤ :=
  A295878.P12559335493611426634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296028.P16460919487445646062

`1-A005171(A001651(n+1))`
-/

namespace A296028.P16460919487445646062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005171 (A001651 (n + 1)).toNat

end

end A296028.P16460919487445646062

noncomputable section

/-- A296028: Characteristic function of primes in the nonmultiples of 3.

Offset 1, canonical program `A296028.P16460919487445646062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296028 (n : ℕ) : ℤ :=
  A296028.P16460919487445646062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296028.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A301896.P13543893688146725157

`A059015(n)*A000788(n)`
-/

namespace A301896.P13543893688146725157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059015 n * A000788 n

end

end A301896.P13543893688146725157

noncomputable section

/-- A301896: a(n) = product of total number of 0's and total number of 1's in binary expansions of 0, ..., n.

Offset 0, canonical program `A301896.P13543893688146725157`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, A059015, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A301896 (n : ℕ) : ℤ :=
  A301896.P13543893688146725157.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, A059015, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A301896.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306103.P9402762575199565456

`lt[2, A100073(n+1)]+1`
-/

namespace A306103.P9402762575199565456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100073 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A306103.P9402762575199565456

noncomputable section

/-- A306103: Numbers that are the difference of two positive squares in at least three ways.

Offset 1, canonical program `A306103.P9402762575199565456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3218 terms. -/
def A306103 (n : ℕ) : ℤ :=
  (A306103.P9402762575199565456.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3218 terms. -/
def A306103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306104.P6293553733241968653

`eq[1, A049347(a(A100073(n)))]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A306104.P6293553733241968653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2, 2] fun n f2 =>
  A049347 (f2 (A100073 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306104.P6293553733241968653

noncomputable section

/-- A306104: Numbers that are the difference of two positive squares in at least four ways.

Offset 1, canonical program `A306104.P6293553733241968653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2602 terms. -/
def A306104 (n : ℕ) : ℤ :=
  (A306104.P6293553733241968653.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2602 terms. -/
def A306104.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A307341.P13279017432395934177

`record[A105570(A014613(n+1))]`
-/

namespace A307341.P13279017432395934177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A014613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307341.P13279017432395934177

noncomputable section

/-- A307341: Products of four primes, not all distinct.

Offset 1, canonical program `A307341.P13279017432395934177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6535 terms. -/
def A307341 (n : ℕ) : ℤ :=
  A307341.P13279017432395934177.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6535 terms. -/
def A307341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307410.P14070864280016795678

`A002472(n+1)/gcd(A002472(n+1), A055034(n+1))`
-/

namespace A307410.P14070864280016795678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002472 (n + 1) : ℚ) / (Int.gcd (A002472 (n + 1)) (A055034 (n + 1)) : ℚ)

end

end A307410.P14070864280016795678

noncomputable section

/-- A307410: Numerators of the product in the singular series.

Offset 1, canonical program `A307410.P14070864280016795678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307410 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A307410.P14070864280016795678.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310456.P16640342773671596994

`A310408(n)+Δ[A011864(n)]`
-/

namespace A310456.P16640342773671596994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310408 n + (f1 (n + 1) - f1 n)

end

end A310456.P16640342773671596994

noncomputable section

/-- A310456: Coordination sequence Gal.6.322.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310456.P16640342773671596994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2387 terms. -/
def A310456 (n : ℕ) : ℤ :=
  A310456.P16640342773671596994.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2387 terms. -/
def A310456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311287.P13191711119088898085

`A008574(n)+A313694(n)-A313683(n)`
-/

namespace A311287.P13191711119088898085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A313694 n - A313683 n)

end

end A311287.P13191711119088898085

noncomputable section

/-- A311287: Coordination sequence Gal.4.50.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311287.P13191711119088898085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A311287 (n : ℕ) : ℤ :=
  A311287.P13191711119088898085.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A311287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311332.P5397505913384543494

`A314688(n)-A046978(A004396(n))`
-/

namespace A311332.P5397505913384543494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314688 n - A046978 (A004396 n).toNat

end

end A311332.P5397505913384543494

noncomputable section

/-- A311332: Coordination sequence Gal.6.120.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311332.P5397505913384543494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2503 terms. -/
def A311332 (n : ℕ) : ℤ :=
  A311332.P5397505913384543494.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2503 terms. -/
def A311332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311404.P16929994779130442920

`A313119(n)-A313078(n)%A004277(n)`
-/

namespace A311404.P16929994779130442920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313119 n - Int.tmod (A313078 n) (A004277 n)

end

end A311404.P16929994779130442920

noncomputable section

/-- A311404: Coordination sequence Gal.5.60.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311404.P16929994779130442920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2388 terms. -/
def A311404 (n : ℕ) : ℤ :=
  A311404.P16929994779130442920.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2388 terms. -/
def A311404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311430.P10392638198592284384

`A314670(n)-A134667(A004525(n))`
-/

namespace A311430.P10392638198592284384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314670 n - A134667 (A004525 n).toNat

end

end A311430.P10392638198592284384

noncomputable section

/-- A311430: Coordination sequence Gal.6.240.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311430.P10392638198592284384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2596 terms. -/
def A311430 (n : ℕ) : ℤ :=
  A311430.P10392638198592284384.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2596 terms. -/
def A311430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311687.P12525606551040496369

`A004396(n)+A313057(n)-A047588(n+1)`
-/

namespace A311687.P12525606551040496369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313057 n - A047588 (n + 1))

end

end A311687.P12525606551040496369

noncomputable section

/-- A311687: Coordination sequence Gal.6.125.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311687.P12525606551040496369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2463 terms. -/
def A311687 (n : ℕ) : ℤ :=
  A311687.P12525606551040496369.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2463 terms. -/
def A311687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312436.P6318237834392598981

`2*A313683(n)-A315634(n)`
-/

namespace A312436.P6318237834392598981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313683 n - A315634 n

end

end A312436.P6318237834392598981

noncomputable section

/-- A312436: Coordination sequence Gal.4.50.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312436.P6318237834392598981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2345 terms. -/
def A312436 (n : ℕ) : ℤ :=
  A312436.P6318237834392598981.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2345 terms. -/
def A312436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312902.P9477729746775064079

`(A310378(n)+A008574(n))/2`
-/

namespace A312902.P9477729746775064079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310378 n + A008574 n : ℚ) / 2

end

end A312902.P9477729746775064079

noncomputable section

/-- A312902: Coordination sequence Gal.6.129.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312902.P9477729746775064079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A312902 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A312902.P9477729746775064079.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A312902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312926.P704849189180626292

`A313540(n)-A004525(A004396(n))`
-/

namespace A312926.P704849189180626292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313540 n - A004525 (A004396 n).toNat

end

end A312926.P704849189180626292

noncomputable section

/-- A312926: Coordination sequence Gal.6.118.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312926.P704849189180626292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2462 terms. -/
def A312926 (n : ℕ) : ℤ :=
  A312926.P704849189180626292.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2462 terms. -/
def A312926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313136.P11916403924351243439

`A313540(n)-A128834(n)`
-/

namespace A313136.P11916403924351243439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313540 n - A128834 n

end

end A313136.P11916403924351243439

noncomputable section

/-- A313136: Coordination sequence Gal.6.256.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313136.P11916403924351243439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A313136 (n : ℕ) : ℤ :=
  A313136.P11916403924351243439.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A313136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313477.P9239923112402886863

`A313683(n)-Δ[A011862(n)]`
-/

namespace A313477.P9239923112402886863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313683 n - (f1 (n + 1) - f1 n)

end

end A313477.P9239923112402886863

noncomputable section

/-- A313477: Coordination sequence Gal.5.54.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313477.P9239923112402886863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A313477 (n : ℕ) : ℤ :=
  A313477.P9239923112402886863.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A313477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313537.P8184197836610671294

`A330025(n-A330025(n))+A314725(n)`
-/

namespace A313537.P8184197836610671294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 ((n : ℤ) - A330025 n).toNat + A314725 n

end

end A313537.P8184197836610671294

noncomputable section

/-- A313537: Coordination sequence Gal.5.66.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313537.P8184197836610671294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2483 terms. -/
def A313537 (n : ℕ) : ℤ :=
  A313537.P8184197836610671294.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2483 terms. -/
def A313537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313615.P7259322333454390986

`(A315208(n)+A310413(n))/2`
-/

namespace A313615.P7259322333454390986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315208 n + A310413 n : ℚ) / 2

end

end A313615.P7259322333454390986

noncomputable section

/-- A313615: Coordination sequence Gal.6.323.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313615.P7259322333454390986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A313615 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A313615.P7259322333454390986.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A313615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313846.P7134346169744339600

`A315033(n)+∑[A022003(n)]`
-/

namespace A313846.P7134346169744339600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315033 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313846.P7134346169744339600

noncomputable section

/-- A313846: Coordination sequence Gal.5.308.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313846.P7134346169744339600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2293 terms. -/
def A313846 (n : ℕ) : ℤ :=
  A313846.P7134346169744339600.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2293 terms. -/
def A313846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313859.P12307385577830529968

`A314884(n)+∑[A021913(n)]`
-/

namespace A313859.P12307385577830529968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314884 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313859.P12307385577830529968

noncomputable section

/-- A313859: Coordination sequence Gal.6.340.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313859.P12307385577830529968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A313859 (n : ℕ) : ℤ :=
  A313859.P12307385577830529968.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A313859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314039.P14436885910708461975

`abs(A008592(n)-A315033(n))`
-/

namespace A314039.P14436885910708461975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315033 n|

end

end A314039.P14436885910708461975

noncomputable section

/-- A314039: Coordination sequence Gal.5.299.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314039.P14436885910708461975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. -/
def A314039 (n : ℕ) : ℤ :=
  A314039.P14436885910708461975.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. -/
def A314039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314069.P10164089610408818193

`A314061(n)+A314111(n)-A314100(n)`
-/

namespace A314069.P10164089610408818193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314061 n + (A314111 n - A314100 n)

end

end A314069.P10164089610408818193

noncomputable section

/-- A314069: Coordination sequence Gal.6.652.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314069.P10164089610408818193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2274 terms. -/
def A314069 (n : ℕ) : ℤ :=
  A314069.P10164089610408818193.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2274 terms. -/
def A314069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314684.P10439373234237939789

`abs(A008592(n)-A314239(n))`
-/

namespace A314684.P10439373234237939789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314239 n|

end

end A314684.P10439373234237939789

noncomputable section

/-- A314684: Coordination sequence Gal.6.149.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314684.P10439373234237939789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2224 terms. -/
def A314684 (n : ℕ) : ℤ :=
  A314684.P10439373234237939789.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2224 terms. -/
def A314684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315329.P14714097202250854664

`abs(A008592(n)-A310378(n))`
-/

namespace A315329.P14714097202250854664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310378 n|

end

end A315329.P14714097202250854664

noncomputable section

/-- A315329: Coordination sequence Gal.6.635.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315329.P14714097202250854664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A315329 (n : ℕ) : ℤ :=
  A315329.P14714097202250854664.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A315329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316096.P4342633008410739467

`A091194(A316098(n+1)+1)`
-/

namespace A316096.P4342633008410739467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (A316098 (n + 1) + 1).toNat

end

end A316096.P4342633008410739467

noncomputable section

/-- A316096: Numbers m such that A(m+1) = A(m) + 4, where A() = A005101() are the abundant numbers.

Offset 1, canonical program `A316096.P4342633008410739467`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091194, A316098, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A316096 (n : ℕ) : ℤ :=
  A316096.P4342633008410739467.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091194, A316098, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A316096.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A316097.P3827480350620911441

`A091194(A316099(n+1)+1)`
-/

namespace A316097.P3827480350620911441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (A316099 (n + 1) + 1).toNat

end

end A316097.P3827480350620911441

noncomputable section

/-- A316097: Numbers m such that A(m+1) = A(m) + 6, where A() = A005101() are the abundant numbers.

Offset 1, canonical program `A316097.P3827480350620911441`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091194, A316099, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A316097 (n : ℕ) : ℤ :=
  A316097.P3827480350620911441.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091194, A316099, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A316097.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322821.P8922676155250871452

`A048675(n+1)/gcd(A000079(n), A048675(n+1))`
-/

namespace A322821.P8922676155250871452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048675 (n + 1) : ℚ) / (Int.gcd (A000079 n) (A048675 (n + 1)) : ℚ)

end

end A322821.P8922676155250871452

noncomputable section

/-- A322821: a(1) = 0; for n > 1, a(n) = A000265(A048675(n)).

Offset 1, canonical program `A322821.P8922676155250871452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A322821 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322821.P8922676155250871452.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A322821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322869.P13858766443451224919

`A000120(A048675(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322869.P13858766443451224919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A048675 (n + 1)).toNat

end

end A322869.P13858766443451224919

noncomputable section

/-- A322869: a(n) = A000120(A048675(n)).

Offset 1, canonical program `A322869.P13858766443451224919`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322869 (n : ℕ) : ℤ :=
  A322869.P13858766443451224919.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322869.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323166.P16142621323895947341

`gcd(n+1, A034448(n+1))`
-/

namespace A323166.P16142621323895947341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A034448 (n + 1))

end

end A323166.P16142621323895947341

noncomputable section

/-- A323166: Greatest common divisor of Product (1+(p_i^e_i)) and n, when n = Product (p_i^e_i); a(n) = gcd(A034448(n), n).

Offset 1, canonical program `A323166.P16142621323895947341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323166 (n : ℕ) : ℤ :=
  (A323166.P16142621323895947341.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323309.P4763907514139962917

`∏{p}[n+1, #]*A034448((n+1)/∏{p}[n+1, #])`
-/

namespace A323309.P4763907514139962917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A034448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A323309.P4763907514139962917

noncomputable section

/-- A323309: The sum of exponential semiproper divisors of n.

Offset 1, canonical program `A323309.P4763907514139962917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323309 (n : ℕ) : ℤ :=
  A323309.P4763907514139962917.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323406.P11415972862386932007

`gcd(A034448(n+1), A047994(n+1))`
-/

namespace A323406.P11415972862386932007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034448 (n + 1)) (A047994 (n + 1))

end

end A323406.P11415972862386932007

noncomputable section

/-- A323406: Greatest common divisor of Product (p_i^e_i)-1 and Product (p_i^e_i)+1, when n = Product (p_i^e_i): a(n) = gcd(A047994(n), A034448(n)).

Offset 1, canonical program `A323406.P11415972862386932007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323406 (n : ℕ) : ℤ :=
  (A323406.P11415972862386932007.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324286.P15965892089874497265

`A002487(A048675(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324286.P15965892089874497265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A048675 (n + 1)).toNat

end

end A324286.P15965892089874497265

noncomputable section

/-- A324286: a(n) = A002487(A048675(n)).

Offset 1, canonical program `A324286.P15965892089874497265`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324286 (n : ℕ) : ℤ :=
  A324286.P15965892089874497265.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324286.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A326128.P15322917289426910068

`A326127(n+1)+A033879(n+1)`
-/

namespace A326128.P15322917289426910068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326127 (n + 1) + A033879 (n + 1)

end

end A326128.P15322917289426910068

noncomputable section

/-- A326128: a(n) = n - A007913(n), where A007913 gives the squarefree part of n.

Offset 1, canonical program `A326128.P15322917289426910068`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033879, A326127, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326128 (n : ℕ) : ℤ :=
  A326128.P15322917289426910068.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033879, A326127, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326128.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326129.P1438235088589070107

`gcd(-(2*n+2-∑{d}[n+1, #]), A326127(n+1))`
-/

namespace A326129.P1438235088589070107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-((2 * n : ℤ) + (2 - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)))) (A326127 (n + 1))

end

end A326129.P1438235088589070107

noncomputable section

/-- A326129: a(n) = gcd(A326127(n), A326128(n)).

Offset 1, canonical program `A326129.P1438235088589070107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326129 (n : ℕ) : ℤ :=
  (A326129.P1438235088589070107.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327303.P4551057521544503163

`(A268922(n)+A048899(n))%A000351(n)`
-/

namespace A327303.P4551057521544503163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268922 n + A048899 n) (A000351 n)

end

end A327303.P4551057521544503163

noncomputable section

/-- A327303: One of the two successive approximations up to 5^n for the 5-adic integer sqrt(-9). This is the 4 (mod 5) case (except for n = 0).

Offset 0, canonical program `A327303.P4551057521544503163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A327303 (n : ℕ) : ℤ :=
  A327303.P4551057521544503163.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A327303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327521.P11512519751854333035

`A259936(A005117(n+1))`
-/

namespace A327521.P11512519751854333035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259936 (A005117 (n + 1)).toNat

end

end A327521.P11512519751854333035

noncomputable section

/-- A327521: Number of factorizations of the n-th squarefree number A005117(n) into squarefree numbers > 1.

Offset 1, canonical program `A327521.P11512519751854333035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327521 (n : ℕ) : ℤ :=
  A327521.P11512519751854333035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327863.P18152964582640345316

`∪[A373478(n+1), A008591(n)]`
-/

namespace A327863.P18152964582640345316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327863.P18152964582640345316

noncomputable section

/-- A327863: Numbers whose arithmetic derivative is a multiple of 3, cf. A003415.

Offset 1, canonical program `A327863.P18152964582640345316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327863 (n : ℕ) : ℤ :=
  (A327863.P18152964582640345316.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327972.P3607971557437902118

`xor(A038184(n), A110240(n))`
-/

namespace A327972.P3607971557437902118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A038184 n) (A110240 n)

end

end A327972.P3607971557437902118

noncomputable section

/-- A327972: Bitwise XOR of trajectories of rule 30 and rule 150, when both are started from a lone 1 cell: a(n) = A110240(n) XOR A038184(n).

Offset 0, canonical program `A327972.P3607971557437902118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A327972 (n : ℕ) : ℤ :=
  A327972.P3607971557437902118.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A327972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327973.P1696469239648925767

`xor(2*A110240(n), A110240(n+1))`
-/

namespace A327973.P1696469239648925767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A110240 n) (A110240 (n + 1))

end

end A327973.P1696469239648925767

noncomputable section

/-- A327973: Bitwise XOR of two successive generations (centrally aligned) in the trajectory of rule 30 started from a lone 1 cell: a(n) = A110240(n) XOR 2*A110240(n-1).

Offset 1, canonical program `A327973.P1696469239648925767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A327973 (n : ℕ) : ℤ :=
  A327973.P1696469239648925767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A327973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328104.P17298012771272886420

`A163617(A110240(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328104.P17298012771272886420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 (A110240 n).toNat

end

end A328104.P17298012771272886420

noncomputable section

/-- A328104: a(n) = A163617(A110240(n)) = A110240(n) OR 2*A110240(n).

Offset 0, canonical program `A328104.P17298012771272886420`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328104 (n : ℕ) : ℤ :=
  A328104.P17298012771272886420.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328104.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329586.P2238239881953716898

`(A057427(n)+1)*A086669(n+1)`
-/

namespace A329586.P2238239881953716898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A086669 (n + 1)

end

end A329586.P2238239881953716898

noncomputable section

/-- A329586: Row lengths of A329585: number of solutions of the congruences x^2 == +1 (mod n) or (inclusive) x^2 == -1 (mod n), for n >= 1.

Offset 1, canonical program `A329586.P2238239881953716898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329586 (n : ℕ) : ℤ :=
  A329586.P2238239881953716898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332813.P5944924483194597877

`A010872(A048675(n+1))`
-/

namespace A332813.P5944924483194597877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A048675 (n + 1)).toNat

end

end A332813.P5944924483194597877

noncomputable section

/-- A332813: a(n) = A048675(n) mod 3.

Offset 1, canonical program `A332813.P5944924483194597877`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332813 (n : ℕ) : ℤ :=
  A332813.P5944924483194597877.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332813.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332823.P6707942267644391447

`A102283(A048675(n+1))`
-/

namespace A332823.P6707942267644391447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A048675 (n + 1)).toNat

end

end A332823.P6707942267644391447

noncomputable section

/-- A332823: A 3-way classification indicator generated by the products of two consecutive primes and the cubes of primes. a(n) is -1, 0, or 1 such that a(n) == A048675(n) (mod 3).

Offset 1, canonical program `A332823.P6707942267644391447`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332823 (n : ℕ) : ℤ :=
  A332823.P6707942267644391447.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332823.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332881.P8554894844643309749

`A017666(∏{p}[n+1, #])`
-/

namespace A332881.P8554894844643309749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A332881.P8554894844643309749

noncomputable section

/-- A332881: If n = Product (p_j^k_j) then a(n) = denominator of Product (1 + 1/p_j).

Offset 1, canonical program `A332881.P8554894844643309749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332881 (n : ℕ) : ℤ :=
  A332881.P8554894844643309749.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333199.P5004072551827767386

`p?[A049441(n+1)+1]`
-/

namespace A333199.P5004072551827767386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049441 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A333199.P5004072551827767386

noncomputable section

/-- A333199: Primes in A180646.

Offset 1, canonical program `A333199.P5004072551827767386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1256 terms. -/
def A333199 (n : ℕ) : ℤ :=
  A333199.P5004072551827767386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1256 terms. -/
def A333199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335328.P9024646742360157798

`∩[A048109(n+1)-1, A048109(n+1)]`
-/

namespace A335328.P9024646742360157798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335328.P9024646742360157798

noncomputable section

/-- A335328: Number k such that both k and k+1 have an equal number of unitary and nonunitary divisors.

Offset 1, canonical program `A335328.P9024646742360157798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. -/
def A335328 (n : ℕ) : ℤ :=
  (A335328.P9024646742360157798.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. -/
def A335328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335402.P11597769619180646528

`A185013(n)+A158611(n+1)`
-/

namespace A335402.P11597769619180646528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185013 n + A158611 (n + 1)

end

end A335402.P11597769619180646528

noncomputable section

/-- A335402: Numbers m such that the only normal integer partition of m whose run-lengths are a palindrome is (1)^m.

Offset 1, canonical program `A335402.P11597769619180646528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335402 (n : ℕ) : ℤ :=
  A335402.P11597769619180646528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335647.P9265258860300362603

`A000260(n)*A060544(n+1)`
-/

namespace A335647.P9265258860300362603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000260 n * A060544 (n + 1)

end

end A335647.P9265258860300362603

noncomputable section

/-- A335647: a(n) = binomial(4*n+1,n+1).

Offset 0, canonical program `A335647.P9265258860300362603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A335647 (n : ℕ) : ℤ :=
  A335647.P9265258860300362603.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A335647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336415.P15157755128090898253

`A048675(n)+a(n-1)` with `a(0)=1`
-/

namespace A336415.P15157755128090898253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048675 n + a (n - 1)

end

end A336415.P15157755128090898253

noncomputable section

/-- A336415: Number of divisors of n! with equal prime multiplicities.

Offset 0, canonical program `A336415.P15157755128090898253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2239 terms. -/
def A336415 (n : ℕ) : ℤ :=
  A336415.P15157755128090898253.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2239 terms. -/
def A336415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338090.P15372758782362634063

`comp[A037477(n)]%A000969(2*n+3)`
-/

namespace A338090.P15372758782362634063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A000969 (2 * n + 3))

end

end A338090.P15372758782362634063

noncomputable section

/-- A338090: Numbers having at least one 8 in their representation in base 9.

Offset 1, canonical program `A338090.P15372758782362634063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A338090 (n : ℕ) : ℤ :=
  A338090.P15372758782362634063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A338090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338361.P5965664958947979086

`A369610(n+1)+Δ[n²]`
-/

namespace A338361.P5965664958947979086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369610 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A338361.P5965664958947979086

noncomputable section

/-- A338361: Indices of primes in A283312.

Offset 1, canonical program `A338361.P5965664958947979086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7099 terms. -/
def A338361 (n : ℕ) : ℤ :=
  A338361.P5965664958947979086.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7099 terms. -/
def A338361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338521.P3726486366841375083

`A230980(n)-A230980(∑[A005171(n+1)])`
-/

namespace A338521.P3726486366841375083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - A230980 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338521.P3726486366841375083

noncomputable section

/-- A338521: The number of primes between n-primepi(n) and n.

Offset 1, canonical program `A338521.P3726486366841375083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338521 (n : ℕ) : ℤ :=
  A338521.P3726486366841375083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342350.P14229369727761926340

`A139506(gcd(n, n+1)+1)^3+n`
-/

namespace A342350.P14229369727761926340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139506 (Nat.gcd n (n + 1) + 1) ^ 3 + (n : ℤ)

end

end A342350.P14229369727761926340

noncomputable section

/-- A342350: Numbers k such that lcm(1,2,3,...,k)/21 equals the denominator of the k-th harmonic number H(k).

Offset 1, canonical program `A342350.P14229369727761926340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342350 (n : ℕ) : ℤ :=
  A342350.P14229369727761926340.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342350.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A344584.P9009511371490729863

`A319684(n+1)-A001065(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344584.P9009511371490729863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319684 (n + 1) - A001065 (n + 1)

end

end A344584.P9009511371490729863

noncomputable section

/-- A344584: Difference between the inverse Möbius transform of the arithmetic derivative of n and the sum of the proper divisors of n: a(n) = A319684(n) - A001065(n).

Offset 1, canonical program `A344584.P9009511371490729863`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, A319684, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344584 (n : ℕ) : ℤ :=
  A344584.P9009511371490729863.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, A319684, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344584.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344696.P8047274283818792486

`A000203(n+1)/A344695(n+1)`
-/

namespace A344696.P8047274283818792486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A344695 (n + 1) : ℚ)

end

end A344696.P8047274283818792486

noncomputable section

/-- A344696: a(n) = sigma(n) / gcd(sigma(n), A001615(n)).

Offset 1, canonical program `A344696.P8047274283818792486`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344696 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A344696.P8047274283818792486.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344696.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344697.P12307976047928248051

`A001615(n+1)/A344695(n+1)`
-/

namespace A344697.P12307976047928248051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A344695 (n + 1) : ℚ)

end

end A344697.P12307976047928248051

noncomputable section

/-- A344697: a(n) = A001615(n) / gcd(sigma(n), A001615(n)).

Offset 1, canonical program `A344697.P12307976047928248051`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A344695, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344697 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A344697.P12307976047928248051.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A344695, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344697.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A347132.P12449885235139872301

`∑{d}[n+1, A063659(#)*A319684((n+1)/#)]`
-/

namespace A347132.P12449885235139872301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A319684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347132.P12449885235139872301

noncomputable section

/-- A347132: a(n) = Sum_{d|n} A001615(n/d) * A003415(d), where A003415 is the arithmetic derivative and A001615 is Dedekind psi function.

Offset 1, canonical program `A347132.P12449885235139872301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347132 (n : ℕ) : ℤ :=
  A347132.P12449885235139872301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347132.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A350389.P10522504905651656990

`gcd(n+1, A071975(n+1)²)`
-/

namespace A350389.P10522504905651656990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A071975 (n + 1) ^ 2)

end

end A350389.P10522504905651656990

noncomputable section

/-- A350389: a(n) is the largest unitary divisor of n that is an exponentially odd number (A268335).

Offset 1, canonical program `A350389.P10522504905651656990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350389 (n : ℕ) : ℤ :=
  (A350389.P10522504905651656990.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350390.P17204626870696815816

`gcd(n+1, A011262(n+1))`
-/

namespace A350390.P17204626870696815816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A011262 (n + 1))

end

end A350390.P17204626870696815816

noncomputable section

/-- A350390: a(n) is the largest exponentially odd divisor of n.

Offset 1, canonical program `A350390.P17204626870696815816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350390 (n : ℕ) : ℤ :=
  (A350390.P17204626870696815816.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353350.P17688933372676458567

`A079978(A048675(n+1))`
-/

namespace A353350.P17688933372676458567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A048675 (n + 1)).toNat

end

end A353350.P17688933372676458567

noncomputable section

/-- A353350: a(n) = 1 if A048675(n) is a multiple of 3, otherwise 0.

Offset 1, canonical program `A353350.P17688933372676458567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353350 (n : ℕ) : ℤ :=
  A353350.P17688933372676458567.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353350.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353360.P3063535457221817968

`A006047(A048675(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353360.P3063535457221817968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A048675 (n + 1)).toNat

end

end A353360.P3063535457221817968

noncomputable section

/-- A353360: a(n) = A006047(A048675(n)).

Offset 1, canonical program `A353360.P3063535457221817968`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353360 (n : ℕ) : ℤ :=
  A353360.P3063535457221817968.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357077.P18209968260014703734

`∩[A033942(n+1)-1, A033942(n+1)]`
-/

namespace A357077.P18209968260014703734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357077.P18209968260014703734

noncomputable section

/-- A357077: The lesser of two consecutive numbers with at least 3 prime factors (counted with multiplicity).

Offset 1, canonical program `A357077.P18209968260014703734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5053 terms. -/
def A357077 (n : ℕ) : ℤ :=
  (A357077.P18209968260014703734.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5053 terms. -/
def A357077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360125.P8640991440014561384

`A319684(gcd(xor(1, n²), ∑[n]))%2`
-/

namespace A360125.P8640991440014561384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319684 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j))) 2

end

end A360125.P8640991440014561384

noncomputable section

/-- A360125: Parity of A359425, where A359425 is Dirichlet convolution of the arithmetic derivative with the primorial base exp-function.

Offset 1, canonical program `A360125.P8640991440014561384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360125 (n : ℕ) : ℤ :=
  A360125.P8640991440014561384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360540.P17983451323548699301

`A057521((n+1)/A368884(n+1))`
-/

namespace A360540.P17983451323548699301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A368884 (n + 1) : ℚ))).toNat

end

end A360540.P17983451323548699301

noncomputable section

/-- A360540: a(n) is the cubefull part of n: the largest divisor of n that is a cubefull number (A036966).

Offset 1, canonical program `A360540.P17983451323548699301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360540 (n : ℕ) : ℤ :=
  A360540.P17983451323548699301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361023.P14930666905499730848

`A000035(A017666(n+1))`
-/

namespace A361023.P14930666905499730848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A017666 (n + 1)).toNat

end

end A361023.P14930666905499730848

noncomputable section

/-- A361023: a(n) = 1 if A007814(sigma(n)) >= A007814(n), otherwise 0, where A007814(n) gives the 2-adic valuation of n.

Offset 1, canonical program `A361023.P14930666905499730848`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361023 (n : ℕ) : ℤ :=
  A361023.P14930666905499730848.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361023.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361822.P6850116414336837406

`∩[A038604(n+1), A038613(n+1)]`
-/

namespace A361822.P6850116414336837406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361822.P6850116414336837406

noncomputable section

/-- A361822: Primes without {2, 5} as digits.

Offset 1, canonical program `A361822.P6850116414336837406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6069 terms. -/
def A361822 (n : ℕ) : ℤ :=
  (A361822.P6850116414336837406.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6069 terms. -/
def A361822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363340.P4961024264338240410

`A170819(A071975(n+1))`
-/

namespace A363340.P4961024264338240410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170819 (A071975 (n + 1)).toNat

end

end A363340.P4961024264338240410

noncomputable section

/-- A363340: a(n) is the smallest positive integer such that a(n) * n is the sum of two squares.

Offset 1, canonical program `A363340.P4961024264338240410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363340 (n : ℕ) : ℤ :=
  A363340.P4961024264338240410.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364834.P5622700448256645935

`∑[(n+1)%A370566(n+1)]`
-/

namespace A364834.P5622700448256645935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A370566 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364834.P5622700448256645935

noncomputable section

/-- A364834: Sum of positive integers <= n which are multiples of 2 or 5.

Offset 1, canonical program `A364834.P5622700448256645935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364834 (n : ℕ) : ℤ :=
  A364834.P5622700448256645935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365481.P1464399246312579557

`A034448((n+1)/∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A365481.P1464399246312579557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ))).toNat

end

end A365481.P1464399246312579557

noncomputable section

/-- A365481: The sum of unitary divisors of the smallest number whose square is divisible by n.

Offset 1, canonical program `A365481.P1464399246312579557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365481 (n : ℕ) : ℤ :=
  A365481.P1464399246312579557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365481.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A365680.P3625310981199113847

`∑{d}[n+1, A370598(#)]`
-/

namespace A365680.P3625310981199113847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A370598 d

end

end A365680.P3625310981199113847

noncomputable section

/-- A365680: The number of exponentially squarefree divisors of n.

Offset 1, canonical program `A365680.P3625310981199113847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365680 (n : ℕ) : ℤ :=
  A365680.P3625310981199113847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365682.P17785449757438465592

`∑{d}[n+1, #*A370598(#)]`
-/

namespace A365682.P17785449757438465592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A370598 d

end

end A365682.P17785449757438465592

noncomputable section

/-- A365682: The sum of exponentially squarefree divisors of n.

Offset 1, canonical program `A365682.P17785449757438465592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365682 (n : ℕ) : ℤ :=
  A365682.P17785449757438465592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365682.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A366535.P17157640204726655223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7055 terms. -/
def A366535 (n : ℕ) : ℤ :=
  A366535.P17157640204726655223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7055 terms. -/
def A366535.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A366537.P6054453668731544926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8319 terms. -/
def A366537 (n : ℕ) : ℤ :=
  A366537.P6054453668731544926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8319 terms. -/
def A366537.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A366539.P359693618397037836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8727 terms. -/
def A366539 (n : ℕ) : ℤ :=
  A366539.P359693618397037836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8727 terms. -/
def A366539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366765.P15880116743142061800

`(n+1)/A329376(n+1)`
-/

namespace A366765.P15880116743142061800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A329376 (n + 1) : ℚ)

end

end A366765.P15880116743142061800

noncomputable section

/-- A366765: The largest divisor of n that have no exponent 2 in their prime factorization.

Offset 1, canonical program `A366765.P15880116743142061800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366765 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A366765.P15880116743142061800.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370783.P203709026749256772

`A332880(A003557(n+1))`
-/

namespace A370783.P203709026749256772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332880 (A003557 (n + 1)).toNat

end

end A370783.P203709026749256772

noncomputable section

/-- A370783: a(n) is the numerator of the sum of the reciprocals of the squarefree divisors of the powerful part of n.

Offset 1, canonical program `A370783.P203709026749256772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370783 (n : ℕ) : ℤ :=
  A370783.P203709026749256772.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370784.P9091259669737117477

`A017666(∏{p}[ceil(n/∏{p}[n+1, #]), #])`
-/

namespace A370784.P9091259669737117477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A370784.P9091259669737117477

noncomputable section

/-- A370784: a(n) is the denominator of the sum of the reciprocals of the squarefree divisors of the powerful part of n.

Offset 1, canonical program `A370784.P9091259669737117477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370784 (n : ℕ) : ℤ :=
  A370784.P9091259669737117477.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370784.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A371242.P9923243435576560346

`A034448(A360539(n+1))`
-/

namespace A371242.P9923243435576560346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A360539 (n + 1)).toNat

end

end A371242.P9923243435576560346

noncomputable section

/-- A371242: The sum of the unitary divisors of n that are cubefree numbers (A004709).

Offset 1, canonical program `A371242.P9923243435576560346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371242 (n : ℕ) : ℤ :=
  A371242.P9923243435576560346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371672.P8531591036181247015

`floor(log2(A105425(n+1)))`
-/

namespace A371672.P8531591036181247015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A105425 (n + 1)).toNat

end

end A371672.P8531591036181247015

noncomputable section

/-- A371672: a(n) = floor(log_phi(n)) with phi = A001622.

Offset 1, canonical program `A371672.P8531591036181247015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371672 (n : ℕ) : ℤ :=
  (A371672.P8531591036181247015.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372638.P3612141055778573363

`∑[A359102(n+1)]`
-/

namespace A372638.P3612141055778573363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372638.P3612141055778573363

noncomputable section

/-- A372638: a(n) = (1/6) * Sum_{k=1..n} phi(7*k).

Offset 1, canonical program `A372638.P3612141055778573363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372638 (n : ℕ) : ℤ :=
  A372638.P3612141055778573363.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376216.P15355088566132048219

`lt[2, A336643(n+1)]+1`
-/

namespace A376216.P15355088566132048219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A376216.P15355088566132048219

noncomputable section

/-- A376216: Numbers whose sum of powerful divisors (including 1) is even.

Offset 1, canonical program `A376216.P15355088566132048219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7718 terms. -/
def A376216 (n : ℕ) : ℤ :=
  (A376216.P15355088566132048219.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7718 terms. -/
def A376216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379717.P14748577597787878202

`A001615(A004709(n+1))*A358039(n+1)`
-/

namespace A379717.P14748577597787878202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A004709 (n + 1)).toNat * A358039 (n + 1)

end

end A379717.P14748577597787878202

noncomputable section

/-- A379717: The second Jordan totient function applied to the cubefree numbers.

Offset 1, canonical program `A379717.P14748577597787878202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8319 terms. -/
def A379717 (n : ℕ) : ℤ :=
  A379717.P14748577597787878202.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8319 terms. -/
def A379717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380160.P13502137117225350475

`A055229(n+1)*A380162(n+1)`
-/

namespace A380160.P13502137117225350475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (n + 1) * A380162 (n + 1)

end

end A380160.P13502137117225350475

noncomputable section

/-- A380160: a(n) is the value of the Euler totient function when applied to the powerful part of n.

Offset 1, canonical program `A380160.P13502137117225350475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380160 (n : ℕ) : ℤ :=
  A380160.P13502137117225350475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380906.P1124574358086231309

`∩[A038611(n+1), A038613(n+1)]`
-/

namespace A380906.P1124574358086231309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380906.P1124574358086231309

noncomputable section

/-- A380906: Primes without {3, 5} as digits.

Offset 1, canonical program `A380906.P1124574358086231309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4595 terms. -/
def A380906 (n : ℕ) : ℤ :=
  (A380906.P1124574358086231309.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4595 terms. -/
def A380906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385056.P8356949584126606895

`∩[A038618(n+1), A062372(n+1)]`
-/

namespace A385056.P8356949584126606895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385056.P8356949584126606895

noncomputable section

/-- A385056: Prime numbers whose digit product is a positive cube.

Offset 1, canonical program `A385056.P8356949584126606895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 369 terms. -/
def A385056 (n : ℕ) : ℤ :=
  (A385056.P8356949584126606895.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 369 terms. -/
def A385056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386133.P16322278265495054683

`∩[A030096(n+1), A386335(n+1)]`
-/

namespace A386133.P16322278265495054683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386133.P16322278265495054683

noncomputable section

/-- A386133: Primes having only {1, 5, 7, 9} as digits.

Offset 1, canonical program `A386133.P16322278265495054683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 539 terms. -/
def A386133 (n : ℕ) : ℤ :=
  (A386133.P16322278265495054683.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 539 terms. -/
def A386133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386320.P14006571934998227672

`∩[A038604(n+1), A038618(n+1)]`
-/

namespace A386320.P14006571934998227672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386320.P14006571934998227672

noncomputable section

/-- A386320: Primes without {0, 2} as digits.

Offset 1, canonical program `A386320.P14006571934998227672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6078 terms. -/
def A386320 (n : ℕ) : ℤ :=
  (A386320.P14006571934998227672.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6078 terms. -/
def A386320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386321.P12129189404841943891

`∩[A038611(n+1), A038618(n+1)]`
-/

namespace A386321.P12129189404841943891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386321.P12129189404841943891

noncomputable section

/-- A386321: Primes without {0, 3} as digits.

Offset 1, canonical program `A386321.P12129189404841943891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4539 terms. -/
def A386321 (n : ℕ) : ℤ :=
  (A386321.P12129189404841943891.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4539 terms. -/
def A386321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386323.P16520229065117616976

`∩[A038613(n+1), A195943(n+1)]`
-/

namespace A386323.P16520229065117616976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386323.P16520229065117616976

noncomputable section

/-- A386323: Primes without {0, 5} as digits.

Offset 1, canonical program `A386323.P16520229065117616976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6265 terms. -/
def A386323 (n : ℕ) : ℤ :=
  (A386323.P16520229065117616976.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6265 terms. -/
def A386323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386324.P16760202649174605299

`∩[A038614(n+1), A038618(n+1)]`
-/

namespace A386324.P16760202649174605299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386324.P16760202649174605299

noncomputable section

/-- A386324: Primes without {0, 6} as digits.

Offset 1, canonical program `A386324.P16760202649174605299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6574 terms. -/
def A386324 (n : ℕ) : ℤ :=
  (A386324.P16760202649174605299.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6574 terms. -/
def A386324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386326.P17139648770102794594

`∩[A038616(n+1), A038618(n+1)]`
-/

namespace A386326.P17139648770102794594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386326.P17139648770102794594

noncomputable section

/-- A386326: Primes without {0, 8} as digits.

Offset 1, canonical program `A386326.P17139648770102794594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6650 terms. -/
def A386326 (n : ℕ) : ℤ :=
  (A386326.P17139648770102794594.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6650 terms. -/
def A386326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386337.P5423590144065966214

`∩[A038604(n+1), A038614(n+1)]`
-/

namespace A386337.P5423590144065966214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386337.P5423590144065966214

noncomputable section

/-- A386337: Primes without {2, 6} as digits.

Offset 1, canonical program `A386337.P5423590144065966214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6055 terms. -/
def A386337 (n : ℕ) : ℤ :=
  (A386337.P5423590144065966214.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6055 terms. -/
def A386337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386338.P12113303320728621064

`∩[A038604(n+1), A038616(n+1)]`
-/

namespace A386338.P12113303320728621064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386338.P12113303320728621064

noncomputable section

/-- A386338: Primes without {2, 8} as digits.

Offset 1, canonical program `A386338.P12113303320728621064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386338 (n : ℕ) : ℤ :=
  (A386338.P12113303320728621064.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386341.P11111794436961837809

`∩[A038611(n+1), A038614(n+1)]`
-/

namespace A386341.P11111794436961837809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386341.P11111794436961837809

noncomputable section

/-- A386341: Primes without {3, 6} as digits.

Offset 1, canonical program `A386341.P11111794436961837809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4574 terms. -/
def A386341 (n : ℕ) : ℤ :=
  (A386341.P11111794436961837809.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4574 terms. -/
def A386341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386343.P17130214579981136633

`∩[A038611(n+1), A038616(n+1)]`
-/

namespace A386343.P17130214579981136633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386343.P17130214579981136633

noncomputable section

/-- A386343: Primes without {3, 8} as digits.

Offset 1, canonical program `A386343.P17130214579981136633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386343 (n : ℕ) : ℤ :=
  (A386343.P17130214579981136633.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386350.P2011497625234474322

`∩[A038613(n+1), A038614(n+1)]`
-/

namespace A386350.P2011497625234474322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386350.P2011497625234474322

noncomputable section

/-- A386350: Primes without {5, 6} as digits.

Offset 1, canonical program `A386350.P2011497625234474322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6138 terms. -/
def A386350 (n : ℕ) : ℤ :=
  (A386350.P2011497625234474322.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6138 terms. -/
def A386350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386352.P14653844485856961628

`∩[A038613(n+1), A038616(n+1)]`
-/

namespace A386352.P14653844485856961628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386352.P14653844485856961628

noncomputable section

/-- A386352: Primes without {5, 8} as digits.

Offset 1, canonical program `A386352.P14653844485856961628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6176 terms. -/
def A386352 (n : ℕ) : ℤ :=
  (A386352.P14653844485856961628.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6176 terms. -/
def A386352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386355.P6323683761705395638

`∩[A038614(n+1), A038616(n+1)]`
-/

namespace A386355.P6323683761705395638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386355.P6323683761705395638

noncomputable section

/-- A386355: Primes without {6, 8} as digits.

Offset 1, canonical program `A386355.P6323683761705395638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6573 terms. -/
def A386355 (n : ℕ) : ℤ :=
  (A386355.P6323683761705395638.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6573 terms. -/
def A386355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388980.P7749532260466869095

`filter[A229125(n+1), A354034(#)]`
-/

namespace A388980.P7749532260466869095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A388980.P7749532260466869095

noncomputable section

/-- A388980: Even numbers of the form p * m^2, where p is prime and m > 0.

Offset 1, canonical program `A388980.P7749532260466869095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3042 terms. -/
def A388980 (n : ℕ) : ℤ :=
  A388980.P7749532260466869095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3042 terms. -/
def A388980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389065.P446033477229377007

`filter[A052485(n+1), A005171(#)]`
-/

namespace A389065.P446033477229377007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A389065.P446033477229377007

noncomputable section

/-- A389065: Numbers that are neither prime powers nor powerful.

Offset 1, canonical program `A389065.P446033477229377007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8749 terms. -/
def A389065 (n : ℕ) : ℤ :=
  A389065.P446033477229377007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8749 terms. -/
def A389065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389162.P5482749429256733056

`A034448(n+1)-A048250(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389162.P5482749429256733056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - A048250 (n + 1)

end

end A389162.P5482749429256733056

noncomputable section

/-- A389162: a(n) = A034448(n) - A048250(n), where A034448 is the sum of unitary divisors and A048250 is the sum of squarefree divisors.

Offset 1, canonical program `A389162.P5482749429256733056`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389162 (n : ℕ) : ℤ :=
  A389162.P5482749429256733056.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389162.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391958.P4973106280450321391

`A187059(n)+A187059(n)+A011371(n)`
-/

namespace A391958.P4973106280450321391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187059 n + (A187059 n + A011371 n)

end

end A391958.P4973106280450321391

noncomputable section

/-- A391958: First column of A391957.

Offset 0, canonical program `A391958.P4973106280450321391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391958 (n : ℕ) : ℤ :=
  A391958.P4973106280450321391.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291641.P4805494574019733392

`eq[2, A333206(n)]`
-/

namespace A291641.P4805494574019733392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291641.P4805494574019733392

noncomputable section

/-- A291641: Numbers k such that 2 is the smallest decimal digit of k^3.

Offset 1, canonical program `A291641.P4805494574019733392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 630 terms. -/
def A291641 (n : ℕ) : ℤ :=
  (A291641.P4805494574019733392.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 630 terms. -/
def A291641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291642.P13038753502478863596

`eq[3, A333206(n)]`
-/

namespace A291642.P13038753502478863596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291642.P13038753502478863596

noncomputable section

/-- A291642: Numbers k such that 3 is the smallest decimal digit of k^3.

Offset 1, canonical program `A291642.P13038753502478863596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A291642 (n : ℕ) : ℤ :=
  (A291642.P13038753502478863596.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A291642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300251.P13750012435361977920

`∑{d}[n+1, A007427(#)*A319684((n+1)/#)]`
-/

namespace A300251.P13750012435361977920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A319684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300251.P13750012435361977920

noncomputable section

/-- A300251: Möbius transform of arithmetic derivative (A003415).

Offset 1, canonical program `A300251.P13750012435361977920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300251 (n : ℕ) : ℤ :=
  A300251.P13750012435361977920.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361670.P7731018858254432238

`A364900(n+1)*A364900(n)`
-/

namespace A361670.P7731018858254432238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364900 (n + 1) * A364900 n

end

end A361670.P7731018858254432238

noncomputable section

/-- A361670: Squarefree part of the n-th triangular number.

Offset 1, canonical program `A361670.P7731018858254432238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361670 (n : ℕ) : ℤ :=
  A361670.P7731018858254432238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366960.P14113807688568308762

`eq[3, A037904(n+1)]+1`
-/

namespace A366960.P14113807688568308762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A366960.P14113807688568308762

noncomputable section

/-- A366960: Numbers whose difference between the largest and smallest digits is equal to 3.

Offset 1, canonical program `A366960.P14113807688568308762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 865 terms. -/
def A366960 (n : ℕ) : ℤ :=
  (A366960.P14113807688568308762.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 865 terms. -/
def A366960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366961.P17753619816558675089

`eq[4, A037904(n+1)]+1`
-/

namespace A366961.P17753619816558675089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A366961.P17753619816558675089

noncomputable section

/-- A366961: Numbers whose difference between the largest and smallest digits is equal to 4.

Offset 1, canonical program `A366961.P17753619816558675089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A366961 (n : ℕ) : ℤ :=
  (A366961.P17753619816558675089.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A366961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366963.P13437376339825858114

`eq[6, A037904(n+1)]+1`
-/

namespace A366963.P13437376339825858114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A366963.P13437376339825858114

noncomputable section

/-- A366963: Numbers whose difference between the largest and smallest digits is equal to 6.

Offset 1, canonical program `A366963.P13437376339825858114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1747 terms. -/
def A366963 (n : ℕ) : ℤ :=
  (A366963.P13437376339825858114.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1747 terms. -/
def A366963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366964.P211205205802012678

`eq[7, A037904(n+1)]+1`
-/

namespace A366964.P211205205802012678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A366964.P211205205802012678

noncomputable section

/-- A366964: Numbers whose difference between the largest and smallest digits is equal to 7.

Offset 1, canonical program `A366964.P211205205802012678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1717 terms. -/
def A366964 (n : ℕ) : ℤ :=
  (A366964.P211205205802012678.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1717 terms. -/
def A366964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366965.P15368654095798603801

`eq[8, A037904(n+1)]+1`
-/

namespace A366965.P15368654095798603801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A366965.P15368654095798603801

noncomputable section

/-- A366965: Numbers whose difference between the largest and smallest digits is equal to 8.

Offset 1, canonical program `A366965.P15368654095798603801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1405 terms. -/
def A366965 (n : ℕ) : ℤ :=
  (A366965.P15368654095798603801.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1405 terms. -/
def A366965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373934.P2638291770601585293

`A373935(n+2)-A373935(n+1)`
-/

namespace A373934.P2638291770601585293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373935 (n + 2) - A373935 (n + 1)

end

end A373934.P2638291770601585293

noncomputable section

/-- A373934: Number of compositions of 7*n-2 into parts 6 and 7.

Offset 1, canonical program `A373934.P2638291770601585293`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373935, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373934 (n : ℕ) : ℤ :=
  A373934.P2638291770601585293.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373935, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373934.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373961.P18328240497616127407

`A373962(n+2)-A373962(n+1)`
-/

namespace A373961.P18328240497616127407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373962 (n + 2) - A373962 (n + 1)

end

end A373961.P18328240497616127407

noncomputable section

/-- A373961: Number of compositions of 6*n-1 into parts 5 and 6.

Offset 1, canonical program `A373961.P18328240497616127407`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373962, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373961 (n : ℕ) : ℤ :=
  A373961.P18328240497616127407.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373962, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373961.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A310533.P10206175859937310339

`2*A314253(n)-A008458(n)`
-/

namespace A310533.P10206175859937310339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314253 n - A008458 n

end

end A310533.P10206175859937310339

noncomputable section

/-- A310533: Coordination sequence Gal.6.334.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310533.P10206175859937310339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1966 terms. -/
def A310533 (n : ℕ) : ℤ :=
  A310533.P10206175859937310339.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1966 terms. -/
def A310533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312944.P10352977025746883391

`A004396(A314253(n)+n)`
-/

namespace A312944.P10352977025746883391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314253 n + (n : ℤ)).toNat

end

end A312944.P10352977025746883391

noncomputable section

/-- A312944: Coordination sequence Gal.6.245.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312944.P10352977025746883391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1467 terms. -/
def A312944 (n : ℕ) : ℤ :=
  A312944.P10352977025746883391.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1467 terms. -/
def A312944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286956.P16005335099664677132

`A010815(n)+n`
-/

namespace A286956.P16005335099664677132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n + (n : ℤ)

end

end A286956.P16005335099664677132

noncomputable section

/-- A286956: Main diagonal of A286950.

Offset 0, canonical program `A286956.P16005335099664677132`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286956 (n : ℕ) : ℤ :=
  A286956.P16005335099664677132.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286956.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293140.P3221199790550330238

`n!*A010815(n)`
-/

namespace A293140.P3221199790550330238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A010815 n

end

end A293140.P3221199790550330238

noncomputable section

/-- A293140: E.g.f.: Product_{m>0} (1-x^m).

Offset 0, canonical program `A293140.P3221199790550330238`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293140 (n : ℕ) : ℤ :=
  A293140.P3221199790550330238.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293140.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293360.P17948557738983842076

`A293359(n)+1`
-/

namespace A293360.P17948557738983842076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293359 n + 1

end

end A293360.P17948557738983842076

noncomputable section

/-- A293360: Least integer k such that k/2^n > e^2.

Offset 0, canonical program `A293360.P17948557738983842076`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293359, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293360 (n : ℕ) : ℤ :=
  A293360.P17948557738983842076.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293359, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293903.P13391266891711295931

`A091570(n+1)-A293901(n+1)`
-/

namespace A293903.P13391266891711295931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091570 (n + 1) - A293901 (n + 1)

end

end A293903.P13391266891711295931

noncomputable section

/-- A293903: Sum of proper divisors of n of the form 4k+3.

Offset 1, canonical program `A293903.P13391266891711295931`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091570, A293901, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293903 (n : ℕ) : ℤ :=
  A293903.P13391266891711295931.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091570, A293901, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293903.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294284.P6326353456023793442

`∑[A013928(n+1)]-A294146(n+1)`
-/

namespace A294284.P6326353456023793442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A294146 (n + 1)

end

end A294284.P6326353456023793442

noncomputable section

/-- A294284: Sum of the smaller parts of the partitions of n into two distinct parts with larger part squarefree.

Offset 1, canonical program `A294284.P6326353456023793442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294284 (n : ℕ) : ℤ :=
  A294284.P6326353456023793442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295996.P15464028350351248957

`A057427(n)+∑[A055029(4*n+1)]`
-/

namespace A295996.P15464028350351248957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295996.P15464028350351248957

noncomputable section

/-- A295996: One quarter of number of Gaussian primes whose norm is 4*n+1 or less.

Offset 0, canonical program `A295996.P15464028350351248957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A295996 (n : ℕ) : ℤ :=
  A295996.P15464028350351248957.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A295996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303481.P903145872744022410

`(n+1)*A303385(n+1)`
-/

namespace A303481.P903145872744022410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A303385 (n + 1)

end

end A303481.P903145872744022410

noncomputable section

/-- A303481: Total volume of the family of rectangular prisms with dimensions p, q and p + q where p divides q, n = p + q and p < q.

Offset 1, canonical program `A303481.P903145872744022410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303481 (n : ℕ) : ℤ :=
  A303481.P903145872744022410.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303481.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A305439.P10396080351550377806

`A046645(n+1)-A007949(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A305439.P10396080351550377806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) - A007949 (n + 1)

end

end A305439.P10396080351550377806

noncomputable section

/-- A305439: a(n) = A046645(n) - A007949(n); the 2-adic valuation of A317932.

Offset 1, canonical program `A305439.P10396080351550377806`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, A046645, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A305439 (n : ℕ) : ℤ :=
  A305439.P10396080351550377806.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, A046645, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A305439.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317839.P12244377685500386869

`A002487(n+1)-A317840(n+1)`
-/

namespace A317839.P12244377685500386869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) - A317840 (n + 1)

end

end A317839.P12244377685500386869

noncomputable section

/-- A317839: Möbius transform of A002487, Stern's Diatomic sequence.

Offset 1, canonical program `A317839.P12244377685500386869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317839 (n : ℕ) : ℤ :=
  A317839.P12244377685500386869.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317989.P5592327749081504297

`A000079(∑{p}[A003658(n+2), A001221(#)]-1)`
-/

namespace A317989.P5592327749081504297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p - 1).toNat

end

end A317989.P5592327749081504297

noncomputable section

/-- A317989: Number of genera of the real quadratic field with discriminant A003658(n), n >= 2.

Offset 2, canonical program `A317989.P5592327749081504297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A317989 (n : ℕ) : ℤ :=
  A317989.P5592327749081504297.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A317989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318512.P17152244906020944566

`ceil(A299150(n+1)/A006519(n+1))`
-/

namespace A318512.P17152244906020944566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A299150 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)⌉

end

end A318512.P17152244906020944566

noncomputable section

/-- A318512: Denominators (in their lowest terms) of the sequence whose Dirichlet convolution with itself yields squares (A000290), or equally A064549.

Offset 1, canonical program `A318512.P17152244906020944566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318512 (n : ℕ) : ℤ :=
  A318512.P17152244906020944566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324659.P451335093830536093

`A318468(n+1)/2`
-/

namespace A324659.P451335093830536093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318468 (n + 1) : ℚ) / 2

end

end A324659.P451335093830536093

noncomputable section

/-- A324659: a(n) = (1/2)*A318468(n), where A318468(n) is bitwise-AND of 2*n and sigma(n).

Offset 1, canonical program `A324659.P451335093830536093`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324659 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A324659.P451335093830536093.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324659.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325421.P4803804597475767812

`∩[A084646(n+1), A100490(n)]`
-/

namespace A325421.P4803804597475767812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325421.P4803804597475767812

noncomputable section

/-- A325421: Numbers k coprime to 10 such that there are exactly two values of A for which k^2+4*A and k^2-4*A are perfect squares.

Offset 1, canonical program `A325421.P4803804597475767812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A325421 (n : ℕ) : ℤ :=
  (A325421.P4803804597475767812.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A325421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326050.P16511919073959784802

`A326049(n+1)-A033879(n+1)`
-/

namespace A326050.P16511919073959784802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326049 (n + 1) - A033879 (n + 1)

end

end A326050.P16511919073959784802

noncomputable section

/-- A326050: a(n) = A082052(n) - n, where A082052 is the sum of divisors of n that are not of the form 4k+1.

Offset 1, canonical program `A326050.P16511919073959784802`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033879, A326049, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326050 (n : ℕ) : ℤ :=
  A326050.P16511919073959784802.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033879, A326049, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326050.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326058.P4097531212504585979

`n-A071326(n+1)`
-/

namespace A326058.P4097531212504585979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A071326 (n + 1)

end

end A326058.P4097531212504585979

noncomputable section

/-- A326058: a(n) = n - {the sum of square divisors of n}.

Offset 1, canonical program `A326058.P4097531212504585979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326058 (n : ℕ) : ℤ :=
  A326058.P4097531212504585979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327181.P1963751843994086053

`lt[n*A327180(n), n]`
-/

namespace A327181.P1963751843994086053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327180 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327181.P1963751843994086053

noncomputable section

/-- A327181: Positions of 0's in {A327180(n) : n > 0}.

Offset 1, canonical program `A327181.P1963751843994086053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. -/
def A327181 (n : ℕ) : ℤ :=
  (A327181.P1963751843994086053.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. -/
def A327181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327182.P8957837183894890012

`lt[0, A327180(n)]`
-/

namespace A327182.P8957837183894890012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327182.P8957837183894890012

noncomputable section

/-- A327182: Positions of 1's in {A327180(n) : n > 0}.

Offset 1, canonical program `A327182.P8957837183894890012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A327182 (n : ℕ) : ℤ :=
  (A327182.P8957837183894890012.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A327182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327954.P11440697312019406287

`Δ[A327953(n+1)]`
-/

namespace A327954.P11440697312019406287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327954.P11440697312019406287

noncomputable section

/-- A327954: First differences of A327953.

Offset 1, canonical program `A327954.P11440697312019406287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A327954 (n : ℕ) : ℤ :=
  A327954.P11440697312019406287.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A327954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330415.P2332703762766219287

`∑{d}[n+1, A049084(#)*A355939((n+1)/#)]`
-/

namespace A330415.P2332703762766219287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A049084 d * A355939 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A330415.P2332703762766219287

noncomputable section

/-- A330415: Coefficient of h(y) in Sum_{k > 0, i > 0} x_i^k = p(1) + p(2) + p(3) + ..., where h is the basis of homogeneous symmetric functions, p is the basis of power-sum symmetric functions, and y is the integer partition with Heinz number n.

Offset 1, canonical program `A330415.P2332703762766219287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330415 (n : ℕ) : ℤ :=
  A330415.P2332703762766219287.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330669.P18160544792484395008

`A000720(A025473(n+1))`
-/

namespace A330669.P18160544792484395008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A025473 (n + 1)).toNat

end

end A330669.P18160544792484395008

noncomputable section

/-- A330669: The prime indices of the prime powers (A000961).

Offset 1, canonical program `A330669.P18160544792484395008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9701 terms. -/
def A330669 (n : ℕ) : ℤ :=
  A330669.P18160544792484395008.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9701 terms. -/
def A330669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332498.P11951412772554313620

`A006068(A289814(n))`
-/

namespace A332498.P11951412772554313620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A289814 n).toNat

end

end A332498.P11951412772554313620

noncomputable section

/-- A332498: a(n) = y(w+1) where y(0) = 0 and y(k+1) = 2^(k+1)-1-y(k) (resp. y(k)) when d_k = 2 (resp. d_k <> 2) and Sum_{k=0..w} d_k*3^k is the ternary representation of n. Sequence A332497 gives corresponding x's.

Offset 0, canonical program `A332498.P11951412772554313620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A332498 (n : ℕ) : ℤ :=
  A332498.P11951412772554313620.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A332498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333463.P3968977485376999568

`∑{d}[n+1, A000203(#)*A332684((n+1)/#)]`
-/

namespace A333463.P3968977485376999568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A332684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333463.P3968977485376999568

noncomputable section

/-- A333463: a(n) = Sum_{k=1..n} floor(n/k) * gcd(n,k).

Offset 1, canonical program `A333463.P3968977485376999568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333463 (n : ℕ) : ℤ :=
  A333463.P3968977485376999568.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334031.P10362019944670367521

`A057335(A145342(n+1)-1)`
-/

namespace A334031.P10362019944670367521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (A145342 (n + 1) - 1).toNat

end

end A334031.P10362019944670367521

noncomputable section

/-- A334031: The smallest number whose unsorted prime signature is the reversed n-th composition in standard order.

Offset 0, canonical program `A334031.P10362019944670367521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A334031 (n : ℕ) : ℤ :=
  A334031.P10362019944670367521.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A334031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336754.P15075467513885804309

`3*A307136(n+1)`
-/

namespace A336754.P15075467513885804309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A307136 (n + 1)

end

end A336754.P15075467513885804309

noncomputable section

/-- A336754: Perimeters in increasing order of integer-sided triangles whose sides a < b < c are in arithmetic progression.

Offset 1, canonical program `A336754.P15075467513885804309`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307136, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336754 (n : ℕ) : ℤ :=
  A336754.P15075467513885804309.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307136, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338453.P14158950893179917223

`∩[A338452(n+1)-1, A338452(n+1)]`
-/

namespace A338453.P14158950893179917223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338452 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338453.P14158950893179917223

noncomputable section

/-- A338453: Starts of runs of 3 consecutive numbers with the same total binary weight of their divisors (A093653).

Offset 1, canonical program `A338453.P14158950893179917223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A338453 (n : ℕ) : ℤ :=
  (A338453.P14158950893179917223.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A338453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338514.P16262333784085285906

`∩[A093705(n+1)-1, A093705(n+1)]`
-/

namespace A338514.P16262333784085285906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093705 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338514.P16262333784085285906

noncomputable section

/-- A338514: Numbers k such that k and k+1 are both divisible by the total binary weight of their divisors (A093653).

Offset 1, canonical program `A338514.P16262333784085285906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A338514 (n : ℕ) : ℤ :=
  (A338514.P16262333784085285906.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A338514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340083.P188478940144942709

`n/A340081(n+1)`
-/

namespace A340083.P188478940144942709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A340081 (n + 1) : ℚ)

end

end A340083.P188478940144942709

noncomputable section

/-- A340083: a(n) = (n-1) / gcd(n-1, A003958(n)).

Offset 1, canonical program `A340083.P188478940144942709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340083 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340083.P188478940144942709.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341916.P17753814801162057676

`A006068(A145342(n+1)-1)`
-/

namespace A341916.P17753814801162057676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A145342 (n + 1) - 1).toNat

end

end A341916.P17753814801162057676

noncomputable section

/-- A341916: Inverse permutation to A341915.

Offset 0, canonical program `A341916.P17753814801162057676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A341916 (n : ℕ) : ℤ :=
  A341916.P17753814801162057676.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A341916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344440.P2911178003362217531

`A344439(n+1)+A344441(n+1)`
-/

namespace A344440.P2911178003362217531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344439 (n + 1) + A344441 (n + 1)

end

end A344440.P2911178003362217531

noncomputable section

/-- A344440: a(n) = n + A061020(n).

Offset 1, canonical program `A344440.P2911178003362217531`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344439, A344441, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344440 (n : ℕ) : ℤ :=
  A344440.P2911178003362217531.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344439, A344441, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344440.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344931.P13007748442361514407

`∑{p}[n+1, #]-A344908(n+1)`
-/

namespace A344931.P13007748442361514407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - A344908 (n + 1)

end

end A344931.P13007748442361514407

noncomputable section

/-- A344931: Sum of the distinct even-indexed prime divisors, p_{2k}, of n.

Offset 1, canonical program `A344931.P13007748442361514407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344931 (n : ℕ) : ℤ :=
  A344931.P13007748442361514407.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344997.P7955148698695542917

`A173557(n+1)*A344753(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344997.P7955148698695542917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) * A344753 (n + 1)

end

end A344997.P7955148698695542917

noncomputable section

/-- A344997: a(n) = A173557(n) * A344753(n).

Offset 1, canonical program `A344997.P7955148698695542917`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, A344753, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344997 (n : ℕ) : ℤ :=
  A344997.P7955148698695542917.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, A344753, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344997.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345278.P16777163800638418964

`A344908(n+1)+A324967(n+1)`
-/

namespace A345278.P16777163800638418964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344908 (n + 1) + A324967 (n + 1)

end

end A345278.P16777163800638418964

noncomputable section

/-- A345278: a(n) = Sum_{p|n} p^(pi(p) mod 2).

Offset 1, canonical program `A345278.P16777163800638418964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345278 (n : ℕ) : ℤ :=
  A345278.P16777163800638418964.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347103.P14813398538784636058

`∑{d}[n+1, A033999(#-1)*A049084((n+1)/#)]`
-/

namespace A347103.P14813398538784636058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A049084 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347103.P14813398538784636058

noncomputable section

/-- A347103: G.f.: Sum_{k>=1} k * x^prime(k) / (1 + x^prime(k)).

Offset 1, canonical program `A347103.P14813398538784636058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347103 (n : ℕ) : ℤ :=
  A347103.P14813398538784636058.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348099.P214831151036935053

`∩[A348098(n+1)-1, A348098(n+1)]`
-/

namespace A348099.P214831151036935053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348098 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348099.P214831151036935053

noncomputable section

/-- A348099: Starts of runs of 3 consecutive numbers that have an equal number of unitary and nonunitary prime divisors (A348097).

Offset 1, canonical program `A348099.P214831151036935053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A348099 (n : ℕ) : ℤ :=
  (A348099.P214831151036935053.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A348099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348980.P7651113664669267661

`∑{d}[n+1, #*A322582((n+1)/#)]`
-/

namespace A348980.P7651113664669267661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A322582 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348980.P7651113664669267661

noncomputable section

/-- A348980: a(n) = Sum_{d|n} d * A322582(n/d), where A322582(n) = n - A003958(n), and A003958 is fully multiplicative with a(p) = (p-1).

Offset 1, canonical program `A348980.P7651113664669267661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348980 (n : ℕ) : ℤ :=
  A348980.P7651113664669267661.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348982.P2529502468728272317

`∑{d}[n+1, A001615(#)*A322582((n+1)/#)]`
-/

namespace A348982.P2529502468728272317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A322582 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348982.P2529502468728272317

noncomputable section

/-- A348982: a(n) = Sum_{d|n} psi(n/d) * A322582(d), where psi is Dedekind psi (A001615), A322582(n) = n - A003958(n), and A003958 is fully multiplicative with a(p) = (p-1).

Offset 1, canonical program `A348982.P2529502468728272317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348982 (n : ℕ) : ℤ :=
  A348982.P2529502468728272317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350338.P228181022738579611

`A350331(n+1)+A101606(n+1)`
-/

namespace A350338.P228181022738579611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350331 (n + 1) + A101606 (n + 1)

end

end A350338.P228181022738579611

noncomputable section

/-- A350338: Number of nontrivial divisors of n that are the product of up to 3 (not necessarily distinct) primes.

Offset 1, canonical program `A350338.P228181022738579611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350338 (n : ℕ) : ℤ :=
  A350338.P228181022738579611.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352754.P7186785389553064570

`A000720(n+1)*A073837(n+1)`
-/

namespace A352754.P7186785389553064570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A073837 (n + 1)

end

end A352754.P7186785389553064570

noncomputable section

/-- A352754: a(n) = pi(n) * Sum_{n <= q < 2n, q prime} q.

Offset 1, canonical program `A352754.P7186785389553064570`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A073837, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352754 (n : ℕ) : ℤ :=
  A352754.P7186785389553064570.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A073837, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355929.P18162260943095803448

`A355928(n+1)-A007913(n+1)`
-/

namespace A355929.P18162260943095803448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355928 (n + 1) - A007913 (n + 1)

end

end A355929.P18162260943095803448

noncomputable section

/-- A355929: Difference between the squarefree part of the sum of divisors of n and the squarefree part of n.

Offset 1, canonical program `A355929.P18162260943095803448`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A355928, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355929 (n : ℕ) : ℤ :=
  A355929.P18162260943095803448.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A355928, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355929.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356451.P11012535178385442677

`A356448(n+1)/2`
-/

namespace A356451.P11012535178385442677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356448 (n + 1) : ℚ) / 2

end

end A356451.P11012535178385442677

noncomputable section

/-- A356451: Numbers k such that 4*k^2 is in A014567.

Offset 1, canonical program `A356451.P11012535178385442677`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356451 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A356451.P11012535178385442677.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356451.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356454.P58692963208807662

`A356452(n+1)/2`
-/

namespace A356454.P58692963208807662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356452 (n + 1) : ℚ) / 2

end

end A356454.P58692963208807662

noncomputable section

/-- A356454: Numbers k such that 4*k^2 is not in A014567; complement of A356451.

Offset 1, canonical program `A356454.P58692963208807662`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356454 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A356454.P58692963208807662.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356454.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359152.P7216444529102150674

`A353558(n+1)-A359150(n+1)`
-/

namespace A359152.P7216444529102150674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353558 (n + 1) - A359150 (n + 1)

end

end A359152.P7216444529102150674

noncomputable section

/-- A359152: a(n) = 1 if n is a number of the form 4u+3 with an odd number of prime factors (counted with multiplicity), otherwise 0.

Offset 1, canonical program `A359152.P7216444529102150674`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353558, A359150, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359152 (n : ℕ) : ℤ :=
  A359152.P7216444529102150674.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353558, A359150, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359152.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359495.P14356946249672535810

`A230877(n)-A029931(n)`
-/

namespace A359495.P14356946249672535810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 n - A029931 n

end

end A359495.P14356946249672535810

noncomputable section

/-- A359495: Sum of positions of 1's in binary expansion minus sum of positions of 1's in reversed binary expansion, where positions in a sequence are read starting with 1 from the left.

Offset 0, canonical program `A359495.P14356946249672535810`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, A230877, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359495 (n : ℕ) : ℤ :=
  A359495.P14356946249672535810.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, A230877, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359495.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359549.P5957096667995200325

`abs(A359548(n+1))`
-/

namespace A359549.P5957096667995200325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A359548 (n + 1)|

end

end A359549.P5957096667995200325

noncomputable section

/-- A359549: a(n) = 1 if n is either an odd squarefree number squared or twice such a number, otherwise 0.

Offset 1, canonical program `A359549.P5957096667995200325`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359549 (n : ℕ) : ℤ :=
  A359549.P5957096667995200325.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359549.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A362030.P1231653781431482654

`A062050(A258410(n+1))`
-/

namespace A362030.P1231653781431482654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A258410 (n + 1)).toNat

end

end A362030.P1231653781431482654

noncomputable section

/-- A362030: Irregular triangle read by rows where row n contains the balanced binary words of length 2n interpreted as binary numbers.

Offset 1, canonical program `A362030.P1231653781431482654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A362030 (n : ℕ) : ℤ :=
  A362030.P1231653781431482654.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A362030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363407.P16355104600949627013

`A050452(4*n+1)`
-/

namespace A363407.P16355104600949627013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050452 (4 * n + 1)

end

end A363407.P16355104600949627013

noncomputable section

/-- A363407: Sum of divisors of 4*n-3 of form 4*k+3.

Offset 1, canonical program `A363407.P16355104600949627013`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363407 (n : ℕ) : ℤ :=
  A363407.P16355104600949627013.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363407.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363895.P17868009645910452837

`floor(A323171(n+2)/A323172(n+2))`
-/

namespace A363895.P17868009645910452837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A323171 (n + 2) : ℚ) / (A323172 (n + 2) : ℚ)⌋

end

end A363895.P17868009645910452837

noncomputable section

/-- A363895: Floor of the average of the distinct prime factors of n.

Offset 2, canonical program `A363895.P17868009645910452837`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323171, A323172, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363895 (n : ℕ) : ℤ :=
  A363895.P17868009645910452837.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323171, A323172, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363895.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363903.P2367214496446781928

`(3*A001826(n+1)+A050449(n+1))/4`
-/

namespace A363903.P2367214496446781928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A001826 (n + 1) + A050449 (n + 1) : ℚ) / 4

end

end A363903.P2367214496446781928

noncomputable section

/-- A363903: Expansion of Sum_{k>0} x^k / (1 - x^(4*k))^2.

Offset 1, canonical program `A363903.P2367214496446781928`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001826, A050449, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363903 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363903.P2367214496446781928.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001826, A050449, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363903.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364014.P12076871723784190955

`A002324(n+1)-A364204(n+1)`
-/

namespace A364014.P12076871723784190955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) - A364204 (n + 1)

end

end A364014.P12076871723784190955

noncomputable section

/-- A364014: Expansion of Sum_{k>0} x^(2*k) / (1 + x^(3*k)).

Offset 1, canonical program `A364014.P12076871723784190955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364014 (n : ℕ) : ℤ :=
  A364014.P12076871723784190955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366147.P16942862421352118327

`A065331(A181819(n+1))`
-/

namespace A366147.P16942862421352118327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (A181819 (n + 1)).toNat

end

end A366147.P16942862421352118327

noncomputable section

/-- A366147: The number of divisors of the cubefree part of n (A360539).

Offset 1, canonical program `A366147.P16942862421352118327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366147 (n : ℕ) : ℤ :=
  A366147.P16942862421352118327.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366274.P11829202406764329078

`A000720(A076273(n+2))-(n+1)`
-/

namespace A366274.P11829202406764329078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A076273 (n + 2)).toNat - (n + 1 : ℤ)

end

end A366274.P11829202406764329078

noncomputable section

/-- A366274: a(n) is the least k such that prime(n+1+k) >= prime(n)+prime(n+1).

Offset 1, canonical program `A366274.P11829202406764329078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5132 terms. -/
def A366274 (n : ℕ) : ℤ :=
  A366274.P11829202406764329078.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5132 terms. -/
def A366274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366421.P2566327463954372035

`floor(A138099(n+1)/(A216607(n+1)+1))`
-/

namespace A366421.P2566327463954372035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138099 (n + 1) : ℚ) / (A216607 (n + 1) + 1 : ℚ)⌋

end

end A366421.P2566327463954372035

noncomputable section

/-- A366421: a(n) is the floor of the n-th improper fraction (including the ones of the type n/n) sorted by increasing numerator+denominator, then by numerator.

Offset 1, canonical program `A366421.P2566327463954372035`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138099, A216607, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366421 (n : ℕ) : ℤ :=
  A366421.P2566327463954372035.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138099, A216607, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366421.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366538.P3416634651160516815

`A322327(A138302(n+1))/A368473(n+1)`
-/

namespace A366538.P3416634651160516815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322327 (A138302 (n + 1)).toNat : ℚ) / (A368473 (n + 1) : ℚ)

end

end A366538.P3416634651160516815

noncomputable section

/-- A366538: The number of unitary divisors of the exponentially 2^n-numbers (A138302).

Offset 1, canonical program `A366538.P3416634651160516815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366538 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A366538.P3416634651160516815.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367076.P8374161418526432458

`abs(∑[A365968(n)])`
-/

namespace A367076.P8374161418526432458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A367076.P8374161418526432458

noncomputable section

/-- A367076: Irregular triangle read by rows: T(n,k) (0 <= n, 0 <= k < 2^n). T(n,k) = -Sum_{i=0..k} A365968(n,i).

Offset 0, canonical program `A367076.P8374161418526432458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A367076 (n : ℕ) : ℤ :=
  A367076.P8374161418526432458.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A367076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367419.P12918767703216555889

`sqrt(A367418(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A367419.P12918767703216555889
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A367418 (n + 1) : ℝ)

end

end A367419.P12918767703216555889

noncomputable section

/-- A367419: a(n) = sqrt(A367418(n)).

Offset 1, canonical program `A367419.P12918767703216555889`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367418, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367419 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367419.P12918767703216555889.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367418, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367419.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367512.P6814161711481593875

`A001221(n+1)-A293439(n+1)`
-/

namespace A367512.P6814161711481593875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A293439 (n + 1)

end

end A367512.P6814161711481593875

noncomputable section

/-- A367512: Number of evil exponents in the prime factorization of n.

Offset 1, canonical program `A367512.P6814161711481593875`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A293439, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A367512 (n : ℕ) : ℤ :=
  A367512.P6814161711481593875.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A293439, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A367512.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367990.P13866971715167058427

`∑{d}[A336643(n+1), #]`
-/

namespace A367990.P13866971715167058427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A367990.P13866971715167058427

noncomputable section

/-- A367990: Sum of the squarefree divisors of the largest unitary divisor of n that is a square.

Offset 1, canonical program `A367990.P13866971715167058427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367990 (n : ℕ) : ℤ :=
  (A367990.P13866971715167058427.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368106.P901956022937290611

`A037445(gcd(n+1, ∑{p}[n+1, ((n+1)/#)²]))`
-/

namespace A368106.P901956022937290611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 2)))

end

end A368106.P901956022937290611

noncomputable section

/-- A368106: The number of infinitary divisors of the powerful part of n.

Offset 1, canonical program `A368106.P901956022937290611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368106 (n : ℕ) : ℤ :=
  A368106.P901956022937290611.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369936.P10217003281748854646

`sqrt(A369935(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369936.P10217003281748854646
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A369935 (n + 1) : ℝ)

end

end A369936.P10217003281748854646

noncomputable section

/-- A369936: a(n) = sqrt(A369935(n)).

Offset 1, canonical program `A369936.P10217003281748854646`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369935, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369936 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369936.P10217003281748854646.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369935, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369936.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369965.P8685250262723553120

`A353558(A301293(n))`
-/

namespace A369965.P8685250262723553120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353558 (A301293 n).toNat

end

end A369965.P8685250262723553120

noncomputable section

/-- A369965: a(n) = 1 if n is of the form 4m+2 and it has an even number of prime factors with multiplicity, otherwise 0.

Offset 0, canonical program `A369965.P8685250262723553120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369965 (n : ℕ) : ℤ :=
  A369965.P8685250262723553120.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372325.P7067846438842674381

`eq[1, A000035(A116549(n))]`
-/

namespace A372325.P7067846438842674381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A116549 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A372325.P7067846438842674381

noncomputable section

/-- A372325: Numbers whose binary expansion has an even number of 1's among positions listed in this sequence.

Offset 1, canonical program `A372325.P7067846438842674381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A372325 (n : ℕ) : ℤ :=
  (A372325.P7067846438842674381.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A372325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372469.P15367913402660155872

`log2(A372468(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372469.P15367913402660155872
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A372468 (n + 1) : ℝ)

end

end A372469.P15367913402660155872

noncomputable section

/-- A372469: a(n) = log_2(A372468(n)).

Offset 1, canonical program `A372469.P15367913402660155872`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372469 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372469.P15367913402660155872.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372469.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378549.P13326407963315648607

`A000203(n+1)-A378548(n+1)`
-/

namespace A378549.P13326407963315648607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A378548 (n + 1)

end

end A378549.P13326407963315648607

noncomputable section

/-- A378549: Sum of divisors d of n such that n/d is not an odd number with an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A378549.P13326407963315648607`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378549 (n : ℕ) : ℤ :=
  A378549.P13326407963315648607.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378549.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378620.P6069083703779704707

`∩[A068360(n+1), A270192(n+1)]`
-/

namespace A378620.P6069083703779704707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378620.P6069083703779704707

noncomputable section

/-- A378620: Lesser prime index of twin primes with nonsquarefree mean.

Offset 1, canonical program `A378620.P6069083703779704707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A378620 (n : ℕ) : ℤ :=
  (A378620.P6069083703779704707.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A378620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381312.P9121051860855082325

`filter[A377844(n+1), A359466(#)]`
-/

namespace A381312.P9121051860855082325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A381312.P9121051860855082325

noncomputable section

/-- A381312: Numbers whose powerful part (A057521) is a power of a prime with an odd exponent >= 3 (A056824).

Offset 1, canonical program `A381312.P9121051860855082325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8129 terms. -/
def A381312 (n : ℕ) : ℤ :=
  A381312.P9121051860855082325.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8129 terms. -/
def A381312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382423.P3912770138794088159

`val(A382422(n+1), 2)`
-/

namespace A382423.P3912770138794088159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A382422 (n + 1)).toNat 2

end

end A382423.P3912770138794088159

noncomputable section

/-- A382423: The number of exponents in the prime factorization of n-th biquadratefree number that are equal to 2.

Offset 1, canonical program `A382423.P3912770138794088159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382423 (n : ℕ) : ℤ :=
  (A382423.P3912770138794088159.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382889.P8393808026600234868

`(A004709(n+1)/A382888(n+1))²`
-/

namespace A382889.P8393808026600234868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A004709 (n + 1) : ℚ) / (A382888 (n + 1) : ℚ)) ^ 2

end

end A382889.P8393808026600234868

noncomputable section

/-- A382889: The largest square dividing the n-th cubefree number.

Offset 1, canonical program `A382889.P8393808026600234868`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A382888, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382889 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382889.P8393808026600234868.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A382888, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382889.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382906.P11250018393502254710

`A046100(n+1)/A382905(n+1)`
-/

namespace A382906.P11250018393502254710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046100 (n + 1) : ℚ) / (A382905 (n + 1) : ℚ)

end

end A382906.P11250018393502254710

noncomputable section

/-- A382906: The powerful part of the n-th biquadratefree number.

Offset 1, canonical program `A382906.P11250018393502254710`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A382905, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382906 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382906.P11250018393502254710.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A382905, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382906.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383008.P10745250568338898044

`A013928(A160785(n+1))`
-/

namespace A383008.P10745250568338898044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A160785 (n + 1)).toNat

end

end A383008.P10745250568338898044

noncomputable section

/-- A383008: Indices of the even terms in the sequence of squarefree numbers.

Offset 1, canonical program `A383008.P10745250568338898044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383008 (n : ℕ) : ℤ :=
  A383008.P10745250568338898044.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384050.P11181728882137960470

`A057521(n+1)*A380161(n+1)`
-/

namespace A384050.P11181728882137960470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1) * A380161 (n + 1)

end

end A384050.P11181728882137960470

noncomputable section

/-- A384050: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a powerful number.

Offset 1, canonical program `A384050.P11181728882137960470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384050 (n : ℕ) : ℤ :=
  A384050.P11181728882137960470.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385138.P14446959269686956335

`A064987(n+1)/A385137(n+1)`
-/

namespace A385138.P14446959269686956335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (A385137 (n + 1) : ℚ)

end

end A385138.P14446959269686956335

noncomputable section

/-- A385138: The sum of divisors d of n such that n/d is a 5-rough number (A007310).

Offset 1, canonical program `A385138.P14446959269686956335`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064987, A385137, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385138 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385138.P14446959269686956335.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064987, A385137, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385138.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391014.P13528269181693746114

`A000720(A038618(n+1))`
-/

namespace A391014.P13528269181693746114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A038618 (n + 1)).toNat

end

end A391014.P13528269181693746114

noncomputable section

/-- A391014: Indices of zeroless primes.

Offset 1, canonical program `A391014.P13528269181693746114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7122 terms. -/
def A391014 (n : ℕ) : ℤ :=
  A391014.P13528269181693746114.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7122 terms. -/
def A391014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391922.P16311952862466852475

`∩[A212164(n+1), A345381(n+1)]`
-/

namespace A391922.P16311952862466852475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391922.P16311952862466852475

noncomputable section

/-- A391922: Numbers that are neither cubefree nor powerful and have exactly 2 distinct prime factors.

Offset 1, canonical program `A391922.P16311952862466852475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4423 terms. -/
def A391922 (n : ℕ) : ℤ :=
  (A391922.P16311952862466852475.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4423 terms. -/
def A391922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286259.P4100999177015709443

`(2+(A001511(n+1)+A049820(n+1))²-A001511(n+1)-3*A049820(n+1))/2`
-/

namespace A286259.P4100999177015709443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + ((A001511 (n + 1) + A049820 (n + 1)) ^ 2 - A001511 (n + 1)) - 3 * A049820 (n + 1) : ℚ) / 2

end

end A286259.P4100999177015709443

noncomputable section

/-- A286259: Compound filter: a(n) = P(A001511(n), A049820(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286259.P4100999177015709443`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286259 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286259.P4100999177015709443.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286259.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286530.P8332738514861168906

`A286529(n+1)-A000005(n+1)`
-/

namespace A286530.P8332738514861168906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286529 (n + 1) - A000005 (n + 1)

end

end A286530.P8332738514861168906

noncomputable section

/-- A286530: a(n) = d(n+d(n)) - d(n), where d(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A286530.P8332738514861168906`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A286529, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286530 (n : ℕ) : ℤ :=
  A286530.P8332738514861168906.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A286529, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286530.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A289831.P1355285298190598776

`A289813(n)+A289814(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A289831.P1355285298190598776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 n + A289814 n

end

end A289831.P1355285298190598776

noncomputable section

/-- A289831: a(n) = A289813(n) + A289814(n).

Offset 0, canonical program `A289831.P1355285298190598776`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289813, A289814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A289831 (n : ℕ) : ℤ :=
  A289831.P1355285298190598776.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289813, A289814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A289831.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A295301.P6205145483613986620

`1-A062401(n+1)+n`
-/

namespace A295301.P6205145483613986620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A062401 (n + 1) + (n : ℤ)

end

end A295301.P6205145483613986620

noncomputable section

/-- A295301: a(n) = n - phi(sigma(n)), where phi = A000010 and sigma = A000203.

Offset 1, canonical program `A295301.P6205145483613986620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295301 (n : ℕ) : ℤ :=
  A295301.P6205145483613986620.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295306.P345186050737543050

`round(tanh(A295305(n+1)))`
-/

namespace A295306.P345186050737543050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (A295305 (n + 1) : ℝ))

end

end A295306.P345186050737543050

noncomputable section

/-- A295306: a(n) = +1 if tau(sigma(n)) > tau(n), -1 if n < tau(sigma(n)) < tau(n), and 0 if tau(sigma(n)) = tau(n), where tau = A000005 and sigma = A000203.

Offset 1, canonical program `A295306.P345186050737543050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295306 (n : ℕ) : ℤ :=
  A295306.P345186050737543050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295306.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A296082.P6565057320872565321

`∑{e}[A100577(n+1), #/A296081(n+1)]`
-/

namespace A296082.P6565057320872565321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100577 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℚ) / (A296081 (n + 1) : ℚ)

end

end A296082.P6565057320872565321

noncomputable section

/-- A296082: a(1) = 0; for n > 1, a(n) = A032741(n) / gcd(A039653(n),A032741(n)).

Offset 1, canonical program `A296082.P6565057320872565321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. -/
def A296082 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A296082.P6565057320872565321.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. -/
def A296082.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A297401.P14594620375848981182

`record[A105570(A030626(n+1))]`
-/

namespace A297401.P14594620375848981182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A030626 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297401.P14594620375848981182

noncomputable section

/-- A297401: Non-sphenic numbers with exactly 8 divisors.

Offset 1, canonical program `A297401.P14594620375848981182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1142 terms. -/
def A297401 (n : ℕ) : ℤ :=
  A297401.P14594620375848981182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1142 terms. -/
def A297401.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A305152.P2584362092211639077

`A112329(n+1)-A056924(n+1)`
-/

namespace A305152.P2584362092211639077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (n + 1) - A056924 (n + 1)

end

end A305152.P2584362092211639077

noncomputable section

/-- A305152: Expansion of Sum_{k>0} x^(k^2) / (1 + x^k).

Offset 1, canonical program `A305152.P2584362092211639077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305152 (n : ℕ) : ℤ :=
  A305152.P2584362092211639077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306199.P1390031981677856011

`lt[A001227(n+1), A001817(n+1)]+1`
-/

namespace A306199.P1390031981677856011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A306199.P1390031981677856011

noncomputable section

/-- A306199: Numbers k having the property that tau(4*k) < tau(3*k) where tau = A000005.

Offset 1, canonical program `A306199.P1390031981677856011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1819 terms. -/
def A306199 (n : ℕ) : ℤ :=
  (A306199.P1390031981677856011.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1819 terms. -/
def A306199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309153.P7700007454880818440

`A000203(n+1)*A001227(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A309153.P7700007454880818440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A001227 (n + 1)

end

end A309153.P7700007454880818440

noncomputable section

/-- A309153: a(n) = A000203(n)*A001227(n).

Offset 1, canonical program `A309153.P7700007454880818440`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001227, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309153 (n : ℕ) : ℤ :=
  A309153.P7700007454880818440.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001227, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309153.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A309507.P1026939547968616405

`A092517(n+1)-A063440(n+1)-1`
-/

namespace A309507.P1026939547968616405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092517 (n + 1) - A063440 (n + 1) - 1

end

end A309507.P1026939547968616405

noncomputable section

/-- A309507: Number of ways the n-th triangular number T(n) = A000217(n) can be written as the difference of two positive triangular numbers.

Offset 1, canonical program `A309507.P1026939547968616405`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063440, A092517, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A309507 (n : ℕ) : ℤ :=
  A309507.P1026939547968616405.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063440, A092517, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A309507.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A316472.P15815370962677773689

`A057889(A153152(A059893(n+1)))`
-/

namespace A316472.P15815370962677773689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A153152 (A059893 (n + 1)).toNat).toNat

end

end A316472.P15815370962677773689

noncomputable section

/-- A316472: Inverse permutation to A316385.

Offset 1, canonical program `A316472.P15815370962677773689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A316472 (n : ℕ) : ℤ :=
  A316472.P15815370962677773689.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A316472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317751.P3394042211911026629

`A219977(A034444(n+1))+A046951(n+1)`
-/

namespace A317751.P3394042211911026629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (A034444 (n + 1)).toNat + A046951 (n + 1)

end

end A317751.P3394042211911026629

noncomputable section

/-- A317751: Number of divisors d of n such that there exists a factorization of n into factors > 1 with GCD d.

Offset 1, canonical program `A317751.P3394042211911026629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317751 (n : ℕ) : ℤ :=
  A317751.P3394042211911026629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318400.P10936434571933845846

`lt[A109082(n+1), 3]+1`
-/

namespace A318400.P10936434571933845846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A318400.P10936434571933845846

noncomputable section

/-- A318400: Numbers whose prime indices are all powers of 2 (including 1).

Offset 1, canonical program `A318400.P10936434571933845846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A318400 (n : ℕ) : ℤ :=
  (A318400.P10936434571933845846.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A318400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318467.P11021242539617747831

`A224880(n+1)-2*A318468(n+1)`
-/

namespace A318467.P11021242539617747831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224880 (n + 1) - 2 * A318468 (n + 1)

end

end A318467.P11021242539617747831

noncomputable section

/-- A318467: a(n) = 2*n XOR A000203(n), where XOR is bitwise-xor (A003987) and A000203 = sum of divisors.

Offset 1, canonical program `A318467.P11021242539617747831`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A224880, A318468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318467 (n : ℕ) : ℤ :=
  A318467.P11021242539617747831.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A224880, A318468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318467.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319445.P13237704803151138138

`sqrt(Δ[A049454(n)])*A227128(n+1)`
-/

namespace A319445.P13237704803151138138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049454 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (n + 1) - f1 n : ℝ) * (A227128 (n + 1) : ℝ)

end

end A319445.P13237704803151138138

noncomputable section

/-- A319445: Number of Eisenstein integers in a reduced system modulo n.

Offset 1, canonical program `A319445.P13237704803151138138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A319445 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A319445.P13237704803151138138.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A319445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319661.P15202188947145428024

`log2(A003642(n+1))`
-/

namespace A319661.P15202188947145428024
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A003642 (n + 1) : ℝ)

end

end A319661.P15202188947145428024

noncomputable section

/-- A319661: 2-rank of the class group of imaginary quadratic field with discriminant -k, k = A191483(n).

Offset 1, canonical program `A319661.P15202188947145428024`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319661 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A319661.P15202188947145428024.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319661.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A322997.P13099986161292464516

`A322996(2*n)`
-/

namespace A322997.P13099986161292464516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322996 (2 * n)

end

end A322997.P13099986161292464516

noncomputable section

/-- A322997: Number of iterations of A049820(x) = x - A000005(x) needed to reach an odd number or zero, when starting from x = 2n.

Offset 0, canonical program `A322997.P13099986161292464516`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322997 (n : ℕ) : ℤ :=
  A322997.P13099986161292464516.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322997.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323158.P4533736055224082463

`A000035(A049820(n+1))`
-/

namespace A323158.P4533736055224082463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A049820 (n + 1)).toNat

end

end A323158.P4533736055224082463

noncomputable section

/-- A323158: If n is a square, a(n) = 1-(n mod 2), otherwise a(n) = (n mod 2); a(n) = A049820(n) mod 2, where A049820(n) = n - number of divisors of n.

Offset 1, canonical program `A323158.P4533736055224082463`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323158 (n : ℕ) : ℤ :=
  A323158.P4533736055224082463.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323158.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A323511.P13166536761734004681

`A008966(n+1)*A079559(A048675(n+1))`
-/

namespace A323511.P13166536761734004681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A079559 (A048675 (n + 1)).toNat

end

end A323511.P13166536761734004681

noncomputable section

/-- A323511: a(n) = 1 if n is squarefree and A079559(A048675(n)) = 1, otherwise a(n) = 0.

Offset 1, canonical program `A323511.P13166536761734004681`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323511 (n : ℕ) : ℤ :=
  A323511.P13166536761734004681.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323511.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A324044.P16013423005150912487`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A033879, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324044 (n : ℕ) : ℤ :=
  A324044.P16013423005150912487.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A033879, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324044.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A324469.P7402348818447187183

`2*A000989(n)+A000989(2*n)`
-/

namespace A324469.P7402348818447187183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000989 n + A000989 (2 * n)

end

end A324469.P7402348818447187183

noncomputable section

/-- A324469: Exponent of highest power of 3 that divides multinomial(4*n;n,n,n,n).

Offset 0, canonical program `A324469.P7402348818447187183`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000989, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324469 (n : ℕ) : ℤ :=
  A324469.P7402348818447187183.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000989, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324469.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326987.P399885579470220940

`(A001227(n+1)-1)*A001511(n+1)`
-/

namespace A326987.P399885579470220940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001227 (n + 1) - 1) * A001511 (n + 1)

end

end A326987.P399885579470220940

noncomputable section

/-- A326987: Number of nonpowers of 2 dividing n.

Offset 1, canonical program `A326987.P399885579470220940`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001227, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326987 (n : ℕ) : ℤ :=
  A326987.P399885579470220940.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001227, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326987.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328749.P17846108739945119774

`A289814(n)-A289813(n)`
-/

namespace A328749.P17846108739945119774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 n - A289813 n

end

end A328749.P17846108739945119774

noncomputable section

/-- A328749: a(n) = Sum_{k = 0..w and t_k > 0} (-1)^t_k * 2^k, where Sum_{k = 0..w} t_k * 3^k is the ternary representation of n.

Offset 0, canonical program `A328749.P17846108739945119774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A328749 (n : ℕ) : ℤ :=
  A328749.P17846108739945119774.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A328749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329929.P12316207208201997715

`A336723(n+1)/A336722(n+1)`
-/

namespace A329929.P12316207208201997715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336723 (n + 1) : ℚ) / (A336722 (n + 1) : ℚ)

end

end A329929.P12316207208201997715

noncomputable section

/-- A329929: a(n) = lcm(tau(n), sigma(n), pod(n)) / gcd(tau(n), sigma(n), pod(n)) where tau(k) is the number of divisors of k (A000005), sigma(k) is the sum of divisors of k (A000203) and pod(k) is the product of divisors of k (A007955).

Offset 1, canonical program `A329929.P12316207208201997715`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336722, A336723, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A329929 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A329929.P12316207208201997715.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336722, A336723, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A329929.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331132.P5685763318772251677

`∑[A000005(n+1)*A092517(n+1)]`
-/

namespace A331132.P5685763318772251677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A092517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331132.P5685763318772251677

noncomputable section

/-- A331132: a(n) = Sum_{i=1..n} d(i)^2*d(i+1), where d(n) = A000005(n).

Offset 1, canonical program `A331132.P5685763318772251677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A331132 (n : ℕ) : ℤ :=
  A331132.P5685763318772251677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A331132.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A333167.P7830250556896041600

`A105397(n)*A193432(n)`
-/

namespace A333167.P7830250556896041600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105397 n * A193432 n

end

end A333167.P7830250556896041600

noncomputable section

/-- A333167: a(n) = r_2(n^2 + 1), where r_2(k) is the number of ways of writing k as a sum of 2 squares (A004018).

Offset 0, canonical program `A333167.P7830250556896041600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333167 (n : ℕ) : ℤ :=
  A333167.P7830250556896041600.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333167.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A333753.P1428503214538916222

`A023889(A072504(n+1))`
-/

namespace A333753.P1428503214538916222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (A072504 (n + 1)).toNat

end

end A333753.P1428503214538916222

noncomputable section

/-- A333753: Sum of prime power divisors of n that are <= sqrt(n).

Offset 1, canonical program `A333753.P1428503214538916222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333753 (n : ℕ) : ℤ :=
  A333753.P1428503214538916222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333753.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A335567.P3613381038398877744

`A000217(A049820(n+1))`
-/

namespace A335567.P3613381038398877744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A049820 (n + 1)).toNat

end

end A335567.P3613381038398877744

noncomputable section

/-- A335567: Number of distinct positive integer pairs (s,t) such that s <= t < n where neither s nor t divides n.

Offset 1, canonical program `A335567.P3613381038398877744`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335567 (n : ℕ) : ℤ :=
  A335567.P3613381038398877744.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335567.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336563.P9984757365447373313

`A007947(n+1)*A336567(n+1)`
-/

namespace A336563.P9984757365447373313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A336567 (n + 1)

end

end A336563.P9984757365447373313

noncomputable section

/-- A336563: Sum of proper divisors of n that are divisible by every prime that divides n.

Offset 1, canonical program `A336563.P9984757365447373313`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A336567, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336563 (n : ℕ) : ℤ :=
  A336563.P9984757365447373313.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A336567, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336563.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A336940.P4983532060712905772

`A027423(n)/(A011371(n)+1)`
-/

namespace A336940.P4983532060712905772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027423 n : ℚ) / (A011371 n + 1 : ℚ)

end

end A336940.P4983532060712905772

noncomputable section

/-- A336940: Number of odd divisors of n!.

Offset 0, canonical program `A336940.P4983532060712905772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. -/
def A336940 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336940.P4983532060712905772.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. -/
def A336940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337333.P18242148625469712112

`A000217(A001227(n+1))`
-/

namespace A337333.P18242148625469712112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A001227 (n + 1)).toNat

end

end A337333.P18242148625469712112

noncomputable section

/-- A337333: Number of pairs of odd divisors of n, (d1,d2), such that d1 <= d2.

Offset 1, canonical program `A337333.P18242148625469712112`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001227, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337333 (n : ℕ) : ℤ :=
  A337333.P18242148625469712112.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001227, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337333.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337362.P16917080066168618758

`A184389(n+1)-A129308(n+1)`
-/

namespace A337362.P16917080066168618758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1) - A129308 (n + 1)

end

end A337362.P16917080066168618758

noncomputable section

/-- A337362: Number of pairs of divisors of n, (d1,d2), with d1 <= d2 such that d1 and d2 are nonconsecutive integers.

Offset 1, canonical program `A337362.P16917080066168618758`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129308, A184389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337362 (n : ℕ) : ℤ :=
  A337362.P16917080066168618758.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129308, A184389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337362.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337363.P11598784413067799807

`A066446(n+1)-A129308(n+1)`
-/

namespace A337363.P11598784413067799807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (n + 1) - A129308 (n + 1)

end

end A337363.P11598784413067799807

noncomputable section

/-- A337363: a(n) = Sum_{d1|n, d2|n, d1

Offset 1, canonical program `A337363.P11598784413067799807`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066446, A129308, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337363 (n : ℕ) : ℤ :=
  A337363.P11598784413067799807.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066446, A129308, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337363.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338691.P3970477865839426901

`∪[A343500(n+1), A004767(n)]`
-/

namespace A338691.P3970477865839426901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A338691.P3970477865839426901

noncomputable section

/-- A338691: Positions of (-1)'s in A209615.

Offset 1, canonical program `A338691.P3970477865839426901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338691 (n : ℕ) : ℤ :=
  (A338691.P3970477865839426901.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338691.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A340082.P8525962363158034396

`A003958(n+1)/A340081(n+1)`
-/

namespace A340082.P8525962363158034396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A340081 (n + 1) : ℚ)

end

end A340082.P8525962363158034396

noncomputable section

/-- A340082: a(n) = A003958(n) / gcd(n-1, A003958(n)).

Offset 1, canonical program `A340082.P8525962363158034396`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A340081, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340082 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340082.P8525962363158034396.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A340081, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340082.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A342036.P14204125781141140411

`A007088(A048701(n))`
-/

namespace A342036.P14204125781141140411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A048701 n).toNat

end

end A342036.P14204125781141140411

noncomputable section

/-- A342036: Palindromes of even length only using 0 or 1.

Offset 0, canonical program `A342036.P14204125781141140411`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A048701, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342036 (n : ℕ) : ℤ :=
  A342036.P14204125781141140411.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A048701, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342036.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A344314.P13255996641734891554

`eq[A048105(n+1), A048105(n+2)]+1`
-/

namespace A344314.P13255996641734891554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A344314.P13255996641734891554

noncomputable section

/-- A344314: Number k such that k and k+1 have the same number of nonunitary divisors (A048105).

Offset 1, canonical program `A344314.P13255996641734891554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3460 terms. -/
def A344314 (n : ℕ) : ℤ :=
  (A344314.P13255996641734891554.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3460 terms. -/
def A344314.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A346759.P7376657440773786324

`(A001157(n+1)-A001227(n+1))/4`
-/

namespace A346759.P7376657440773786324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) - A001227 (n + 1) : ℚ) / 4

end

end A346759.P7376657440773786324

noncomputable section

/-- A346759: a(n) = Sum_{d|n} floor(d^2/4).

Offset 1, canonical program `A346759.P7376657440773786324`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001227, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346759 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A346759.P7376657440773786324.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001227, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346759.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A348076.P15700061850166642476

`A187039(eq[1, A187039(n+2)-A187039(n+1)]+1)`
-/

namespace A348076.P15700061850166642476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187039 (n + 2) - A187039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187039 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A348076.P15700061850166642476

noncomputable section

/-- A348076: Number k such that k and k+1 both have an equal number of even and odd exponents in their prime factorization (A187039).

Offset 1, canonical program `A348076.P15700061850166642476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 867 terms. -/
def A348076 (n : ℕ) : ℤ :=
  A348076.P15700061850166642476.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 867 terms. -/
def A348076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348093.P4410502798466718450

`∩[A036434(n+1), A045765(n+1)]`
-/

namespace A348093.P4410502798466718450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348093.P4410502798466718450

noncomputable section

/-- A348093: Numbers k >= 1 such that there is no pair (x,y) such that x - d(x) = k or y + d(y) = k, where d = A000005 = number of divisors.

Offset 1, canonical program `A348093.P4410502798466718450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3651 terms. -/
def A348093 (n : ℕ) : ℤ :=
  (A348093.P4410502798466718450.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3651 terms. -/
def A348093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348155.P18262627327262397184

`A064840(n+1)-A033273(n+1)*A065608(n+1)`
-/

namespace A348155.P18262627327262397184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064840 (n + 1) - A033273 (n + 1) * A065608 (n + 1)

end

end A348155.P18262627327262397184

noncomputable section

/-- A348155: a(n) = tau(n)^2 + omega(n)*(sigma(n) - tau(n)).

Offset 1, canonical program `A348155.P18262627327262397184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348155 (n : ℕ) : ℤ :=
  A348155.P18262627327262397184.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348341.P11276104296330033514

`A000005(n+1)-A037445(n+1)`
-/

namespace A348341.P11276104296330033514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A037445 (n + 1)

end

end A348341.P11276104296330033514

noncomputable section

/-- A348341: a(n) is the number of noninfinitary divisors of n.

Offset 1, canonical program `A348341.P11276104296330033514`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A037445, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348341 (n : ℕ) : ℤ :=
  A348341.P11276104296330033514.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A037445, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348341.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348623.P9735768034356136830

`a(n-1)+A001227(a(n-1))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348623.P9735768034356136830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001227 (a (n - 1)).toNat

end

end A348623.P9735768034356136830

noncomputable section

/-- A348623: a(1) = 1; for n > 1 a(n) = a(n-1) + A001227(a(n-1)).

Offset 1, canonical program `A348623.P9735768034356136830`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001227, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348623 (n : ℕ) : ℤ :=
  A348623.P9735768034356136830.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001227, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348623.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348968.P9124505196003160058

`A099377(n+1)/A057021(n+1)`
-/

namespace A348968.P9124505196003160058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099377 (n + 1) : ℚ) / (A057021 (n + 1) : ℚ)

end

end A348968.P9124505196003160058

noncomputable section

/-- A348968: a(n) = gcd(n, A099377(n)), where A099377(n) is the numerator of the harmonic mean of the divisors of n.

Offset 1, canonical program `A348968.P9124505196003160058`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057021, A099377, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348968 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348968.P9124505196003160058.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057021, A099377, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348968.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349217.P15711240250818739680

`A348219(n+1)+∑{p}[n+1, n-floor(n/#)]`
-/

namespace A349217.P15711240250818739680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348219 (n + 1) + ∑ p ∈ Nat.primeFactors (f1 n), ((n : ℤ) - ⌊(n : ℚ) / (p : ℚ)⌋)

end

end A349217.P15711240250818739680

noncomputable section

/-- A349217: a(n) = Sum_{d|n} n^c(d), where c is the prime characteristic (A010051).

Offset 1, canonical program `A349217.P15711240250818739680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349217 (n : ℕ) : ℤ :=
  A349217.P15711240250818739680.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349913.P3840109067347682984

`A001227(n+1)+A327276(n+1)`
-/

namespace A349913.P3840109067347682984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + A327276 (n + 1)

end

end A349913.P3840109067347682984

noncomputable section

/-- A349913: Sum of A001227 (the number of odd divisors function) and its Dirichlet inverse.

Offset 1, canonical program `A349913.P3840109067347682984`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001227, A327276, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349913 (n : ℕ) : ℤ :=
  A349913.P3840109067347682984.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001227, A327276, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349913.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351408.P16840462470180952888

`A048105(n+1)-A046951(n+1)+2`
-/

namespace A351408.P16840462470180952888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) - A046951 (n + 1) + 2

end

end A351408.P16840462470180952888

noncomputable section

/-- A351408: Number of divisors of n that are either trivial or are nonsquares with a square divisor > 1.

Offset 1, canonical program `A351408.P16840462470180952888`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, A048105, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351408 (n : ℕ) : ℤ :=
  A351408.P16840462470180952888.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, A048105, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351408.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351414.P15953390987188253325

`A048105(n+1)+A361205(n+1)`
-/

namespace A351414.P15953390987188253325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) + A361205 (n + 1)

end

end A351414.P15953390987188253325

noncomputable section

/-- A351414: Number of divisors of n that are either prime or have at least 1 square divisor > 1 and at least two distinct prime factors.

Offset 1, canonical program `A351414.P15953390987188253325`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048105, A361205, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351414 (n : ℕ) : ℤ :=
  A351414.P15953390987188253325.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048105, A361205, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351414.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351417.P10622450361574635402

`A048105(n+1)+A001221(n+1)`
-/

namespace A351417.P10622450361574635402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) + A001221 (n + 1)

end

end A351417.P10622450361574635402

noncomputable section

/-- A351417: Number of divisors of n that are either prime or have at least one square divisor > 1.

Offset 1, canonical program `A351417.P10622450361574635402`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A048105, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351417 (n : ℕ) : ℤ :=
  A351417.P10622450361574635402.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A048105, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351417.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351442.P10937591874655520660

`A003958(∑{d}[n+1, #])`
-/

namespace A351442.P10937591874655520660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A351442.P10937591874655520660

noncomputable section

/-- A351442: a(n) = A003958(sigma(n)), where A003958 is multiplicative with a(p^e) = (p-1)^e and sigma is the sum of divisors function.

Offset 1, canonical program `A351442.P10937591874655520660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351442 (n : ℕ) : ℤ :=
  A351442.P10937591874655520660.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351711.P10274480873794141417

`A248577(n+1)+∑{d}[n+1, A055631(#)]`
-/

namespace A351711.P10274480873794141417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248577 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A055631 d

end

end A351711.P10274480873794141417

noncomputable section

/-- A351711: a(n) = Sum_{p|n, p prime} Sum_{d|n} gcd(d,p).

Offset 1, canonical program `A351711.P10274480873794141417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351711 (n : ℕ) : ℤ :=
  A351711.P10274480873794141417.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352482.P1047364551664792945

`A038040(n+1)/gcd(A038040(n+1), A049820(n+1))`
-/

namespace A352482.P1047364551664792945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (Int.gcd (A038040 (n + 1)) (A049820 (n + 1)) : ℚ)

end

end A352482.P1047364551664792945

noncomputable section

/-- A352482: Denominator of (n-d)/n*d where d = A000005(n) is the number of divisors of n.

Offset 1, canonical program `A352482.P1047364551664792945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352482 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A352482.P1047364551664792945.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352482.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A353643.P5389742288665032552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353643 (n : ℕ) : ℤ :=
  (A353643.P5389742288665032552.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353643.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A356018.P4624671268453047338

`A000005(n+1)-A227872(n+1)`
-/

namespace A356018.P4624671268453047338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A227872 (n + 1)

end

end A356018.P4624671268453047338

noncomputable section

/-- A356018: a(n) is the number of evil divisors (A001969) of n.

Offset 1, canonical program `A356018.P4624671268453047338`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A227872, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A356018 (n : ℕ) : ℤ :=
  A356018.P4624671268453047338.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A227872, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A356018.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356248.P4382023687688512763

`A289813(n)+1`
-/

namespace A356248.P4382023687688512763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 n + 1

end

end A356248.P4382023687688512763

noncomputable section

/-- A356248: Image of 1 under repeated application of the map k -> (2k-1,2k,2k-1).

Offset 0, canonical program `A356248.P4382023687688512763`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289813, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356248 (n : ℕ) : ℤ :=
  A356248.P4382023687688512763.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289813, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356248.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356306.P4886106723290676406

`and(A141304(A009262(n+1)), A355931(n+1))`
-/

namespace A356306.P4886106723290676406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141304 (A009262 (n + 1)).toNat) (A355931 (n + 1))

end

end A356306.P4886106723290676406

noncomputable section

/-- A356306: The nearest common ancestor of A000265(n) and gcd(A000265(n), sigma(n)) in the A253563-tree.

Offset 1, canonical program `A356306.P4886106723290676406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A356306 (n : ℕ) : ℤ :=
  A356306.P4886106723290676406.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A356306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356744.P10025507909788214387

`∩[A030626(n+1), A062832(n+1)]`
-/

namespace A356744.P10025507909788214387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356744.P10025507909788214387

noncomputable section

/-- A356744: Numbers k such that both k and k+2 have exactly 8 divisors.

Offset 1, canonical program `A356744.P10025507909788214387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1489 terms. -/
def A356744 (n : ℕ) : ℤ :=
  (A356744.P10025507909788214387.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1489 terms. -/
def A356744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357460.P2237439147357638215

`eq[A080226(n+1), A341620(n+1)]+1`
-/

namespace A357460.P2237439147357638215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A357460.P2237439147357638215

noncomputable section

/-- A357460: Numbers whose number of deficient divisors is equal to their number of nondeficient divisors.

Offset 1, canonical program `A357460.P2237439147357638215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A357460 (n : ℕ) : ℤ :=
  (A357460.P2237439147357638215.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A357460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358261.P13898711941004689551

`A046951(n+1)-A358260(n+1)`
-/

namespace A358261.P13898711941004689551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) - A358260 (n + 1)

end

end A358261.P13898711941004689551

noncomputable section

/-- A358261: a(n) is the number of noninfinitary square divisors of n.

Offset 1, canonical program `A358261.P13898711941004689551`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, A358260, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358261 (n : ℕ) : ℤ :=
  A358261.P13898711941004689551.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, A358260, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358261.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358345.P3459524119190626708

`A046951(n+1)-A298735(n+1)`
-/

namespace A358345.P3459524119190626708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) - A298735 (n + 1)

end

end A358345.P3459524119190626708

noncomputable section

/-- A358345: a(n) is the number of even square divisors of n.

Offset 1, canonical program `A358345.P3459524119190626708`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, A298735, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358345 (n : ℕ) : ℤ :=
  A358345.P3459524119190626708.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, A298735, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358345.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358360.P603606278871448

`A000989(floor((n+1)/2))+A168570(n+1)`
-/

namespace A358360.P603606278871448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 ⌊(n + 1 : ℚ) / 2⌋.toNat + A168570 (n + 1)

end

end A358360.P603606278871448

noncomputable section

/-- A358360: The 3-adic valuation of the central Delannoy numbers (sequence A001850).

Offset 0, canonical program `A358360.P603606278871448`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000989, A168570, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358360 (n : ℕ) : ℤ :=
  A358360.P603606278871448.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000989, A168570, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359429.P17076319737236321028

`A212793(n+1)-A008966(n+1)`
-/

namespace A359429.P17076319737236321028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1) - A008966 (n + 1)

end

end A359429.P17076319737236321028

noncomputable section

/-- A359429: a(n) = 1 if n is cubefree, but not squarefree, otherwise 0.

Offset 1, canonical program `A359429.P17076319737236321028`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A212793, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359429 (n : ℕ) : ℤ :=
  A359429.P17076319737236321028.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A212793, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359429.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360525.P13636672009762808303

`lt[2*n+3, A360522(n+1)]+1`
-/

namespace A360525.P13636672009762808303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360522 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A360525.P13636672009762808303

noncomputable section

/-- A360525: Numbers k such that A360522(k) > 2*k.

Offset 1, canonical program `A360525.P13636672009762808303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1135 terms. -/
def A360525 (n : ℕ) : ℤ :=
  (A360525.P13636672009762808303.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1135 terms. -/
def A360525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360779.P10771138546409897050

`A033950(n+2)-A033950(n+1)`
-/

namespace A360779.P10771138546409897050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 2) - A033950 (n + 1)

end

end A360779.P10771138546409897050

noncomputable section

/-- A360779: Refactorable numbers gaps: differences between consecutive refactorable numbers.

Offset 1, canonical program `A360779.P10771138546409897050`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360779 (n : ℕ) : ℤ :=
  A360779.P10771138546409897050.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360779.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A364020.P9511425186973274188

`∑{d}[n+1, A000010(#)*A364044((n+1)/#)]`
-/

namespace A364020.P9511425186973274188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A364044 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364020.P9511425186973274188

noncomputable section

/-- A364020: Expansion of Sum_{k>0} k * x^(2*k) / (1 + x^(5*k)).

Offset 1, canonical program `A364020.P9511425186973274188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364020 (n : ℕ) : ℤ :=
  A364020.P9511425186973274188.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364021.P12955701881080745028

`∑{d}[n+1, A000010(#)*A364045((n+1)/#)]`
-/

namespace A364021.P12955701881080745028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A364045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364021.P12955701881080745028

noncomputable section

/-- A364021: Expansion of Sum_{k>0} k * x^(3*k) / (1 + x^(5*k)).

Offset 1, canonical program `A364021.P12955701881080745028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364021 (n : ℕ) : ℤ :=
  A364021.P12955701881080745028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364022.P2819897864541114288

`∑{d}[n+1, A000010(#)*A364046((n+1)/#)]`
-/

namespace A364022.P2819897864541114288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A364046 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364022.P2819897864541114288

noncomputable section

/-- A364022: Expansion of Sum_{k>0} k * x^(4*k) / (1 + x^(5*k)).

Offset 1, canonical program `A364022.P2819897864541114288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364022 (n : ℕ) : ℤ :=
  A364022.P2819897864541114288.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364351.P11666477294992422391

`∑{d}[n+1, A007434(#)*A320900((n+1)/#)]`
-/

namespace A364351.P11666477294992422391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A320900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364351.P11666477294992422391

noncomputable section

/-- A364351: Expansion of Sum_{k>0} k^2 * x^k/(1 + x^k)^3.

Offset 1, canonical program `A364351.P11666477294992422391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364351 (n : ℕ) : ℤ :=
  A364351.P11666477294992422391.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364351.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A366606.P16159170449788144016

`A046798(2*n)`
-/

namespace A366606.P16159170449788144016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046798 (2 * n)

end

end A366606.P16159170449788144016

noncomputable section

/-- A366606: Number of divisors of 4^n+1.

Offset 0, canonical program `A366606.P16159170449788144016`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046798, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366606 (n : ℕ) : ℤ :=
  A366606.P16159170449788144016.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046798, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366606.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A366656.P9970264767175051345

`A046798(3*n)`
-/

namespace A366656.P9970264767175051345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046798 (3 * n)

end

end A366656.P9970264767175051345

noncomputable section

/-- A366656: Number of divisors of 8^n+1.

Offset 0, canonical program `A366656.P9970264767175051345`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046798, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366656 (n : ℕ) : ℤ :=
  A366656.P9970264767175051345.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046798, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366656.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A367407.P18083013825818049361

`sqrt(A367406(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A367407.P18083013825818049361
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A367406 (n + 1) : ℝ)

end

end A367407.P18083013825818049361

noncomputable section

/-- A367407: a(n) = sqrt(A367406(n)).

Offset 1, canonical program `A367407.P18083013825818049361`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367407 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367407.P18083013825818049361.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367407.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368612.P6816572192409665287

`A368610(n+1)-A092494(n+1)`
-/

namespace A368612.P6816572192409665287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368610 (n + 1) - A092494 (n + 1)

end

end A368612.P6816572192409665287

noncomputable section

/-- A368612: a(n) = Sum_{k=2..n} pi(k-1) * ceiling(n/k).

Offset 1, canonical program `A368612.P6816572192409665287`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092494, A368610, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368612 (n : ℕ) : ℤ :=
  A368612.P6816572192409665287.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092494, A368610, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368612.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368738.P15555068762873214386

`∑{d}[n+1, A000010(#)*A038502((n+1)/#)]`
-/

namespace A368738.P15555068762873214386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A038502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368738.P15555068762873214386

noncomputable section

/-- A368738: a(n) = Sum_{k = 1..n} gcd(3*k + 1, n).

Offset 1, canonical program `A368738.P15555068762873214386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368738 (n : ℕ) : ℤ :=
  A368738.P15555068762873214386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369257.P15625440583035575775

`(A001227(n+1)+A053866(n+1))/2`
-/

namespace A369257.P15625440583035575775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001227 (n + 1) + A053866 (n + 1) : ℚ) / 2

end

end A369257.P15625440583035575775

noncomputable section

/-- A369257: a(n) = number of odd divisors of n that have an even number of prime factors with multiplicity.

Offset 1, canonical program `A369257.P15625440583035575775`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001227, A053866, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369257 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369257.P15625440583035575775.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001227, A053866, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369257.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371238.P16159629807628423493

`A000010(A048701(n+1))`
-/

namespace A371238.P16159629807628423493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A048701 (n + 1)).toNat

end

end A371238.P16159629807628423493

noncomputable section

/-- A371238: Euler totient function applied to the binary palindromes of even length.

Offset 1, canonical program `A371238.P16159629807628423493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A371238 (n : ℕ) : ℤ :=
  A371238.P16159629807628423493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A371238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372466.P2259906061288751981

`A051903(eq[1, A359473(n+1)]+1)`
-/

namespace A372466.P2259906061288751981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A372466.P2259906061288751981

noncomputable section

/-- A372466: The maximal exponent in the prime factorization of the numbers whose number of divisors is a power of 2 (A036537).

Offset 1, canonical program `A372466.P2259906061288751981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372466 (n : ℕ) : ℤ :=
  A372466.P2259906061288751981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372470.P1016400995932517880

`A359473(n+1)*A000005(n+1)`
-/

namespace A372470.P1016400995932517880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359473 (n + 1) * A000005 (n + 1)

end

end A372470.P1016400995932517880

noncomputable section

/-- A372470: Multiplicative with a(p^e) = e+1 if e+1 is a power of 2, and 0 otherwise.

Offset 1, canonical program `A372470.P1016400995932517880`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A359473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372470 (n : ℕ) : ℤ :=
  A372470.P1016400995932517880.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A359473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372470.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A375960.P2597128475225749997

`∪[A211338(n+1), ∑[A003215(n)]]`
-/

namespace A375960.P2597128475225749997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211338 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375960.P2597128475225749997

noncomputable section

/-- A375960: Numbers whose product of proper divisors is a cube.

Offset 1, canonical program `A375960.P2597128475225749997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375960 (n : ℕ) : ℤ :=
  (A375960.P2597128475225749997.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380449.P8792025045371275510

`A000203(n+1)+A033273(n+1)`
-/

namespace A380449.P8792025045371275510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A033273 (n + 1)

end

end A380449.P8792025045371275510

noncomputable section

/-- A380449: Sum of the divisors of n plus the number of nonprime divisors of n.

Offset 1, canonical program `A380449.P8792025045371275510`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033273, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380449 (n : ℕ) : ℤ :=
  A380449.P8792025045371275510.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033273, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380449.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382788.P17277517064423675341

`∑{d}[n+1, #*A359473(#)]`
-/

namespace A382788.P17277517064423675341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A359473 d

end

end A382788.P17277517064423675341

noncomputable section

/-- A382788: The sum of divisors of n that are numbers whose number of divisors is a power of 2.

Offset 1, canonical program `A382788.P17277517064423675341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382788 (n : ℕ) : ℤ :=
  A382788.P17277517064423675341.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382902.P14316816565778821519

`A382904(n+1)*A382904(n+1)/A382905(n+1)`
-/

namespace A382902.P14316816565778821519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382904 (n + 1) * A382904 (n + 1) : ℚ) / (A382905 (n + 1) : ℚ)

end

end A382902.P14316816565778821519

noncomputable section

/-- A382902: The largest cubefree divisor of the n-th biquadratefree number.

Offset 1, canonical program `A382902.P14316816565778821519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382902 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382902.P14316816565778821519.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384710.P17192466185515351844

`1-A062830(n)+n`
-/

namespace A384710.P17192466185515351844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A062830 n + (n : ℤ)

end

end A384710.P17192466185515351844

noncomputable section

/-- A384710: a(n) = Sum_{k=0..n} [gcd(k, n) = 1], where [.] are the Iverson brackets.

Offset 0, canonical program `A384710.P17192466185515351844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384710 (n : ℕ) : ℤ :=
  A384710.P17192466185515351844.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385147.P13098067646068759981

`∑[A066781(n+1)]`
-/

namespace A385147.P13098067646068759981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385147.P13098067646068759981

noncomputable section

/-- A385147: a(n) = Sum_{i=1..n} 2^phi(i), where phi=A000010.

Offset 1, canonical program `A385147.P13098067646068759981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A385147 (n : ℕ) : ℤ :=
  A385147.P13098067646068759981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A385147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385822.P7363694969260658902

`comp[A039770(n+1)-1]+1`
-/

namespace A385822.P7363694969260658902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A385822.P7363694969260658902

noncomputable section

/-- A385822: Numbers k such that phi(k) is not a perfect square.

Offset 1, canonical program `A385822.P7363694969260658902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385822 (n : ℕ) : ℤ :=
  (A385822.P7363694969260658902.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385998.P16754963175489702644

`eq[A001221(n+1), A046951(n+1)]+1`
-/

namespace A385998.P16754963175489702644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A385998.P16754963175489702644

noncomputable section

/-- A385998: Numbers that are divisible by an equal number of distinct primes and squares.

Offset 1, canonical program `A385998.P16754963175489702644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2584 terms. -/
def A385998 (n : ℕ) : ℤ :=
  (A385998.P16754963175489702644.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2584 terms. -/
def A385998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386438.P6678444631215707728

`A007503(n+1)-A348219(n+1)`
-/

namespace A386438.P6678444631215707728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - A348219 (n + 1)

end

end A386438.P6678444631215707728

noncomputable section

/-- A386438: a(n) = sigma(n) + omega(n) - n * Sum_{p|n, p prime} 1 / p.

Offset 1, canonical program `A386438.P6678444631215707728`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007503, A348219, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A386438 (n : ℕ) : ℤ :=
  A386438.P6678444631215707728.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007503, A348219, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A386438.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386624.P17245005643228662318

`∑{d}[n+1, A007427(#)*A062952((n+1)/#)]`
-/

namespace A386624.P17245005643228662318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A062952 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A386624.P17245005643228662318

noncomputable section

/-- A386624: a(n) = Sum_{d|n} sigma(d) * phi(d) * mu(n/d).

Offset 1, canonical program `A386624.P17245005643228662318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386624 (n : ℕ) : ℤ :=
  A386624.P17245005643228662318.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387633.P13911343099443037647

`A345276(n+1)+A001615(n+1)`
-/

namespace A387633.P13911343099443037647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345276 (n + 1) + A001615 (n + 1)

end

end A387633.P13911343099443037647

noncomputable section

/-- A387633: a(n) = tau(n) + (n-1) * tau(rad(n)).

Offset 1, canonical program `A387633.P13911343099443037647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387633 (n : ℕ) : ℤ :=
  A387633.P13911343099443037647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390958.P3512256824104388828

`A390957(A072587(n+1))`
-/

namespace A390958.P3512256824104388828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390957 (A072587 (n + 1)).toNat

end

end A390958.P3512256824104388828

noncomputable section

/-- A390958: The number of non-bi-unitary divisors of the numbers that are not exponentially odd.

Offset 1, canonical program `A390958.P3512256824104388828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2945 terms. -/
def A390958 (n : ℕ) : ℤ :=
  A390958.P3512256824104388828.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2945 terms. -/
def A390958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391025.P17647453908498382360

`filter[A053850(n+1), A389905(#)]`
-/

namespace A391025.P17647453908498382360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391025.P17647453908498382360

noncomputable section

/-- A391025: Odd numbers that are neither powerful nor squarefree.

Offset 1, canonical program `A391025.P17647453908498382360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6012 terms. -/
def A391025 (n : ℕ) : ℤ :=
  A391025.P17647453908498382360.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6012 terms. -/
def A391025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294888.P2385972138544037667

`A294886(n+1)+A082551(n+1)*A187794(n+1)`
-/

namespace A294888.P2385972138544037667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294886 (n + 1) + A082551 (n + 1) * A187794 (n + 1)

end

end A294888.P2385972138544037667

noncomputable section

/-- A294888: Sum of nonabundant proper divisors of n.

Offset 1, canonical program `A294888.P2385972138544037667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294888 (n : ℕ) : ℤ :=
  A294888.P2385972138544037667.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294927.P17135175495355119695

`floor(n*A341620(n+1)/(n+1))`
-/

namespace A294927.P17135175495355119695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * A341620 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A294927.P17135175495355119695

noncomputable section

/-- A294927: Number of proper divisors of n that are nondeficient (A023196).

Offset 1, canonical program `A294927.P17135175495355119695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294927 (n : ℕ) : ℤ :=
  A294927.P17135175495355119695.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306263.P2796597650289034260

`record[gcd(n+1, A324393(n+1))]`
-/

namespace A306263.P2796597650289034260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A324393 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306263.P2796597650289034260

noncomputable section

/-- A306263: Numbers k such that, for any divisor d of k, the Hamming weight of d divides k.

Offset 1, canonical program `A306263.P2796597650289034260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2249 terms. -/
def A306263 (n : ℕ) : ℤ :=
  (A306263.P2796597650289034260.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2249 terms. -/
def A306263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335182.P8782257902307896353

`A349322(n+1)-A349658(n+1)`
-/

namespace A335182.P8782257902307896353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349322 (n + 1) - A349658 (n + 1)

end

end A335182.P8782257902307896353

noncomputable section

/-- A335182: Sum of the refactorable divisors of n.

Offset 1, canonical program `A335182.P8782257902307896353`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349322, A349658, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335182 (n : ℕ) : ℤ :=
  A335182.P8782257902307896353.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349322, A349658, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335182.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338242.P14287517740341381952

`-A338241(2*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A338242.P14287517740341381952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A338241 (2 * n)

end

end A338242.P14287517740341381952

noncomputable section

/-- A338242: a(n) = -A338241(2*n) for any n >= 0.

Offset 0, canonical program `A338242.P14287517740341381952`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338241, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338242 (n : ℕ) : ℤ :=
  A338242.P14287517740341381952.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338241, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338242.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338243.P15957865261195193101

`abs(A338241(A004273(n)))`
-/

namespace A338243.P15957865261195193101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A338241 (A004273 n).toNat|

end

end A338243.P15957865261195193101

noncomputable section

/-- A338243: a(0) = 0, a(n) = A338241(2*n-1) for any n > 0.

Offset 0, canonical program `A338243.P15957865261195193101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A338243 (n : ℕ) : ℤ :=
  A338243.P15957865261195193101.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A338243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341619.P13364510289438970610

`A063524(A341620(n+1))`
-/

namespace A341619.P13364510289438970610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A341620 (n + 1)).toNat

end

end A341619.P13364510289438970610

noncomputable section

/-- A341619: Characteristic function of primitive nondeficient numbers (A006039): a(n) = 1 if proper multiples of n are all abundant, and proper divisors of n are all deficient, 0 otherwise.

Offset 1, canonical program `A341619.P13364510289438970610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341619 (n : ℕ) : ℤ :=
  A341619.P13364510289438970610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341619.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A358089.P6226920074506255654

`Δ[A126706(n+1)]`
-/

namespace A358089.P6226920074506255654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358089.P6226920074506255654

noncomputable section

/-- A358089: First differences of A126706.

Offset 1, canonical program `A358089.P6226920074506255654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A358089 (n : ℕ) : ℤ :=
  A358089.P6226920074506255654.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A358089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365783.P14997640771411737511

`∏{p}[A126706(n+1), #]`
-/

namespace A365783.P14997640771411737511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A365783.P14997640771411737511

noncomputable section

/-- A365783: a(n) = squarefree kernel of A126706(n).

Offset 1, canonical program `A365783.P14997640771411737511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365783 (n : ℕ) : ℤ :=
  (A365783.P14997640771411737511.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367455.P9702420708223161966

`filter[A126706(n+1), A097325(#)]`
-/

namespace A367455.P9702420708223161966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A367455.P9702420708223161966

noncomputable section

/-- A367455: Numbers not divisible by 6 that are neither squarefree nor prime powers.

Offset 1, canonical program `A367455.P9702420708223161966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7021 terms. -/
def A367455 (n : ℕ) : ℤ :=
  A367455.P9702420708223161966.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7021 terms. -/
def A367455.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A378480.P8315309591831248702

`filter[A007304(n+1), A294934(#)]`
-/

namespace A378480.P8315309591831248702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A378480.P8315309591831248702

noncomputable section

/-- A378480: Products of 3 distinct prime numbers (or sphenics) that are deficient.

Offset 1, canonical program `A378480.P8315309591831248702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8934 terms. -/
def A378480 (n : ℕ) : ℤ :=
  A378480.P8315309591831248702.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8934 terms. -/
def A378480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380857.P17828759353417711251

`A126706(n+1)²`
-/

namespace A380857.P17828759353417711251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1) ^ 2

end

end A380857.P17828759353417711251

noncomputable section

/-- A380857: Squares of numbers that are neither squarefree nor prime powers.

Offset 1, canonical program `A380857.P17828759353417711251`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380857 (n : ℕ) : ℤ :=
  A380857.P17828759353417711251.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380857.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385132.P7264156870797945841

`1-A385133(n+1)+n`
-/

namespace A385132.P7264156870797945841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A385133 (n + 1) + (n : ℤ)

end

end A385132.P7264156870797945841

noncomputable section

/-- A385132: The number of integers k from 1 to n such that gcd(n, k) has an even maximum exponent in its prime factorization.

Offset 1, canonical program `A385132.P7264156870797945841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385132 (n : ℕ) : ℤ :=
  A385132.P7264156870797945841.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385132.provenance : SequenceMachineLib.Provenance := .conjectured

