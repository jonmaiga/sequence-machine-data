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
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A389460.P4100129062004937204

`A000203(n+1)-A075423(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389460.P4100129062004937204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A075423 (n + 1)

end

end A389460.P4100129062004937204

noncomputable section

/-- A389460: a(n) = sigma(n) - A075423(n).

Offset 1, canonical program `A389460.P4100129062004937204`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A075423(n+1)` (program `A389460.P4100129062004937204`, by `A389460.P4100129062004937204.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389460 (n : ℕ) : ℤ :=
  A389460.P4100129062004937204.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A075423(n+1)` (program `A389460.P4100129062004937204`, by `A389460.P4100129062004937204.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389460.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A389461.P3198355901571096713

`A000203(n+1)-A075423(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389461.P3198355901571096713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A075423 (n + 1) - (n + 1 : ℤ)

end

end A389461.P3198355901571096713

noncomputable section

/-- A389461: a(n) = sigma(n) - A075423(n) - n.

Offset 1, canonical program `A389461.P3198355901571096713`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A075423(n+1)-(n+1)` (program `A389461.P3198355901571096713`, by `A389461.P3198355901571096713.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389461 (n : ℕ) : ℤ :=
  A389461.P3198355901571096713.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A075423(n+1)-(n+1)` (program `A389461.P3198355901571096713`, by `A389461.P3198355901571096713.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389461.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A365618.P14703952896734191047

`A000120(col(n))+A000120(row(n)-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365618.P14703952896734191047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.triCol n) + A000120 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A365618.P14703952896734191047

noncomputable section

/-- A365618: Table read by antidiagonals: T(n, k) = A000120(n) + A000120(k).

Offset 0, canonical program `A365618.P14703952896734191047`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000120(col(n))+A000120(row(n)-col(n))` (program `A365618.P14703952896734191047`, by `A365618.P14703952896734191047.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A365618 (n : ℕ) : ℤ :=
  A365618.P14703952896734191047.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000120(col(n))+A000120(row(n)-col(n))` (program `A365618.P14703952896734191047`, by `A365618.P14703952896734191047.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A365618.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A367055.P14392645356822177858

`A000120(col(n))+A000120(row(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A367055.P14392645356822177858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.triCol n) + A000120 (SequenceMachineLib.triRow n)

end

end A367055.P14392645356822177858

noncomputable section

/-- A367055: Triangle read by rows: T(n, k) = A000120(n) + A000120(k), 0 <= k <= n.

Offset 0, canonical program `A367055.P14392645356822177858`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000120(col(n))+A000120(row(n))` (program `A367055.P14392645356822177858`, by `A367055.P14392645356822177858.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A367055 (n : ℕ) : ℤ :=
  A367055.P14392645356822177858.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000120(col(n))+A000120(row(n))` (program `A367055.P14392645356822177858`, by `A367055.P14392645356822177858.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A367055.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A362516.P4966196509825039487

`2^(2*(n+1)+1)-1-A286188(n+1)`
-/

namespace A362516.P4966196509825039487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (2 * (n + 1) + 1) : ℤ) - 1 - A286188 (n + 1)

end

end A362516.P4966196509825039487

noncomputable section

/-- A362516: Number of vertex cuts in the n-gear graph.

Offset 1, canonical program `A362516.P4966196509825039487`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362516 (n : ℕ) : ℤ :=
  A362516.P4966196509825039487.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362516.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A362570.P15557334788396659153

`2*A247485(n+1)-1`
-/

namespace A362570.P15557334788396659153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247485 (n + 1) - 1

end

end A362570.P15557334788396659153

noncomputable section

/-- A362570: a(n) is the number of isogeny classes of elliptic curves over the finite field of order prime(n).

Offset 1, canonical program `A362570.P15557334788396659153`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362570 (n : ℕ) : ℤ :=
  A362570.P15557334788396659153.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362570.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A362577.P12384799473361245898

`3*4^(n+1)-4*(n+1)²+2*(n+1)-2+A005248(n+1)-2*A206776(n+1)`
-/

namespace A362577.P12384799473361245898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 4 ^ (n + 1) : ℤ) - (4 * (n + 1) ^ 2 : ℤ) + (2 * (n + 1) : ℤ) - 2 + A005248 (n + 1) - 2 * A206776 (n + 1)

end

end A362577.P12384799473361245898

noncomputable section

/-- A362577: Number of vertex cuts in the n-trapezohedral graph.

Offset 1, canonical program `A362577.P12384799473361245898`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362577 (n : ℕ) : ℤ :=
  A362577.P12384799473361245898.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362577.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364377.P9444076824307639335

`val(A265747(n+1), 10)`
-/

namespace A364377.P9444076824307639335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A265747 (n + 1)).toNat 10

end

end A364377.P9444076824307639335

noncomputable section

/-- A364377: The number of trailing 0's in the representation of n in Jacobsthal greedy base (A265747).

Offset 1, canonical program `A364377.P9444076824307639335`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364377 (n : ℕ) : ℤ :=
  (A364377.P9444076824307639335.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364377.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364636.P14583533737754547880

`2*A364553(n)-A093967(n)`
-/

namespace A364636.P14583533737754547880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A364553 n - A093967 n

end

end A364636.P14583533737754547880

noncomputable section

/-- A364636: a(n) = ((1 - sqrt(2))^n + (1 + sqrt(2))^n)*n/2.

Offset 0, canonical program `A364636.P14583533737754547880`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364636 (n : ℕ) : ℤ :=
  A364636.P14583533737754547880.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364636.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364878.P8420984608544847247

`A002110(row(n)-col(n))*A002110(row(n))`
-/

namespace A364878.P8420984608544847247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) * A002110 (SequenceMachineLib.triRow n)

end

end A364878.P8420984608544847247

noncomputable section

/-- A364878: Triangle read by rows: T(n,k), 0 <= k <= n, is the smallest number that has n distinct prime factors, k of which are unique.

Offset 0, canonical program `A364878.P8420984608544847247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364878 (n : ℕ) : ℤ :=
  A364878.P8420984608544847247.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364878.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365341.P11718460894782233926

`A000142(n)*A002294(n)`
-/

namespace A365341.P11718460894782233926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A002294 n

end

end A365341.P11718460894782233926

noncomputable section

/-- A365341: a(n) = (5*n)!/(4*n+1)!.

Offset 0, canonical program `A365341.P11718460894782233926`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365341 (n : ℕ) : ℤ :=
  A365341.P11718460894782233926.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365341.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365628.P3061762940995932067

`C(A002110(n), n)`
-/

namespace A365628.P3061762940995932067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002110 n).toNat n

end

end A365628.P3061762940995932067

noncomputable section

/-- A365628: a(n) = binomial(primorial(n), n).

Offset 0, canonical program `A365628.P3061762940995932067`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365628 (n : ℕ) : ℤ :=
  (A365628.P3061762940995932067.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365628.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365767.P11724764653640938392

`A038098(A000040(n+2))-A038098(A000040(n+1))`
-/

namespace A365767.P11724764653640938392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (A000040 (n + 2)).toNat - A038098 (A000040 (n + 1)).toNat

end

end A365767.P11724764653640938392

noncomputable section

/-- A365767: a(n) is the number of primes between (prime(n))^3 and (prime(n+1))^3.

Offset 1, canonical program `A365767.P11724764653640938392`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365767 (n : ℕ) : ℤ :=
  A365767.P11724764653640938392.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365767.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366368.P8633765823509835394

`A003418(n)*A139550(n)`
-/

namespace A366368.P8633765823509835394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n * A139550 n

end

end A366368.P8633765823509835394

noncomputable section

/-- A366368: a(n) = LCM of pairwise products of distinct integers from {1,2,...,n}.

Offset 0, canonical program `A366368.P8633765823509835394`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366368 (n : ℕ) : ℤ :=
  A366368.P8633765823509835394.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366368.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366369.P15037694032256763167

`A003418(n)/A139550(n)`
-/

namespace A366369.P15037694032256763167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A139550 n : ℚ)

end

end A366369.P15037694032256763167

noncomputable section

/-- A366369: a(n) = product of primes p such that p^k <= n < 2*p^k for some k >= 1.

Offset 0, canonical program `A366369.P15037694032256763167`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366369 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A366369.P15037694032256763167.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366369.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366603.P3579980380335303809

`A069061(n+1)*A075708(n+1)`
-/

namespace A366603.P3579980380335303809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069061 (n + 1) * A075708 (n + 1)

end

end A366603.P3579980380335303809

noncomputable section

/-- A366603: Sum of the divisors of 4^n-1.

Offset 1, canonical program `A366603.P3579980380335303809`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366603 (n : ℕ) : ℤ :=
  A366603.P3579980380335303809.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366603.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366653.P16437631560606292113

`A075708(3*(n+1))`
-/

namespace A366653.P16437631560606292113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075708 (3 * (n + 1))

end

end A366653.P16437631560606292113

noncomputable section

/-- A366653: Sum of the divisors of 8^n-1.

Offset 1, canonical program `A366653.P16437631560606292113`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366653 (n : ℕ) : ℤ :=
  A366653.P16437631560606292113.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366653.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366662.P10540337059653051103

`A366576(2*(n+1))`
-/

namespace A366662.P10540337059653051103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366576 (2 * (n + 1))

end

end A366662.P10540337059653051103

noncomputable section

/-- A366662: Sum of the divisors of 9^n-1.

Offset 1, canonical program `A366662.P10540337059653051103`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366662 (n : ℕ) : ℤ :=
  A366662.P10540337059653051103.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366662.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366666.P7420732063156862119

`A366578(2*n)`
-/

namespace A366666.P7420732063156862119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366578 (2 * n)

end

end A366666.P7420732063156862119

noncomputable section

/-- A366666: Sum of the divisors of 9^n+1.

Offset 0, canonical program `A366666.P7420732063156862119`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366666 (n : ℕ) : ℤ :=
  A366666.P7420732063156862119.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366666.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366672.P17060177360912263348

`A002720(n)^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366672.P17060177360912263348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 n ^ n

end

end A366672.P17060177360912263348

noncomputable section

/-- A366672: a(n) = A002720(n)^n.

Offset 0, canonical program `A366672.P17060177360912263348`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366672 (n : ℕ) : ℤ :=
  A366672.P17060177360912263348.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366672.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366922.P8080897665247785144

`A051064(n+1)+1`
-/

namespace A366922.P8080897665247785144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (n + 1) + 1

end

end A366922.P8080897665247785144

noncomputable section

/-- A366922: a(n) is the exponent of 3 in the prime factorization of 10^n - 1.

Offset 1, canonical program `A366922.P8080897665247785144`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366922 (n : ℕ) : ℤ :=
  A366922.P8080897665247785144.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366922.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369059.P13689548116174192747

`A002620(A002110(n))`
-/

namespace A369059.P13689548116174192747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A002110 n).toNat

end

end A369059.P13689548116174192747

noncomputable section

/-- A369059: a(0) = 0, and for n > 0, a(n) is the square of the product of first n-1 odd primes.

Offset 0, canonical program `A369059.P13689548116174192747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369059 (n : ℕ) : ℤ :=
  A369059.P13689548116174192747.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369059.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369810.P6592128196772303573

`(n+1)*A284816(n+1)`
-/

namespace A369810.P6592128196772303573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A284816 (n + 1)

end

end A369810.P6592128196772303573

noncomputable section

/-- A369810: Number of ways to color n+1 identical balls using n distinct colors (each color is used) and place them in n numbered cells so that each cell contains at least one ball.

Offset 1, canonical program `A369810.P6592128196772303573`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369810 (n : ℕ) : ℤ :=
  A369810.P6592128196772303573.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369810.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370058.P6107118682366647322

`A000142(n)*A002293(n+1)`
-/

namespace A370058.P6107118682366647322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A002293 (n + 1)

end

end A370058.P6107118682366647322

noncomputable section

/-- A370058: a(n) = 4*(4*n+3)!/(3*n+4)!.

Offset 0, canonical program `A370058.P6107118682366647322`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370058 (n : ℕ) : ℤ :=
  A370058.P6107118682366647322.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370058.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370121.P16344633381371936390

`A002110(col(n))+A002110(row(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370121.P16344633381371936390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (SequenceMachineLib.triCol n) + A002110 (SequenceMachineLib.triRow n)

end

end A370121.P16344633381371936390

noncomputable section

/-- A370121: Triangle read by rows: T(n,k) = A002110(n) + A002110(k), 0 <= k <= n; sums of two primorials, not necessarily distinct.

Offset 0, canonical program `A370121.P16344633381371936390`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370121 (n : ℕ) : ℤ :=
  A370121.P16344633381371936390.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370121.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370134.P14656436913760815015

`A002110(row(n)+1)+A002110(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370134.P14656436913760815015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (SequenceMachineLib.triRow n + 1) + A002110 (SequenceMachineLib.triCol n + 1)

end

end A370134.P14656436913760815015

noncomputable section

/-- A370134: Triangle read by rows: T(n,k) = A002110(n) + A002110(k), 1 <= k <= n; sums of two primorials > 1, not necessarily distinct.

Offset 1, canonical program `A370134.P14656436913760815015`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370134 (n : ℕ) : ℤ :=
  A370134.P14656436913760815015.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370134.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A371357.P11199775498877504883

`A060818(n)*A000984(n)`
-/

namespace A371357.P11199775498877504883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060818 n * A000984 n

end

end A371357.P11199775498877504883

noncomputable section

/-- A371357: a(n) = 2^(n - HammingWeight(n)) * binomial(2*n, n).

Offset 0, canonical program `A371357.P11199775498877504883`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371357 (n : ℕ) : ℤ :=
  A371357.P11199775498877504883.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371357.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A371381.P5949282707073329261

`(n+1)²+A019446(n+1)²`
-/

namespace A371381.P5949282707073329261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + A019446 (n + 1) ^ 2

end

end A371381.P5949282707073329261

noncomputable section

/-- A371381: Main diagonal of A219875.

Offset 1, canonical program `A371381.P5949282707073329261`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371381 (n : ℕ) : ℤ :=
  A371381.P5949282707073329261.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371381.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372199.P3867827337780857125

`(n+1)!*A000045(n+1)*A001008(n+1)/A002805(n+1)`
-/

namespace A372199.P3867827337780857125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) : ℤ) * A000045 (n + 1) * A001008 (n + 1) : ℚ) / (A002805 (n + 1) : ℚ)

end

end A372199.P3867827337780857125

noncomputable section

/-- A372199: a(n) = n! * F(n) * H(n), where F(n) is the n-th Fibonacci number and H(n) the n-th harmonic number.

Offset 1, canonical program `A372199.P3867827337780857125`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372199 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372199.P3867827337780857125.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372199.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372210.P7092640518957855852

`(n+1)!*A000129(n+1)*A001008(n+1)/A002805(n+1)`
-/

namespace A372210.P7092640518957855852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) : ℤ) * A000129 (n + 1) * A001008 (n + 1) : ℚ) / (A002805 (n + 1) : ℚ)

end

end A372210.P7092640518957855852

noncomputable section

/-- A372210: Product of n!, n-th Pell number and n-th harmonic number.

Offset 1, canonical program `A372210.P7092640518957855852`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372210 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372210.P7092640518957855852.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372210.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372611.P10497347808806131857

`2*a(n-1)+A028322(n)` with `a(0)=1`
-/

namespace A372611.P10497347808806131857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A028322 n

end

end A372611.P10497347808806131857

noncomputable section

/-- A372611: Expansion of (1 + 3*x) / ((1 - 2*x)*sqrt(1 - 4*x)).

Offset 0, canonical program `A372611.P10497347808806131857`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372611 (n : ℕ) : ℤ :=
  A372611.P10497347808806131857.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372611.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372730.P3092726674600062018

`A000720(A005867(n))`
-/

namespace A372730.P3092726674600062018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A005867 n).toNat

end

end A372730.P3092726674600062018

noncomputable section

/-- A372730: Number of primes <= A005867(n).

Offset 0, canonical program `A372730.P3092726674600062018`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372730 (n : ℕ) : ℤ :=
  A372730.P3092726674600062018.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372730.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373016.P2031291891959253969

`A080883(A045944(n+1))`
-/

namespace A373016.P2031291891959253969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 (A045944 (n + 1)).toNat

end

end A373016.P2031291891959253969

noncomputable section

/-- A373016: a(n) is the least positive integer k such that 3*n^2 + 2*n + k is a square.

Offset 1, canonical program `A373016.P2031291891959253969`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373016 (n : ℕ) : ℤ :=
  A373016.P2031291891959253969.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373016.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373330.P5187937937214076457

`A000217(n²)-A373329(n)²`
-/

namespace A373330.P5187937937214076457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n ^ 2) - A373329 n ^ 2

end

end A373330.P5187937937214076457

noncomputable section

/-- A373330: a(n) is the difference between T = A000217(n^2) and the greatest square not exceeding T.

Offset 0, canonical program `A373330.P5187937937214076457`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373330 (n : ℕ) : ℤ :=
  A373330.P5187937937214076457.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373330.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374098.P6447697488558684965

`A112387(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374098.P6447697488558684965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112387 n ^ 2

end

end A374098.P6447697488558684965

noncomputable section

/-- A374098: a(n) = A112387(n)^2.

Offset 0, canonical program `A374098.P6447697488558684965`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374098 (n : ℕ) : ℤ :=
  A374098.P6447697488558684965.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374098.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374146.P10192998287508786538

`A004648(A001223(n+1))`
-/

namespace A374146.P10192998287508786538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (A001223 (n + 1)).toNat

end

end A374146.P10192998287508786538

noncomputable section

/-- A374146: a(n) = prime(g) mod g where prime gap g = prime(n+1) - prime(n).

Offset 1, canonical program `A374146.P10192998287508786538`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374146 (n : ℕ) : ℤ :=
  A374146.P10192998287508786538.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374146.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374150.P2027937700261000642

`A006450(2^n)`
-/

namespace A374150.P2027937700261000642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (2 ^ n)

end

end A374150.P2027937700261000642

noncomputable section

/-- A374150: a(n) is the (2^n)-th prime-indexed prime.

Offset 0, canonical program `A374150.P2027937700261000642`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374150 (n : ℕ) : ℤ :=
  A374150.P2027937700261000642.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374150.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375248.P9379692103112221284

`C(n+5, 3)/10*A014531(n+1)`
-/

namespace A375248.P9379692103112221284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 3 : ℚ) / 10 * (A014531 (n + 1) : ℚ)

end

end A375248.P9379692103112221284

noncomputable section

/-- A375248: Expansion of (1 - x)/(1 - 2*x - 3*x^2)^(7/2).

Offset 0, canonical program `A375248.P9379692103112221284`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375248 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375248.P9379692103112221284.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375248.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375253.P16386272213412012190

`C(n+4, 3)/4*A005717(n+1)`
-/

namespace A375253.P16386272213412012190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 3 : ℚ) / 4 * (A005717 (n + 1) : ℚ)

end

end A375253.P16386272213412012190

noncomputable section

/-- A375253: Expansion of (1 - 2*x + 2*x^2)/(1 - 2*x - 3*x^2)^(7/2).

Offset 0, canonical program `A375253.P16386272213412012190`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375253 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375253.P16386272213412012190.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375253.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375259.P1485927689670564593

`C(n+5, 4)/5*A005717(n+1)`
-/

namespace A375259.P1485927689670564593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 4 : ℚ) / 5 * (A005717 (n + 1) : ℚ)

end

end A375259.P1485927689670564593

noncomputable section

/-- A375259: Expansion of (1 - 3*x + 6*x^2 - 4*x^3)/(1 - 2*x - 3*x^2)^(9/2).

Offset 0, canonical program `A375259.P1485927689670564593`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375259 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375259.P1485927689670564593.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375259.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376116.P15301336638265797168

`2*(n+1)-A000120(n+1)-A070939(n+1)`
-/

namespace A376116.P15301336638265797168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A000120 (n + 1) - A070939 (n + 1)

end

end A376116.P15301336638265797168

noncomputable section

/-- A376116: Number of times the root fires in a chip-firing game starting with 2n chips placed at the root on an infinite binary tree with a loop at the root.

Offset 1, canonical program `A376116.P15301336638265797168`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376116 (n : ℕ) : ℤ :=
  A376116.P15301336638265797168.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376116.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376161.P5653477694830852408

`A007054(n)*(3*n+2)/2`
-/

namespace A376161.P5653477694830852408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007054 n * (3 * n + 2 : ℤ) : ℚ) / 2

end

end A376161.P5653477694830852408

noncomputable section

/-- A376161: Number of support Tau-tilting modules for some algebras.

Offset 0, canonical program `A376161.P5653477694830852408`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376161 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A376161.P5653477694830852408.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376161.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377461.P17554263378634026354

`A001405(n)*A006472(floor((n+2)/2))*A006472(ceil((n+2)/2))`
-/

namespace A377461.P17554263378634026354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A006472 ⌊(n + 2 : ℚ) / 2⌋.toNat * A006472 ⌈(n + 2 : ℚ) / 2⌉.toNat

end

end A377461.P17554263378634026354

noncomputable section

/-- A377461: Number of ranked labeled trees compatible with the 2-leaf perfect phylogeny of sample size n that possesses the largest number of compatible ranked labeled trees.

Offset 2, canonical program `A377461.P17554263378634026354`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377461 (n : ℕ) : ℤ :=
  A377461.P17554263378634026354.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377461.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377876.P4332793020141651312

`A002110(n)%27`
-/

namespace A377876.P4332793020141651312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002110 n) 27

end

end A377876.P4332793020141651312

noncomputable section

/-- A377876: The n-th primorial number reduced modulo 27.

Offset 0, canonical program `A377876.P4332793020141651312`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377876 (n : ℕ) : ℤ :=
  A377876.P4332793020141651312.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377876.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378745.P4000645261650579531

`A000040(n+1)^A378744(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378745.P4000645261650579531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A378744 (n + 1) : ℤ)

end

end A378745.P4000645261650579531

noncomputable section

/-- A378745: a(n) = prime(n)^A378744(n).

Offset 1, canonical program `A378745.P4000645261650579531`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378745 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378745.P4000645261650579531.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378745.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379009.P14519861507907130925

`A378988(A000290(n+1))`
-/

namespace A379009.P14519861507907130925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378988 (A000290 (n + 1)).toNat

end

end A379009.P14519861507907130925

noncomputable section

/-- A379009: a(n) = 2*n^2 XOR 1+sigma(n^2).

Offset 1, canonical program `A379009.P14519861507907130925`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379009 (n : ℕ) : ℤ :=
  A379009.P14519861507907130925.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379009.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379224.P12381818504371844415

`A065621(A379223(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379224.P12381818504371844415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065621 (A379223 (n + 1)).toNat

end

end A379224.P12381818504371844415

noncomputable section

/-- A379224: The reversing binary representation of the sum of the divisors of the n-th odd square: a(n) = A065621(A379223(n)).

Offset 1, canonical program `A379224.P12381818504371844415`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379224 (n : ℕ) : ℤ :=
  A379224.P12381818504371844415.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379224.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379508.P17211813283351291404

`A362545(n)+A377726(n)`
-/

namespace A379508.P17211813283351291404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362545 n + A377726 n

end

end A379508.P17211813283351291404

noncomputable section

/-- A379508: Sum of the legs of the unique primitive Pythagorean triple (x,y,z) such that (x-y+z)/2 is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A379508.P17211813283351291404`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379508 (n : ℕ) : ℤ :=
  A379508.P17211813283351291404.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379508.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379835.P16096637972306843515

`A000120(A000032(n))`
-/

namespace A379835.P16096637972306843515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000032 n).toNat

end

end A379835.P16096637972306843515

noncomputable section

/-- A379835: Number of 1's in binary expansion of Lucas(n).

Offset 0, canonical program `A379835.P16096637972306843515`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379835 (n : ℕ) : ℤ :=
  A379835.P16096637972306843515.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379835.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380083.P7207422318684722739

`A204327(n+1)/A000129(n+1)`
-/

namespace A380083.P7207422318684722739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204327 (n + 1) : ℚ) / (A000129 (n + 1) : ℚ)

end

end A380083.P7207422318684722739

noncomputable section

/-- A380083: a(n) = Pell(n^2)/Pell(n).

Offset 1, canonical program `A380083.P7207422318684722739`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380083 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380083.P7207422318684722739.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380083.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380198.P8091464907111529259

`-A053622(2^(n+1))`
-/

namespace A380198.P8091464907111529259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A053622 (2 ^ (n + 1))

end

end A380198.P8091464907111529259

noncomputable section

/-- A380198: Difference between pi(2^n) and the integer nearest to 2^n / log(2^n).

Offset 1, canonical program `A380198.P8091464907111529259`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380198 (n : ℕ) : ℤ :=
  A380198.P8091464907111529259.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380198.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381503.P14790323790165265310

`A033192(n+1)*A033192(n+2)`
-/

namespace A381503.P14790323790165265310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033192 (n + 1) * A033192 (n + 2)

end

end A381503.P14790323790165265310

noncomputable section

/-- A381503: Number of rectangles in a Fibonacci(n) X Fibonacci(n+1) grid.

Offset 1, canonical program `A381503.P14790323790165265310`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381503 (n : ℕ) : ℤ :=
  A381503.P14790323790165265310.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381503.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382213.P14392032180708244766

`A007947(A001008(n+1))`
-/

namespace A382213.P14392032180708244766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A001008 (n + 1)).toNat

end

end A382213.P14392032180708244766

noncomputable section

/-- A382213: Largest squarefree number dividing the numerator of harmonic number H(n).

Offset 1, canonical program `A382213.P14392032180708244766`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382213 (n : ℕ) : ℤ :=
  A382213.P14392032180708244766.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382213.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382329.P9326233385756962870

`A002805(n+1)*A007913(A001008(n+1))`
-/

namespace A382329.P9326233385756962870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1) * A007913 (A001008 (n + 1)).toNat

end

end A382329.P9326233385756962870

noncomputable section

/-- A382329: Least positive integer that gives a square of an integer when multiplied by the n-th harmonic number.

Offset 1, canonical program `A382329.P9326233385756962870`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382329 (n : ℕ) : ℤ :=
  A382329.P9326233385756962870.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382461.P15882059474773188978

`A051885(2^n)`
-/

namespace A382461.P15882059474773188978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (2 ^ n)

end

end A382461.P15882059474773188978

noncomputable section

/-- A382461: a(n) is the smallest number whose sum of digits is 2^n.

Offset 0, canonical program `A382461.P15882059474773188978`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382461 (n : ℕ) : ℤ :=
  A382461.P15882059474773188978.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382461.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382608.P10117561399595849934

`4*A033192(n)`
-/

namespace A382608.P10117561399595849934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A033192 n

end

end A382608.P10117561399595849934

noncomputable section

/-- A382608: Long leg of the unique primitive Pythagorean triple whose inradius is A000045(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382608.P10117561399595849934`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382608 (n : ℕ) : ℤ :=
  A382608.P10117561399595849934.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382608.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382910.P8650629878727328270

`a(n-1)*A007598(n)` with `a(0)=1`
-/

namespace A382910.P8650629878727328270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A007598 n

end

end A382910.P8650629878727328270

noncomputable section

/-- A382910: a(n) = A003266(n)^2.

Offset 0, canonical program `A382910.P8650629878727328270`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382910 (n : ℕ) : ℤ :=
  A382910.P8650629878727328270.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382910.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383037.P13364932948584734470

`A210469(n+1)-A000720(2*(n+1))+1`
-/

namespace A383037.P13364932948584734470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210469 (n + 1) - A000720 (2 * (n + 1)) + 1

end

end A383037.P13364932948584734470

noncomputable section

/-- A383037: a(n) is the excess of composites over primes in the first n odd positive integers.

Offset 1, canonical program `A383037.P13364932948584734470`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383037 (n : ℕ) : ℤ :=
  A383037.P13364932948584734470.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383037.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383958.P9624006830103847093

`2*A001246(n)-1`
-/

namespace A383958.P9624006830103847093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001246 n - 1

end

end A383958.P9624006830103847093

noncomputable section

/-- A383958: Sum of the legs of the unique primitive Pythagorean triple (a,b,c) such that (a-b+c)/2 = A000108(n) and its long leg and hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A383958.P9624006830103847093`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383958 (n : ℕ) : ℤ :=
  A383958.P9624006830103847093.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383958.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385608.P4247405361952693431

`2*floor(n/3)+floor(n/6)-A000120(floor(n/3))`
-/

namespace A385608.P4247405361952693431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℚ) / 3⌋ + ⌊(n : ℚ) / 6⌋ - A000120 ⌊(n : ℚ) / 3⌋.toNat

end

end A385608.P4247405361952693431

noncomputable section

/-- A385608: a(n) = 2-adic valuation of A003266(n).

Offset 0, canonical program `A385608.P4247405361952693431`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385608 (n : ℕ) : ℤ :=
  A385608.P4247405361952693431.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385608.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385609.P15216289614139377740

`2*(n+1)+floor((n+1)/2)-A000120(n+1)`
-/

namespace A385609.P15216289614139377740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + ⌊(n + 1 : ℚ) / 2⌋ - A000120 (n + 1)

end

end A385609.P15216289614139377740

noncomputable section

/-- A385609: Partial sums of A090740.

Offset 1, canonical program `A385609.P15216289614139377740`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385609 (n : ℕ) : ℤ :=
  A385609.P15216289614139377740.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385609.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387156.P9057070292798782768

`A003557(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387156.P9057070292798782768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A000203 (n + 1)).toNat

end

end A387156.P9057070292798782768

noncomputable section

/-- A387156: a(n) = A003557(sigma(n)), where A003557(n) is multiplicative with a(p^e) = p^(e-1), and sigma is the sum of divisors function.

Offset 1, canonical program `A387156.P9057070292798782768`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387156 (n : ℕ) : ℤ :=
  A387156.P9057070292798782768.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387156.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387635.P2020936264565243468

`A036910(n)-A002894(n)`
-/

namespace A387635.P2020936264565243468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036910 n - A002894 n

end

end A387635.P2020936264565243468

noncomputable section

/-- A387635: a(n) = Sum_{k=0..n-1} binomial(2*n, k)^2.

Offset 0, canonical program `A387635.P2020936264565243468`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387635 (n : ℕ) : ℤ :=
  A387635.P2020936264565243468.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387635.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387914.P10909706251408159452

`A000245(n+3)-A000124(n+3)`
-/

namespace A387914.P10909706251408159452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 3) - A000124 (n + 3)

end

end A387914.P10909706251408159452

noncomputable section

/-- A387914: a(n) = 3*binomial(2*n+4,n+3)/(n+4) - (n+2)*(n+3)/2 - 1.

Offset 1, canonical program `A387914.P10909706251408159452`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387914 (n : ℕ) : ℤ :=
  A387914.P10909706251408159452.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387914.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A388283.P448465908817760903

`A033885(n+1)/A009194(n+1)`
-/

namespace A388283.P448465908817760903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033885 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A388283.P448465908817760903

noncomputable section

/-- A388283: Numerator of (3*n - sigma(n)) / n.

Offset 1, canonical program `A388283.P448465908817760903`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388283 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A388283.P448465908817760903.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388283.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390921.P4802921319269334055

`a(n-1)+A098658(n)` with `a(0)=1`
-/

namespace A390921.P4802921319269334055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A098658 n

end

end A390921.P4802921319269334055

noncomputable section

/-- A390921: Expansion of 1/((1-x) * sqrt(1-12*x)).

Offset 0, canonical program `A390921.P4802921319269334055`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390921 (n : ℕ) : ℤ :=
  A390921.P4802921319269334055.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390921.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390923.P6565390993815220059

`3*a(n-1)+A059304(n)` with `a(0)=1`
-/

namespace A390923.P6565390993815220059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + A059304 n

end

end A390923.P6565390993815220059

noncomputable section

/-- A390923: Expansion of 1/((1-3*x) * sqrt(1-8*x)).

Offset 0, canonical program `A390923.P6565390993815220059`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390923 (n : ℕ) : ℤ :=
  A390923.P6565390993815220059.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390923.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390924.P5803395581487017869

`2*a(n-1)+A098658(n)` with `a(0)=1`
-/

namespace A390924.P5803395581487017869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A098658 n

end

end A390924.P5803395581487017869

noncomputable section

/-- A390924: Expansion of 1/((1-2*x) * sqrt(1-12*x)).

Offset 0, canonical program `A390924.P5803395581487017869`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390924 (n : ℕ) : ℤ :=
  A390924.P5803395581487017869.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390924.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391263.P17886300817763852613

`2*A004146(n+1)-2`
-/

namespace A391263.P17886300817763852613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004146 (n + 1) - 2

end

end A391263.P17886300817763852613

noncomputable section

/-- A391263: The number of two-component spanning forests of the wheel graph W_{n+1} in which vertices v_1 and v_3 lie in different components.

Offset 2, canonical program `A391263.P17886300817763852613`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391263 (n : ℕ) : ℤ :=
  A391263.P17886300817763852613.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393203.P10331077631998674736

`(A001248(n+4)-A006094(n+2))/2`
-/

namespace A393203.P10331077631998674736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 4) - A006094 (n + 2) : ℚ) / 2

end

end A393203.P10331077631998674736

noncomputable section

/-- A393203: a(n) = (1/2)*(prime(n + 2)^2 - prime(n + 1)*prime(n)).

Offset 2, canonical program `A393203.P10331077631998674736`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393203 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A393203.P10331077631998674736.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393203.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393295.P4032472479384952545

`A393238(n)+A349927(n)`
-/

namespace A393295.P4032472479384952545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393238 n + A349927 n

end

end A393295.P4032472479384952545

noncomputable section

/-- A393295: Number of transitive relations on an n-set with at most three ordered pairs.

Offset 0, canonical program `A393295.P4032472479384952545`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393295 (n : ℕ) : ℤ :=
  A393295.P4032472479384952545.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393295.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393917.P7977796838059119531

`A000720(A006094(n+1))-A000720(A001043(n+1))`
-/

namespace A393917.P7977796838059119531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006094 (n + 1)).toNat - A000720 (A001043 (n + 1)).toNat

end

end A393917.P7977796838059119531

noncomputable section

/-- A393917: Number of primes strictly between (prime(n) + prime(n+1)) and (prime(n) * prime(n+1)).

Offset 1, canonical program `A393917.P7977796838059119531`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393917 (n : ℕ) : ℤ :=
  A393917.P7977796838059119531.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393917.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396250.P17131354137523979771

`(3^2^A000120(n)+1)/2*3^(n+1-2^A000120(n))-2^n`
-/

namespace A396250.P17131354137523979771
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 : ℝ) ^ ((2 : ℚ) ^ (A000120 n : ℤ) : ℝ) + 1) / 2 * (3 : ℝ) ^ ((n + 1 : ℚ) - (2 : ℚ) ^ (A000120 n : ℤ) : ℝ) - (2 ^ n : ℝ)

end

end A396250.P17131354137523979771

noncomputable section

/-- A396250: a(n) is the number of ternary sequences of length n with characteristic value 0, as is defined in comments.

Offset 1, canonical program `A396250.P17131354137523979771`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396250 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396250.P17131354137523979771.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396250.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396253.P3729736002703382672

`A000196(n+1)*A048656(n+1)`
-/

namespace A396253.P3729736002703382672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) * A048656 (n + 1)

end

end A396253.P3729736002703382672

noncomputable section

/-- A396253: Sum of Sum_{k=1..n} S(k) over all completely multiplicative sign sequences S of length n.

Offset 1, canonical program `A396253.P3729736002703382672`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396253 (n : ℕ) : ℤ :=
  A396253.P3729736002703382672.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396253.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365722.P13092510247685121103

`A053735(n)-A007949(1+n)`
-/

namespace A365722.P13092510247685121103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n - A007949 (1 + n)

end

end A365722.P13092510247685121103

noncomputable section

/-- A365722: The number of prime factors (with multiplicity) in A356867(1+n), where A356867 is Sycamore's Doudna variant D(3).

Offset 0, canonical program `A365722.P13092510247685121103`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365722 (n : ℕ) : ℤ :=
  A365722.P13092510247685121103.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365722.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367870.P3261918350467240858

`A245579(n+1)-A000593(n+1)`
-/

namespace A367870.P3261918350467240858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245579 (n + 1) - A000593 (n + 1)

end

end A367870.P3261918350467240858

noncomputable section

/-- A367870: a(n) = Sum_{d|n, d odd} (n-d).

Offset 1, canonical program `A367870.P3261918350467240858`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367870 (n : ℕ) : ℤ :=
  A367870.P3261918350467240858.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367870.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A368643.P1232698465905316366

`A214526(n*(n+1)/2+1)`
-/

namespace A368643.P1232698465905316366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (SequenceMachineLib.roundAway ((n * (n + 1) : ℚ) / 2 + 1)).toNat

end

end A368643.P1232698465905316366

noncomputable section

/-- A368643: Manhattan distance from the origin of triangular number point T(n) = n*(n+1)/2 in a square spiral with point 0 at the origin.

Offset 0, canonical program `A368643.P1232698465905316366`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368643 (n : ℕ) : ℤ :=
  A368643.P1232698465905316366.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368643.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373936.P11787379451298363639

`A373937(n+2)-A373937(n+1)`
-/

namespace A373936.P11787379451298363639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373937 (n + 2) - A373937 (n + 1)

end

end A373936.P11787379451298363639

noncomputable section

/-- A373936: Number of compositions of 7*n-4 into parts 6 and 7.

Offset 1, canonical program `A373936.P11787379451298363639`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373936 (n : ℕ) : ℤ :=
  A373936.P11787379451298363639.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373936.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373963.P9718531231219531280

`A373964(n+2)-A373964(n+1)`
-/

namespace A373963.P9718531231219531280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373964 (n + 2) - A373964 (n + 1)

end

end A373963.P9718531231219531280

noncomputable section

/-- A373963: Number of compositions of 6*n-3 into parts 5 and 6.

Offset 1, canonical program `A373963.P9718531231219531280`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373963 (n : ℕ) : ℤ :=
  A373963.P9718531231219531280.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373963.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375529.P16671524515771527477

`A000040(n+1)*A375530(n)+1`
-/

namespace A375529.P16671524515771527477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A375530 n + 1

end

end A375529.P16671524515771527477

noncomputable section

/-- A375529: Lexicographically earliest sequence of positive integers a(1), a(2), a(3), ... such that for any n > 0, Sum_{k = 1..n} prime(k)/a(k) < 1.

Offset 1, canonical program `A375529.P16671524515771527477`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375529 (n : ℕ) : ℤ :=
  A375529.P16671524515771527477.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375529.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379509.P8727841292093369161

`A377725(n)+A385977(n)`
-/

namespace A379509.P8727841292093369161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377725 n + A385977 n

end

end A379509.P8727841292093369161

noncomputable section

/-- A379509: Sum of the legs of the unique primitive Pythagorean triple whose inradius is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A379509.P8727841292093369161`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379509 (n : ℕ) : ℤ :=
  A379509.P8727841292093369161.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379509.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385553.P5498376679823547533

`A062383(n)*A064235(n+1)`
-/

namespace A385553.P5498376679823547533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n * A064235 (n + 1)

end

end A385553.P5498376679823547533

noncomputable section

/-- A385553: Period of {binomial(N,n) mod 6: N in Z}.

Offset 0, canonical program `A385553.P5498376679823547533`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385553 (n : ℕ) : ℤ :=
  A385553.P5498376679823547533.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385553.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391991.P1337276639088855244

`A055642(A007318(n))`
-/

namespace A391991.P1337276639088855244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A007318 n).toNat

end

end A391991.P1337276639088855244

noncomputable section

/-- A391991: Triangle read by rows: T(n,k) = number of digits in decimal representation of binomial(n,k), 0<=k<=n.

Offset 0, canonical program `A391991.P1337276639088855244`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391991 (n : ℕ) : ℤ :=
  A391991.P1337276639088855244.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391991.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A362596.P425571288444165629

`A258431(n)-A276666(n)`
-/

namespace A362596.P425571288444165629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258431 n - A276666 n

end

end A362596.P425571288444165629

noncomputable section

/-- A362596: Number of parking functions of size n avoiding the patterns 213 and 321.

Offset 0, canonical program `A362596.P425571288444165629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A362596 (n : ℕ) : ℤ :=
  A362596.P425571288444165629.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A362596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362683.P14326268890355957891

`A055225(n+1)+A359103(n+1)`
-/

namespace A362683.P14326268890355957891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055225 (n + 1) + A359103 (n + 1)

end

end A362683.P14326268890355957891

noncomputable section

/-- A362683: Expansion of Sum_{k>0} (1/(1 - k*x^k)^2 - 1).

Offset 1, canonical program `A362683.P14326268890355957891`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055225, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362683 (n : ℕ) : ℤ :=
  A362683.P14326268890355957891.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055225, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362683.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362845.P17536639591038917226

`A279061(7*(n+1)-2)`
-/

namespace A362845.P17536639591038917226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (7 * (n + 1) - 2)

end

end A362845.P17536639591038917226

noncomputable section

/-- A362845: Number of divisors of 7*n-2 of form 7*k+1.

Offset 1, canonical program `A362845.P17536639591038917226`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362845 (n : ℕ) : ℤ :=
  A362845.P17536639591038917226.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362845.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362869.P8462852470761902271

`A008795(n)+A001859(n)`
-/

namespace A362869.P8462852470761902271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n + A001859 n

end

end A362869.P8462852470761902271

noncomputable section

/-- A362869: a(n) is equal to the number of cells in one octant of the octagon of unit squares with side equal n.

Offset 1, canonical program `A362869.P8462852470761902271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362869 (n : ℕ) : ℤ :=
  A362869.P8462852470761902271.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362952.P3443947303999604863

`A284280(5*(n+1)-1)`
-/

namespace A362952.P3443947303999604863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284280 (5 * (n + 1) - 1)

end

end A362952.P3443947303999604863

noncomputable section

/-- A362952: Sum of divisors of 5*n-1 of form 5*k+2.

Offset 1, canonical program `A362952.P3443947303999604863`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362952 (n : ℕ) : ℤ :=
  A362952.P3443947303999604863.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362952.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363025.P16048530436688451139

`A284280(5*(n+1)-2)`
-/

namespace A363025.P16048530436688451139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284280 (5 * (n + 1) - 2)

end

end A363025.P16048530436688451139

noncomputable section

/-- A363025: Sum of divisors of 5*n-2 of form 5*k+2.

Offset 1, canonical program `A363025.P16048530436688451139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363025 (n : ℕ) : ℤ :=
  A363025.P16048530436688451139.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363025.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363026.P15677157071995467369

`A284280(5*(n+1)-3)`
-/

namespace A363026.P15677157071995467369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284280 (5 * (n + 1) - 3)

end

end A363026.P15677157071995467369

noncomputable section

/-- A363026: Sum of divisors of 5*n-3 of form 5*k+2.

Offset 1, canonical program `A363026.P15677157071995467369`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363026 (n : ℕ) : ℤ :=
  A363026.P15677157071995467369.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363026.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363027.P4064144166879926127

`A284280(5*n+1)`
-/

namespace A363027.P4064144166879926127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284280 (5 * n + 1)

end

end A363027.P4064144166879926127

noncomputable section

/-- A363027: Sum of divisors of 5*n-4 of form 5*k+2.

Offset 1, canonical program `A363027.P4064144166879926127`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363027 (n : ℕ) : ℤ :=
  A363027.P4064144166879926127.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363027.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363060.P4728981238833991095

`eq[5, A008952(n)]`
-/

namespace A363060.P4728981238833991095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A363060.P4728981238833991095

noncomputable section

/-- A363060: Numbers k such that 5 is the first digit of 2^k.

Offset 1, canonical program `A363060.P4728981238833991095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3958 terms. -/
def A363060 (n : ℕ) : ℤ :=
  (A363060.P4728981238833991095.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3958 terms. -/
def A363060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363514.P8280304186650269992

`A078181(3*(n+1)-1)`
-/

namespace A363514.P8280304186650269992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (3 * (n + 1) - 1)

end

end A363514.P8280304186650269992

noncomputable section

/-- A363514: Sum of divisors of 3*n-1 of form 3*k+1.

Offset 1, canonical program `A363514.P8280304186650269992`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078181, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363514 (n : ℕ) : ℤ :=
  A363514.P8280304186650269992.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078181, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363514.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363604.P1742819399348317644

`A092348(n+1)/6`
-/

namespace A363604.P1742819399348317644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092348 (n + 1) : ℚ) / 6

end

end A363604.P1742819399348317644

noncomputable section

/-- A363604: Expansion of Sum_{k>0} x^(2*k)/(1-x^k)^4.

Offset 1, canonical program `A363604.P1742819399348317644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092348, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363604 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363604.P1742819399348317644.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092348, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363604.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363691.P18289426642684890876

`∩[2*n+1, A363690(n+1)]`
-/

namespace A363691.P18289426642684890876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363691.P18289426642684890876

noncomputable section

/-- A363691: Odd numbers k such that A246600(k) = 2.

Offset 1, canonical program `A363691.P18289426642684890876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4908 terms. -/
def A363691 (n : ℕ) : ℤ :=
  (A363691.P18289426642684890876.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4908 terms. -/
def A363691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363806.P10301958111429027824

`A279061(2*(n+1))-A279061((n+1)/2^val(n+1, 2))`
-/

namespace A363806.P10301958111429027824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (2 * (n + 1)) - A279061 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A363806.P10301958111429027824

noncomputable section

/-- A363806: Number of divisors of n of the form 7*k + 4.

Offset 1, canonical program `A363806.P10301958111429027824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363806 (n : ℕ) : ℤ :=
  A363806.P10301958111429027824.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363820.P3566701227845072726

`A014181(n+2)-10`
-/

namespace A363820.P3566701227845072726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014181 (n + 2) - 10

end

end A363820.P3566701227845072726

noncomputable section

/-- A363820: Moving the rightmost digit of a number to place it furthest to the left adds 9 to the number.

Offset 1, canonical program `A363820.P3566701227845072726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 890 terms. -/
def A363820 (n : ℕ) : ℤ :=
  A363820.P3566701227845072726.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 890 terms. -/
def A363820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363850.P5431407368653199520

`A279061(7*(n+1)-3)`
-/

namespace A363850.P5431407368653199520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (7 * (n + 1) - 3)

end

end A363850.P5431407368653199520

noncomputable section

/-- A363850: Number of divisors of 7*n-3 of form 7*k+1.

Offset 1, canonical program `A363850.P5431407368653199520`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363850 (n : ℕ) : ℤ :=
  A363850.P5431407368653199520.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363850.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363851.P18079601526359170687

`A279061(7*(n+1)-4)`
-/

namespace A363851.P18079601526359170687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (7 * (n + 1) - 4)

end

end A363851.P18079601526359170687

noncomputable section

/-- A363851: Number of divisors of 7*n-4 of form 7*k+1.

Offset 1, canonical program `A363851.P18079601526359170687`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363851 (n : ℕ) : ℤ :=
  A363851.P18079601526359170687.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363851.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363852.P10747940263163511164

`A279061(7*(n+1)-5)`
-/

namespace A363852.P10747940263163511164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (7 * (n + 1) - 5)

end

end A363852.P10747940263163511164

noncomputable section

/-- A363852: Number of divisors of 7*n-5 of form 7*k+1.

Offset 1, canonical program `A363852.P10747940263163511164`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363852 (n : ℕ) : ℤ :=
  A363852.P10747940263163511164.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363852.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363853.P8524164086728163721

`A279061(7*(n+1)-6)`
-/

namespace A363853.P8524164086728163721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (7 * (n + 1) - 6)

end

end A363853.P8524164086728163721

noncomputable section

/-- A363853: Number of divisors of 7*n-6 of form 7*k+1.

Offset 1, canonical program `A363853.P8524164086728163721`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363853 (n : ℕ) : ℤ :=
  A363853.P8524164086728163721.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363853.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363855.P11323486377278081280

`A363805(7*(n+1)-3)`
-/

namespace A363855.P11323486377278081280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (7 * (n + 1) - 3)

end

end A363855.P11323486377278081280

noncomputable section

/-- A363855: Number of divisors of 7*n-3 of form 7*k+6.

Offset 1, canonical program `A363855.P11323486377278081280`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363855 (n : ℕ) : ℤ :=
  A363855.P11323486377278081280.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363855.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363859.P12984899488609813938

`A363805(7*(n+1)-1)`
-/

namespace A363859.P12984899488609813938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (7 * (n + 1) - 1)

end

end A363859.P12984899488609813938

noncomputable section

/-- A363859: Number of divisors of 7*n-1 of the form 7*k+2.

Offset 1, canonical program `A363859.P12984899488609813938`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363859 (n : ℕ) : ℤ :=
  A363859.P12984899488609813938.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363859.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363877.P10617050833663862106

`A363805(7*(n+1)-2)`
-/

namespace A363877.P10617050833663862106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (7 * (n + 1) - 2)

end

end A363877.P10617050833663862106

noncomputable section

/-- A363877: Number of divisors of 7*n-2 of form 7*k+3.

Offset 1, canonical program `A363877.P10617050833663862106`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363877 (n : ℕ) : ℤ :=
  A363877.P10617050833663862106.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363877.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363880.P7390810091035147557

`A363805(7*n+1)`
-/

namespace A363880.P7390810091035147557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (7 * n + 1)

end

end A363880.P7390810091035147557

noncomputable section

/-- A363880: Number of divisors of 7*n-6 of form 7*k+3.

Offset 1, canonical program `A363880.P7390810091035147557`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363880 (n : ℕ) : ℤ :=
  A363880.P7390810091035147557.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363880.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363887.P10568387131501644855

`A363805(7*(n+1)-5)`
-/

namespace A363887.P10568387131501644855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (7 * (n + 1) - 5)

end

end A363887.P10568387131501644855

noncomputable section

/-- A363887: Number of divisors of 7*n-5 of form 7*k+3.

Offset 1, canonical program `A363887.P10568387131501644855`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363887 (n : ℕ) : ℤ :=
  A363887.P10568387131501644855.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363887.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363889.P3675962826148467053

`A078181(3*n+1)`
-/

namespace A363889.P3675962826148467053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (3 * n + 1)

end

end A363889.P3675962826148467053

noncomputable section

/-- A363889: Sum of divisors of 3*n-2 of form 3*k+1.

Offset 1, canonical program `A363889.P3675962826148467053`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078181, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363889 (n : ℕ) : ℤ :=
  A363889.P3675962826148467053.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078181, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363889.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363925.P14665766915685615402

`(4*A001876(n+1)+A284097(n+1))/5`
-/

namespace A363925.P14665766915685615402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A001876 (n + 1) + A284097 (n + 1) : ℚ) / 5

end

end A363925.P14665766915685615402

noncomputable section

/-- A363925: Expansion of Sum_{k>0} x^k / (1 - x^(5*k))^2.

Offset 1, canonical program `A363925.P14665766915685615402`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001876, A284097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363925 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363925.P14665766915685615402.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001876, A284097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363925.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363926.P69574837358207021

`(3*A001877(n+1)+A284280(n+1))/5`
-/

namespace A363926.P69574837358207021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A001877 (n + 1) + A284280 (n + 1) : ℚ) / 5

end

end A363926.P69574837358207021

noncomputable section

/-- A363926: Expansion of Sum_{k>0} x^(2*k) / (1 - x^(5*k))^2.

Offset 1, canonical program `A363926.P69574837358207021`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001877, A284280, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363926 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363926.P69574837358207021.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001877, A284280, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363926.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364012.P10594367509355664606

`A326399(2*(n+1))-A078708(n+1)`
-/

namespace A364012.P10594367509355664606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326399 (2 * (n + 1)) - A078708 (n + 1)

end

end A364012.P10594367509355664606

noncomputable section

/-- A364012: Expansion of Sum_{k>0} k * x^k / (1 + x^(3*k)).

Offset 1, canonical program `A364012.P10594367509355664606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A364012 (n : ℕ) : ℤ :=
  A364012.P10594367509355664606.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A364012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364032.P15572008137104778974

`A188170(n+1)+A188170(n+1)-A001842(n+1)`
-/

namespace A364032.P15572008137104778974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188170 (n + 1) + (A188170 (n + 1) - A001842 (n + 1))

end

end A364032.P15572008137104778974

noncomputable section

/-- A364032: Expansion of Sum_{k>0} x^(3*k) / (1 + x^(4*k)).

Offset 1, canonical program `A364032.P15572008137104778974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364032 (n : ℕ) : ℤ :=
  A364032.P15572008137104778974.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364034.P3967422730475427941

`∑{d}[n+1, A131575(#)]`
-/

namespace A364034.P3967422730475427941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A131575 d

end

end A364034.P3967422730475427941

noncomputable section

/-- A364034: Expansion of Sum_{k>0} x^k / (1 - 2*x^(2*k)).

Offset 1, canonical program `A364034.P3967422730475427941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A364034 (n : ℕ) : ℤ :=
  A364034.P3967422730475427941.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A364034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364092.P276984293227753966

`A284097(5*(n+1)-1)`
-/

namespace A364092.P276984293227753966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284097 (5 * (n + 1) - 1)

end

end A364092.P276984293227753966

noncomputable section

/-- A364092: Sum of divisors of 5*n-1 of form 5*k+1.

Offset 1, canonical program `A364092.P276984293227753966`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364092 (n : ℕ) : ℤ :=
  A364092.P276984293227753966.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364092.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364093.P6985918061966599924

`A284097(5*(n+1)-2)`
-/

namespace A364093.P6985918061966599924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284097 (5 * (n + 1) - 2)

end

end A364093.P6985918061966599924

noncomputable section

/-- A364093: Sum of divisors of 5*n-2 of form 5*k+1.

Offset 1, canonical program `A364093.P6985918061966599924`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364093 (n : ℕ) : ℤ :=
  A364093.P6985918061966599924.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364093.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364094.P1687889937016555816

`A284097(5*(n+1)-3)`
-/

namespace A364094.P1687889937016555816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284097 (5 * (n + 1) - 3)

end

end A364094.P1687889937016555816

noncomputable section

/-- A364094: Sum of divisors of 5*n-3 of form 5*k+1.

Offset 1, canonical program `A364094.P1687889937016555816`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364094 (n : ℕ) : ℤ :=
  A364094.P1687889937016555816.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364094.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364095.P7707059766730752190

`A284097(5*n+1)`
-/

namespace A364095.P7707059766730752190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284097 (5 * n + 1)

end

end A364095.P7707059766730752190

noncomputable section

/-- A364095: Sum of divisors of 5*n-4 of form 5*k+1.

Offset 1, canonical program `A364095.P7707059766730752190`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364095 (n : ℕ) : ℤ :=
  A364095.P7707059766730752190.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364095.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364332.P12118188046320296518

`A333870(A006093(n+1))`
-/

namespace A364332.P12118188046320296518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333870 (A006093 (n + 1)).toNat

end

end A364332.P12118188046320296518

noncomputable section

/-- A364332: a(n) = f(prime(n)), where f(2) = 0 and for an odd prime p, f(p) = max{f(q)+1: q ranges over all prime factors of p-1}.

Offset 1, canonical program `A364332.P12118188046320296518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A364332 (n : ℕ) : ℤ :=
  A364332.P12118188046320296518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A364332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364578.P15279271467164295840

`A051885(n)+A011557(n)`
-/

namespace A364578.P15279271467164295840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 n + A011557 n

end

end A364578.P15279271467164295840

noncomputable section

/-- A364578: a(n) is the smallest n-digit number whose sum of digits is n.

Offset 1, canonical program `A364578.P15279271467164295840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A364578 (n : ℕ) : ℤ :=
  A364578.P15279271467164295840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A364578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364659.P17667284478992452943

`∩[A053224(n+1)-1, A053224(n+1)]`
-/

namespace A364659.P17667284478992452943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364659.P17667284478992452943

noncomputable section

/-- A364659: Numbers k such that sigma(k) < sigma(k+1) < sigma(k+2).

Offset 1, canonical program `A364659.P17667284478992452943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 950 terms. -/
def A364659 (n : ℕ) : ℤ :=
  (A364659.P17667284478992452943.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 950 terms. -/
def A364659.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A364900.P10521200387080380125

`A007913(A022998(n+1))`
-/

namespace A364900.P10521200387080380125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A022998 (n + 1)).toNat

end

end A364900.P10521200387080380125

noncomputable section

/-- A364900: The n-volume of the unit regular n-simplex is sqrt(a(n))/A364901(n), with a(n) being squarefree.

Offset 0, canonical program `A364900.P10521200387080380125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364900 (n : ℕ) : ℤ :=
  A364900.P10521200387080380125.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365330.P9580767705041975083

`A000142(n)*A073778(n+1)`
-/

namespace A365330.P9580767705041975083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A073778 (n + 1)

end

end A365330.P9580767705041975083

noncomputable section

/-- A365330: Expansion of e.g.f. x^3/(1-x-x^2-x^3)^2.

Offset 0, canonical program `A365330.P9580767705041975083`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073778, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365330 (n : ℕ) : ℤ :=
  A365330.P9580767705041975083.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073778, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365330.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366255.P8099353301085392430

`char[A303768(2*n+1)]`
-/

namespace A366255.P8099353301085392430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303768 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A366255.P8099353301085392430

noncomputable section

/-- A366255: Parity of May code (A303767).

Offset 0, canonical program `A366255.P8099353301085392430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A366255 (n : ℕ) : ℤ :=
  (A366255.P8099353301085392430.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A366255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366588.P16181712258366305326

`A248100(n)-a(n-1)` with `a(0)=1`
-/

namespace A366588.P16181712258366305326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A248100 n - a (n - 1)

end

end A366588.P16181712258366305326

noncomputable section

/-- A366588: G.f. A(x) satisfies A(x) = 1 + x^3*(1+x)*A(x)^2.

Offset 0, canonical program `A366588.P16181712258366305326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 394 terms. -/
def A366588 (n : ℕ) : ℤ :=
  A366588.P16181712258366305326.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 394 terms. -/
def A366588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366915.P86294667979577225

`∑[-A321543(n+1)]`
-/

namespace A366915.P86294667979577225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A321543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366915.P86294667979577225

noncomputable section

/-- A366915: a(n) = Sum_{k=1..n} (-1)^k*k^2*floor(n/k).

Offset 1, canonical program `A366915.P86294667979577225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366915 (n : ℕ) : ℤ :=
  A366915.P86294667979577225.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366991.P8092086084138922211

`∏{e}[n+1, A036234(#)+1]`
-/

namespace A366991.P8092086084138922211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A036234 (Nat.factorization (f1 n) p) + 1)

end

end A366991.P8092086084138922211

noncomputable section

/-- A366991: The number of divisors of n that are not terms of A322448.

Offset 1, canonical program `A366991.P8092086084138922211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366991 (n : ℕ) : ℤ :=
  A366991.P8092086084138922211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367022.P3554268763725929727

`A262616(n)*A367023(n)`
-/

namespace A367022.P3554268763725929727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262616 n * A367023 n

end

end A367022.P3554268763725929727

noncomputable section

/-- A367022: Triangle read by rows, T(n, k) = [x^k] p(n), where p(n) = 4^n * hypergeom([1/2, -n - 1, -n], [2, 2], x).

Offset 0, canonical program `A367022.P3554268763725929727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4043 terms. -/
def A367022 (n : ℕ) : ℤ :=
  A367022.P3554268763725929727.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4043 terms. -/
def A367022.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A367294.P2160804425599817022

`eq[4, A008952(n)]`
-/

namespace A367294.P2160804425599817022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A367294.P2160804425599817022

noncomputable section

/-- A367294: Numbers k such that 4 is the first digit of 2^k.

Offset 1, canonical program `A367294.P2160804425599817022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3243 terms. -/
def A367294 (n : ℕ) : ℤ :=
  (A367294.P2160804425599817022.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3243 terms. -/
def A367294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367295.P13713340400755399222

`eq[6, A008952(n)]`
-/

namespace A367295.P13713340400755399222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A367295.P13713340400755399222

noncomputable section

/-- A367295: Numbers k such that 6 is the first digit of 2^k.

Offset 1, canonical program `A367295.P13713340400755399222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2328 terms. -/
def A367295 (n : ℕ) : ℤ :=
  (A367295.P13713340400755399222.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2328 terms. -/
def A367295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367296.P16984635311921054484

`eq[8, A008952(n)]`
-/

namespace A367296.P16984635311921054484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A367296.P16984635311921054484

noncomputable section

/-- A367296: Numbers k such that 8 is the first digit of 2^k.

Offset 1, canonical program `A367296.P16984635311921054484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2558 terms. -/
def A367296 (n : ℕ) : ℤ :=
  (A367296.P16984635311921054484.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2558 terms. -/
def A367296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367360.P3912048120050815529

`10*A008959(n)+A002993(n+1)`
-/

namespace A367360.P3912048120050815529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A008959 n + A002993 (n + 1)

end

end A367360.P3912048120050815529

noncomputable section

/-- A367360: Comma transform of squares.

Offset 0, canonical program `A367360.P3912048120050815529`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002993, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367360 (n : ℕ) : ℤ :=
  A367360.P3912048120050815529.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002993, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367361.P13432602641584135222

`10*A000689(n)+A008952(n+1)`
-/

namespace A367361.P13432602641584135222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000689 n + A008952 (n + 1)

end

end A367361.P13432602641584135222

noncomputable section

/-- A367361: Comma transform of powers of 2.

Offset 0, canonical program `A367361.P13432602641584135222`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008952, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367361 (n : ℕ) : ℤ :=
  A367361.P13432602641584135222.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008952, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367361.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367556.P8034528816821162778

`10*A003893(n)+A008963(n+1)`
-/

namespace A367556.P8034528816821162778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A003893 n + A008963 (n + 1)

end

end A367556.P8034528816821162778

noncomputable section

/-- A367556: Comma transform of the Fibonacci numbers.

Offset 0, canonical program `A367556.P8034528816821162778`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367556 (n : ℕ) : ℤ :=
  A367556.P8034528816821162778.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367556.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367615.P5843079981816674160

`comp[A367341(n+1)-1]+1`
-/

namespace A367615.P5843079981816674160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367341 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A367615.P5843079981816674160

noncomputable section

/-- A367615: Numbers that have a comma-successor.

Offset 1, canonical program `A367615.P5843079981816674160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367615 (n : ℕ) : ℤ :=
  (A367615.P5843079981816674160.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367782.P17228893178319578665

`lt[n, A000035(n)*A053214(n)]`
-/

namespace A367782.P17228893178319578665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A053214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A367782.P17228893178319578665

noncomputable section

/-- A367782: Numbers k such that binomial(2*k,k) mod k is odd.

Offset 1, canonical program `A367782.P17228893178319578665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1609 terms. -/
def A367782 (n : ℕ) : ℤ :=
  (A367782.P17228893178319578665.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1609 terms. -/
def A367782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367962.P16852134589639979687

`A334156(n+1)/A002024(n+1)`
-/

namespace A367962.P16852134589639979687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334156 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A367962.P16852134589639979687

noncomputable section

/-- A367962: Triangle read by rows. T(n, k) = Sum_{j=0..k} (n!/j!).

Offset 0, canonical program `A367962.P16852134589639979687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A367962 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367962.P16852134589639979687.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A367962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368325.P10805546940918868379

`∪[A000079(n), A002110(n)]`
-/

namespace A368325.P10805546940918868379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A368325.P10805546940918868379

noncomputable section

/-- A368325: Union of primorials and powers of 2.

Offset 1, canonical program `A368325.P10805546940918868379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A368325 (n : ℕ) : ℤ :=
  (A368325.P10805546940918868379.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A368325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368360.P8125097341637287055

`A367362((n+1)²-n²)-10`
-/

namespace A368360.P8125097341637287055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367362 ((n + 1) ^ 2 - n ^ 2) - 10

end

end A368360.P8125097341637287055

noncomputable section

/-- A368360: Comma transform of the even numbers.

Offset 0, canonical program `A368360.P8125097341637287055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A368360 (n : ℕ) : ℤ :=
  A368360.P8125097341637287055.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A368360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368402.P12196050188781490392

`∩[A268375(n+1)-1, A268375(n+1)]`
-/

namespace A368402.P12196050188781490392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268375 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368402.P12196050188781490392

noncomputable section

/-- A368402: Numbers k such that k and k+1 are both in A268375.

Offset 1, canonical program `A368402.P12196050188781490392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1227 terms. -/
def A368402 (n : ℕ) : ℤ :=
  (A368402.P12196050188781490392.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1227 terms. -/
def A368402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368484.P5685286157168044271

`A349055(n)-Δ[A016116(n)]`
-/

namespace A368484.P5685286157168044271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349055 n - (f1 (n + 1) - f1 n)

end

end A368484.P5685286157168044271

noncomputable section

/-- A368484: Number of compositions (ordered partitions) of n into parts not greater than n/2.

Offset 0, canonical program `A368484.P5685286157168044271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A368484 (n : ℕ) : ℤ :=
  A368484.P5685286157168044271.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A368484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368542.P12499842272717580429

`∑{d}[n+1, A059841(#-1)*A364252((n+1)/#)]`
-/

namespace A368542.P12499842272717580429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A364252 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368542.P12499842272717580429

noncomputable section

/-- A368542: The number of divisors of n whose prime factors are all Mersenne primes (A000668).

Offset 1, canonical program `A368542.P12499842272717580429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368542 (n : ℕ) : ℤ :=
  A368542.P12499842272717580429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368625.P10862241457077750444

`1-A336040(n+1)`
-/

namespace A368625.P10862241457077750444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A336040 (n + 1)

end

end A368625.P10862241457077750444

noncomputable section

/-- A368625: Characteristic function of non-refactorable numbers (A159973).

Offset 1, canonical program `A368625.P10862241457077750444`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368625 (n : ℕ) : ℤ :=
  A368625.P10862241457077750444.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368625.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369021.P17917779173175254819

`∩[A369020(n+1)-1, A369020(n+1)]`
-/

namespace A369021.P17917779173175254819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369020 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369021.P17917779173175254819

noncomputable section

/-- A369021: Numbers k such that k, k+1 and k+2 have the same maximal exponent in their prime factorization.

Offset 1, canonical program `A369021.P17917779173175254819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3566 terms. -/
def A369021 (n : ℕ) : ℤ :=
  (A369021.P17917779173175254819.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3566 terms. -/
def A369021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369867.P8493917405294498414

`∑{p}[n+1, A033286((n+1)/#)]`
-/

namespace A369867.P8493917405294498414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A033286 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A369867.P8493917405294498414

noncomputable section

/-- A369867: a(n) = n * Sum_{p|n, p prime} prime(n/p) / p.

Offset 1, canonical program `A369867.P8493917405294498414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369867 (n : ℕ) : ℤ :=
  A369867.P8493917405294498414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369938.P9208307940246870156

`eq[1, A000120(A051903(n+1))]+1`
-/

namespace A369938.P9208307940246870156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A051903 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A369938.P9208307940246870156

noncomputable section

/-- A369938: Numbers whose maximal exponent in their prime factorization is a power of 2.

Offset 1, canonical program `A369938.P9208307940246870156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369938 (n : ℕ) : ℤ :=
  (A369938.P9208307940246870156.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370181.P1112331727695384531

`lcm(A060904(n+1), A133186(n))`
-/

namespace A370181.P1112331727695384531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060904 (n + 1)) (A133186 n)

end

end A370181.P1112331727695384531

noncomputable section

/-- A370181: Size of the group Z_5*/(Z_5*)^n, where Z_5 is the ring of 5-adic integers.

Offset 1, canonical program `A370181.P1112331727695384531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370181 (n : ℕ) : ℤ :=
  (A370181.P1112331727695384531.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370239.P6596085643419210641

`∑{d}[A071773(n+1), #²]`
-/

namespace A370239.P6596085643419210641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A370239.P6596085643419210641

noncomputable section

/-- A370239: The sum of divisors of n that are squares of squarefree numbers.

Offset 1, canonical program `A370239.P6596085643419210641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370239 (n : ℕ) : ℤ :=
  (A370239.P6596085643419210641.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370256.P13192202875511445713

`∑{d}[n+1, A307420(#)]`
-/

namespace A370256.P13192202875511445713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307420 d

end

end A370256.P13192202875511445713

noncomputable section

/-- A370256: The number of ways in which n can be expressed as b^2 * c^3, with b and c >= 1.

Offset 1, canonical program `A370256.P13192202875511445713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370256 (n : ℕ) : ℤ :=
  A370256.P13192202875511445713.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370291.P34793369321355740

`A000217(A072643(n))`
-/

namespace A370291.P34793369321355740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A072643 n).toNat

end

end A370291.P34793369321355740

noncomputable section

/-- A370291: Triangular number T(n) = A000217(n) occurs C(n) = A000108(n) times.

Offset 0, canonical program `A370291.P34793369321355740`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072643, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370291 (n : ℕ) : ℤ :=
  A370291.P34793369321355740.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072643, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370291.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370304.P8445468617132036536

`A129707(n)+A055243(n)`
-/

namespace A370304.P8445468617132036536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129707 n + A055243 n

end

end A370304.P8445468617132036536

noncomputable section

/-- A370304: Number of multiplex juggling cards with n balls and capacity 2.

Offset 0, canonical program `A370304.P8445468617132036536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A370304 (n : ℕ) : ℤ :=
  A370304.P8445468617132036536.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A370304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370479.P11927598021809457386

`A110190(n)+A080247(A133263(n)-1)`
-/

namespace A370479.P11927598021809457386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110190 n + A080247 (A133263 n - 1).toNat

end

end A370479.P11927598021809457386

noncomputable section

/-- A370479: G.f. satisfies A(x) = ( 1 + x * (A(x)^(1/2) / (1-x))^2 )^2.

Offset 0, canonical program `A370479.P11927598021809457386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A370479 (n : ℕ) : ℤ :=
  A370479.P11927598021809457386.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A370479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370487.P3496478294062338609

`abs(2-A029651(n))`
-/

namespace A370487.P3496478294062338609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A029651 n|

end

end A370487.P3496478294062338609

noncomputable section

/-- A370487: Number of partitions of [3n] into 3 sets of size n having at least one set of consecutive numbers whose maximum (if n>0) is a multiple of n.

Offset 0, canonical program `A370487.P3496478294062338609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A370487 (n : ℕ) : ℤ :=
  A370487.P3496478294062338609.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A370487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370565.P7797015782535462372

`(n+1)*A370180(n+1)`
-/

namespace A370565.P7797015782535462372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A370180 (n + 1)

end

end A370565.P7797015782535462372

noncomputable section

/-- A370565: Size of the group Q_3*/(Q_3*)^n, where Q_3 is the field of 3-adic numbers.

Offset 1, canonical program `A370565.P7797015782535462372`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370180, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370565 (n : ℕ) : ℤ :=
  A370565.P7797015782535462372.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370180, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370565.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370567.P14808296113634143775

`(n+1)*A370182(n+1)`
-/

namespace A370567.P14808296113634143775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A370182 (n + 1)

end

end A370567.P14808296113634143775

noncomputable section

/-- A370567: Size of the group Q_7*/(Q_7*)^n, where Q_7 is the field of 7-adic numbers.

Offset 1, canonical program `A370567.P14808296113634143775`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370182, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370567 (n : ℕ) : ℤ :=
  A370567.P14808296113634143775.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370182, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370567.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370791.P32120878239990069

`A153151(A303768(n))`
-/

namespace A370791.P32120878239990069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153151 (A303768 n).toNat

end

end A370791.P32120878239990069

noncomputable section

/-- A370791: Inverse permutation of A370790.

Offset 0, canonical program `A370791.P32120878239990069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. -/
def A370791 (n : ℕ) : ℤ :=
  A370791.P32120878239990069.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. -/
def A370791.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A371014.P1386548091365000844

`∑{d}[n+1, A229062(#)]`
-/

namespace A371014.P1386548091365000844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A229062 d

end

end A371014.P1386548091365000844

noncomputable section

/-- A371014: The number of divisors of n that are the sum of 2 squares.

Offset 1, canonical program `A371014.P1386548091365000844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371014 (n : ℕ) : ℤ :=
  A371014.P1386548091365000844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371627.P7388867108596461691

`A003231(n+1)%A186516(n+1)`
-/

namespace A371627.P7388867108596461691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003231 (n + 1)) (A186516 (n + 1))

end

end A371627.P7388867108596461691

noncomputable section

/-- A371627: The x-coordinate of the point where x + y = n, x is an integer and x/y is as close as possible to 1/phi.

Offset 1, canonical program `A371627.P7388867108596461691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371627 (n : ℕ) : ℤ :=
  A371627.P7388867108596461691.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371777.P6370977286635919550

`∑[A032443(n)]`
-/

namespace A371777.P6370977286635919550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371777.P6370977286635919550

noncomputable section

/-- A371777: a(n) = Sum_{k=0..floor(n/3)} binomial(2*n+2,n-3*k).

Offset 0, canonical program `A371777.P6370977286635919550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A371777 (n : ℕ) : ℤ :=
  A371777.P6370977286635919550.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A371777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371873.P10849458440002664897

`∑[A114121(n)]`
-/

namespace A371873.P10849458440002664897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371873.P10849458440002664897

noncomputable section

/-- A371873: a(n) = Sum_{k=0..floor(n/3)} binomial(2*n+1,n-3*k).

Offset 0, canonical program `A371873.P10849458440002664897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A371873 (n : ℕ) : ℤ :=
  A371873.P10849458440002664897.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A371873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372077.P9338915996227738608

`∑[A372076(A028310(2*n)+xor(n, -1))]`
-/

namespace A372077.P9338915996227738608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372076 (A028310 (2 * n) + Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372077.P9338915996227738608

noncomputable section

/-- A372077: The sequence T_{3,2}(n,3).

Offset 0, canonical program `A372077.P9338915996227738608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A372077 (n : ℕ) : ℤ :=
  A372077.P9338915996227738608.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A372077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372257.P4449125955602869513

`xor(n%4, A038189(A008619(n)))`
-/

namespace A372257.P4449125955602869513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n % 4 : ℕ) : ℤ) (A038189 (A008619 n).toNat)

end

end A372257.P4449125955602869513

noncomputable section

/-- A372257: An infinite sequence over {0,1,2,3} without palindromes of length more than 1.

Offset 0, canonical program `A372257.P4449125955602869513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372257 (n : ℕ) : ℤ :=
  A372257.P4449125955602869513.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372257.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A372420.P2955460865026778528

`2*a(n-1)+A028270(n)` with `a(0)=1`
-/

namespace A372420.P2955460865026778528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A028270 n

end

end A372420.P2955460865026778528

noncomputable section

/-- A372420: Expansion of (1 + x) / ((1 - 2*x)*sqrt(1 - 4*x)).

Offset 0, canonical program `A372420.P2955460865026778528`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028270, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372420 (n : ℕ) : ℤ :=
  A372420.P2955460865026778528.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028270, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372420.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372620.P7316708398144382108

`∑{p}[n+1, A128913(#)]`
-/

namespace A372620.P7316708398144382108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A128913 p

end

end A372620.P7316708398144382108

noncomputable section

/-- A372620: Expansion of Sum_{k>=1} k * prime(k) * x^prime(k) / (1 - x^prime(k)).

Offset 1, canonical program `A372620.P7316708398144382108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372620 (n : ℕ) : ℤ :=
  A372620.P7316708398144382108.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372836.P15851100196529758634

`A048050(n+1)/gcd(n+1, A048050(n+1))`
-/

namespace A372836.P15851100196529758634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048050 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A048050 (n + 1)) : ℚ)

end

end A372836.P15851100196529758634

noncomputable section

/-- A372836: a(n) is the numerator of Sum_{d|n, 1 < d < n} 1/d.

Offset 1, canonical program `A372836.P15851100196529758634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372836 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372836.P15851100196529758634.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372873.P8475125270225187405

`A098158(n)*A116588(n)`
-/

namespace A372873.P8475125270225187405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n * A116588 n

end

end A372873.P8475125270225187405

noncomputable section

/-- A372873: Triangle read by rows: T(n,k) is the number of flattened Catalan words of length n with exactly k runs of descents.

Offset 1, canonical program `A372873.P8475125270225187405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372873 (n : ℕ) : ℤ :=
  A372873.P8475125270225187405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373327.P9323461838594572864

`record[A064784(n+1)]`
-/

namespace A373327.P9323461838594572864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373327.P9323461838594572864

noncomputable section

/-- A373327: Records of A064784.

Offset 1, canonical program `A373327.P9323461838594572864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A373327 (n : ℕ) : ℤ :=
  A373327.P9323461838594572864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A373327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373335.P16851351623866250956

`A001876(n+1)-A001877(n+1)`
-/

namespace A373335.P16851351623866250956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (n + 1) - A001877 (n + 1)

end

end A373335.P16851351623866250956

noncomputable section

/-- A373335: Expansion of Sum_{k>=1} x^k / (1 + x^k + x^(2*k) + x^(3*k) + x^(4*k)).

Offset 1, canonical program `A373335.P16851351623866250956`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001876, A001877, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373335 (n : ℕ) : ℤ :=
  A373335.P16851351623866250956.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001876, A001877, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373335.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373375.P9154301366979022863

`filter[A036349(n+1), A152822(#)]`
-/

namespace A373375.P9154301366979022863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A373375.P9154301366979022863

noncomputable section

/-- A373375: Numbers whose sum of prime factors (with repetition, A001414) and arithmetic derivative (A003415) are both even.

Offset 1, canonical program `A373375.P9154301366979022863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7503 terms. -/
def A373375 (n : ℕ) : ℤ :=
  A373375.P9154301366979022863.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7503 terms. -/
def A373375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373417.P9673982607469384349

`A007318(n)*A216778(A002262(n))`
-/

namespace A373417.P9673982607469384349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A216778 (A002262 n).toNat

end

end A373417.P9673982607469384349

noncomputable section

/-- A373417: Triangle T(n,k) for the number of permutations in symmetric group S_n with (n-k) fixed points and an even number of non-fixed point cycles. Equivalent to the number of cycles of n items with cycle type defined by non-unity partitions of k<=n that contain an even number of parts.

Offset 0, canonical program `A373417.P9673982607469384349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2624 terms. -/
def A373417 (n : ℕ) : ℤ :=
  A373417.P9673982607469384349.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2624 terms. -/
def A373417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373844.P17122979438263369272

`2*A087112(comp[∑[n]]+1)`
-/

namespace A373844.P17122979438263369272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087112 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A373844.P17122979438263369272

noncomputable section

/-- A373844: Triangle read by rows: T(n,k) = A276086(1 + A002110(n) + A002110(k)), 1 <= k <= n, where A276086 is the primorial base exp-function.

Offset 1, canonical program `A373844.P17122979438263369272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A373844 (n : ℕ) : ℤ :=
  A373844.P17122979438263369272.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A373844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374103.P10994597095959919858

`∩[A374102(n+1)-2, A374102(n+1)]`
-/

namespace A374103.P10994597095959919858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374102 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374103.P10994597095959919858

noncomputable section

/-- A374103: Numbers k such that k and k+2 are both prime binary self (or Colombian) numbers (A374102).

Offset 1, canonical program `A374103.P10994597095959919858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. -/
def A374103 (n : ℕ) : ℤ :=
  (A374103.P10994597095959919858.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. -/
def A374103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374124.P11400155404206202133

`A113177(n+1)%360`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374124.P11400155404206202133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113177 (n + 1)) 360

end

end A374124.P11400155404206202133

noncomputable section

/-- A374124: a(n) = A113177(n) mod 360, where A113177 is fully additive with a(p) = Fibonacci(p).

Offset 1, canonical program `A374124.P11400155404206202133`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113177, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374124 (n : ℕ) : ℤ :=
  A374124.P11400155404206202133.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113177, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374124.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374180.P6463857009267516425

`eq[A040351(n), A090678(n)]`
-/

namespace A374180.P6463857009267516425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040351 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374180.P6463857009267516425

noncomputable section

/-- A374180: Numbers k such that K(3 / k) != K((-1)^floor(k/2)*k / 3), where K(a/b) is the Kronecker symbol. Row 1 of A374188.

Offset 1, canonical program `A374180.P6463857009267516425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1662 terms. -/
def A374180 (n : ℕ) : ℤ :=
  (A374180.P6463857009267516425.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1662 terms. -/
def A374180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374181.P5817940139700194880

`eq[A089129(n), A121241(n)]`
-/

namespace A374181.P5817940139700194880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089129 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121241 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374181.P5817940139700194880

noncomputable section

/-- A374181: Numbers k such that K(7 / k) != K((-1)^floor(k/2)*k / 7), where K(a/b) is the Kronecker symbol. Row 2 of A374188.

Offset 1, canonical program `A374181.P5817940139700194880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2137 terms. -/
def A374181 (n : ℕ) : ℤ :=
  (A374181.P5817940139700194880.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2137 terms. -/
def A374181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374197.P14528323584285491207

`1-a(A080225(n+1))` with `a(0)=1`
-/

namespace A374197.P14528323584285491207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (A080225 (n + 1)).toNat

end

end A374197.P14528323584285491207

noncomputable section

/-- A374197: a(n) is 1 if the minimum value of A017666 that it obtains among divisors of n larger than 1 is 1, otherwise 0. By convention a(1) = 1.

Offset 1, canonical program `A374197.P14528323584285491207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374197 (n : ℕ) : ℤ :=
  A374197.P14528323584285491207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374207.P10474320584513689055

`val(A113177(n+2), 3)`
-/

namespace A374207.P10474320584513689055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A113177 (n + 2)).toNat 3

end

end A374207.P10474320584513689055

noncomputable section

/-- A374207: The 3-adic valuation of A113177(n), where A113177 is fully additive with a(p) = Fibonacci(p).

Offset 2, canonical program `A374207.P10474320584513689055`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113177, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374207 (n : ℕ) : ℤ :=
  (A374207.P10474320584513689055.a (n - 2) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113177, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374207.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374208.P8868820187613092688

`val(A113177(n+2), 5)`
-/

namespace A374208.P8868820187613092688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A113177 (n + 2)).toNat 5

end

end A374208.P8868820187613092688

noncomputable section

/-- A374208: The 5-adic valuation of A113177(n), where A113177 is fully additive with a(p) = Fibonacci(p).

Offset 2, canonical program `A374208.P8868820187613092688`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113177, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374208 (n : ℕ) : ℤ :=
  (A374208.P8868820187613092688.a (n - 2) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113177, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374208.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374222.P6993703694642363716

`A079978(A374126(n+1))`
-/

namespace A374222.P6993703694642363716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A374126 (n + 1)).toNat

end

end A374222.P6993703694642363716

noncomputable section

/-- A374222: a(n) = 1 if sigma(n) and sopfr(n) are both multiples of 3, otherwise 0, where sigma is the sum of divisors, and sopfr is the sum of prime factors with repetition.

Offset 1, canonical program `A374222.P6993703694642363716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374126, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374222 (n : ℕ) : ℤ :=
  A374222.P6993703694642363716.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374126, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374222.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374325.P10189443371500912035

`A051903(A369937(n+1))`
-/

namespace A374325.P10189443371500912035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A369937 (n + 1)).toNat

end

end A374325.P10189443371500912035

noncomputable section

/-- A374325: The maximal exponent in the prime factorization of the numbers whose maximal exponent in their prime factorization is a square.

Offset 1, canonical program `A374325.P10189443371500912035`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A369937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374325 (n : ℕ) : ℤ :=
  A374325.P10189443371500912035.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A369937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374325.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374439.P2263089578454840483

`(A060510(n)+1)*A065941(n)`
-/

namespace A374439.P2263089578454840483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060510 n + 1) * A065941 n

end

end A374439.P2263089578454840483

noncomputable section

/-- A374439: Triangle read by rows: the coefficients of the Lucas-Fibonacci polynomials. T(n, k) = T(n - 1, k) + T(n - 2, k - 2) with initial values T(n, k) = k + 1 for k < 2.

Offset 0, canonical program `A374439.P2263089578454840483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374439 (n : ℕ) : ℤ :=
  A374439.P2263089578454840483.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374535.P6338832552149736650

`∑[A185152(A028310(n))]-1`
-/

namespace A374535.P6338832552149736650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185152 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A374535.P6338832552149736650

noncomputable section

/-- A374535: Expansion of (x/(8 * (1-x))) * d/dx(theta_3(x)^4).

Offset 0, canonical program `A374535.P6338832552149736650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374535 (n : ℕ) : ℤ :=
  A374535.P6338832552149736650.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374586.P1168262897995380025

`A051903(A336064(n+1))`
-/

namespace A374586.P1168262897995380025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A336064 (n + 1)).toNat

end

end A374586.P1168262897995380025

noncomputable section

/-- A374586: The maximum exponent in the prime factorization of the numbers that are divisible by the maximum exponent in their prime factorization.

Offset 1, canonical program `A374586.P1168262897995380025`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A336064, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374586 (n : ℕ) : ℤ :=
  A374586.P1168262897995380025.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A336064, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374586.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375257.P7772889362552758042

`eq[1, A180017(n)+2]`
-/

namespace A375257.P7772889362552758042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A375257.P7772889362552758042

noncomputable section

/-- A375257: Numbers whose sum of base-2 digits is 1 more than their sum of base-3 digits.

Offset 1, canonical program `A375257.P7772889362552758042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 950 terms. -/
def A375257 (n : ℕ) : ℤ :=
  (A375257.P7772889362552758042.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 950 terms. -/
def A375257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375325.P4910902372028041489

`∑{d}[n+1, A353816(#)]`
-/

namespace A375325.P4910902372028041489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353816 d

end

end A375325.P4910902372028041489

noncomputable section

/-- A375325: a(n) is the number of divisors of n which are Loeschian numbers (A003136).

Offset 1, canonical program `A375325.P4910902372028041489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375325 (n : ℕ) : ℤ :=
  A375325.P4910902372028041489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375972.P18053615468605080457

`C(n+2, A078881(n+1))`
-/

namespace A375972.P18053615468605080457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (A078881 (n + 1)).toNat

end

end A375972.P18053615468605080457

noncomputable section

/-- A375972: a(n) = binomial(n,k(n)), where k(2) = 1, k(n) = k(n-1) + (a(n-1) mod 2).

Offset 2, canonical program `A375972.P18053615468605080457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A375972 (n : ℕ) : ℤ :=
  (A375972.P18053615468605080457.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A375972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376141.P3226871347673056162

`A051903(A369020(n+1))`
-/

namespace A376141.P3226871347673056162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A369020 (n + 1)).toNat

end

end A376141.P3226871347673056162

noncomputable section

/-- A376141: The maximum exponent in the prime factorization of the numbers k such that k and k+1 have the same maximum exponent in their prime factorization.

Offset 1, canonical program `A376141.P3226871347673056162`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A369020, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376141 (n : ℕ) : ℤ :=
  A376141.P3226871347673056162.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A369020, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376141.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376358.P14573369327161220260

`eq[1, A062108(a(A053186(n)))]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A376358.P14573369327161220260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f2 =>
  A062108 (f2 (A053186 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376358.P14573369327161220260

noncomputable section

/-- A376358: Positions of numbers in A007961 that end in 1.

Offset 1, canonical program `A376358.P14573369327161220260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2490 terms. -/
def A376358 (n : ℕ) : ℤ :=
  (A376358.P14573369327161220260.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2490 terms. -/
def A376358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376359.P14643456842463236531

`eq[1, A062108(a(A053186(n)))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=25`
-/

namespace A376359.P14643456842463236531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 25] fun n f2 =>
  A062108 (f2 (A053186 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376359.P14643456842463236531

noncomputable section

/-- A376359: Positions of numbers in A007961 that end in 2.

Offset 1, canonical program `A376359.P14643456842463236531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. -/
def A376359 (n : ℕ) : ℤ :=
  (A376359.P14643456842463236531.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. -/
def A376359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376506.P6422595350280780415

`∪[A045800(n+1), A045805(n+1)]`
-/

namespace A376506.P6422595350280780415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376506.P6422595350280780415

noncomputable section

/-- A376506: Natural numbers whose iterated squaring modulo 100 eventually settles at the attractor 1.

Offset 1, canonical program `A376506.P6422595350280780415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376506 (n : ℕ) : ℤ :=
  (A376506.P6422595350280780415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376562.P1885270741237052164

`Δ[A375706(n+1)]`
-/

namespace A376562.P1885270741237052164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376562.P1885270741237052164

noncomputable section

/-- A376562: Second differences of consecutive non-perfect-powers (A007916). First differences of A375706.

Offset 1, canonical program `A376562.P1885270741237052164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376562 (n : ℕ) : ℤ :=
  A376562.P1885270741237052164.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377160.P10435987301358930042

`lt[2, A176166(n+1)]+1`
-/

namespace A377160.P10435987301358930042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176166 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A377160.P10435987301358930042

noncomputable section

/-- A377160: Numbers k such that A000217(k) is not cubefree.

Offset 1, canonical program `A377160.P10435987301358930042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2099 terms. -/
def A377160 (n : ℕ) : ℤ :=
  (A377160.P10435987301358930042.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2099 terms. -/
def A377160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377415.P2443321957255259376

`n-A377414(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377415.P2443321957255259376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A377414 n

end

end A377415.P2443321957255259376

noncomputable section

/-- A377415: a(n) = n - A377414(n).

Offset 0, canonical program `A377415.P2443321957255259376`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A377414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377415 (n : ℕ) : ℤ :=
  A377415.P2443321957255259376.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A377414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377415.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379034.P12083049047450536619

`A151483(n)*A151483(n+1)/4^n`
-/

namespace A379034.P12083049047450536619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151483 n * A151483 (n + 1) : ℚ) / (4 ^ n : ℚ)

end

end A379034.P12083049047450536619

noncomputable section

/-- A379034: Number of intervals in the lattice of Motzkin paths of length n.

Offset 0, canonical program `A379034.P12083049047450536619`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151483, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379034 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A379034.P12083049047450536619.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151483, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379034.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379210.P10174881561105759051

`A036666(n+1)+A074378(n)-A219391(n+1)`
-/

namespace A379210.P10174881561105759051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036666 (n + 1) + (A074378 n - A219391 (n + 1))

end

end A379210.P10174881561105759051

noncomputable section

/-- A379210: List of integers of the form (N^2 - 4)/15.

Offset 1, canonical program `A379210.P10174881561105759051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379210 (n : ℕ) : ℤ :=
  A379210.P10174881561105759051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379225.P6942672571907196509

`A113177(n+1)%5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379225.P6942672571907196509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113177 (n + 1)) 5

end

end A379225.P6942672571907196509

noncomputable section

/-- A379225: a(n) = A113177(n) mod 5, where A113177 is fully additive with a(p) = Fibonacci(p).

Offset 1, canonical program `A379225.P6942672571907196509`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113177, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379225 (n : ℕ) : ℤ :=
  A379225.P6942672571907196509.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113177, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379225.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379714.P10513291815348111306

`∑[(-1)^n*A049419(n+1)]`
-/

namespace A379714.P10513291815348111306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A049419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379714.P10513291815348111306

noncomputable section

/-- A379714: Partial alternating sums of the number of exponential divisors function (A049419).

Offset 1, canonical program `A379714.P10513291815348111306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379714 (n : ℕ) : ℤ :=
  A379714.P10513291815348111306.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379865.P7694616822125640737

`A192543(A100484(n+1))`
-/

namespace A379865.P7694616822125640737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (A100484 (n + 1)).toNat

end

end A379865.P7694616822125640737

noncomputable section

/-- A379865: Number of base 10 digits of 2^(p-1)*(2^p-1) where p = prime(n).

Offset 1, canonical program `A379865.P7694616822125640737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A379865 (n : ℕ) : ℤ :=
  A379865.P7694616822125640737.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A379865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380049.P17814208362061361068

`∑[A072203(n+1)]`
-/

namespace A380049.P17814208362061361068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380049.P17814208362061361068

noncomputable section

/-- A380049: Partial sums of A072203.

Offset 1, canonical program `A380049.P17814208362061361068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380049 (n : ℕ) : ℤ :=
  A380049.P17814208362061361068.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380049.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A380281.P6966654181893979849

`A103327(n)*A173424(n)`
-/

namespace A380281.P6966654181893979849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103327 n * A173424 n

end

end A380281.P6966654181893979849

noncomputable section

/-- A380281: Triangle T(n, k) read by rows: T(n, k) = 2^n*binomial(2*n + 1, 2*k + 1) * Pochhammer(1/2, n - k) * Pochhammer(1/2, k).

Offset 0, canonical program `A380281.P6966654181893979849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1501 terms. -/
def A380281 (n : ℕ) : ℤ :=
  A380281.P6966654181893979849.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1501 terms. -/
def A380281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380332.P1368745868140555884

`A117490(floor(1/(n+1))+n²)`
-/

namespace A380332.P1368745868140555884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117490 (⌊1 / (n + 1 : ℚ)⌋ + (n ^ 2 : ℤ)).toNat

end

end A380332.P1368745868140555884

noncomputable section

/-- A380332: a(n) = number of primes between n^2 and n^4.

Offset 0, canonical program `A380332.P1368745868140555884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A380332 (n : ℕ) : ℤ :=
  A380332.P1368745868140555884.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A380332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380421.P2214143849344174104

`A000326(A006254(n+1))%A000040(n+2)`
-/

namespace A380421.P2214143849344174104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000326 (A006254 (n + 1)).toNat) (A000040 (n + 2))

end

end A380421.P2214143849344174104

noncomputable section

/-- A380421: a(n) is the inverse of 2^3 modulo prime(n).

Offset 2, canonical program `A380421.P2214143849344174104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A380421 (n : ℕ) : ℤ :=
  A380421.P2214143849344174104.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A380421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381241.P648882658982533390

`record[A381096(n+1)]`
-/

namespace A381241.P648882658982533390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381241.P648882658982533390

noncomputable section

/-- A381241: Records in A381096.

Offset 1, canonical program `A381241.P648882658982533390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A381241 (n : ℕ) : ℤ :=
  A381241.P648882658982533390.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A381241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381953.P14987201644516485454

`eq[2, A381952(n+1)]+1`
-/

namespace A381953.P14987201644516485454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381952 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A381953.P14987201644516485454

noncomputable section

/-- A381953: Numbers k such that A381952(k) = 2.

Offset 1, canonical program `A381953.P14987201644516485454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1619 terms. -/
def A381953 (n : ℕ) : ℤ :=
  (A381953.P14987201644516485454.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1619 terms. -/
def A381953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381956.P13911455406183739414

`eq[A033999(n), A376139(n+1)]+1`
-/

namespace A381956.P13911455406183739414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376139 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A381956.P13911455406183739414

noncomputable section

/-- A381956: Numbers k such that k and the maximum exponent in the prime factorization of k have opposite parities.

Offset 1, canonical program `A381956.P13911455406183739414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3752 terms. -/
def A381956 (n : ℕ) : ℤ :=
  (A381956.P13911455406183739414.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3752 terms. -/
def A381956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382486.P8725495810490072092

`∏{p}[A072504(n+1), #]`
-/

namespace A382486.P8725495810490072092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A382486.P8725495810490072092

noncomputable section

/-- A382486: Product of distinct prime divisors of n that are <= sqrt(n).

Offset 1, canonical program `A382486.P8725495810490072092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382486 (n : ℕ) : ℤ :=
  (A382486.P8725495810490072092.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382503.P4051252001946034417

`A072929(n+1)/2`
-/

namespace A382503.P4051252001946034417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072929 (n + 1) : ℚ) / 2

end

end A382503.P4051252001946034417

noncomputable section

/-- A382503: a(n) = Sum_{d|n} binomial(2*d-1,d).

Offset 1, canonical program `A382503.P4051252001946034417`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382503 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382503.P4051252001946034417.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382503.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382534.P13731056462222352667

`A010707(n)*A302653(n+1)`
-/

namespace A382534.P13731056462222352667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010707 n * A302653 (n + 1)

end

end A382534.P13731056462222352667

noncomputable section

/-- A382534: Number of minimum total dominating sets in the n-flower graph.

Offset 1, canonical program `A382534.P13731056462222352667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382534 (n : ℕ) : ℤ :=
  A382534.P13731056462222352667.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382967.P7933862469606016170

`eq[2, A299090(n+1)]+1`
-/

namespace A382967.P7933862469606016170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299090 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A382967.P7933862469606016170

noncomputable section

/-- A382967: Biquadratefree numbers (A046100) that are not squarefree (A005117).

Offset 1, canonical program `A382967.P7933862469606016170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382967 (n : ℕ) : ℤ :=
  (A382967.P7933862469606016170.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383254.P111006484636996421

`∑[A163869(n)]`
-/

namespace A383254.P111006484636996421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383254.P111006484636996421

noncomputable section

/-- A383254: Expansion of 1/sqrt( (1-x) * (1-5*x)^3 ).

Offset 0, canonical program `A383254.P111006484636996421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A383254 (n : ℕ) : ℤ :=
  A383254.P111006484636996421.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A383254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383422.P18234050156390555465

`1-A287772(n+1)`
-/

namespace A383422.P18234050156390555465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A287772 (n + 1)

end

end A383422.P18234050156390555465

noncomputable section

/-- A383422: The infinite Lucas word; the limiting word generated by s(0) = 0, s(1) = 011, and s(n) = s(n-1)s(n-2).

Offset 0, canonical program `A383422.P18234050156390555465`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287772, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383422 (n : ℕ) : ℤ :=
  A383422.P18234050156390555465.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287772, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383422.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383451.P5284204674195403316

`A000217(n+1)*A025174(n+2)`
-/

namespace A383451.P5284204674195403316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A025174 (n + 2)

end

end A383451.P5284204674195403316

noncomputable section

/-- A383451: 3rd diagonal (from right) in A104978.

Offset 0, canonical program `A383451.P5284204674195403316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A383451 (n : ℕ) : ℤ :=
  A383451.P5284204674195403316.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A383451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383794.P14355268900012724645

`A256689(n+1)/A038500(n+1)`
-/

namespace A383794.P14355268900012724645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256689 (n + 1) : ℚ) / (A038500 (n + 1) : ℚ)

end

end A383794.P14355268900012724645

noncomputable section

/-- A383794: Denominators of Dirichlet g.f.: Sum_{n>=1} a(n)/n^s = zeta(s-1)^(1/3).

Offset 1, canonical program `A383794.P14355268900012724645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383794 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A383794.P14355268900012724645.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383949.P7939067795881425462

`∑[A026375(n)]`
-/

namespace A383949.P7939067795881425462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383949.P7939067795881425462

noncomputable section

/-- A383949: Expansion of 1/sqrt((1-x)^3 * (1-5*x)).

Offset 0, canonical program `A383949.P7939067795881425462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A383949 (n : ℕ) : ℤ :=
  A383949.P7939067795881425462.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A383949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384155.P9215467995244416545

`A005252(n+1)-A005253(n)`
-/

namespace A384155.P9215467995244416545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 (n + 1) - A005253 n

end

end A384155.P9215467995244416545

noncomputable section

/-- A384155: a(n) is the number of binary strings of length n whose shortest run of 1s is of length 3.

Offset 0, canonical program `A384155.P9215467995244416545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A384155 (n : ℕ) : ℤ :=
  A384155.P9215467995244416545.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A384155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385042.P6846705367475182241

`2^A366074(n+1)`
-/

namespace A385042.P6846705367475182241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A366074 (n + 1) : ℤ)

end

end A385042.P6846705367475182241

noncomputable section

/-- A385042: The number of unitary divisors of n whose exponents in their prime factorizations are all powers of 2 (A138302).

Offset 1, canonical program `A385042.P6846705367475182241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385042 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385042.P6846705367475182241.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385131.P16204197689219964714

`∑{d}[n+1, #*A381955(#)]`
-/

namespace A385131.P16204197689219964714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A381955 d

end

end A385131.P16204197689219964714

noncomputable section

/-- A385131: The sum of divisors of n whose maximum exponent in their prime factorization is odd.

Offset 1, canonical program `A385131.P16204197689219964714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385131 (n : ℕ) : ℤ :=
  A385131.P16204197689219964714.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385139.P2784818841424289045

`∑{d}[n+1, #*A355823((n+1)/#)]`
-/

namespace A385139.P2784818841424289045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A355823 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385139.P2784818841424289045

noncomputable section

/-- A385139: The sum of divisors d of n such that n/d has exponents in its prime factorization that are all powers of 2 (A138302).

Offset 1, canonical program `A385139.P2784818841424289045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385139 (n : ℕ) : ℤ :=
  A385139.P2784818841424289045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385435.P8381468024742294352

`A051638(A032766(n))`
-/

namespace A385435.P8381468024742294352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051638 (A032766 n).toNat

end

end A385435.P8381468024742294352

noncomputable section

/-- A385435: Row sums of A385434.

Offset 0, canonical program `A385435.P8381468024742294352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 998 terms. -/
def A385435 (n : ℕ) : ℤ :=
  A385435.P8381468024742294352.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 998 terms. -/
def A385435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385623.P18064648453989504874

`(row(n)-col(n))*10^A055642(col(n))+col(n)`
-/

namespace A385623.P18064648453989504874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) * (10 : ℚ) ^ (A055642 (SequenceMachineLib.triCol n) : ℤ) + (SequenceMachineLib.triCol n : ℚ)

end

end A385623.P18064648453989504874

noncomputable section

/-- A385623: Array read by ascending antidiagonals: A(n,k) is the number obtained by concatenation of n with k in that order, with k >= 0.

Offset 0, canonical program `A385623.P18064648453989504874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385623 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385623.P18064648453989504874.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385660.P17485724804406826863

`lt[(n+1)%A001223(n+1), 1]+1`
-/

namespace A385660.P17485724804406826863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A001223 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A385660.P17485724804406826863

noncomputable section

/-- A385660: Numbers k such that prime(k+1)-prime(k) divides k.

Offset 1, canonical program `A385660.P17485724804406826863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A385660 (n : ℕ) : ℤ :=
  (A385660.P17485724804406826863.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A385660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385813.P17013996345610110773

`C(n+2, 2)*A182401(n)`
-/

namespace A385813.P17013996345610110773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) * A182401 n

end

end A385813.P17013996345610110773

noncomputable section

/-- A385813: Expansion of 1/((1-3*x) * (1-7*x))^(3/2).

Offset 0, canonical program `A385813.P17013996345610110773`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A182401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385813 (n : ℕ) : ℤ :=
  A385813.P17013996345610110773.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A182401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385813.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385880.P8400592766073740552

`A385879(n+1)+3`
-/

namespace A385880.P8400592766073740552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385879 (n + 1) + 3

end

end A385880.P8400592766073740552

noncomputable section

/-- A385880: Values of u in triples (u, v, w) such that the polynomial x^3 + u*x^2 + v*x + w has 3 distinct negative integer zeros; the triples are ordered by the inequality u < v.

Offset 1, canonical program `A385880.P8400592766073740552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385880 (n : ℕ) : ℤ :=
  A385880.P8400592766073740552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386472.P7970644289596201649

`A048760(A051903(n+1))`
-/

namespace A386472.P7970644289596201649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A051903 (n + 1)).toNat

end

end A386472.P7970644289596201649

noncomputable section

/-- A386472: The maximum exponent in the prime factorization of the largest divisor of n whose exponents in its prime factorization are squares.

Offset 1, canonical program `A386472.P7970644289596201649`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386472 (n : ℕ) : ℤ :=
  A386472.P7970644289596201649.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386472.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386637.P14085330832617281691

`record[lcm(7, A001248(n+1))]`
-/

namespace A386637.P14085330832617281691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 7 (A001248 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A386637.P14085330832617281691

noncomputable section

/-- A386637: Numbers k such that sigma(k) = psi(k) + tau(k) + omega(k).

Offset 1, canonical program `A386637.P14085330832617281691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A386637 (n : ℕ) : ℤ :=
  (A386637.P14085330832617281691.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A386637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386684.P6936343892752032316

`filter[A067259(n+1), A049240(#)]`
-/

namespace A386684.P6936343892752032316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A386684.P6936343892752032316

noncomputable section

/-- A386684: Cubefree nonsquares with at least one prime power factor that is not square.

Offset 1, canonical program `A386684.P6936343892752032316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9871 terms. -/
def A386684 (n : ℕ) : ℤ :=
  A386684.P6936343892752032316.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9871 terms. -/
def A386684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386758.P2105322873788982803

`∑{digits}[A000032(n), A055642(#)]`
-/

namespace A386758.P2105322873788982803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055642 x).sum

end

end A386758.P2105322873788982803

noncomputable section

/-- A386758: Number of decimal digits in the n-th Lucas number.

Offset 0, canonical program `A386758.P2105322873788982803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A386758 (n : ℕ) : ℤ :=
  A386758.P2105322873788982803.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A386758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386789.P12804886181245952323

`∑[char[∑[n]]]*A086810(n)`
-/

namespace A386789.P12804886181245952323
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A086810 n

end

end A386789.P12804886181245952323

noncomputable section

/-- A386789: Triangle read by rows: T(n, k) = binomial(n - 1, k - 1)*binomial(n + k, k).

Offset 0, canonical program `A386789.P12804886181245952323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9138 terms. -/
def A386789 (n : ℕ) : ℤ :=
  A386789.P12804886181245952323.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9138 terms. -/
def A386789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387007.P16403680453243882682

`A160906(n)+A160906(n)-A045721(n)`
-/

namespace A387007.P16403680453243882682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160906 n + (A160906 n - A045721 n)

end

end A387007.P16403680453243882682

noncomputable section

/-- A387007: a(n) = Sum_{k=0..n} binomial(3*n+2,k).

Offset 0, canonical program `A387007.P16403680453243882682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A387007 (n : ℕ) : ℤ :=
  A387007.P16403680453243882682.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A387007.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A387214.P2467354338932694819

`1-Δ[A156301(n)]`
-/

namespace A387214.P2467354338932694819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A387214.P2467354338932694819

noncomputable section

/-- A387214: Sturmian word of slope log(3)/log(2) - 1.

Offset 0, canonical program `A387214.P2467354338932694819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387214 (n : ℕ) : ℤ :=
  A387214.P2467354338932694819.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387278.P12336194526423277671

`(n+1)*A182401(n)`
-/

namespace A387278.P12336194526423277671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A182401 n

end

end A387278.P12336194526423277671

noncomputable section

/-- A387278: a(n) = Sum_{k=0..n} 3^(n-k) * binomial(n+1,k+1) * binomial(2*k+2,k+2).

Offset 0, canonical program `A387278.P12336194526423277671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A387278 (n : ℕ) : ℤ :=
  A387278.P12336194526423277671.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A387278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387298.P17635414638454677823

`∏{e}[n+1, A128834(#)]`
-/

namespace A387298.P17635414638454677823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A128834 (Nat.factorization (f1 n) p)

end

end A387298.P17635414638454677823

noncomputable section

/-- A387298: Dirichlet g.f.: zeta(s) * zeta(6*s) / (zeta(3*s) * zeta(4*s)).

Offset 1, canonical program `A387298.P17635414638454677823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387298 (n : ℕ) : ℤ :=
  A387298.P17635414638454677823.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387365.P13850223624109421705

`(n/2+1)*A082693(n)`
-/

namespace A387365.P13850223624109421705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (A082693 n : ℚ)

end

end A387365.P13850223624109421705

noncomputable section

/-- A387365: a(n) = (n+1) * 2^abs(n - 1 - c*(c-1)) / 2, where c = ceiling(sqrt(n)).

Offset 1, canonical program `A387365.P13850223624109421705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A387365 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387365.P13850223624109421705.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A387365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387401.P4911919190791046722

`(n+1)*A071356(n)`
-/

namespace A387401.P4911919190791046722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A071356 n

end

end A387401.P4911919190791046722

noncomputable section

/-- A387401: a(n) = Sum_{k=0..n} (1-i)^k * (1+i)^(n-k) * binomial(n+1,k) * binomial(n+1,n-k), where i is the imaginary unit.

Offset 0, canonical program `A387401.P4911919190791046722`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071356, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A387401 (n : ℕ) : ℤ :=
  A387401.P4911919190791046722.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071356, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A387401.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A387858.P204577345225276622

`A008670(A042948(3*n+4)+1)`
-/

namespace A387858.P204577345225276622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008670 (A042948 (3 * n + 4) + 1).toNat

end

end A387858.P204577345225276622

noncomputable section

/-- A387858: Sum of squares of the multiplicities of pairwise distances among the vertices of a regular n-gon.

Offset 3, canonical program `A387858.P204577345225276622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1666 terms. -/
def A387858 (n : ℕ) : ℤ :=
  A387858.P204577345225276622.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1666 terms. -/
def A387858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388012.P15688760804591210700

`lt[A277573(n+1), A000203(n+1)]+1`
-/

namespace A388012.P15688760804591210700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A388012.P15688760804591210700

noncomputable section

/-- A388012: Numbers k such that sigma(k)/k >= 5/3.

Offset 1, canonical program `A388012.P15688760804591210700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4196 terms. -/
def A388012 (n : ℕ) : ℤ :=
  (A388012.P15688760804591210700.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4196 terms. -/
def A388012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389888.P10709983666780608653

`record[A007913(n+1)*A007913(n+5)]`
-/

namespace A389888.P10709983666780608653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A007913 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389888.P10709983666780608653

noncomputable section

/-- A389888: Discriminants of real quadratic fields in which every additively indecomposable element is a unit.

Offset 1, canonical program `A389888.P10709983666780608653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389888 (n : ℕ) : ℤ :=
  A389888.P10709983666780608653.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389907.P14971960217326767381

`A279521(2*(n+1))-and(n+1, A004754(n+1))`
-/

namespace A389907.P14971960217326767381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279521 (2 * (n + 1)) - Int.land (n + 1 : ℤ) (A004754 (n + 1))

end

end A389907.P14971960217326767381

noncomputable section

/-- A389907: a(n) = min(n, A054429(n)), where A054429 list each block of 2^n numbers (from 2^n to 2^(n+1) - 1) in reverse order.

Offset 1, canonical program `A389907.P14971960217326767381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A389907 (n : ℕ) : ℤ :=
  A389907.P14971960217326767381.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A389907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389978.P11057801239353336725

`(A367866(n+1)+A389977(n+1)+A367865(n+1)+A389775(n+1))/4`
-/

namespace A389978.P11057801239353336725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367866 (n + 1) + A389977 (n + 1) + A367865 (n + 1) + A389775 (n + 1) : ℚ) / 4

end

end A389978.P11057801239353336725

noncomputable section

/-- A389978: Arithmetic mean of A367866(n), A389977(n), A367865(n), and A389775(n).

Offset 1, canonical program `A389978.P11057801239353336725`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367865, A389775, A389977, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389978 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389978.P11057801239353336725.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367865, A389775, A389977, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389978.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390115.P15101073239205051047

`A246574(n+1)+A002057(n)`
-/

namespace A390115.P15101073239205051047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246574 (n + 1) + A002057 n

end

end A390115.P15101073239205051047

noncomputable section

/-- A390115: a(n) is the total number of vertices of degree 2 in Catalan word grid graphs with n parts.

Offset 2, canonical program `A390115.P15101073239205051047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A390115 (n : ℕ) : ℤ :=
  A390115.P15101073239205051047.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A390115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390349.P13503297479383831927

`A192804(n)+A004695(n)`
-/

namespace A390349.P13503297479383831927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n + A004695 n

end

end A390349.P13503297479383831927

noncomputable section

/-- A390349: Upper (1/2)-midsequence of Fibonacci numbers (A000045) and tribonacci numbers (A000213); see Comments.

Offset 0, canonical program `A390349.P13503297479383831927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 381 terms. -/
def A390349 (n : ℕ) : ℤ :=
  A390349.P13503297479383831927.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 381 terms. -/
def A390349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390458.P808166892872410916

`A060018(A137228(n+2))`
-/

namespace A390458.P808166892872410916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060018 (A137228 (n + 2)).toNat

end

end A390458.P808166892872410916

noncomputable section

/-- A390458: Minimum site perimeter of a polyiamond with n cells.

Offset 1, canonical program `A390458.P808166892872410916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6599 terms. -/
def A390458 (n : ℕ) : ℤ :=
  A390458.P808166892872410916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6599 terms. -/
def A390458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390551.P17563142815161189481

`∑[A380230(n)]*A158388(n)`
-/

namespace A390551.P17563142815161189481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A158388 n

end

end A390551.P17563142815161189481

noncomputable section

/-- A390551: a(n) = Sum_{i = 0..n} i*A070939(i).

Offset 0, canonical program `A390551.P17563142815161189481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390551 (n : ℕ) : ℤ :=
  A390551.P17563142815161189481.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390555.P7215730010681652163

`A049419((n+1)²)`
-/

namespace A390555.P7215730010681652163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 ((n + 1) ^ 2)

end

end A390555.P7215730010681652163

noncomputable section

/-- A390555: The number of exponential divisors of n^2.

Offset 1, canonical program `A390555.P7215730010681652163`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390555 (n : ℕ) : ℤ :=
  A390555.P7215730010681652163.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390555.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390559.P4001292015129294840

`A131577(n)+A004695(n)`
-/

namespace A390559.P4001292015129294840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A004695 n

end

end A390559.P4001292015129294840

noncomputable section

/-- A390559: Lower (1/2)-midsequence of (2^n) and F(n), where F = A000045 (Fibonacci numbers); see Comments.

Offset 0, canonical program `A390559.P4001292015129294840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A390559 (n : ℕ) : ℤ :=
  A390559.P4001292015129294840.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A390559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390560.P2938574800519434169

`A173173(n)+A011782(n)`
-/

namespace A390560.P2938574800519434169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 n + A011782 n

end

end A390560.P2938574800519434169

noncomputable section

/-- A390560: Upper (1/2)-midsequence of (2^n) and F(n), where F = A000045 (Fibonacci numbers); see Comments.

Offset 0, canonical program `A390560.P2938574800519434169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A390560 (n : ℕ) : ℤ :=
  A390560.P2938574800519434169.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A390560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390689.P12018629016533748003

`∑{d}[n+1, #*A229062(#)]`
-/

namespace A390689.P12018629016533748003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A229062 d

end

end A390689.P12018629016533748003

noncomputable section

/-- A390689: The sum of the divisors of n that are sums of 2 squares (A001481).

Offset 1, canonical program `A390689.P12018629016533748003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390689 (n : ℕ) : ℤ :=
  A390689.P12018629016533748003.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390690.P17610099573045072712

`∑{d}[n+1, #*A353816(#)]`
-/

namespace A390690.P17610099573045072712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A353816 d

end

end A390690.P17610099573045072712

noncomputable section

/-- A390690: The sum of the divisors of n that are Loeschian numbers (A003136).

Offset 1, canonical program `A390690.P17610099573045072712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390690 (n : ℕ) : ℤ :=
  A390690.P17610099573045072712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390718.P13136824727992401142

`eq[1, A000120(A001414(n+1))]+1`
-/

namespace A390718.P13136824727992401142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A390718.P13136824727992401142

noncomputable section

/-- A390718: Numbers k whose sum of prime factors (with multiplicity) is a power of 2.

Offset 1, canonical program `A390718.P13136824727992401142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A390718 (n : ℕ) : ℤ :=
  (A390718.P13136824727992401142.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A390718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391645.P14068961791253673084

`A027561(n+1)/2`
-/

namespace A391645.P14068961791253673084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027561 (n + 1) : ℚ) / 2

end

end A391645.P14068961791253673084

noncomputable section

/-- A391645: Number of integer compositions of n that are not the first sums of any finite nonnegative sequence.

Offset 1, canonical program `A391645.P14068961791253673084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A391645 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391645.P14068961791253673084.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A391645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391752.P694586830429822444

`A052038(A000045(n+1))`
-/

namespace A391752.P694586830429822444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052038 (A000045 (n + 1)).toNat

end

end A391752.P694586830429822444

noncomputable section

/-- A391752: First nonzero digit in the decimal expansion of 1/Fibonacci(n).

Offset 1, canonical program `A391752.P694586830429822444`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391752 (n : ℕ) : ℤ :=
  A391752.P694586830429822444.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391752.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391992.P8143672549398333328

`∑{digits}[A000984(n), A055642(#)]`
-/

namespace A391992.P8143672549398333328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055642 x).sum

end

end A391992.P8143672549398333328

noncomputable section

/-- A391992: Number of digits in the decimal expansion of binomial(2*n,n).

Offset 0, canonical program `A391992.P8143672549398333328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A391992 (n : ℕ) : ℤ :=
  A391992.P8143672549398333328.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A391992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392359.P2113602717843569055

`(n+1)/A087267(n+1)`
-/

namespace A392359.P2113602717843569055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A087267 (n + 1) : ℚ)

end

end A392359.P2113602717843569055

noncomputable section

/-- A392359: Denominators of the reduced fractions of the ratios of the number of primes less than n over n.

Offset 1, canonical program `A392359.P2113602717843569055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392359 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392359.P2113602717843569055.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392451.P8918691439076179572

`∏{e}[n+1, A000120(#)+1]`
-/

namespace A392451.P8918691439076179572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A000120 (Nat.factorization (f1 n) p) + 1)

end

end A392451.P8918691439076179572

noncomputable section

/-- A392451: The number of infinitary divisors of n that are numbers whose prime factorization exponents are all powers of 2 (A138302).

Offset 1, canonical program `A392451.P8918691439076179572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392451 (n : ℕ) : ℤ :=
  A392451.P8918691439076179572.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393292.P14481508653223136911

`1-A362248(n+1)+n`
-/

namespace A393292.P14481508653223136911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A362248 (n + 1) + (n : ℤ)

end

end A393292.P14481508653223136911

noncomputable section

/-- A393292: Number computed by Wolfram's 2-state 2-symbol Turing machine 2205 when started with n on the tape.

Offset 1, canonical program `A393292.P14481508653223136911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393292 (n : ℕ) : ℤ :=
  A393292.P14481508653223136911.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393609.P11922313531072709366

`A000040(A035513(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393609.P11922313531072709366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A035513 (n + 1)).toNat

end

end A393609.P11922313531072709366

noncomputable section

/-- A393609: Square array A read by descending antidiagonals: A(n,k) = prime(A035513(n, k)).

Offset 1, canonical program `A393609.P11922313531072709366`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035513, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393609 (n : ℕ) : ℤ :=
  A393609.P11922313531072709366.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035513, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393609.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A393803.P3807868099825041291

`eq[A000120(n), A160384(n)]`
-/

namespace A393803.P3807868099825041291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393803.P3807868099825041291

noncomputable section

/-- A393803: Numbers whose number of nonzero digits is identical in base 2 and 3.

Offset 1, canonical program `A393803.P3807868099825041291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1842 terms. -/
def A393803 (n : ℕ) : ℤ :=
  (A393803.P3807868099825041291.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1842 terms. -/
def A393803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393995.P5611640221726888957

`2*A393945(n)-2^n`
-/

namespace A393995.P5611640221726888957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A393945 n - (2 ^ n : ℤ)

end

end A393995.P5611640221726888957

noncomputable section

/-- A393995: Difference between the numbers of binary words of length n with an even and with an odd number of occurrences of subword 101.

Offset 0, canonical program `A393995.P5611640221726888957`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A393945, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393995 (n : ℕ) : ℤ :=
  A393995.P5611640221726888957.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A393945, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393995.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394217.P17364854151603139210

`n+1-A060973(a(n-1))` with `a(0)=1`
-/

namespace A394217.P17364854151603139210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - A060973 (a (n - 1)).toNat

end

end A394217.P17364854151603139210

noncomputable section

/-- A394217: Earliest monotonic sequence satisfying a(1)=1 and a(a(n)+a(n-1))=n for n>=1 (with a(k)=0 for k<=0).

Offset 1, canonical program `A394217.P17364854151603139210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394217 (n : ℕ) : ℤ :=
  A394217.P17364854151603139210.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394266.P11615888605151437702

`Δ[n²]*A189176(n)`
-/

namespace A394266.P11615888605151437702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A189176 n

end

end A394266.P11615888605151437702

noncomputable section

/-- A394266: Number of induced cubes in the n-odd graph.

Offset 1, canonical program `A394266.P11615888605151437702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A394266 (n : ℕ) : ℤ :=
  A394266.P11615888605151437702.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A394266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394792.P15853201692661085382

`∑[A010054(A054844(n+1)²)]`
-/

namespace A394792.P15853201692661085382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A054844 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394792.P15853201692661085382

noncomputable section

/-- A394792: Number of positive integers <= n with exactly three odd divisors.

Offset 1, canonical program `A394792.P15853201692661085382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394792 (n : ℕ) : ℤ :=
  A394792.P15853201692661085382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394813.P16912607462095156399

`A004736(n+1)*A008957(n+1)`
-/

namespace A394813.P16912607462095156399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A008957 (n + 1)

end

end A394813.P16912607462095156399

noncomputable section

/-- A394813: Triangle read by rows: T(n, k) is the k-th even-indexed column of the array A394582.

Offset 1, canonical program `A394813.P16912607462095156399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1577 terms. -/
def A394813 (n : ℕ) : ℤ :=
  A394813.P16912607462095156399.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1577 terms. -/
def A394813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395520.P8890934817172298303

`A036349(n+2)-A036349(n+1)`
-/

namespace A395520.P8890934817172298303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036349 (n + 2) - A036349 (n + 1)

end

end A395520.P8890934817172298303

noncomputable section

/-- A395520: First differences of A036349.

Offset 1, canonical program `A395520.P8890934817172298303`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395520 (n : ℕ) : ℤ :=
  A395520.P8890934817172298303.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395520.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396046.P971276664437156168

`comp[A013937(n)]`
-/

namespace A396046.P971276664437156168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A396046.P971276664437156168

noncomputable section

/-- A396046: Numbers not of the form Sum_{k=1..m} floor(m/k^3).

Offset 1, canonical program `A396046.P971276664437156168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2002 terms. -/
def A396046 (n : ℕ) : ℤ :=
  (A396046.P971276664437156168.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2002 terms. -/
def A396046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396722.P14914588847797964893

`A081294(n)-A115140(n)`
-/

namespace A396722.P14914588847797964893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n - A115140 n

end

end A396722.P14914588847797964893

noncomputable section

/-- A396722: a(n) = (4^n/2) * p(n, 5/2), where p(n,x) is the Lagrange interpolating polynomial through (1,0) and (k,1) for k=2..n+1.

Offset 0, canonical program `A396722.P14914588847797964893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A396722 (n : ℕ) : ℤ :=
  A396722.P14914588847797964893.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A396722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396812.P7981673423103489573

`A186423(n)-A004526(n)`
-/

namespace A396812.P7981673423103489573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186423 n - A004526 n

end

end A396812.P7981673423103489573

noncomputable section

/-- A396812: Upper (1,1/2) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

Offset 0, canonical program `A396812.P7981673423103489573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396812 (n : ℕ) : ℤ :=
  A396812.P7981673423103489573.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396939.P3152846793651132362

`comp[A173024(n+1)]`
-/

namespace A396939.P3152846793651132362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A396939.P3152846793651132362

noncomputable section

/-- A396939: Numbers having isolated ones or isolated double ones in their binary representations.

Offset 1, canonical program `A396939.P3152846793651132362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396939 (n : ℕ) : ℤ :=
  (A396939.P3152846793651132362.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397112.P7348906844622945002

`A000040(A397111(n+1))`
-/

namespace A397112.P7348906844622945002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A397111 (n + 1)).toNat

end

end A397112.P7348906844622945002

noncomputable section

/-- A397112: Primes indexed by A397111.

Offset 1, canonical program `A397112.P7348906844622945002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A397112 (n : ℕ) : ℤ :=
  A397112.P7348906844622945002.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A397112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397412.P16519194348179518311

`A071773(n+1)*A112526(n+1)`
-/

namespace A397412.P16519194348179518311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (n + 1) * A112526 (n + 1)

end

end A397412.P16519194348179518311

noncomputable section

/-- A397412: Dirichlet g.f.: zeta(s) * Product_{p prime} (1 - 1/p^s + 1/p^(2*s-1)).

Offset 1, canonical program `A397412.P16519194348179518311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397412 (n : ℕ) : ℤ :=
  A397412.P16519194348179518311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397422.P5494168866610696871

`A046899(n)*A355007(n)`
-/

namespace A397422.P5494168866610696871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n * A355007 n

end

end A397422.P5494168866610696871

noncomputable section

/-- A397422: Triangle read by rows: T(n, k) = binomial(n+k, n) * |Stirling1(n, k)| * n^k.

Offset 0, canonical program `A397422.P5494168866610696871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1022 terms. -/
def A397422 (n : ℕ) : ℤ :=
  A397422.P5494168866610696871.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1022 terms. -/
def A397422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397469.P12444766347461370515

`A065091(A054406(n+1)-1)`
-/

namespace A397469.P12444766347461370515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A054406 (n + 1) - 1).toNat

end

end A397469.P12444766347461370515

noncomputable section

/-- A397469: a(n) = prime(floor(n*r)), where r = (3 + sqrt(3))/2.

Offset 1, canonical program `A397469.P12444766347461370515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4227 terms. -/
def A397469 (n : ℕ) : ℤ :=
  A397469.P12444766347461370515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4227 terms. -/
def A397469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397495.P2362568275880317952

`A074149(A102781(n+2))`
-/

namespace A397495.P2362568275880317952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074149 (A102781 (n + 2)).toNat

end

end A397495.P2362568275880317952

noncomputable section

/-- A397495: Number of quadruples (a,b,c,d) of nonzero quadratic residues modulo prime(n) such that a + b == c + d (mod prime(n)).

Offset 2, canonical program `A397495.P2362568275880317952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A397495 (n : ℕ) : ℤ :=
  A397495.P2362568275880317952.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A397495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397549.P9260473788895763969

`∑{d}[n+1, A061391(#)]`
-/

namespace A397549.P9260473788895763969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061391 d

end

end A397549.P9260473788895763969

noncomputable section

/-- A397549: Multiplicative with a(p^e) = (e+1)^2*(e+2)/2.

Offset 1, canonical program `A397549.P9260473788895763969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397549 (n : ℕ) : ℤ :=
  A397549.P9260473788895763969.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397991.P6089644370162683677

`A025581(n)+A010766(n+1)`
-/

namespace A397991.P6089644370162683677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A010766 (n + 1)

end

end A397991.P6089644370162683677

noncomputable section

/-- A397991: Array read by ascending antidiagonals: A(n,k) = floor(1+k*n/(k-1)) with k >= 2.

Offset 0, canonical program `A397991.P6089644370162683677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397991 (n : ℕ) : ℤ :=
  A397991.P6089644370162683677.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398389.P6222252586482190489

`A177712(n+1)+2`
-/

namespace A398389.P6222252586482190489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177712 (n + 1) + 2

end

end A398389.P6222252586482190489

noncomputable section

/-- A398389: Even positive numbers m such that m - 2^k is composite for all k > 0 with 2^k < m.

Offset 1, canonical program `A398389.P6222252586482190489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398389 (n : ℕ) : ℤ :=
  A398389.P6222252586482190489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363421.P12311062150934026796

`A363735(n)-A363734(n)`
-/

namespace A363421.P12311062150934026796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363735 n - A363734 n

end

end A363421.P12311062150934026796

noncomputable section

/-- A363421: a(n) = Sum_{k=0..n}(n^[not(k | n)] - n^[k | n]), where '[ ]' denotes the Iverson bracket.

Offset 0, canonical program `A363421.P12311062150934026796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363421 (n : ℕ) : ℤ :=
  A363421.P12311062150934026796.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363831.P3613452849276676331

`A000005(A000129(n+1))`
-/

namespace A363831.P3613452849276676331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000129 (n + 1)).toNat

end

end A363831.P3613452849276676331

noncomputable section

/-- A363831: Number of divisors of A000129(n) (Pell numbers).

Offset 1, canonical program `A363831.P3613452849276676331`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363831 (n : ℕ) : ℤ :=
  A363831.P3613452849276676331.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363831.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364360.P2176297382082199936

`∏{e}[n, A001221(n)^#]`
-/

namespace A364360.P2176297382082199936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001221 n ^ Nat.factorization (f1 n) p

end

end A364360.P2176297382082199936

noncomputable section

/-- A364360: a(n) = dpf(n) ^ tpf(n), where dpf(n) is the number of distinct prime factors of n if n >= 2 and otherwise = 0; tpf(n) is the number of all prime factors of n if n >= 2 and otherwise = 0.

Offset 0, canonical program `A364360.P2176297382082199936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A364360 (n : ℕ) : ℤ :=
  A364360.P2176297382082199936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A364360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366370.P2794676469599154442

`A285097(1+A000225(col(n)+1)^(row(n)-col(n)+1))`
-/

namespace A366370.P2794676469599154442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (SequenceMachineLib.roundAway (1 + (A000225 (SequenceMachineLib.triCol n + 1) : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℤ))).toNat

end

end A366370.P2794676469599154442

noncomputable section

/-- A366370: Square array A(n,k) giving the length of the least significant run of 0-bits in binary expansion of A000225(n)^k, or 0 if A000225(n)^k is a binary repunit.

Offset 1, canonical program `A366370.P2794676469599154442`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366370 (n : ℕ) : ℤ :=
  A366370.P2794676469599154442.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366370.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366441.P11350322075649191036

`A000005(A007310(n+1))`
-/

namespace A366441.P11350322075649191036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007310 (n + 1)).toNat

end

end A366441.P11350322075649191036

noncomputable section

/-- A366441: The number of divisors of the 5-rough numbers (A007310).

Offset 1, canonical program `A366441.P11350322075649191036`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366441 (n : ℕ) : ℤ :=
  A366441.P11350322075649191036.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366441.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366762.P2111167679417581175

`filter[A390437(n+1), A307421(#)]`
-/

namespace A366762.P2111167679417581175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307421 (f1 j).toNat = 1) n)

end

end A366762.P2111167679417581175

noncomputable section

/-- A366762: Numbers whose canonical prime factorization contains only exponents which are congruent to 1 modulo 3.

Offset 1, canonical program `A366762.P2111167679417581175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6447 terms. -/
def A366762 (n : ℕ) : ℤ :=
  A366762.P2111167679417581175.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6447 terms. -/
def A366762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366771.P6017539246711155575

`A000005(A001045(n+1))`
-/

namespace A366771.P6017539246711155575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001045 (n + 1)).toNat

end

end A366771.P6017539246711155575

noncomputable section

/-- A366771: Number of divisors of A001045(n) (Jacobsthal numbers).

Offset 1, canonical program `A366771.P6017539246711155575`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366771 (n : ℕ) : ℤ :=
  A366771.P6017539246711155575.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366771.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366780.P7203480516897226861

`A001221(A000073(n+2))`
-/

namespace A366780.P7203480516897226861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000073 (n + 2)).toNat

end

end A366780.P7203480516897226861

noncomputable section

/-- A366780: Number of distinct prime divisors of A000073(n) (tribonacci numbers).

Offset 2, canonical program `A366780.P7203480516897226861`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366780 (n : ℕ) : ℤ :=
  A366780.P7203480516897226861.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366780.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366782.P11732756249166605759

`A000005(A000073(n+2))`
-/

namespace A366782.P11732756249166605759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000073 (n + 2)).toNat

end

end A366782.P11732756249166605759

noncomputable section

/-- A366782: Number of divisors of A000073(n) (tribonacci numbers).

Offset 2, canonical program `A366782.P11732756249166605759`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366782 (n : ℕ) : ℤ :=
  A366782.P11732756249166605759.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366782.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366872.P9213635915992081364

`A000005(8+4*n)`
-/

namespace A366872.P9213635915992081364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 + 4 * n)

end

end A366872.P9213635915992081364

noncomputable section

/-- A366872: Number of closed chains of identical regular polygons with connecting inner vertices lying n vertices apart.

Offset 0, canonical program `A366872.P9213635915992081364`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366872 (n : ℕ) : ℤ :=
  A366872.P9213635915992081364.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366872.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366989.P4225912740677048204

`A366988(n+1)+A001221(n+1)`
-/

namespace A366989.P4225912740677048204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366988 (n + 1) + A001221 (n + 1)

end

end A366989.P4225912740677048204

noncomputable section

/-- A366989: The number of prime powers p^q dividing n, where p is prime and q is either 1 or prime (A334393 without the first term 1).

Offset 1, canonical program `A366989.P4225912740677048204`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A366988, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366989 (n : ℕ) : ℤ :=
  A366989.P4225912740677048204.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A366988, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366989.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367169.P1965445883755915090

`∑{e}[n+1, A048298(#)]`
-/

namespace A367169.P1965445883755915090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A048298 (Nat.factorization (f1 n) p)

end

end A367169.P1965445883755915090

noncomputable section

/-- A367169: a(n) is the sum of the exponents in the prime factorization of n that are powers of 2.

Offset 1, canonical program `A367169.P1965445883755915090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367169 (n : ℕ) : ℤ :=
  A367169.P1965445883755915090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367170.P5241459555923865557

`∏{e}[n+1, A048298(#)+1]`
-/

namespace A367170.P5241459555923865557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A048298 (Nat.factorization (f1 n) p) + 1)

end

end A367170.P5241459555923865557

noncomputable section

/-- A367170: The number of divisors of the largest unitary divisor of n that is a term of A138302.

Offset 1, canonical program `A367170.P5241459555923865557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367170 (n : ℕ) : ℤ :=
  A367170.P5241459555923865557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368715.P15769954003463865528

`lt[1, A381952(n+1)]+1`
-/

namespace A368715.P15769954003463865528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381952 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A368715.P15769954003463865528

noncomputable section

/-- A368715: Numbers that are not coprime to the maximal exponent in their prime factorization.

Offset 1, canonical program `A368715.P15769954003463865528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. -/
def A368715 (n : ℕ) : ℤ :=
  (A368715.P15769954003463865528.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. -/
def A368715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371281.P7086320584445002095

`A010879(A007954(n))`
-/

namespace A371281.P7086320584445002095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A007954 n).toNat

end

end A371281.P7086320584445002095

noncomputable section

/-- A371281: Last digit of the product of decimal digits of n.

Offset 0, canonical program `A371281.P7086320584445002095`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371281 (n : ℕ) : ℤ :=
  A371281.P7086320584445002095.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371281.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372713.P15261460817430982456

`A000005(3*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372713.P15261460817430982456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * (n + 1))

end

end A372713.P15261460817430982456

noncomputable section

/-- A372713: Number of divisors of 3n; a(n) = tau(3*n) = A000005(3*n).

Offset 1, canonical program `A372713.P15261460817430982456`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(3*(n+1))` (program `A372713.P15261460817430982456`, by `A372713.P15261460817430982456.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372713 (n : ℕ) : ℤ :=
  A372713.P15261460817430982456.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(3*(n+1))` (program `A372713.P15261460817430982456`, by `A372713.P15261460817430982456.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372713.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372714.P12117670402611410470

`A000005(3*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372714.P12117670402611410470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * (n + 1) - 1)

end

end A372714.P12117670402611410470

noncomputable section

/-- A372714: a(n) = tau(3*n-1) = A000005(3*n-1).

Offset 1, canonical program `A372714.P12117670402611410470`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(3*(n+1)-1)` (program `A372714.P12117670402611410470`, by `A372714.P12117670402611410470.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372714 (n : ℕ) : ℤ :=
  A372714.P12117670402611410470.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(3*(n+1)-1)` (program `A372714.P12117670402611410470`, by `A372714.P12117670402611410470.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372714.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372715.P12208428737339877040

`A000005(3*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372715.P12208428737339877040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * n + 1)

end

end A372715.P12208428737339877040

noncomputable section

/-- A372715: a(n) = tau(3*n-2) = A000005(3*n-2).

Offset 1, canonical program `A372715.P12208428737339877040`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(3*n+1)` (program `A372715.P12208428737339877040`, by `A372715.P12208428737339877040.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372715 (n : ℕ) : ℤ :=
  A372715.P12208428737339877040.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(3*n+1)` (program `A372715.P12208428737339877040`, by `A372715.P12208428737339877040.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372715.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372784.P17501289729252677399

`A000005(4*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372784.P17501289729252677399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * (n + 1))

end

end A372784.P17501289729252677399

noncomputable section

/-- A372784: a(n) = tau(4*n) = A000005(4*n).

Offset 1, canonical program `A372784.P17501289729252677399`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(4*(n+1))` (program `A372784.P17501289729252677399`, by `A372784.P17501289729252677399.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372784 (n : ℕ) : ℤ :=
  A372784.P17501289729252677399.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(4*(n+1))` (program `A372784.P17501289729252677399`, by `A372784.P17501289729252677399.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372784.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372785.P1137355158066766240

`A000005(5*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372785.P1137355158066766240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * (n + 1))

end

end A372785.P1137355158066766240

noncomputable section

/-- A372785: a(n) = tau(5*n) = A000005(5*n).

Offset 1, canonical program `A372785.P1137355158066766240`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(5*(n+1))` (program `A372785.P1137355158066766240`, by `A372785.P1137355158066766240.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372785 (n : ℕ) : ℤ :=
  A372785.P1137355158066766240.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(5*(n+1))` (program `A372785.P1137355158066766240`, by `A372785.P1137355158066766240.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372785.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372786.P3226320515726835874

`A000005(6*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372786.P3226320515726835874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (6 * (n + 1))

end

end A372786.P3226320515726835874

noncomputable section

/-- A372786: Number of divisors of 6n; a(n) = tau(6*n) = A000005(6*n).

Offset 1, canonical program `A372786.P3226320515726835874`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(6*(n+1))` (program `A372786.P3226320515726835874`, by `A372786.P3226320515726835874.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372786 (n : ℕ) : ℤ :=
  A372786.P3226320515726835874.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(6*(n+1))` (program `A372786.P3226320515726835874`, by `A372786.P3226320515726835874.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372786.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372787.P5367107089574616924

`A000005(7*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372787.P5367107089574616924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (7 * (n + 1))

end

end A372787.P5367107089574616924

noncomputable section

/-- A372787: a(n) = tau(7*n) = A000005(7*n).

Offset 1, canonical program `A372787.P5367107089574616924`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(7*(n+1))` (program `A372787.P5367107089574616924`, by `A372787.P5367107089574616924.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372787 (n : ℕ) : ℤ :=
  A372787.P5367107089574616924.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(7*(n+1))` (program `A372787.P5367107089574616924`, by `A372787.P5367107089574616924.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372787.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372788.P1588842482571205510

`A000005(8*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372788.P1588842482571205510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * (n + 1))

end

end A372788.P1588842482571205510

noncomputable section

/-- A372788: a(n) = tau(8*n) = A000005(8*n).

Offset 1, canonical program `A372788.P1588842482571205510`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(8*(n+1))` (program `A372788.P1588842482571205510`, by `A372788.P1588842482571205510.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372788 (n : ℕ) : ℤ :=
  A372788.P1588842482571205510.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(8*(n+1))` (program `A372788.P1588842482571205510`, by `A372788.P1588842482571205510.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372788.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372789.P9582021093738632599

`A000005(9*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372789.P9582021093738632599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (9 * (n + 1))

end

end A372789.P9582021093738632599

noncomputable section

/-- A372789: Number of divisors of 9n; a(n) = tau(9*n) = A000005(9*n).

Offset 1, canonical program `A372789.P9582021093738632599`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(9*(n+1))` (program `A372789.P9582021093738632599`, by `A372789.P9582021093738632599.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372789 (n : ℕ) : ℤ :=
  A372789.P9582021093738632599.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(9*(n+1))` (program `A372789.P9582021093738632599`, by `A372789.P9582021093738632599.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372789.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372790.P2447796418738080202

`A000005(10*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372790.P2447796418738080202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * (n + 1))

end

end A372790.P2447796418738080202

noncomputable section

/-- A372790: a(n) = tau(10*n) = A000005(10*n).

Offset 1, canonical program `A372790.P2447796418738080202`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(10*(n+1))` (program `A372790.P2447796418738080202`, by `A372790.P2447796418738080202.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372790 (n : ℕ) : ℤ :=
  A372790.P2447796418738080202.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(10*(n+1))` (program `A372790.P2447796418738080202`, by `A372790.P2447796418738080202.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372790.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372791.P11603537677751678447

`A000005(11*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372791.P11603537677751678447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (11 * (n + 1))

end

end A372791.P11603537677751678447

noncomputable section

/-- A372791: a(n) = tau(11*n) = A000005(11*n).

Offset 1, canonical program `A372791.P11603537677751678447`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(11*(n+1))` (program `A372791.P11603537677751678447`, by `A372791.P11603537677751678447.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372791 (n : ℕ) : ℤ :=
  A372791.P11603537677751678447.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(11*(n+1))` (program `A372791.P11603537677751678447`, by `A372791.P11603537677751678447.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372791.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372792.P6141643957369447150

`A000005(12*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372792.P6141643957369447150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (12 * (n + 1))

end

end A372792.P6141643957369447150

noncomputable section

/-- A372792: Number of divisors of 12n; a(n) = tau(12*n) = A000005(12*n).

Offset 1, canonical program `A372792.P6141643957369447150`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(12*(n+1))` (program `A372792.P6141643957369447150`, by `A372792.P6141643957369447150.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372792 (n : ℕ) : ℤ :=
  A372792.P6141643957369447150.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(12*(n+1))` (program `A372792.P6141643957369447150`, by `A372792.P6141643957369447150.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372792.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A373087.P7180067676949029928

`(eq[3, A001221(2*(n+1))]+1)²`
-/

namespace A373087.P7180067676949029928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A373087.P7180067676949029928

noncomputable section

/-- A373087: k is a term if k is a square and its odd part is divisible by exactly two distinct primes.

Offset 1, canonical program `A373087.P7180067676949029928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373087 (n : ℕ) : ℤ :=
  (A373087.P7180067676949029928.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373925.P819866508961225466

`A000005(n+1)-3-(-1)^(n+1)`
-/

namespace A373925.P819866508961225466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - 3 - (-1) ^ (n + 1)

end

end A373925.P819866508961225466

noncomputable section

/-- A373925: a(n) = Sum_{d|n} (-1)^phi(d).

Offset 1, canonical program `A373925.P819866508961225466`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373925 (n : ℕ) : ℤ :=
  A373925.P819866508961225466.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373925.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373993.P16686830910054354384

`C(n, lcm(n, A000005(n+1)))`
-/

namespace A373993.P16686830910054354384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Int.lcm (n : ℤ) (A000005 (n + 1)))

end

end A373993.P16686830910054354384

noncomputable section

/-- A373993: a(n) = 1 if the number of divisors of n divides n-1, otherwise 0.

Offset 1, canonical program `A373993.P16686830910054354384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373993 (n : ℕ) : ℤ :=
  (A373993.P16686830910054354384.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374484.P17262620912142997286

`∪[A022330(n), A022331(n)]`
-/

namespace A374484.P17262620912142997286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022330 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022331 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374484.P17262620912142997286

noncomputable section

/-- A374484: Index of A006899(n) in A003586.

Offset 1, canonical program `A374484.P17262620912142997286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374484 (n : ℕ) : ℤ :=
  (A374484.P17262620912142997286.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374969.P4381911814034986725

`(n+2)*A000005(n+1)-2*A000203(n+1)`
-/

namespace A374969.P4381911814034986725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000005 (n + 1) - 2 * A000203 (n + 1)

end

end A374969.P4381911814034986725

noncomputable section

/-- A374969: Number of ordered solutions (x,y,z,w) to x*y + y*z + z*w + w*x = n with x,y,z,w >= 1.

Offset 1, canonical program `A374969.P4381911814034986725`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374969 (n : ℕ) : ℤ :=
  A374969.P4381911814034986725.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374969.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375183.P6442371015820757928

`xor(n, A377414(floor(n/2)))`
-/

namespace A375183.P6442371015820757928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A377414 ⌊(n : ℚ) / 2⌋.toNat)

end

end A375183.P6442371015820757928

noncomputable section

/-- A375183: In the binary expansion of n, complement bits at even positions and to the right of a 1 (the most significant bit corresponding to position 1).

Offset 0, canonical program `A375183.P6442371015820757928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A375183 (n : ℕ) : ℤ :=
  A375183.P6442371015820757928.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A375183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375428.P1929730211812684430

`A000045(A130233(A051903(n+1)))`
-/

namespace A375428.P1929730211812684430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A130233 (A051903 (n + 1)).toNat).toNat

end

end A375428.P1929730211812684430

noncomputable section

/-- A375428: The maximum exponent in the unique factorization of n in terms of distinct terms of A115975 using the Zeckendorf representation of the exponents in the prime factorization of n; a(1) = 0.

Offset 1, canonical program `A375428.P1929730211812684430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375428 (n : ℕ) : ℤ :=
  A375428.P1929730211812684430.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375429.P12447372994373852055

`A130233(A051903(n+1))`
-/

namespace A375429.P12447372994373852055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (A051903 (n + 1)).toNat

end

end A375429.P12447372994373852055

noncomputable section

/-- A375429: The indices of the terms of A375428 in the Fibonacci sequence.

Offset 1, canonical program `A375429.P12447372994373852055`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A130233, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375429 (n : ℕ) : ℤ :=
  A375429.P12447372994373852055.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A130233, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375429.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376257.P1037975452622743819

`(n+1-A007954(n+1))*(-1)^A007954(n+1)`
-/

namespace A376257.P1037975452622743819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A007954 (n + 1) : ℚ) * (-1 : ℚ) ^ (A007954 (n + 1) : ℤ)

end

end A376257.P1037975452622743819

noncomputable section

/-- A376257: a(n) = (n - c(n))*(-1)^c(n), where c(n) is the product of the digits of n (A007954).

Offset 1, canonical program `A376257.P1037975452622743819`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376257 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A376257.P1037975452622743819.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376257.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377304.P8947951460209608358

`C(A000005(n+1)+2, 3)`
-/

namespace A377304.P8947951460209608358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (n + 1) + 2).toNat 3

end

end A377304.P8947951460209608358

noncomputable section

/-- A377304: a(n) is the number of distinct cuboids whose edges are divisors of n.

Offset 1, canonical program `A377304.P8947951460209608358`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377304 (n : ℕ) : ℤ :=
  (A377304.P8947951460209608358.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377304.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377883.P11929721113300965405

`A377946(n)-A038505(n)`
-/

namespace A377883.P11929721113300965405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377946 n - A038505 n

end

end A377883.P11929721113300965405

noncomputable section

/-- A377883: Cogrowth sequence of the 16-element modular group M4(2) = .

Offset 0, canonical program `A377883.P11929721113300965405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A377883 (n : ℕ) : ℤ :=
  A377883.P11929721113300965405.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A377883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377994.P2582031446348663756

`eq[A062157(n), A065357(n)]`
-/

namespace A377994.P2582031446348663756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377994.P2582031446348663756

noncomputable section

/-- A377994: Numbers k such that k + PrimePi(k) is odd.

Offset 1, canonical program `A377994.P2582031446348663756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A377994 (n : ℕ) : ℤ :=
  (A377994.P2582031446348663756.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A377994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378216.P4619166357507459087

`2-A000005(n+1)`
-/

namespace A378216.P4619166357507459087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000005 (n + 1)

end

end A378216.P4619166357507459087

noncomputable section

/-- A378216: Dirichlet inverse of A174725.

Offset 1, canonical program `A378216.P4619166357507459087`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378216 (n : ℕ) : ℤ :=
  A378216.P4619166357507459087.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378216.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378993.P12473165963195423861

`n+1-A001221(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378993.P12473165963195423861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001221 (n + 1)

end

end A378993.P12473165963195423861

noncomputable section

/-- A378993: a(n) = n - omega(n), where omega = A001221.

Offset 1, canonical program `A378993.P12473165963195423861`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378993 (n : ℕ) : ℤ :=
  A378993.P12473165963195423861.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378993.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380118.P5292018243931778813

`A072107(n+1)-A034387(n+1)`
-/

namespace A380118.P5292018243931778813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072107 (n + 1) - A034387 (n + 1)

end

end A380118.P5292018243931778813

noncomputable section

/-- A380118: a(n) = Sum_{k=1..n} (A014963(k) - A061397(k)).

Offset 1, canonical program `A380118.P5292018243931778813`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, A072107, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380118 (n : ℕ) : ℤ :=
  A380118.P5292018243931778813.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, A072107, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380118.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380447.P8742501224369410159

`(n+1)*A000005(n+1)-n*A001221(n+1)`
-/

namespace A380447.P8742501224369410159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (n + 1) - (n : ℤ) * A001221 (n + 1)

end

end A380447.P8742501224369410159

noncomputable section

/-- A380447: Number of primes dividing n plus n times the number of nonprimes dividing n.

Offset 1, canonical program `A380447.P8742501224369410159`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380447 (n : ℕ) : ℤ :=
  A380447.P8742501224369410159.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380447.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380457.P14810033455213116904

`A000203(n+1)+A001221(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A380457.P14810033455213116904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A001221 (n + 1)

end

end A380457.P14810033455213116904

noncomputable section

/-- A380457: Sum of divisors of n plus the number of distinct prime divisors of n: a(n) = sigma(n) + omega(n).

Offset 1, canonical program `A380457.P14810033455213116904`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380457 (n : ℕ) : ℤ :=
  A380457.P14810033455213116904.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380457.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381605.P16693958635226337192

`A001221((n+1)^3+1)`
-/

namespace A381605.P16693958635226337192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((n + 1) ^ 3 + 1)

end

end A381605.P16693958635226337192

noncomputable section

/-- A381605: Number of distinct prime divisors of n^3+1.

Offset 1, canonical program `A381605.P16693958635226337192`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381605 (n : ℕ) : ℤ :=
  A381605.P16693958635226337192.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381605.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384195.P12788916049746499615

`A000005(n+3)-A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384195.P12788916049746499615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 3) - A000005 (n + 1)

end

end A384195.P12788916049746499615

noncomputable section

/-- A384195: a(n) = tau(n+1) - tau(n-1), where tau(n) = A000005(n), the number of divisors of n.

Offset 2, canonical program `A384195.P12788916049746499615`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+3)-A000005(n+1)` (program `A384195.P12788916049746499615`, by `A384195.P12788916049746499615.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A384195 (n : ℕ) : ℤ :=
  A384195.P12788916049746499615.a (n - 2)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+3)-A000005(n+1)` (program `A384195.P12788916049746499615`, by `A384195.P12788916049746499615.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A384195.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A385893.P14429800463252187484

`A385938(a(n-1))` with `a(0)=26`
-/

namespace A385893.P14429800463252187484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [26] fun n a =>
  A385938 (a (n - 1)).toNat

end

end A385893.P14429800463252187484

noncomputable section

/-- A385893: Cycle of length 130 in the dynamical system A385938 starting from 26.

Offset 0, canonical program `A385893.P14429800463252187484`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385938, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385893 (n : ℕ) : ℤ :=
  A385893.P14429800463252187484.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385938, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385893.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386012.P11696724120379954040

`(n+1)^3*A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386012.P11696724120379954040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) * A000005 (n + 1)

end

end A386012.P11696724120379954040

noncomputable section

/-- A386012: a(n) = n^3*tau(n).

Offset 1, canonical program `A386012.P11696724120379954040`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^3*A000005(n+1)` (program `A386012.P11696724120379954040`, by `A386012.P11696724120379954040.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386012 (n : ℕ) : ℤ :=
  A386012.P11696724120379954040.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^3*A000005(n+1)` (program `A386012.P11696724120379954040`, by `A386012.P11696724120379954040.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386012.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A386013.P12576186223749678081

`(n+1)^4*A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386013.P12576186223749678081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) * A000005 (n + 1)

end

end A386013.P12576186223749678081

noncomputable section

/-- A386013: a(n) = n^4*tau(n).

Offset 1, canonical program `A386013.P12576186223749678081`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^4*A000005(n+1)` (program `A386013.P12576186223749678081`, by `A386013.P12576186223749678081.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386013 (n : ℕ) : ℤ :=
  A386013.P12576186223749678081.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^4*A000005(n+1)` (program `A386013.P12576186223749678081`, by `A386013.P12576186223749678081.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386013.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A386335.P18013375525764117

`∩[A038604(n+1), A038611(n+1)]`
-/

namespace A386335.P18013375525764117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386335.P18013375525764117

noncomputable section

/-- A386335: Primes without {2, 3} as digits.

Offset 1, canonical program `A386335.P18013375525764117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386335 (n : ℕ) : ℤ :=
  (A386335.P18013375525764117.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386571.P6980462762357179349

`comp[n-A001221(n+1)]+1`
-/

namespace A386571.P6980462762357179349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A386571.P6980462762357179349

noncomputable section

/-- A386571: Numbers that are not of the form k - omega(k), where omega(k) is the number of distinct primes dividing k.

Offset 1, canonical program `A386571.P6980462762357179349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386571 (n : ℕ) : ℤ :=
  (A386571.P6980462762357179349.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387633.P569874418725638644

`A000005(n+1)+n*A000005(A007947(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387633.P569874418725638644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ) * A000005 (A007947 (n + 1)).toNat

end

end A387633.P569874418725638644

noncomputable section

/-- A387633: a(n) = tau(n) + (n-1) * tau(rad(n)).

Offset 1, canonical program `A387633.P569874418725638644`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)+n*A000005(A007947(n+1))` (program `A387633.P569874418725638644`, by `A387633.P569874418725638644.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A387633 (n : ℕ) : ℤ :=
  A387633.P569874418725638644.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)+n*A000005(A007947(n+1))` (program `A387633.P569874418725638644`, by `A387633.P569874418725638644.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A387633.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A388270.P10233009455192801401

`A000005(n+1)*A009194(n+1)`
-/

namespace A388270.P10233009455192801401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A009194 (n + 1)

end

end A388270.P10233009455192801401

noncomputable section

/-- A388270: a(n) = d(n) * gcd(n, sigma(n)), where d is the number of divisors function (A000005), and sigma is the sum of divisors.

Offset 1, canonical program `A388270.P10233009455192801401`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388270 (n : ℕ) : ℤ :=
  A388270.P10233009455192801401.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388270.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389634.P7278143052267109822

`∪[A039725(n+1), A047228(n+1)]`
-/

namespace A389634.P7278143052267109822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389634.P7278143052267109822

noncomputable section

/-- A389634: Numbers k whose abundancy (sigma(k)/k) is at least 4/3, where sigma(k) = A000203(k).

Offset 1, canonical program `A389634.P7278143052267109822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389634 (n : ℕ) : ℤ :=
  (A389634.P7278143052267109822.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390561.P5357792885921023480

`A390562(n)-1`
-/

namespace A390561.P5357792885921023480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390562 n - 1

end

end A390561.P5357792885921023480

noncomputable section

/-- A390561: Lower (1/5,1/2) midsequence of (2^n) and (5*n); see Comments.

Offset 0, canonical program `A390561.P5357792885921023480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A390561 (n : ℕ) : ℤ :=
  A390561.P5357792885921023480.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A390561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391403.P4218804131166072041

`A011973(n)*A034868(n)`
-/

namespace A391403.P4218804131166072041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 n * A034868 n

end

end A391403.P4218804131166072041

noncomputable section

/-- A391403: Triangle read by rows: T(n,k) is k-th entry of the gamma-vector of the n-dimensional cyclohedron, 0 <= k <= floor(n/2).

Offset 0, canonical program `A391403.P4218804131166072041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391403 (n : ℕ) : ℤ :=
  A391403.P4218804131166072041.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391680.P13601625954848121569

`A011782(n+1)-A391683(n+1)`
-/

namespace A391680.P13601625954848121569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - A391683 (n + 1)

end

end A391680.P13601625954848121569

noncomputable section

/-- A391680: Number of integer compositions of n that are not the first sums of any composition.

Offset 1, canonical program `A391680.P13601625954848121569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391683, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391680 (n : ℕ) : ℤ :=
  A391680.P13601625954848121569.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391683, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391680.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391681.P12481092097052240636

`A212804(n+1)-A391683(n+1)`
-/

namespace A391681.P12481092097052240636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - A391683 (n + 1)

end

end A391681.P12481092097052240636

noncomputable section

/-- A391681: Number of integer compositions of n with all parts > 1 that are not the first sums of any composition.

Offset 1, canonical program `A391681.P12481092097052240636`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391683, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391681 (n : ℕ) : ℤ :=
  A391681.P12481092097052240636.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391683, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391681.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391840.P6091312888853669410

`A053836(A000040(n+1))`
-/

namespace A391840.P6091312888853669410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (A000040 (n + 1)).toNat

end

end A391840.P6091312888853669410

noncomputable section

/-- A391840: Base 16 sum of digits of prime(n).

Offset 1, canonical program `A391840.P6091312888853669410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053836, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391840 (n : ℕ) : ℤ :=
  A391840.P6091312888853669410.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053836, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391840.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392366.P7451516623562640753

`A056911(n+1)²`
-/

namespace A392366.P7451516623562640753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1) ^ 2

end

end A392366.P7451516623562640753

noncomputable section

/-- A392366: The odd squarefree numbers squared.

Offset 1, canonical program `A392366.P7451516623562640753`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056911, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392366 (n : ℕ) : ℤ :=
  A392366.P7451516623562640753.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056911, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392366.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392386.P13637188722429898050

`eq[A001221(n+2), A001221(A004277(n))]`
-/

namespace A392386.P13637188722429898050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392386.P13637188722429898050

noncomputable section

/-- A392386: Numbers k such that omega(2*k) = omega(k + 2), where omega = A001221.

Offset 1, canonical program `A392386.P13637188722429898050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2977 terms. -/
def A392386 (n : ℕ) : ℤ :=
  (A392386.P13637188722429898050.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2977 terms. -/
def A392386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393350.P4719086423447970445

`Δ[A000720(A005101(n+1))]`
-/

namespace A393350.P4719086423447970445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A005101 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A393350.P4719086423447970445

noncomputable section

/-- A393350: a(n) is the number of primes between A005101(n) and A005101(n + 1).

Offset 1, canonical program `A393350.P4719086423447970445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A393350 (n : ℕ) : ℤ :=
  A393350.P4719086423447970445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A393350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394391.P4992548440944162986

`A000005(n+1)²+(n+1-A000005(n+1))²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394391.P4992548440944162986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2 + ((n + 1 : ℤ) - A000005 (n + 1)) ^ 2

end

end A394391.P4992548440944162986

noncomputable section

/-- A394391: a(n) = tau(n)^2 + (n - tau(n))^2.

Offset 1, canonical program `A394391.P4992548440944162986`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)²+(n+1-A000005(n+1))²` (program `A394391.P4992548440944162986`, by `A394391.P4992548440944162986.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A394391 (n : ℕ) : ℤ :=
  A394391.P4992548440944162986.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)²+(n+1-A000005(n+1))²` (program `A394391.P4992548440944162986`, by `A394391.P4992548440944162986.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A394391.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A395088.P1994760081379151259

`2-A026465(n+2)`
-/

namespace A395088.P1994760081379151259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A026465 (n + 2)

end

end A395088.P1994760081379151259

noncomputable section

/-- A395088: Fixed point of the morphism 0->011, 1->0.

Offset 0, canonical program `A395088.P1994760081379151259`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026465, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395088 (n : ℕ) : ℤ :=
  A395088.P1994760081379151259.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026465, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395088.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395330.P17136906903227382088

`A000005((col(n)+1)*(row(n)-col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395330.P17136906903227382088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1)).toNat

end

end A395330.P17136906903227382088

noncomputable section

/-- A395330: Symmetric array read by antidiagonals: A(n,k) = tau(n*k), where tau = A000005.

Offset 1, canonical program `A395330.P17136906903227382088`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005((col(n)+1)*(row(n)-col(n)+1))` (program `A395330.P17136906903227382088`, by `A395330.P17136906903227382088.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A395330 (n : ℕ) : ℤ :=
  A395330.P17136906903227382088.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005((col(n)+1)*(row(n)-col(n)+1))` (program `A395330.P17136906903227382088`, by `A395330.P17136906903227382088.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A395330.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A395458.P9897769218609620014

`(n+1)*A000005(n+1)-n*A000005(A007947(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395458.P9897769218609620014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (n + 1) - (n : ℤ) * A000005 (A007947 (n + 1)).toNat

end

end A395458.P9897769218609620014

noncomputable section

/-- A395458: a(n) = n*tau(n) - (n-1)*tau(rad(n)).

Offset 1, canonical program `A395458.P9897769218609620014`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A000005(n+1)-n*A000005(A007947(n+1))` (program `A395458.P9897769218609620014`, by `A395458.P9897769218609620014.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A395458 (n : ℕ) : ℤ :=
  A395458.P9897769218609620014.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A000005(n+1)-n*A000005(A007947(n+1))` (program `A395458.P9897769218609620014`, by `A395458.P9897769218609620014.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A395458.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A395961.P9208801736051543594

`A053836(n)%2`
-/

namespace A395961.P9208801736051543594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053836 n) 2

end

end A395961.P9208801736051543594

noncomputable section

/-- A395961: Fourth iterate of the Thue-Morse transform applied to A000035.

Offset 0, canonical program `A395961.P9208801736051543594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395961 (n : ℕ) : ℤ :=
  A395961.P9208801736051543594.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395997.P3155127088775821677

`A016921(A070799(n+1))`
-/

namespace A395997.P3155127088775821677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A070799 (n + 1)).toNat

end

end A395997.P3155127088775821677

noncomputable section

/-- A395997: Numbers k > 3 such that the greedy Egyptian fraction representation of 3/k has more terms than the shortest representation of 3/k as a sum of unit fractions.

Offset 1, canonical program `A395997.P3155127088775821677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4595 terms. -/
def A395997 (n : ℕ) : ℤ :=
  A395997.P3155127088775821677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4595 terms. -/
def A395997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396279.P7454295923968668205

`eq[A000079(A013632(n)), A053644(n)]`
-/

namespace A396279.P7454295923968668205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A013632 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A396279.P7454295923968668205

noncomputable section

/-- A396279: Integers k such that p - k = floor(log_2(k)), where p is the smallest prime strictly greater than k.

Offset 1, canonical program `A396279.P7454295923968668205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A396279 (n : ℕ) : ℤ :=
  (A396279.P7454295923968668205.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A396279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396945.P1470108520854866059

`A000005(n^3+1)`
-/

namespace A396945.P1470108520854866059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n ^ 3 + 1)

end

end A396945.P1470108520854866059

noncomputable section

/-- A396945: Number of divisors of n^3 + 1.

Offset 0, canonical program `A396945.P1470108520854866059`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396945 (n : ℕ) : ℤ :=
  A396945.P1470108520854866059.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396945.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397672.P3807838670338666769

`A011371(n)-A083741(n)`
-/

namespace A397672.P3807838670338666769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n - A083741 n

end

end A397672.P3807838670338666769

noncomputable section

/-- A397672: Value of the Colless index for the rooted binary echelon tree with n leaves.

Offset 1, canonical program `A397672.P3807838670338666769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397672 (n : ℕ) : ℤ :=
  A397672.P3807838670338666769.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397890.P17401045601756210256

`∑[A061017(n+1)]-A061017(n+1)`
-/

namespace A397890.P17401045601756210256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A061017 (n + 1)

end

end A397890.P17401045601756210256

noncomputable section

/-- A397890: Minimum binary length of a standard-order composition with n distinct runs; bit length of A351015(n).

Offset 0, canonical program `A397890.P17401045601756210256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397890 (n : ℕ) : ℤ :=
  A397890.P17401045601756210256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362934.P7877997360191221463

`A000982(n+1)-A132188(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A362934.P7877997360191221463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) - A132188 (n + 1)

end

end A362934.P7877997360191221463

noncomputable section

/-- A362934: a(n) = A000982(n) - A132188(n).

Offset 1, canonical program `A362934.P7877997360191221463`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362934 (n : ℕ) : ℤ :=
  A362934.P7877997360191221463.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362934.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363171.P9199599291437216858

`eq[1, A294936(A064549(n+1))]+1`
-/

namespace A363171.P9199599291437216858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (A064549 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A363171.P9199599291437216858

noncomputable section

/-- A363171: Numbers k such that A064549(k) is an abundant number (A005101).

Offset 1, canonical program `A363171.P9199599291437216858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A363171 (n : ℕ) : ℤ :=
  (A363171.P9199599291437216858.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A363171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363901.P93164944309145225

`(2*A001817(n+1)+A078181(n+1))/3`
-/

namespace A363901.P93164944309145225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A001817 (n + 1) + A078181 (n + 1) : ℚ) / 3

end

end A363901.P93164944309145225

noncomputable section

/-- A363901: Expansion of Sum_{k>0} x^k / (1 - x^(3*k))^2.

Offset 1, canonical program `A363901.P93164944309145225`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001817, A078181, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363901 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363901.P93164944309145225.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001817, A078181, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363901.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364215.P4304225117039316976

`A000120(A003159(n+1))`
-/

namespace A364215.P4304225117039316976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003159 (n + 1)).toNat

end

end A364215.P4304225117039316976

noncomputable section

/-- A364215: The number of 1's in the canonical representation of n as a sum of distinct Jacobsthal numbers (A280049).

Offset 1, canonical program `A364215.P4304225117039316976`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364215 (n : ℕ) : ℤ :=
  A364215.P4304225117039316976.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364215.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365511.P831672977553323829

`A088218(n)^3*A110706(n)`
-/

namespace A365511.P831672977553323829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n ^ 3 * A110706 n

end

end A365511.P831672977553323829

noncomputable section

/-- A365511: Number of ways to travel from (0,0,0) to (2*n,2*n,2*n) with n positive integer steps in each direction, changing directions at each step.

Offset 0, canonical program `A365511.P831672977553323829`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365511 (n : ℕ) : ℤ :=
  A365511.P831672977553323829.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365511.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368611.P6772497377963491420

`∑[A062774(n+1)]`
-/

namespace A368611.P6772497377963491420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368611.P6772497377963491420

noncomputable section

/-- A368611: a(n) = Sum_{k=1..n} pi(k) * floor(n/k).

Offset 1, canonical program `A368611.P6772497377963491420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368611 (n : ℕ) : ℤ :=
  A368611.P6772497377963491420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369719.P18303552168383655355

`A000005(A356193(n+1))`
-/

namespace A369719.P18303552168383655355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A356193 (n + 1)).toNat

end

end A369719.P18303552168383655355

noncomputable section

/-- A369719: The number of divisors of the smallest cubefull number that is a multiple of n.

Offset 1, canonical program `A369719.P18303552168383655355`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356193, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369719 (n : ℕ) : ℤ :=
  A369719.P18303552168383655355.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356193, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369719.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370932.P710185078781470894

`A060583(n-3/2*A300222(n)+n)`
-/

namespace A370932.P710185078781470894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060583 (SequenceMachineLib.roundAway ((n : ℚ) - (3 : ℚ) / 2 * (A300222 n : ℚ) + (n : ℚ))).toNat

end

end A370932.P710185078781470894

noncomputable section

/-- A370932: For any number n >= 0 with ternary expansion Sum_{i >= 0} t_i * 3^i, a(n) = Sum_{i >= 0} ((Sum_{j >= 0} (-1)^j * t_{i+j}) mod 3) * 3^i.

Offset 0, canonical program `A370932.P710185078781470894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A370932 (n : ℕ) : ℤ :=
  A370932.P710185078781470894.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A370932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372429.P2891483980674476118

`A029931(A000040(n+1))`
-/

namespace A372429.P2891483980674476118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A000040 (n + 1)).toNat

end

end A372429.P2891483980674476118

noncomputable section

/-- A372429: Sum of binary indices of prime(n). Sum of positions of ones in the reversed binary expansion of prime(n).

Offset 1, canonical program `A372429.P2891483980674476118`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372429 (n : ℕ) : ℤ :=
  A372429.P2891483980674476118.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372429.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373198.P11417829531777717316

`A061398(n+1)+1`
-/

namespace A373198.P11417829531777717316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061398 (n + 1) + 1

end

end A373198.P11417829531777717316

noncomputable section

/-- A373198: Number of squarefree numbers from prime(n) to prime(n+1) - 1.

Offset 1, canonical program `A373198.P11417829531777717316`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061398, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373198 (n : ℕ) : ℤ :=
  A373198.P11417829531777717316.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061398, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373198.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373338.P13828395552644185944

`A078442(n+1)%2`
-/

namespace A373338.P13828395552644185944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078442 (n + 1)) 2

end

end A373338.P13828395552644185944

noncomputable section

/-- A373338: Characteristic function of A333242: a(n) = 1 if n is a term of A333242.

Offset 1, canonical program `A373338.P13828395552644185944`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078442, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373338 (n : ℕ) : ℤ :=
  A373338.P13828395552644185944.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078442, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373338.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374363.P4006744609650702107

`n-A374362(n)`
-/

namespace A374363.P4006744609650702107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A374362 n

end

end A374363.P4006744609650702107

noncomputable section

/-- A374363: a(n) is the greatest term t <= n of A005836 such that n - t also belongs to A005836.

Offset 0, canonical program `A374363.P4006744609650702107`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374362, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374363 (n : ℕ) : ℤ :=
  A374363.P4006744609650702107.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374362, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374363.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377404.P15784403255783113757

`n-A265263(n)`
-/

namespace A377404.P15784403255783113757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A265263 n

end

end A377404.P15784403255783113757

noncomputable section

/-- A377404: In the binary expansion of n, replace the first, third, fifth, etc. 1's by 0's.

Offset 0, canonical program `A377404.P15784403255783113757`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265263, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377404 (n : ℕ) : ℤ :=
  A377404.P15784403255783113757.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265263, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377404.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378086.P6542279341321239931

`A057627(A000040(n+1))`
-/

namespace A378086.P6542279341321239931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (A000040 (n + 1)).toNat

end

end A378086.P6542279341321239931

noncomputable section

/-- A378086: Number of nonsquarefree numbers < prime(n).

Offset 1, canonical program `A378086.P6542279341321239931`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057627, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378086 (n : ℕ) : ℤ :=
  A378086.P6542279341321239931.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057627, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378086.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380441.P1716721751457761727

`A023890(n+1)+A001221(n+1)`
-/

namespace A380441.P1716721751457761727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1) + A001221 (n + 1)

end

end A380441.P1716721751457761727

noncomputable section

/-- A380441: Sum of the nonprimes dividing n and the number of distinct primes dividing n.

Offset 1, canonical program `A380441.P1716721751457761727`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A023890, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380441 (n : ℕ) : ℤ :=
  A380441.P1716721751457761727.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A023890, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380441.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380444.P14151293279187532113

`A023890(n+1)+A005063(n+1)`
-/

namespace A380444.P14151293279187532113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1) + A005063 (n + 1)

end

end A380444.P14151293279187532113

noncomputable section

/-- A380444: Sum of the nonprimes dividing n and the squares of the primes dividing n.

Offset 1, canonical program `A380444.P14151293279187532113`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005063, A023890, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380444 (n : ℕ) : ℤ :=
  A380444.P14151293279187532113.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005063, A023890, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380444.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380572.P12751547405263348882

`∪[A005098(n+1), A190105(n+1)]`
-/

namespace A380572.P12751547405263348882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A380572.P12751547405263348882

noncomputable section

/-- A380572: Complement of A380509.

Offset 1, canonical program `A380572.P12751547405263348882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380572 (n : ℕ) : ℤ :=
  (A380572.P12751547405263348882.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385129.P2695379974345596254

`∑{d}[n+1, A381955(#)]`
-/

namespace A385129.P2695379974345596254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A381955 d

end

end A385129.P2695379974345596254

noncomputable section

/-- A385129: The number of divisors of n whose maximum exponent in their prime factorization is odd.

Offset 1, canonical program `A385129.P2695379974345596254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385129 (n : ℕ) : ℤ :=
  A385129.P2695379974345596254.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385542.P11057182743894820874

`A183097(n+1)-A112526(n+1)*(n+1)`
-/

namespace A385542.P11057182743894820874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183097 (n + 1) - A112526 (n + 1) * (n + 1 : ℤ)

end

end A385542.P11057182743894820874

noncomputable section

/-- A385542: The sum of the aliquot divisors of n that are powerful.

Offset 1, canonical program `A385542.P11057182743894820874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112526, A183097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385542 (n : ℕ) : ℤ :=
  A385542.P11057182743894820874.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112526, A183097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385542.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390323.P3785006267349611144

`A023896(n+1)-A034387(n+1)+A008472(n+1)-1`
-/

namespace A390323.P3785006267349611144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1) - A034387 (n + 1) + A008472 (n + 1) - 1

end

end A390323.P3785006267349611144

noncomputable section

/-- A390323: Sum of composite numbers coprime to n in the range 1 < k < n.

Offset 1, canonical program `A390323.P3785006267349611144`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A023896, A034387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390323 (n : ℕ) : ℤ :=
  A390323.P3785006267349611144.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A023896, A034387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390323.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392171.P17248236630189717362

`A001615(A356193(n+1))`
-/

namespace A392171.P17248236630189717362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A356193 (n + 1)).toNat

end

end A392171.P17248236630189717362

noncomputable section

/-- A392171: The Dedekind psi function value of the smallest cubefull number that is a multiple of n.

Offset 1, canonical program `A392171.P17248236630189717362`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356193, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392171 (n : ℕ) : ℤ :=
  A392171.P17248236630189717362.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356193, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392171.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392521.P11892844567520045021

`xor(n+1, A080542(n+1))`
-/

namespace A392521.P11892844567520045021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A080542 (n + 1))

end

end A392521.P11892844567520045021

noncomputable section

/-- A392521: Irregular table: apply Ducci map to each binary string of length n-1 in order and read as binary digits to get the terms of row n.

Offset 1, canonical program `A392521.P11892844567520045021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392521 (n : ℕ) : ℤ :=
  A392521.P11892844567520045021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363795.P880079998585685375

`A279061(n+1)-A373336(n+1)`
-/

namespace A363795.P880079998585685375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (n + 1) - A373336 (n + 1)

end

end A363795.P880079998585685375

noncomputable section

/-- A363795: Number of divisors of n of the form 7*k + 2.

Offset 1, canonical program `A363795.P880079998585685375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363795 (n : ℕ) : ℤ :=
  A363795.P880079998585685375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369529.P1505549937624039629

`gcd(A007953(n+1), A007954(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369529.P1505549937624039629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007953 (n + 1)) (A007954 (n + 1))

end

end A369529.P1505549937624039629

noncomputable section

/-- A369529: a(n) = gcd(A007953(n), A007954(n)).

Offset 1, canonical program `A369529.P1505549937624039629`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A007954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369529 (n : ℕ) : ℤ :=
  (A369529.P1505549937624039629.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A007954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369529.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374625.P6516257093902246467

`A020988(A070939(n))-A000695(n)`
-/

namespace A374625.P6516257093902246467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 (A070939 n).toNat - A000695 n

end

end A374625.P6516257093902246467

noncomputable section

/-- A374625: In the binary expansion of n, expand bits 1 -> 01 and 0 -> 10.

Offset 0, canonical program `A374625.P6516257093902246467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374625 (n : ℕ) : ℤ :=
  A374625.P6516257093902246467.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380725.P7158320234330131983

`eq[A055642(n)², A007953(n)]`
-/

namespace A380725.P7158320234330131983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380725.P7158320234330131983

noncomputable section

/-- A380725: Positive integers k whose sum of digits equals the square of their number of digits.

Offset 1, canonical program `A380725.P7158320234330131983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 614 terms. -/
def A380725 (n : ℕ) : ℤ :=
  (A380725.P7158320234330131983.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 614 terms. -/
def A380725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381964.P10364556719248759168

`a(A007953(n)%n)+n` with `a(0)=0`
-/

namespace A381964.P10364556719248759168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (Int.tmod (A007953 n) (n : ℤ)).toNat + n

end

end A381964.P10364556719248759168

noncomputable section

/-- A381964: Row sums of A381963.

Offset 0, canonical program `A381964.P10364556719248759168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381964 (n : ℕ) : ℤ :=
  (A381964.P10364556719248759168.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383762.P17957299951470629655

`∏{e}[n+1, A008966(#)+1]`
-/

namespace A383762.P17957299951470629655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A008966 (Nat.factorization (f1 n) p) + 1)

end

end A383762.P17957299951470629655

noncomputable section

/-- A383762: The number of unitary divisors of n that are exponentially squarefree numbers.

Offset 1, canonical program `A383762.P17957299951470629655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383762 (n : ℕ) : ℤ :=
  A383762.P17957299951470629655.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388539.P17116264068590608702

`A007953(A007598(n))`
-/

namespace A388539.P17116264068590608702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007598 n).toNat

end

end A388539.P17116264068590608702

noncomputable section

/-- A388539: Sum of decimal digits of Fibonacci(n)^2.

Offset 0, canonical program `A388539.P17116264068590608702`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388539 (n : ℕ) : ℤ :=
  A388539.P17116264068590608702.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388539.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389882.P1417654939235969709

`(10^A055642(n)-1)/9*A007953(n)`
-/

namespace A389882.P1417654939235969709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 : ℚ) ^ (A055642 n : ℤ) - 1) / 9 * (A007953 n : ℚ)

end

end A389882.P1417654939235969709

noncomputable section

/-- A389882: Row sums of A389420 and A389875.

Offset 0, canonical program `A389882.P1417654939235969709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389882 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389882.P1417654939235969709.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389882.provenance : SequenceMachineLib.Provenance := .conjectured

