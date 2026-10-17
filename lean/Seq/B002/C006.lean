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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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

/-! ## A350461.P1001066058232075196

`A000984(n)*A000262(n)`
-/

namespace A350461.P1001066058232075196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A000262 n

end

end A350461.P1001066058232075196

noncomputable section

/-- A350461: Number of ways to choose a subset of size n from [2n] and arrange its elements into a set of lists.

Offset 0, canonical program `A350461.P1001066058232075196`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350461 (n : ℕ) : ℤ :=
  A350461.P1001066058232075196.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350461.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350968.P3720301099072039786

`(A350967(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A350968.P3720301099072039786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350967 (n + 1) - 1 : ℚ) / 2

end

end A350968.P3720301099072039786

noncomputable section

/-- A350968: a(n) = (A350967(n)-1)/2.

Offset 1, canonical program `A350968.P3720301099072039786`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350968 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A350968.P3720301099072039786.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350968.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A356760.P8308903421901114083

`A316275(n)+A316275(n+1)`
-/

namespace A356760.P8308903421901114083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316275 n + A316275 (n + 1)

end

end A356760.P8308903421901114083

noncomputable section

/-- A356760: a(n) = L(2*F(n)) + L(2*F(n+1)), where L(n) is the n-th Lucas number (A000032), and F(n) is the n-th Fibonacci number (A000045).

Offset 0, canonical program `A356760.P8308903421901114083`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356760 (n : ℕ) : ℤ :=
  A356760.P8308903421901114083.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356760.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A357509.P15717048356294989821

`2*A005809(n)-9*A000984(n)`
-/

namespace A357509.P15717048356294989821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005809 n - 9 * A000984 n

end

end A357509.P15717048356294989821

noncomputable section

/-- A357509: a(n) = 2*binomial(3*n,n) - 9*binomial(2*n,n).

Offset 0, canonical program `A357509.P15717048356294989821`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357509 (n : ℕ) : ℤ :=
  A357509.P15717048356294989821.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357509.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359498.P209552481815961539

`A219086(n)*A175110(n)`
-/

namespace A359498.P209552481815961539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 n * A175110 n

end

end A359498.P209552481815961539

noncomputable section

/-- A359498: a(n) = ((2*n+1)^8 - 1)/32.

Offset 0, canonical program `A359498.P209552481815961539`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359498 (n : ℕ) : ℤ :=
  A359498.P209552481815961539.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359498.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A376161.P7024270485273905104

`A007054(n)*(3*n+2)/2`
-/

namespace A376161.P7024270485273905104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007054 n : ℚ) * ((3 * n + 2 : ℚ) / 2)

end

end A376161.P7024270485273905104

noncomputable section

/-- A376161: Number of support Tau-tilting modules for some algebras.

Offset 0, canonical program `A376161.P7024270485273905104`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376161 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A376161.P7024270485273905104.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376161.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378777.P17573353302366903639

`n²*A005809(n)`
-/

namespace A378777.P17573353302366903639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A005809 n

end

end A378777.P17573353302366903639

noncomputable section

/-- A378777: a(n) = n^2 * binomial(3*n, n).

Offset 0, canonical program `A378777.P17573353302366903639`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378777 (n : ℕ) : ℤ :=
  A378777.P17573353302366903639.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378777.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A386517.P2721402725429736476

`60*A005809(n)/(n+2)`
-/

namespace A386517.P2721402725429736476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (60 * A005809 n : ℚ) / (n + 2 : ℚ)

end

end A386517.P2721402725429736476

noncomputable section

/-- A386517: a(n) = 60*binomial(3*n,n)/(n+2).

Offset 0, canonical program `A386517.P2721402725429736476`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386517 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A386517.P2721402725429736476.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386517.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A351830.P4984587301917632845

`abs(A000330(n)-A353295(n))`
-/

namespace A351830.P4984587301917632845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000330 n - A353295 n|

end

end A351830.P4984587301917632845

noncomputable section

/-- A351830: Distance from the n-th square pyramidal number (sum of the first n positive squares) to the nearest square.

Offset 0, canonical program `A351830.P4984587301917632845`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351830 (n : ℕ) : ℤ :=
  A351830.P4984587301917632845.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351830.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A388539.P17116264068590608702`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388539 (n : ℕ) : ℤ :=
  A388539.P17116264068590608702.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388539.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348119.P17000233484595236640

`∩[A328014(n+1)-1, A328014(n+1)]`
-/

namespace A348119.P17000233484595236640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328014 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348119.P17000233484595236640

noncomputable section

/-- A348119: Numbers k such that k and k+1 are both numbers whose powerful part is larger than their powerfree part (A328014).

Offset 1, canonical program `A348119.P17000233484595236640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A348119 (n : ℕ) : ℤ :=
  (A348119.P17000233484595236640.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A348119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348230.P11435748801159920124

`∑[A348229(n)]`
-/

namespace A348230.P11435748801159920124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348230.P11435748801159920124

noncomputable section

/-- A348230: Partial sums of A348229.

Offset 0, canonical program `A348230.P11435748801159920124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348230 (n : ℕ) : ℤ :=
  A348230.P11435748801159920124.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348238.P5407423033407331285

`∑[A348236(n)]`
-/

namespace A348238.P5407423033407331285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348238.P5407423033407331285

noncomputable section

/-- A348238: Partial sums of A348236.

Offset 0, canonical program `A348238.P5407423033407331285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348238 (n : ℕ) : ℤ :=
  A348238.P5407423033407331285.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348405.P16510536186273555448

`A139797(n)+(-1)^n`
-/

namespace A348405.P16510536186273555448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139797 n + (-1) ^ n

end

end A348405.P16510536186273555448

noncomputable section

/-- A348405: a(0) = 1, a(n) + a(n+1) = round(2^n/9), n >= 0.

Offset 0, canonical program `A348405.P16510536186273555448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A348405 (n : ℕ) : ℤ :=
  A348405.P16510536186273555448.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A348405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348636.P17645639586115979662

`A265316(n+1)+1`
-/

namespace A348636.P17645639586115979662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265316 (n + 1) + 1

end

end A348636.P17645639586115979662

noncomputable section

/-- A348636: Greedy Cantor's Dust Partition.

Offset 1, canonical program `A348636.P17645639586115979662`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348636 (n : ℕ) : ℤ :=
  A348636.P17645639586115979662.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348636.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348665.P3571881152255844530

`C(A076984(n+1), 2)`
-/

namespace A348665.P3571881152255844530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A076984 (n + 1)).toNat 2

end

end A348665.P3571881152255844530

noncomputable section

/-- A348665: Number of partitions of n into 3 parts whose smallest and middle parts divide n.

Offset 1, canonical program `A348665.P3571881152255844530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348665 (n : ℕ) : ℤ :=
  (A348665.P3571881152255844530.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348689.P458289713267582867

`Δ[A160664(n)-A000203(n+2)]`
-/

namespace A348689.P458289713267582867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n - A000203 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348689.P458289713267582867

noncomputable section

/-- A348689: a(n) = sigma(n) + sigma(n+1) - sigma(n+2), where sigma is the sum of divisors.

Offset 1, canonical program `A348689.P458289713267582867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348689 (n : ℕ) : ℤ :=
  A348689.P458289713267582867.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348774.P5425050507885369493

`A006005(Δ[n²])+1`
-/

namespace A348774.P5425050507885369493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A348774.P5425050507885369493

noncomputable section

/-- A348774: A348773(2*n+1).

Offset 0, canonical program `A348774.P5425050507885369493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 614 terms. -/
def A348774 (n : ℕ) : ℤ :=
  A348774.P5425050507885369493.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 614 terms. -/
def A348774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348919.P10211732213500185262

`A308266(n)+a(n-1)` with `a(0)=0`
-/

namespace A348919.P10211732213500185262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A308266 n + a (n - 1)

end

end A348919.P10211732213500185262

noncomputable section

/-- A348919: Sum of the middle parts of the partitions of k into 3 parts for all 0 <= k <= n.

Offset 0, canonical program `A348919.P10211732213500185262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348919 (n : ℕ) : ℤ :=
  A348919.P10211732213500185262.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349273.P11834003323894135024

`∑{d}[A006093(n+1), #%2]`
-/

namespace A349273.P11834003323894135024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d % 2

end

end A349273.P11834003323894135024

noncomputable section

/-- A349273: Number of odd divisors of prime(n) - 1.

Offset 1, canonical program `A349273.P11834003323894135024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349273 (n : ℕ) : ℤ :=
  (A349273.P11834003323894135024.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349315.P10053096381514176344

`gcd(a(n-1)+1, A247223(n²))` with `a(0)=1`
-/

namespace A349315.P10053096381514176344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (a (n - 1) + 1 : ℤ) (A247223 (n ^ 2))

end

end A349315.P10053096381514176344

noncomputable section

/-- A349315: Ordinal transform of A348674.

Offset 0, canonical program `A349315.P10053096381514176344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A349315 (n : ℕ) : ℤ :=
  (A349315.P10053096381514176344.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A349315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349372.P5844012535782128724

`∑{d}[n+1, A349371(#)]`
-/

namespace A349372.P5844012535782128724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349371 d

end

end A349372.P5844012535782128724

noncomputable section

/-- A349372: Dirichlet convolution of Kimberling's paraphrase, A003602, with tau (number of divisors, A000005).

Offset 1, canonical program `A349372.P5844012535782128724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349372 (n : ℕ) : ℤ :=
  A349372.P5844012535782128724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349373.P4196994012444307634

`∑{d}[n+1, A055615(#)*A349371((n+1)/#)]`
-/

namespace A349373.P4196994012444307634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A349371 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349373.P4196994012444307634

noncomputable section

/-- A349373: Dirichlet convolution of Kimberling's paraphrase, A003602, with Dirichlet inverse of Euler phi (A023900).

Offset 1, canonical program `A349373.P4196994012444307634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349373 (n : ℕ) : ℤ :=
  A349373.P4196994012444307634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349606.P7513340450088457348

`∑{d}[n+1, A000120(#)*A000120((n+1)/#)]`
-/

namespace A349606.P7513340450088457348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000120 d * A000120 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349606.P7513340450088457348

noncomputable section

/-- A349606: Dirichlet convolution of the binary digital sum function (A000120) with itself.

Offset 1, canonical program `A349606.P7513340450088457348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349606 (n : ℕ) : ℤ :=
  A349606.P7513340450088457348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349660.P9981326327431548497

`A000040(n+1)+A001248(n+2)`
-/

namespace A349660.P9981326327431548497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A001248 (n + 2)

end

end A349660.P9981326327431548497

noncomputable section

/-- A349660: Numbers which are the sum of a prime and the square of the next prime.

Offset 1, canonical program `A349660.P9981326327431548497`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001248, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349660 (n : ℕ) : ℤ :=
  A349660.P9981326327431548497.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001248, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349667.P3842805946856830097

`p?[(4*n+1)*A318451(3*n+1)]`
-/

namespace A349667.P3842805946856830097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A318451 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349667.P3842805946856830097

noncomputable section

/-- A349667: Primes of the form 4*k+1 which are a prime after the Collatz step *3+1 and a maximal reduction by 2.

Offset 1, canonical program `A349667.P3842805946856830097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A349667 (n : ℕ) : ℤ :=
  A349667.P3842805946856830097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A349667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349895.P2845120770672316916

`A087811(n+1)-or(A000035(n), A106466(n))`
-/

namespace A349895.P2845120770672316916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1) - Int.lor (A000035 n) (A106466 n)

end

end A349895.P2845120770672316916

noncomputable section

/-- A349895: Length of the longest self avoiding walk through a grid such that either x or y is changed by +1 or -1 in each step, and with 0 <= y, 0 <= x <= y, x + y <= n starting at (0,0) and terminating at (x,y) = (n,0).

Offset 0, canonical program `A349895.P2845120770672316916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349895 (n : ℕ) : ℤ :=
  A349895.P2845120770672316916.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350053.P5025622204918755448

`A132780(A047230(n+2))`
-/

namespace A350053.P5025622204918755448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132780 (A047230 (n + 2)).toNat

end

end A350053.P5025622204918755448

noncomputable section

/-- A350053: a(n) = (2^(3*n + 3 + (-1)^n) - (6 + (-1)^n))/9, for n >= 1.

Offset 1, canonical program `A350053.P5025622204918755448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A350053 (n : ℕ) : ℤ :=
  A350053.P5025622204918755448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A350053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350173.P3741203223829685710

`(A001748(n+1)/3)^((n+1)%2+1)`
-/

namespace A350173.P3741203223829685710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001748 (n + 1) : ℚ) / 3) ^ ((n + 1) % 2 + 1)

end

end A350173.P3741203223829685710

noncomputable section

/-- A350173: Write the square of 1st prime, then the 2nd prime, then the square of 3rd prime, alternately squaring or not.

Offset 1, canonical program `A350173.P3741203223829685710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350173 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A350173.P3741203223829685710.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350327.P15746075285235179687

`ceil(A299264(n)/A001844(n))`
-/

namespace A350327.P15746075285235179687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A299264 n : ℚ) / (A001844 n : ℚ)⌉

end

end A350327.P15746075285235179687

noncomputable section

/-- A350327: Maximum domination number of connected graphs with n vertices and minimum degree 2.

Offset 3, canonical program `A350327.P15746075285235179687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350327 (n : ℕ) : ℤ :=
  A350327.P15746075285235179687.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350414.P11254448810084278629

`A055017(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A350414.P11254448810084278629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055017 (a (n - 1)).toNat + a (n - 1)

end

end A350414.P11254448810084278629

noncomputable section

/-- A350414: a(1)=1; for n > 1, a(n) = a(n-1) + (sum of odd-indexed digits of a(n-1)) - (sum of even-indexed digits of a(n-1)).

Offset 1, canonical program `A350414.P11254448810084278629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350414 (n : ℕ) : ℤ :=
  A350414.P11254448810084278629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350515.P1630091057583403697

`(A349407(n+1)-1)/2`
-/

namespace A350515.P1630091057583403697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349407 (n + 1) - 1 : ℚ) / 2

end

end A350515.P1630091057583403697

noncomputable section

/-- A350515: a(n) = (n-1)/3 if n mod 3 = 1; a(n) = n/2 if n mod 6 = 0 or n mod 6 = 2; a(n) = (3n+1)/2 if n mod 6 = 3 or n mod 6 = 5.

Offset 0, canonical program `A350515.P1630091057583403697`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349407, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350515 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A350515.P1630091057583403697.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349407, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350515.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350527.P12125489892432735146

`A350526(n+1)-(n+1)`
-/

namespace A350527.P12125489892432735146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350526 (n + 1) - (n + 1 : ℤ)

end

end A350527.P12125489892432735146

noncomputable section

/-- A350527: a(n) = c(n*r)*f(n/r), where f = floor, c = ceiling, and r = golden ratio (A001622).

Offset 1, canonical program `A350527.P12125489892432735146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350527 (n : ℕ) : ℤ :=
  A350527.P12125489892432735146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350551.P17714853893457588206

`A094706(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A350551.P17714853893457588206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A094706 (n - 1) - a (n - 1)

end

end A350551.P17714853893457588206

noncomputable section

/-- A350551: Convolution of Jacobsthal numbers and Pell numbers.

Offset 0, canonical program `A350551.P17714853893457588206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A350551 (n : ℕ) : ℤ :=
  A350551.P17714853893457588206.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A350551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350634.P17300309054725568699

`(A027434(n+1)²-A082375(n)²)/4`
-/

namespace A350634.P17300309054725568699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027434 (n + 1) ^ 2 - A082375 n ^ 2 : ℚ) / 4

end

end A350634.P17300309054725568699

noncomputable section

/-- A350634: Products of the parts s,t in each partition of k (= 2,3,...) into two parts, ordered by increasing k and then by increasing values of s*t (see example).

Offset 1, canonical program `A350634.P17300309054725568699`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350634 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A350634.P17300309054725568699.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350634.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350637.P11858797974185375204

`A160664(C(comp[∑[n]]-n, 2)-n)-1`
-/

namespace A350637.P11858797974185375204
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) - 1

end

end A350637.P11858797974185375204

noncomputable section

/-- A350637: Triangle read by rows: T(n,k) in which row n lists the first n terms of A024916 in reverse order, 1 <= k <= n.

Offset 1, canonical program `A350637.P11858797974185375204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350637 (n : ℕ) : ℤ :=
  A350637.P11858797974185375204.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350678.P4865955700587187956

`∑[A185381(n)]`
-/

namespace A350678.P4865955700587187956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350678.P4865955700587187956

noncomputable section

/-- A350678: Partial sums of A185381.

Offset 0, canonical program `A350678.P4865955700587187956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A350678 (n : ℕ) : ℤ :=
  A350678.P4865955700587187956.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A350678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351300.P11599062728590218467

`A069095(n+1)/A059378(n+1)`
-/

namespace A351300.P11599062728590218467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069095 (n + 1) : ℚ) / (A059378 (n + 1) : ℚ)

end

end A351300.P11599062728590218467

noncomputable section

/-- A351300: a(n) = n^5 * Product_{p|n, p prime} (1 + 1/p^5).

Offset 1, canonical program `A351300.P11599062728590218467`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059378, A069095, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351300 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A351300.P11599062728590218467.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059378, A069095, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351300.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351309.P8411118416950263227

`∑{d}[A337101(2*(n+1)), A000583(#²)]`
-/

namespace A351309.P8411118416950263227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000583 (d ^ 2)

end

end A351309.P8411118416950263227

noncomputable section

/-- A351309: Sum of the 4th powers of the square divisors of n.

Offset 1, canonical program `A351309.P8411118416950263227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A351309 (n : ℕ) : ℤ :=
  A351309.P8411118416950263227.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A351309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351315.P14474847983282266353

`∑{d}[n+1, A010806(A037213(#))]`
-/

namespace A351315.P14474847983282266353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010806 (A037213 d).toNat

end

end A351315.P14474847983282266353

noncomputable section

/-- A351315: Sum of the 9th powers of the square divisors of n.

Offset 1, canonical program `A351315.P14474847983282266353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351315 (n : ℕ) : ℤ :=
  A351315.P14474847983282266353.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351369.P13114883691127630999

`∑{p}[n+1, A033286(#)]`
-/

namespace A351369.P13114883691127630999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A033286 p

end

end A351369.P13114883691127630999

noncomputable section

/-- A351369: a(n) = Sum_{p|n, p prime} p * prime(p).

Offset 1, canonical program `A351369.P13114883691127630999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351369 (n : ℕ) : ℤ :=
  A351369.P13114883691127630999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351395.P1260847415174010690

`A284117(n+1)+A048250(n+1)`
-/

namespace A351395.P1260847415174010690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284117 (n + 1) + A048250 (n + 1)

end

end A351395.P1260847415174010690

noncomputable section

/-- A351395: Sum of the divisors of n that are either squarefree, prime powers, or both.

Offset 1, canonical program `A351395.P1260847415174010690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351395 (n : ℕ) : ℤ :=
  A351395.P1260847415174010690.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352032.P5430358482776238876

`A051001(n+1)%((n+1)^4)`
-/

namespace A352032.P5430358482776238876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051001 (n + 1)) ((n + 1) ^ 4 : ℤ)

end

end A352032.P5430358482776238876

noncomputable section

/-- A352032: Sum of the 4th powers of the odd proper divisors of n.

Offset 1, canonical program `A352032.P5430358482776238876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352032 (n : ℕ) : ℤ :=
  A352032.P5430358482776238876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352036.P3287239057156726123

`A321812(n+1)%((n+1)^8)`
-/

namespace A352036.P3287239057156726123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321812 (n + 1)) ((n + 1) ^ 8 : ℤ)

end

end A352036.P3287239057156726123

noncomputable section

/-- A352036: Sum of the 8th powers of the odd proper divisors of n.

Offset 1, canonical program `A352036.P3287239057156726123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352036 (n : ℕ) : ℤ :=
  A352036.P3287239057156726123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352047.P9428451491883238181

`A245092(n)+A091570(n+1)`
-/

namespace A352047.P9428451491883238181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 n + A091570 (n + 1)

end

end A352047.P9428451491883238181

noncomputable section

/-- A352047: Sum of the divisor complements of the odd proper divisors of n.

Offset 1, canonical program `A352047.P9428451491883238181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352047 (n : ℕ) : ℤ :=
  A352047.P9428451491883238181.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352049.P2818951140963677290

`A007331(n+1)-∑[A062157(n+1)]`
-/

namespace A352049.P2818951140963677290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007331 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352049.P2818951140963677290

noncomputable section

/-- A352049: Sum of the cubes of the divisor complements of the odd proper divisors of n.

Offset 1, canonical program `A352049.P2818951140963677290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352049 (n : ℕ) : ℤ :=
  A352049.P2818951140963677290.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352052.P4842856347831940173

`A321817(n+1)-A059841(n)`
-/

namespace A352052.P4842856347831940173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321817 (n + 1) - A059841 n

end

end A352052.P4842856347831940173

noncomputable section

/-- A352052: Sum of the 6th powers of the divisor complements of the odd proper divisors of n.

Offset 1, canonical program `A352052.P4842856347831940173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352052 (n : ℕ) : ℤ :=
  A352052.P4842856347831940173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352449.P2406120621837797886

`and(n, A133179(n))`
-/

namespace A352449.P2406120621837797886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A133179 n)

end

end A352449.P2406120621837797886

noncomputable section

/-- A352449: 2^k appears in the binary expansion of a(n) iff 2^k appears in the binary expansion of n and k AND n = k (where AND denotes the bitwise AND operator).

Offset 0, canonical program `A352449.P2406120621837797886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 845 terms. -/
def A352449 (n : ℕ) : ℤ :=
  A352449.P2406120621837797886.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 845 terms. -/
def A352449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352626.P8947529741648055479

`(n+1)*Δ[A000984(n)]`
-/

namespace A352626.P8947529741648055479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A352626.P8947529741648055479

noncomputable section

/-- A352626: a(n) = (n+1)*(3*n-2)*C(2*n,n-1)/(4*n-2).

Offset 1, canonical program `A352626.P8947529741648055479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A352626 (n : ℕ) : ℤ :=
  A352626.P8947529741648055479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A352626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352851.P861774503886080343

`A001248(n+1)+A000040(n+2)`
-/

namespace A352851.P861774503886080343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + A000040 (n + 2)

end

end A352851.P861774503886080343

noncomputable section

/-- A352851: a(n) = prime(n)^2 + prime(n+1).

Offset 1, canonical program `A352851.P861774503886080343`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001248, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352851 (n : ℕ) : ℤ :=
  A352851.P861774503886080343.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001248, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352851.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352997.P7877165416529509533

`eq[1, ∑{e}[A352996(n+2), #]]+2`
-/

namespace A352997.P7877165416529509533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352996 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A352997.P7877165416529509533

noncomputable section

/-- A352997: Numbers k such that A352996(k) is prime.

Offset 1, canonical program `A352997.P7877165416529509533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1328 terms. -/
def A352997 (n : ℕ) : ℤ :=
  (A352997.P7877165416529509533.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1328 terms. -/
def A352997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353036.P3388281851575775907

`record[2*n+1-A055945(n+1)]`
-/

namespace A353036.P3388281851575775907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A055945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353036.P3388281851575775907

noncomputable section

/-- A353036: Records in A119435.

Offset 1, canonical program `A353036.P3388281851575775907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A353036 (n : ℕ) : ℤ :=
  A353036.P3388281851575775907.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A353036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353078.P2808149922824200265

`∑{d}[n+1, A065091(#)]`
-/

namespace A353078.P2808149922824200265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065091 d

end

end A353078.P2808149922824200265

noncomputable section

/-- A353078: Inverse Moebius transform of odd primes.

Offset 1, canonical program `A353078.P2808149922824200265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353078 (n : ℕ) : ℤ :=
  A353078.P2808149922824200265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353142.P9685145990710141904

`A007089(A002275(n))`
-/

namespace A353142.P9685145990710141904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A002275 n).toNat

end

end A353142.P9685145990710141904

noncomputable section

/-- A353142: Decimal repunits written in base 3.

Offset 0, canonical program `A353142.P9685145990710141904`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353142 (n : ℕ) : ℤ :=
  A353142.P9685145990710141904.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353142.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353143.P8420748734297639025

`A007090(A002275(n))`
-/

namespace A353143.P8420748734297639025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A002275 n).toNat

end

end A353143.P8420748734297639025

noncomputable section

/-- A353143: Decimal repunits written in base 4.

Offset 0, canonical program `A353143.P8420748734297639025`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353143 (n : ℕ) : ℤ :=
  A353143.P8420748734297639025.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353143.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353144.P5147909990281384543

`A007091(A002275(n))`
-/

namespace A353144.P5147909990281384543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A002275 n).toNat

end

end A353144.P5147909990281384543

noncomputable section

/-- A353144: Decimal repunits written in base 5.

Offset 0, canonical program `A353144.P5147909990281384543`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353144 (n : ℕ) : ℤ :=
  A353144.P5147909990281384543.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353144.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353179.P15255588477754131034

`A052038(A000040(n+1))`
-/

namespace A353179.P15255588477754131034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052038 (A000040 (n + 1)).toNat

end

end A353179.P15255588477754131034

noncomputable section

/-- A353179: a(n) is the first nonzero digit in the decimal expansion of 1/prime(n).

Offset 1, canonical program `A353179.P15255588477754131034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A353179 (n : ℕ) : ℤ :=
  A353179.P15255588477754131034.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A353179.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A353551.P17926714260761727250

`∑[A048785(n)]`
-/

namespace A353551.P17926714260761727250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353551.P17926714260761727250

noncomputable section

/-- A353551: a(n) = Sum_{k=1..n} tau(k^3), where tau is the number of divisors function A000005.

Offset 0, canonical program `A353551.P17926714260761727250`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048785, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353551 (n : ℕ) : ℤ :=
  A353551.P17926714260761727250.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048785, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353551.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353557.P3482545693705023104

`A059841(A095112(n+1))`
-/

namespace A353557.P3482545693705023104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A095112 (n + 1)).toNat

end

end A353557.P3482545693705023104

noncomputable section

/-- A353557: a(n) = 1 if n is an odd number with an even number of prime factors (counted with multiplicity), otherwise 0.

Offset 1, canonical program `A353557.P3482545693705023104`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095112, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353557 (n : ℕ) : ℤ :=
  A353557.P3482545693705023104.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095112, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353557.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353628.P1094902956190282200

`A001001(n+1)%2`
-/

namespace A353628.P1094902956190282200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001001 (n + 1)) 2

end

end A353628.P1094902956190282200

noncomputable section

/-- A353628: Parity of A001001(n), where A001001(n) = Sum_{d|n} d*sigma(d).

Offset 1, canonical program `A353628.P1094902956190282200`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353628 (n : ℕ) : ℤ :=
  A353628.P1094902956190282200.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353628.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353671.P17951679190738340339

`and(n, A353670(n+1))`
-/

namespace A353671.P17951679190738340339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A353670 (n + 1))

end

end A353671.P17951679190738340339

noncomputable section

/-- A353671: a(n) = 1 if n is even and the odd part of n is a prime, otherwise 0.

Offset 1, canonical program `A353671.P17951679190738340339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353671 (n : ℕ) : ℤ :=
  A353671.P17951679190738340339.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353751.P11484978270227039797

`A051027(n+1)/A318059(n+1)`
-/

namespace A353751.P11484978270227039797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051027 (n + 1) : ℚ) / (A318059 (n + 1) : ℚ)

end

end A353751.P11484978270227039797

noncomputable section

/-- A353751: a(n) = gcd(n, sigma(sigma(n))), where sigma is the sum of divisors function.

Offset 1, canonical program `A353751.P11484978270227039797`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051027, A318059, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353751 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353751.P11484978270227039797.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051027, A318059, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353751.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353809.P4442062719913416770

`and(A000007(A002654(n+1)), A038459(n+1))`
-/

namespace A353809.P4442062719913416770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000007 (A002654 (n + 1)).toNat) (A038459 (n + 1))

end

end A353809.P4442062719913416770

noncomputable section

/-- A353809: a(n) = 1 if n is of the form 4m+1 and is not the sum of two squares, otherwise 0.

Offset 1, canonical program `A353809.P4442062719913416770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353809 (n : ℕ) : ℤ :=
  A353809.P4442062719913416770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353814.P3429435947782467007

`floor(atan(A002654(n+1)))`
-/

namespace A353814.P3429435947782467007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A002654 (n + 1) : ℝ)⌋

end

end A353814.P3429435947782467007

noncomputable section

/-- A353814: a(n) = 1 if n is the sum of 2 distinct nonzero squares, 0 otherwise.

Offset 1, canonical program `A353814.P3429435947782467007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353814 (n : ℕ) : ℤ :=
  A353814.P3429435947782467007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354034.P58261609399976325

`A059841(n)+A098108(n)`
-/

namespace A354034.P58261609399976325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A098108 n

end

end A354034.P58261609399976325

noncomputable section

/-- A354034: a(n) = 1 if n is an even number or a square, otherwise 0.

Offset 0, canonical program `A354034.P58261609399976325`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A098108, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354034 (n : ℕ) : ℤ :=
  A354034.P58261609399976325.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A098108, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354034.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354098.P8617954858712711501

`lt[0, A354097(n+1)]+1`
-/

namespace A354098.P8617954858712711501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354097 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354098.P8617954858712711501

noncomputable section

/-- A354098: Numbers k such that the cototient of k (= k-phi(k)) is a multiple of 4.

Offset 1, canonical program `A354098.P8617954858712711501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354098 (n : ℕ) : ℤ :=
  (A354098.P8617954858712711501.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354353.P7138683096085960204

`A268340(A181819(n+1))`
-/

namespace A354353.P7138683096085960204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268340 (A181819 (n + 1)).toNat

end

end A354353.P7138683096085960204

noncomputable section

/-- A354353: a(n) = 1 if n is either a squarefree composite or a power of squarefree composite, otherwise 0.

Offset 1, canonical program `A354353.P7138683096085960204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354353 (n : ℕ) : ℤ :=
  A354353.P7138683096085960204.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354357.P12412967713382681019

`filter[A354356(n+1), A187074(#)]`
-/

namespace A354357.P12412967713382681019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A354357.P12412967713382681019

noncomputable section

/-- A354357: Numbers k, not divisible by 2 or 3, such that sigma(k) is 3-smooth (has no larger prime factors than 3).

Offset 1, canonical program `A354357.P12412967713382681019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 427 terms. -/
def A354357 (n : ℕ) : ℤ :=
  A354357.P12412967713382681019.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 427 terms. -/
def A354357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354812.P524993802197872541

`A016813(A001748(n+5))-1`
-/

namespace A354812.P524993802197872541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A001748 (n + 5)).toNat - 1

end

end A354812.P524993802197872541

noncomputable section

/-- A354812: Positions of +2's in A346242.

Offset 1, canonical program `A354812.P524993802197872541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A354812 (n : ℕ) : ℤ :=
  A354812.P524993802197872541.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A354812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354924.P17452870257802639278

`A010055(A026741(n+1))`
-/

namespace A354924.P17452870257802639278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A026741 (n + 1)).toNat

end

end A354924.P17452870257802639278

noncomputable section

/-- A354924: a(n) = 1 if A047994(n) is equal to A344005(n), otherwise 0.

Offset 1, canonical program `A354924.P17452870257802639278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354924 (n : ℕ) : ℤ :=
  A354924.P17452870257802639278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354996.P15206134778227489401

`round(A072504(n+1)/A020723(n))`
-/

namespace A354996.P15206134778227489401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A072504 (n + 1) : ℚ) / (A020723 n : ℚ))

end

end A354996.P15206134778227489401

noncomputable section

/-- A354996: a(n) = 1 if n > A034699(n)^2, otherwise 0, where A034699(n) is the largest prime power factor of n.

Offset 1, canonical program `A354996.P15206134778227489401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354996 (n : ℕ) : ℤ :=
  A354996.P15206134778227489401.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355044.P11587617418914573350

`A002057(n+1)+A120989(n+1)+A002057(n+1)`
-/

namespace A355044.P11587617418914573350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 (n + 1) + (A120989 (n + 1) + A002057 (n + 1))

end

end A355044.P11587617418914573350

noncomputable section

/-- A355044: Number of coalescent histories for matching gene trees and species trees with n leaves and a 5-leaf seed tree.

Offset 5, canonical program `A355044.P11587617418914573350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A355044 (n : ℕ) : ℤ :=
  A355044.P11587617418914573350.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A355044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355275.P3750325120269682961

`lt[3/acot(n), 9^A062756(n)]`
-/

namespace A355275.P3750325120269682961
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 / SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (A062756 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A355275.P3750325120269682961

noncomputable section

/-- A355275: Numbers having more odd than even digits when written in base 3.

Offset 1, canonical program `A355275.P3750325120269682961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1872 terms. -/
def A355275 (n : ℕ) : ℤ :=
  (A355275.P3750325120269682961.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1872 terms. -/
def A355275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356042.P5029701025651037143

`∑[A007433(n+1)]`
-/

namespace A356042.P5029701025651037143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356042.P5029701025651037143

noncomputable section

/-- A356042: a(n) = Sum_{k=1..n} sigma_2(k) * floor(n/k).

Offset 1, canonical program `A356042.P5029701025651037143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356042 (n : ℕ) : ℤ :=
  A356042.P5029701025651037143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356043.P17373567186682368949

`∑[A321140(n+1)]`
-/

namespace A356043.P17373567186682368949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356043.P17373567186682368949

noncomputable section

/-- A356043: a(n) = Sum_{k=1..n} sigma_3(k) * floor(n/k).

Offset 1, canonical program `A356043.P17373567186682368949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356043 (n : ℕ) : ℤ :=
  A356043.P17373567186682368949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356052.P15498316879302581903

`∩[A001951(n+1), comp[A137804(n+1)]]`
-/

namespace A356052.P15498316879302581903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137804 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A356052.P15498316879302581903

noncomputable section

/-- A356052: Intersection of A001951 and A137803.

Offset 1, canonical program `A356052.P15498316879302581903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5279 terms. -/
def A356052 (n : ℕ) : ℤ :=
  (A356052.P15498316879302581903.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5279 terms. -/
def A356052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356053.P9081293707320961175

`∩[A137804(n+1), A001951(n)]`
-/

namespace A356053.P9081293707320961175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356053.P9081293707320961175

noncomputable section

/-- A356053: Intersection of A001951 and A137804.

Offset 1, canonical program `A356053.P9081293707320961175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4721 terms. -/
def A356053 (n : ℕ) : ℤ :=
  (A356053.P9081293707320961175.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4721 terms. -/
def A356053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356057.P8518808555773698646

`A001951(A137804(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356057.P8518808555773698646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A137804 (n + 1)).toNat

end

end A356057.P8518808555773698646

noncomputable section

/-- A356057: a(n) = A001951(A137804(n)).

Offset 1, canonical program `A356057.P8518808555773698646`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356057 (n : ℕ) : ℤ :=
  A356057.P8518808555773698646.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356057.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356088.P18437978252580480837

`A001951(A022838(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356088.P18437978252580480837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A022838 (n + 1)).toNat

end

end A356088.P18437978252580480837

noncomputable section

/-- A356088: a(n) = A001951(A022838(n)).

Offset 1, canonical program `A356088.P18437978252580480837`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022838, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356088 (n : ℕ) : ℤ :=
  A356088.P18437978252580480837.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022838, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356088.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356101.P17416352554625615836

`filter[A108598(n+1), A096270(#)]`
-/

namespace A356101.P17416352554625615836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A096270 (f1 j).toNat = 1) n)

end

end A356101.P17416352554625615836

noncomputable section

/-- A356101: Intersection of A000201 and A022839.

Offset 1, canonical program `A356101.P17416352554625615836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5855 terms. -/
def A356101 (n : ℕ) : ℤ :=
  A356101.P17416352554625615836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5855 terms. -/
def A356101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356103.P879455615759908010

`∩[A108598(n+1), floor(n*ϕ²)]`
-/

namespace A356103.P879455615759908010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356103.P879455615759908010

noncomputable section

/-- A356103: Intersection of A001950 and A108598.

Offset 1, canonical program `A356103.P879455615759908010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4145 terms. -/
def A356103 (n : ℕ) : ℤ :=
  (A356103.P879455615759908010.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4145 terms. -/
def A356103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356107.P10155029696573621776

`A356105(n+1)+A108598(n+1)`
-/

namespace A356107.P10155029696573621776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356105 (n + 1) + A108598 (n + 1)

end

end A356107.P10155029696573621776

noncomputable section

/-- A356107: a(n) = A001950(A108598(n)).

Offset 1, canonical program `A356107.P10155029696573621776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356107 (n : ℕ) : ℤ :=
  A356107.P10155029696573621776.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356139.P10190222428603506711

`and(-1, A137804(A001951(n+1)))`
-/

namespace A356139.P10190222428603506711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A137804 (A001951 (n + 1)).toNat)

end

end A356139.P10190222428603506711

noncomputable section

/-- A356139: a(n) = A137804(A001951(n)).

Offset 1, canonical program `A356139.P10190222428603506711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7071 terms. -/
def A356139 (n : ℕ) : ℤ :=
  A356139.P10190222428603506711.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7071 terms. -/
def A356139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356296.P6882871510415539984

`A217737(n+1)²%(n+1)`
-/

namespace A356296.P6882871510415539984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217737 (n + 1) ^ 2) (n + 1 : ℤ)

end

end A356296.P6882871510415539984

noncomputable section

/-- A356296: a(n) = Fibonacci(n)^2 mod n.

Offset 1, canonical program `A356296.P6882871510415539984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356296 (n : ℕ) : ℤ :=
  A356296.P6882871510415539984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356344.P17546756688220818200

`∑[∑{d}[n+1, #]*A000984(n+1)]`
-/

namespace A356344.P17546756688220818200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) * A000984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356344.P17546756688220818200

noncomputable section

/-- A356344: a(n) = Sum_{k=1..n} binomial(2*k, k) * sigma(k).

Offset 1, canonical program `A356344.P17546756688220818200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A356344 (n : ℕ) : ℤ :=
  A356344.P17546756688220818200.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A356344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356345.P3854360656098395106

`∑[A000984(n+1)*A001157(n+1)]`
-/

namespace A356345.P3854360656098395106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) * A001157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356345.P3854360656098395106

noncomputable section

/-- A356345: a(n) = Sum_{k=1..n} binomial(2*k, k) * sigma_2(k).

Offset 1, canonical program `A356345.P3854360656098395106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A356345 (n : ℕ) : ℤ :=
  A356345.P3854360656098395106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A356345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356346.P4309964062944465404

`∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A000984(n+1)]`
-/

namespace A356346.P4309964062944465404
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) * (A000984 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356346.P4309964062944465404

noncomputable section

/-- A356346: a(n) = Sum_{k=1..n} binomial(2*k, k) * phi(k), where phi is the Euler totient function.

Offset 1, canonical program `A356346.P4309964062944465404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A356346 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A356346.P4309964062944465404.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A356346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356352.P18088137796280476194

`gcd(a(A035327(n)), A000120(n))` with `a(0)=0`
-/

namespace A356352.P18088137796280476194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.gcd (a (A035327 n).toNat : ℤ) (A000120 n)

end

end A356352.P18088137796280476194

noncomputable section

/-- A356352: a(n) = GCD of run lengths in binary expansion of n.

Offset 0, canonical program `A356352.P18088137796280476194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356352 (n : ℕ) : ℤ :=
  (A356352.P18088137796280476194.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356373.P17307196192720375419

`∑[∏{e}[n+1, #+1]*A000984(n+1)]`
-/

namespace A356373.P17307196192720375419
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) * A000984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356373.P17307196192720375419

noncomputable section

/-- A356373: a(n) = Sum_{k=1..n} binomial(2*k, k) * A000005(k).

Offset 1, canonical program `A356373.P17307196192720375419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A356373 (n : ℕ) : ℤ :=
  A356373.P17307196192720375419.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A356373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356474.P13740467552798713999

`∏{p}[A006093(n+1), #-1]`
-/

namespace A356474.P13740467552798713999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A356474.P13740467552798713999

noncomputable section

/-- A356474: a(n) = phi(rad(prime(n)-1)), where phi = A000010 and rad = A007947.

Offset 1, canonical program `A356474.P13740467552798713999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356474 (n : ℕ) : ℤ :=
  A356474.P13740467552798713999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356696.P10844280881807831456

`A001519(n)-A002662(n)-(n-1)`
-/

namespace A356696.P10844280881807831456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n - A002662 n - ((n : ℤ) - 1)

end

end A356696.P10844280881807831456

noncomputable section

/-- A356696: a(n) = Fibonacci(2n-1) - 2^n + binomial(n,2) + 2.

Offset 0, canonical program `A356696.P10844280881807831456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A356696 (n : ℕ) : ℤ :=
  A356696.P10844280881807831456.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A356696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356852.P6348023218238720434

`A055642(A245920(n)+A053738(n+1))`
-/

namespace A356852.P6348023218238720434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A245920 n + A053738 (n + 1)).toNat

end

end A356852.P6348023218238720434

noncomputable section

/-- A356852: Minimum over all order two bases for the interval [1, n] of the maximum number of ways some number in the interval [1, n] can be written as a sum of at most two elements of the basis.

Offset 1, canonical program `A356852.P6348023218238720434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A356852 (n : ℕ) : ℤ :=
  A356852.P6348023218238720434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A356852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356868.P9460549106714125296

`(n+1)*A033286(n+1)`
-/

namespace A356868.P9460549106714125296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033286 (n + 1)

end

end A356868.P9460549106714125296

noncomputable section

/-- A356868: a(n) = n^2 * prime(n).

Offset 1, canonical program `A356868.P9460549106714125296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356868 (n : ℕ) : ℤ :=
  A356868.P9460549106714125296.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357143.P9618217690361557058

`A101337(A007091(n+1))`
-/

namespace A357143.P9618217690361557058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101337 (A007091 (n + 1)).toNat

end

end A357143.P9618217690361557058

noncomputable section

/-- A357143: a(n) is sum of the base-5 digits of n each raised to the number of digits of n in base 5.

Offset 1, canonical program `A357143.P9618217690361557058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 625 terms. -/
def A357143 (n : ℕ) : ℤ :=
  A357143.P9618217690361557058.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 625 terms. -/
def A357143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357283.P17984273283071694433

`∑[A027556(abs(1-n))]`
-/

namespace A357283.P17984273283071694433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027556 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357283.P17984273283071694433

noncomputable section

/-- A357283: a(n) = number of subsets S of {1,2,...,n} having more than 1 element such that (sum of least two elements of S) < max(S).

Offset 0, canonical program `A357283.P17984273283071694433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A357283 (n : ℕ) : ℤ :=
  A357283.P17984273283071694433.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A357283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357292.P7346233877380800263

`A357291(n)+A211540(n)`
-/

namespace A357292.P7346233877380800263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357291 n + A211540 n

end

end A357292.P7346233877380800263

noncomputable section

/-- A357292: a(n) = number of subsets S of {1,2,...,n} having more than 2 elements such that (sum of least two elements of S) = difference between greatest two elements of S.

Offset 0, canonical program `A357292.P7346233877380800263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A357292 (n : ℕ) : ℤ :=
  A357292.P7346233877380800263.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A357292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357552.P8331411661499234556

`A000203(n+1)*A001700(n)`
-/

namespace A357552.P8331411661499234556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A001700 n

end

end A357552.P8331411661499234556

noncomputable section

/-- A357552: a(n) = sigma(n) * binomial(2*n-1,n), for n >= 1.

Offset 1, canonical program `A357552.P8331411661499234556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A357552 (n : ℕ) : ℤ :=
  A357552.P8331411661499234556.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A357552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357589.P7949358188977023156

`n-a(A087172(n+1)-2)` with `a(0)=0`
-/

namespace A357589.P7949358188977023156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - a (A087172 (n + 1) - 2).toNat

end

end A357589.P7949358188977023156

noncomputable section

/-- A357589: a(n) = n - A130312(n).

Offset 1, canonical program `A357589.P7949358188977023156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357589 (n : ℕ) : ℤ :=
  A357589.P7949358188977023156.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357955.P11653550448911353855

`3*A005810(n)-20*A005809(n)+54*A000984(n)`
-/

namespace A357955.P11653550448911353855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005810 n - 20 * A005809 n + 54 * A000984 n

end

end A357955.P11653550448911353855

noncomputable section

/-- A357955: a(n) = 3*binomial(4*n,n) - 20*binomial(3*n,n) + 54*binomial(2*n,n).

Offset 0, canonical program `A357955.P11653550448911353855`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357955 (n : ℕ) : ℤ :=
  A357955.P11653550448911353855.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357955.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358206.P4991857009677086862

`A000064(floor(n/2))`
-/

namespace A358206.P4991857009677086862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000064 ⌊(n : ℚ) / 2⌋.toNat

end

end A358206.P4991857009677086862

noncomputable section

/-- A358206: Number of ways of making change for n cents using coins of 1, 2, 4, 10 and 20 cents.

Offset 0, canonical program `A358206.P4991857009677086862`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000064, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358206 (n : ℕ) : ℤ :=
  A358206.P4991857009677086862.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000064, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358206.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358223.P17799265343679974090

`∑{d}[n+1, A181819(#)]`
-/

namespace A358223.P17799265343679974090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A181819 d

end

end A358223.P17799265343679974090

noncomputable section

/-- A358223: Inverse Möbius transform of A181819, prime shadow function.

Offset 1, canonical program `A358223.P17799265343679974090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358223 (n : ℕ) : ℤ :=
  A358223.P17799265343679974090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358551.P14086074353940531701

`A072643(n)+1`
-/

namespace A358551.P14086074353940531701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 n + 1

end

end A358551.P14086074353940531701

noncomputable section

/-- A358551: Number of nodes in the ordered rooted tree with binary encoding A014486(n).

Offset 1, canonical program `A358551.P14086074353940531701`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072643, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358551 (n : ℕ) : ℤ :=
  A358551.P14086074353940531701.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072643, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358551.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358565.P12704105061407779124

`Δ[A024898(n+1)]`
-/

namespace A358565.P12704105061407779124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358565.P12704105061407779124

noncomputable section

/-- A358565: a(n) = A358548(n) / 6.

Offset 2, canonical program `A358565.P12704105061407779124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A358565 (n : ℕ) : ℤ :=
  A358565.P12704105061407779124.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A358565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358767.P14208319435389151845

`lt[0, A358766(n+1)]+1`
-/

namespace A358767.P14208319435389151845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358766 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A358767.P14208319435389151845

noncomputable section

/-- A358767: Numbers k with an even number of prime factors (when counted with multiplicity) in sigma(k), the sum of divisors of k.

Offset 1, canonical program `A358767.P14208319435389151845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358767 (n : ℕ) : ℤ :=
  (A358767.P14208319435389151845.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358817.P6080470734846673490

`eq[A351656(n+1), A351656(n+2)]+1`
-/

namespace A358817.P6080470734846673490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351656 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A358817.P6080470734846673490

noncomputable section

/-- A358817: Numbers k such that A046660(k) = A046660(k+1).

Offset 1, canonical program `A358817.P6080470734846673490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3655 terms. -/
def A358817 (n : ℕ) : ℤ :=
  (A358817.P6080470734846673490.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3655 terms. -/
def A358817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359108.P14610961669154602894

`ceil(A005810(n)/2)`
-/

namespace A359108.P14610961669154602894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005810 n : ℚ) / 2⌉

end

end A359108.P14610961669154602894

noncomputable section

/-- A359108: a(n) = A128899(2*n, n) = 2*binomial(4*n - 1, 3*n) for n >= 1 and a(0) = 1.

Offset 0, canonical program `A359108.P14610961669154602894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A359108 (n : ℕ) : ℤ :=
  A359108.P14610961669154602894.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A359108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359126.P8935011708423575333

`A000168(n+1)-A000139(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359126.P8935011708423575333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000168 (n + 1) - A000139 n

end

end A359126.P8935011708423575333

noncomputable section

/-- A359126: A000168(n+1) - A000139(n).

Offset 0, canonical program `A359126.P8935011708423575333`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000139, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359126 (n : ℕ) : ℤ :=
  A359126.P8935011708423575333.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000139, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359126.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359175.P9799609452653087876

`record[n*A120304(n)]`
-/

namespace A359175.P9799609452653087876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A120304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359175.P9799609452653087876

noncomputable section

/-- A359175: a(n) = binomial(2*n-2,n) - 2*(n-1).

Offset 3, canonical program `A359175.P9799609452653087876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A359175 (n : ℕ) : ℤ :=
  A359175.P9799609452653087876.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A359175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359244.P3595086923131692661

`A001877(5*n+1)`
-/

namespace A359244.P3595086923131692661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (5 * n + 1)

end

end A359244.P3595086923131692661

noncomputable section

/-- A359244: Number of divisors of 5*n-4 of form 5*k+2.

Offset 1, canonical program `A359244.P3595086923131692661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A359244 (n : ℕ) : ℤ :=
  A359244.P3595086923131692661.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A359244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359351.P10445392512620732150

`abs(1-A188383(n+1))`
-/

namespace A359351.P10445392512620732150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A188383 (n + 1)|

end

end A359351.P10445392512620732150

noncomputable section

/-- A359351: a(n) = A001952(A003151(n)).

Offset 1, canonical program `A359351.P10445392512620732150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359351 (n : ℕ) : ℤ :=
  A359351.P10445392512620732150.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359381.P4166977693379255214

`lt[0, A359172(n+1)]+1`
-/

namespace A359381.P4166977693379255214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359172 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359381.P4166977693379255214

noncomputable section

/-- A359381: Nonmultiples of 3 that have an odd number of prime factors (with multiplicity).

Offset 1, canonical program `A359381.P4166977693379255214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359381 (n : ℕ) : ℤ :=
  (A359381.P4166977693379255214.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359435.P7894353083277410484

`A352027(n+3)-(n+3)`
-/

namespace A359435.P7894353083277410484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352027 (n + 3) - (n + 3 : ℤ)

end

end A359435.P7894353083277410484

noncomputable section

/-- A359435: a(n) = binomial(2*n-1,n) - n^2 - 1.

Offset 3, canonical program `A359435.P7894353083277410484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A359435 (n : ℕ) : ℤ :=
  A359435.P7894353083277410484.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A359435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359445.P18211126488119010067

`∩[A051448(n+1)-1, A051448(n+1)]`
-/

namespace A359445.P18211126488119010067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051448 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359445.P18211126488119010067

noncomputable section

/-- A359445: Numbers k such that the sums (with multiplicity) of prime factors of k and k+1 are both squares.

Offset 1, canonical program `A359445.P18211126488119010067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A359445 (n : ℕ) : ℤ :=
  (A359445.P18211126488119010067.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A359445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359536.P8223662673911763191

`∑[A089013(n)]`
-/

namespace A359536.P8223662673911763191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359536.P8223662673911763191

noncomputable section

/-- A359536: a(n) is the size of the largest subset of {0,1,...,n} such that the sum of two (not necessarily distinct) elements is never a power of 2.

Offset 0, canonical program `A359536.P8223662673911763191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A359536 (n : ℕ) : ℤ :=
  A359536.P8223662673911763191.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A359536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359771.P10440541190163119622

`lt[0, A359770(n+1)]+1`
-/

namespace A359771.P10440541190163119622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359771.P10440541190163119622

noncomputable section

/-- A359771: Union of even numbers with an odd number of prime factors and odd numbers with an even number of prime factors, when the number of prime factors is counted with multiplicity.

Offset 1, canonical program `A359771.P10440541190163119622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359771 (n : ℕ) : ℤ :=
  (A359771.P10440541190163119622.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359772.P12958415643598891903

`eq[0, A359770(n+1)]+1`
-/

namespace A359772.P12958415643598891903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359772.P12958415643598891903

noncomputable section

/-- A359772: Union of even numbers with an even number of prime factors and odd numbers with an odd number of prime factors, when the number of prime factors is counted with multiplicity.

Offset 1, canonical program `A359772.P12958415643598891903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359772 (n : ℕ) : ℤ :=
  (A359772.P12958415643598891903.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359841.P7722481679361690629

`eq[lcm(n, A059995(n)), A028310(n)]`
-/

namespace A359841.P7722481679361690629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A059995 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359841.P7722481679361690629

noncomputable section

/-- A359841: Integers Xd which are divisible by X, where d is the last decimal digit.

Offset 1, canonical program `A359841.P7722481679361690629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1022 terms. -/
def A359841 (n : ℕ) : ℤ :=
  (A359841.P7722481679361690629.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1022 terms. -/
def A359841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360048.P11948513160128016268

`∑[A343773(n)]`
-/

namespace A360048.P11948513160128016268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360048.P11948513160128016268

noncomputable section

/-- A360048: a(n) = Sum_{k=0..floor(n/2)} (-1)^k * binomial(n+1,2*k+1) * Catalan(k).

Offset 0, canonical program `A360048.P11948513160128016268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. -/
def A360048 (n : ℕ) : ℤ :=
  A360048.P11948513160128016268.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. -/
def A360048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360124.P4749655470974638796

`4*A088827(n+1)`
-/

namespace A360124.P4749655470974638796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A088827 (n + 1)

end

end A360124.P4749655470974638796

noncomputable section

/-- A360124: Numbers k such that A360121(k) is odd, but A347389(k) is even.

Offset 1, canonical program `A360124.P4749655470974638796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 759 terms. -/
def A360124 (n : ℕ) : ℤ :=
  A360124.P4749655470974638796.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 759 terms. -/
def A360124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360153.P10301442448555793105

`A000984(n)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A360153.P10301442448555793105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  A000984 n + a (n - 3)

end

end A360153.P10301442448555793105

noncomputable section

/-- A360153: a(n) = Sum_{k=0..floor(n/3)} binomial(2*n-6*k,n-3*k).

Offset 0, canonical program `A360153.P10301442448555793105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A360153 (n : ℕ) : ℤ :=
  A360153.P10301442448555793105.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A360153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360185.P1194481214510871890

`A000984(n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A360185.P1194481214510871890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000984 n - a (n - 2)

end

end A360185.P1194481214510871890

noncomputable section

/-- A360185: a(n) = Sum_{k=0..floor(n/2)} (-1)^k * binomial(2*n-4*k,n-2*k).

Offset 0, canonical program `A360185.P1194481214510871890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A360185 (n : ℕ) : ℤ :=
  A360185.P1194481214510871890.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A360185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360186.P970478234899042505

`A000984(n)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A360186.P970478234899042505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  A000984 n - a (n - 3)

end

end A360186.P970478234899042505

noncomputable section

/-- A360186: a(n) = Sum_{k=0..floor(n/3)} (-1)^k * binomial(2*n-6*k,n-3*k).

Offset 0, canonical program `A360186.P970478234899042505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A360186 (n : ℕ) : ℤ :=
  A360186.P970478234899042505.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A360186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360273.P611309196020639949

`∑[A032357(n)]`
-/

namespace A360273.P611309196020639949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360273.P611309196020639949

noncomputable section

/-- A360273: a(n) = Sum_{k=0..floor(n/2)} Catalan(n-2*k).

Offset 0, canonical program `A360273.P611309196020639949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A360273 (n : ℕ) : ℤ :=
  A360273.P611309196020639949.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A360273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360428.P9068250880525305499

`∑{d}[n+1, A338164(#)]`
-/

namespace A360428.P9068250880525305499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A338164 d

end

end A360428.P9068250880525305499

noncomputable section

/-- A360428: Inverse Mobius transformation of A338164.

Offset 1, canonical program `A360428.P9068250880525305499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360428 (n : ℕ) : ℤ :=
  A360428.P9068250880525305499.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360588.P3385288427672600605

`A052749(n)+A052760(n)/2`
-/

namespace A360588.P3385288427672600605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052749 n : ℚ) + (A052760 n : ℚ) / 2

end

end A360588.P3385288427672600605

noncomputable section

/-- A360588: Expansion of e.g.f. (exp(x)-1)^2*(x+x^2/2).

Offset 0, canonical program `A360588.P3385288427672600605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A360588 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A360588.P3385288427672600605.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A360588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360734.P10496701500562311752

`A045344(n+1)*A046933(n+1)+2`
-/

namespace A360734.P10496701500562311752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1) * A046933 (n + 1) + 2

end

end A360734.P10496701500562311752

noncomputable section

/-- A360734: The number of regions into which the plane is divided by a hypotrochoid with parameters R = d = prime(n+1) and r = prime(n).

Offset 1, canonical program `A360734.P10496701500562311752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360734 (n : ℕ) : ℤ :=
  A360734.P10496701500562311752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360926.P4629588072312420784

`A248232(n+1)-A028310(n)`
-/

namespace A360926.P4629588072312420784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248232 (n + 1) - A028310 n

end

end A360926.P4629588072312420784

noncomputable section

/-- A360926: Smallest number of moves needed to win Integer Lunar Lander with a starting position of (n,n).

Offset 0, canonical program `A360926.P4629588072312420784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A360926 (n : ℕ) : ℤ :=
  A360926.P4629588072312420784.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A360926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361077.P18103522662068847594

`gcd(A000984(n), A010552(n))`
-/

namespace A361077.P18103522662068847594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000984 n) (A010552 n)

end

end A361077.P18103522662068847594

noncomputable section

/-- A361077: a(n) = largest sqrt(2*n)-smooth divisor of binomial(2*n, n).

Offset 0, canonical program `A361077.P18103522662068847594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A361077 (n : ℕ) : ℤ :=
  (A361077.P18103522662068847594.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A361077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361114.P14671921688782388975

`1-A361113(n+1)`
-/

namespace A361114.P14671921688782388975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A361113 (n + 1)

end

end A361114.P14671921688782388975

noncomputable section

/-- A361114: a(n)=1 if A361102(n) is odd, otherwise 0.

Offset 0, canonical program `A361114.P14671921688782388975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361114 (n : ℕ) : ℤ :=
  A361114.P14671921688782388975.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361115.P7604483962719695336

`1-A361102(n+1)²%3`
-/

namespace A361115.P7604483962719695336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A361102 (n + 1) ^ 2) 3

end

end A361115.P7604483962719695336

noncomputable section

/-- A361115: a(n)=1 if A361102(n) is divisible by 3, otherwise 0.

Offset 0, canonical program `A361115.P7604483962719695336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361115 (n : ℕ) : ℤ :=
  A361115.P7604483962719695336.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361271.P3303767422937233497

`A351704(n)-1`
-/

namespace A361271.P3303767422937233497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351704 n - 1

end

end A361271.P3303767422937233497

noncomputable section

/-- A361271: Number of 1342-avoiding odd Grassmannian permutations of size n.

Offset 0, canonical program `A361271.P3303767422937233497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361271 (n : ℕ) : ℤ :=
  A361271.P3303767422937233497.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361460.P12226711080690228128

`A000007(A135506(n+1)-1)`
-/

namespace A361460.P12226711080690228128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A135506 (n + 1) - 1).toNat

end

end A361460.P12226711080690228128

noncomputable section

/-- A361460: a(n) = 1 if A135504(n+1) = 2 * A135504(n), otherwise 0.

Offset 1, canonical program `A361460.P12226711080690228128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361460 (n : ℕ) : ℤ :=
  A361460.P12226711080690228128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361461.P11308028786561172249

`eq[1, A135506(n+1)]+1`
-/

namespace A361461.P11308028786561172249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135506 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A361461.P11308028786561172249

noncomputable section

/-- A361461: Numbers k such that x(k+1) = 2 * x(k), when x(1)=1 and x(n) = x(n-1) + lcm(x(n-1),n), i.e., x(n) = A135504(n).

Offset 1, canonical program `A361461.P11308028786561172249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361461 (n : ℕ) : ℤ :=
  (A361461.P11308028786561172249.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361462.P2236218584101490089

`A135506(n+1)%4`
-/

namespace A361462.P2236218584101490089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135506 (n + 1)) 4

end

end A361462.P2236218584101490089

noncomputable section

/-- A361462: a(n) = A135506(n) mod 4.

Offset 1, canonical program `A361462.P2236218584101490089`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A135506, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361462 (n : ℕ) : ℤ :=
  A361462.P2236218584101490089.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A135506, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361462.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361470.P12605734860024690100

`(n+2)/A135506(n+1)`
-/

namespace A361470.P12605734860024690100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A135506 (n + 1) : ℚ)

end

end A361470.P12605734860024690100

noncomputable section

/-- A361470: a(n) = gcd(n+1, A135504(n)).

Offset 1, canonical program `A361470.P12605734860024690100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361470 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A361470.P12605734860024690100.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361691.P12768246634091749586

`A279061(7*n+6)`
-/

namespace A361691.P12768246634091749586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (7 * n + 6)

end

end A361691.P12768246634091749586

noncomputable section

/-- A361691: Number of divisors of 7*n-1 of form 7*k+1.

Offset 1, canonical program `A361691.P12768246634091749586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1428 terms. -/
def A361691 (n : ℕ) : ℤ :=
  A361691.P12768246634091749586.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1428 terms. -/
def A361691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361706.P5557153493187756588

`∑{d}[n+1, A007445(#)]`
-/

namespace A361706.P5557153493187756588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007445 d

end

end A361706.P5557153493187756588

noncomputable section

/-- A361706: Inverse Moebius transform applied twice to primes.

Offset 1, canonical program `A361706.P5557153493187756588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361706 (n : ℕ) : ℤ :=
  A361706.P5557153493187756588.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361708.P9997575083813706434

`∑{d}[n+1, A018252(#)]`
-/

namespace A361708.P9997575083813706434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018252 d

end

end A361708.P9997575083813706434

noncomputable section

/-- A361708: Inverse Moebius transform of nonprimes.

Offset 1, canonical program `A361708.P9997575083813706434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361708 (n : ℕ) : ℤ :=
  A361708.P9997575083813706434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361794.P451113387851091999

`∑{d}[n+1, #*A037213(#)]`
-/

namespace A361794.P451113387851091999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A037213 d

end

end A361794.P451113387851091999

noncomputable section

/-- A361794: Sum of the cubes d^3 of the divisors d satisfying d^2|n.

Offset 1, canonical program `A361794.P451113387851091999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361794 (n : ℕ) : ℤ :=
  A361794.P451113387851091999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361960.P11534871599392896999

`A117671(n)+A004319(n+1)`
-/

namespace A361960.P11534871599392896999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117671 n + A004319 (n + 1)

end

end A361960.P11534871599392896999

noncomputable section

/-- A361960: Total semiperimeter of 2-Fuss-Catalan polyominoes of length 2n.

Offset 1, canonical program `A361960.P11534871599392896999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A361960 (n : ℕ) : ℤ :=
  A361960.P11534871599392896999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A361960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362248.P13210532930817746483

`A028310(n-A352729(n))`
-/

namespace A362248.P13210532930817746483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) - A352729 n).toNat

end

end A362248.P13210532930817746483

noncomputable section

/-- A362248: a(n) is the number of locations 1..n-1 which can reach i=n-1, where jumps from location i to i +- a(i) are permitted (within 1..n-1); a(1)=1. See example.

Offset 1, canonical program `A362248.P13210532930817746483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A362248 (n : ℕ) : ℤ :=
  A362248.P13210532930817746483.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A362248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362358.P8778076653575427930

`A055017(A000045(n))`
-/

namespace A362358.P8778076653575427930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A000045 n).toNat

end

end A362358.P8778076653575427930

noncomputable section

/-- A362358: Alternating sum of digits of the Fibonacci numbers, with a plus sign for the last digit.

Offset 0, canonical program `A362358.P8778076653575427930`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362358 (n : ℕ) : ℤ :=
  A362358.P8778076653575427930.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362358.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362421.P15476662405559426444

`A049419(n+2)*A069513(n+2)`
-/

namespace A362421.P15476662405559426444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 2) * A069513 (n + 2)

end

end A362421.P15476662405559426444

noncomputable section

/-- A362421: Number of nonisomorphic vector spaces consisting of n elements.

Offset 2, canonical program `A362421.P15476662405559426444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A362421 (n : ℕ) : ℤ :=
  A362421.P15476662405559426444.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A362421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362516.P18064261586244731790

`A000225(2*n+3)-A286188(n+1)`
-/

namespace A362516.P18064261586244731790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * n + 3) - A286188 (n + 1)

end

end A362516.P18064261586244731790

noncomputable section

/-- A362516: Number of vertex cuts in the n-gear graph.

Offset 1, canonical program `A362516.P18064261586244731790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A362516 (n : ℕ) : ℤ :=
  A362516.P18064261586244731790.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A362516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362518.P11011924562827999147

`A126646(2*(n+1))-A286184(n+1)`
-/

namespace A362518.P11011924562827999147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (2 * (n + 1)) - A286184 (n + 1)

end

end A362518.P11011924562827999147

noncomputable section

/-- A362518: Number of vertex cuts in the n-helm graph.

Offset 1, canonical program `A362518.P11011924562827999147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A362518 (n : ℕ) : ℤ :=
  A362518.P11011924562827999147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A362518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362680.P7388824721602797657

`A058183(n+1)+A058183(n+1)-A055642(n+1)`
-/

namespace A362680.P7388824721602797657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058183 (n + 1) + (A058183 (n + 1) - A055642 (n + 1))

end

end A362680.P7388824721602797657

noncomputable section

/-- A362680: a(n) is the number of decimal digits in A173426(n).

Offset 1, canonical program `A362680.P7388824721602797657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362680 (n : ℕ) : ℤ :=
  A362680.P7388824721602797657.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362852.P3005074600133069083

`∏{e}[n+1, A076984(#)]`
-/

namespace A362852.P3005074600133069083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A076984 (Nat.factorization (f1 n) p)

end

end A362852.P3005074600133069083

noncomputable section

/-- A362852: The number of divisors of n that are both bi-unitary and exponential.

Offset 1, canonical program `A362852.P3005074600133069083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362852 (n : ℕ) : ℤ :=
  A362852.P3005074600133069083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362952.P3393787318881877540

`A284280(5*n+4)`
-/

namespace A362952.P3393787318881877540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284280 (5 * n + 4)

end

end A362952.P3393787318881877540

noncomputable section

/-- A362952: Sum of divisors of 5*n-1 of form 5*k+2.

Offset 1, canonical program `A362952.P3393787318881877540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A362952 (n : ℕ) : ℤ :=
  A362952.P3393787318881877540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A362952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363025.P17429018715784267111

`A284280(record[xor(3, n)]+n)`
-/

namespace A363025.P17429018715784267111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284280 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n)

end

end A363025.P17429018715784267111

noncomputable section

/-- A363025: Sum of divisors of 5*n-2 of form 5*k+2.

Offset 1, canonical program `A363025.P17429018715784267111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363025 (n : ℕ) : ℤ :=
  A363025.P17429018715784267111.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363026.P9027831155546089255

`A284280(5*n+2)`
-/

namespace A363026.P9027831155546089255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284280 (5 * n + 2)

end

end A363026.P9027831155546089255

noncomputable section

/-- A363026: Sum of divisors of 5*n-3 of form 5*k+2.

Offset 1, canonical program `A363026.P9027831155546089255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363026 (n : ℕ) : ℤ :=
  A363026.P9027831155546089255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363026.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A363101.P6678338457450784001

`∩[A013929(n+1), A177712(n+1)]`
-/

namespace A363101.P6678338457450784001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363101.P6678338457450784001

noncomputable section

/-- A363101: Even numbers that are neither prime powers nor squarefree.

Offset 1, canonical program `A363101.P6678338457450784001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363101 (n : ℕ) : ℤ :=
  (A363101.P6678338457450784001.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363392.P14949598455656480549

`2*n+1-A326052(2*n+1)`
-/

namespace A363392.P14949598455656480549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A326052 (2 * n + 1)

end

end A363392.P14949598455656480549

noncomputable section

/-- A363392: Sum of divisors of 4*n-2 of form 4*k+3.

Offset 1, canonical program `A363392.P14949598455656480549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363392 (n : ℕ) : ℤ :=
  A363392.P14949598455656480549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363392.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A363877.P5318186038474391426

`A363805(A017041(n))`
-/

namespace A363877.P5318186038474391426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (A017041 n).toNat

end

end A363877.P5318186038474391426

noncomputable section

/-- A363877: Number of divisors of 7*n-2 of form 7*k+3.

Offset 1, canonical program `A363877.P5318186038474391426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1428 terms. -/
def A363877 (n : ℕ) : ℤ :=
  A363877.P5318186038474391426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1428 terms. -/
def A363877.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A363887.P16209446916537058336

`A363805(xor(1, 8*n)-(n-1))`
-/

namespace A363887.P16209446916537058336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 ((Nat.xor 1 (8 * n) : ℤ) - ((n : ℤ) - 1)).toNat

end

end A363887.P16209446916537058336

noncomputable section

/-- A363887: Number of divisors of 7*n-5 of form 7*k+3.

Offset 1, canonical program `A363887.P16209446916537058336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A363887 (n : ℕ) : ℤ :=
  A363887.P16209446916537058336.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A363887.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A364092.P9319166033052513940

`A284097(5*n+4)`
-/

namespace A364092.P9319166033052513940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284097 (5 * n + 4)

end

end A364092.P9319166033052513940

noncomputable section

/-- A364092: Sum of divisors of 5*n-1 of form 5*k+1.

Offset 1, canonical program `A364092.P9319166033052513940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364092 (n : ℕ) : ℤ :=
  A364092.P9319166033052513940.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364093.P13201564586205260387

`A284097(4*n+3+n)`
-/

namespace A364093.P13201564586205260387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284097 (4 * n + 3 + n)

end

end A364093.P13201564586205260387

noncomputable section

/-- A364093: Sum of divisors of 5*n-2 of form 5*k+1.

Offset 1, canonical program `A364093.P13201564586205260387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364093 (n : ℕ) : ℤ :=
  A364093.P13201564586205260387.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364094.P11776792797486118328

`A284097(5*n+2)`
-/

namespace A364094.P11776792797486118328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284097 (5 * n + 2)

end

end A364094.P11776792797486118328

noncomputable section

/-- A364094: Sum of divisors of 5*n-3 of form 5*k+1.

Offset 1, canonical program `A364094.P11776792797486118328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364094 (n : ℕ) : ℤ :=
  A364094.P11776792797486118328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364094.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A364100.P3822313946047736029

`A363897(A016873(n)+2)`
-/

namespace A364100.P3822313946047736029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363897 (A016873 n + 2).toNat

end

end A364100.P3822313946047736029

noncomputable section

/-- A364100: Sum of divisors of 5*n-1 of form 5*k+4.

Offset 1, canonical program `A364100.P3822313946047736029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364100 (n : ℕ) : ℤ :=
  A364100.P3822313946047736029.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364100.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A364343.P3896195141050524414

`∑{d}[n+1, A001478(#)*A089594((n+1)/#)]`
-/

namespace A364343.P3896195141050524414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001478 d * A089594 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364343.P3896195141050524414

noncomputable section

/-- A364343: Expansion of Sum_{k>0} k * x^k/(1 + x^k)^3.

Offset 1, canonical program `A364343.P3896195141050524414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364343 (n : ℕ) : ℤ :=
  A364343.P3896195141050524414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364377.P15685045757092586876

`val(A265746(n+1), 3)`
-/

namespace A364377.P15685045757092586876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A265746 (n + 1)).toNat 3

end

end A364377.P15685045757092586876

noncomputable section

/-- A364377: The number of trailing 0's in the representation of n in Jacobsthal greedy base (A265747).

Offset 1, canonical program `A364377.P15685045757092586876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364377 (n : ℕ) : ℤ :=
  (A364377.P15685045757092586876.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364510.P6093659204316355

`A005810(n)²`
-/

namespace A364510.P6093659204316355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005810 n ^ 2

end

end A364510.P6093659204316355

noncomputable section

/-- A364510: a(n) = binomial(4*n, n)^2.

Offset 0, canonical program `A364510.P6093659204316355`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364510 (n : ℕ) : ℤ :=
  A364510.P6093659204316355.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364510.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A364578.P15279271467164295840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A364578 (n : ℕ) : ℤ :=
  A364578.P15279271467164295840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A364578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364614.P12634051005538976662

`eq[0, A005074(n+1)]+1`
-/

namespace A364614.P12634051005538976662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A364614.P12634051005538976662

noncomputable section

/-- A364614: Numbers not divisible by any prime of the form 3*k - 1.

Offset 1, canonical program `A364614.P12634051005538976662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1529 terms. -/
def A364614 (n : ℕ) : ℤ :=
  (A364614.P12634051005538976662.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1529 terms. -/
def A364614.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A365076.P14072161056249924003

`A057660(n+1)+1`
-/

namespace A365076.P14072161056249924003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057660 (n + 1) + 1

end

end A365076.P14072161056249924003

noncomputable section

/-- A365076: Number of length-n binary words x such that the infinite word xxxx... is balanced.

Offset 1, canonical program `A365076.P14072161056249924003`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057660, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365076 (n : ℕ) : ℤ :=
  A365076.P14072161056249924003.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057660, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365076.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A365336.P16748659908514083626

`A033634(A355264(n+1)/(n+1))`
-/

namespace A365336.P16748659908514083626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (SequenceMachineLib.roundAway ((A355264 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A365336.P16748659908514083626

noncomputable section

/-- A365336: The sum of exponentially odd divisors of the square root of the largest square dividing n.

Offset 1, canonical program `A365336.P16748659908514083626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365336 (n : ℕ) : ℤ :=
  A365336.P16748659908514083626.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365336.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A366255.P8099353301085392430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366255 (n : ℕ) : ℤ :=
  (A366255.P8099353301085392430.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366441.P16593969320218165697

`A035218(2*A007310(n+1))`
-/

namespace A366441.P16593969320218165697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (2 * A007310 (n + 1)).toNat

end

end A366441.P16593969320218165697

noncomputable section

/-- A366441: The number of divisors of the 5-rough numbers (A007310).

Offset 1, canonical program `A366441.P16593969320218165697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366441 (n : ℕ) : ℤ :=
  A366441.P16593969320218165697.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366441.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A367870.P3261918350467240858`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245579, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367870 (n : ℕ) : ℤ :=
  A367870.P3261918350467240858.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245579, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367870.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368039.P10383126991191841032

`∏{e}[A013929(n+1), #]`
-/

namespace A368039.P10383126991191841032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A368039.P10383126991191841032

noncomputable section

/-- A368039: The product of exponents of prime factorization of the nonsquarefree numbers.

Offset 1, canonical program `A368039.P10383126991191841032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368039 (n : ℕ) : ℤ :=
  (A368039.P10383126991191841032.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368040.P1470060828506314969

`A057521(A013929(n+1))`
-/

namespace A368040.P1470060828506314969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A013929 (n + 1)).toNat

end

end A368040.P1470060828506314969

noncomputable section

/-- A368040: The powerful part of the nonsquarefree numbers.

Offset 1, canonical program `A368040.P1470060828506314969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6421 terms. -/
def A368040 (n : ℕ) : ℤ :=
  A368040.P1470060828506314969.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6421 terms. -/
def A368040.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A368470.P5926755419945979817

`A322483(n+1)/A367987(n+1)`
-/

namespace A368470.P5926755419945979817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322483 (n + 1) : ℚ) / (A367987 (n + 1) : ℚ)

end

end A368470.P5926755419945979817

noncomputable section

/-- A368470: a(n) is the number of exponentially odd divisors of the largest unitary divisor of n that is an exponentially odd number (A268335).

Offset 1, canonical program `A368470.P5926755419945979817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368470 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A368470.P5926755419945979817.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368470.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A368567.P4927573686977938579

`A065942(n+1)/A081181(n)*A065942(n)`
-/

namespace A368567.P4927573686977938579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065942 (n + 1) : ℚ) / (A081181 n : ℚ) * (A065942 n : ℚ)

end

end A368567.P4927573686977938579

noncomputable section

/-- A368567: Number of Young tableaux of shape [n, floor(n/2)].

Offset 0, canonical program `A368567.P4927573686977938579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A368567 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A368567.P4927573686977938579.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A368567.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A368649.P1606489519553206658

`∑[A006340(n)+2]`
-/

namespace A368649.P1606489519553206658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006340 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368649.P1606489519553206658

noncomputable section

/-- A368649: a(n) = round(n*rho), where rho = (5+sqrt(5))/2.

Offset 1, canonical program `A368649.P1606489519553206658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368649 (n : ℕ) : ℤ :=
  A368649.P1606489519553206658.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368649.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A368713.P8093218634620274143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368713 (n : ℕ) : ℤ :=
  A368713.P8093218634620274143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368713.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A369308.P10334454097414286885

`Δ[A113215(n)]`
-/

namespace A369308.P10334454097414286885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369308.P10334454097414286885

noncomputable section

/-- A369308: The number of square divisors d of n such that n/d is also a square.

Offset 1, canonical program `A369308.P10334454097414286885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369308 (n : ℕ) : ℤ :=
  A369308.P10334454097414286885.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369308.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A370565.P7797015782535462372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370565 (n : ℕ) : ℤ :=
  A370565.P7797015782535462372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370565.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A371003.P1518712515036524633

`A352027(n+1)-A006011(n)`
-/

namespace A371003.P1518712515036524633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352027 (n + 1) - A006011 n

end

end A371003.P1518712515036524633

noncomputable section

/-- A371003: a(n) = binomial(2*n-1,n) - binomial(n,2)*(binomial(n-1,2) + 2) - 1.

Offset 1, canonical program `A371003.P1518712515036524633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A371003 (n : ℕ) : ℤ :=
  A371003.P1518712515036524633.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A371003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371017.P10572302603152977507

`A002802(n)*A008574(A004766(2*n+1))`
-/

namespace A371017.P10572302603152977507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002802 n * A008574 (A004766 (2 * n + 1)).toNat

end

end A371017.P10572302603152977507

noncomputable section

/-- A371017: The second row of generalized Knuth's old sum.

Offset 1, canonical program `A371017.P10572302603152977507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A371017 (n : ℕ) : ℤ :=
  A371017.P10572302603152977507.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A371017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371239.P1240619195337993519

`filter[A032924(n+1), A359377(#)]`
-/

namespace A371239.P1240619195337993519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A371239.P1240619195337993519

noncomputable section

/-- A371239: Squarefree numbers that are zeroless in base 3 (A032924).

Offset 1, canonical program `A371239.P1240619195337993519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1703 terms. -/
def A371239 (n : ℕ) : ℤ :=
  A371239.P1240619195337993519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1703 terms. -/
def A371239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371355.P160750087375991211

`A084359(Δ[n²])`
-/

namespace A371355.P160750087375991211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084359 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A371355.P160750087375991211

noncomputable section

/-- A371355: Minimum diameter of a Cayley graph on the cyclic group Z_n with two generators.

Offset 1, canonical program `A371355.P160750087375991211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A371355 (n : ℕ) : ℤ :=
  A371355.P160750087375991211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A371355.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A372035.P12237478044521497006

`A036453(n+1)*A371888(n)`
-/

namespace A372035.P12237478044521497006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A371888 n

end

end A372035.P12237478044521497006

noncomputable section

/-- A372035: G.f. A(x) satisfies A(x) = ( 1 + 4*x*A(x)/(1 - x) )^(1/2).

Offset 0, canonical program `A372035.P12237478044521497006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A372035 (n : ℕ) : ℤ :=
  A372035.P12237478044521497006.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A372035.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A372441.P3934956740215171793

`A000120(n+1)-A252736(2*(n+1))`
-/

namespace A372441.P3934956740215171793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - A252736 (2 * (n + 1))

end

end A372441.P3934956740215171793

noncomputable section

/-- A372441: Number of binary indices (binary weight) of n minus number of prime indices (bigomega) of n.

Offset 1, canonical program `A372441.P3934956740215171793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A372441 (n : ℕ) : ℤ :=
  A372441.P3934956740215171793.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A372441.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A372621.P2752867004520561479

`∑[A195459(n+1)]`
-/

namespace A372621.P2752867004520561479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372621.P2752867004520561479

noncomputable section

/-- A372621: a(n) = (1/2) * Sum_{k=1..n} phi(3*k).

Offset 1, canonical program `A372621.P2752867004520561479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372621 (n : ℕ) : ℤ :=
  A372621.P2752867004520561479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372637.P315727157468014530

`∑[∑{d}[n+1, #*A355688((n+1)/#)]]`
-/

namespace A372637.P315727157468014530
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * A355688 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372637.P315727157468014530

noncomputable section

/-- A372637: a(n) = (1/2) * Sum_{k=1..n} phi(6*k).

Offset 1, canonical program `A372637.P315727157468014530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372637 (n : ℕ) : ℤ :=
  A372637.P315727157468014530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372671.P2824817708253662645

`∑{d}[n+1, #*A355688((n+1)/#)]`
-/

namespace A372671.P2824817708253662645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A355688 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372671.P2824817708253662645

noncomputable section

/-- A372671: a(n) = phi(6 * n)/2.

Offset 1, canonical program `A372671.P2824817708253662645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372671 (n : ℕ) : ℤ :=
  A372671.P2824817708253662645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372751.P10394242505990243185

`A191484(n)+A111746(n)`
-/

namespace A372751.P10394242505990243185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191484 n + A111746 n

end

end A372751.P10394242505990243185

noncomputable section

/-- A372751: a(n) = (3*n^5 + 4*n^3 - n)/6.

Offset 1, canonical program `A372751.P10394242505990243185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372751 (n : ℕ) : ℤ :=
  A372751.P10394242505990243185.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372758.P17732409241303040649

`A136495(n+1)-n`
-/

namespace A372758.P17732409241303040649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (n + 1) - (n : ℤ)

end

end A372758.P17732409241303040649

noncomputable section

/-- A372758: 5th prepended column of the 3-Zeckendorf array (A136189).

Offset 1, canonical program `A372758.P17732409241303040649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372758 (n : ℕ) : ℤ :=
  A372758.P17732409241303040649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372758.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A373059.P5067458892054263835

`∑{d}[n+1, A034714(#)*A101035((n+1)/#)]`
-/

namespace A373059.P5067458892054263835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034714 d * A101035 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373059.P5067458892054263835

noncomputable section

/-- A373059: a(n) = Sum_{1 <= x_1, x_2 <= n} gcd(x_1, n)/gcd(x_1, x_2, n).

Offset 1, canonical program `A373059.P5067458892054263835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373059 (n : ℕ) : ℤ :=
  A373059.P5067458892054263835.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373060.P5015462163291241472

`∑{d}[n+1, A053191(#)*A350156((n+1)/#)]`
-/

namespace A373060.P5015462163291241472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A350156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373060.P5015462163291241472

noncomputable section

/-- A373060: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} gcd(x_1, n)/gcd(x_1, x_2, x_3, n).

Offset 1, canonical program `A373060.P5015462163291241472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373060 (n : ℕ) : ℤ :=
  A373060.P5015462163291241472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373060.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A373154.P41254786666242686

`abs(A355688(n+1))`
-/

namespace A373154.P41254786666242686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355688 (n + 1)|

end

end A373154.P41254786666242686

noncomputable section

/-- A373154: a(n) = 1 if 6*n is squarefree, otherwise 0.

Offset 1, canonical program `A373154.P41254786666242686`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355688, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373154 (n : ℕ) : ℤ :=
  A373154.P41254786666242686.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355688, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373154.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373246.P16217908372987962355

`gcd(n+1, A181819(n+1))`
-/

namespace A373246.P16217908372987962355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A181819 (n + 1))

end

end A373246.P16217908372987962355

noncomputable section

/-- A373246: Greatest common divisor of n and its prime shadow: a(n) = gcd(n, A181819(n)).

Offset 1, canonical program `A373246.P16217908372987962355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373246 (n : ℕ) : ℤ :=
  (A373246.P16217908372987962355.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373246.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A373335.P16851351623866250956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373335 (n : ℕ) : ℤ :=
  A373335.P16851351623866250956.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373335.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A373383.P17958674046333590932

`A152618(A373368(n+1))%3`
-/

namespace A373383.P17958674046333590932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152618 (A373368 (n + 1)).toNat) 3

end

end A373383.P17958674046333590932

noncomputable section

/-- A373383: a(n) = 1 if n and A059975(n) are both multiples of 3, otherwise 0, where A059975 is fully additive with a(p) = p-1.

Offset 1, canonical program `A373383.P17958674046333590932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373383 (n : ℕ) : ℤ :=
  A373383.P17958674046333590932.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373567.P8792759156015909916

`A063524(n)+A006356(n)`
-/

namespace A373567.P8792759156015909916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A006356 n

end

end A373567.P8792759156015909916

noncomputable section

/-- A373567: Expansion of x + 1/(-x - 1/(-x - 1/(-x + 1))).

Offset 0, canonical program `A373567.P8792759156015909916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. -/
def A373567 (n : ℕ) : ℤ :=
  A373567.P8792759156015909916.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. -/
def A373567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373568.P17637258308897560423

`A063524(n)+A006357(n)`
-/

namespace A373568.P17637258308897560423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A006357 n

end

end A373568.P17637258308897560423

noncomputable section

/-- A373568: Expansion of x - 1/(x - 1/(x - 1/(x - 1/(x + 1)))).

Offset 0, canonical program `A373568.P17637258308897560423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A373568 (n : ℕ) : ℤ :=
  A373568.P17637258308897560423.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A373568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373569.P14783623688406486995

`A063524(n)+A006358(n)`
-/

namespace A373569.P14783623688406486995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A006358 n

end

end A373569.P14783623688406486995

noncomputable section

/-- A373569: Expansion of x + 1/(-x - 1/(-x - 1/(-x - 1/(-x - 1/(-x + 1))))).

Offset 0, canonical program `A373569.P14783623688406486995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. -/
def A373569 (n : ℕ) : ℤ :=
  A373569.P14783623688406486995.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. -/
def A373569.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A373931.P16053803782317815228

`∑[∑[A373907(n)]]`
-/

namespace A373931.P16053803782317815228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373907 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373931.P16053803782317815228

noncomputable section

/-- A373931: Number of compositions of 7*n-5 into parts 1 and 7.

Offset 1, canonical program `A373931.P16053803782317815228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A373931 (n : ℕ) : ℤ :=
  A373931.P16053803782317815228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A373931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373932.P1343878366697379659

`∑[A373907(n)]`
-/

namespace A373932.P1343878366697379659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373932.P1343878366697379659

noncomputable section

/-- A373932: Number of compositions of 7*n-6 into parts 1 and 7.

Offset 1, canonical program `A373932.P1343878366697379659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A373932 (n : ℕ) : ℤ :=
  A373932.P1343878366697379659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A373932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373960.P3533744564774357452

`∑[A371125(n)]`
-/

namespace A373960.P3533744564774357452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373960.P3533744564774357452

noncomputable section

/-- A373960: Number of compositions of 6*n-5 into parts 1 and 6.

Offset 1, canonical program `A373960.P3533744564774357452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A373960 (n : ℕ) : ℤ :=
  A373960.P3533744564774357452.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A373960.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A374206.P7090791217448511841

`val(A113177(n+2), 2)`
-/

namespace A374206.P7090791217448511841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A113177 (n + 2)).toNat 2

end

end A374206.P7090791217448511841

noncomputable section

/-- A374206: The 2-adic valuation of A113177(n), where A113177 is fully additive with a(p) = Fibonacci(p).

Offset 2, canonical program `A374206.P7090791217448511841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 485 terms. -/
def A374206 (n : ℕ) : ℤ :=
  (A374206.P7090791217448511841.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 485 terms. -/
def A374206.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 2, canonical program `A374207.P10474320584513689055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 485 terms. -/
def A374207 (n : ℕ) : ℤ :=
  (A374207.P10474320584513689055.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 485 terms. -/
def A374207.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 2, canonical program `A374208.P8868820187613092688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 485 terms. -/
def A374208 (n : ℕ) : ℤ :=
  (A374208.P8868820187613092688.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 485 terms. -/
def A374208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374223.P1912252743116904639

`eq[1, A374222(n+1)]+1`
-/

namespace A374223.P1912252743116904639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A374223.P1912252743116904639

noncomputable section

/-- A374223: Numbers k such that sigma(k) and sopfr(k) are both multiples of 3, where sigma is the sum of divisors, and sopfr is the sum of prime factors with repetition.

Offset 1, canonical program `A374223.P1912252743116904639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374223 (n : ℕ) : ℤ :=
  (A374223.P1912252743116904639.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374223.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A374325.P10189443371500912035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374325 (n : ℕ) : ℤ :=
  A374325.P10189443371500912035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374325.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A374522.P9971017826294505831

`n*(A005810(n)-1)`
-/

namespace A374522.P9971017826294505831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A005810 n - 1)

end

end A374522.P9971017826294505831

noncomputable section

/-- A374522: a(n) = n*(binomial(4*n, n) - 1).

Offset 0, canonical program `A374522.P9971017826294505831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A374522 (n : ℕ) : ℤ :=
  A374522.P9971017826294505831.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A374522.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A374586.P1168262897995380025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374586 (n : ℕ) : ℤ :=
  A374586.P1168262897995380025.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374721.P6750294381947697175

`A167993(n)+A032120(n)`
-/

namespace A374721.P6750294381947697175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167993 n + A032120 n

end

end A374721.P6750294381947697175

noncomputable section

/-- A374721: Number of nonisomorphic spanning trees of the triangular snake graph nC_3.

Offset 1, canonical program `A374721.P6750294381947697175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A374721 (n : ℕ) : ℤ :=
  A374721.P6750294381947697175.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A374721.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A375265.P16436060166849004059

`A006370(A186101(n+1))`
-/

namespace A375265.P16436060166849004059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A186101 (n + 1)).toNat

end

end A375265.P16436060166849004059

noncomputable section

/-- A375265: a(n) = n/3 if n mod 3 = 0; otherwise a(n) = n/2 if n mod 2 = 0; otherwise a(n) = 3*n + 1.

Offset 1, canonical program `A375265.P16436060166849004059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A375265 (n : ℕ) : ℤ :=
  A375265.P16436060166849004059.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A375265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375360.P6866994802689489142

`A063196(A067132(n+1))`
-/

namespace A375360.P6866994802689489142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (A067132 (n + 1)).toNat

end

end A375360.P6866994802689489142

noncomputable section

/-- A375360: The maximum exponent in the prime factorization of the smallest exponentially odd number that is divisible by n.

Offset 1, canonical program `A375360.P6866994802689489142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375360 (n : ℕ) : ℤ :=
  A375360.P6866994802689489142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375365.P8795460823517116936

`A375364(n)-a(n-1)` with `a(0)=1`
-/

namespace A375365.P8795460823517116936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A375364 n - a (n - 1)

end

end A375365.P8795460823517116936

noncomputable section

/-- A375365: Expansion of 1/( (1 + x)^2 * (1 - x^2*(1 + x)^3) ).

Offset 0, canonical program `A375365.P8795460823517116936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 364 terms. -/
def A375365 (n : ℕ) : ℤ :=
  A375365.P8795460823517116936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 364 terms. -/
def A375365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375373.P15487898001832816935

`A375372(n)-a(n-1)` with `a(0)=1`
-/

namespace A375373.P15487898001832816935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A375372 n - a (n - 1)

end

end A375373.P15487898001832816935

noncomputable section

/-- A375373: Expansion of 1/( (1 + x)^2 * (1 - x^2*(1 + x)^2) ).

Offset 0, canonical program `A375373.P15487898001832816935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. -/
def A375373 (n : ℕ) : ℤ :=
  A375373.P15487898001832816935.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. -/
def A375373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375431.P1013115202346062773

`A048766(18*A051903(n+1))`
-/

namespace A375431.P1013115202346062773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (18 * A051903 (n + 1)).toNat

end

end A375431.P1013115202346062773

noncomputable section

/-- A375431: The indices of the terms of A375430 in the Fibonacci sequence.

Offset 1, canonical program `A375431.P1013115202346062773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375431 (n : ℕ) : ℤ :=
  A375431.P1013115202346062773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375431.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A376141.P5802281708594141652

`A051903(A369020(n+1)+1)`
-/

namespace A376141.P5802281708594141652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A369020 (n + 1) + 1).toNat

end

end A376141.P5802281708594141652

noncomputable section

/-- A376141: The maximum exponent in the prime factorization of the numbers k such that k and k+1 have the same maximum exponent in their prime factorization.

Offset 1, canonical program `A376141.P5802281708594141652`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A369020, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376141 (n : ℕ) : ℤ :=
  A376141.P5802281708594141652.a (n - 1)

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

/-! ## A376759.P11967866361135459826

`A307912(n+1)+A057427(n)`
-/

namespace A376759.P11967866361135459826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307912 (n + 1) + A057427 n

end

end A376759.P11967866361135459826

noncomputable section

/-- A376759: Number of composite numbers c with n < c <= 2*n.

Offset 1, canonical program `A376759.P11967866361135459826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376759 (n : ℕ) : ℤ :=
  A376759.P11967866361135459826.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376759.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A377879.P13907660082232775425

`(n+1)²+(n+1)²-A065764(n+1)`
-/

namespace A377879.P13907660082232775425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (((n + 1) ^ 2 : ℤ) - A065764 (n + 1))

end

end A377879.P13907660082232775425

noncomputable section

/-- A377879: Deficiency of squares: a(n) = 2n^2 - sigma(n^2).

Offset 1, canonical program `A377879.P13907660082232775425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377879 (n : ℕ) : ℤ :=
  A377879.P13907660082232775425.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377879.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A378502.P16744939667565733858

`A378497(n+1)+A191597(n)`
-/

namespace A378502.P16744939667565733858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378497 (n + 1) + A191597 n

end

end A378502.P16744939667565733858

noncomputable section

/-- A378502: a(n) is the number whose base-4 digits are 1 followed by the first n-1 terms of the periodic sequence with initial period 3,2,0.

Offset 1, canonical program `A378502.P16744939667565733858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A378502 (n : ℕ) : ℤ :=
  A378502.P16744939667565733858.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A378502.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A378986.P7102707593981778890

`1-A005408(A176095(n+1))`
-/

namespace A378986.P7102707593981778890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005408 (A176095 (n + 1)).toNat

end

end A378986.P7102707593981778890

noncomputable section

/-- A378986: a(n) = 2*phi(2*n) - 2*n, where phi is Euler totient function.

Offset 1, canonical program `A378986.P7102707593981778890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378986 (n : ℕ) : ℤ :=
  A378986.P7102707593981778890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378999.P8367478215354539234

`val(A065764(n+1)+1, 2)`
-/

namespace A378999.P8367478215354539234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A065764 (n + 1) + 1).toNat 2

end

end A378999.P8367478215354539234

noncomputable section

/-- A378999: Number of trailing 1-bits in the binary representation of sigma(n^2).

Offset 1, canonical program `A378999.P8367478215354539234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378999 (n : ℕ) : ℤ :=
  (A378999.P8367478215354539234.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378999.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A380024.P6479371624975351947

`A000302(n)-A081909(n)`
-/

namespace A380024.P6479371624975351947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - A081909 n

end

end A380024.P6479371624975351947

noncomputable section

/-- A380024: a(n) = 4^n - 3^n - binomial(n,2)*3^(n-2).

Offset 0, canonical program `A380024.P6479371624975351947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A380024 (n : ℕ) : ℤ :=
  A380024.P6479371624975351947.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A380024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380110.P7376049395763793072

`n-xor(n, A163241(n))`
-/

namespace A380110.P7376049395763793072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor (n : ℤ) (A163241 n)

end

end A380110.P7376049395763793072

noncomputable section

/-- A380110: In the base 4 expansion of n: map 0->0, 1->1, 2->1, 3->2.

Offset 0, canonical program `A380110.P7376049395763793072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380110 (n : ℕ) : ℤ :=
  A380110.P7376049395763793072.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380110.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A380550.P7718080083690173409

`eq[A079978(n), A095808(n+1)]`
-/

namespace A380550.P7718080083690173409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095808 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380550.P7718080083690173409

noncomputable section

/-- A380550: List of numbers not of the form i + 3*j + 4*i*j for i, j >= 1.

Offset 1, canonical program `A380550.P7718080083690173409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2899 terms. -/
def A380550 (n : ℕ) : ℤ :=
  (A380550.P7718080083690173409.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2899 terms. -/
def A380550.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A381319.P5450050950823913120

`A348259(n+2)+2`
-/

namespace A381319.P5450050950823913120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (n + 2) + 2

end

end A381319.P5450050950823913120

noncomputable section

/-- A381319: Order of linear recurrence with constant coefficients of solutions of k satisfying k^(n-1) == 1 (mod n^2) for a given n.

Offset 2, canonical program `A381319.P5450050950823913120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381319 (n : ℕ) : ℤ :=
  A381319.P5450050950823913120.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381319.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A382630.P1089145758881786009

`floor(A078152(A028310(n))/2)`
-/

namespace A382630.P1089145758881786009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078152 (A028310 n).toNat : ℚ) / 2⌋

end

end A382630.P1089145758881786009

noncomputable section

/-- A382630: a(n) is the number of ways that n can be written as b+c*d, where b, c and d are positive integers and b < c < d.

Offset 0, canonical program `A382630.P1089145758881786009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382630 (n : ℕ) : ℤ :=
  A382630.P1089145758881786009.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382744.P11948343297158825481

`comp[(n+1)*A062157(val(n+1, 5))]`
-/

namespace A382744.P11948343297158825481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A062157 (SequenceMachineLib.valuation (n + 1) 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382744.P11948343297158825481

noncomputable section

/-- A382744: If k appears, 5*k does not.

Offset 1, canonical program `A382744.P11948343297158825481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382744 (n : ℕ) : ℤ :=
  (A382744.P11948343297158825481.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382789.P16110672853359686492

`∑[∑{e}[1-A000040(A028310(n)), #]]`
-/

namespace A382789.P16110672853359686492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000040 (A028310 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382789.P16110672853359686492

noncomputable section

/-- A382789: The number of prime factors of Euler phi of the n-th primorial number, counted with multiplicity.

Offset 0, canonical program `A382789.P16110672853359686492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382789 (n : ℕ) : ℤ :=
  (A382789.P16110672853359686492.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382789.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A382965.P3463292160349447091

`∑{e}[A067259(n+1), A004526(#)]`
-/

namespace A382965.P3463292160349447091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A004526 (Nat.factorization (f1 n).natAbs p)

end

end A382965.P3463292160349447091

noncomputable section

/-- A382965: The number of non-unitary prime divisors of the n-th cubefree number that is not squarefree.

Offset 1, canonical program `A382965.P3463292160349447091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382965 (n : ℕ) : ℤ :=
  A382965.P3463292160349447091.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382965.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A383456.P11716198456630283490

`(n+3)*A002057(n)`
-/

namespace A383456.P11716198456630283490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A002057 n

end

end A383456.P11716198456630283490

noncomputable section

/-- A383456: a(n) = 2*binomial(2*n+4,n)*(n+3)/(n+2).

Offset 0, canonical program `A383456.P11716198456630283490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A383456 (n : ℕ) : ℤ :=
  A383456.P11716198456630283490.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A383456.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A383795.P2583133115178924486

`∑{d}[n+1, A007429(#)*A061019((n+1)/#)]`
-/

namespace A383795.P2583133115178924486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A061019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A383795.P2583133115178924486

noncomputable section

/-- A383795: Dirichlet g.f.: zeta(2*s-2) * zeta(s)^2.

Offset 1, canonical program `A383795.P2583133115178924486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383795 (n : ℕ) : ℤ :=
  A383795.P2583133115178924486.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383795.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A384042.P646555280578403795

`A186101(A026741(n+1))`
-/

namespace A384042.P646555280578403795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 (A026741 (n + 1)).toNat

end

end A384042.P646555280578403795

noncomputable section

/-- A384042: The number of integers k from 1 to n such that gcd(n,k) is a 5-rough number (A007310).

Offset 1, canonical program `A384042.P646555280578403795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384042 (n : ℕ) : ℤ :=
  A384042.P646555280578403795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384055.P8672205794248642613

`A129527(A026741(n+1))`
-/

namespace A384055.P8672205794248642613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129527 (A026741 (n + 1)).toNat

end

end A384055.P8672205794248642613

noncomputable section

/-- A384055: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is odd.

Offset 1, canonical program `A384055.P8672205794248642613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384055 (n : ℕ) : ℤ :=
  A384055.P8672205794248642613.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384055.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A384423.P12075957193450750820

`∑{e}[n+1, A047994(#)]`
-/

namespace A384423.P12075957193450750820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A047994 (Nat.factorization (f1 n) p)

end

end A384423.P12075957193450750820

noncomputable section

/-- A384423: The number of prime powers (not including 1) p^e that divide n such that e is unitarily coprime to the p-adic valuation of n.

Offset 1, canonical program `A384423.P12075957193450750820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384423 (n : ℕ) : ℤ :=
  A384423.P12075957193450750820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384423.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A385148.P18437845061385765777

`A178601(2*(n+1))`
-/

namespace A385148.P18437845061385765777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178601 (2 * (n + 1))

end

end A385148.P18437845061385765777

noncomputable section

/-- A385148: a(n) = A001065(A346878(n)).

Offset 1, canonical program `A385148.P18437845061385765777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A385148 (n : ℕ) : ℤ :=
  A385148.P18437845061385765777.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A385148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385195.P13869607100043770004

`A138191(n+1)*A047994(n+1)`
-/

namespace A385195.P13869607100043770004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138191 (n + 1) * A047994 (n + 1)

end

end A385195.P13869607100043770004

noncomputable section

/-- A385195: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is either 1 or 2.

Offset 1, canonical program `A385195.P13869607100043770004`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385195 (n : ℕ) : ℤ :=
  A385195.P13869607100043770004.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385195.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385560.P9756321047569870502

`A165743(n+1)*A385556(n+1)`
-/

namespace A385560.P9756321047569870502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165743 (n + 1) * A385556 (n + 1)

end

end A385560.P9756321047569870502

noncomputable section

/-- A385560: Period of {binomial(N,9) mod n: N in Z}. Also, period of {binomial(N,10) mod n: N in Z}.

Offset 1, canonical program `A385560.P9756321047569870502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385560 (n : ℕ) : ℤ :=
  A385560.P9756321047569870502.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385560.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A386206.P108020433531004343

`A292564(n)-2*n`
-/

namespace A386206.P108020433531004343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292564 n - (2 * n : ℤ)

end

end A386206.P108020433531004343

noncomputable section

/-- A386206: Triangle read by rows: T(n,k) = n^2 - k, with 0 <= k <= n.

Offset 0, canonical program `A386206.P108020433531004343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386206 (n : ℕ) : ℤ :=
  A386206.P108020433531004343.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386206.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A386536.P16217136733393782285

`val(A067259(n+1), 2)`
-/

namespace A386536.P16217136733393782285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A067259 (n + 1)).toNat 2

end

end A386536.P16217136733393782285

noncomputable section

/-- A386536: Exponent of the highest power of 2 dividing the n-th number that is cubefree but not squarefree.

Offset 1, canonical program `A386536.P16217136733393782285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386536 (n : ℕ) : ℤ :=
  (A386536.P16217136733393782285.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386536.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A387209.P14191999222405322353

`A025828(n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A387209.P14191999222405322353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A025828 n + a (n - 2)

end

end A387209.P14191999222405322353

noncomputable section

/-- A387209: Number of convex polygons with perimeter n on the regular triangular lattice, not counting rotations and reflections as distinct.

Offset 0, canonical program `A387209.P14191999222405322353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387209 (n : ℕ) : ℤ :=
  A387209.P14191999222405322353.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387209.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A387237.P8165464091070110092

`∑[∑[∑[A387228(n)]]]`
-/

namespace A387237.P8165464091070110092
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387228 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387237.P8165464091070110092

noncomputable section

/-- A387237: Expansion of 1/((1-x) * (1-5*x))^(5/2).

Offset 0, canonical program `A387237.P8165464091070110092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A387237 (n : ℕ) : ℤ :=
  A387237.P8165464091070110092.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A387237.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A387728.P1733724163278442984

`lt[A387726(n+1), n+1]+1`
-/

namespace A387728.P1733724163278442984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387726 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A387728.P1733724163278442984

noncomputable section

/-- A387728: Numbers k such that the powerful part of the sum of divisors of k (A387726) is less than k.

Offset 1, canonical program `A387728.P1733724163278442984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9195 terms. -/
def A387728 (n : ℕ) : ℤ :=
  (A387728.P1733724163278442984.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9195 terms. -/
def A387728.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A389471.P8174744093872280267

`∑[A257633(n)]`
-/

namespace A389471.P8174744093872280267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389471.P8174744093872280267

noncomputable section

/-- A389471: a(n) = Sum_{k=0..n} binomial(4*k+2,k).

Offset 0, canonical program `A389471.P8174744093872280267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A389471 (n : ℕ) : ℤ :=
  A389471.P8174744093872280267.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A389471.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A389947.P9755762612582178396

`A332785(n+1)²`
-/

namespace A389947.P9755762612582178396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1) ^ 2

end

end A389947.P9755762612582178396

noncomputable section

/-- A389947: Squares of nonsquarefree numbers k that are not squareful.

Offset 1, canonical program `A389947.P9755762612582178396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389947 (n : ℕ) : ℤ :=
  A389947.P9755762612582178396.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390045.P8632612084841814715

`Δ[A099132(n+5)]`
-/

namespace A390045.P8632612084841814715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099132 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A390045.P8632612084841814715

noncomputable section

/-- A390045: Expansion of 1 / ((1-x)^5 - x^6).

Offset 0, canonical program `A390045.P8632612084841814715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 362 terms. -/
def A390045 (n : ℕ) : ℤ :=
  A390045.P8632612084841814715.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 362 terms. -/
def A390045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390111.P6313739216418206930

`A189176(n+1)+A000108(n+2)`
-/

namespace A390111.P6313739216418206930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189176 (n + 1) + A000108 (n + 2)

end

end A390111.P6313739216418206930

noncomputable section

/-- A390111: a(n) is the total number of vertices of degree 1 in Catalan word grid graphs with n parts.

Offset 2, canonical program `A390111.P6313739216418206930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A390111 (n : ℕ) : ℤ :=
  A390111.P6313739216418206930.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A390111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390411.P2957758563450737005

`∑[A052203(n)]`
-/

namespace A390411.P2957758563450737005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390411.P2957758563450737005

noncomputable section

/-- A390411: a(n) = Sum_{k=0..n} binomial(4*k+1,k).

Offset 0, canonical program `A390411.P2957758563450737005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A390411 (n : ℕ) : ℤ :=
  A390411.P2957758563450737005.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A390411.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A390541.P3504011345047521333

`A045721(n)-a(n-1)` with `a(0)=1`
-/

namespace A390541.P3504011345047521333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045721 n - a (n - 1)

end

end A390541.P3504011345047521333

noncomputable section

/-- A390541: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(3*k+1,k).

Offset 0, canonical program `A390541.P3504011345047521333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A390541 (n : ℕ) : ℤ :=
  A390541.P3504011345047521333.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A390541.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391105.P4035589622233310174

`A005810(n)-A005809(n)`
-/

namespace A391105.P4035589622233310174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005810 n - A005809 n

end

end A391105.P4035589622233310174

noncomputable section

/-- A391105: a(n) = binomial(4*n,n) - binomial(3*n,n).

Offset 0, canonical program `A391105.P4035589622233310174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A391105 (n : ℕ) : ℤ :=
  A391105.P4035589622233310174.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A391105.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391682.P12413487597952990575

`∑[A079289(n)]`
-/

namespace A391682.P12413487597952990575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391682.P12413487597952990575

noncomputable section

/-- A391682: Number of integer compositions of n that are the first sums of more than one nonnegative sequence.

Offset 1, canonical program `A391682.P12413487597952990575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A391682 (n : ℕ) : ℤ :=
  A391682.P12413487597952990575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A391682.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A392332.P10626276045092877156

`A256562(n+1)-A091194(n+1)`
-/

namespace A392332.P10626276045092877156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256562 (n + 1) - A091194 (n + 1)

end

end A392332.P10626276045092877156

noncomputable section

/-- A392332: a(n) is the excess of deficient numbers over abundant numbers in the first n positive integers.

Offset 1, canonical program `A392332.P10626276045092877156`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091194, A256562, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392332 (n : ℕ) : ℤ :=
  A392332.P10626276045092877156.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091194, A256562, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392332.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A392564.P9319350472348829098

`A332785(n+1)^3`
-/

namespace A392564.P9319350472348829098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1) ^ 3

end

end A392564.P9319350472348829098

noncomputable section

/-- A392564: Cubes of numbers that are neither squarefree nor squareful.

Offset 1, canonical program `A392564.P9319350472348829098`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332785, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392564 (n : ℕ) : ℤ :=
  A392564.P9319350472348829098.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332785, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392564.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A393662.P8345907344821909065

`A393661(n+3)+A008776(n)`
-/

namespace A393662.P8345907344821909065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393661 (n + 3) + A008776 n

end

end A393662.P8345907344821909065

noncomputable section

/-- A393662: A sequence arising from the 3-Bratteli diagram, a(n) = 3^(n - 3)*(16*n - 15), n>=3.

Offset 3, canonical program `A393662.P8345907344821909065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A393662 (n : ℕ) : ℤ :=
  A393662.P8345907344821909065.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A393662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393719.P4028365157730979022

`Δ[A006325(∑[A028310(n)])]`
-/

namespace A393719.P4028365157730979022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A393719.P4028365157730979022

noncomputable section

/-- A393719: Sum of next n octahedral numbers (A005900).

Offset 1, canonical program `A393719.P4028365157730979022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A393719 (n : ℕ) : ℤ :=
  A393719.P4028365157730979022.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A393719.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A393907.P7757244301669931271

`floor((A092055(n)+1)/2)`
-/

namespace A393907.P7757244301669931271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A092055 n + 1 : ℚ) / 2⌋

end

end A393907.P7757244301669931271

noncomputable section

/-- A393907: Number of planar embedding isomorphism classes of the n-Hanoi graph.

Offset 1, canonical program `A393907.P7757244301669931271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A393907 (n : ℕ) : ℤ :=
  A393907.P7757244301669931271.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A393907.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A394789.P13559910968845003337

`∑[A353670(n+1)]`
-/

namespace A394789.P13559910968845003337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394789.P13559910968845003337

noncomputable section

/-- A394789: Number of positive integers <= n with exactly two odd divisors.

Offset 1, canonical program `A394789.P13559910968845003337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394789 (n : ℕ) : ℤ :=
  A394789.P13559910968845003337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394789.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A395582.P2622982355169417460

`A080081(a(n-1))+A080081(a(n-2))` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A395582.P2622982355169417460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  A080081 (a (n - 1)).toNat + A080081 (a (n - 2)).toNat

end

end A395582.P2622982355169417460

noncomputable section

/-- A395582: a(n) = floor(r*a(n-1)) + floor(r*a(n-2)), a(0) = 0, a(1) = 1 and r = (3 + sqrt(13))/2.

Offset 0, canonical program `A395582.P2622982355169417460`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080081, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395582 (n : ℕ) : ℤ :=
  A395582.P2622982355169417460.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080081, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395582.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395585.P1910700753436105600

`A080081(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A395585.P1910700753436105600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A080081 (a (n - 1) + a (n - 2)).toNat

end

end A395585.P1910700753436105600

noncomputable section

/-- A395585: a(n) = floor(r*(a(n-1) + a(n-2))), a(0) = 0, a(1) = 1 and r = (3 + sqrt(13))/2.

Offset 0, canonical program `A395585.P1910700753436105600`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080081, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395585 (n : ℕ) : ℤ :=
  A395585.P1910700753436105600.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080081, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395585.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A397085.P2550365972256081373

`A062157(A053186(n))`
-/

namespace A397085.P2550365972256081373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A053186 n).toNat

end

end A397085.P2550365972256081373

noncomputable section

/-- A397085: a(n) = (-1)^(n-floor(sqrt(n))^2-1) if n is not a perfect square and 0 otherwise.

Offset 0, canonical program `A397085.P2550365972256081373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397085 (n : ℕ) : ℤ :=
  A397085.P2550365972256081373.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397085.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A397645.P309890179960751511

`∑{d}[n+1, A358380(#)]`
-/

namespace A397645.P309890179960751511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A358380 d

end

end A397645.P309890179960751511

noncomputable section

/-- A397645: Multiplicative with a(p^e) = (e+1)*(e+2)*(5*e+3)/6.

Offset 1, canonical program `A397645.P309890179960751511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397645 (n : ℕ) : ℤ :=
  A397645.P309890179960751511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397691.P3464348281596680652

`A060553(n+2)-1`
-/

namespace A397691.P3464348281596680652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060553 (n + 2) - 1

end

end A397691.P3464348281596680652

noncomputable section

/-- A397691: Number of orbits of nonzero binary algebraic forms of degree n with coefficients in the field with two elements, under the action of SL(2,2).

Offset 1, canonical program `A397691.P3464348281596680652`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060553, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397691 (n : ℕ) : ℤ :=
  A397691.P3464348281596680652.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060553, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397691.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A348388.P14390426255970003515

`ceil(A122196(n+1)/A122197(n+1))`
-/

namespace A348388.P14390426255970003515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A122196 (n + 1) : ℚ) / (A122197 (n + 1) : ℚ)⌉

end

end A348388.P14390426255970003515

noncomputable section

/-- A348388: Irregular triangle read by rows: T(n, k) = floor((n-k)/k), for k = 1, 2, ..., floor(n/2) and n >= 2.

Offset 2, canonical program `A348388.P14390426255970003515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348388 (n : ℕ) : ℤ :=
  A348388.P14390426255970003515.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348391.P9136420306839368205

`A348392(n+2)+A153485(n+2)`
-/

namespace A348391.P9136420306839368205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348392 (n + 2) + A153485 (n + 2)

end

end A348391.P9136420306839368205

noncomputable section

/-- A348391: Row sums of irregular triangle A348390.

Offset 2, canonical program `A348391.P9136420306839368205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A348391 (n : ℕ) : ℤ :=
  A348391.P9136420306839368205.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A348391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349394.P210516795435731064

`A003557(n+1)*A069513(n+1)`
-/

namespace A349394.P210516795435731064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A069513 (n + 1)

end

end A349394.P210516795435731064

noncomputable section

/-- A349394: a(p^e) = p^(e-1) for prime powers, a(n) = 0 for all other n; Dirichlet convolution of A003415 (arithmetic derivative of n) with A055615 (Dirichlet inverse of n).

Offset 1, canonical program `A349394.P210516795435731064`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A069513, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349394 (n : ℕ) : ℤ :=
  A349394.P210516795435731064.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A069513, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349394.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351308.P2387538369820116881

`∑{d}[n+1, A059479(#)*A076792((n+1)/#)]`
-/

namespace A351308.P2387538369820116881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059479 d * A076792 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351308.P2387538369820116881

noncomputable section

/-- A351308: Sum of the cubes of the square divisors of n.

Offset 1, canonical program `A351308.P2387538369820116881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351308 (n : ℕ) : ℤ :=
  A351308.P2387538369820116881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351697.P8907333974855870751

`gcd(3, C(n, 2))*A067047(n+1)`
-/

namespace A351697.P8907333974855870751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 (Nat.choose n 2) : ℤ) * A067047 (n + 1)

end

end A351697.P8907333974855870751

noncomputable section

/-- A351697: 32*a(n) is the denominator of the squared circumradius of a cyclic quadrilateral with sides n, n+1, n+2, n+3.

Offset 1, canonical program `A351697.P8907333974855870751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351697 (n : ℕ) : ℤ :=
  A351697.P8907333974855870751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351827.P16074495888239272804

`A066911(n+1)+∑{d}[n+1, #]`
-/

namespace A351827.P16074495888239272804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066911 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A351827.P16074495888239272804

noncomputable section

/-- A351827: Sum of the numbers <= n that are either prime, a divisor of n, or both.

Offset 1, canonical program `A351827.P16074495888239272804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351827 (n : ℕ) : ℤ :=
  A351827.P16074495888239272804.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352202.P16382500020271687373

`A111113(n+1)+A000120(n+1)`
-/

namespace A352202.P16382500020271687373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111113 (n + 1) + A000120 (n + 1)

end

end A352202.P16382500020271687373

noncomputable section

/-- A352202: a(n) = binary weight of A115510(n).

Offset 1, canonical program `A352202.P16382500020271687373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A352202 (n : ℕ) : ℤ :=
  A352202.P16382500020271687373.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A352202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352990.P13756720821750131226

`eq[1, A352996(n+2)]+2`
-/

namespace A352990.P13756720821750131226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352996 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A352990.P13756720821750131226

noncomputable section

/-- A352990: Numbers k such that the k-th triangular number == 1 mod the integer log of k.

Offset 1, canonical program `A352990.P13756720821750131226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A352990 (n : ℕ) : ℤ :=
  (A352990.P13756720821750131226.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A352990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353147.P18088385678391061894

`A007094(A002275(n))`
-/

namespace A353147.P18088385678391061894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A002275 n).toNat

end

end A353147.P18088385678391061894

noncomputable section

/-- A353147: Decimal repunits written in base 8.

Offset 0, canonical program `A353147.P18088385678391061894`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353147 (n : ℕ) : ℤ :=
  A353147.P18088385678391061894.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353147.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353900.P14141472895883448700

`∑{d}[n+1, #*A355823(#)]`
-/

namespace A353900.P14141472895883448700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A355823 d

end

end A353900.P14141472895883448700

noncomputable section

/-- A353900: a(n) is the sum of divisors of n whose exponents in their prime factorizations are all powers of 2 (A138302).

Offset 1, canonical program `A353900.P14141472895883448700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353900 (n : ℕ) : ℤ :=
  A353900.P14141472895883448700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354467.P1434315419781372648

`∩[A004611(n+1), A072330(n+1)]`
-/

namespace A354467.P1434315419781372648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354467.P1434315419781372648

noncomputable section

/-- A354467: Positive integers whose prime factors are congruent to 1 (mod 12).

Offset 1, canonical program `A354467.P1434315419781372648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3366 terms. -/
def A354467 (n : ℕ) : ℤ :=
  (A354467.P1434315419781372648.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3366 terms. -/
def A354467.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A354766.P686189450615748879

`∑{d}[n+1, A000593(#)*A365428((n+1)/#)]`
-/

namespace A354766.P686189450615748879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000593 d * A365428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A354766.P686189450615748879

noncomputable section

/-- A354766: 1/4 of the total number of integral quadruples with sum = n and sum of squares = n^2.

Offset 1, canonical program `A354766.P686189450615748879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 650 terms. -/
def A354766 (n : ℕ) : ℤ :=
  A354766.P686189450615748879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 650 terms. -/
def A354766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355302.P14783479741261695231

`∑{d}[n+1, A196368(#)]`
-/

namespace A355302.P14783479741261695231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A196368 d

end

end A355302.P14783479741261695231

noncomputable section

/-- A355302: a(n) is the number of normal undulating integers that divide n.

Offset 1, canonical program `A355302.P14783479741261695231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A355302 (n : ℕ) : ℤ :=
  A355302.P14783479741261695231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A355302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355684.P3924323782954824562

`∑{d}[n+1, A073184(#)*A355837((n+1)/#)]`
-/

namespace A355684.P3924323782954824562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073184 d * A355837 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A355684.P3924323782954824562

noncomputable section

/-- A355684: Dirichlet inverse of A355448.

Offset 1, canonical program `A355684.P3924323782954824562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355684 (n : ℕ) : ℤ :=
  A355684.P3924323782954824562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357290.P18279799306496443475

`A002662(n)-A357291(n+1)`
-/

namespace A357290.P18279799306496443475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002662 n - A357291 (n + 1)

end

end A357290.P18279799306496443475

noncomputable section

/-- A357290: a(n) = number of subsets S of {1,2,...,n} having more than 2 elements such that (sum of least two elements of S) > difference between greatest two elements of S.

Offset 0, canonical program `A357290.P18279799306496443475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A357290 (n : ℕ) : ℤ :=
  A357290.P18279799306496443475.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A357290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358271.P15830490171704488334

`A007954(A000244(n))`
-/

namespace A358271.P15830490171704488334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A000244 n).toNat

end

end A358271.P15830490171704488334

noncomputable section

/-- A358271: Product of the digits of 3^n.

Offset 0, canonical program `A358271.P15830490171704488334`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358271 (n : ℕ) : ℤ :=
  A358271.P15830490171704488334.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358271.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358776.P5160008666837522864

`filter[A036554(n+1), A353669(#)]`
-/

namespace A358776.P5160008666837522864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A358776.P5160008666837522864

noncomputable section

/-- A358776: Positive integers with an even number of prime factors (counting repetitions) that sum to an odd number.

Offset 1, canonical program `A358776.P5160008666837522864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5132 terms. -/
def A358776 (n : ℕ) : ℤ :=
  A358776.P5160008666837522864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5132 terms. -/
def A358776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359170.P12778943265999934588

`A359172(2*(n+1))`
-/

namespace A359170.P12778943265999934588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359172 (2 * (n + 1))

end

end A359170.P12778943265999934588

noncomputable section

/-- A359170: a(n) = 1 if n is not a multiple of 3 and has an even number of prime factors (with multiplicity), otherwise a(n) = 0.

Offset 1, canonical program `A359170.P12778943265999934588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359170 (n : ℕ) : ℤ :=
  A359170.P12778943265999934588.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359466.P9534502431337362686

`A069513(A003557(n+1))`
-/

namespace A359466.P9534502431337362686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (A003557 (n + 1)).toNat

end

end A359466.P9534502431337362686

noncomputable section

/-- A359466: a(n) = 1 if n has exactly one non-unitary prime factor, otherwise 0.

Offset 1, canonical program `A359466.P9534502431337362686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359466 (n : ℕ) : ℤ :=
  A359466.P9534502431337362686.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359531.P10907581095316182680

`∑{d}[n+1, A053825(#)*A059841((n+1)/#-1)]`
-/

namespace A359531.P10907581095316182680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053825 d * A059841 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A359531.P10907581095316182680

noncomputable section

/-- A359531: a(1) = 1, a(2) = -9; a(n) = -n^3 * Sum_{d|n, d < n} a(d) / d^3.

Offset 1, canonical program `A359531.P10907581095316182680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359531 (n : ℕ) : ℤ :=
  A359531.P10907581095316182680.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359579.P14819525977453082377

`A112299(n+1)*A364252(n+1)`
-/

namespace A359579.P14819525977453082377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112299 (n + 1) * A364252 (n + 1)

end

end A359579.P14819525977453082377

noncomputable section

/-- A359579: Dirichlet inverse of A336923, where A336923(n) = 1 if sigma(2n) - sigma(n) is a power of 2, otherwise 0.

Offset 1, canonical program `A359579.P14819525977453082377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359579 (n : ℕ) : ℤ :=
  A359579.P14819525977453082377.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359579.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A361393.P16245078394977915268

`comp[∪[A361204(n+1), A001014(n)]]`
-/

namespace A361393.P16245078394977915268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361204 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A361393.P16245078394977915268

noncomputable section

/-- A361393: Positive integers k such that 2*omega(k) > bigomega(k).

Offset 1, canonical program `A361393.P16245078394977915268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361393 (n : ℕ) : ℤ :=
  (A361393.P16245078394977915268.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363289.P16353969291732176041

`∑{d}[A055231(n+1), #]*A057521(n+1)`
-/

namespace A363289.P16353969291732176041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) * A057521 (n + 1)

end

end A363289.P16353969291732176041

noncomputable section

/-- A363289: Sum of the divisor complements of the unitary squarefree divisors of n.

Offset 1, canonical program `A363289.P16353969291732176041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363289 (n : ℕ) : ℤ :=
  A363289.P16353969291732176041.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363289.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A363923.P10933687034710028231

`A003557(n+1)*A072195(n+1)`
-/

namespace A363923.P10933687034710028231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A072195 (n + 1)

end

end A363923.P10933687034710028231

noncomputable section

/-- A363923: a(n) = n^npf(n) / rad(n), where npf(n) is the number of prime factors with multiplicity of n.

Offset 1, canonical program `A363923.P10933687034710028231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363923 (n : ℕ) : ℤ :=
  A363923.P10933687034710028231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365210.P9483373171627170688

`A035218(n+1)*A382488(n+1)`
-/

namespace A365210.P9483373171627170688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (n + 1) * A382488 (n + 1)

end

end A365210.P9483373171627170688

noncomputable section

/-- A365210: The number of divisors d of n such that gcd(d, n/d) is a 5-rough number (A007310).

Offset 1, canonical program `A365210.P9483373171627170688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365210 (n : ℕ) : ℤ :=
  A365210.P9483373171627170688.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365334.P5531685535029320739

`A033634(A003557(n+1))`
-/

namespace A365334.P5531685535029320739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (A003557 (n + 1)).toNat

end

end A365334.P5531685535029320739

noncomputable section

/-- A365334: The sum of exponentially odd divisors of the largest square dividing n.

Offset 1, canonical program `A365334.P5531685535029320739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365334 (n : ℕ) : ℤ :=
  A365334.P5531685535029320739.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365480.P4252023538979624580

`A048250(n+1)*A055210(n+1)`
-/

namespace A365480.P4252023538979624580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) * A055210 (n + 1)

end

end A365480.P4252023538979624580

noncomputable section

/-- A365480: The sum of unitary divisors of the smallest exponentially odd number that is divisible by n.

Offset 1, canonical program `A365480.P4252023538979624580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365480 (n : ℕ) : ℤ :=
  A365480.P4252023538979624580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365480.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A366438.P8018752441920065368

`∏{e}[A268335(n+1), #+1]`
-/

namespace A366438.P8018752441920065368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A366438.P8018752441920065368

noncomputable section

/-- A366438: The number of divisors of the exponentially odd numbers (A268335).

Offset 1, canonical program `A366438.P8018752441920065368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366438 (n : ℕ) : ℤ :=
  (A366438.P8018752441920065368.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366439.P5842855889765716420

`∑{d}[A268335(n+1), #]`
-/

namespace A366439.P5842855889765716420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366439.P5842855889765716420

noncomputable section

/-- A366439: The sum of divisors of the exponentially odd numbers (A268335).

Offset 1, canonical program `A366439.P5842855889765716420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366439 (n : ℕ) : ℤ :=
  (A366439.P5842855889765716420.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366439.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A367695.P14319411982053900779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6706 terms. -/
def A367695 (n : ℕ) : ℤ :=
  A367695.P14319411982053900779.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6706 terms. -/
def A367695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368468.P2584022470948144189

`A322483(A268335(n+1))`
-/

namespace A368468.P2584022470948144189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A268335 (n + 1)).toNat

end

end A368468.P2584022470948144189

noncomputable section

/-- A368468: a(n) is the number of exponentially odd divisors of the n-th exponentially odd number.

Offset 1, canonical program `A368468.P2584022470948144189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7055 terms. -/
def A368468 (n : ℕ) : ℤ :=
  A368468.P2584022470948144189.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7055 terms. -/
def A368468.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A368469.P12995681979237792953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368469 (n : ℕ) : ℤ :=
  A368469.P12995681979237792953.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368472.P12800677972361698813

`∏{e}[A268335(n+1), #]`
-/

namespace A368472.P12800677972361698813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A368472.P12800677972361698813

noncomputable section

/-- A368472: Product of exponents of prime factorization of the exponentially odd numbers.

Offset 1, canonical program `A368472.P12800677972361698813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368472 (n : ℕ) : ℤ :=
  (A368472.P12800677972361698813.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368616.P2512839611313928927

`A046992(n+1)-A062774(n+1)`
-/

namespace A368616.P2512839611313928927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1) - A062774 (n + 1)

end

end A368616.P2512839611313928927

noncomputable section

/-- A368616: a(n) = Sum_{k=1..n} pi(k) * (ceiling(n/k) - floor(n/k)).

Offset 1, canonical program `A368616.P2512839611313928927`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046992, A062774, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368616 (n : ℕ) : ℤ :=
  A368616.P2512839611313928927.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046992, A062774, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368616.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A368711.P6715505457637909973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368711 (n : ℕ) : ℤ :=
  A368711.P6715505457637909973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368711.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A368825.P9757480026182637684

`A055231(a(n-1)+n+1)` with `a(0)=1`
-/

namespace A368825.P9757480026182637684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055231 (a (n - 1) + (n + 1 : ℤ)).toNat

end

end A368825.P9757480026182637684

noncomputable section

/-- A368825: a(1) = 1; for n > 1, a(n) = A055231(a(n-1) + n), where A055231(k) is the powerfree part of k.

Offset 1, canonical program `A368825.P9757480026182637684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2962 terms. -/
def A368825 (n : ℕ) : ℤ :=
  A368825.P9757480026182637684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2962 terms. -/
def A368825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369529.P1505549937624039629

`gcd(A007953(n+1), A007954(n+1))`
-/

namespace A369529.P1505549937624039629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007953 (n + 1)) (A007954 (n + 1))

end

end A369529.P1505549937624039629

noncomputable section

/-- A369529: a(n) = gcd(A007953(n), A007954(n)).

Offset 1, canonical program `A369529.P1505549937624039629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369529 (n : ℕ) : ℤ :=
  (A369529.P1505549937624039629.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370057.P17758719647371551335

`A000142(n)*A006632(n+1)`
-/

namespace A370057.P17758719647371551335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A006632 (n + 1)

end

end A370057.P17758719647371551335

noncomputable section

/-- A370057: a(n) = 3*(4*n+2)!/(3*n+3)!.

Offset 0, canonical program `A370057.P17758719647371551335`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370057 (n : ℕ) : ℤ :=
  A370057.P17758719647371551335.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370057.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A370567.P2103291340832515524

`A268354(n+1)*A385555(n+1)`
-/

namespace A370567.P2103291340832515524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268354 (n + 1) * A385555 (n + 1)

end

end A370567.P2103291340832515524

noncomputable section

/-- A370567: Size of the group Q_7*/(Q_7*)^n, where Q_7 is the field of 7-adic numbers.

Offset 1, canonical program `A370567.P2103291340832515524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370567 (n : ℕ) : ℤ :=
  A370567.P2103291340832515524.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370567.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A371587.P1586689219007776295

`∑[char[A376279(n+1)-1]]`
-/

namespace A371587.P1586689219007776295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376279 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371587.P1586689219007776295

noncomputable section

/-- A371587: a(n) is the number of integers m from 1 to n inclusive such that m^m is a cube.

Offset 1, canonical program `A371587.P1586689219007776295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A371587 (n : ℕ) : ℤ :=
  (A371587.P1586689219007776295.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A371587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372601.P6403218683394126738

`A381955(n+1)+A066301(n+1)`
-/

namespace A372601.P6403218683394126738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381955 (n + 1) + A066301 (n + 1)

end

end A372601.P6403218683394126738

noncomputable section

/-- A372601: The maximal exponent in the prime factorization of the largest exponentially odd divisor of n.

Offset 1, canonical program `A372601.P6403218683394126738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372601 (n : ℕ) : ℤ :=
  A372601.P6403218683394126738.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372678.P12173169369901666587

`∑{d}[n+1, A087003(#)*A359099((n+1)/#)]`
-/

namespace A372678.P12173169369901666587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A359099 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372678.P12173169369901666587

noncomputable section

/-- A372678: a(n) = phi(14 * n)/6.

Offset 1, canonical program `A372678.P12173169369901666587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372678 (n : ℕ) : ℤ :=
  A372678.P12173169369901666587.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373472.P17598235069966866873

`A373371(n+1)*A373975(n+1)`
-/

namespace A373472.P17598235069966866873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373371 (n + 1) * A373975 (n + 1)

end

end A373472.P17598235069966866873

noncomputable section

/-- A373472: a(n) = 1 if A001414(n) and A059975(n) are both multiples of 3, otherwise 0, where A001414 and A059975 are fully additive with a(p) = p and a(p) = p-1, respectively.

Offset 1, canonical program `A373472.P17598235069966866873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373472 (n : ℕ) : ℤ :=
  A373472.P17598235069966866873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373477.P17254519975946104089

`A373371(n+1)*A374039(n+1)`
-/

namespace A373477.P17254519975946104089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373371 (n + 1) * A374039 (n + 1)

end

end A373477.P17254519975946104089

noncomputable section

/-- A373477: a(n) = 1 if A001414(n) and A003415(n) are both multiples of 3, otherwise 0, where A001414 is the sum of prime factors with repetition, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373477.P17254519975946104089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373477 (n : ℕ) : ℤ :=
  A373477.P17254519975946104089.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373477.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A373936.P11787379451298363639`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373937, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373936 (n : ℕ) : ℤ :=
  A373936.P11787379451298363639.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373937, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373936.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A373963.P9718531231219531280`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373964, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373963 (n : ℕ) : ℤ :=
  A373963.P9718531231219531280.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373964, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373963.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A380162.P3565142658439921752

`∑{d}[n+1, A055210(#)*A271102((n+1)/#)]`
-/

namespace A380162.P3565142658439921752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055210 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A380162.P3565142658439921752

noncomputable section

/-- A380162: a(n) is the value of the Euler totient function when applied to the largest square dividing n.

Offset 1, canonical program `A380162.P3565142658439921752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380162 (n : ℕ) : ℤ :=
  A380162.P3565142658439921752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380326.P3580057092230513505

`∏{p}[A268335(n+1), #+1]`
-/

namespace A380326.P3580057092230513505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p + 1)

end

end A380326.P3580057092230513505

noncomputable section

/-- A380326: a(n) is the sum of squarefree divisors of the n-th exponentially odd number.

Offset 1, canonical program `A380326.P3580057092230513505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380326 (n : ℕ) : ℤ :=
  (A380326.P3580057092230513505.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380892.P2425458622169530326

`∩[A074315(n+1), A000384(n)]`
-/

namespace A380892.P2425458622169530326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380892.P2425458622169530326

noncomputable section

/-- A380892: Hexagonal numbers that are abundant.

Offset 1, canonical program `A380892.P2425458622169530326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. -/
def A380892 (n : ℕ) : ℤ :=
  (A380892.P2425458622169530326.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. -/
def A380892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381314.P1696934832685863059

`∩[A386796(n+1), A393924(n+1)]`
-/

namespace A381314.P1696934832685863059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381314.P1696934832685863059

noncomputable section

/-- A381314: Powerful numbers that have a single exponent in their prime factorization that equals 2.

Offset 1, canonical program `A381314.P1696934832685863059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A381314 (n : ℕ) : ℤ :=
  (A381314.P1696934832685863059.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A381314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381608.P6073522075897922791

`eq[A005812(n), A053735(n)]`
-/

namespace A381608.P6073522075897922791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381608.P6073522075897922791

noncomputable section

/-- A381608: Nonnegative integers whose ternary expansion does not contain pairs of 2's only separated by (zero or more) 1's, with offset 0.

Offset 0, canonical program `A381608.P6073522075897922791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4267 terms. -/
def A381608 (n : ℕ) : ℤ :=
  (A381608.P6073522075897922791.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4267 terms. -/
def A381608.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A382660.P13276603593670196303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7055 terms. -/
def A382660 (n : ℕ) : ℤ :=
  A382660.P13276603593670196303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7055 terms. -/
def A382660.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A383029.P9197329897417244173

`val(A268335(n+1), 2)`
-/

namespace A383029.P9197329897417244173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A268335 (n + 1)).toNat 2

end

end A383029.P9197329897417244173

noncomputable section

/-- A383029: Exponent of the highest power of 2 dividing the n-th exponentially odd number.

Offset 1, canonical program `A383029.P9197329897417244173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383029 (n : ℕ) : ℤ :=
  (A383029.P9197329897417244173.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383029.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A384195.P4862393626970626522

`Δ[A092405(n+1)]`
-/

namespace A384195.P4862393626970626522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A384195.P4862393626970626522

noncomputable section

/-- A384195: a(n) = tau(n+1) - tau(n-1), where tau(n) = A000005(n), the number of divisors of n.

Offset 2, canonical program `A384195.P4862393626970626522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384195 (n : ℕ) : ℤ :=
  A384195.P4862393626970626522.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384195.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A385553.P5498376679823547533`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064235, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385553 (n : ℕ) : ℤ :=
  A385553.P5498376679823547533.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064235, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385553.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385559.P6265721283033106482

`A000034(n)*A385558(n+1)`
-/

namespace A385559.P6265721283033106482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A385558 (n + 1)

end

end A385559.P6265721283033106482

noncomputable section

/-- A385559: Period of {binomial(N,8) mod n: N in Z}.

Offset 1, canonical program `A385559.P6265721283033106482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385559 (n : ℕ) : ℤ :=
  A385559.P6265721283033106482.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385559.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A389481.P15172081649911050968

`p?[A080541(p?[2*n+1])]`
-/

namespace A389481.P15172081649911050968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080541 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A389481.P15172081649911050968

noncomputable section

/-- A389481: Primes that remain prime when their binary digits are rotated once to the right.

Offset 1, canonical program `A389481.P15172081649911050968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A389481 (n : ℕ) : ℤ :=
  A389481.P15172081649911050968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A389481.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A390582.P9712316944901875088

`A033879(n+1)/A009194(n+1)`
-/

namespace A390582.P9712316944901875088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033879 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A390582.P9712316944901875088

noncomputable section

/-- A390582: a(n) = (2*n - sigma(n))/gcd(n, sigma(n)).

Offset 1, canonical program `A390582.P9712316944901875088`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009194, A033879, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390582 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390582.P9712316944901875088.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009194, A033879, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390582.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A391681.P12712730710108610621

`A000045(n)-A391683(n+1)`
-/

namespace A391681.P12712730710108610621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A391683 (n + 1)

end

end A391681.P12712730710108610621

noncomputable section

/-- A391681: Number of integer compositions of n with all parts > 1 that are not the first sums of any composition.

Offset 1, canonical program `A391681.P12712730710108610621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A391681 (n : ℕ) : ℤ :=
  A391681.P12712730710108610621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A391681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392089.P6300698201776008947

`A000203(A055231(n+1))*A047994(n+1)`
-/

namespace A392089.P6300698201776008947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A055231 (n + 1)).toNat * A047994 (n + 1)

end

end A392089.P6300698201776008947

noncomputable section

/-- A392089: The unitary totient of the smallest powerful number that is divisible by n.

Offset 1, canonical program `A392089.P6300698201776008947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392089 (n : ℕ) : ℤ :=
  A392089.P6300698201776008947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392089.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A394424.P3558969678185483521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7055 terms. -/
def A394424 (n : ℕ) : ℤ :=
  A394424.P3558969678185483521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7055 terms. -/
def A394424.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A395540.P12504002950799206473

`ceil(log2(A080075(2*n+1)))`
-/

namespace A395540.P12504002950799206473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A080075 (2 * n + 1) : ℝ)⌉

end

end A395540.P12504002950799206473

noncomputable section

/-- A395540: a(n) = floor(log_2(n)) + floor(log_2(2*n/3)) + 3.

Offset 1, canonical program `A395540.P12504002950799206473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A395540 (n : ℕ) : ℤ :=
  A395540.P12504002950799206473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A395540.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A360013.P17771875330007570756

`2*A360015(n+1)`
-/

namespace A360013.P17771875330007570756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A360015 (n + 1)

end

end A360013.P17771875330007570756

noncomputable section

/-- A360013: Numbers whose exponent of 2 in their canonical prime factorization is larger than all the other exponents.

Offset 1, canonical program `A360013.P17771875330007570756`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360015, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360013 (n : ℕ) : ℤ :=
  A360013.P17771875330007570756.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360015, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360013.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A348510.P5400953250786089322

`A038040(n+1)/A324121(n+1)-(n+1)`
-/

namespace A348510.P5400953250786089322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (A324121 (n + 1) : ℚ) - (n + 1 : ℚ)

end

end A348510.P5400953250786089322

noncomputable section

/-- A348510: a(n) = A099377(n) - n, where A099377(n) is the numerator of the harmonic mean of the divisors of n.

Offset 1, canonical program `A348510.P5400953250786089322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348510 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348510.P5400953250786089322.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348969.P17922304389416423388

`gcd(n+1, A057020(n+1))`
-/

namespace A348969.P17922304389416423388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A057020 (n + 1))

end

end A348969.P17922304389416423388

noncomputable section

/-- A348969: a(n) = n / gcd(n, A099377(n)).

Offset 1, canonical program `A348969.P17922304389416423388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348969 (n : ℕ) : ℤ :=
  (A348969.P17922304389416423388.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349214.P5559016243589572811

`A034387(n+1)+A062298(n+1)`
-/

namespace A349214.P5559016243589572811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1) + A062298 (n + 1)

end

end A349214.P5559016243589572811

noncomputable section

/-- A349214: a(n) = Sum_{k=1..n} k^c(k), where c is the prime characteristic (A010051).

Offset 1, canonical program `A349214.P5559016243589572811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, A062298, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349214 (n : ℕ) : ℤ :=
  A349214.P5559016243589572811.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, A062298, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349214.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349322.P14488046601245516878

`∑{d}[n+1, gcd(#, A336040(#)+n)]`
-/

namespace A349322.P14488046601245516878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.gcd (d : ℤ) (A336040 d + (n : ℤ))

end

end A349322.P14488046601245516878

noncomputable section

/-- A349322: a(n) = Sum_{d|n} d^c(d), where c is the characteristic function of refactorable numbers (A336040).

Offset 1, canonical program `A349322.P14488046601245516878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349322 (n : ℕ) : ℤ :=
  (A349322.P14488046601245516878.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349414.P8978213222931106996

`A324245(n)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349414.P8978213222931106996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324245 n - (n : ℤ)

end

end A349414.P8978213222931106996

noncomputable section

/-- A349414: a(n) = A324245(n) - n.

Offset 0, canonical program `A349414.P8978213222931106996`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324245, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349414 (n : ℕ) : ℤ :=
  A349414.P8978213222931106996.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324245, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349414.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349555.P9568767328218763309

`A001221(n+1)+A066911(n+1)`
-/

namespace A349555.P9568767328218763309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + A066911 (n + 1)

end

end A349555.P9568767328218763309

noncomputable section

/-- A349555: a(n) = Sum_{p<=n, p prime} p^floor(1/gcd(n/p)).

Offset 1, canonical program `A349555.P9568767328218763309`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A066911, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349555 (n : ℕ) : ℤ :=
  A349555.P9568767328218763309.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A066911, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349555.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350337.P9833079415363379822

`A008472(n+1)+A076290(n+1)`
-/

namespace A350337.P9833079415363379822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + A076290 (n + 1)

end

end A350337.P9833079415363379822

noncomputable section

/-- A350337: Sum of the divisors of n that are prime or the product of 2 (not necessarily distinct) primes.

Offset 1, canonical program `A350337.P9833079415363379822`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A076290, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350337 (n : ℕ) : ℤ :=
  A350337.P9833079415363379822.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A076290, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350337.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351394.P16861572729339474372

`A034444(n+1)+∑{e}[n+1, #-1]`
-/

namespace A351394.P16861572729339474372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) + ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1)

end

end A351394.P16861572729339474372

noncomputable section

/-- A351394: Number of divisors of n that are either squarefree, prime powers, or both.

Offset 1, canonical program `A351394.P16861572729339474372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351394 (n : ℕ) : ℤ :=
  A351394.P16861572729339474372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351943.P14893176643367496958

`A069359(A181819(n+1))`
-/

namespace A351943.P14893176643367496958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (A181819 (n + 1)).toNat

end

end A351943.P14893176643367496958

noncomputable section

/-- A351943: a(n) = A069359(A181819(n)).

Offset 1, canonical program `A351943.P14893176643367496958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351943 (n : ℕ) : ℤ :=
  A351943.P14893176643367496958.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353480.P6701291783448021490

`A369058(3*(n+1))`
-/

namespace A353480.P6701291783448021490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369058 (3 * (n + 1))

end

end A353480.P6701291783448021490

noncomputable section

/-- A353480: a(n) = 1 if n is an odd semiprime, otherwise 0.

Offset 1, canonical program `A353480.P6701291783448021490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353480 (n : ℕ) : ℤ :=
  A353480.P6701291783448021490.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353498.P9279087021698104160

`and(A019427(n)²²², A318829(n+1))`
-/

namespace A353498.P9279087021698104160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((A019427 n ^ 2) ^ 2) ^ 2) (A318829 (n + 1))

end

end A353498.P9279087021698104160

noncomputable section

/-- A353498: a(n) = 1 if n > 1 and the 2-adic valuation of phi(n) does not exceed the 2-adic valuation of n-1, otherwise 0.

Offset 1, canonical program `A353498.P9279087021698104160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353498 (n : ℕ) : ℤ :=
  A353498.P9279087021698104160.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354031.P5992259175605925891

`A024362(n+1)%2`
-/

namespace A354031.P5992259175605925891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024362 (n + 1)) 2

end

end A354031.P5992259175605925891

noncomputable section

/-- A354031: a(n) = 1 if n > 1 and n is a power of a Pythagorean prime (prime of the form 4m+1), otherwise 0.

Offset 1, canonical program `A354031.P5992259175605925891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354031 (n : ℕ) : ℤ :=
  A354031.P5992259175605925891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354801.P2682689815244805645

`A024916(n+1)+A004125(n+1)-A153485(n+1)`
-/

namespace A354801.P2682689815244805645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) + A004125 (n + 1) - A153485 (n + 1)

end

end A354801.P2682689815244805645

noncomputable section

/-- A354801: n^2 minus the sum of all aliquot divisors of all positive integers <= n.

Offset 1, canonical program `A354801.P2682689815244805645`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, A024916, A153485, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354801 (n : ℕ) : ℤ :=
  A354801.P2682689815244805645.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, A024916, A153485, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354801.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355683.P12256357000796435793

`A076479(n+1)*A112526(n+1)`
-/

namespace A355683.P12256357000796435793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (n + 1) * A112526 (n + 1)

end

end A355683.P12256357000796435793

noncomputable section

/-- A355683: Multiplicative with a(p^e) = 0 if e=1 and a(p^e)= -1 if e>1.

Offset 1, canonical program `A355683.P12256357000796435793`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076479, A112526, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355683 (n : ℕ) : ℤ :=
  A355683.P12256357000796435793.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076479, A112526, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355683.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355741.P16289151213451749189

`A154955(A064194(2*n+5))+∏{p}[n+1, A303975(#)]`
-/

namespace A355741.P16289151213451749189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (A064194 (2 * n + 5)).toNat + ∏ p ∈ Nat.primeFactors (f1 n), A303975 p

end

end A355741.P16289151213451749189

noncomputable section

/-- A355741: Number of ways to choose a sequence of prime factors, one of each prime index of n.

Offset 1, canonical program `A355741.P16289151213451749189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A355741 (n : ℕ) : ℤ :=
  A355741.P16289151213451749189.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A355741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356068.P11051328716831346612

`A085970(n+1)+1`
-/

namespace A356068.P11051328716831346612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085970 (n + 1) + 1

end

end A356068.P11051328716831346612

noncomputable section

/-- A356068: Number of integers ranging from 1 to n that are not prime-powers (1 is not a prime-power).

Offset 1, canonical program `A356068.P11051328716831346612`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085970, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356068 (n : ℕ) : ℤ :=
  A356068.P11051328716831346612.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085970, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356068.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357214.P17117338288475535915

`2^A065855(n+1)`
-/

namespace A357214.P17117338288475535915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A065855 (n + 1) : ℤ)

end

end A357214.P17117338288475535915

noncomputable section

/-- A357214: a(n) = number of subsets S of {1, 2, ..., n} such that every number in S is a composite.

Offset 1, canonical program `A357214.P17117338288475535915`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065855, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357214 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A357214.P17117338288475535915.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065855, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357214.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358552.P8701948705767462514

`a(A156061(n+1)-1)+1` with `a(0)=1`
-/

namespace A358552.P8701948705767462514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A156061 (n + 1) - 1).toNat + 1

end

end A358552.P8701948705767462514

noncomputable section

/-- A358552: Node-height of the rooted tree with Matula-Goebel number n. Number of nodes in the longest path from root to leaf.

Offset 1, canonical program `A358552.P8701948705767462514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358552 (n : ℕ) : ℤ :=
  (A358552.P8701948705767462514.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358854.P10782469796032889684

`A117804(n+1)-A279766(n)`
-/

namespace A358854.P10782469796032889684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (n + 1) - A279766 n

end

end A358854.P10782469796032889684

noncomputable section

/-- A358854: Number of even digits necessary to write all the numbers from 0 up to n.

Offset 0, canonical program `A358854.P10782469796032889684`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117804, A279766, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358854 (n : ℕ) : ℤ :=
  A358854.P10782469796032889684.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117804, A279766, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358854.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359160.P3373714347686738838

`A065043(n+1)*A121262(n)`
-/

namespace A359160.P3373714347686738838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) * A121262 n

end

end A359160.P3373714347686738838

noncomputable section

/-- A359160: a(n) = 1 if n is a number of the form 4u+1 with an even number of prime factors (counted with multiplicity), otherwise 0.

Offset 1, canonical program `A359160.P3373714347686738838`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359160 (n : ℕ) : ℤ :=
  A359160.P3373714347686738838.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359160.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359400.P8597808526579173198

`A029931(A035327(n))`
-/

namespace A359400.P8597808526579173198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A035327 n).toNat

end

end A359400.P8597808526579173198

noncomputable section

/-- A359400: Sum of positions of zeros in the reversed binary expansion of n, where positions in a sequence are read starting with 1 from the left.

Offset 0, canonical program `A359400.P8597808526579173198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359400 (n : ℕ) : ℤ :=
  A359400.P8597808526579173198.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360997.P15884179674524214355

`A074816(n+1)*A007426(n+1)/A007425(n+1)`
-/

namespace A360997.P15884179674524214355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074816 (n + 1) * A007426 (n + 1) : ℚ) / (A007425 (n + 1) : ℚ)

end

end A360997.P15884179674524214355

noncomputable section

/-- A360997: Multiplicative with a(p^e) = e + 3.

Offset 1, canonical program `A360997.P15884179674524214355`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007425, A007426, A074816, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360997 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A360997.P15884179674524214355.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007425, A007426, A074816, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360997.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361022.P13909982394743935794

`A000007(Δ[A054519(n+1)]%∏{e}[n+1, #+1])`
-/

namespace A361022.P13909982394743935794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (f1 (n + 1) - f1 n) ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)).toNat

end

end A361022.P13909982394743935794

noncomputable section

/-- A361022: a(n) = 1 if d(n) divides d(n+1), otherwise 0, where d(n) is number of positive divisors of n.

Offset 1, canonical program `A361022.P13909982394743935794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A361022 (n : ℕ) : ℤ :=
  A361022.P13909982394743935794.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A361022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361266.P5093072706684285124

`A361264(n+1)*A007947(n+1)`
-/

namespace A361266.P5093072706684285124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361264 (n + 1) * A007947 (n + 1)

end

end A361266.P5093072706684285124

noncomputable section

/-- A361266: Multiplicative with a(p^e) = p^(e + 3), e > 0.

Offset 1, canonical program `A361266.P5093072706684285124`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A361264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361266 (n : ℕ) : ℤ :=
  A361266.P5093072706684285124.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A361264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361266.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361268.P17929476801326375082

`A005361(n+1)*A361264(n+1)`
-/

namespace A361268.P17929476801326375082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A361264 (n + 1)

end

end A361268.P17929476801326375082

noncomputable section

/-- A361268: Multiplicative with a(p^e) = e * p^(e + 2), e > 0.

Offset 1, canonical program `A361268.P17929476801326375082`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A361264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361268 (n : ℕ) : ℤ :=
  A361268.P17929476801326375082.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A361264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361268.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 0, canonical program `A365722.P13092510247685121103`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365722 (n : ℕ) : ℤ :=
  A365722.P13092510247685121103.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365722.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A366922.P8080897665247785144`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051064, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366922 (n : ℕ) : ℤ :=
  A366922.P8080897665247785144.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051064, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366922.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A367417.P14867293306251685931

`∏{p}[A268335(n+1), #]`
-/

namespace A367417.P14867293306251685931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A367417.P14867293306251685931

noncomputable section

/-- A367417: The squarefree kernels of the exponentially odd numbers: a(n) = A007947(A268335(n)).

Offset 1, canonical program `A367417.P14867293306251685931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367417 (n : ℕ) : ℤ :=
  (A367417.P14867293306251685931.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367417.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A372710.P15097854518747793882

`∑{d}[n+1, A055615(#)*A143238((n+1)/#)]`
-/

namespace A372710.P15097854518747793882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A143238 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372710.P15097854518747793882

noncomputable section

/-- A372710: a(n) = Sum_{k=1..n} sigma(n*k).

Offset 1, canonical program `A372710.P15097854518747793882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8765 terms. -/
def A372710 (n : ℕ) : ℤ :=
  A372710.P15097854518747793882.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8765 terms. -/
def A372710.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A376504.P12289890857249372903

`A034444(n+1)-A001221(n+1)-1`
-/

namespace A376504.P12289890857249372903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A001221 (n + 1) - 1

end

end A376504.P12289890857249372903

noncomputable section

/-- A376504: Number of divisors of n that are both composite and squarefree.

Offset 1, canonical program `A376504.P12289890857249372903`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376504 (n : ℕ) : ℤ :=
  A376504.P12289890857249372903.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376504.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378689.P1510602258272592055

`A007955(n+1)/A308360(n+1)`
-/

namespace A378689.P1510602258272592055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A308360 (n + 1) : ℚ)

end

end A378689.P1510602258272592055

noncomputable section

/-- A378689: a(n) = product of divisors d of n that are not coreful.

Offset 1, canonical program `A378689.P1510602258272592055`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A308360, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378689 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378689.P1510602258272592055.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A308360, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378689.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379012.P2257624155455655702

`A112526(n+1)*A034444(n+1)`
-/

namespace A379012.P2257624155455655702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112526 (n + 1) * A034444 (n + 1)

end

end A379012.P2257624155455655702

noncomputable section

/-- A379012: a(n) = A034444(n) if n is powerful (A001694), and 0 otherwise.

Offset 1, canonical program `A379012.P2257624155455655702`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A112526, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379012 (n : ℕ) : ℤ :=
  A379012.P2257624155455655702.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A112526, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379012.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A381201.P5285966615949982565

`A156061(A181819(n+1)*A328878(n+1))`
-/

namespace A381201.P5285966615949982565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (A181819 (n + 1) * A328878 (n + 1)).toNat

end

end A381201.P5285966615949982565

noncomputable section

/-- A381201: a(n) is the product of the elements of the set of bases and exponents in the prime factorization of n.

Offset 1, canonical program `A381201.P5285966615949982565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A381201 (n : ℕ) : ℤ :=
  A381201.P5285966615949982565.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A381201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381205.P120942691401250888

`A001221(A064988(n+1)*A181819(n+1))`
-/

namespace A381205.P120942691401250888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A064988 (n + 1) * A181819 (n + 1)).toNat

end

end A381205.P120942691401250888

noncomputable section

/-- A381205: a(n) is the cardinality of the set of bases and exponents (including exponents = 1) in the prime factorization of n.

Offset 1, canonical program `A381205.P120942691401250888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A381205 (n : ℕ) : ℤ :=
  A381205.P120942691401250888.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A381205.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A381503.P14790323790165265310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A381503 (n : ℕ) : ℤ :=
  A381503.P14790323790165265310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A381503.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A383277.P6033499868136924238

`char[(n+1)*A034444(n+1)-1]`
-/

namespace A383277.P6033499868136924238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034444 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A383277.P6033499868136924238

noncomputable section

/-- A383277: The number of divisors d of n for which A034444(d)*d is equal to n.

Offset 1, canonical program `A383277.P6033499868136924238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383277 (n : ℕ) : ℤ :=
  (A383277.P6033499868136924238.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383863.P10403754587481525438

`∏{e}[n+1, A034444(#)+1]`
-/

namespace A383863.P10403754587481525438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A034444 (Nat.factorization (f1 n) p) + 1)

end

end A383863.P10403754587481525438

noncomputable section

/-- A383863: The number of divisors d of n having the property that for every prime p dividing n the p-adic valuation of d is either 0 or a unitary divisor of the p-adic valuation of n.

Offset 1, canonical program `A383863.P10403754587481525438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383863 (n : ℕ) : ℤ :=
  A383863.P10403754587481525438.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383959.P7740077937827887255

`∑{e}[n+1, A034444(#)]`
-/

namespace A383959.P7740077937827887255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A034444 (Nat.factorization (f1 n) p)

end

end A383959.P7740077937827887255

noncomputable section

/-- A383959: The number of prime powers p^e having the property that e is a unitary divisor of the p-adic valuation of n.

Offset 1, canonical program `A383959.P7740077937827887255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383959 (n : ℕ) : ℤ :=
  A383959.P7740077937827887255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385044.P5009034709205246685

`A034444(n+1)/A382488(n+1)`
-/

namespace A385044.P5009034709205246685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) : ℚ) / (A382488 (n + 1) : ℚ)

end

end A385044.P5009034709205246685

noncomputable section

/-- A385044: The number of unitary divisors of n that are 5-rough numbers (A007310).

Offset 1, canonical program `A385044.P5009034709205246685`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A382488, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385044 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385044.P5009034709205246685.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A382488, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385044.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A385542.P8790659879283915129

`∑{d}[n+1, A157658(#)*A183097((n+1)/#)]`
-/

namespace A385542.P8790659879283915129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A183097 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385542.P8790659879283915129

noncomputable section

/-- A385542: The sum of the aliquot divisors of n that are powerful.

Offset 1, canonical program `A385542.P8790659879283915129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385542 (n : ℕ) : ℤ :=
  A385542.P8790659879283915129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385542.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A392199.P2791920592181297903

`eq[1, A341523(n+1)]+1`
-/

namespace A392199.P2791920592181297903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A392199.P2791920592181297903

noncomputable section

/-- A392199: Positive integers k such that gcd(k, sigma(k)) is prime.

Offset 1, canonical program `A392199.P2791920592181297903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392199 (n : ℕ) : ℤ :=
  (A392199.P2791920592181297903.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392199.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A392450.P7898530236286233614

`∏{e}[n+1, A056671(#)]`
-/

namespace A392450.P7898530236286233614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A056671 (Nat.factorization (f1 n) p)

end

end A392450.P7898530236286233614

noncomputable section

/-- A392450: The number of exponential unitary (or e-unitary) divisors of n that are exponentially squarefree numbers (A209061).

Offset 1, canonical program `A392450.P7898530236286233614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392450 (n : ℕ) : ℤ :=
  A392450.P7898530236286233614.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392450.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A396253.P3729736002703382672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2178 terms. -/
def A396253 (n : ℕ) : ℤ :=
  A396253.P3729736002703382672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2178 terms. -/
def A396253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354837.P13891097066587560124

`lt[1, A001057(gcd(n, A007088(n)))]`
-/

namespace A354837.P13891097066587560124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.gcd (n : ℤ) (A007088 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A354837.P13891097066587560124

noncomputable section

/-- A354837: Odd numbers k such that gcd(k, A007088(k)) != 1.

Offset 1, canonical program `A354837.P13891097066587560124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 768 terms. -/
def A354837 (n : ℕ) : ℤ :=
  (A354837.P13891097066587560124.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 768 terms. -/
def A354837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354926.P5218698462307225601

`A008966(n+1)*A101605(n+1)`
-/

namespace A354926.P5218698462307225601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A101605 (n + 1)

end

end A354926.P5218698462307225601

noncomputable section

/-- A354926: a(n) = 1 if n is a product of three distinct primes, otherwise 0.

Offset 1, canonical program `A354926.P5218698462307225601`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A101605, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354926 (n : ℕ) : ℤ :=
  A354926.P5218698462307225601.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A101605, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354926.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355447.P2177856951054736842

`(1-A008966(n+1))*(1-A010055(n+1))`
-/

namespace A355447.P2177856951054736842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A008966 (n + 1)) * (1 - A010055 (n + 1))

end

end A355447.P2177856951054736842

noncomputable section

/-- A355447: a(n) = 1 if n is neither squarefree nor prime power, otherwise 0.

Offset 1, canonical program `A355447.P2177856951054736842`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A010055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355447 (n : ℕ) : ℤ :=
  A355447.P2177856951054736842.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A010055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355447.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358077.P9825704743744712709

`∑{d}[n+1, A008966(#)*A191558((n+1)/#)]`
-/

namespace A358077.P9825704743744712709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A191558 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358077.P9825704743744712709

noncomputable section

/-- A358077: Sum of the nonprime divisors of n whose divisor complement is squarefree.

Offset 1, canonical program `A358077.P9825704743744712709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358077 (n : ℕ) : ℤ :=
  A358077.P9825704743744712709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359474.P3439923367546427684

`A359471(n+1)-A008966(n+1)`
-/

namespace A359474.P3439923367546427684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359471 (n + 1) - A008966 (n + 1)

end

end A359474.P3439923367546427684

noncomputable section

/-- A359474: a(n) = 1 if the product of exponents in the prime factorization of n is 2, otherwise 0.

Offset 1, canonical program `A359474.P3439923367546427684`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A359471, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359474 (n : ℕ) : ℤ :=
  A359474.P3439923367546427684.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A359471, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359474.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361645.P5436970020374288837

`A374356(xor(n, floor(n/2)))`
-/

namespace A361645.P5436970020374288837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374356 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A361645.P5436970020374288837

noncomputable section

/-- A361645: a(n) is the least k such that n appears in the k-th row of triangle A361644.

Offset 0, canonical program `A361645.P5436970020374288837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A361645 (n : ℕ) : ℤ :=
  A361645.P5436970020374288837.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A361645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368642.P2583294438814666232

`A013928(n+1)+A008966(n+1)+A064608(n+1)-A034444(n+1)`
-/

namespace A368642.P2583294438814666232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1) + A008966 (n + 1) + A064608 (n + 1) - A034444 (n + 1)

end

end A368642.P2583294438814666232

noncomputable section

/-- A368642: a(n) = Sum_{k=1..n} mu(k)^2 * ceiling(n/k), where mu is the Möbius function (A008683).

Offset 1, canonical program `A368642.P2583294438814666232`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A013928, A034444, A064608, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368642 (n : ℕ) : ℤ :=
  A368642.P2583294438814666232.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A013928, A034444, A064608, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368642.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A385663.P12077718086945892519

`A007088(A001969(n+1))`
-/

namespace A385663.P12077718086945892519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A001969 (n + 1)).toNat

end

end A385663.P12077718086945892519

noncomputable section

/-- A385663: Binary numbers with an even number of 1s.

Offset 1, canonical program `A385663.P12077718086945892519`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001969, A007088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385663 (n : ℕ) : ℤ :=
  A385663.P12077718086945892519.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001969, A007088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385663.provenance : SequenceMachineLib.Provenance := .conditional

