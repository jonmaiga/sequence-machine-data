import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
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
import Seq.B001.C010

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

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

/-! ## A368582.P14688525840450436308

`floor(A088580(n+1)/2)`
-/

namespace A368582.P14688525840450436308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088580 (n + 1) : ℚ) / 2⌋

end

end A368582.P14688525840450436308

noncomputable section

/-- A368582: a(n) = floor((sigma(n) + 1) / 2).

Offset 1, canonical program `A368582.P14688525840450436308`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368582 (n : ℕ) : ℤ :=
  A368582.P14688525840450436308.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368582.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A375803.P1262696694182354091

`A059929(n)*A059929(2*(n+1)-1)`
-/

namespace A375803.P1262696694182354091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 n * A059929 (2 * (n + 1) - 1)

end

end A375803.P1262696694182354091

noncomputable section

/-- A375803: a(n) = Fibonacci(n-1) * Fibonacci(n+1) * Fibonacci(2*n-1) * Fibonacci(2*n+1).

Offset 1, canonical program `A375803.P1262696694182354091`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375803 (n : ℕ) : ℤ :=
  A375803.P1262696694182354091.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375803.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A396250.P13422227118771843311

`3^(n+1)*(3^2^A000120(n)+1)/(2*3^2^A000120(n))-2^n`
-/

namespace A396250.P13422227118771843311
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℝ) * ((3 : ℝ) ^ ((2 : ℚ) ^ (A000120 n : ℤ) : ℝ) + 1) / (2 * (3 : ℝ) ^ ((2 : ℚ) ^ (A000120 n : ℤ) : ℝ)) - (2 ^ n : ℝ)

end

end A396250.P13422227118771843311

noncomputable section

/-- A396250: a(n) is the number of ternary sequences of length n with characteristic value 0, as is defined in comments.

Offset 1, canonical program `A396250.P13422227118771843311`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396250 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396250.P13422227118771843311.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396250.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397579.P6571007466307689133

`A022095(n)*A056570(n+1)`
-/

namespace A397579.P6571007466307689133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n * A056570 (n + 1)

end

end A397579.P6571007466307689133

noncomputable section

/-- A397579: a(n) = (4*Fibonacci(n) + Fibonacci(n+1))*Fibonacci(n+1)^3.

Offset 0, canonical program `A397579.P6571007466307689133`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397579 (n : ℕ) : ℤ :=
  A397579.P6571007466307689133.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397579.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A363971.P14020667537958355418

`∑{d}[n+1, A175676(#+1)²]`
-/

namespace A363971.P14020667537958355418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A175676 (d + 1) ^ 2

end

end A363971.P14020667537958355418

noncomputable section

/-- A363971: Expansion of Sum_{k>0} k^2 * x^(3*k-1) / (1 - x^(3*k-1)).

Offset 1, canonical program `A363971.P14020667537958355418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A363971 (n : ℕ) : ℤ :=
  A363971.P14020667537958355418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A363971.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A364633.P1151451567877676210

`A033286(n+1)%(n+2)`
-/

namespace A364633.P1151451567877676210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033286 (n + 1)) (n + 2 : ℤ)

end

end A364633.P1151451567877676210

noncomputable section

/-- A364633: a(n) is the smallest nonnegative number k such that prime(n) + k is divisible by n + 1.

Offset 1, canonical program `A364633.P1151451567877676210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364633 (n : ℕ) : ℤ :=
  A364633.P1151451567877676210.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364633.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A364801.P17417832708572255058

`a(A022290(n))+1` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A364801.P17417832708572255058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0] fun n a =>
  a (A022290 n).toNat + 1

end

end A364801.P17417832708572255058

noncomputable section

/-- A364801: The number of iterations that n requires to reach a fixed point under the map x -> A022290(x).

Offset 0, canonical program `A364801.P17417832708572255058`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022290, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364801 (n : ℕ) : ℤ :=
  (A364801.P17417832708572255058.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022290, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364801.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365241.P12075093277035051425

`A065091(∑[C(2*n+1, ∏{d}[2*n+1, #])]+n)`
-/

namespace A365241.P12075093277035051425
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (∏ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A365241.P12075093277035051425

noncomputable section

/-- A365241: a(n) is the n-th prime of the form 2*n + k where k > 0.

Offset 1, canonical program `A365241.P12075093277035051425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8115 terms. -/
def A365241 (n : ℕ) : ℤ :=
  A365241.P12075093277035051425.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8115 terms. -/
def A365241.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A366125.P4631598459402495062

`∑{e}[n+1, A175676(#)]`
-/

namespace A366125.P4631598459402495062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A175676 (Nat.factorization (f1 n) p)

end

end A366125.P4631598459402495062

noncomputable section

/-- A366125: The number of prime factors of the cube root of the largest unitary divisor of n that is a cube (A366126), counted with multiplicity.

Offset 1, canonical program `A366125.P4631598459402495062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366125 (n : ℕ) : ℤ :=
  A366125.P4631598459402495062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366125.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A366761.P11411157237785428008

`lt[1, A080278(A005361(n+1))]+1`
-/

namespace A366761.P11411157237785428008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080278 (A005361 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A366761.P11411157237785428008

noncomputable section

/-- A366761: Numbers that have at least one exponent in their canonical prime factorization that is divisible by 3.

Offset 1, canonical program `A366761.P11411157237785428008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5242 terms. -/
def A366761 (n : ℕ) : ℤ :=
  (A366761.P11411157237785428008.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5242 terms. -/
def A366761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366836.P8103445931706541494

`A004648(a(n-1)+n+1)` with `a(0)=1`
-/

namespace A366836.P8103445931706541494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004648 (a (n - 1) + (n + 1 : ℤ)).toNat

end

end A366836.P8103445931706541494

noncomputable section

/-- A366836: a(1) = 1 and a(n) = prime(a(n-1)+n) mod (a(n-1)+n).

Offset 1, canonical program `A366836.P8103445931706541494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3646 terms. -/
def A366836 (n : ℕ) : ℤ :=
  A366836.P8103445931706541494.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3646 terms. -/
def A366836.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A366934.P1436353457771622687

`∑{d}[n+1, A001160(#)*A117109((n+1)/#)]`
-/

namespace A366934.P1436353457771622687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001160 d * A117109 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A366934.P1436353457771622687

noncomputable section

/-- A366934: Expansion of Sum_{k>=1} k^5 * x^k/(1 - x^k)^5.

Offset 1, canonical program `A366934.P1436353457771622687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366934 (n : ℕ) : ℤ :=
  A366934.P1436353457771622687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366934.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A368039.P7754328615677109513

`A005361(A013929(n+1))`
-/

namespace A368039.P7754328615677109513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A013929 (n + 1)).toNat

end

end A368039.P7754328615677109513

noncomputable section

/-- A368039: The product of exponents of prime factorization of the nonsquarefree numbers.

Offset 1, canonical program `A368039.P7754328615677109513`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A013929, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368039 (n : ℕ) : ℤ :=
  A368039.P7754328615677109513.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A013929, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368039.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368043.P12961776038135060938

`2*a(n-A144112(n))` with `a(0)=1`
-/

namespace A368043.P12961776038135060938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a ((n : ℤ) - A144112 n).toNat

end

end A368043.P12961776038135060938

noncomputable section

/-- A368043: Triangle read by rows: T(n, k) = 2^(n + k).

Offset 0, canonical program `A368043.P12961776038135060938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368043 (n : ℕ) : ℤ :=
  (A368043.P12961776038135060938.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368248.P13460108604890349551

`abs(A307428(n+1))`
-/

namespace A368248.P13460108604890349551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A307428 (n + 1)|

end

end A368248.P13460108604890349551

noncomputable section

/-- A368248: The number of unitary divisors of the cubefull part of n (A360540).

Offset 1, canonical program `A368248.P13460108604890349551`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307428, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368248 (n : ℕ) : ℤ :=
  A368248.P13460108604890349551.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307428, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368248.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A368541.P15025148590720608101

`A049419(A013929(n+1))`
-/

namespace A368541.P15025148590720608101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A013929 (n + 1)).toNat

end

end A368541.P15025148590720608101

noncomputable section

/-- A368541: The number of exponential divisors of the nonsquarefree numbers.

Offset 1, canonical program `A368541.P15025148590720608101`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A049419, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368541 (n : ℕ) : ℤ :=
  A368541.P15025148590720608101.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A049419, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368541.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A368713.P8093218634620274143

`A051903(A013929(n+1))`
-/

namespace A368713.P8093218634620274143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A013929 (n + 1)).toNat

end

end A368713.P8093218634620274143

noncomputable section

/-- A368713: The maximal exponent in the prime factorization of the nonsquarefree numbers.

Offset 1, canonical program `A368713.P8093218634620274143`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368713 (n : ℕ) : ℤ :=
  A368713.P8093218634620274143.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368713.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368743.P10210257910363366697

`∑{d}[n+1, A001158(#)*A321322((n+1)/#)]`
-/

namespace A368743.P10210257910363366697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001158 d * A321322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368743.P10210257910363366697

noncomputable section

/-- A368743: a(n) = Sum_{1 <= i, j <= n} gcd(i, j, n)^3.

Offset 1, canonical program `A368743.P10210257910363366697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368743 (n : ℕ) : ℤ :=
  A368743.P10210257910363366697.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368743.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A370157.P647091250553800908

`∩[A153170(n+1), A169647(n+1)]`
-/

namespace A370157.P647091250553800908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169647 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370157.P647091250553800908

noncomputable section

/-- A370157: Primes p such that both 3p+2 and (p-2)/3 are composite or 0.

Offset 1, canonical program `A370157.P647091250553800908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 709 terms. -/
def A370157 (n : ℕ) : ℤ :=
  (A370157.P647091250553800908.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 709 terms. -/
def A370157.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A371878.P10205433702608322159

`∑{d}[n+1, #*A059378(#)]`
-/

namespace A371878.P10205433702608322159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A059378 d

end

end A371878.P10205433702608322159

noncomputable section

/-- A371878: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4, x_5 <= n} n/gcd(x_1, x_2, x_3, x_4, x_5, n).

Offset 1, canonical program `A371878.P10205433702608322159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371878 (n : ℕ) : ℤ :=
  A371878.P10205433702608322159.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371878.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A372504.P18324101778545976838

`A355823(n+1)*A005361(n+1)`
-/

namespace A372504.P18324101778545976838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355823 (n + 1) * A005361 (n + 1)

end

end A372504.P18324101778545976838

noncomputable section

/-- A372504: Multiplicative with a(p^e) = e if e is a power of 2, and 0 otherwise.

Offset 1, canonical program `A372504.P18324101778545976838`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A355823, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372504 (n : ℕ) : ℤ :=
  A372504.P18324101778545976838.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A355823, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372504.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A372926.P16726162444183078941

`∑{d}[n+1, A001159(#)*A321322((n+1)/#)]`
-/

namespace A372926.P16726162444183078941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001159 d * A321322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372926.P16726162444183078941

noncomputable section

/-- A372926: a(n) = Sum_{1 <= x_1, x_2 <= n} gcd(x_1, x_2, n)^4.

Offset 1, canonical program `A372926.P16726162444183078941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372926 (n : ℕ) : ℤ :=
  A372926.P16726162444183078941.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372927.P10339266634366157161

`∑{d}[n+1, A001160(#)*A321322((n+1)/#)]`
-/

namespace A372927.P10339266634366157161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001160 d * A321322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372927.P10339266634366157161

noncomputable section

/-- A372927: a(n) = Sum_{1 <= x_1, x_2 <= n} gcd(x_1, x_2, n)^5.

Offset 1, canonical program `A372927.P10339266634366157161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372927 (n : ℕ) : ℤ :=
  A372927.P10339266634366157161.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372952.P4451000173128610054

`∑{d}[n+1, #*A059376(#)]`
-/

namespace A372952.P4451000173128610054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A059376 d

end

end A372952.P4451000173128610054

noncomputable section

/-- A372952: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} n/gcd(x_1, x_2, x_3, n).

Offset 1, canonical program `A372952.P4451000173128610054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372952 (n : ℕ) : ℤ :=
  A372952.P4451000173128610054.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372961.P11821419121523241170

`∑{d}[n+1, #*A059377(#)]`
-/

namespace A372961.P11821419121523241170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A059377 d

end

end A372961.P11821419121523241170

noncomputable section

/-- A372961: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4 <= n} n/gcd(x_1, x_2, x_3, x_4, n).

Offset 1, canonical program `A372961.P11821419121523241170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372961 (n : ℕ) : ℤ :=
  A372961.P11821419121523241170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372966.P8129046423810305656

`∑{d}[n+1, A013956(#)*A334660((n+1)/#)]`
-/

namespace A372966.P8129046423810305656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013956 d * A334660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372966.P8129046423810305656

noncomputable section

/-- A372966: a(n) = sigma_8(n^2)/sigma_4(n^2).

Offset 1, canonical program `A372966.P8129046423810305656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372966 (n : ℕ) : ℤ :=
  A372966.P8129046423810305656.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372966.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A373016.P2031291891959253969`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080883, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373016 (n : ℕ) : ℤ :=
  A373016.P2031291891959253969.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080883, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373016.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373103.P1036733656248794888

`∑{d}[n+1, A013957(#)*A334660((n+1)/#)]`
-/

namespace A373103.P1036733656248794888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013957 d * A334660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373103.P1036733656248794888

noncomputable section

/-- A373103: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4, x_5 <= n} ( n/gcd(x_1, x_2, x_3, x_4, x_5, n) )^4.

Offset 1, canonical program `A373103.P1036733656248794888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373103 (n : ℕ) : ℤ :=
  A373103.P1036733656248794888.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373103.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A373926.P5942574253038570146

`A157658(n+1)-A086831(n+1)`
-/

namespace A373926.P5942574253038570146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (n + 1) - A086831 (n + 1)

end

end A373926.P5942574253038570146

noncomputable section

/-- A373926: a(n) = Sum_{d|n} (-1)^phi(d) * mu(n/d).

Offset 1, canonical program `A373926.P5942574253038570146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373926 (n : ℕ) : ℤ :=
  A373926.P5942574253038570146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373926.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A374127.P1125013145374094504

`A000203(n+1)-A075254(n+1)`
-/

namespace A374127.P1125013145374094504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A075254 (n + 1)

end

end A374127.P1125013145374094504

noncomputable section

/-- A374127: a(n) = (sigma(n) - sopfr(n)) - n, where sigma is the sum of divisors, and sopfr is the sum of prime factors (with repetition).

Offset 1, canonical program `A374127.P1125013145374094504`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374127 (n : ℕ) : ℤ :=
  A374127.P1125013145374094504.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374127.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 0, canonical program `A374150.P2027937700261000642`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374150 (n : ℕ) : ℤ :=
  A374150.P2027937700261000642.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374150.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A374367.P13622303938266122145

`A056594(n)*A085384(n+1)`
-/

namespace A374367.P13622303938266122145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A085384 (n + 1)

end

end A374367.P13622303938266122145

noncomputable section

/-- A374367: a(n) = Im(A008683(n)*(i^n)).

Offset 1, canonical program `A374367.P13622303938266122145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374367 (n : ℕ) : ℤ :=
  A374367.P13622303938266122145.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374367.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A374812.P12842280590014895668

`A013929(10^n)`
-/

namespace A374812.P12842280590014895668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (10 ^ n)

end

end A374812.P12842280590014895668

noncomputable section

/-- A374812: 10^n-th nonsquarefree number.

Offset 0, canonical program `A374812.P12842280590014895668`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374812 (n : ℕ) : ℤ :=
  A374812.P12842280590014895668.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374812.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375246.P12700141058600722749

`A375245(10^n)`
-/

namespace A375246.P12700141058600722749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375245 (10 ^ n)

end

end A375246.P12700141058600722749

noncomputable section

/-- A375246: Number of biquadratefree numbers <= 10^n.

Offset 0, canonical program `A375246.P12700141058600722749`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375245, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375246 (n : ℕ) : ℤ :=
  A375246.P12700141058600722749.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375245, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375246.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A375501.P6564674146108838587

`∑[A128587(n+3)²*A033999(n)]`
-/

namespace A375501.P6564674146108838587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128587 (n + 3) ^ 2 * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375501.P6564674146108838587

noncomputable section

/-- A375501: a(n) = Sum_{k=0..n} (-1)^k*A001595(k)^2.

Offset 0, canonical program `A375501.P6564674146108838587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A375501 (n : ℕ) : ℤ :=
  A375501.P6564674146108838587.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A375501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375927.P3509821031608274898

`comp[A013929(n+1)-(n+2)]+1`
-/

namespace A375927.P3509821031608274898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) - (n + 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A375927.P3509821031608274898

noncomputable section

/-- A375927: Numbers k such that A005117(k+1) - A005117(k) = 1. In other words, the k-th squarefree number is 1 less than the next.

Offset 1, canonical program `A375927.P3509821031608274898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375927 (n : ℕ) : ℤ :=
  (A375927.P3509821031608274898.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375927.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A376252.P16858412016413004925

`A061601(n)%(n+1)`
-/

namespace A376252.P16858412016413004925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061601 n) (n + 1 : ℤ)

end

end A376252.P16858412016413004925

noncomputable section

/-- A376252: Concatenated (n+1)||n modulo n.

Offset 1, canonical program `A376252.P16858412016413004925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376252 (n : ℕ) : ℤ :=
  A376252.P16858412016413004925.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376252.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A377304.P13372508252213603195

`A058187(A086369(n+1))`
-/

namespace A377304.P13372508252213603195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058187 (A086369 (n + 1)).toNat

end

end A377304.P13372508252213603195

noncomputable section

/-- A377304: a(n) is the number of distinct cuboids whose edges are divisors of n.

Offset 1, canonical program `A377304.P13372508252213603195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377304 (n : ℕ) : ℤ :=
  A377304.P13372508252213603195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377304.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A378225.P16861983548388386532

`A133695(n+1)+A057427(n)`
-/

namespace A378225.P16861983548388386532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133695 (n + 1) + A057427 n

end

end A378225.P16861983548388386532

noncomputable section

/-- A378225: Dirichlet inverse of A067824.

Offset 1, canonical program `A378225.P16861983548388386532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378225 (n : ℕ) : ℤ :=
  A378225.P16861983548388386532.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378493.P10753090170849270192

`∑[A196421(n+1)]`
-/

namespace A378493.P10753090170849270192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378493.P10753090170849270192

noncomputable section

/-- A378493: Dot product of the first n primes and the first n triangular numbers.

Offset 1, canonical program `A378493.P10753090170849270192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378493 (n : ℕ) : ℤ :=
  A378493.P10753090170849270192.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378745.P4000645261650579531

`A000040(n+1)^A378744(n+1)`
-/

namespace A378745.P4000645261650579531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A378744 (n + 1) : ℤ)

end

end A378745.P4000645261650579531

noncomputable section

/-- A378745: a(n) = prime(n)^A378744(n).

Offset 1, canonical program `A378745.P4000645261650579531`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A378744, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378745 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378745.P4000645261650579531.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A378744, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378745.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A379275.P15094835216364799440

`A363057(n+2)-1`
-/

namespace A379275.P15094835216364799440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363057 (n + 2) - 1

end

end A379275.P15094835216364799440

noncomputable section

/-- A379275: a(n) = A163801(n) mod 2.

Offset 0, canonical program `A379275.P15094835216364799440`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363057, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379275 (n : ℕ) : ℤ :=
  A379275.P15094835216364799440.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363057, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379275.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A379970.P2983459517443085042

`and(1, n*A341635(n+1))`
-/

namespace A379970.P2983459517443085042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A341635 (n + 1))

end

end A379970.P2983459517443085042

noncomputable section

/-- A379970: a(n) = 1 if n is twice its squarefree kernel (A007949), otherwise 0.

Offset 1, canonical program `A379970.P2983459517443085042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379970 (n : ℕ) : ℤ :=
  A379970.P2983459517443085042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379970.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A380322.P10413619903168285691

`A033634((n+1)²)`
-/

namespace A380322.P10413619903168285691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 ((n + 1) ^ 2)

end

end A380322.P10413619903168285691

noncomputable section

/-- A380322: a(n) is the sum of exponentially odd divisors of n^2.

Offset 1, canonical program `A380322.P10413619903168285691`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033634, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380322 (n : ℕ) : ℤ :=
  A380322.P10413619903168285691.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033634, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380322.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380395.P16192869774453608510

`abs(A307427(n+1))`
-/

namespace A380395.P16192869774453608510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A307427 (n + 1)|

end

end A380395.P16192869774453608510

noncomputable section

/-- A380395: The number of unitary divisors of n that are cubes.

Offset 1, canonical program `A380395.P16192869774453608510`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307427, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380395 (n : ℕ) : ℤ :=
  A380395.P16192869774453608510.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307427, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380395.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A380823.P10578015409537836465

`A386201(n)+A001612(n)`
-/

namespace A380823.P10578015409537836465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386201 n + A001612 n

end

end A380823.P10578015409537836465

noncomputable section

/-- A380823: Semiperimeter of the unique primitive Pythagorean triple whose inradius is A000032(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A380823.P10578015409537836465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A380823 (n : ℕ) : ℤ :=
  A380823.P10578015409537836465.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A380823.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A381713.P7553467801404850531

`A069094(n+1)/A059376(n+1)`
-/

namespace A381713.P7553467801404850531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069094 (n + 1) : ℚ) / (A059376 (n + 1) : ℚ)

end

end A381713.P7553467801404850531

noncomputable section

/-- A381713: a(n) = J_9(n)/J_3(n), where J_k is the k-th Jordan totient function.

Offset 1, canonical program `A381713.P7553467801404850531`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059376, A069094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A381713 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381713.P7553467801404850531.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059376, A069094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A381713.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381936.P11903548099924584653

`∑{d}[n+1, A007427(#)*A108046((n+1)/#)]`
-/

namespace A381936.P11903548099924584653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A108046 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A381936.P11903548099924584653

noncomputable section

/-- A381936: Number of primitive binary words of length n that avoid 11, start with 1 and end with 0.

Offset 1, canonical program `A381936.P11903548099924584653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A381936 (n : ℕ) : ℤ :=
  A381936.P11903548099924584653.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A381936.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A382609.P2195616595347439028

`A229912(n)+A001588(n)`
-/

namespace A382609.P2195616595347439028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229912 n + A001588 n

end

end A382609.P2195616595347439028

noncomputable section

/-- A382609: Semiperimeter of the unique primitive Pythagorean triple whose inradius is A000045(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382609.P2195616595347439028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A382609 (n : ℕ) : ℤ :=
  A382609.P2195616595347439028.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A382609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382610.P10627127839713340362

`A001588(n)*A059727(n)`
-/

namespace A382610.P10627127839713340362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 n * A059727 n

end

end A382610.P10627127839713340362

noncomputable section

/-- A382610: Area of the unique primitive Pythagorean triple whose inradius is A000045(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382610.P10627127839713340362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A382610 (n : ℕ) : ℤ :=
  A382610.P10627127839713340362.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A382610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382843.P6886194694048573182

`4*A191797(n)`
-/

namespace A382843.P6886194694048573182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A191797 n

end

end A382843.P6886194694048573182

noncomputable section

/-- A382843: Length of the long leg in the unique primitive Pythagorean triple (x,y,z) such that (x-y+z)/2 = A000045(n) and its long leg and hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382843.P6886194694048573182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A382843 (n : ℕ) : ℤ :=
  A382843.P6886194694048573182.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A382843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382845.P12683852924989043468

`A175395(n)-1`
-/

namespace A382845.P12683852924989043468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 n - 1

end

end A382845.P12683852924989043468

noncomputable section

/-- A382845: Sum of the legs of the unique primitive Pythagorean triple (a,b,c) such that (a-b+c)/2 = A000045(n) and its long leg and hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382845.P12683852924989043468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A382845 (n : ℕ) : ℤ :=
  A382845.P12683852924989043468.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A382845.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A383225.P4518331086787716766

`A114620(n)+A090390(n+1)`
-/

namespace A383225.P4518331086787716766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114620 n + A090390 (n + 1)

end

end A383225.P4518331086787716766

noncomputable section

/-- A383225: a(n) = sqrt(1 + P(n)*P(n+1)*P(n+2)*P(n+3)) where P(n) = A000129(n) are the Pell numbers.

Offset 0, canonical program `A383225.P4518331086787716766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A383225 (n : ℕ) : ℤ :=
  A383225.P4518331086787716766.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A383225.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A387939.P1854000045561914536

`A049611(n+2)-A079282(n+1)`
-/

namespace A387939.P1854000045561914536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 (n + 2) - A079282 (n + 1)

end

end A387939.P1854000045561914536

noncomputable section

/-- A387939: a(n) = 2^n*(n^2/4+n/4+4) - Fibonacci(n+4).

Offset 0, canonical program `A387939.P1854000045561914536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A387939 (n : ℕ) : ℤ :=
  A387939.P1854000045561914536.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A387939.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A389461.P15261002970931308837

`A001065(n+1)-A075423(n+1)`
-/

namespace A389461.P15261002970931308837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A075423 (n + 1)

end

end A389461.P15261002970931308837

noncomputable section

/-- A389461: a(n) = sigma(n) - A075423(n) - n.

Offset 1, canonical program `A389461.P15261002970931308837`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075423, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389461 (n : ℕ) : ℤ :=
  A389461.P15261002970931308837.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075423, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389461.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389462.P16419255327458964044

`∪[A013929(n+1), A023196(n+1)]`
-/

namespace A389462.P16419255327458964044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389462.P16419255327458964044

noncomputable section

/-- A389462: Numbers whose sum of proper divisors (A001065) is equal to or greater than their squarefree kernel (A007947).

Offset 1, canonical program `A389462.P16419255327458964044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389462 (n : ℕ) : ℤ :=
  (A389462.P16419255327458964044.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389462.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A390440.P2827321994001143984

`filter[A390437(n+1), A295316(#)]`
-/

namespace A390440.P2827321994001143984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A390440.P2827321994001143984

noncomputable section

/-- A390440: Exponentially 5-rough numbers: numbers whose prime factorization exponents are all coprime to 6.

Offset 1, canonical program `A390440.P2827321994001143984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6998 terms. -/
def A390440 (n : ℕ) : ℤ :=
  A390440.P2827321994001143984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6998 terms. -/
def A390440.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A390490.P12259971174261316425

`A307428(n+1)*A368885(n+1)`
-/

namespace A390490.P12259971174261316425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (n + 1) * A368885 (n + 1)

end

end A390490.P12259971174261316425

noncomputable section

/-- A390490: Dirichlet g.f.: (zeta(2*s))^2 / (zeta(s) * zeta(4*s)).

Offset 1, canonical program `A390490.P12259971174261316425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390490 (n : ℕ) : ℤ :=
  A390490.P12259971174261316425.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390490.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A390577.P17731929608806426848

`A006094(n+1)%(n+1)`
-/

namespace A390577.P17731929608806426848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006094 (n + 1)) (n + 1 : ℤ)

end

end A390577.P17731929608806426848

noncomputable section

/-- A390577: Remainder when (prime(n) * prime(n+1)) is divided by n.

Offset 1, canonical program `A390577.P17731929608806426848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390577 (n : ℕ) : ℤ :=
  A390577.P17731929608806426848.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390577.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391096.P15625190028387691659

`A130174(n+3)-3`
-/

namespace A391096.P15625190028387691659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130174 (n + 3) - 3

end

end A391096.P15625190028387691659

noncomputable section

/-- A391096: a(n) is largest number such that the sequence contains a total of a(n) base 10 digits + commas through n terms (assuming one comma between each pair of terms).

Offset 1, canonical program `A391096.P15625190028387691659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391096 (n : ℕ) : ℤ :=
  A391096.P15625190028387691659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391096.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A393202.P15291799632325750024

`A001248(n+3)-A006094(n+1)`
-/

namespace A393202.P15291799632325750024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 3) - A006094 (n + 1)

end

end A393202.P15291799632325750024

noncomputable section

/-- A393202: a(n) = prime(n + 2)^2 - prime(n + 1)*prime(n).

Offset 1, canonical program `A393202.P15291799632325750024`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A006094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A393202 (n : ℕ) : ℤ :=
  A393202.P15291799632325750024.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A006094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A393202.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 2, canonical program `A393203.P10331077631998674736`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A006094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A393203 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A393203.P10331077631998674736.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A006094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A393203.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A394056.P3416054200138163262

`∑[A354927(n+1)]-1`
-/

namespace A394056.P3416054200138163262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A394056.P3416054200138163262

noncomputable section

/-- A394056: Number of positive integers <= n with 4 divisors.

Offset 1, canonical program `A394056.P3416054200138163262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394056 (n : ℕ) : ℤ :=
  A394056.P3416054200138163262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394056.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A396543.P10005515851274933396

`A005361(n+1)-A049419(n+1)`
-/

namespace A396543.P10005515851274933396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) - A049419 (n + 1)

end

end A396543.P10005515851274933396

noncomputable section

/-- A396543: The number of coreful divisors of n that are not exponential divisors of n.

Offset 1, canonical program `A396543.P10005515851274933396`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A049419, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A396543 (n : ℕ) : ℤ :=
  A396543.P10005515851274933396.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A049419, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A396543.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A397615.P13045808474031281948

`A065091(A190511(n+1))`
-/

namespace A397615.P13045808474031281948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A190511 (n + 1)).toNat

end

end A397615.P13045808474031281948

noncomputable section

/-- A397615: a(n) = prime(floor(n*sqrt(5))).

Offset 1, canonical program `A397615.P13045808474031281948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4473 terms. -/
def A397615 (n : ℕ) : ℤ :=
  A397615.P13045808474031281948.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4473 terms. -/
def A397615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397618.P8824688618372046150

`A000040(A054385(n+1))`
-/

namespace A397618.P8824688618372046150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A054385 (n + 1)).toNat

end

end A397618.P8824688618372046150

noncomputable section

/-- A397618: a(n) = prime(floor(n*e/(e-1))).

Offset 1, canonical program `A397618.P8824688618372046150`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A054385, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A397618 (n : ℕ) : ℤ :=
  A397618.P8824688618372046150.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A054385, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A397618.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A397628.P5249877947686904068

`A109652(A004956(n+1))`
-/

namespace A397628.P5249877947686904068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109652 (A004956 (n + 1)).toNat

end

end A397628.P5249877947686904068

noncomputable section

/-- A397628: a(n) = prime(A026352(n)).

Offset 1, canonical program `A397628.P5249877947686904068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6180 terms. -/
def A397628 (n : ℕ) : ℤ :=
  A397628.P5249877947686904068.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6180 terms. -/
def A397628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397897.P63849065271477274

`A008347(n)-a(n-1)` with `a(0)=0`
-/

namespace A397897.P63849065271477274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008347 n - a (n - 1)

end

end A397897.P63849065271477274

noncomputable section

/-- A397897: a(n) = Sum_{j=1..n} (-1)^(j+1) * j * prime(n-j+1).

Offset 0, canonical program `A397897.P63849065271477274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397897 (n : ℕ) : ℤ :=
  A397897.P63849065271477274.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397897.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A365535.P434274986920635891

`filter[A002035(n+1), A066247(#)]`
-/

namespace A365535.P434274986920635891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A365535.P434274986920635891

noncomputable section

/-- A365535: Composite numbers k such that the core and the kernel of k are equal.

Offset 1, canonical program `A365535.P434274986920635891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8331 terms. -/
def A365535 (n : ℕ) : ℤ :=
  A365535.P434274986920635891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8331 terms. -/
def A365535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366438.P4907338318269729299

`A000005(A268335(n+1))`
-/

namespace A366438.P4907338318269729299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A268335 (n + 1)).toNat

end

end A366438.P4907338318269729299

noncomputable section

/-- A366438: The number of divisors of the exponentially odd numbers (A268335).

Offset 1, canonical program `A366438.P4907338318269729299`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366438 (n : ℕ) : ℤ :=
  A366438.P4907338318269729299.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366438.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366439.P9566324691206801463

`A000203(A268335(n+1))`
-/

namespace A366439.P9566324691206801463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A268335 (n + 1)).toNat

end

end A366439.P9566324691206801463

noncomputable section

/-- A366439: The sum of divisors of the exponentially odd numbers (A268335).

Offset 1, canonical program `A366439.P9566324691206801463`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366439 (n : ℕ) : ℤ :=
  A366439.P9566324691206801463.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366439.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A366441.P11350322075649191036`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366441 (n : ℕ) : ℤ :=
  A366441.P11350322075649191036.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366441.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A366771.P6017539246711155575`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366771 (n : ℕ) : ℤ :=
  A366771.P6017539246711155575.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366771.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 2, canonical program `A366782.P11732756249166605759`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366782 (n : ℕ) : ℤ :=
  A366782.P11732756249166605759.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366782.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 0, canonical program `A366872.P9213635915992081364`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366872 (n : ℕ) : ℤ :=
  A366872.P9213635915992081364.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366872.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A367695.P14319411982053900779

`A268335(comp[comp[A268335(n+1)]-n])`
-/

namespace A367695.P14319411982053900779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A367695.P14319411982053900779

noncomputable section

/-- A367695: Numbers k such that k and k+1 are both exponentially odd numbers (A268335).

Offset 1, canonical program `A367695.P14319411982053900779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6705 terms. -/
def A367695 (n : ℕ) : ℤ :=
  A367695.P14319411982053900779.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6705 terms. -/
def A367695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368469.P12995681979237792953

`A033634(A268335(n+1))`
-/

namespace A368469.P12995681979237792953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (A268335 (n + 1)).toNat

end

end A368469.P12995681979237792953

noncomputable section

/-- A368469: a(n) is the sum of exponentially odd divisors of the n-th exponentially odd number.

Offset 1, canonical program `A368469.P12995681979237792953`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033634, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368469 (n : ℕ) : ℤ :=
  A368469.P12995681979237792953.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033634, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368469.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368472.P18282956041258009745

`A005361(A268335(n+1))`
-/

namespace A368472.P18282956041258009745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A268335 (n + 1)).toNat

end

end A368472.P18282956041258009745

noncomputable section

/-- A368472: Product of exponents of prime factorization of the exponentially odd numbers.

Offset 1, canonical program `A368472.P18282956041258009745`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368472 (n : ℕ) : ℤ :=
  A368472.P18282956041258009745.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368472.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368711.P6715505457637909973

`A051903(A268335(n+1))`
-/

namespace A368711.P6715505457637909973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A268335 (n + 1)).toNat

end

end A368711.P6715505457637909973

noncomputable section

/-- A368711: The maximal exponent in the prime factorization of the exponentially odd numbers (A268335).

Offset 1, canonical program `A368711.P6715505457637909973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368711 (n : ℕ) : ℤ :=
  A368711.P6715505457637909973.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368711.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A372713.P15261460817430982456`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372713 (n : ℕ) : ℤ :=
  A372713.P15261460817430982456.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372713.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A372714.P12117670402611410470`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372714 (n : ℕ) : ℤ :=
  A372714.P12117670402611410470.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372714.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A372715.P12208428737339877040`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372715 (n : ℕ) : ℤ :=
  A372715.P12208428737339877040.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372715.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A372784.P17501289729252677399`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372784 (n : ℕ) : ℤ :=
  A372784.P17501289729252677399.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372784.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A372785.P1137355158066766240`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372785 (n : ℕ) : ℤ :=
  A372785.P1137355158066766240.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372785.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A372786.P3226320515726835874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372786 (n : ℕ) : ℤ :=
  A372786.P3226320515726835874.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372786.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A372787.P5367107089574616924`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372787 (n : ℕ) : ℤ :=
  A372787.P5367107089574616924.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372787.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A372788.P1588842482571205510`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372788 (n : ℕ) : ℤ :=
  A372788.P1588842482571205510.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372788.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A372789.P9582021093738632599`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372789 (n : ℕ) : ℤ :=
  A372789.P9582021093738632599.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372789.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A372790.P2447796418738080202`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372790 (n : ℕ) : ℤ :=
  A372790.P2447796418738080202.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372790.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A372791.P11603537677751678447`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372791 (n : ℕ) : ℤ :=
  A372791.P11603537677751678447.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372791.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A372792.P6141643957369447150`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372792 (n : ℕ) : ℤ :=
  A372792.P6141643957369447150.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372792.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A373923.P9903428589849728487

`∑{d}[n+1, A065357(#)]`
-/

namespace A373923.P9903428589849728487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065357 d

end

end A373923.P9903428589849728487

noncomputable section

/-- A373923: a(n) = Sum_{d|n} (-1)^pi(d).

Offset 1, canonical program `A373923.P9903428589849728487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373923 (n : ℕ) : ℤ :=
  A373923.P9903428589849728487.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373923.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A373925.P819866508961225466`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373925 (n : ℕ) : ℤ :=
  A373925.P819866508961225466.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373925.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A374097.P1036587398955420288

`A196563(n)*A196564(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374097.P1036587398955420288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 n * A196564 n

end

end A374097.P1036587398955420288

noncomputable section

/-- A374097: a(n) = A196563(n)*A196564(n).

Offset 0, canonical program `A374097.P1036587398955420288`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A196563, A196564, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374097 (n : ℕ) : ℤ :=
  A374097.P1036587398955420288.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A196563, A196564, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374097.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374458.P2044124364577777506

`A268335(n+1)²`
-/

namespace A374458.P2044124364577777506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1) ^ 2

end

end A374458.P2044124364577777506

noncomputable section

/-- A374458: Squares of exponentially odd numbers (A268335).

Offset 1, canonical program `A374458.P2044124364577777506`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374458 (n : ℕ) : ℤ :=
  A374458.P2044124364577777506.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374458.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A374969.P4381911814034986725`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374969 (n : ℕ) : ℤ :=
  A374969.P4381911814034986725.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374969.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A376142.P17307456728762235189

`filter[A013929(n+1), A381955(#)]`
-/

namespace A376142.P17307456728762235189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A376142.P17307456728762235189

noncomputable section

/-- A376142: Nonsquarefree numbers whose prime factorization has a maximum exponent that is odd.

Offset 1, canonical program `A376142.P17307456728762235189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1162 terms. -/
def A376142 (n : ℕ) : ℤ :=
  A376142.P17307456728762235189.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1162 terms. -/
def A376142.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A378216.P4619166357507459087`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378216 (n : ℕ) : ℤ :=
  A378216.P4619166357507459087.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378216.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378993.P12473165963195423861

`n+1-A001221(n+1)`
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

/-! ## A378994.P13243663238711510538

`A009194(2*(n+1))`
-/

namespace A378994.P13243663238711510538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (2 * (n + 1))

end

end A378994.P13243663238711510538

noncomputable section

/-- A378994: a(n) = gcd(2*n, sigma(2*n)).

Offset 1, canonical program `A378994.P13243663238711510538`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009194, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378994 (n : ℕ) : ℤ :=
  A378994.P13243663238711510538.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009194, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378994.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A380457.P14810033455213116904

`A000203(n+1)+A001221(n+1)`
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

/-! ## A382664.P9972389899537758138

`∑[A268335(n+1)]`
-/

namespace A382664.P9972389899537758138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382664.P9972389899537758138

noncomputable section

/-- A382664: Partial sums of the exponentially odd numbers (A268335).

Offset 1, canonical program `A382664.P9972389899537758138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382664 (n : ℕ) : ℤ :=
  A382664.P9972389899537758138.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383030.P6017071897384222791

`lt[A268335(n+1)%2, 1]+1`
-/

namespace A383030.P6017071897384222791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268335 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A383030.P6017071897384222791

noncomputable section

/-- A383030: Indices of the even terms in the sequence of exponentially odd numbers.

Offset 1, canonical program `A383030.P6017071897384222791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4003 terms. -/
def A383030 (n : ℕ) : ℤ :=
  (A383030.P6017071897384222791.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4003 terms. -/
def A383030.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A388270.P10233009455192801401`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A009194, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A388270 (n : ℕ) : ℤ :=
  A388270.P10233009455192801401.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A009194, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A388270.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A388283.P448465908817760903`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009194, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388283 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A388283.P448465908817760903.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009194, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388283.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A390348.P12405491163351906346

`A390349(n)-A079978(n)`
-/

namespace A390348.P12405491163351906346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390349 n - A079978 n

end

end A390348.P12405491163351906346

noncomputable section

/-- A390348: Lower (1/2)-midsequence of Fibonacci numbers (A000045) and tribonacci numbers (A000213); see Comments.

Offset 0, canonical program `A390348.P12405491163351906346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 381 terms. -/
def A390348 (n : ℕ) : ℤ :=
  A390348.P12405491163351906346.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 381 terms. -/
def A390348.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391713.P12918001386924230058

`A000005(n+1)-A005361(n+1)-2^A001221(n+1)+1`
-/

namespace A391713.P12918001386924230058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) - A005361 (n + 1) : ℚ) - (2 : ℚ) ^ (A001221 (n + 1) : ℤ) + 1

end

end A391713.P12918001386924230058

noncomputable section

/-- A391713: Number of divisors d | n such that d is neither squarefree nor powerful (in A332785).

Offset 1, canonical program `A391713.P12918001386924230058`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001221, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391713 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391713.P12918001386924230058.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001221, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391713.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A391840.P6091312888853669410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A053836, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391840 (n : ℕ) : ℤ :=
  A391840.P6091312888853669410.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A053836, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

/-! ## A394424.P3558969678185483521

`A049419(A268335(n+1))`
-/

namespace A394424.P3558969678185483521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A268335 (n + 1)).toNat

end

end A394424.P3558969678185483521

noncomputable section

/-- A394424: The number of exponential divisors of the exponentially odd numbers.

Offset 1, canonical program `A394424.P3558969678185483521`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394424 (n : ℕ) : ℤ :=
  A394424.P3558969678185483521.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394424.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A365767.P11724764653640938392`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A038098, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365767 (n : ℕ) : ℤ :=
  A365767.P11724764653640938392.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A038098, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365767.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A367175.P14083758976828669313

`A023890(n+1)-A008472(n+1)`
-/

namespace A367175.P14083758976828669313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1) - A008472 (n + 1)

end

end A367175.P14083758976828669313

noncomputable section

/-- A367175: a(n) = Sum_{d|n} (-1)^[d is prime] * d, where [] denotes the Iverson bracket.

Offset 1, canonical program `A367175.P14083758976828669313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367175 (n : ℕ) : ℤ :=
  A367175.P14083758976828669313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367417.P18277504886847390025

`A007947(A268335(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A367417.P18277504886847390025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A268335 (n + 1)).toNat

end

end A367417.P18277504886847390025

noncomputable section

/-- A367417: The squarefree kernels of the exponentially odd numbers: a(n) = A007947(A268335(n)).

Offset 1, canonical program `A367417.P18277504886847390025`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A367417 (n : ℕ) : ℤ :=
  A367417.P18277504886847390025.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A367417.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A369719.P18303552168383655355`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A356193, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369719 (n : ℕ) : ℤ :=
  A369719.P18303552168383655355.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A356193, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369719.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370564.P2151838547854107065

`(n+1)*A297402(n+1)`
-/

namespace A370564.P2151838547854107065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A297402 (n + 1)

end

end A370564.P2151838547854107065

noncomputable section

/-- A370564: Size of the group Q_2*/(Q_2*)^n, where Q_2 is the field of 2-adic numbers.

Offset 1, canonical program `A370564.P2151838547854107065`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A297402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370564 (n : ℕ) : ℤ :=
  A370564.P2151838547854107065.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A297402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370564.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A380198.P8091464907111529259`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053622, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380198 (n : ℕ) : ℤ :=
  A380198.P8091464907111529259.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053622, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380198.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A381503.P14790323790165265310`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033192, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381503 (n : ℕ) : ℤ :=
  A381503.P14790323790165265310.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033192, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381503.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A382213.P14392032180708244766`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382213 (n : ℕ) : ℤ :=
  A382213.P14392032180708244766.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382213.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 0, canonical program `A382608.P10117561399595849934`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033192, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382608 (n : ℕ) : ℤ :=
  A382608.P10117561399595849934.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033192, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382608.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A387156.P4696553104120467965

`A000203(n+1)/A080398(n+1)`
-/

namespace A387156.P4696553104120467965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A080398 (n + 1) : ℚ)

end

end A387156.P4696553104120467965

noncomputable section

/-- A387156: a(n) = A003557(sigma(n)), where A003557(n) is multiplicative with a(p^e) = p^(e-1), and sigma is the sum of divisors function.

Offset 1, canonical program `A387156.P4696553104120467965`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080398, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A387156 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387156.P4696553104120467965.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080398, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A387156.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A393917.P7977796838059119531`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A001043, A006094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A393917 (n : ℕ) : ℤ :=
  A393917.P7977796838059119531.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A001043, A006094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A393917.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A396253.P3729736002703382672`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048656, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396253 (n : ℕ) : ℤ :=
  A396253.P3729736002703382672.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048656, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396253.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A374457.P2386240306145347940

`A001615(A268335(n+1))`
-/

namespace A374457.P2386240306145347940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A268335 (n + 1)).toNat

end

end A374457.P2386240306145347940

noncomputable section

/-- A374457: The Dedekind psi function values of the exponentially odd numbers (A268335).

Offset 1, canonical program `A374457.P2386240306145347940`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374457 (n : ℕ) : ℤ :=
  A374457.P2386240306145347940.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374457.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A392171.P17248236630189717362`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A356193, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392171 (n : ℕ) : ℤ :=
  A392171.P17248236630189717362.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A356193, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392171.provenance : SequenceMachineLib.Provenance := .conditional

