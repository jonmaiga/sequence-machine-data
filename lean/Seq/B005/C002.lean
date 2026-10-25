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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C028
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
import Seq.B001.C007
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A296062.P5761383797540387978

`n-A268289(n)`
-/

namespace A296062.P5761383797540387978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A268289 n

end

end A296062.P5761383797540387978

noncomputable section

/-- A296062: Base-2 logarithm of the number of different shapes of balanced binary trees with n nodes (A110316).

Offset 0, canonical program `A296062.P5761383797540387978`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296062 (n : ℕ) : ℤ :=
  A296062.P5761383797540387978.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296062.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A301336.P12381687914768118623

`A268289(n)-1`
-/

namespace A301336.P12381687914768118623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268289 n - 1

end

end A301336.P12381687914768118623

noncomputable section

/-- A301336: a(n) = total number of 1's minus total number of 0's in binary expansions of 0, ..., n.

Offset 0, canonical program `A301336.P12381687914768118623`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A301336 (n : ℕ) : ℤ :=
  A301336.P12381687914768118623.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A301336.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336647.P1661556818682037462

`n+1-A336566(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336647.P1661556818682037462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A336566 (n + 1)

end

end A336647.P1661556818682037462

noncomputable section

/-- A336647: a(n) = n - A336566(n).

Offset 1, canonical program `A336647.P1661556818682037462`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336647 (n : ℕ) : ℤ :=
  A336647.P1661556818682037462.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336647.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387219.P4420504410131079771

`(-1)^A255070(n+1)`
-/

namespace A387219.P4420504410131079771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A255070 (n + 1) : ℤ)

end

end A387219.P4420504410131079771

noncomputable section

/-- A387219: Product of the first n terms of the paperfolding sequence A034947, or the Kronecker symbol (-1|n!).

Offset 1, canonical program `A387219.P4420504410131079771`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387219 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387219.P4420504410131079771.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387219.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A389447.P10658135204883957213`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389447 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389447.P10658135204883957213.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389447.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A389448.P4992283218641598864`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389448 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389448.P4992283218641598864.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389448.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A346422.P4569030555854337770

`(1+A014081(n))*a(A053645(n))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346422.P4569030555854337770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 + A014081 n) * a (A053645 n).toNat

end

end A346422.P4569030555854337770

noncomputable section

/-- A346422: a(n) = (1 + A014081(n))*a(A053645(n)) for n > 0 with a(0) = 1.

Offset 0, canonical program `A346422.P4569030555854337770`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346422 (n : ℕ) : ℤ :=
  A346422.P4569030555854337770.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346422.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360692.P11101891494698958030

`A101279(n+2)-1`
-/

namespace A360692.P11101891494698958030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (n + 2) - 1

end

end A360692.P11101891494698958030

noncomputable section

/-- A360692: a(0) = 0. Thereafter a(n+1) = a(a(n)) if a(n) has not occurred previously, otherwise a(n+1) = n - 1 - a(n-1).

Offset 0, canonical program `A360692.P11101891494698958030`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360692 (n : ℕ) : ℤ :=
  A360692.P11101891494698958030.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360692.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382123.P171162339606438149

`A000203(n+1)*A062731(n+1)/3`
-/

namespace A382123.P171162339606438149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A062731 (n + 1) : ℚ) / 3

end

end A382123.P171162339606438149

noncomputable section

/-- A382123: a(n) = sigma(n)*sigma(2*n)/3 for n >= 1.

Offset 1, canonical program `A382123.P171162339606438149`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382123 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382123.P171162339606438149.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382123.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387001.P16811340479551848930

`A224880(n+1)+1`
-/

namespace A387001.P16811340479551848930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224880 (n + 1) + 1

end

end A387001.P16811340479551848930

noncomputable section

/-- A387001: Number of vertices in the diagram called "symmetric representation of sigma(n)" where its "parts" or polygons are dissected into unit squares (see the example).

Offset 1, canonical program `A387001.P16811340479551848930`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387001 (n : ℕ) : ℤ :=
  A387001.P16811340479551848930.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387001.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A284565.P9570140672652545483

`A000360(2*n)`
-/

namespace A284565.P9570140672652545483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (2 * n)

end

end A284565.P9570140672652545483

noncomputable section

/-- A284565: Bisection of A000360.

Offset 0, canonical program `A284565.P9570140672652545483`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284565 (n : ℕ) : ℤ :=
  A284565.P9570140672652545483.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284565.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A285717.P2148644564262029949

`A007814(n+1)+A159918(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285717.P2148644564262029949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A159918 (n + 1)

end

end A285717.P2148644564262029949

noncomputable section

/-- A285717: a(n) = A007814(n) + A159918(n) = A007814(n) + A000120(n^2).

Offset 1, canonical program `A285717.P2148644564262029949`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285717 (n : ℕ) : ℤ :=
  A285717.P2148644564262029949.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285717.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A296306.P7064557066489787750

`(4^(A007814(n+1)+1)-1)/3`
-/

namespace A296306.P7064557066489787750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 : ℚ) ^ (A007814 (n + 1) + 1 : ℤ) - 1) / 3

end

end A296306.P7064557066489787750

noncomputable section

/-- A296306: a(n) = A001157(n)/A050999(n).

Offset 1, canonical program `A296306.P7064557066489787750`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296306 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A296306.P7064557066489787750.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296306.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A309761.P8963305717422464653

`A276349(n+1)/10`
-/

namespace A309761.P8963305717422464653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276349 (n + 1) : ℚ) / 10

end

end A309761.P8963305717422464653

noncomputable section

/-- A309761: Numbers that are sums of consecutive powers of 10.

Offset 1, canonical program `A309761.P8963305717422464653`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309761 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A309761.P8963305717422464653.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309761.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A319526.P5033743873858827334

`A000203(A003991(n+1))`
-/

namespace A319526.P5033743873858827334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A003991 (n + 1)).toNat

end

end A319526.P5033743873858827334

noncomputable section

/-- A319526: Square array read by antidiagonals upwards: T(n,k) = sigma(n*k), n >= 1, k >= 1.

Offset 1, canonical program `A319526.P5033743873858827334`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319526 (n : ℕ) : ℤ :=
  A319526.P5033743873858827334.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319526.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A324379.P10721248754641140736

`A007814(A005187(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324379.P10721248754641140736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005187 (n + 1)).toNat

end

end A324379.P10721248754641140736

noncomputable section

/-- A324379: a(n) = A007814(A005187(n)).

Offset 1, canonical program `A324379.P10721248754641140736`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007814(A005187(n+1))` (program `A324379.P10721248754641140736`, by `A324379.P10721248754641140736.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A324379 (n : ℕ) : ℤ :=
  A324379.P10721248754641140736.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007814(A005187(n+1))` (program `A324379.P10721248754641140736`, by `A324379.P10721248754641140736.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A324379.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A326714.P2677261734638902469

`A007814(n+1)+A161680(n+1)`
-/

namespace A326714.P2677261734638902469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A161680 (n + 1)

end

end A326714.P2677261734638902469

noncomputable section

/-- A326714: a(n) = binomial(n,2) + (2-adic valuation of n).

Offset 1, canonical program `A326714.P2677261734638902469`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326714 (n : ℕ) : ℤ :=
  A326714.P2677261734638902469.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326714.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336937.P4577035631224528791

`A286357(n+1)-1`
-/

namespace A336937.P4577035631224528791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286357 (n + 1) - 1

end

end A336937.P4577035631224528791

noncomputable section

/-- A336937: The 2-adic valuation of sigma(n), the sum of divisors of n.

Offset 1, canonical program `A336937.P4577035631224528791`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336937 (n : ℕ) : ℤ :=
  A336937.P4577035631224528791.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336937.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A337923.P10900891668975764083

`A007814(A000045(n+1))`
-/

namespace A337923.P10900891668975764083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000045 (n + 1)).toNat

end

end A337923.P10900891668975764083

noncomputable section

/-- A337923: a(n) is the exponent of the highest power of 2 dividing the n-th Fibonacci number.

Offset 1, canonical program `A337923.P10900891668975764083`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337923 (n : ℕ) : ℤ :=
  A337923.P10900891668975764083.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337923.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349212.P10495563625750167007

`A001227(n+1)*(n+1+A007814(n+1))`
-/

namespace A349212.P10495563625750167007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * ((n + 1 : ℤ) + A007814 (n + 1))

end

end A349212.P10495563625750167007

noncomputable section

/-- A349212: a(n) = Sum_{d|n} n^(d mod 2).

Offset 1, canonical program `A349212.P10495563625750167007`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349212 (n : ℕ) : ℤ :=
  A349212.P10495563625750167007.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349212.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349213.P11981718417061897043

`A001227(n+1)*(1+(n+1)*A007814(n+1))`
-/

namespace A349213.P11981718417061897043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * (1 + (n + 1 : ℤ) * A007814 (n + 1))

end

end A349213.P11981718417061897043

noncomputable section

/-- A349213: a(n) = Sum_{d|n} n^((d+1) mod 2).

Offset 1, canonical program `A349213.P11981718417061897043`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349213 (n : ℕ) : ℤ :=
  A349213.P11981718417061897043.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349213.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A356006.P9495163879456603929

`A007814(n+1)+A007949(n+1)+A112765(n+1)`
-/

namespace A356006.P9495163879456603929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A007949 (n + 1) + A112765 (n + 1)

end

end A356006.P9495163879456603929

noncomputable section

/-- A356006: The number of prime divisors of n that are not greater than 5, counted with multiplicity.

Offset 1, canonical program `A356006.P9495163879456603929`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356006 (n : ℕ) : ℤ :=
  A356006.P9495163879456603929.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356006.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360469.P3812770369488140680

`n+3-A007814(n+5)`
-/

namespace A360469.P3812770369488140680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A007814 (n + 5)

end

end A360469.P3812770369488140680

noncomputable section

/-- A360469: Only k >= 0 such that, for every odd r > 0, A093179(n) divides the generalized Fermat number (A007117(n)^r)^(2^k) + 1.

Offset 3, canonical program `A360469.P3812770369488140680`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360469 (n : ℕ) : ℤ :=
  A360469.P3812770369488140680.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360469.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A368823.P14810735027844929690

`A055231(a(n-1)*(n+1))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A368823.P14810735027844929690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055231 (a (n - 1) * (n + 1 : ℤ)).toNat

end

end A368823.P14810735027844929690

noncomputable section

/-- A368823: a(1) = 1; for n > 1, a(n) = A055231(a(n-1) * n), where A055231(k) is the powerfree part of k.

Offset 1, canonical program `A368823.P14810735027844929690`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368823 (n : ℕ) : ℤ :=
  A368823.P14810735027844929690.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368823.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A368825.P9757480026182637684

`A055231(a(n-1)+n+1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A368825.P9757480026182637684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055231 (a (n - 1) + (n + 1 : ℤ)).toNat

end

end A368825.P9757480026182637684

noncomputable section

/-- A368825: a(1) = 1; for n > 1, a(n) = A055231(a(n-1) + n), where A055231(k) is the powerfree part of k.

Offset 1, canonical program `A368825.P9757480026182637684`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368825 (n : ℕ) : ℤ :=
  A368825.P9757480026182637684.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368825.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A371093.P8625920196172340784

`A007814(A016777(n))`
-/

namespace A371093.P8625920196172340784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A016777 n).toNat

end

end A371093.P8625920196172340784

noncomputable section

/-- A371093: a(n) is the 2-adic valuation of 3n+1.

Offset 0, canonical program `A371093.P8625920196172340784`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371093 (n : ℕ) : ℤ :=
  A371093.P8625920196172340784.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371093.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372205.P8398281046845519076

`(-1)^n*a((n-2^A007814(n))/2)+a(floor((2*n-2^A007814(n))/2))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372205.P8398281046845519076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-1) ^ n * a (SequenceMachineLib.roundAway (((n : ℚ) - (2 : ℚ) ^ (A007814 n : ℤ)) / 2)).toNat + a ⌊((2 * n : ℚ) - (2 : ℚ) ^ (A007814 n : ℤ)) / 2⌋.toNat

end

end A372205.P8398281046845519076

noncomputable section

/-- A372205: a(n) = (-1)^n*a((n - 2^A007814(n))/2) + a(floor((2*n - 2^A007814(n))/2)) for n > 0 and a(0) = 1.

Offset 0, canonical program `A372205.P8398281046845519076`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*a((n-2^A007814(n))/2)+a(floor((2*n-2^A007814(n))/2))` (program `A372205.P8398281046845519076`, by `A372205.P8398281046845519076.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372205 (n : ℕ) : ℤ :=
  A372205.P8398281046845519076.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*a((n-2^A007814(n))/2)+a(floor((2*n-2^A007814(n))/2))` (program `A372205.P8398281046845519076`, by `A372205.P8398281046845519076.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372205.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A373155.P8541549841256857123

`A011655(n+1)*A035263(n+1)`
-/

namespace A373155.P8541549841256857123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 1) * A035263 (n + 1)

end

end A373155.P8541549841256857123

noncomputable section

/-- A373155: a(n) = 1 if n is a non-multiple of 3 whose 2-adic valuation is even, otherwise 0.

Offset 1, canonical program `A373155.P8541549841256857123`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373155 (n : ℕ) : ℤ :=
  A373155.P8541549841256857123.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373155.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378888.P6768742438089139191

`gcd(n+1, A007814(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378888.P6768742438089139191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A007814 (n + 1))

end

end A378888.P6768742438089139191

noncomputable section

/-- A378888: a(n) = gcd(n, A007814(n)).

Offset 1, canonical program `A378888.P6768742438089139191`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, A007814(n+1))` (program `A378888.P6768742438089139191`, by `A378888.P6768742438089139191.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378888 (n : ℕ) : ℤ :=
  (A378888.P6768742438089139191.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, A007814(n+1))` (program `A378888.P6768742438089139191`, by `A378888.P6768742438089139191.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378888.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A378998.P7086565219959481475

`A007814(A088580(n+1))`
-/

namespace A378998.P7086565219959481475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A088580 (n + 1)).toNat

end

end A378998.P7086565219959481475

noncomputable section

/-- A378998: Number of trailing 1-bits in the binary representation of sigma(n).

Offset 1, canonical program `A378998.P7086565219959481475`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378998 (n : ℕ) : ℤ :=
  A378998.P7086565219959481475.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378998.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397779.P3478401780238339042

`a(n-3)+A007814(n)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A397779.P3478401780238339042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 3) + A007814 n

end

end A397779.P3478401780238339042

noncomputable section

/-- A397779: 2-adic valuation of the triple factorial of n.

Offset 0, canonical program `A397779.P3478401780238339042`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397779 (n : ℕ) : ℤ :=
  A397779.P3478401780238339042.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397779.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373933.P14223243970326009727

`A373934(n+2)-A373934(n+1)`
-/

namespace A373933.P14223243970326009727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373934 (n + 2) - A373934 (n + 1)

end

end A373933.P14223243970326009727

noncomputable section

/-- A373933: Number of compositions of 7*n-1 into parts 6 and 7.

Offset 1, canonical program `A373933.P14223243970326009727`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373933 (n : ℕ) : ℤ :=
  A373933.P14223243970326009727.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373933.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A281902.P11836732846535714631

`eq[1, char[A049780(n)+n]]`
-/

namespace A281902.P11836732846535714631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049780 n + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281902.P11836732846535714631

noncomputable section

/-- A281902: Numbers n which have the form n = k^2 - k + (i^2-i)/2 + 2*k*i, k>=1, i>=0.

Offset 1, canonical program `A281902.P11836732846535714631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2175 terms. -/
def A281902 (n : ℕ) : ℤ :=
  (A281902.P11836732846535714631.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2175 terms. -/
def A281902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281944.P7909452327264810087

`A037960(A002260(n+1))*A135278(n)`
-/

namespace A281944.P7909452327264810087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037960 (A002260 (n + 1)).toNat * A135278 n

end

end A281944.P7909452327264810087

noncomputable section

/-- A281944: Triangle read by rows: T(n,k) (n>=1, 3<=k<=n+2) is the number of k-sequences of balls colored with n colors such that exactly two balls are of a color seen previously in the sequence.

Offset 1, canonical program `A281944.P7909452327264810087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1035 terms. -/
def A281944 (n : ℕ) : ℤ :=
  A281944.P7909452327264810087.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1035 terms. -/
def A281944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284031.P9234368606975242882

`A283909(n+1)/2`
-/

namespace A284031.P9234368606975242882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283909 (n + 1) : ℚ) / 2

end

end A284031.P9234368606975242882

noncomputable section

/-- A284031: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 790", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A284031.P9234368606975242882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A284031 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A284031.P9234368606975242882.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A284031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284128.P5800027111026948998

`A090988(n+1)+A084468(n+1)`
-/

namespace A284128.P5800027111026948998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090988 (n + 1) + A084468 (n + 1)

end

end A284128.P5800027111026948998

noncomputable section

/-- A284128: Hosoya triangle of Fermat Lucas type, read by rows.

Offset 9, canonical program `A284128.P5800027111026948998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284128 (n : ℕ) : ℤ :=
  A284128.P5800027111026948998.a (n - 9)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284131.P15303166683764381892

`A284115(A185871(n+1))`
-/

namespace A284131.P15303166683764381892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284115 (A185871 (n + 1)).toNat

end

end A284131.P15303166683764381892

noncomputable section

/-- A284131: Hosoya triangle of Morgan Voyce type, read by rows.

Offset 1, canonical program `A284131.P15303166683764381892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2480 terms. -/
def A284131 (n : ℕ) : ℤ :=
  A284131.P15303166683764381892.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2480 terms. -/
def A284131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284263.P2360290570486179856

`A251719(n+1)-1`
-/

namespace A284263.P2360290570486179856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251719 (n + 1) - 1

end

end A284263.P2360290570486179856

noncomputable section

/-- A284263: a(n) = A252459(2*A000040(n)), a(0) = 0 by convention.

Offset 0, canonical program `A284263.P2360290570486179856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284263 (n : ℕ) : ℤ :=
  A284263.P2360290570486179856.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285898.P6248290526350817964

`val(A077320(A049777(n+1)), A077320(n+1))`
-/

namespace A285898.P6248290526350817964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A077320 (A049777 (n + 1)).toNat).toNat (A077320 (n + 1)).toNat

end

end A285898.P6248290526350817964

noncomputable section

/-- A285898: Triangle read by row: T(n,k) = number of partitions of n into exactly k consecutive parts (1 <= k <= n).

Offset 1, canonical program `A285898.P6248290526350817964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A285898 (n : ℕ) : ℤ :=
  (A285898.P6248290526350817964.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A285898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285952.P3731534810684257932

`record[(n+1)*A254377(n)]%2`
-/

namespace A285952.P3731534810684257932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A254377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2

end

end A285952.P3731534810684257932

noncomputable section

/-- A285952: {0->1, 1->10}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A285952.P3731534810684257932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285952 (n : ℕ) : ℤ :=
  A285952.P3731534810684257932.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286098.P12308120415836337446

`A057944(n)+A004198(n)`
-/

namespace A286098.P12308120415836337446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004198 n

end

end A286098.P12308120415836337446

noncomputable section

/-- A286098: Square array read by antidiagonals: A(n,k) = T(n AND k, n OR k), where T(n,k) is sequence A001477 considered as a two-dimensional table, AND is bitwise-and (A004198) and OR is bitwise-or (A003986).

Offset 0, canonical program `A286098.P12308120415836337446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286098 (n : ℕ) : ℤ :=
  A286098.P12308120415836337446.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286099.P16724800913237782090

`A099026(n)+n`
-/

namespace A286099.P16724800913237782090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099026 n + (n : ℤ)

end

end A286099.P16724800913237782090

noncomputable section

/-- A286099: Square array read by antidiagonals: A(n,k) = T(n OR k, n AND k), where T(n,k) is sequence A001477 considered as a two-dimensional table, AND is bitwise-and (A004198) and OR is bitwise-or (A003986).

Offset 0, canonical program `A286099.P16724800913237782090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286099 (n : ℕ) : ℤ :=
  A286099.P16724800913237782090.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286147.P2874123018124836590

`A286145(A061579(n))`
-/

namespace A286147.P2874123018124836590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286145 (A061579 n).toNat

end

end A286147.P2874123018124836590

noncomputable section

/-- A286147: Square array read by antidiagonals: A(n,k) = T(n XOR k, n), where T(n,k) is sequence A001477 considered as a two-dimensional table, and XOR is bitwise-xor (A003987).

Offset 0, canonical program `A286147.P2874123018124836590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286147 (n : ℕ) : ℤ :=
  A286147.P2874123018124836590.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286992.P3935319046932940823

`A286803(n+1)+A159684(n)`
-/

namespace A286992.P3935319046932940823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286803 (n + 1) + A159684 n

end

end A286992.P3935319046932940823

noncomputable section

/-- A286992: Positions of 1 in A286990; complement of A286991.

Offset 1, canonical program `A286992.P3935319046932940823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286992 (n : ℕ) : ℤ :=
  A286992.P3935319046932940823.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287326.P2171539883149157368

`3-2*A176625(n)`
-/

namespace A287326.P2171539883149157368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * A176625 n

end

end A287326.P2171539883149157368

noncomputable section

/-- A287326: Triangle read by rows: T(n, k) = 6*k*(n-k) + 1; n >= 0, 0 <= k <= n.

Offset 0, canonical program `A287326.P2171539883149157368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287326 (n : ℕ) : ℤ :=
  A287326.P2171539883149157368.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287618.P888519761362367504

`A110654(A002024(n+1))+A110654(A048151(n+1))`
-/

namespace A287618.P888519761362367504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A002024 (n + 1)).toNat + A110654 (A048151 (n + 1)).toNat

end

end A287618.P888519761362367504

noncomputable section

/-- A287618: Triangle read by rows: T(j,k) is the number of distinct edge segments in a j X k rectangular grid.

Offset 1, canonical program `A287618.P888519761362367504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287618 (n : ℕ) : ℤ :=
  A287618.P888519761362367504.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288349.P2654528822955700226

`∑[A059268(n)]`
-/

namespace A288349.P2654528822955700226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288349.P2654528822955700226

noncomputable section

/-- A288349: Partial sums of A059268.

Offset 1, canonical program `A288349.P2654528822955700226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288349 (n : ℕ) : ℤ :=
  A288349.P2654528822955700226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290230.P10636525088049313073

`or(A051049(n), A288811(n))`
-/

namespace A290230.P10636525088049313073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051049 n) (A288811 n)

end

end A290230.P10636525088049313073

noncomputable section

/-- A290230: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290230.P10636525088049313073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290230 (n : ℕ) : ℤ :=
  A290230.P10636525088049313073.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290452.P1449433213042397141

`A135528(A268234(n))`
-/

namespace A290452.P1449433213042397141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (A268234 n).toNat

end

end A290452.P1449433213042397141

noncomputable section

/-- A290452: Triangle formed by reading the triangle of Eulerian numbers (A173018) mod 2.

Offset 0, canonical program `A290452.P1449433213042397141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290452 (n : ℕ) : ℤ :=
  A290452.P1449433213042397141.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292030.P15227462893493143006

`A141169(n)+A025581(n)*A104763(n+1)`
-/

namespace A292030.P15227462893493143006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n + A025581 n * A104763 (n + 1)

end

end A292030.P15227462893493143006

noncomputable section

/-- A292030: Table read by ascending antidiagonals: T(n,k) = A000045(k+1)*n + A000045(k).

Offset 0, canonical program `A292030.P15227462893493143006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292030 (n : ℕ) : ℤ :=
  A292030.P15227462893493143006.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292611.P2392908135108116771

`C(A189151(n+1), 2)`
-/

namespace A292611.P2392908135108116771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A189151 (n + 1)).toNat 2

end

end A292611.P2392908135108116771

noncomputable section

/-- A292611: Skip 3 triangle numbers, take 1 triangle number, skip 4 triangle numbers, take 2 triangle numbers, skip 5 triangle numbers, take 3 triangle numbers, ...

Offset 1, canonical program `A292611.P2392908135108116771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292611 (n : ℕ) : ℤ :=
  (A292611.P2392908135108116771.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292930.P3057802283522938846

`A125091(n+1)*A166350(n+1)`
-/

namespace A292930.P3057802283522938846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125091 (n + 1) * A166350 (n + 1)

end

end A292930.P3057802283522938846

noncomputable section

/-- A292930: Triangle read by rows: T(n,k) (n>=1, 3<=k<=n+2) is the number of k-sequences of balls colored with at most n colors such that exactly three balls are the same color as some other ball in the sequence.

Offset 1, canonical program `A292930.P3057802283522938846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2342 terms. -/
def A292930 (n : ℕ) : ℤ :=
  A292930.P3057802283522938846.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2342 terms. -/
def A292930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295989.P16301422566830817347

`A080099(A268231(n+1))`
-/

namespace A295989.P16301422566830817347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080099 (A268231 (n + 1)).toNat

end

end A295989.P16301422566830817347

noncomputable section

/-- A295989: Irregular triangle T(n, k), read by rows, n >= 0 and 0 <= k < A001316(n): T(n, k) is the (k+1)-th nonnegative number m such that n AND m = m (where AND denotes the bitwise AND operator).

Offset 0, canonical program `A295989.P16301422566830817347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6563 terms. -/
def A295989 (n : ℕ) : ℤ :=
  A295989.P16301422566830817347.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6563 terms. -/
def A295989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296180.P1607420442538355336

`2-A176625(n)`
-/

namespace A296180.P1607420442538355336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A176625 n

end

end A296180.P1607420442538355336

noncomputable section

/-- A296180: Triangle read by rows: T(n, k) = 3*(n - k)*k + 1, n >= 0, 0 <= k <= n.

Offset 0, canonical program `A296180.P1607420442538355336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296180 (n : ℕ) : ℤ :=
  A296180.P1607420442538355336.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299504.P7690026812954744828

`A009998(n)*A233543(n)`
-/

namespace A299504.P7690026812954744828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n * A233543 n

end

end A299504.P7690026812954744828

noncomputable section

/-- A299504: Triangle read by rows, T(n,k) = (k+1)^(n-k)*k! for 0 <= k <= n.

Offset 0, canonical program `A299504.P7690026812954744828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A299504 (n : ℕ) : ℤ :=
  A299504.P7690026812954744828.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A299504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303259.P6745834928257893132

`A046899(A007590(n))-A142150(n)`
-/

namespace A303259.P6745834928257893132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A007590 n).toNat - A142150 n

end

end A303259.P6745834928257893132

noncomputable section

/-- A303259: Number of ordered rooted trees with n non-root nodes such that the maximal outdegree equals ceiling(n/2).

Offset 0, canonical program `A303259.P6745834928257893132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A303259 (n : ℕ) : ℤ :=
  A303259.P6745834928257893132.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A303259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304685.P4730161233825574462

`C(A204697(n+1), A286577(A038502(n+1)))`
-/

namespace A304685.P4730161233825574462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A204697 (n + 1)).toNat (A286577 (A038502 (n + 1)).toNat).toNat

end

end A304685.P4730161233825574462

noncomputable section

/-- A304685: a(n) = A000699(n) (mod 3).

Offset 1, canonical program `A304685.P4730161233825574462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A304685 (n : ℕ) : ℤ :=
  (A304685.P4730161233825574462.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A304685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305006.P10100576833363132034

`lcm((n+1)², A326238(n+1))/A162395(n+1)`
-/

namespace A305006.P10100576833363132034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n + 1) ^ 2 : ℤ) (A326238 (n + 1)) : ℚ) / (A162395 (n + 1) : ℚ)

end

end A305006.P10100576833363132034

noncomputable section

/-- A305006: Numerators of coefficients in expansion of Sum_{k>=1} x^k/(k*(1 + x^k)).

Offset 1, canonical program `A305006.P10100576833363132034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305006 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A305006.P10100576833363132034.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305721.P5842318793537541038

`∑[A019563(n)]`
-/

namespace A305721.P5842318793537541038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305721.P5842318793537541038

noncomputable section

/-- A305721: Crystal ball sequence for the lattice C_7.

Offset 0, canonical program `A305721.P5842318793537541038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305721 (n : ℕ) : ℤ :=
  A305721.P5842318793537541038.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308127.P13327846023797537183

`lt[A336564(n+2), 0]+2`
-/

namespace A308127.P13327846023797537183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336564 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A308127.P13327846023797537183

noncomputable section

/-- A308127: Non-coreful abundant numbers: numbers k such that ncsigma(k) > k, where ncsigma(k) is the sum of the non-coreful divisors of k (A308135).

Offset 1, canonical program `A308127.P13327846023797537183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1988 terms. -/
def A308127 (n : ℕ) : ℤ :=
  (A308127.P13327846023797537183.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1988 terms. -/
def A308127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308663.P15674035364685402174

`A163866(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A308663.P15674035364685402174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163866 n + (1 - a (n - 1))

end

end A308663.P15674035364685402174

noncomputable section

/-- A308663: Partial sums of A097805.

Offset 0, canonical program `A308663.P15674035364685402174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308663 (n : ℕ) : ℤ :=
  A308663.P15674035364685402174.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309555.P8164692491126048069

`A077028(n)+2`
-/

namespace A309555.P8164692491126048069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + 2

end

end A309555.P8164692491126048069

noncomputable section

/-- A309555: Triangle read by rows: T(n,k) = 3 + k*(n-k) for n >= 0, 0 <= k <= n.

Offset 0, canonical program `A309555.P8164692491126048069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309555 (n : ℕ) : ℤ :=
  A309555.P8164692491126048069.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309720.P3653890474350407193

`A096379(eq[A036263(n+1), A054541(n+1)])`
-/

namespace A309720.P3653890474350407193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A309720.P3653890474350407193

noncomputable section

/-- A309720: Numbers of the form p+q-r = q+r-s where p < q < r < s are consecutive primes.

Offset 1, canonical program `A309720.P3653890474350407193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A309720 (n : ℕ) : ℤ :=
  A309720.P3653890474350407193.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A309720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313053.P8254110359425895258

`A312903(n)+A002266(n+2)`
-/

namespace A313053.P8254110359425895258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312903 n + A002266 (n + 2)

end

end A313053.P8254110359425895258

noncomputable section

/-- A313053: Coordination sequence Gal.5.114.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313053.P8254110359425895258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2481 terms. -/
def A313053 (n : ℕ) : ℤ :=
  A313053.P8254110359425895258.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2481 terms. -/
def A313053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313255.P1594934984092539332

`A313116(n)+A002266(n+2)`
-/

namespace A313255.P1594934984092539332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313116 n + A002266 (n + 2)

end

end A313255.P1594934984092539332

noncomputable section

/-- A313255: Coordination sequence Gal.5.87.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313255.P1594934984092539332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2357 terms. -/
def A313255 (n : ℕ) : ℤ :=
  A313255.P1594934984092539332.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2357 terms. -/
def A313255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313295.P668024408772330037

`A313154(n)+A002266(n+2)`
-/

namespace A313295.P668024408772330037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313154 n + A002266 (n + 2)

end

end A313295.P668024408772330037

noncomputable section

/-- A313295: Coordination sequence Gal.5.90.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313295.P668024408772330037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2296 terms. -/
def A313295 (n : ℕ) : ℤ :=
  A313295.P668024408772330037.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2296 terms. -/
def A313295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313476.P1237108097731061015

`A330025(n)+A312903(n)`
-/

namespace A313476.P1237108097731061015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A312903 n

end

end A313476.P1237108097731061015

noncomputable section

/-- A313476: Coordination sequence Gal.5.53.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313476.P1237108097731061015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2525 terms. -/
def A313476 (n : ℕ) : ℤ :=
  A313476.P1237108097731061015.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2525 terms. -/
def A313476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313565.P15751569244382166249

`A313144(n)+A128834(n)`
-/

namespace A313565.P15751569244382166249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313144 n + A128834 n

end

end A313565.P15751569244382166249

noncomputable section

/-- A313565: Coordination sequence Gal.5.219.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313565.P15751569244382166249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. -/
def A313565 (n : ℕ) : ℤ :=
  A313565.P15751569244382166249.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. -/
def A313565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313698.P13755199689401812010

`A313251(n)+A128834(n)`
-/

namespace A313698.P13755199689401812010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313251 n + A128834 n

end

end A313698.P13755199689401812010

noncomputable section

/-- A313698: Coordination sequence Gal.6.157.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313698.P13755199689401812010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A313698 (n : ℕ) : ℤ :=
  A313698.P13755199689401812010.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A313698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313782.P12193786850322098717

`A330025(n)+A313154(n)`
-/

namespace A313782.P12193786850322098717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A313154 n

end

end A313782.P12193786850322098717

noncomputable section

/-- A313782: Coordination sequence Gal.5.289.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313782.P12193786850322098717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2308 terms. -/
def A313782 (n : ℕ) : ℤ :=
  A313782.P12193786850322098717.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2308 terms. -/
def A313782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313853.P5161189615059206870

`A313246(n)+A128834(A004525(n))`
-/

namespace A313853.P5161189615059206870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313246 n + A128834 (A004525 n).toNat

end

end A313853.P5161189615059206870

noncomputable section

/-- A313853: Coordination sequence Gal.6.156.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313853.P5161189615059206870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2399 terms. -/
def A313853 (n : ℕ) : ℤ :=
  A313853.P5161189615059206870.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2399 terms. -/
def A313853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313922.P17676570645266848054

`A313246(n)+A004525(n)`
-/

namespace A313922.P17676570645266848054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313246 n + A004525 n

end

end A313922.P17676570645266848054

noncomputable section

/-- A313922: Coordination sequence Gal.6.356.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313922.P17676570645266848054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2299 terms. -/
def A313922 (n : ℕ) : ℤ :=
  A313922.P17676570645266848054.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2299 terms. -/
def A313922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313924.P10563583441028807303

`A313251(n)+A004525(n)`
-/

namespace A313924.P10563583441028807303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313251 n + A004525 n

end

end A313924.P10563583441028807303

noncomputable section

/-- A313924: Coordination sequence Gal.6.626.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313924.P10563583441028807303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2244 terms. -/
def A313924 (n : ℕ) : ℤ :=
  A313924.P10563583441028807303.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2244 terms. -/
def A313924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314164.P3889961829732098224

`A313116(n)+A057354(2*n+1)`
-/

namespace A314164.P3889961829732098224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313116 n + A057354 (2 * n + 1)

end

end A314164.P3889961829732098224

noncomputable section

/-- A314164: Coordination sequence Gal.5.302.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314164.P3889961829732098224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1982 terms. -/
def A314164 (n : ℕ) : ℤ :=
  A314164.P3889961829732098224.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1982 terms. -/
def A314164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314252.P9634804335758676249

`A313116(n)+n`
-/

namespace A314252.P9634804335758676249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313116 n + (n : ℤ)

end

end A314252.P9634804335758676249

noncomputable section

/-- A314252: Coordination sequence Gal.5.295.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314252.P9634804335758676249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2198 terms. -/
def A314252 (n : ℕ) : ℤ :=
  A314252.P9634804335758676249.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2198 terms. -/
def A314252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314899.P7105760915525544627

`A004525(n)+A314841(n)-A004396(A004525(n))`
-/

namespace A314899.P7105760915525544627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314841 n - A004396 (A004525 n).toNat)

end

end A314899.P7105760915525544627

noncomputable section

/-- A314899: Coordination sequence Gal.6.153.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314899.P7105760915525544627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A314899 (n : ℕ) : ℤ :=
  A314899.P7105760915525544627.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A314899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314912.P18076292877621533634

`A004525(n)+A314841(n)-A004525(A004396(n))`
-/

namespace A314912.P18076292877621533634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314841 n - A004525 (A004396 n).toNat)

end

end A314912.P18076292877621533634

noncomputable section

/-- A314912: Coordination sequence Gal.6.195.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314912.P18076292877621533634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. -/
def A314912 (n : ℕ) : ℤ :=
  A314912.P18076292877621533634.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. -/
def A314912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315215.P4888791960146051438

`A313154(n)+A253262(A253262(n)+n)`
-/

namespace A315215.P4888791960146051438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313154 n + A253262 (A253262 n + (n : ℤ)).toNat

end

end A315215.P4888791960146051438

noncomputable section

/-- A315215: Coordination sequence Gal.6.352.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315215.P4888791960146051438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2313 terms. -/
def A315215 (n : ℕ) : ℤ :=
  A315215.P4888791960146051438.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2313 terms. -/
def A315215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315266.P7852260397978347680

`A314841(n)+A004525(n)`
-/

namespace A315266.P7852260397978347680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n + A004525 n

end

end A315266.P7852260397978347680

noncomputable section

/-- A315266: Coordination sequence Gal.6.205.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315266.P7852260397978347680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A315266 (n : ℕ) : ℤ :=
  A315266.P7852260397978347680.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A315266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315275.P16320743547030048239

`A330025(n)+A314972(n)`
-/

namespace A315275.P16320743547030048239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A314972 n

end

end A315275.P16320743547030048239

noncomputable section

/-- A315275: Coordination sequence Gal.6.329.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315275.P16320743547030048239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2312 terms. -/
def A315275 (n : ℕ) : ℤ :=
  A315275.P16320743547030048239.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2312 terms. -/
def A315275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315399.P10081948034211585204

`abs(A008592(n)-A313292(n))`
-/

namespace A315399.P10081948034211585204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313292 n|

end

end A315399.P10081948034211585204

noncomputable section

/-- A315399: Coordination sequence Gal.4.43.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315399.P10081948034211585204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2302 terms. -/
def A315399 (n : ℕ) : ℤ :=
  A315399.P10081948034211585204.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2302 terms. -/
def A315399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315455.P3215631304142781688

`A313891(n)+A128834(n)`
-/

namespace A315455.P3215631304142781688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313891 n + A128834 n

end

end A315455.P3215631304142781688

noncomputable section

/-- A315455: Coordination sequence Gal.6.208.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315455.P3215631304142781688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2302 terms. -/
def A315455 (n : ℕ) : ℤ :=
  A315455.P3215631304142781688.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2302 terms. -/
def A315455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315468.P18044790226856226141

`A314972(n)+A253262(n)`
-/

namespace A315468.P18044790226856226141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314972 n + A253262 n

end

end A315468.P18044790226856226141

noncomputable section

/-- A315468: Coordination sequence Gal.5.300.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315468.P18044790226856226141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. -/
def A315468 (n : ℕ) : ℤ :=
  A315468.P18044790226856226141.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. -/
def A315468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315512.P16857491610922492177

`A315246(n)+∑[A021913(n)]`
-/

namespace A315512.P16857491610922492177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315246 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315512.P16857491610922492177

noncomputable section

/-- A315512: Coordination sequence Gal.6.626.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315512.P16857491610922492177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A315512 (n : ℕ) : ℤ :=
  A315512.P16857491610922492177.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A315512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315527.P15376779248736554616

`A314841(n)+n`
-/

namespace A315527.P15376779248736554616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n + (n : ℤ)

end

end A315527.P15376779248736554616

noncomputable section

/-- A315527: Coordination sequence Gal.6.638.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315527.P15376779248736554616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2107 terms. -/
def A315527 (n : ℕ) : ℤ :=
  A315527.P15376779248736554616.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2107 terms. -/
def A315527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315680.P2686874256871590290

`A315463(n)+A004396(n-A004396(n))`
-/

namespace A315680.P2686874256871590290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315463 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A315680.P2686874256871590290

noncomputable section

/-- A315680: Coordination sequence Gal.5.89.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315680.P2686874256871590290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2300 terms. -/
def A315680 (n : ℕ) : ℤ :=
  A315680.P2686874256871590290.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2300 terms. -/
def A315680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315681.P15551591667760656861

`A004525(n)+A315670(n)-A004525(A004396(n))`
-/

namespace A315681.P15551591667760656861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315670 n - A004525 (A004396 n).toNat)

end

end A315681.P15551591667760656861

noncomputable section

/-- A315681: Coordination sequence Gal.6.159.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315681.P15551591667760656861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A315681 (n : ℕ) : ℤ :=
  A315681.P15551591667760656861.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A315681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315700.P8415465502126498151

`abs(11*n-A313891(n))`
-/

namespace A315700.P8415465502126498151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(11 * n : ℤ) - A313891 n|

end

end A315700.P8415465502126498151

noncomputable section

/-- A315700: Coordination sequence Gal.6.638.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315700.P8415465502126498151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. -/
def A315700 (n : ℕ) : ℤ :=
  A315700.P8415465502126498151.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. -/
def A315700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315768.P5080605822707988904

`A314208(n)+A004525(n)`
-/

namespace A315768.P5080605822707988904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314208 n + A004525 n

end

end A315768.P5080605822707988904

noncomputable section

/-- A315768: Coordination sequence Gal.6.628.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315768.P5080605822707988904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A315768 (n : ℕ) : ℤ :=
  A315768.P5080605822707988904.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A315768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316717.P5515055320797680457

`A014081(eq[0, and(n, 2*and(n, 2*n))])`
-/

namespace A316717.P5515055320797680457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * Nat.land n (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A316717.P5515055320797680457

noncomputable section

/-- A316717: a(n) is the number of 3s in A316713(n). That is, a(n) is the number of C-sequences (A278041) used in the tribonacci ABC-representation of n >= 0.

Offset 0, canonical program `A316717.P5515055320797680457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A316717 (n : ℕ) : ℤ :=
  A316717.P5515055320797680457.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A316717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316831.P2741381390933968218

`A046819(a(floor(n/2))+n%2)` with `a(0)=0, a(1)=1`
-/

namespace A316831.P2741381390933968218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A046819 (a ⌊(n : ℚ) / 2⌋.toNat + ((n % 2 : ℕ) : ℤ)).toNat

end

end A316831.P2741381390933968218

noncomputable section

/-- A316831: Trajectory of 0 under repeated application of the morphism 0 -> 01, 1 -> 21, 2 -> 13, 3 -> 33.

Offset 0, canonical program `A316831.P2741381390933968218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316831 (n : ℕ) : ℤ :=
  A316831.P2741381390933968218.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316844.P16115526743851967488

`A056557(lt[A056559(n), A056558(n)])`
-/

namespace A316844.P16115526743851967488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056557 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A316844.P16115526743851967488

noncomputable section

/-- A316844: Column 2 of table A316841.

Offset 1, canonical program `A316844.P16115526743851967488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A316844 (n : ℕ) : ℤ :=
  A316844.P16115526743851967488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A316844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316845.P7291579847746609250

`A056558(lt[A056559(n), A056558(n)])`
-/

namespace A316845.P7291579847746609250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A316845.P7291579847746609250

noncomputable section

/-- A316845: Column 3 of table A316841.

Offset 1, canonical program `A316845.P7291579847746609250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A316845 (n : ℕ) : ℤ :=
  A316845.P7291579847746609250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A316845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317189.P4789240492486274008

`5%(A316826(n)+1)`
-/

namespace A317189.P4789240492486274008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A316826 n + 1)

end

end A317189.P4789240492486274008

noncomputable section

/-- A317189: A morphic sequence related to the ternary Thue-Morse sequence.

Offset 0, canonical program `A317189.P4789240492486274008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317189 (n : ℕ) : ℤ :=
  A317189.P4789240492486274008.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317933.P9961828793587788294

`A046643(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A317933.P9961828793587788294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A317933.P9961828793587788294

noncomputable section

/-- A317933: Numerators of rational valued sequence whose Dirichlet convolution with itself yields A034444 (number of unitary divisors of n).

Offset 1, canonical program `A317933.P9961828793587788294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317933 (n : ℕ) : ℤ :=
  A317933.P9961828793587788294.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317950.P649723107157043023

`Δ[abs(1-A317198(n))]`
-/

namespace A317950.P649723107157043023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A317198 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317950.P649723107157043023

noncomputable section

/-- A317950: First differences of ternary tribonacci word A080843.

Offset 0, canonical program `A317950.P649723107157043023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317950 (n : ℕ) : ℤ :=
  A317950.P649723107157043023.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318449.P14690494041851434724

`A046643((n+1)/ceil(xor(n, n+1)/2))`
-/

namespace A318449.P14690494041851434724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ))).toNat

end

end A318449.P14690494041851434724

noncomputable section

/-- A318449: Numerators of the sequence whose Dirichlet convolution with itself yields A001511, the 2-adic valuation of 2n.

Offset 1, canonical program `A318449.P14690494041851434724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318449 (n : ℕ) : ℤ :=
  A318449.P14690494041851434724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321258.P10467559747908190419

`A109974(A061579(n))-A009998(n)`
-/

namespace A321258.P10467559747908190419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (A061579 n).toNat - A009998 n

end

end A321258.P10467559747908190419

noncomputable section

/-- A321258: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals: A(n,k) = sigma_k(n) - n^k.

Offset 1, canonical program `A321258.P10467559747908190419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4656 terms. -/
def A321258 (n : ℕ) : ℤ :=
  A321258.P10467559747908190419.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4656 terms. -/
def A321258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321861.P2022339291446395564

`∑[and(2, -A138420(n+1))]-n`
-/

namespace A321861.P2022339291446395564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (-A138420 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A321861.P2022339291446395564

noncomputable section

/-- A321861: a(n) = A071838(prime(n)).

Offset 1, canonical program `A321861.P2022339291446395564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321861 (n : ℕ) : ℤ :=
  A321861.P2022339291446395564.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323466.P8596251984879986670

`A005811(n+1)+A014081(n+1)+1`
-/

namespace A323466.P8596251984879986670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (n + 1) + (A014081 (n + 1) + 1)

end

end A323466.P8596251984879986670

noncomputable section

/-- A323466: Number of terms in row n of A323465.

Offset 1, canonical program `A323466.P8596251984879986670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A323466 (n : ℕ) : ℤ :=
  A323466.P8596251984879986670.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A323466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324470.P11516600818281016258

`∑[2-A317198(n)]`
-/

namespace A324470.P11516600818281016258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A317198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324470.P11516600818281016258

noncomputable section

/-- A324470: Partial sums of ternary tribonacci word A092782.

Offset 1, canonical program `A324470.P11516600818281016258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324470 (n : ℕ) : ℤ :=
  A324470.P11516600818281016258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327217.P245651097107119372

`lt[n*A327216(n), n]`
-/

namespace A327217.P245651097107119372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327216 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327217.P245651097107119372

noncomputable section

/-- A327217: Positions of 0's in {A327216(n) : n > 0}.

Offset 1, canonical program `A327217.P245651097107119372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A327217 (n : ℕ) : ℤ :=
  (A327217.P245651097107119372.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A327217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327218.P13898235747039253329

`A327176(n+1)-A327174(A327176(n+1)+1)`
-/

namespace A327218.P13898235747039253329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327176 (n + 1) - A327174 (A327176 (n + 1) + 1).toNat

end

end A327218.P13898235747039253329

noncomputable section

/-- A327218: Positions of 1's in {A327216(n) : n > 0}.

Offset 1, canonical program `A327218.P13898235747039253329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327218 (n : ℕ) : ℤ :=
  A327218.P13898235747039253329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327224.P10926925885471084677

`A327207(n+1)-A327205(A327207(n+2)-3)`
-/

namespace A327224.P10926925885471084677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327207 (n + 1) - A327205 (A327207 (n + 2) - 3).toNat

end

end A327224.P10926925885471084677

noncomputable section

/-- A327224: Positions of 1's in {A327222(k) : n > 0}.

Offset 1, canonical program `A327224.P10926925885471084677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A327224 (n : ℕ) : ℤ :=
  A327224.P10926925885471084677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A327224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327317.P17591906357367732011

`A059268(n)*A096035(n+1)`
-/

namespace A327317.P17591906357367732011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A096035 (n + 1)

end

end A327317.P17591906357367732011

noncomputable section

/-- A327317: Triangular array read by rows: row n shows the coefficients of this polynomial of degree n: p(x,n) = 2^(n-1) ((x+r)^n - (x+s)^n)/(r - s), where r = 2 and s = 1/2.

Offset 1, canonical program `A327317.P17591906357367732011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8552 terms. -/
def A327317 (n : ℕ) : ℤ :=
  A327317.P17591906357367732011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8552 terms. -/
def A327317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327434.P6965097301390461405

`A056221(A046868(n+1)-1)`
-/

namespace A327434.P6965097301390461405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056221 (A046868 (n + 1) - 1).toNat

end

end A327434.P6965097301390461405

noncomputable section

/-- A327434: Prime(n)^2 - prime(n-1)*prime(n+1) for n in A046868.

Offset 1, canonical program `A327434.P6965097301390461405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A327434 (n : ℕ) : ℤ :=
  A327434.P6965097301390461405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A327434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329688.P15403590587362411359

`A329686(A042965(n+1))`
-/

namespace A329688.P15403590587362411359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329686 (A042965 (n + 1)).toNat

end

end A329688.P15403590587362411359

noncomputable section

/-- A329688: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UU, HH, HD and DU.

Offset 0, canonical program `A329688.P15403590587362411359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 516 terms. -/
def A329688 (n : ℕ) : ℤ :=
  A329688.P15403590587362411359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 516 terms. -/
def A329688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330547.P14620749538624071463

`∑[A033999(n)*A054541(n+1)]`
-/

namespace A330547.P14620749538624071463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330547.P14620749538624071463

noncomputable section

/-- A330547: a(1)=2; thereafter a(n) = a(n-1) + (-1)^(n+1)*(prime(n)-prime(n-1)) (where prime(k) denotes the k-th prime).

Offset 1, canonical program `A330547.P14620749538624071463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330547 (n : ℕ) : ℤ :=
  A330547.P14620749538624071463.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330547.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A330933.P1547525484770531212

`∩[A330932(n+1)-1, A330932(n+1)]`
-/

namespace A330933.P1547525484770531212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330932 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330933.P1547525484770531212

noncomputable section

/-- A330933: Starts of runs of 4 consecutive Niven numbers in base 2 (A049445).

Offset 1, canonical program `A330933.P1547525484770531212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 400 terms. -/
def A330933 (n : ℕ) : ℤ :=
  (A330933.P1547525484770531212.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 400 terms. -/
def A330933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330965.P15528813923853205152

`A000108(A002262(n))*A077028(n)`
-/

namespace A330965.P15528813923853205152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n).toNat * A077028 n

end

end A330965.P15528813923853205152

noncomputable section

/-- A330965: Array read by descending antidiagonals: A(n,k) = (1 + k*n)*C(n) where C(n) = Catalan numbers (A000108).

Offset 0, canonical program `A330965.P15528813923853205152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A330965 (n : ℕ) : ℤ :=
  A330965.P15528813923853205152.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A330965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331830.P3749508068268674475

`A268272(eq[1, A268272(n+1)-A268272(n)])`
-/

namespace A331830.P3749508068268674475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268272 (n + 1) - A268272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331830.P3749508068268674475

noncomputable section

/-- A331830: Numbers k such that k and k + 1 are both negabinary evil numbers.

Offset 1, canonical program `A331830.P3749508068268674475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A331830 (n : ℕ) : ℤ :=
  A331830.P3749508068268674475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A331830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331831.P1834665176300229750

`record[A141310(A268272(A004442(n)))]`
-/

namespace A331831.P1834665176300229750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A268272 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331831.P1834665176300229750

noncomputable section

/-- A331831: Numbers k such that k and k + 1 are both negabinary odious numbers.

Offset 1, canonical program `A331831.P1834665176300229750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2731 terms. -/
def A331831 (n : ℕ) : ℤ :=
  A331831.P1834665176300229750.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2731 terms. -/
def A331831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332616.P3784539761157873667

`A056556(n)^3+A056557(n)^3+A056558(n)^3-3*A056556(n)*A056557(n)*A056558(n)`
-/

namespace A332616.P3784539761157873667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n ^ 3 + A056557 n ^ 3 + A056558 n ^ 3 - 3 * A056556 n * A056557 n * A056558 n

end

end A332616.P3784539761157873667

noncomputable section

/-- A332616: a(n) = value of the cubic form A^3 + B^3 + C^3 - 3ABC evaluated at row n of the table in A331195.

Offset 0, canonical program `A332616.P3784539761157873667`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A332616 (n : ℕ) : ℤ :=
  A332616.P3784539761157873667.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A332616.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332644.P7124613951883106852

`a(n-1)*A037126(n)` with `a(0)=1`
-/

namespace A332644.P7124613951883106852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A037126 n

end

end A332644.P7124613951883106852

noncomputable section

/-- A332644: Largest of the least integers of prime signatures over all partitions of n into distinct parts.

Offset 0, canonical program `A332644.P7124613951883106852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A332644 (n : ℕ) : ℤ :=
  A332644.P7124613951883106852.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A332644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333231.P6834028189182866023

`A046868(n+1)-1`
-/

namespace A333231.P6834028189182866023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046868 (n + 1) - 1

end

end A333231.P6834028189182866023

noncomputable section

/-- A333231: Positions of weak descents in the sequence of differences between primes.

Offset 1, canonical program `A333231.P6834028189182866023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333231 (n : ℕ) : ℤ :=
  A333231.P6834028189182866023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333427.P1257739180150662020

`∩[A333426(n+1)-1, A333426(n+1)]`
-/

namespace A333427.P1257739180150662020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333426 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333427.P1257739180150662020

noncomputable section

/-- A333427: Numbers k such that k and k+1 are both primorial base Niven numbers (A333426).

Offset 1, canonical program `A333427.P1257739180150662020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A333427 (n : ℕ) : ℤ :=
  (A333427.P1257739180150662020.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A333427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333449.P15383882884305754423

`∑[∑{d}[n+1, A054541(#)]]`
-/

namespace A333449.P15383882884305754423
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A054541 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333449.P15383882884305754423

noncomputable section

/-- A333449: a(n) = Sum_{k=1..n} prime(floor(n/k)).

Offset 1, canonical program `A333449.P15383882884305754423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333449 (n : ℕ) : ℤ :=
  A333449.P15383882884305754423.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333911.P8917969992325064657

`eq[1, A229062(A000203(n+1))]+1`
-/

namespace A333911.P8917969992325064657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A333911.P8917969992325064657

noncomputable section

/-- A333911: Numbers k such that sigma(k) is the sum of 2 squares, where sigma is the sum of divisors function (A000203).

Offset 1, canonical program `A333911.P8917969992325064657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3215 terms. -/
def A333911 (n : ℕ) : ℤ :=
  (A333911.P8917969992325064657.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3215 terms. -/
def A333911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334156.P17698209707109941031

`A007526(A002260(n+1))*A173333(n+1)`
-/

namespace A334156.P17698209707109941031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007526 (A002260 (n + 1)).toNat * A173333 (n + 1)

end

end A334156.P17698209707109941031

noncomputable section

/-- A334156: Triangle read by rows: T(n,m) is the number of length n decorated permutations avoiding the word 0^m = 0...0 of m 0's, where 1 <= m <= n.

Offset 1, canonical program `A334156.P17698209707109941031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A334156 (n : ℕ) : ℤ :=
  A334156.P17698209707109941031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A334156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334906.P3282194429805016584

`eq[1, A058078(n+1)]+1`
-/

namespace A334906.P3282194429805016584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A334906.P3282194429805016584

noncomputable section

/-- A334906: Numbers k such that binomial(prime(k+2), prime(k+1)) and binomial(prime(k+1), prime(k)) are coprime.

Offset 1, canonical program `A334906.P3282194429805016584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1290 terms. -/
def A334906 (n : ℕ) : ℤ :=
  (A334906.P3282194429805016584.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1290 terms. -/
def A334906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335022.P15347784327843439019

`A058344(abs(1-n)+2)-1`
-/

namespace A335022.P15347784327843439019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058344 (|1 - (n : ℤ)| + 2).toNat - 1

end

end A335022.P15347784327843439019

noncomputable section

/-- A335022: a(n) = Sum_{d|n, 1 < d < n} (-1)^(d + 1) * d.

Offset 1, canonical program `A335022.P15347784327843439019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335022 (n : ℕ) : ℤ :=
  A335022.P15347784327843439019.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336194.P7969052725366895353

`A003991(n+1)*A133819(n+1)-1`
-/

namespace A336194.P7969052725366895353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) * A133819 (n + 1) - 1

end

end A336194.P7969052725366895353

noncomputable section

/-- A336194: Table read by antidiagonals upwards: T(n,k) = (n - 1)*k^3 - 1, with n > 1 and k > 0.

Offset 2, canonical program `A336194.P7969052725366895353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336194 (n : ℕ) : ℤ :=
  A336194.P7969052725366895353.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338280.P8662157662031272285

`A058127(A099375(n)+2+n)`
-/

namespace A338280.P8662157662031272285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058127 (A099375 n + 2 + (n : ℤ)).toNat

end

end A338280.P8662157662031272285

noncomputable section

/-- A338280: Triangle T read by rows: T(n, k) = k*n^(n-k-1) with 0 < k < n.

Offset 2, canonical program `A338280.P8662157662031272285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A338280 (n : ℕ) : ℤ :=
  A338280.P8662157662031272285.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A338280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339330.P9380063307165119255

`∑[∑[A283681(n+1)]]`
-/

namespace A339330.P9380063307165119255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283681 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339330.P9380063307165119255

noncomputable section

/-- A339330: Sums of antidiagonals in A283681.

Offset 1, canonical program `A339330.P9380063307165119255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339330 (n : ℕ) : ℤ :=
  A339330.P9380063307165119255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339332.P17681451593917756509

`∑[A283683(n+1)]`
-/

namespace A339332.P17681451593917756509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339332.P17681451593917756509

noncomputable section

/-- A339332: Sums of antidiagonals in A283683.

Offset 1, canonical program `A339332.P17681451593917756509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339332 (n : ℕ) : ℤ :=
  A339332.P17681451593917756509.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339363.P14614584923142497431

`1-A134478(∑[A118175(n)])+n`
-/

namespace A339363.P14614584923142497431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A134478 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A339363.P14614584923142497431

noncomputable section

/-- A339363: a(n) = Sum_{k=1..floor(sqrt(n))} floor(sqrt(n-k)).

Offset 1, canonical program `A339363.P14614584923142497431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339363 (n : ℕ) : ℤ :=
  A339363.P14614584923142497431.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340649.P12468037859103549001

`A097240(n+1)%A000040(n+1)`
-/

namespace A340649.P12468037859103549001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097240 (n + 1)) (A000040 (n + 1))

end

end A340649.P12468037859103549001

noncomputable section

/-- A340649: a(n) = (n*prime(n+1)) mod prime(n).

Offset 1, canonical program `A340649.P12468037859103549001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340649 (n : ℕ) : ℤ :=
  A340649.P12468037859103549001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342149.P10655591128175794512

`A193588(n)%(A193592(n)+1)`
-/

namespace A342149.P10655591128175794512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193588 n) (A193592 n + 1)

end

end A342149.P10655591128175794512

noncomputable section

/-- A342149: Infinite square matrix A(m,n) = F(m+1) mod (n+1), m,n >= 1, where F = Fibonacci = A000045, read by falling antidiagonals.

Offset 1, canonical program `A342149.P10655591128175794512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A342149 (n : ℕ) : ℤ :=
  A342149.P10655591128175794512.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A342149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342905.P12915829879305596197

`∏{p}[A003990(n+1), #]`
-/

namespace A342905.P12915829879305596197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003990 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A342905.P12915829879305596197

noncomputable section

/-- A342905: Array read by antidiagonals: T(n,k) = product of all distinct primes dividing n*k (n>=1, k>=1).

Offset 1, canonical program `A342905.P12915829879305596197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342905 (n : ℕ) : ℤ :=
  (A342905.P12915829879305596197.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343174.P1593472062629477177

`A004526(n+2)+A033264(n+1)`
-/

namespace A343174.P1593472062629477177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 2) + A033264 (n + 1)

end

end A343174.P1593472062629477177

noncomputable section

/-- A343174: Partial sums of paper-folding sequence A014577.

Offset 0, canonical program `A343174.P1593472062629477177`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033264, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343174 (n : ℕ) : ℤ :=
  A343174.P1593472062629477177.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033264, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343174.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343752.P15498230505190100503

`∑[(n+1)*Δ[A094727(n+1)]]`
-/

namespace A343752.P15498230505190100503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343752.P15498230505190100503

noncomputable section

/-- A343752: a(1) = 1; for n > 1, a(n) = n if a(n-1) is divisible by n, otherwise a(n) = a(n-1)+n.

Offset 1, canonical program `A343752.P15498230505190100503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343752 (n : ℕ) : ℤ :=
  A343752.P15498230505190100503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344343.P11569095817677921307

`A344342(eq[1, A344342(n+2)-A344342(n+1)]+1)`
-/

namespace A344343.P11569095817677921307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344342 (n + 2) - A344342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A344343.P11569095817677921307

noncomputable section

/-- A344343: Starts of runs of 3 consecutive Gray-code Niven numbers (A344341).

Offset 1, canonical program `A344343.P11569095817677921307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1219 terms. -/
def A344343 (n : ℕ) : ℤ :=
  A344343.P11569095817677921307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1219 terms. -/
def A344343.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A347026.P1087206353886803899

`or(1, A253580(n))`
-/

namespace A347026.P1087206353886803899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A253580 n)

end

end A347026.P1087206353886803899

noncomputable section

/-- A347026: Irregular triangle read by rows in which row n lists the first n odd numbers, followed by the first n odd numbers in decreasing order.

Offset 1, canonical program `A347026.P1087206353886803899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A347026 (n : ℕ) : ℤ :=
  A347026.P1087206353886803899.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A347026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347204.P9262415258510155147

`a((n-2^A007814(n))/2)+a(floor((2*n-2^A007814(n))/2))` with `a(0)=1`
-/

namespace A347204.P9262415258510155147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.roundAway (((n : ℚ) - (2 : ℚ) ^ (A007814 n : ℤ)) / 2)).toNat + a ⌊((2 * n : ℚ) - (2 : ℚ) ^ (A007814 n : ℤ)) / 2⌋.toNat

end

end A347204.P9262415258510155147

noncomputable section

/-- A347204: a(n) = a(f(n)/2) + a(floor((n+f(n))/2)) for n > 0 with a(0) = 1 where f(n) = A129760(n).

Offset 0, canonical program `A347204.P9262415258510155147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A347204 (n : ℕ) : ℤ :=
  (A347204.P9262415258510155147.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A347204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348110.P12801139591298659931

`∑[char[A100345(n)-1]]`
-/

namespace A348110.P12801139591298659931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100345 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348110.P12801139591298659931

noncomputable section

/-- A348110: Number of positive integers <= n that have middle divisors.

Offset 1, canonical program `A348110.P12801139591298659931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348110 (n : ℕ) : ℤ :=
  (A348110.P12801139591298659931.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349297.P11630556186801154286

`A099375(n)%A065331(A050873(n+1))`
-/

namespace A349297.P11630556186801154286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099375 n) (A065331 (A050873 (n + 1)).toNat)

end

end A349297.P11630556186801154286

noncomputable section

/-- A349297: Triangle T(n,k) = 1 if both n and k are even or if n and k are divisible by 3.

Offset 1, canonical program `A349297.P11630556186801154286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349297 (n : ℕ) : ℤ :=
  A349297.P11630556186801154286.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350289.P15999425623583731686

`A010060(A004198(n))`
-/

namespace A350289.P15999425623583731686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A004198 n).toNat

end

end A350289.P15999425623583731686

noncomputable section

/-- A350289: Infinite binary Walsh matrix read by antidiagonals.

Offset 0, canonical program `A350289.P15999425623583731686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350289 (n : ℕ) : ℤ :=
  A350289.P15999425623583731686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350700.P12913165554531738281

`Δ[A214923(abs(1-n))]`
-/

namespace A350700.P12913165554531738281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214923 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350700.P12913165554531738281

noncomputable section

/-- A350700: a(n) is the number of 1's minus the number of 0's in A004685(n).

Offset 0, canonical program `A350700.P12913165554531738281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350700 (n : ℕ) : ℤ :=
  A350700.P12913165554531738281.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352291.P14610308504021664996

`A094694(eq[1, A094694(n+1)%2]+1)`
-/

namespace A352291.P14610308504021664996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094694 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A352291.P14610308504021664996

noncomputable section

/-- A352291: Odd numbers k such that hammingweight(k^2) < hammingweight(k).

Offset 1, canonical program `A352291.P14610308504021664996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4178 terms. -/
def A352291 (n : ℕ) : ℤ :=
  A352291.P14610308504021664996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4178 terms. -/
def A352291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352785.P6519807018689113948

`A092391(A352776(n+1))`
-/

namespace A352785.P6519807018689113948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 (A352776 (n + 1)).toNat

end

end A352785.P6519807018689113948

noncomputable section

/-- A352785: Numbers k such that w(k - w(k)) = w(k), where w(k) is the binary weight of k, A000120(k).

Offset 1, canonical program `A352785.P6519807018689113948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2553 terms. -/
def A352785 (n : ℕ) : ℤ :=
  A352785.P6519807018689113948.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2553 terms. -/
def A352785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353297.P5129831878395689733

`A002260(A268232(n+1))`
-/

namespace A353297.P5129831878395689733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A268232 (n + 1)).toNat

end

end A353297.P5129831878395689733

noncomputable section

/-- A353297: The i-values of pairs (i,j) listed in A353296.

Offset 1, canonical program `A353297.P5129831878395689733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6196 terms. -/
def A353297 (n : ℕ) : ℤ :=
  A353297.P5129831878395689733.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6196 terms. -/
def A353297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353298.P2133043049665979406

`A025581(A268232(n+1))`
-/

namespace A353298.P2133043049665979406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A268232 (n + 1)).toNat

end

end A353298.P2133043049665979406

noncomputable section

/-- A353298: The j-values of pairs (i,j) listed in A353296.

Offset 1, canonical program `A353298.P2133043049665979406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6196 terms. -/
def A353298 (n : ℕ) : ℤ :=
  A353298.P2133043049665979406.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6196 terms. -/
def A353298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354107.P1266851765125623207

`A253629(n+1)%4`
-/

namespace A354107.P1266851765125623207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253629 (n + 1)) 4

end

end A354107.P1266851765125623207

noncomputable section

/-- A354107: a(n) = A354102(n) mod 4.

Offset 1, canonical program `A354107.P1266851765125623207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354107 (n : ℕ) : ℤ :=
  A354107.P1266851765125623207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354271.P8549106110734970551

`p?[A037126(n+1)-A025581(n)]`
-/

namespace A354271.P8549106110734970551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) - A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A354271.P8549106110734970551

noncomputable section

/-- A354271: Irregular array of the prime numbers read by rows.

Offset 1, canonical program `A354271.P8549106110734970551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1604 terms. -/
def A354271 (n : ℕ) : ℤ :=
  A354271.P8549106110734970551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1604 terms. -/
def A354271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357814.P14551271944199952944

`floor(A131410(n+1)/A104763(n+1))`
-/

namespace A357814.P14551271944199952944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A131410 (n + 1) : ℚ) / (A104763 (n + 1) : ℚ)⌋

end

end A357814.P14551271944199952944

noncomputable section

/-- A357814: Triangular array read by rows: T(n,k) is the quotient on division of Fib(n) by Fib(k) for 1 <= k <= n, where Fib(k) = A000045(k).

Offset 1, canonical program `A357814.P14551271944199952944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357814 (n : ℕ) : ℤ :=
  A357814.P14551271944199952944.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358529.P11632851717617367385

`A233671(n+1)+1`
-/

namespace A358529.P11632851717617367385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233671 (n + 1) + 1

end

end A358529.P11632851717617367385

noncomputable section

/-- A358529: Indices of the primes in A358528.

Offset 1, canonical program `A358529.P11632851717617367385`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A233671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358529 (n : ℕ) : ℤ :=
  A358529.P11632851717617367385.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A233671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358529.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359411.P11879795316904517508

`∏{e}[n+1, A092505(#)]`
-/

namespace A359411.P11879795316904517508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A092505 (Nat.factorization (f1 n) p)

end

end A359411.P11879795316904517508

noncomputable section

/-- A359411: a(n) is the number of divisors of n that are both infinitary and exponential.

Offset 1, canonical program `A359411.P11879795316904517508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359411 (n : ℕ) : ℤ :=
  A359411.P11879795316904517508.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360134.P1092804426433472261

`A356133(1+A026430(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A360134.P1092804426433472261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (1 + A026430 (n + 1)).toNat

end

end A360134.P1092804426433472261

noncomputable section

/-- A360134: a(n) = A356133(1 + A026430(n)).

Offset 1, canonical program `A360134.P1092804426433472261`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360134 (n : ℕ) : ℤ :=
  A360134.P1092804426433472261.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360134.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A360138.P2833924897830709977`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360138 (n : ℕ) : ℤ :=
  A360138.P2833924897830709977.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360138.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360396.P1664411454202365035

`∩[A356133(n+1), A360392(n+1)]`
-/

namespace A360396.P1664411454202365035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360396.P1664411454202365035

noncomputable section

/-- A360396: Intersection of A356133 and A360392.

Offset 1, canonical program `A360396.P1664411454202365035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A360396 (n : ℕ) : ℤ :=
  (A360396.P1664411454202365035.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A360396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360397.P4343971559024488872

`record[(n+1)*(A316826(n)+1)-2]`
-/

namespace A360397.P4343971559024488872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A316826 n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360397.P4343971559024488872

noncomputable section

/-- A360397: Intersection of A356133 and A360393.

Offset 1, canonical program `A360397.P4343971559024488872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A360397 (n : ℕ) : ℤ :=
  A360397.P4343971559024488872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A360397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360400.P9645885000250557637

`A356133(A360392(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A360400.P9645885000250557637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (A360392 (n + 1)).toNat

end

end A360400.P9645885000250557637

noncomputable section

/-- A360400: a(n) = A356133(A360392(n)).

Offset 1, canonical program `A360400.P9645885000250557637`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360392, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360400 (n : ℕ) : ℤ :=
  A360400.P9645885000250557637.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360392, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360400.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360402.P17555253377108157928

`A360392(A026430(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A360402.P17555253377108157928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (A026430 (n + 1)).toNat

end

end A360402.P17555253377108157928

noncomputable section

/-- A360402: a(n) = A360392(A026430(n)).

Offset 1, canonical program `A360402.P17555253377108157928`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, A360392, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360402 (n : ℕ) : ℤ :=
  A360402.P17555253377108157928.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, A360392, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360402.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360404.P16518747629998351864

`A360392(A356133(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A360404.P16518747629998351864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (A356133 (n + 1)).toNat

end

end A360404.P16518747629998351864

noncomputable section

/-- A360404: a(n) = A360392(A356133(n)).

Offset 1, canonical program `A360404.P16518747629998351864`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360392, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360404 (n : ℕ) : ℤ :=
  A360404.P16518747629998351864.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360392, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360404.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361123.P17185907231639651446

`1-A361122(n+1)`
-/

namespace A361123.P17185907231639651446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A361122 (n + 1)

end

end A361123.P17185907231639651446

noncomputable section

/-- A361123: 1 if n-th composite number A002808(n) is divisible by 3, otherwise 0.

Offset 1, canonical program `A361123.P17185907231639651446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361123 (n : ℕ) : ℤ :=
  A361123.P17185907231639651446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362196.P10325085165088880186

`A008861(n)-n`
-/

namespace A362196.P10325085165088880186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008861 n - (n : ℤ)

end

end A362196.P10325085165088880186

noncomputable section

/-- A362196: Number of Grassmannian permutations of size n that avoid a pattern, sigma, where sigma is a pattern of size 9 with exactly one descent.

Offset 0, canonical program `A362196.P10325085165088880186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362196 (n : ℕ) : ℤ :=
  A362196.P10325085165088880186.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362685.P6275879267292374181

`(A059268(n)-1)*A056942(n)`
-/

namespace A362685.P6275879267292374181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059268 n - 1) * A056942 n

end

end A362685.P6275879267292374181

noncomputable section

/-- A362685: Triangle of numbers read by rows, T(n, k) = (n*(n-1))*Stirling2(k, 2), for n >= 1 and 1 <= k <= n.

Offset 1, canonical program `A362685.P6275879267292374181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362685 (n : ℕ) : ℤ :=
  A362685.P6275879267292374181.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362685.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A363718.P3369360157164842008

`Δ[record[A268289(n)]]`
-/

namespace A363718.P3369360157164842008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268289 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A363718.P3369360157164842008

noncomputable section

/-- A363718: Irregular triangle read by rows. An infinite binary tree which has root node 1 in row n = 0. Each node then has left child m-1 if greater than 0 and right child m+1, where m is the value of the parent node.

Offset 0, canonical program `A363718.P3369360157164842008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3628 terms. -/
def A363718 (n : ℕ) : ℤ :=
  A363718.P3369360157164842008.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3628 terms. -/
def A363718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366541.P1807102450219154106

`A074909(n)+A325191(n+1)+A074909(n)`
-/

namespace A366541.P1807102450219154106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n + (A325191 (n + 1) + A074909 n)

end

end A366541.P1807102450219154106

noncomputable section

/-- A366541: Regular triangle read by rows: T(n,k) is the number of k-facets of the bipyramid on an n-simplex base.

Offset 0, canonical program `A366541.P1807102450219154106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A366541 (n : ℕ) : ℤ :=
  A366541.P1807102450219154106.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A366541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366600.P10655762037839471457

`(1+A033264(n))*a(A053645(n))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366600.P10655762037839471457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 + A033264 n) * a (A053645 n).toNat

end

end A366600.P10655762037839471457

noncomputable section

/-- A366600: a(n) = (1 + A033264(n))*a(A053645(n)) for n > 0 with a(0) = 1.

Offset 0, canonical program `A366600.P10655762037839471457`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033264, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366600 (n : ℕ) : ℤ :=
  A366600.P10655762037839471457.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033264, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366600.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366721.P14264005158293563005

`∑[char[A102477(A054541(3*n+4))]]+1`
-/

namespace A366721.P14264005158293563005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102477 (A054541 (3 * n + 4)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A366721.P14264005158293563005

noncomputable section

/-- A366721: Number of digits left of the radix point of n when written in base Pi using a greedy algorithm representation.

Offset 0, canonical program `A366721.P14264005158293563005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366721 (n : ℕ) : ℤ :=
  (A366721.P14264005158293563005.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366840.P17137846369514752914

`A100006(n+1)-A366839(n+1)`
-/

namespace A366840.P17137846369514752914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100006 (n + 1) - A366839 (n + 1)

end

end A366840.P17137846369514752914

noncomputable section

/-- A366840: Sum of odd prime factors of n, counted with multiplicity.

Offset 1, canonical program `A366840.P17137846369514752914`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100006, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366840 (n : ℕ) : ℤ :=
  A366840.P17137846369514752914.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100006, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366840.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367211.P16132309912826063694

`A074909(n)*A128514(n+1)`
-/

namespace A367211.P16132309912826063694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A128514 (n + 1)

end

end A367211.P16132309912826063694

noncomputable section

/-- A367211: Triangular array read by rows: T(n, k) = binomial(n, k) * A000129(n - k) for 0 <= k < n.

Offset 1, canonical program `A367211.P16132309912826063694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367211 (n : ℕ) : ℤ :=
  A367211.P16132309912826063694.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369189.P17989487729230229152

`A185027(∏{p}[n+1, #])`
-/

namespace A369189.P17989487729230229152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185027 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A369189.P17989487729230229152

noncomputable section

/-- A369189: Sum of the squarefree triangular divisors of n.

Offset 1, canonical program `A369189.P17989487729230229152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369189 (n : ℕ) : ℤ :=
  A369189.P17989487729230229152.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369359.P11914376555270565853

`A225034(n)-A002426(n)`
-/

namespace A369359.P11914376555270565853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225034 n - A002426 n

end

end A369359.P11914376555270565853

noncomputable section

/-- A369359: a(n) is the total semiperimeter over all Motzkin polyominoes of length n.

Offset 0, canonical program `A369359.P11914376555270565853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A369359 (n : ℕ) : ℤ :=
  A369359.P11914376555270565853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A369359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370418.P18312025595933328677

`A119502(n)*A143084(n)`
-/

namespace A370418.P18312025595933328677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n * A143084 n

end

end A370418.P18312025595933328677

noncomputable section

/-- A370418: Triangle read by rows. T(n, k) = (n - k)! * (n + k)!.

Offset 0, canonical program `A370418.P18312025595933328677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A370418 (n : ℕ) : ℤ :=
  A370418.P18312025595933328677.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A370418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370597.P7414276233010119171

`record[root(A000027(2*(n+1)), A378887(n+1))]`
-/

namespace A370597.P7414276233010119171
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000027 (2 * (n + 1)) : ℝ) ^ (1 / (A378887 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370597.P7414276233010119171

noncomputable section

/-- A370597: Even numbers k such that gcd(k, A007814(k)) = 1.

Offset 1, canonical program `A370597.P7414276233010119171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6169 terms. -/
def A370597 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A370597.P7414276233010119171.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6169 terms. -/
def A370597.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A371201.P4499511649538821653

`A138383(n)-A054541(n+1)`
-/

namespace A371201.P4499511649538821653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138383 n - A054541 (n + 1)

end

end A371201.P4499511649538821653

noncomputable section

/-- A371201: a(n) = Sum_{k=prime(n)..prime(n+1)-1} k, with a(0) = 1.

Offset 0, canonical program `A371201.P4499511649538821653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371201 (n : ℕ) : ℤ :=
  A371201.P4499511649538821653.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372538.P6016142959646065391

`eq[1, A372516(n+1)]+1`
-/

namespace A372538.P6016142959646065391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372516 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A372538.P6016142959646065391

noncomputable section

/-- A372538: Numbers k such that the number of ones minus the number of zeros in the binary expansion of the k-th prime number is 1.

Offset 1, canonical program `A372538.P6016142959646065391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. -/
def A372538 (n : ℕ) : ℤ :=
  (A372538.P6016142959646065391.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. -/
def A372538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372539.P15910707666179442912

`A000720(A095072(n+1))`
-/

namespace A372539.P15910707666179442912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A095072 (n + 1)).toNat

end

end A372539.P15910707666179442912

noncomputable section

/-- A372539: Numbers k such that the number of ones minus the number of zeros in the binary expansion of the k-th prime number is -1.

Offset 1, canonical program `A372539.P15910707666179442912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1031 terms. -/
def A372539 (n : ℕ) : ℤ :=
  A372539.P15910707666179442912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1031 terms. -/
def A372539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373082.P13712031001074262158

`A087116(xor(n, floor(n/2)))`
-/

namespace A373082.P13712031001074262158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A373082.P13712031001074262158

noncomputable section

/-- A373082: Number of runs of 0's in A014550(n).

Offset 0, canonical program `A373082.P13712031001074262158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A373082 (n : ℕ) : ℤ :=
  A373082.P13712031001074262158.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A373082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373360.P3869209732951132874

`A373347(n+2)-A373347(n+1)`
-/

namespace A373360.P3869209732951132874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373347 (n + 2) - A373347 (n + 1)

end

end A373360.P3869209732951132874

noncomputable section

/-- A373360: First differences of A373347.

Offset 1, canonical program `A373360.P3869209732951132874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373347, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373360 (n : ℕ) : ℤ :=
  A373360.P3869209732951132874.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373347, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373834.P8702571557965328653

`(16^A373832(round(sqrt(n²+1))))%4`
-/

namespace A373834.P8702571557965328653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((16 : ℚ) ^ (A373832 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℤ))) 4

end

end A373834.P8702571557965328653

noncomputable section

/-- A373834: a(n) = 1 if n is a multiple of A276150(n), otherwise 0, where A276150 is the digit sum in the primorial base.

Offset 0, canonical program `A373834.P8702571557965328653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373834 (n : ℕ) : ℤ :=
  A373834.P8702571557965328653.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373838.P492642340660410059

`A079978(A373833(n))`
-/

namespace A373838.P492642340660410059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A373833 n).toNat

end

end A373838.P492642340660410059

noncomputable section

/-- A373838: a(n) = 1 if n and A276150(n) are both multiples of 3, otherwise 0, where A276150 is the digit sum in the primorial base.

Offset 0, canonical program `A373838.P492642340660410059`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373838 (n : ℕ) : ℤ :=
  A373838.P492642340660410059.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373838.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373841.P18437281871460807394

`eq[n, n*A373840(n)]`
-/

namespace A373841.P18437281871460807394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A373840 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A373841.P18437281871460807394

noncomputable section

/-- A373841: Numbers whose digital sum in the primorial base is a multiple of 3.

Offset 1, canonical program `A373841.P18437281871460807394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373841 (n : ℕ) : ℤ :=
  (A373841.P18437281871460807394.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374206.P12143354826922197723

`A007814(A113177(n+2))`
-/

namespace A374206.P12143354826922197723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A113177 (n + 2)).toNat

end

end A374206.P12143354826922197723

noncomputable section

/-- A374206: The 2-adic valuation of A113177(n), where A113177 is fully additive with a(p) = Fibonacci(p).

Offset 2, canonical program `A374206.P12143354826922197723`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113177, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374206 (n : ℕ) : ℤ :=
  A374206.P12143354826922197723.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113177, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374206.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374216.P3301399781499645410

`A007814(A001414(n+2))`
-/

namespace A374216.P3301399781499645410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A001414 (n + 2)).toNat

end

end A374216.P3301399781499645410

noncomputable section

/-- A374216: The 2-adic valuation of sopfr(n), where sopfr is the sum of prime factors with repetition, A001414.

Offset 2, canonical program `A374216.P3301399781499645410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374216 (n : ℕ) : ℤ :=
  A374216.P3301399781499645410.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374216.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377930.P17544471663374099892

`val(A003990(n+1), 2)`
-/

namespace A377930.P17544471663374099892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003990 (n + 1)).toNat 2

end

end A377930.P17544471663374099892

noncomputable section

/-- A377930: Square array A(n, k), n, k > 0, read by antidiagonals; A(n, k) = max(A007814(n), A007814(k)).

Offset 1, canonical program `A377930.P17544471663374099892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377930 (n : ℕ) : ℤ :=
  (A377930.P17544471663374099892.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379635.P2239528434753463119

`A245093(n+1)*A272172(n+1)`
-/

namespace A379635.P2239528434753463119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1) * A272172 (n + 1)

end

end A379635.P2239528434753463119

noncomputable section

/-- A379635: Triangle read by rows: T(n,k) = A000203(k)*A000203(n-k+1), n >= 1, k >= 1.

Offset 1, canonical program `A379635.P2239528434753463119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379635 (n : ℕ) : ℤ :=
  A379635.P2239528434753463119.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382723.P441862081197136108

`(A033264(n)+2)*2^(A000120(n)-1)`
-/

namespace A382723.P441862081197136108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033264 n + 2 : ℚ) * (2 : ℚ) ^ (A000120 n - 1 : ℤ)

end

end A382723.P441862081197136108

noncomputable section

/-- A382723: Number of entries in the n-th row of Pascal's triangle not divisible by 4.

Offset 0, canonical program `A382723.P441862081197136108`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033264, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382723 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382723.P441862081197136108.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033264, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382723.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383032.P9967081723231949955

`A007814(A028982(n+1))`
-/

namespace A383032.P9967081723231949955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A028982 (n + 1)).toNat

end

end A383032.P9967081723231949955

noncomputable section

/-- A383032: Exponent of the highest power of 2 dividing the n-th number that is either a square or twice a square.

Offset 1, canonical program `A383032.P9967081723231949955`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028982, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383032 (n : ℕ) : ℤ :=
  A383032.P9967081723231949955.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028982, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383032.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383685.P17659077601752719078

`A000040(lt[A054541(n+1), A038194(n+1)])`
-/

namespace A383685.P17659077601752719078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A383685.P17659077601752719078

noncomputable section

/-- A383685: The lesser of two consecutive primes whose gap equals the difference between their digital roots.

Offset 1, canonical program `A383685.P17659077601752719078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2368 terms. -/
def A383685 (n : ℕ) : ℤ :=
  A383685.P17659077601752719078.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2368 terms. -/
def A383685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386258.P4775169082945672394

`A007814(A005361(n+1))`
-/

namespace A386258.P4775169082945672394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005361 (n + 1)).toNat

end

end A386258.P4775169082945672394

noncomputable section

/-- A386258: Exponent of the highest power of 2 dividing the product of exponents of the prime factorization of n.

Offset 1, canonical program `A386258.P4775169082945672394`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386258 (n : ℕ) : ℤ :=
  A386258.P4775169082945672394.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386258.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386259.P13017037285920601135

`A007814(A066301(n+1)+1)`
-/

namespace A386259.P13017037285920601135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A066301 (n + 1) + 1).toNat

end

end A386259.P13017037285920601135

noncomputable section

/-- A386259: Exponent of the highest power of 2 dividing the maximum exponent in the prime factorization of n; a(1) = 0.

Offset 1, canonical program `A386259.P13017037285920601135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386259 (n : ℕ) : ℤ :=
  A386259.P13017037285920601135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386319.P6966133288420860649

`A112367(n)+A086460(n)`
-/

namespace A386319.P6966133288420860649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + A086460 n

end

end A386319.P6966133288420860649

noncomputable section

/-- A386319: Triangle read by rows where row n is the start, corner and end vertex numbers of a triangular spiral with n sides on a triangular grid, starting from 1 and working inwards (0 <= k <= n).

Offset 0, canonical program `A386319.P6966133288420860649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386319 (n : ℕ) : ℤ :=
  A386319.P6966133288420860649.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386536.P5039393821723974418

`A007814(A067259(n+1))`
-/

namespace A386536.P5039393821723974418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A067259 (n + 1)).toNat

end

end A386536.P5039393821723974418

noncomputable section

/-- A386536: Exponent of the highest power of 2 dividing the n-th number that is cubefree but not squarefree.

Offset 1, canonical program `A386536.P5039393821723974418`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067259, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386536 (n : ℕ) : ℤ :=
  A386536.P5039393821723974418.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067259, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386536.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386832.P17191505806885496330

`ceil(A077028(n)/A002260(n+1))`
-/

namespace A386832.P17191505806885496330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077028 n : ℚ) / (A002260 (n + 1) : ℚ)⌉

end

end A386832.P17191505806885496330

noncomputable section

/-- A386832: Triangle read by rows: T(n,k) is the number of the sets of partitions of n with length k grouped by largest part.

Offset 1, canonical program `A386832.P17191505806885496330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A386832 (n : ℕ) : ℤ :=
  A386832.P17191505806885496330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A386832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387349.P7395513142153534106

`comp[A190429(n+1)]+1`
-/

namespace A387349.P7395513142153534106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A387349.P7395513142153534106

noncomputable section

/-- A387349: Positions of 0's in A387348.

Offset 1, canonical program `A387349.P7395513142153534106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A387349 (n : ℕ) : ℤ :=
  (A387349.P7395513142153534106.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A387349.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A390099.P13380091930058253574

`A111333(A066940(n+2))`
-/

namespace A390099.P13380091930058253574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (A066940 (n + 2)).toNat

end

end A390099.P13380091930058253574

noncomputable section

/-- A390099: Record denominators of (p2+1)/(p1+1), where p1 < p2 are consecutive primes.

Offset 1, canonical program `A390099.P13380091930058253574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5699 terms. -/
def A390099 (n : ℕ) : ℤ :=
  A390099.P13380091930058253574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5699 terms. -/
def A390099.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391026.P7612980702264081441

`filter[A332785(n+1), A354034(#)]`
-/

namespace A391026.P7612980702264081441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A391026.P7612980702264081441

noncomputable section

/-- A391026: Even numbers that are neither powerful nor squarefree.

Offset 1, canonical program `A391026.P7612980702264081441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7629 terms. -/
def A391026 (n : ℕ) : ℤ :=
  A391026.P7612980702264081441.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7629 terms. -/
def A391026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391357.P17529039197337556772

`A389809(n+1)+A037126(n+1)`
-/

namespace A391357.P17529039197337556772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389809 (n + 1) + A037126 (n + 1)

end

end A391357.P17529039197337556772

noncomputable section

/-- A391357: Rectangular array R read by falling antidiagonals: R(n,k) = prime(n) + prime(n+k).

Offset 1, canonical program `A391357.P17529039197337556772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391357 (n : ℕ) : ℤ :=
  A391357.P17529039197337556772.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391574.P13642684315948743333

`eq[A026492(n), A057427(n)]`
-/

namespace A391574.P13642684315948743333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026492 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391574.P13642684315948743333

noncomputable section

/-- A391574: Numbers k such that 3*k = A048720(3,m) for some m, where A048720 is carryless base-2 multiplication.

Offset 1, canonical program `A391574.P13642684315948743333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5992 terms. -/
def A391574 (n : ℕ) : ℤ :=
  (A391574.P13642684315948743333.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5992 terms. -/
def A391574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391658.P1593916310506347255

`A233671(n+1)-A046868(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391658.P1593916310506347255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233671 (n + 1) - A046868 (n + 1)

end

end A391658.P1593916310506347255

noncomputable section

/-- A391658: a(n) = A233671(n) - A046868(n).

Offset 1, canonical program `A391658.P1593916310506347255`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046868, A233671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391658 (n : ℕ) : ℤ :=
  A391658.P1593916310506347255.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046868, A233671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391658.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392537.P5789005694378708755

`∩[A332785(n+1), A382967(n+1)]`
-/

namespace A392537.P5789005694378708755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392537.P5789005694378708755

noncomputable section

/-- A392537: Biquadratefree numbers that are neither squareful nor squarefree.

Offset 1, canonical program `A392537.P5789005694378708755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8135 terms. -/
def A392537 (n : ℕ) : ℤ :=
  (A392537.P5789005694378708755.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8135 terms. -/
def A392537.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A392842.P10202073856946613228

`A007814(record[A109168(3*n+2)])`
-/

namespace A392842.P10202073856946613228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A392842.P10202073856946613228

noncomputable section

/-- A392842: Number of trailing zeros in a type of Zeckendorf expansion based on Fibonacci numbers of even index.

Offset 1, canonical program `A392842.P10202073856946613228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A392842 (n : ℕ) : ℤ :=
  A392842.P10202073856946613228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A392842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393435.P12847349373595133276

`(-1)^A033264(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393435.P12847349373595133276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A033264 n : ℤ)

end

end A393435.P12847349373595133276

noncomputable section

/-- A393435: a(n) = (-1)^A033264(n).

Offset 0, canonical program `A393435.P12847349373595133276`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033264, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393435 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A393435.P12847349373595133276.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033264, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393435.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395853.P3335866657025949553

`comp[A354626(n+1)]`
-/

namespace A395853.P3335866657025949553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A395853.P3335866657025949553

noncomputable section

/-- A395853: Numbers that can be written as the sum of a Fibonacci number and the square of a Fibonacci number.

Offset 1, canonical program `A395853.P3335866657025949553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A395853 (n : ℕ) : ℤ :=
  (A395853.P3335866657025949553.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A395853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397622.P14746098098453063078

`A000040(A191330(n+1)/2)`
-/

namespace A397622.P14746098098453063078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A191330 (n + 1) : ℚ) / 2)).toNat

end

end A397622.P14746098098453063078

noncomputable section

/-- A397622: a(n) = prime(A005653(n)).

Offset 1, canonical program `A397622.P14746098098453063078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A397622 (n : ℕ) : ℤ :=
  A397622.P14746098098453063078.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A397622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283325.P1796176472703323700

`Δ[record[(n+1)*A283683(n+1)]]-1`
-/

namespace A283325.P1796176472703323700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A283683 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A283325.P1796176472703323700

noncomputable section

/-- A283325: Lengths of runs of successive zeros in A283683.

Offset 1, canonical program `A283325.P1796176472703323700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8721 terms. -/
def A283325 (n : ℕ) : ℤ :=
  A283325.P1796176472703323700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8721 terms. -/
def A283325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283908.P12039075813356450362

`A290418(n-(1-n)%(n+1))`
-/

namespace A283908.P12039075813356450362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290418 ((n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A283908.P12039075813356450362

noncomputable section

/-- A283908: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A283908.P12039075813356450362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A283908 (n : ℕ) : ℤ :=
  A283908.P12039075813356450362.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A283908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284885.P16570972123802318958

`A284883(n+1)/2`
-/

namespace A284885.P16570972123802318958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284883 (n + 1) : ℚ) / 2

end

end A284885.P16570972123802318958

noncomputable section

/-- A284885: (A284883)/2.

Offset 1, canonical program `A284885.P16570972123802318958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284885 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A284885.P16570972123802318958.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285351.P8573257068003813108

`2*(n+1)+1-A285346(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285351.P8573257068003813108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) + 1 : ℤ) - A285346 (n + 1)

end

end A285351.P8573257068003813108

noncomputable section

/-- A285351: a(n) = 2n + 1 - A285346(n).

Offset 1, canonical program `A285351.P8573257068003813108`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285346, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285351 (n : ℕ) : ℤ :=
  A285351.P8573257068003813108.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285346, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285351.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286048.P9111352750848664703

`A004767(n)-A286047(n+1)`
-/

namespace A286048.P9111352750848664703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A286047 (n + 1)

end

end A286048.P9111352750848664703

noncomputable section

/-- A286048: Positions of 1 in A286046; complement of A286047.

Offset 1, canonical program `A286048.P9111352750848664703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286048 (n : ℕ) : ℤ :=
  A286048.P9111352750848664703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286049.P11350509932985132439

`char[A286051(n+1)-1]`
-/

namespace A286049.P11350509932985132439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286051 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286049.P11350509932985132439

noncomputable section

/-- A286049: {110->1}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A286049.P11350509932985132439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286049 (n : ℕ) : ℤ :=
  (A286049.P11350509932985132439.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286066.P5999862173123358208

`A284934(A143331(n+1)+n)-A143331(n+1)`
-/

namespace A286066.P5999862173123358208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284934 (A143331 (n + 1) + (n : ℤ)).toNat - A143331 (n + 1)

end

end A286066.P5999862173123358208

noncomputable section

/-- A286066: Positions of 1 in A286064; complement of A286065.

Offset 1, canonical program `A286066.P5999862173123358208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286066 (n : ℕ) : ℤ :=
  A286066.P5999862173123358208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286801.P2102935286096413746

`char[A286803(n+1)-1]`
-/

namespace A286801.P2102935286096413746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286803 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286801.P2102935286096413746

noncomputable section

/-- A286801: {0->110, 1->010}-transform of the Pell word, A171588.

Offset 1, canonical program `A286801.P2102935286096413746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286801 (n : ℕ) : ℤ :=
  (A286801.P2102935286096413746.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287028.P2613971056566659341

`1-A286990(n+1)`
-/

namespace A287028.P2613971056566659341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286990 (n + 1)

end

end A287028.P2613971056566659341

noncomputable section

/-- A287028: {0->101, 1->010}-transform of the Sturmian word A080764.

Offset 1, canonical program `A287028.P2613971056566659341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287028 (n : ℕ) : ℤ :=
  A287028.P2613971056566659341.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287553.P11148344650868308369

`-xor(2, -A287555(n+1))`
-/

namespace A287553.P11148344650868308369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 2 (-A287555 (n + 1))

end

end A287553.P11148344650868308369

noncomputable section

/-- A287553: Positions of 1 in A053839.

Offset 1, canonical program `A287553.P11148344650868308369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287553 (n : ℕ) : ℤ :=
  A287553.P11148344650868308369.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288022.P13806557595186574534

`∩[A030432(n+1), A031924(n+1)]`
-/

namespace A288022.P13806557595186574534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288022.P13806557595186574534

noncomputable section

/-- A288022: Prime p1 of consecutive primes p1, p2, where p2 - p1 = 6, and p1, p2 are in different decades.

Offset 1, canonical program `A288022.P13806557595186574534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2956 terms. -/
def A288022 (n : ℕ) : ℤ :=
  (A288022.P13806557595186574534.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2956 terms. -/
def A288022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288041.P16531561564463658720

`eq[2, A000005(A034964(n+1))]+1`
-/

namespace A288041.P16531561564463658720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A034964 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288041.P16531561564463658720

noncomputable section

/-- A288041: Numbers k such that prime(k) + prime(k+1) + ... + prime(k+4) is prime.

Offset 1, canonical program `A288041.P16531561564463658720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 589 terms. -/
def A288041 (n : ℕ) : ℤ :=
  (A288041.P16531561564463658720.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 589 terms. -/
def A288041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289108.P11984288742072836431

`A289055(n)-1`
-/

namespace A289108.P11984288742072836431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289055 n - 1

end

end A289108.P11984288742072836431

noncomputable section

/-- A289108: Triangle read by rows: T(n,k) = (k + 1)*prime(n) + k for n > 0, 0 <= k <= n, and with T(0,0) = 1.

Offset 0, canonical program `A289108.P11984288742072836431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A289108 (n : ℕ) : ℤ :=
  A289108.P11984288742072836431.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A289108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289320.P2991685240031938222

`∏{d}[n+1, A120007(#)²+1]`
-/

namespace A289320.P2991685240031938222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (A120007 d ^ 2 + 1)

end

end A289320.P2991685240031938222

noncomputable section

/-- A289320: a(n) = A289310(n)^2 + A289311(n)^2.

Offset 1, canonical program `A289320.P2991685240031938222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289320 (n : ℕ) : ℤ :=
  A289320.P2991685240031938222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289493.P4700301683383788014

`A100637(n)-A099801(n)`
-/

namespace A289493.P4700301683383788014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 n - A099801 n

end

end A289493.P4700301683383788014

noncomputable section

/-- A289493: Number of primes in the interval [2n, 3n].

Offset 1, canonical program `A289493.P4700301683383788014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289493 (n : ℕ) : ℤ :=
  A289493.P4700301683383788014.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292936.P8365704605525395897

`A007814(1+A292599(n+1))`
-/

namespace A292936.P8365704605525395897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A292599 (n + 1)).toNat

end

end A292936.P8365704605525395897

noncomputable section

/-- A292936: a(n) = the least k >= 0 such that floor(n/(2^k)) is a nonprime; a(n) is degree of the "safeness" of prime, 0 if n is not a prime, 1 for unsafe primes (A059456), and k >= 2 for primes that are (k-1)-safe but not k-safe.

Offset 1, canonical program `A292936.P8365704605525395897`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292599, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292936 (n : ℕ) : ℤ :=
  A292936.P8365704605525395897.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292599, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292936.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295664.P6712857258460992871

`A007814(A000005(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295664.P6712857258460992871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000005 (n + 1)).toNat

end

end A295664.P6712857258460992871

noncomputable section

/-- A295664: Exponent of the highest power of 2 dividing number of divisors of n: a(n) = A007814(A000005(n)); 2-adic valuation of tau(n).

Offset 1, canonical program `A295664.P6712857258460992871`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007814(A000005(n+1))` (program `A295664.P6712857258460992871`, by `A295664.P6712857258460992871.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A295664 (n : ℕ) : ℤ :=
  A295664.P6712857258460992871.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007814(A000005(n+1))` (program `A295664.P6712857258460992871`, by `A295664.P6712857258460992871.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A295664.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A296307.P1006250162034138500

`(A004736(n+1)+1)*A010766(n+1)-1`
-/

namespace A296307.P1006250162034138500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) + 1) * A010766 (n + 1) - 1

end

end A296307.P1006250162034138500

noncomputable section

/-- A296307: Array read by upwards antidiagonals: f(n,k) = (n+1)*ceiling(n/(k-1)) - 1.

Offset 1, canonical program `A296307.P1006250162034138500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A296307 (n : ℕ) : ℤ :=
  A296307.P1006250162034138500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A296307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300893.P14197464904502864311

`∑{d}[n+1, A033999(#-1)*A191558((n+1)/#)]`
-/

namespace A300893.P14197464904502864311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A191558 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300893.P14197464904502864311

noncomputable section

/-- A300893: L.g.f.: log(Product_{k>=1} (1 + x^k)/(1 + x^prime(k))) = Sum_{n>=1} a(n)*x^n/n.

Offset 1, canonical program `A300893.P14197464904502864311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300893 (n : ℕ) : ℤ :=
  A300893.P14197464904502864311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301725.P2295522434011153661

`∑[A301724(n)]`
-/

namespace A301725.P2295522434011153661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301725.P2295522434011153661

noncomputable section

/-- A301725: Partial sums of A301724.

Offset 0, canonical program `A301725.P2295522434011153661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301725 (n : ℕ) : ℤ :=
  A301725.P2295522434011153661.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302253.P10939319436702998548

`A140398(n+1)+2*A190435(n+1)`
-/

namespace A302253.P10939319436702998548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140398 (n + 1) + 2 * A190435 (n + 1)

end

end A302253.P10939319436702998548

noncomputable section

/-- A302253: Positions of 3 in A190436.

Offset 1, canonical program `A302253.P10939319436702998548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302253 (n : ℕ) : ℤ :=
  A302253.P10939319436702998548.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302253.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A304327.P8179685896533217852

`∑{d}[n+1, A091050(#)*A271102((n+1)/#)]`
-/

namespace A304327.P8179685896533217852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091050 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304327.P8179685896533217852

noncomputable section

/-- A304327: Number of ways to write n as a product of a perfect power and a squarefree number.

Offset 1, canonical program `A304327.P8179685896533217852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304327 (n : ℕ) : ℤ :=
  A304327.P8179685896533217852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304569.P1317992739176579829

`C(2, A096133(n+1))`
-/

namespace A304569.P1317992739176579829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A096133 (n + 1)).toNat

end

end A304569.P1317992739176579829

noncomputable section

/-- A304569: Triangle read by rows: T(n,k) = 1 if k | n^e with e >= 0, otherwise T(n,k) = 0 (1 <= k <= n).

Offset 1, canonical program `A304569.P1317992739176579829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304569 (n : ℕ) : ℤ :=
  (A304569.P1317992739176579829.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306409.P2461275947846805459

`(A006134(n)-A120305(n))/2`
-/

namespace A306409.P2461275947846805459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006134 n - A120305 n : ℚ) / 2

end

end A306409.P2461275947846805459

noncomputable section

/-- A306409: a(n) = -Sum_{0<=i

Offset 0, canonical program `A306409.P2461275947846805459`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, A120305, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306409 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A306409.P2461275947846805459.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, A120305, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306409.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306775.P4537564709775864372

`∑[A060648(n+1)]`
-/

namespace A306775.P4537564709775864372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306775.P4537564709775864372

noncomputable section

/-- A306775: Partial sums of A060648: sum of the inverse Moebius transform of the Dedekind psi function from 1 to n.

Offset 1, canonical program `A306775.P4537564709775864372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306775 (n : ℕ) : ℤ :=
  A306775.P4537564709775864372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307354.P6583539778900423417

`(A006134(n)+A120305(n))/2`
-/

namespace A307354.P6583539778900423417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006134 n + A120305 n : ℚ) / 2

end

end A307354.P6583539778900423417

noncomputable section

/-- A307354: a(n) = Sum_{0<=i<=j<=n} (-1)^(i+j) * (i+j)!/(i!*j!).

Offset 0, canonical program `A307354.P6583539778900423417`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, A120305, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307354 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A307354.P6583539778900423417.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, A120305, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307354.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307563.P16467976950140794453

`floor(A164385(n+1)/6)`
-/

namespace A307563.P16467976950140794453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A164385 (n + 1) : ℚ) / 6⌋

end

end A307563.P16467976950140794453

noncomputable section

/-- A307563: Numbers k such that both 6k - 1 and 6k + 7 are prime.

Offset 1, canonical program `A307563.P16467976950140794453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307563 (n : ℕ) : ℤ :=
  A307563.P16467976950140794453.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307563.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A309332.P11044657249734363077

`A110654(A160651(n+1))-1`
-/

namespace A309332.P11044657249734363077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A160651 (n + 1)).toNat - 1

end

end A309332.P11044657249734363077

noncomputable section

/-- A309332: Number of ways the n-th triangular number T(n) = A000217(n) can be written as the sum of two positive triangular numbers.

Offset 1, canonical program `A309332.P11044657249734363077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309332 (n : ℕ) : ℤ :=
  A309332.P11044657249734363077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310379.P6537019467355233572

`2*A312903(n)-A008574(n)`
-/

namespace A310379.P6537019467355233572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312903 n - A008574 n

end

end A310379.P6537019467355233572

noncomputable section

/-- A310379: Coordination sequence Gal.6.321.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310379.P6537019467355233572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2412 terms. -/
def A310379 (n : ℕ) : ℤ :=
  A310379.P6537019467355233572.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2412 terms. -/
def A310379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310398.P3945335365291150677

`A312903(n)+Δ[A011858(n)]`
-/

namespace A310398.P3945335365291150677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312903 n + (f1 (n + 1) - f1 n)

end

end A310398.P3945335365291150677

noncomputable section

/-- A310398: Coordination sequence Gal.5.136.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310398.P3945335365291150677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2432 terms. -/
def A310398 (n : ℕ) : ℤ :=
  A310398.P3945335365291150677.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2432 terms. -/
def A310398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310422.P14341133682885301915

`abs(A008592(n)-A315303(n))`
-/

namespace A310422.P14341133682885301915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315303 n|

end

end A310422.P14341133682885301915

noncomputable section

/-- A310422: Coordination sequence Gal.6.325.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310422.P14341133682885301915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2337 terms. -/
def A310422 (n : ℕ) : ℤ :=
  A310422.P14341133682885301915.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2337 terms. -/
def A310422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310538.P10108678506340412

`A310509(n)+Δ[A011862(n)]`
-/

namespace A310538.P10108678506340412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310509 n + (f1 (n + 1) - f1 n)

end

end A310538.P10108678506340412

noncomputable section

/-- A310538: Coordination sequence Gal.6.215.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310538.P10108678506340412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2270 terms. -/
def A310538 (n : ℕ) : ℤ :=
  A310538.P10108678506340412.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2270 terms. -/
def A310538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311209.P6586831971978910313

`A046978(n)+A313154(n)-n`
-/

namespace A311209.P6586831971978910313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n + (A313154 n - (n : ℤ))

end

end A311209.P6586831971978910313

noncomputable section

/-- A311209: Coordination sequence Gal.5.107.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311209.P6586831971978910313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A311209 (n : ℕ) : ℤ :=
  A311209.P6586831971978910313.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A311209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312206.P1241787982787610248

`abs(10*n-A315670(n))`
-/

namespace A312206.P1241787982787610248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315670 n|

end

end A312206.P1241787982787610248

noncomputable section

/-- A312206: Coordination sequence Gal.6.157.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312206.P1241787982787610248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. -/
def A312206 (n : ℕ) : ℤ :=
  A312206.P1241787982787610248.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. -/
def A312206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312976.P18215844327102758922

`A004396(2*(A312935(n)-n))`
-/

namespace A312976.P18215844327102758922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A312935 n - (n : ℤ))).toNat

end

end A312976.P18215844327102758922

noncomputable section

/-- A312976: Coordination sequence Gal.6.246.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312976.P18215844327102758922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. -/
def A312976 (n : ℕ) : ℤ :=
  A312976.P18215844327102758922.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. -/
def A312976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313025.P18246201174359200645

`A301724(n)-(A330033(n)+n)`
-/

namespace A313025.P18246201174359200645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 n - (A330033 n + (n : ℤ))

end

end A313025.P18246201174359200645

noncomputable section

/-- A313025: Coordination sequence Gal.5.65.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313025.P18246201174359200645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A313025 (n : ℕ) : ℤ :=
  A313025.P18246201174359200645.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A313025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313062.P7455441757488067714

`A312935(n)+Δ[A011864(n)]`
-/

namespace A313062.P7455441757488067714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312935 n + (f1 (n + 1) - f1 n)

end

end A313062.P7455441757488067714

noncomputable section

/-- A313062: Coordination sequence Gal.6.154.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313062.P7455441757488067714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2459 terms. -/
def A313062 (n : ℕ) : ℤ :=
  A313062.P7455441757488067714.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2459 terms. -/
def A313062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313125.P8596607718569848778

`abs(A008592(n)-A315463(n))`
-/

namespace A313125.P8596607718569848778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315463 n|

end

end A313125.P8596607718569848778

noncomputable section

/-- A313125: Coordination sequence Gal.5.111.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313125.P8596607718569848778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A313125 (n : ℕ) : ℤ :=
  A313125.P8596607718569848778.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A313125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313145.P4535959116783505472

`A312184(n)+A004525(n-A004396(n))`
-/

namespace A313145.P4535959116783505472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312184 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A313145.P4535959116783505472

noncomputable section

/-- A313145: Coordination sequence Gal.6.264.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313145.P4535959116783505472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A313145 (n : ℕ) : ℤ :=
  A313145.P4535959116783505472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A313145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313515.P11298845023019683879

`A313117(n)+A128834(n)`
-/

namespace A313515.P11298845023019683879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313117 n + A128834 n

end

end A313515.P11298845023019683879

noncomputable section

/-- A313515: Coordination sequence Gal.6.264.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313515.P11298845023019683879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2396 terms. -/
def A313515 (n : ℕ) : ℤ :=
  A313515.P11298845023019683879.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2396 terms. -/
def A313515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313769.P5587162002525287589

`A004396(n)+A313619(n)-A004525(n)`
-/

namespace A313769.P5587162002525287589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313619 n - A004525 n)

end

end A313769.P5587162002525287589

noncomputable section

/-- A313769: Coordination sequence Gal.6.339.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313769.P5587162002525287589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A313769 (n : ℕ) : ℤ :=
  A313769.P5587162002525287589.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A313769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313772.P6532572318584518292

`abs(A008592(n)-A313704(n))`
-/

namespace A313772.P6532572318584518292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313704 n|

end

end A313772.P6532572318584518292

noncomputable section

/-- A313772: Coordination sequence Gal.6.328.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313772.P6532572318584518292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A313772 (n : ℕ) : ℤ :=
  A313772.P6532572318584518292.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A313772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313855.P14947819833165197464

`A313719(n)+A002266(n+2)`
-/

namespace A313855.P14947819833165197464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313719 n + A002266 (n + 2)

end

end A313855.P14947819833165197464

noncomputable section

/-- A313855: Coordination sequence Gal.5.87.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313855.P14947819833165197464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A313855 (n : ℕ) : ℤ :=
  A313855.P14947819833165197464.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A313855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313890.P2997046397026414357

`∪[A313891(2*n+1), A313894(2*n)]`
-/

namespace A313890.P2997046397026414357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313891 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A313890.P2997046397026414357

noncomputable section

/-- A313890: Coordination sequence Gal.6.648.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313890.P2997046397026414357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. -/
def A313890 (n : ℕ) : ℤ :=
  (A313890.P2997046397026414357.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. -/
def A313890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313939.P1821970513572052391

`A008576(n)+A313799(n)-A072154(n)`
-/

namespace A313939.P1821970513572052391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313799 n - A072154 n)

end

end A313939.P1821970513572052391

noncomputable section

/-- A313939: Coordination sequence Gal.6.659.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313939.P1821970513572052391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2216 terms. -/
def A313939 (n : ℕ) : ℤ :=
  A313939.P1821970513572052391.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2216 terms. -/
def A313939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314085.P6510588875040797776

`A315670(n)-A004525(A004396(n))`
-/

namespace A314085.P6510588875040797776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315670 n - A004525 (A004396 n).toNat

end

end A314085.P6510588875040797776

noncomputable section

/-- A314085: Coordination sequence Gal.6.132.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314085.P6510588875040797776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A314085 (n : ℕ) : ℤ :=
  A314085.P6510588875040797776.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A314085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314129.P3295900941499139215

`A313966(n)+A314123(n)-A313957(n)`
-/

namespace A314129.P3295900941499139215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313966 n + (A314123 n - A313957 n)

end

end A314129.P3295900941499139215

noncomputable section

/-- A314129: Coordination sequence Gal.5.312.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314129.P3295900941499139215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A314129 (n : ℕ) : ℤ :=
  A314129.P3295900941499139215.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A314129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314130.P11569106488579326638

`A313966(n)+A314125(n)-A313957(n)`
-/

namespace A314130.P11569106488579326638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313966 n + (A314125 n - A313957 n)

end

end A314130.P11569106488579326638

noncomputable section

/-- A314130: Coordination sequence Gal.5.312.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314130.P11569106488579326638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A314130 (n : ℕ) : ℤ :=
  A314130.P11569106488579326638.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A314130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314176.P4544315038910432247

`A313932(n)+A244895(A142150(n))`
-/

namespace A314176.P4544315038910432247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313932 n + A244895 (A142150 n).toNat

end

end A314176.P4544315038910432247

noncomputable section

/-- A314176: Coordination sequence Gal.5.313.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314176.P4544315038910432247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A314176 (n : ℕ) : ℤ :=
  A314176.P4544315038910432247.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A314176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314210.P1704120020659904217

`(A310496(n)+A008458(n))/2`
-/

namespace A314210.P1704120020659904217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310496 n + A008458 n : ℚ) / 2

end

end A314210.P1704120020659904217

noncomputable section

/-- A314210: Coordination sequence Gal.6.623.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314210.P1704120020659904217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2250 terms. -/
def A314210 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A314210.P1704120020659904217.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2250 terms. -/
def A314210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314254.P14587660656971649234

`A313117(n)+n`
-/

namespace A314254.P14587660656971649234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313117 n + (n : ℤ)

end

end A314254.P14587660656971649234

noncomputable section

/-- A314254: Coordination sequence Gal.6.628.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314254.P14587660656971649234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2174 terms. -/
def A314254 (n : ℕ) : ℤ :=
  A314254.P14587660656971649234.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2174 terms. -/
def A314254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314548.P16561424659105891053

`A314364(n)+A087509(n)`
-/

namespace A314548.P16561424659105891053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314364 n + A087509 n

end

end A314548.P16561424659105891053

noncomputable section

/-- A314548: Coordination sequence Gal.4.99.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314548.P16561424659105891053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2479 terms. -/
def A314548 (n : ℕ) : ℤ :=
  A314548.P16561424659105891053.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2479 terms. -/
def A314548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314689.P7889334889047970928

`abs(A008592(n)-A314234(n))`
-/

namespace A314689.P7889334889047970928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314234 n|

end

end A314689.P7889334889047970928

noncomputable section

/-- A314689: Coordination sequence Gal.6.255.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314689.P7889334889047970928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. -/
def A314689 (n : ℕ) : ℤ :=
  A314689.P7889334889047970928.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. -/
def A314689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314708.P15864941767784630642

`A315171(n)-A330025(A330025(n)+n)`
-/

namespace A314708.P15864941767784630642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315171 n - A330025 (A330025 n + (n : ℤ)).toNat

end

end A314708.P15864941767784630642

noncomputable section

/-- A314708: Coordination sequence Gal.5.65.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314708.P15864941767784630642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2526 terms. -/
def A314708 (n : ℕ) : ℤ :=
  A314708.P15864941767784630642.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2526 terms. -/
def A314708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314885.P6042204147825848892

`abs(A008592(n)-A314133(n))`
-/

namespace A314885.P6042204147825848892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314133 n|

end

end A314885.P6042204147825848892

noncomputable section

/-- A314885: Coordination sequence Gal.6.245.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314885.P6042204147825848892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314885 (n : ℕ) : ℤ :=
  A314885.P6042204147825848892.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314971.P14452924613501510343

`abs(A008592(n)-A314088(n))`
-/

namespace A314971.P14452924613501510343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314088 n|

end

end A314971.P14452924613501510343

noncomputable section

/-- A314971: Coordination sequence Gal.5.138.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314971.P14452924613501510343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A314971 (n : ℕ) : ℤ :=
  A314971.P14452924613501510343.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A314971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315019.P7036511611890630324

`abs(10*n-A314057(n))`
-/

namespace A315019.P7036511611890630324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A314057 n|

end

end A315019.P7036511611890630324

noncomputable section

/-- A315019: Coordination sequence Gal.6.320.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315019.P7036511611890630324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. -/
def A315019 (n : ℕ) : ℤ :=
  A315019.P7036511611890630324.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. -/
def A315019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315056.P4925321079305398332

`abs(A008592(n)-A314029(n))`
-/

namespace A315056.P4925321079305398332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314029 n|

end

end A315056.P4925321079305398332

noncomputable section

/-- A315056: Coordination sequence Gal.6.348.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315056.P4925321079305398332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A315056 (n : ℕ) : ℤ :=
  A315056.P4925321079305398332.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A315056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315172.P15889676630402810519

`2*A314671(n)-A008574(n)`
-/

namespace A315172.P15889676630402810519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314671 n - A008574 n

end

end A315172.P15889676630402810519

noncomputable section

/-- A315172: Coordination sequence Gal.5.54.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315172.P15889676630402810519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2523 terms. -/
def A315172 (n : ℕ) : ℤ :=
  A315172.P15889676630402810519.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2523 terms. -/
def A315172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315212.P16544204040533700131

`abs(10*n-A310496(n))`
-/

namespace A315212.P16544204040533700131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A310496 n|

end

end A315212.P16544204040533700131

noncomputable section

/-- A315212: Coordination sequence Gal.6.351.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315212.P16544204040533700131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. -/
def A315212 (n : ℕ) : ℤ :=
  A315212.P16544204040533700131.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. -/
def A315212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315267.P18096296036471696412

`A313799(n)+A134667(A006369(n))`
-/

namespace A315267.P18096296036471696412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313799 n + A134667 (A006369 n).toNat

end

end A315267.P18096296036471696412

noncomputable section

/-- A315267: Coordination sequence Gal.6.215.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315267.P18096296036471696412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2284 terms. -/
def A315267 (n : ℕ) : ℤ :=
  A315267.P18096296036471696412.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2284 terms. -/
def A315267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315312.P652016832202607211

`A315261(n)+Δ[A011864(n)]`
-/

namespace A315312.P652016832202607211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315261 n + (f1 (n + 1) - f1 n)

end

end A315312.P652016832202607211

noncomputable section

/-- A315312: Coordination sequence Gal.6.639.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315312.P652016832202607211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A315312 (n : ℕ) : ℤ :=
  A315312.P652016832202607211.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A315312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315446.P15191818491354741477

`A315398(n)+Δ[A011862(n)]`
-/

namespace A315446.P15191818491354741477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315398 n + (f1 (n + 1) - f1 n)

end

end A315446.P15191818491354741477

noncomputable section

/-- A315446: Coordination sequence Gal.5.68.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315446.P15191818491354741477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A315446 (n : ℕ) : ℤ :=
  A315446.P15191818491354741477.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A315446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315478.P13307919099686245578

`A315426(n)+Δ[A011864(n)]`
-/

namespace A315478.P13307919099686245578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315426 n + (f1 (n + 1) - f1 n)

end

end A315478.P13307919099686245578

noncomputable section

/-- A315478: Coordination sequence Gal.6.209.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315478.P13307919099686245578`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2246 terms. -/
def A315478 (n : ℕ) : ℤ :=
  A315478.P13307919099686245578.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2246 terms. -/
def A315478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315485.P8491301675403388189

`A313717(n)+A004525(n)`
-/

namespace A315485.P8491301675403388189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313717 n + A004525 n

end

end A315485.P8491301675403388189

noncomputable section

/-- A315485: Coordination sequence Gal.6.205.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315485.P8491301675403388189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. -/
def A315485 (n : ℕ) : ℤ :=
  A315485.P8491301675403388189.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. -/
def A315485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315631.P14361202183170723118

`A315398(n)+A004396(n-A004396(n))`
-/

namespace A315631.P14361202183170723118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315398 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A315631.P14361202183170723118

noncomputable section

/-- A315631: Coordination sequence Gal.5.68.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315631.P14361202183170723118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2391 terms. -/
def A315631 (n : ℕ) : ℤ :=
  A315631.P14361202183170723118.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2391 terms. -/
def A315631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315690.P5988482929167051028

`A314671(n)+∑[A101825(n)]`
-/

namespace A315690.P5988482929167051028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314671 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315690.P5988482929167051028

noncomputable section

/-- A315690: Coordination sequence Gal.5.135.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315690.P5988482929167051028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2584 terms. -/
def A315690 (n : ℕ) : ℤ :=
  A315690.P5988482929167051028.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2584 terms. -/
def A315690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315727.P1759850529148023067

`A315669(n)+Δ[A011862(n)]`
-/

namespace A315727.P1759850529148023067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315669 n + (f1 (n + 1) - f1 n)

end

end A315727.P1759850529148023067

noncomputable section

/-- A315727: Coordination sequence Gal.5.89.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315727.P1759850529148023067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2310 terms. -/
def A315727 (n : ℕ) : ℤ :=
  A315727.P1759850529148023067.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2310 terms. -/
def A315727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315832.P11173554786775722333

`A315213(n)-A265188(n+1)+n`
-/

namespace A315832.P11173554786775722333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315213 n - A265188 (n + 1) + (n : ℤ)

end

end A315832.P11173554786775722333

noncomputable section

/-- A315832: Coordination sequence Gal.5.207.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315832.P11173554786775722333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A315832 (n : ℕ) : ℤ :=
  A315832.P11173554786775722333.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A315832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315959.P3345584257071925561

`3*n+A004525(A315828(n))`
-/

namespace A315959.P3345584257071925561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + A004525 (A315828 n).toNat

end

end A315959.P3345584257071925561

noncomputable section

/-- A315959: Coordination sequence Gal.5.146.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315959.P3345584257071925561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A315959 (n : ℕ) : ℤ :=
  A315959.P3345584257071925561.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A315959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316344.P12222898114171771494

`A316826((C(3, n+2)+1)*(n+1))`
-/

namespace A316344.P12222898114171771494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 ((Nat.choose 3 (n + 2) + 1) * (n + 1))

end

end A316344.P12222898114171771494

noncomputable section

/-- A316344: An example of a word that is uniform morphic, but neither pure morphic, primitive morphic, nor recurrent.

Offset 0, canonical program `A316344.P12222898114171771494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316344 (n : ℕ) : ℤ :=
  A316344.P12222898114171771494.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316344.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A318107.P12439522984960775908

`A104684(n)*A264772(n)`
-/

namespace A318107.P12439522984960775908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104684 n * A264772 n

end

end A318107.P12439522984960775908

noncomputable section

/-- A318107: Triangle read by rows: T(n,k) = (3*n - 2*k)!/((n-k)!^3*k!).

Offset 0, canonical program `A318107.P12439522984960775908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2490 terms. -/
def A318107 (n : ℕ) : ℤ :=
  A318107.P12439522984960775908.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2490 terms. -/
def A318107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318206.P13112359878719457918

`eq[1, A175242(n+1)]+1`
-/

namespace A318206.P13112359878719457918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175242 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A318206.P13112359878719457918

noncomputable section

/-- A318206: Numbers having no divisor d > 1 that is a binary palindrome (i.e., an element of A006995).

Offset 1, canonical program `A318206.P13112359878719457918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3950 terms. -/
def A318206 (n : ℕ) : ℤ :=
  (A318206.P13112359878719457918.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3950 terms. -/
def A318206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319131.P10960371744779715006

`∑{d}[n+1, A007425(#)*A137851((n+1)/#)]`
-/

namespace A319131.P10960371744779715006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A137851 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319131.P10960371744779715006

noncomputable section

/-- A319131: a(n) = Sum_{d|n} Sum_{p|d, p prime} p.

Offset 1, canonical program `A319131.P10960371744779715006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319131 (n : ℕ) : ℤ :=
  A319131.P10960371744779715006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319967.P4287753706179414986

`A003145(A003144(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319967.P4287753706179414986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (A003144 (n + 1)).toNat

end

end A319967.P4287753706179414986

noncomputable section

/-- A319967: a(n) = A003145(A003144(n)) where A003144 and A003145 are positions of '1' and '2' in the tribonacci word A092782.

Offset 1, canonical program `A319967.P4287753706179414986`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, A003145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319967 (n : ℕ) : ℤ :=
  A319967.P4287753706179414986.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, A003145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319967.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319968.P16398350758420422133

`A003145(A003145(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319968.P16398350758420422133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (A003145 (n + 1)).toNat

end

end A319968.P16398350758420422133

noncomputable section

/-- A319968: a(n) = A003145(A003145(n)).

Offset 1, canonical program `A319968.P16398350758420422133`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319968 (n : ℕ) : ℤ :=
  A319968.P16398350758420422133.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319968.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319969.P14966318444219165670

`3*A003144(n+1)+4*A003145(n+1)+2*(n+1)`
-/

namespace A319969.P14966318444219165670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003144 (n + 1) + 4 * A003145 (n + 1) + (2 * (n + 1) : ℤ)

end

end A319969.P14966318444219165670

noncomputable section

/-- A319969: a(n) = A003145(A003146(n)).

Offset 1, canonical program `A319969.P14966318444219165670`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, A003145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319969 (n : ℕ) : ℤ :=
  A319969.P14966318444219165670.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, A003145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319969.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319971.P17707355117856194328

`3*A003144(n+1)+4*A003145(n+1)+2*n`
-/

namespace A319971.P17707355117856194328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003144 (n + 1) + 4 * A003145 (n + 1) + (2 * n : ℤ)

end

end A319971.P17707355117856194328

noncomputable section

/-- A319971: a(n) = A003146(A003145(n)).

Offset 1, canonical program `A319971.P17707355117856194328`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, A003145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319971 (n : ℕ) : ℤ :=
  A319971.P17707355117856194328.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, A003145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319971.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320088.P9801896306864635147

`∑[A295505(n+1)]`
-/

namespace A320088.P9801896306864635147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320088.P9801896306864635147

noncomputable section

/-- A320088: Number of primitive (=aperiodic) 4-ary words with length less than or equal to n which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

Offset 1, canonical program `A320088.P9801896306864635147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A320088 (n : ℕ) : ℤ :=
  A320088.P9801896306864635147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A320088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320627.P6502014669296269449

`A006134(A038754(n)-1)/3^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A320627.P6502014669296269449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006134 (A038754 n - 1).toNat : ℚ) / (3 ^ n : ℚ)

end

end A320627.P6502014669296269449

noncomputable section

/-- A320627: a(n) = A006134(A038754(n) - 1)/3^n.

Offset 0, canonical program `A320627.P6502014669296269449`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320627 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A320627.P6502014669296269449.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320627.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320701.P6478986865021011395

`A000720(A031924(n+1))`
-/

namespace A320701.P6478986865021011395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A031924 (n + 1)).toNat

end

end A320701.P6478986865021011395

noncomputable section

/-- A320701: Indices of primes followed by a gap (distance to next larger prime) of 6.

Offset 1, canonical program `A320701.P6478986865021011395`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031924, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320701 (n : ℕ) : ℤ :=
  A320701.P6478986865021011395.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031924, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320701.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322583.P14311457502044672591

`A344438(∑[A063226(n+1)])+A344438(n+1)`
-/

namespace A322583.P14311457502044672591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344438 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A344438 (n + 1)

end

end A322583.P14311457502044672591

noncomputable section

/-- A322583: a(n) is the number of factorizations of n into factorial numbers larger than one; a(1) = 1.

Offset 1, canonical program `A322583.P14311457502044672591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A322583 (n : ℕ) : ℤ :=
  A322583.P14311457502044672591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A322583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324795.P1691509728636329575

`A090076(n+1)-A056221(n+1)`
-/

namespace A324795.P1691509728636329575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 1) - A056221 (n + 1)

end

end A324795.P1691509728636329575

noncomputable section

/-- A324795: a(n) = 2*p(n)*p(n+2) - p(n+1)^2 where p(k) = k-th prime.

Offset 1, canonical program `A324795.P1691509728636329575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324795 (n : ℕ) : ℤ :=
  A324795.P1691509728636329575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324873.P5103908596752073579

`gcd(n+1, A060968(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324873.P5103908596752073579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A060968 (n + 1))

end

end A324873.P5103908596752073579

noncomputable section

/-- A324873: a(n) = gcd(n, A060968(n)).

Offset 1, canonical program `A324873.P5103908596752073579`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324873 (n : ℕ) : ℤ :=
  (A324873.P5103908596752073579.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324873.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325310.P15476195284828619111

`∑{d}[A325315(n+1), A209229(#)]`
-/

namespace A325310.P15476195284828619111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A209229 d

end

end A325310.P15476195284828619111

noncomputable section

/-- A325310: a(n) = A001511(A325315(n)), except when A325315(n) = 0, then a(n) = 0.

Offset 1, canonical program `A325310.P15476195284828619111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325310 (n : ℕ) : ℤ :=
  A325310.P15476195284828619111.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325317.P3726811727158540044

`A325316(n+1)-A325318(n+1)`
-/

namespace A325317.P3726811727158540044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325316 (n + 1) - A325318 (n + 1)

end

end A325317.P3726811727158540044

noncomputable section

/-- A325317: a(n) = A048250(n) XOR A162296(n), where XOR is the bitwise-XOR, A003987.

Offset 1, canonical program `A325317.P3726811727158540044`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325316, A325318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325317 (n : ℕ) : ℤ :=
  A325317.P3726811727158540044.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325316, A325318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325317.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325402.P10132391026070939766

`A055944(n)-A325401(n)`
-/

namespace A325402.P10132391026070939766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n - A325401 n

end

end A325402.P10132391026070939766

noncomputable section

/-- A325402: maxflip(n) = max(n, r(n)) where r(n) is the binary reverse of n.

Offset 0, canonical program `A325402.P10132391026070939766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325402 (n : ℕ) : ℤ :=
  A325402.P10132391026070939766.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327277.P14093476909524946840

`p?[A037126(n+1)*A143536(n+1)]`
-/

namespace A327277.P14093476909524946840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) * A143536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A327277.P14093476909524946840

noncomputable section

/-- A327277: Irregular triangle read by rows in which row n lists the first prime(n) primes.

Offset 1, canonical program `A327277.P14093476909524946840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A327277 (n : ℕ) : ℤ :=
  A327277.P14093476909524946840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A327277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327305.P16405484816997818644

`(A327303(n+1)-A327303(n))/5^n`
-/

namespace A327305.P16405484816997818644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327303 (n + 1) - A327303 n : ℚ) / (5 ^ n : ℚ)

end

end A327305.P16405484816997818644

noncomputable section

/-- A327305: Digits of one of the two 5-adic integers sqrt(-9) that is related to A327303.

Offset 0, canonical program `A327305.P16405484816997818644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327303, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327305 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A327305.P16405484816997818644.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327303, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327305.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327728.P1727755471504395487

`A050531(n+1)-A002620(n+3)`
-/

namespace A327728.P1727755471504395487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050531 (n + 1) - A002620 (n + 3)

end

end A327728.P1727755471504395487

noncomputable section

/-- A327728: Number of unlabeled multigraphs with loops allowed and n edges covering three vertices.

Offset 1, canonical program `A327728.P1727755471504395487`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050531, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327728 (n : ℕ) : ℤ :=
  A327728.P1727755471504395487.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050531, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327728.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A328196.P7657334495966535076

`Δ[A328190(n+1)]`
-/

namespace A328196.P7657334495966535076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328196.P7657334495966535076

noncomputable section

/-- A328196: First differences of A328190.

Offset 1, canonical program `A328196.P7657334495966535076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A328196 (n : ℕ) : ℤ :=
  A328196.P7657334495966535076.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A328196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328639.P17852271608018374893

`∑{d}[n+1, A076752(#)*A328254((n+1)/#)]`
-/

namespace A328639.P17852271608018374893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076752 d * A328254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328639.P17852271608018374893

noncomputable section

/-- A328639: Dirichlet g.f.: zeta(2*s) / (zeta(s) * zeta(s-2)).

Offset 1, canonical program `A328639.P17852271608018374893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328639 (n : ℕ) : ℤ :=
  A328639.P17852271608018374893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328818.P2352908255522347692

`A307011(n)+A307013(n)`
-/

namespace A328818.P2352908255522347692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307011 n + A307013 n

end

end A328818.P2352908255522347692

noncomputable section

/-- A328818: 2 * x-coordinate of the points of a counterclockwise spiral on an hexagonal grid.

Offset 0, canonical program `A328818.P2352908255522347692`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307011, A307013, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328818 (n : ℕ) : ℤ :=
  A328818.P2352908255522347692.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307011, A307013, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328818.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329451.P14420224795869764284

`A056847(A008811(n)-A107279(n))`
-/

namespace A329451.P14420224795869764284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A008811 n - A107279 n).toNat

end

end A329451.P14420224795869764284

noncomputable section

/-- A329451: Maximum number of pieces that can be captured during one move on an n X n board according to the international draughts capture rules.

Offset 0, canonical program `A329451.P14420224795869764284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A329451 (n : ℕ) : ℤ :=
  A329451.P14420224795869764284.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A329451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329836.P12686953867278850669

`A110303(2*n+2)%A074822(A000463(n+4))`
-/

namespace A329836.P12686953867278850669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110303 (2 * n + 2)) (A074822 (A000463 (n + 4)).toNat)

end

end A329836.P12686953867278850669

noncomputable section

/-- A329836: Beatty sequence for (11+sqrt(101))/10.

Offset 1, canonical program `A329836.P12686953867278850669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A329836 (n : ℕ) : ℤ :=
  A329836.P12686953867278850669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A329836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330018.P8032385890936907680

`A069264(n+1)-A062799(n+1)`
-/

namespace A330018.P8032385890936907680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069264 (n + 1) - A062799 (n + 1)

end

end A330018.P8032385890936907680

noncomputable section

/-- A330018: a(n) = Sum_{d|n} (bigomega(d) - omega(d)).

Offset 1, canonical program `A330018.P8032385890936907680`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062799, A069264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A330018 (n : ℕ) : ℤ :=
  A330018.P8032385890936907680.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062799, A069264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A330018.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A330908.P5206692806244212137

`a(n-1)+A083399(a(n-1))` with `a(0)=1`
-/

namespace A330908.P5206692806244212137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A083399 (a (n - 1)).toNat

end

end A330908.P5206692806244212137

noncomputable section

/-- A330908: a(n+1) = a(n) + (number of divisors of a(n) that are not divisors of other divisors of a(n)) for n>1; a(1)=1.

Offset 1, canonical program `A330908.P5206692806244212137`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083399, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330908 (n : ℕ) : ℤ :=
  A330908.P5206692806244212137.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083399, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330908.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331698.P4122289337441276779

`A056930(n+2)-A007491(n+2)`
-/

namespace A331698.P4122289337441276779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056930 (n + 2) - A007491 (n + 2)

end

end A331698.P4122289337441276779

noncomputable section

/-- A331698: a(n) = (1/2) * ((greatest prime < (n+1)^2) - (least prime > n^2)) for n >= 2.

Offset 2, canonical program `A331698.P4122289337441276779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A331698 (n : ℕ) : ℤ :=
  A331698.P4122289337441276779.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A331698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332681.P15735275970095107601

`A049691(n)+∑[round(∏{p}[n+1, -#]/(n+2))]`
-/

namespace A332681.P15735275970095107601
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ)) : ℤ) : ℚ) / (n + 2 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049691 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332681.P15735275970095107601

noncomputable section

/-- A332681: a(n) = Sum_{k=1..n} mu(k) * ceiling(n/k)^2.

Offset 1, canonical program `A332681.P15735275970095107601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2914 terms. -/
def A332681 (n : ℕ) : ℤ :=
  A332681.P15735275970095107601.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2914 terms. -/
def A332681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333244.P8233365564291189630

`A049090(A121543(n+1))`
-/

namespace A333244.P8233365564291189630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049090 (A121543 (n + 1)).toNat

end

end A333244.P8233365564291189630

noncomputable section

/-- A333244: Prime numbers with prime indices in A333243.

Offset 1, canonical program `A333244.P8233365564291189630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8936 terms. -/
def A333244 (n : ℕ) : ℤ :=
  A333244.P8233365564291189630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8936 terms. -/
def A333244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333315.P973349873457227221

`∑[A008330(n+1)]`
-/

namespace A333315.P973349873457227221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333315.P973349873457227221

noncomputable section

/-- A333315: a(n) = Sum_{k=1..n} phi(prime(k)-1), where phi is the Euler totient function (A000005).

Offset 1, canonical program `A333315.P973349873457227221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333315 (n : ℕ) : ℤ :=
  A333315.P973349873457227221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333315.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A334793.P7332075651216311592

`∑{d}[n+1, A324528(#)]`
-/

namespace A334793.P7332075651216311592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A324528 d

end

end A334793.P7332075651216311592

noncomputable section

/-- A334793: a(n) = Sum_{d|n} lcm(tau(d), pod(d)) where tau(k) is the number of divisors of k (A000005) and pod(k) is the product of divisors of k (A007955).

Offset 1, canonical program `A334793.P7332075651216311592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A334793 (n : ℕ) : ℤ :=
  A334793.P7332075651216311592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A334793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334800.P4513335297567322539

`A062774(n+1)-A062799(n+1)`
-/

namespace A334800.P4513335297567322539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062774 (n + 1) - A062799 (n + 1)

end

end A334800.P4513335297567322539

noncomputable section

/-- A334800: a(n) is the number of values d*p less than n, where d is a divisor of n, p is a prime, and d*p is not a divisor of n.

Offset 1, canonical program `A334800.P4513335297567322539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334800 (n : ℕ) : ℤ :=
  A334800.P4513335297567322539.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334807.P16460342696752361550

`∏{d}[n+1, A324528(#)]`
-/

namespace A334807.P16460342696752361550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A324528 d

end

end A334807.P16460342696752361550

noncomputable section

/-- A334807: a(n) = Product_{d|n} lcm(tau(d), pod(d)) where tau(k) is the number of divisors of k (A000005) and pod(k) is the product of divisors of k (A007955).

Offset 1, canonical program `A334807.P16460342696752361550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A334807 (n : ℕ) : ℤ :=
  A334807.P16460342696752361550.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A334807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335032.P14462768690322919122

`∑{d}[n+1, A176345(#)]`
-/

namespace A335032.P14462768690322919122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A176345 d

end

end A335032.P14462768690322919122

noncomputable section

/-- A335032: Dirichlet g.f.: zeta(s) * zeta(s-1) * Product_{p prime} (1 + p^(1 - s) - p^(-s)).

Offset 1, canonical program `A335032.P14462768690322919122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335032 (n : ℕ) : ℤ :=
  A335032.P14462768690322919122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335032.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A336377.P11303749911854219269

`A000040(A336375(n+1))`
-/

namespace A336377.P11303749911854219269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A336375 (n + 1)).toNat

end

end A336377.P11303749911854219269

noncomputable section

/-- A336377: Primes p(n) such that gcd(n, prime(n)+prime(n+2)) > 1.

Offset 1, canonical program `A336377.P11303749911854219269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6364 terms. -/
def A336377 (n : ℕ) : ℤ :=
  A336377.P11303749911854219269.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6364 terms. -/
def A336377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338529.P17609218579952394928

`A046302(n+1)/A006094(n+1)-A006094(n+1)`
-/

namespace A338529.P17609218579952394928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046302 (n + 1) : ℚ) / (A006094 (n + 1) : ℚ) - (A006094 (n + 1) : ℚ)

end

end A338529.P17609218579952394928

noncomputable section

/-- A338529: a(n) = prime(n+2)*prime(n+3)-prime(n)*prime(n+1).

Offset 1, canonical program `A338529.P17609218579952394928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338529 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A338529.P17609218579952394928.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338533.P15816568125547245429

`p?[A102770(n+3)-A102770(n+1)]`
-/

namespace A338533.P15816568125547245429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102770 (n + 3) - A102770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338533.P15816568125547245429

noncomputable section

/-- A338533: Primes in A338529/2.

Offset 1, canonical program `A338533.P15816568125547245429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A338533 (n : ℕ) : ℤ :=
  A338533.P15816568125547245429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A338533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339640.P13360000113742845411

`(A062772(n+1)+A054270(n+1))/2-A001248(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A339640.P13360000113742845411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062772 (n + 1) + A054270 (n + 1) : ℚ) / 2 - (A001248 (n + 1) : ℚ)

end

end A339640.P13360000113742845411

noncomputable section

/-- A339640: a(n) = (A062772(n) + A054270(n)) / 2 - A001248(n).

Offset 1, canonical program `A339640.P13360000113742845411`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062772, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339640 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A339640.P13360000113742845411.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062772, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339640.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341835.P7023220512797998449

`∑{d}[n+1, A341836(#)]`
-/

namespace A341835.P7023220512797998449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341836 d

end

end A341835.P7023220512797998449

noncomputable section

/-- A341835: Dirichlet g.f.: 1 / zeta(s)^9.

Offset 1, canonical program `A341835.P7023220512797998449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341835 (n : ℕ) : ℤ :=
  A341835.P7023220512797998449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342185.P15363331262892615647

`p?[ceil(A074822(n+1)/10)]`
-/

namespace A342185.P15363331262892615647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074822 (n + 1) : ℚ) / 10⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342185.P15363331262892615647

noncomputable section

/-- A342185: Primes q such that 10*q-1 and 10*q+3 are cousin primes.

Offset 1, canonical program `A342185.P15363331262892615647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1069 terms. -/
def A342185 (n : ℕ) : ℤ :=
  A342185.P15363331262892615647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1069 terms. -/
def A342185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343490.P11085896974170910640

`∑{d}[n+1, #*A295505((n+1)/#)]`
-/

namespace A343490.P11085896974170910640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A295505 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343490.P11085896974170910640

noncomputable section

/-- A343490: a(n) = Sum_{k=1..n} 4^(gcd(k, n) - 1).

Offset 1, canonical program `A343490.P11085896974170910640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A343490 (n : ℕ) : ℤ :=
  A343490.P11085896974170910640.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A343490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343656.P8994259511323762319

`A000005(A009998(n))`
-/

namespace A343656.P8994259511323762319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A009998 n).toNat

end

end A343656.P8994259511323762319

noncomputable section

/-- A343656: Array read by antidiagonals where A(n,k) is the number of divisors of n^k.

Offset 1, canonical program `A343656.P8994259511323762319`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009998, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343656 (n : ℕ) : ℤ :=
  A343656.P8994259511323762319.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009998, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343656.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343809.P11687227892759460159

`A114327(eq[1, A143536(n+1)])+1+n`
-/

namespace A343809.P11687227892759460159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1 + (n : ℤ)

end

end A343809.P11687227892759460159

noncomputable section

/-- A343809: Divide the positive integers into subsets of lengths given by successive primes, then reverse the order of terms in each subset.

Offset 1, canonical program `A343809.P11687227892759460159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2127 terms. -/
def A343809 (n : ℕ) : ℤ :=
  A343809.P11687227892759460159.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2127 terms. -/
def A343809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345070.P14970259234537640589

`A345069(n+1)/2`
-/

namespace A345070.P14970259234537640589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345069 (n + 1) : ℚ) / 2

end

end A345070.P14970259234537640589

noncomputable section

/-- A345070: Averages of two consecutive even-indexed primes.

Offset 1, canonical program `A345070.P14970259234537640589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345070 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345070.P14970259234537640589.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345277.P7546065214592130930

`A345069(n+2)+A031215(n+1)`
-/

namespace A345277.P7546065214592130930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345069 (n + 2) + A031215 (n + 1)

end

end A345277.P7546065214592130930

noncomputable section

/-- A345277: Sums of 3 consecutive even-indexed primes.

Offset 1, canonical program `A345277.P7546065214592130930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A345277 (n : ℕ) : ℤ :=
  A345277.P7546065214592130930.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A345277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345280.P13179303495743495362

`∑{p}[n+1, A066169(#)]`
-/

namespace A345280.P13179303495743495362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A066169 p

end

end A345280.P13179303495743495362

noncomputable section

/-- A345280: a(n) = Sum_{p|n, p prime} nextprime(p), where nextprime(n) is the smallest prime > n.

Offset 1, canonical program `A345280.P13179303495743495362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345280 (n : ℕ) : ℤ :=
  A345280.P13179303495743495362.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345978.P5377370654684222569

`-A307013(n)`
-/

namespace A345978.P5377370654684222569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A307013 n

end

end A345978.P5377370654684222569

noncomputable section

/-- A345978: Third coordinate of the points of a counterclockwise spiral on an hexagonal grid in a symmetric redundant hexagonal coordinate system.

Offset 0, canonical program `A345978.P5377370654684222569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307013, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345978 (n : ℕ) : ℤ :=
  A345978.P5377370654684222569.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307013, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345978.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346010.P5513981083379835901

`A000005(n+1)/gcd(A000005(n+1), A062799(n+1))`
-/

namespace A346010.P5513981083379835901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (Int.gcd (A000005 (n + 1)) (A062799 (n + 1)) : ℚ)

end

end A346010.P5513981083379835901

noncomputable section

/-- A346010: a(n) is the denominator of the average number of distinct prime factors of the divisors of n.

Offset 1, canonical program `A346010.P5513981083379835901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346010 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A346010.P5513981083379835901.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347091.P10465094588197524565

`A332844(n+1)+A347090(n+1)`
-/

namespace A347091.P10465094588197524565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332844 (n + 1) + A347090 (n + 1)

end

end A347091.P10465094588197524565

noncomputable section

/-- A347091: Sum of A332844 and its Dirichlet inverse.

Offset 1, canonical program `A347091.P10465094588197524565`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332844, A347090, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347091 (n : ℕ) : ℤ :=
  A347091.P10465094588197524565.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332844, A347090, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347091.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347104.P489848652422214647

`∑{d}[n+1, #*A137851((n+1)/#)]`
-/

namespace A347104.P489848652422214647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A137851 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347104.P489848652422214647

noncomputable section

/-- A347104: Dirichlet g.f.: primezeta(s-1) * zeta(s-1) / zeta(s).

Offset 1, canonical program `A347104.P489848652422214647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347104 (n : ℕ) : ℤ :=
  A347104.P489848652422214647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348011.P10712634183778289058

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A060648(n+1)`
-/

namespace A348011.P10712634183778289058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) * (A060648 (n + 1) : ℚ)

end

end A348011.P10712634183778289058

noncomputable section

/-- A348011: a(n) = phi(n^2) * Sum_{d|n} 2^omega(d) / d.

Offset 1, canonical program `A348011.P10712634183778289058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348011 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348011.P10712634183778289058.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349444.P9210141452199048946

`∑{d}[n+1, A007427(#)*A113415((n+1)/#)]`
-/

namespace A349444.P9210141452199048946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A113415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349444.P9210141452199048946

noncomputable section

/-- A349444: Dirichlet convolution of A003602 (a Kimberling paraphrase) with A092673 (Dirichlet inverse of A001511).

Offset 1, canonical program `A349444.P9210141452199048946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349444 (n : ℕ) : ℤ :=
  A349444.P9210141452199048946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349996.P11167608155946690490

`record[A180304(n+1)/(n+1)]`
-/

namespace A349996.P11167608155946690490
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180304 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349996.P11167608155946690490

noncomputable section

/-- A349996: Number of primes in an interval [k^2,(k+1)^2] setting a new record.

Offset 1, canonical program `A349996.P11167608155946690490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A349996 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349996.P11167608155946690490.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A349996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353084.P13564049963541245376

`A003265(n+1)-n`
-/

namespace A353084.P13564049963541245376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003265 (n + 1) - (n : ℤ)

end

end A353084.P13564049963541245376

noncomputable section

/-- A353084: Column 0 of the extended Trithoff (tribonacci) array.

Offset 1, canonical program `A353084.P13564049963541245376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353084 (n : ℕ) : ℤ :=
  A353084.P13564049963541245376.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353137.P706346639936671998

`∩[A061771(n+1), A151800(A061771(n+1))]`
-/

namespace A353137.P706346639936671998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A061771 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353137.P706346639936671998

noncomputable section

/-- A353137: Primes whose gaps to both neighbor primes are powers of two.

Offset 1, canonical program `A353137.P706346639936671998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1103 terms. -/
def A353137 (n : ℕ) : ℤ :=
  (A353137.P706346639936671998.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1103 terms. -/
def A353137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353612.P5678627208239049230

`A061397(A108872(n+1))`
-/

namespace A353612.P5678627208239049230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A108872 (n + 1)).toNat

end

end A353612.P5678627208239049230

noncomputable section

/-- A353612: Triangle read by rows: T(n,k) = (n + k) if (n + k) is a prime number, otherwise T(n,k) = 0; n >= 1, k >= 1.

Offset 1, canonical program `A353612.P5678627208239049230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353612 (n : ℕ) : ℤ :=
  A353612.P5678627208239049230.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354923.P18081959809145531847

`C(A007814(n+1), C(A008480(n+1), 2))`
-/

namespace A354923.P18081959809145531847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007814 (n + 1)).toNat (Nat.choose (A008480 (n + 1)).toNat 2)

end

end A354923.P18081959809145531847

noncomputable section

/-- A354923: a(n) = 1 if n is either a power of prime or 2*prime, otherwise 0.

Offset 1, canonical program `A354923.P18081959809145531847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354923 (n : ℕ) : ℤ :=
  (A354923.P18081959809145531847.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355750.P5981996292456239035

`A062731(n+1)-A099777(n+1)`
-/

namespace A355750.P5981996292456239035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062731 (n + 1) - A099777 (n + 1)

end

end A355750.P5981996292456239035

noncomputable section

/-- A355750: Sum of the divisors of 2n minus the number of divisors of 2n.

Offset 1, canonical program `A355750.P5981996292456239035`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355750 (n : ℕ) : ℤ :=
  A355750.P5981996292456239035.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355750.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A355825.P15495116383470503426

`A363329(n+1)%3`
-/

namespace A355825.P15495116383470503426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363329 (n + 1)) 3

end

end A355825.P15495116383470503426

noncomputable section

/-- A355825: a(n) = 1 if all exponents in prime factorization of n have an odd binary weight, otherwise 0.

Offset 1, canonical program `A355825.P15495116383470503426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355825 (n : ℕ) : ℤ :=
  A355825.P15495116383470503426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355996.P7540053898324700991

`A173333(n+1)/A010766(n+1)!`
-/

namespace A355996.P7540053898324700991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173333 (n + 1) : ℚ) / (Nat.factorial (A010766 (n + 1)).toNat : ℚ)

end

end A355996.P7540053898324700991

noncomputable section

/-- A355996: Triangle T(n,k), n >= 1, 1 <= k <= n, read by rows, where T(n,k) = n!/(k! * floor(n/k)!).

Offset 1, canonical program `A355996.P7540053898324700991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A355996 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A355996.P7540053898324700991.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A355996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356013.P16236274806747850591

`A173333(n+1)/A010766(n+1)`
-/

namespace A356013.P16236274806747850591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173333 (n + 1) : ℚ) / (A010766 (n + 1) : ℚ)

end

end A356013.P16236274806747850591

noncomputable section

/-- A356013: Triangle T(n,k), n >= 1, 1 <= k <= n, read by rows, where T(n,k) = n!/(k! * floor(n/k)).

Offset 1, canonical program `A356013.P16236274806747850591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A356013 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A356013.P16236274806747850591.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A356013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356546.P14984275591505448716

`A003506(n+1)*A168256(n)`
-/

namespace A356546.P14984275591505448716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) * A168256 n

end

end A356546.P14984275591505448716

noncomputable section

/-- A356546: Triangle read by rows. T(n, k) = RisingFactorial(n + 1, n) / (k! * (n - k)!).

Offset 0, canonical program `A356546.P14984275591505448716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6604 terms. -/
def A356546 (n : ℕ) : ℤ :=
  A356546.P14984275591505448716.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6604 terms. -/
def A356546.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A357761.P12264452491752923310

`A227872(n+1)-A356018(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A357761.P12264452491752923310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227872 (n + 1) - A356018 (n + 1)

end

end A357761.P12264452491752923310

noncomputable section

/-- A357761: a(n) = A227872(n) - A356018(n).

Offset 1, canonical program `A357761.P12264452491752923310`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227872, A356018, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A357761 (n : ℕ) : ℤ :=
  A357761.P12264452491752923310.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227872, A356018, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A357761.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359485.P1680214592273319641

`∑{d}[n+1, A002131(#)*A328254((n+1)/#)]`
-/

namespace A359485.P1680214592273319641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002131 d * A328254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359485.P1680214592273319641

noncomputable section

/-- A359485: a(1) = 1, a(2) = -5; a(n) = -n^2 * Sum_{d|n, d < n} a(d) / d^2.

Offset 1, canonical program `A359485.P1680214592273319641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359485 (n : ℕ) : ℤ :=
  A359485.P1680214592273319641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359869.P15930042732878126221

`lt[∏{p}[n+1, #], A352167(n+1)]+1`
-/

namespace A359869.P15930042732878126221
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352167 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n + 1

end

end A359869.P15930042732878126221

noncomputable section

/-- A359869: Numbers whose product of distinct prime factors is less than the sum of its prime factors (with repetition).

Offset 1, canonical program `A359869.P15930042732878126221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A359869 (n : ℕ) : ℤ :=
  (A359869.P15930042732878126221.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A359869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360452.P5231315610190854606

`record[A049691(n)-a(n-1)]` with `a(0)=0`
-/

namespace A360452.P5231315610190854606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A049691 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360452.P5231315610190854606

noncomputable section

/-- A360452: Number of fractions c/d with |c| <= d <= 2n and odd denominator when factors of 2 are canceled.

Offset 0, canonical program `A360452.P5231315610190854606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1458 terms. -/
def A360452 (n : ℕ) : ℤ :=
  A360452.P5231315610190854606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1458 terms. -/
def A360452.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A361689.P3213455168666859639

`2*(1+A007814(n+1))*A275367(n+1)`
-/

namespace A361689.P3213455168666859639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 + A007814 (n + 1)) * A275367 (n + 1)

end

end A361689.P3213455168666859639

noncomputable section

/-- A361689: The number of divisors of 2*n^2.

Offset 1, canonical program `A361689.P3213455168666859639`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361689 (n : ℕ) : ℤ :=
  A361689.P3213455168666859639.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361689.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A363033.P3715738251278879840

`A284281(5*(n+1)-1)`
-/

namespace A363033.P3715738251278879840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284281 (5 * (n + 1) - 1)

end

end A363033.P3715738251278879840

noncomputable section

/-- A363033: Sum of divisors of 5*n-1 of form 5*k+3.

Offset 1, canonical program `A363033.P3715738251278879840`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363033 (n : ℕ) : ℤ :=
  A363033.P3715738251278879840.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363033.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363034.P8832158960344729897

`A284281(5*(n+1)-2)`
-/

namespace A363034.P8832158960344729897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284281 (5 * (n + 1) - 2)

end

end A363034.P8832158960344729897

noncomputable section

/-- A363034: Sum of divisors of 5*n-2 of form 5*k+3.

Offset 1, canonical program `A363034.P8832158960344729897`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363034 (n : ℕ) : ℤ :=
  A363034.P8832158960344729897.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363034.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363035.P2703347928261583590

`A284281(5*(n+1)-3)`
-/

namespace A363035.P2703347928261583590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284281 (5 * (n + 1) - 3)

end

end A363035.P2703347928261583590

noncomputable section

/-- A363035: Sum of divisors of 5*n-3 of form 5*k+3.

Offset 1, canonical program `A363035.P2703347928261583590`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363035 (n : ℕ) : ℤ :=
  A363035.P2703347928261583590.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363035.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363053.P13013895526662378901

`A284281(5*n+1)`
-/

namespace A363053.P13013895526662378901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284281 (5 * n + 1)

end

end A363053.P13013895526662378901

noncomputable section

/-- A363053: Sum of divisors of 5*n-4 of form 5*k+3.

Offset 1, canonical program `A363053.P13013895526662378901`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363053 (n : ℕ) : ℤ :=
  A363053.P13013895526662378901.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363053.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363571.P3654018862182972144

`(A084771(n)-1)/4`
-/

namespace A363571.P3654018862182972144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084771 n - 1 : ℚ) / 4

end

end A363571.P3654018862182972144

noncomputable section

/-- A363571: Expansion of (1 / sqrt(1 - 10*x + 9*x^2) - 1 / (1 - x)) / 4.

Offset 0, canonical program `A363571.P3654018862182972144`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084771, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363571 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363571.P3654018862182972144.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084771, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363571.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363928.P10938334218304106877

`(2*A001878(n+1)+A284281(n+1))/5`
-/

namespace A363928.P10938334218304106877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A001878 (n + 1) + A284281 (n + 1) : ℚ) / 5

end

end A363928.P10938334218304106877

noncomputable section

/-- A363928: Expansion of Sum_{k>0} x^(3*k) / (1 - x^(5*k))^2.

Offset 1, canonical program `A363928.P10938334218304106877`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001878, A284281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363928 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363928.P10938334218304106877.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001878, A284281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363928.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366379.P3372752632855876333

`comp[A366378(n+1)]`
-/

namespace A366379.P3372752632855876333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A366379.P3372752632855876333

noncomputable section

/-- A366379: Numbers k such that A057889(k) != k (mod 3), where A057889 is the bijective bit-reverse.

Offset 1, canonical program `A366379.P3372752632855876333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5754 terms. -/
def A366379 (n : ℕ) : ℤ :=
  (A366379.P3372752632855876333.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5754 terms. -/
def A366379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367516.P12997703582462291800

`2^A367512(n+1)`
-/

namespace A367516.P12997703582462291800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A367512 (n + 1) : ℤ)

end

end A367516.P12997703582462291800

noncomputable section

/-- A367516: The number of unitary divisors of n that are exponentially evil numbers (A262675).

Offset 1, canonical program `A367516.P12997703582462291800`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367516 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367516.P12997703582462291800.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367516.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369744.P12931148306204078682

`∑{d}[n+1, A062799(#)*A137851((n+1)/#)]`
-/

namespace A369744.P12931148306204078682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062799 d * A137851 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369744.P12931148306204078682

noncomputable section

/-- A369744: a(n) = Sum_{p|n, p prime} p * omega(n/p).

Offset 1, canonical program `A369744.P12931148306204078682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369744 (n : ℕ) : ℤ :=
  A369744.P12931148306204078682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369745.P3771573079941059180

`∑{d}[n+1, A062774(#)*A137851((n+1)/#)]`
-/

namespace A369745.P3771573079941059180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062774 d * A137851 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369745.P3771573079941059180

noncomputable section

/-- A369745: a(n) = Sum_{p|n, p prime} p * pi(n/p).

Offset 1, canonical program `A369745.P3771573079941059180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369745 (n : ℕ) : ℤ :=
  A369745.P3771573079941059180.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371870.P16935794293074856516

`A000984(n)-A109262(n)`
-/

namespace A371870.P16935794293074856516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A109262 n

end

end A371870.P16935794293074856516

noncomputable section

/-- A371870: a(n) = Sum_{k=0..floor(n/2)} binomial(2*n-k-1,n-2*k).

Offset 0, canonical program `A371870.P16935794293074856516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A371870 (n : ℕ) : ℤ :=
  A371870.P16935794293074856516.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A371870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372209.P616246694490321131

`A008578(A046868(n+1))`
-/

namespace A372209.P616246694490321131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A046868 (n + 1)).toNat

end

end A372209.P616246694490321131

noncomputable section

/-- A372209: Primes p_1 where products m of k = 3 consecutive primes p_1..p_k are such that only p_1 < m^(1/k).

Offset 1, canonical program `A372209.P616246694490321131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A372209 (n : ℕ) : ℤ :=
  A372209.P616246694490321131.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A372209.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A373260.P13345870415244065994

`A372573(3*(n+1))`
-/

namespace A373260.P13345870415244065994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (3 * (n + 1))

end

end A373260.P13345870415244065994

noncomputable section

/-- A373260: a(n) = 1 if A276085(n) == +1 (mod 3), otherwise 0, where A276085 is the primorial base log-function.

Offset 1, canonical program `A373260.P13345870415244065994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373260 (n : ℕ) : ℤ :=
  A373260.P13345870415244065994.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373261.P11625810487040253736

`eq[1, A373153(n+1)]+1`
-/

namespace A373261.P11625810487040253736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373153 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373261.P11625810487040253736

noncomputable section

/-- A373261: Numbers k for which A276085(k) == +1 (mod 3), where A276085 is the primorial base log-function.

Offset 1, canonical program `A373261.P11625810487040253736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373261 (n : ℕ) : ℤ :=
  (A373261.P11625810487040253736.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373262.P3920179608283670955

`lt[A373153(n+1), 0]+1`
-/

namespace A373262.P3920179608283670955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373153 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A373262.P3920179608283670955

noncomputable section

/-- A373262: Numbers k for which A276085(k) == -1 (mod 3), where A276085 is the primorial base log-function.

Offset 1, canonical program `A373262.P3920179608283670955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373262 (n : ℕ) : ℤ :=
  (A373262.P3920179608283670955.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373280.P16964894581792831006

`∑{d}[n+1, A115362(#-1)*A295505((n+1)/#)]`
-/

namespace A373280.P16964894581792831006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115362 (d - 1) * A295505 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373280.P16964894581792831006

noncomputable section

/-- A373280: Expansion of Sum_{k>=0} x^(4^k) / (1 - 4*x^(4^k)).

Offset 1, canonical program `A373280.P16964894581792831006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A373280 (n : ℕ) : ℤ :=
  A373280.P16964894581792831006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A373280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373836.P14977565913195360682

`A372573(n+1)*A373975(n+1)`
-/

namespace A373836.P14977565913195360682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (n + 1) * A373975 (n + 1)

end

end A373836.P14977565913195360682

noncomputable section

/-- A373836: a(n) = 1 if bigomega(n) and A276085(n) are both multiples of 3, otherwise 0, where bigomega (A001222) and A276085 are fully additive with a(p) = 1 and a(p) = p#/p respectively.

Offset 1, canonical program `A373836.P14977565913195360682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373836 (n : ℕ) : ℤ :=
  A373836.P14977565913195360682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374119.P18024338057745193586

`A372573(n+1)*A374051(n+1)`
-/

namespace A374119.P18024338057745193586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (n + 1) * A374051 (n + 1)

end

end A374119.P18024338057745193586

noncomputable section

/-- A374119: a(n) = 1 if A113177(n) and A276085(n) are both multiples of 3, otherwise 0, where A113177 and A276085 are fully additive with a(p) = Fibonacci(p) and a(p) = p#/p, respectively.

Offset 1, canonical program `A374119.P18024338057745193586`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, A374051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374119 (n : ℕ) : ℤ :=
  A374119.P18024338057745193586.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, A374051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374119.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374276.P15801528438707414755

`A374093(n)+A214284(n)`
-/

namespace A374276.P15801528438707414755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374093 n + A214284 n

end

end A374276.P15801528438707414755

noncomputable section

/-- A374276: Number of representations of n by the quadratic form x^2 + 3*x*y + y^2 with 0 <= x <= y.

Offset 0, canonical program `A374276.P15801528438707414755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A374276 (n : ℕ) : ℤ :=
  A374276.P15801528438707414755.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A374276.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A375933.P3247189904836465685

`A051903(A375932(n+1))`
-/

namespace A375933.P3247189904836465685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A375932 (n + 1)).toNat

end

end A375933.P3247189904836465685

noncomputable section

/-- A375933: The second-largest exponent in the prime factorization of n, or 0 if it does not exist.

Offset 1, canonical program `A375933.P3247189904836465685`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A375932, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375933 (n : ℕ) : ℤ :=
  A375933.P3247189904836465685.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A375932, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375933.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377019.P8238063563762477433

`eq[A001221(n+1), A376885(n+1)]+1`
-/

namespace A377019.P8238063563762477433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376885 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A377019.P8238063563762477433

noncomputable section

/-- A377019: Numbers whose prime factorization has exponents that are all factorial numbers.

Offset 1, canonical program `A377019.P8238063563762477433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8401 terms. -/
def A377019 (n : ℕ) : ℤ :=
  (A377019.P8238063563762477433.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8401 terms. -/
def A377019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377421.P16177160434784500960

`filter[A204232(n+1), A178226(#)]`
-/

namespace A377421.P16177160434784500960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A377421.P16177160434784500960

noncomputable section

/-- A377421: Numbers whose binary reversal is prime and unequal to the original number.

Offset 1, canonical program `A377421.P16177160434784500960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A377421 (n : ℕ) : ℤ :=
  A377421.P16177160434784500960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A377421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378443.P3282744420953376765

`∑{d}[n+1, A372573(#)]`
-/

namespace A378443.P3282744420953376765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A372573 d

end

end A378443.P3282744420953376765

noncomputable section

/-- A378443: Inverse Möbius transform of A372573.

Offset 1, canonical program `A378443.P3282744420953376765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378443 (n : ℕ) : ℤ :=
  A378443.P3282744420953376765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378995.P10105459353425668716

`A062731(n+1)/A378994(n+1)`
-/

namespace A378995.P10105459353425668716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062731 (n + 1) : ℚ) / (A378994 (n + 1) : ℚ)

end

end A378995.P10105459353425668716

noncomputable section

/-- A378995: Numerator of sigma(2*n)/(2*n).

Offset 1, canonical program `A378995.P10105459353425668716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378995 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378995.P10105459353425668716.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378995.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379099.P6794364004104742208

`A000108(n)*A006134(n)`
-/

namespace A379099.P6794364004104742208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A006134 n

end

end A379099.P6794364004104742208

noncomputable section

/-- A379099: a(n) = Sum_{k=0..n} binomial(2*k, k)*binomial(2*n, n)/(n + 1). Row sums of A379100.

Offset 0, canonical program `A379099.P6794364004104742208`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379099 (n : ℕ) : ℤ :=
  A379099.P6794364004104742208.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379099.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379219.P16078624363697017036

`∑{d}[n+1, A379109(#)]`
-/

namespace A379219.P16078624363697017036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A379109 d

end

end A379219.P16078624363697017036

noncomputable section

/-- A379219: Dirichlet inverse of A379218.

Offset 1, canonical program `A379219.P16078624363697017036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379219 (n : ℕ) : ℤ :=
  A379219.P16078624363697017036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379226.P6425558838148186179

`eq[1, A379227(n+1)]+1`
-/

namespace A379226.P6425558838148186179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379227 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379226.P6425558838148186179

noncomputable section

/-- A379226: Numbers k for which A113177(k) is a multiple of 5, where A113177 is fully additive with a(p) = Fibonacci(p).

Offset 1, canonical program `A379226.P6425558838148186179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9344 terms. -/
def A379226 (n : ℕ) : ℤ :=
  (A379226.P6425558838148186179.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9344 terms. -/
def A379226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380151.P6636326723691283784

`A035487(n+1)-A380804(n+1)`
-/

namespace A380151.P6636326723691283784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035487 (n + 1) - A380804 (n + 1)

end

end A380151.P6636326723691283784

noncomputable section

/-- A380151: Classification sequence for the Stolarsky array A035506.

Offset 1, canonical program `A380151.P6636326723691283784`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035487, A380804, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380151 (n : ℕ) : ℤ :=
  A380151.P6636326723691283784.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035487, A380804, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380151.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380372.P10366550130277599333

`char[A082851(n+1)-1]`
-/

namespace A380372.P10366550130277599333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082851 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A380372.P10366550130277599333

noncomputable section

/-- A380372: Characteristic function of A082851.

Offset 1, canonical program `A380372.P10366550130277599333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380372 (n : ℕ) : ℤ :=
  (A380372.P10366550130277599333.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380910.P6919724403864687655

`A004730(abs(1-n))`
-/

namespace A380910.P6919724403864687655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 |1 - (n : ℤ)|.toNat

end

end A380910.P6919724403864687655

noncomputable section

/-- A380910: a(n) = denominator(n!! / (n - 1)!!).

Offset 0, canonical program `A380910.P6919724403864687655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A380910 (n : ℕ) : ℤ :=
  A380910.P6919724403864687655.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A380910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380950.P16297941268626771220

`A004730(A289207(n))*A380909(n)`
-/

namespace A380950.P16297941268626771220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 (A289207 n).toNat * A380909 n

end

end A380950.P16297941268626771220

noncomputable section

/-- A380950: a(n) = denominator(r(n)) where r(n) = (n/2)*(Pi/2)^cos(Pi*(n-1))*((n/2-1/2)!/(n/2)!)^2.

Offset 0, canonical program `A380950.P16297941268626771220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A380950 (n : ℕ) : ℤ :=
  A380950.P16297941268626771220.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A380950.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A382890.P5080446729015347365

`sqrt(A382889(n+1))`
-/

namespace A382890.P5080446729015347365
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A382889 (n + 1) : ℝ)

end

end A382890.P5080446729015347365

noncomputable section

/-- A382890: The square root of the largest square dividing the n-th cubefree number.

Offset 1, canonical program `A382890.P5080446729015347365`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382889, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382890 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382890.P5080446729015347365.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382889, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382890.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382891.P5915587379995941909

`A004709(n+1)/A382889(n+1)`
-/

namespace A382891.P5915587379995941909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004709 (n + 1) : ℚ) / (A382889 (n + 1) : ℚ)

end

end A382891.P5915587379995941909

noncomputable section

/-- A382891: The powerfree part of the n-th cubefree number.

Offset 1, canonical program `A382891.P5915587379995941909`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A382889, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382891 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382891.P5915587379995941909.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A382889, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382891.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382902.P15410201200105396021

`A007948(A046100(n+1))`
-/

namespace A382902.P15410201200105396021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A046100 (n + 1)).toNat

end

end A382902.P15410201200105396021

noncomputable section

/-- A382902: The largest cubefree divisor of the n-th biquadratefree number.

Offset 1, canonical program `A382902.P15410201200105396021`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382902 (n : ℕ) : ℤ :=
  A382902.P15410201200105396021.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382902.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382905.P13634783915817260642

`A055231(A046100(n+1))`
-/

namespace A382905.P13634783915817260642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A046100 (n + 1)).toNat

end

end A382905.P13634783915817260642

noncomputable section

/-- A382905: The powerfree part of the n-th biquadratefree number.

Offset 1, canonical program `A382905.P13634783915817260642`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382905 (n : ℕ) : ℤ :=
  A382905.P13634783915817260642.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382905.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383004.P7561396610622061570

`A007814(A004709(n+1))`
-/

namespace A383004.P7561396610622061570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A004709 (n + 1)).toNat

end

end A383004.P7561396610622061570

noncomputable section

/-- A383004: Exponent of the highest power of 2 dividing the n-th cubefree number.

Offset 1, canonical program `A383004.P7561396610622061570`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383004 (n : ℕ) : ℤ :=
  A383004.P7561396610622061570.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383004.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383005.P1801605340694019833

`A007814(A046100(n+1))`
-/

namespace A383005.P1801605340694019833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A046100 (n + 1)).toNat

end

end A383005.P1801605340694019833

noncomputable section

/-- A383005: Exponent of the highest power of 2 dividing the n-th biquadratefree number.

Offset 1, canonical program `A383005.P1801605340694019833`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383005 (n : ℕ) : ℤ :=
  A383005.P1801605340694019833.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383005.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383029.P14010590280283821526

`A007814(A268335(n+1))`
-/

namespace A383029.P14010590280283821526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A268335 (n + 1)).toNat

end

end A383029.P14010590280283821526

noncomputable section

/-- A383029: Exponent of the highest power of 2 dividing the n-th exponentially odd number.

Offset 1, canonical program `A383029.P14010590280283821526`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383029 (n : ℕ) : ℤ :=
  A383029.P14010590280283821526.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383029.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383423.P11431245251035309516

`∩[A022342(n+1), A383427(n+1)]`
-/

namespace A383423.P11431245251035309516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383423.P11431245251035309516

noncomputable section

/-- A383423: Indices k such that A003849(k) = 0 and A383422(k) = 0.

Offset 1, canonical program `A383423.P11431245251035309516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4766 terms. -/
def A383423 (n : ℕ) : ℤ :=
  (A383423.P11431245251035309516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4766 terms. -/
def A383423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383424.P17133997064317184709

`∩[A003622(n+1), A383427(n+1)]`
-/

namespace A383424.P17133997064317184709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383424.P17133997064317184709

noncomputable section

/-- A383424: Indices k such that A003849(k) = 1 and A383422(k) = 1.

Offset 1, canonical program `A383424.P17133997064317184709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4377 terms. -/
def A383424 (n : ℕ) : ℤ :=
  (A383424.P17133997064317184709.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4377 terms. -/
def A383424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383793.P8012503440223215475

`A038502(n+1)*A256688(n+1)`
-/

namespace A383793.P8012503440223215475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1) * A256688 (n + 1)

end

end A383793.P8012503440223215475

noncomputable section

/-- A383793: Numerators of Dirichlet g.f.: Sum_{n>=1} a(n)/n^s = zeta(s-1)^(1/3).

Offset 1, canonical program `A383793.P8012503440223215475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383793 (n : ℕ) : ℤ :=
  A383793.P8012503440223215475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385350.P6185656812643599907

`filter[A007422(n+1), A035263(#)]`
-/

namespace A385350.P6185656812643599907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A385350.P6185656812643599907

noncomputable section

/-- A385350: Numbers j such that the product of odd proper divisors of j is j.

Offset 1, canonical program `A385350.P6185656812643599907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7685 terms. -/
def A385350 (n : ℕ) : ℤ :=
  A385350.P6185656812643599907.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7685 terms. -/
def A385350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386537.P3580917112878141729

`A007814(A138302(n+1))`
-/

namespace A386537.P3580917112878141729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A138302 (n + 1)).toNat

end

end A386537.P3580917112878141729

noncomputable section

/-- A386537: Exponent of the highest power of 2 dividing the n-th number whose prime factorization exponents are all powers of 2 (A138302).

Offset 1, canonical program `A386537.P3580917112878141729`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138302, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386537 (n : ℕ) : ℤ :=
  A386537.P3580917112878141729.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138302, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386537.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A388060.P10420952751908136420

`A084771(n)+2*A059231(n)*2*n`
-/

namespace A388060.P10420952751908136420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084771 n + 2 * A059231 n * (2 * n : ℤ)

end

end A388060.P10420952751908136420

noncomputable section

/-- A388060: a(n) = Sum_{k=0..n} 4^k * binomial(n,k) * binomial(n+1,k).

Offset 0, canonical program `A388060.P10420952751908136420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A388060 (n : ℕ) : ℤ :=
  A388060.P10420952751908136420.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A388060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389099.P6075006044423678117

`A002262(n)/A389101(n)`
-/

namespace A389099.P6075006044423678117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n : ℚ) / (A389101 n : ℚ)

end

end A389099.P6075006044423678117

noncomputable section

/-- A389099: Array read by ascending antidiagonals: A(n, k) = k / gcd(n^k, k).

Offset 0, canonical program `A389099.P6075006044423678117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389099 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389099.P6075006044423678117.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390788.P17759256906105032846

`lt[A210882(A210882(2*n+1)), A210882(2*n+1)]`
-/

namespace A390788.P17759256906105032846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (A210882 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A390788.P17759256906105032846

noncomputable section

/-- A390788: Numbers k such that 2*k - (greatest prime < 2*k) < (least prime > 2*k) - 2*k.

Offset 1, canonical program `A390788.P17759256906105032846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2118 terms. -/
def A390788 (n : ℕ) : ℤ :=
  (A390788.P17759256906105032846.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2118 terms. -/
def A390788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390789.P3572526343516217248

`A072568(n+1)/2`
-/

namespace A390789.P3572526343516217248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072568 (n + 1) : ℚ) / 2

end

end A390789.P3572526343516217248

noncomputable section

/-- A390789: Numbers k such that 2*k - (greatest prime < 2*k) = (least prime > 2*k) - 2*k.

Offset 1, canonical program `A390789.P3572526343516217248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390789 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390789.P3572526343516217248.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390807.P12060733116500477193

`(n+1+A212793(n+1))*A254926(n+1)/2`
-/

namespace A390807.P12060733116500477193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℤ) + A212793 (n + 1)) * A254926 (n + 1) : ℚ) / 2

end

end A390807.P12060733116500477193

noncomputable section

/-- A390807: The sum of the integers k from 1 to n such that gcd(n, k) is cubefree (A004709).

Offset 1, canonical program `A390807.P12060733116500477193`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212793, A254926, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390807 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390807.P12060733116500477193.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212793, A254926, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390807.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391211.P8292871902387921407

`A054541(A121543(n+2))`
-/

namespace A391211.P8292871902387921407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A121543 (n + 2)).toNat

end

end A391211.P8292871902387921407

noncomputable section

/-- A391211: Difference between A333242(n) and the next lower prime number.

Offset 2, canonical program `A391211.P8292871902387921407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8935 terms. -/
def A391211 (n : ℕ) : ℤ :=
  A391211.P8292871902387921407.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8935 terms. -/
def A391211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392632.P13925357405564602898

`eq[1, A392630(n+1)]+1`
-/

namespace A392632.P13925357405564602898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392630 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A392632.P13925357405564602898

noncomputable section

/-- A392632: Numbers k whose squarefree kernel is the only exponential divisor of k that is a number whose number of divisors is a power of 2.

Offset 1, canonical program `A392632.P13925357405564602898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8914 terms. -/
def A392632 (n : ℕ) : ℤ :=
  (A392632.P13925357405564602898.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8914 terms. -/
def A392632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393212.P8608727344683158324

`or(A005843(A007814(3*n+5)), A073575(3*n+5))`
-/

namespace A393212.P8608727344683158324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005843 (A007814 (3 * n + 5)).toNat) (A073575 (3 * n + 5))

end

end A393212.P8608727344683158324

noncomputable section

/-- A393212: Halting time for Wolfram's 2-state 2-symbol Turing machine 773 when started with n on the tape.

Offset 1, canonical program `A393212.P8608727344683158324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A393212 (n : ℕ) : ℤ :=
  A393212.P8608727344683158324.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A393212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394391.P1958648645545154792

`2*A349360(n+1)-(n+1)`
-/

namespace A394391.P1958648645545154792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A349360 (n + 1) - (n + 1 : ℤ)

end

end A394391.P1958648645545154792

noncomputable section

/-- A394391: a(n) = tau(n)^2 + (n - tau(n))^2.

Offset 1, canonical program `A394391.P1958648645545154792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394391 (n : ℕ) : ℤ :=
  A394391.P1958648645545154792.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395330.P14444694070182848771

`A183063(2*A003991(n+1))`
-/

namespace A395330.P14444694070182848771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * A003991 (n + 1)).toNat

end

end A395330.P14444694070182848771

noncomputable section

/-- A395330: Symmetric array read by antidiagonals: A(n,k) = tau(n*k), where tau = A000005.

Offset 1, canonical program `A395330.P14444694070182848771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9934 terms. -/
def A395330 (n : ℕ) : ℤ :=
  A395330.P14444694070182848771.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9934 terms. -/
def A395330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397623.P16201342378175094011

`A000040(A005652(n+1))`
-/

namespace A397623.P16201342378175094011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A005652 (n + 1)).toNat

end

end A397623.P16201342378175094011

noncomputable section

/-- A397623: a(n) = prime(A005652(n)).

Offset 1, canonical program `A397623.P16201342378175094011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A397623 (n : ℕ) : ℤ :=
  A397623.P16201342378175094011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A397623.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A284152.P5316867727396450920

`A284280(n+1)+A284281(n+1)`
-/

namespace A284152.P5316867727396450920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284280 (n + 1) + A284281 (n + 1)

end

end A284152.P5316867727396450920

noncomputable section

/-- A284152: a(n) = Sum_{d|n, d == 2 or 3 mod 5} d.

Offset 1, canonical program `A284152.P5316867727396450920`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284280, A284281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284152 (n : ℕ) : ℤ :=
  A284152.P5316867727396450920.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284280, A284281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284152.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284775.P8645433344841049155

`A189665(n+1)-A284818(n+1)`
-/

namespace A284775.P8645433344841049155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189665 (n + 1) - A284818 (n + 1)

end

end A284775.P8645433344841049155

noncomputable section

/-- A284775: Fixed point of the morphism 0 -> 01, 1 -> 0011.

Offset 1, canonical program `A284775.P8645433344841049155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284775 (n : ℕ) : ℤ :=
  A284775.P8645433344841049155.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284776.P12625188356120516945

`char[A284818(n+1)-1]+n+n`
-/

namespace A284776.P12625188356120516945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284818 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n + n

end

end A284776.P12625188356120516945

noncomputable section

/-- A284776: Positions of 0 in A284775; complement of A284777.

Offset 1, canonical program `A284776.P12625188356120516945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284776 (n : ℕ) : ℤ :=
  (A284776.P12625188356120516945.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284792.P14898968063971139874

`char[A284934(n+1)-1]`
-/

namespace A284792.P14898968063971139874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284934 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284792.P14898968063971139874

noncomputable section

/-- A284792: {1001->1}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A284792.P14898968063971139874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284792 (n : ℕ) : ℤ :=
  (A284792.P14898968063971139874.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284796.P6823867283287536618

`A189665(n+1)+A284818(n+1)-1`
-/

namespace A284796.P6823867283287536618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189665 (n + 1) + (A284818 (n + 1) - 1)

end

end A284796.P6823867283287536618

noncomputable section

/-- A284796: Positions of 1's in A284793.

Offset 1, canonical program `A284796.P6823867283287536618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284796 (n : ℕ) : ℤ :=
  A284796.P6823867283287536618.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285973.P13794099816013091422

`A285959(n+1)-A143331(n+1)`
-/

namespace A285973.P13794099816013091422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285959 (n + 1) - A143331 (n + 1)

end

end A285973.P13794099816013091422

noncomputable section

/-- A285973: Positions of 0 in A285972; complement of A285974.

Offset 1, canonical program `A285973.P13794099816013091422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285973 (n : ℕ) : ℤ :=
  A285973.P13794099816013091422.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286608.P6471949318429911751

`lt[A087207(n+1), n+1]+1`
-/

namespace A286608.P6471949318429911751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A286608.P6471949318429911751

noncomputable section

/-- A286608: Numbers k for which the binary representation of the primes that divide k (A087207) is less than k.

Offset 1, canonical program `A286608.P6471949318429911751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 652 terms. -/
def A286608 (n : ℕ) : ℤ :=
  (A286608.P6471949318429911751.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 652 terms. -/
def A286608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286683.P11327338289831238682

`eq[A007814(n+1), A318874(n+1)]+1`
-/

namespace A286683.P11327338289831238682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318874 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A286683.P11327338289831238682

noncomputable section

/-- A286683: Even numbers k such that the number of odd divisors of k is equal to the 2-adic valuation of k.

Offset 1, canonical program `A286683.P11327338289831238682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 506 terms. -/
def A286683 (n : ℕ) : ℤ :=
  (A286683.P11327338289831238682.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 506 terms. -/
def A286683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286802.P10299753471683796401

`A286922(n+1)+A286693(n+1)`
-/

namespace A286802.P10299753471683796401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286922 (n + 1) + A286693 (n + 1)

end

end A286802.P10299753471683796401

noncomputable section

/-- A286802: Positions of 0 in A286801; complement of A286803.

Offset 1, canonical program `A286802.P10299753471683796401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286802 (n : ℕ) : ℤ :=
  A286802.P10299753471683796401.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287075.P10517102401792539073

`A287073(A287074(n+1)-n)-2`
-/

namespace A287075.P10517102401792539073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287073 (A287074 (n + 1) - (n : ℤ)).toNat - 2

end

end A287075.P10517102401792539073

noncomputable section

/-- A287075: Positions of 2 in A287072.

Offset 1, canonical program `A287075.P10517102401792539073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7548 terms. -/
def A287075 (n : ℕ) : ℤ :=
  A287075.P10517102401792539073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7548 terms. -/
def A287075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287170.P3735047358035407124

`A069010(A087207(n+1))`
-/

namespace A287170.P3735047358035407124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A087207 (n + 1)).toNat

end

end A287170.P3735047358035407124

noncomputable section

/-- A287170: a(n) = number of runs of consecutive prime numbers among the prime divisors of n.

Offset 1, canonical program `A287170.P3735047358035407124`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287170 (n : ℕ) : ℤ :=
  A287170.P3735047358035407124.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A287638.P4499298965654757907

`p?[A287117(n+3)]`
-/

namespace A287638.P4499298965654757907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287117 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287638.P4499298965654757907

noncomputable section

/-- A287638: Odd primes with no other odd primes as prefixes in binary.

Offset 1, canonical program `A287638.P4499298965654757907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A287638 (n : ℕ) : ℤ :=
  A287638.P4499298965654757907.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A287638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288566.P93477700096519531

`∑[A087207(n+1)]`
-/

namespace A288566.P93477700096519531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288566.P93477700096519531

noncomputable section

/-- A288566: Partial sums of A087207.

Offset 1, canonical program `A288566.P93477700096519531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A288566 (n : ℕ) : ℤ :=
  A288566.P93477700096519531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A288566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289500.P6623169090579863016

`A038801(n+1)-A100637(A016789(n))`
-/

namespace A289500.P6623169090579863016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038801 (n + 1) - A100637 (A016789 n).toNat

end

end A289500.P6623169090579863016

noncomputable section

/-- A289500: Number of primes in the interval [9n, 10n].

Offset 1, canonical program `A289500.P6623169090579863016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289500 (n : ℕ) : ℤ :=
  A289500.P6623169090579863016.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290778.P11544281249416864993

`ceil(n/2)+A328652(A028310(n))-n`
-/

namespace A290778.P11544281249416864993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ + (A328652 (A028310 n).toNat - (n : ℤ))

end

end A290778.P11544281249416864993

noncomputable section

/-- A290778: Number of connected undirected unlabeled loopless multigraphs with 4 vertices and n edges.

Offset 0, canonical program `A290778.P11544281249416864993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290778 (n : ℕ) : ℤ :=
  A290778.P11544281249416864993.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292302.P15615501185427932939

`Δ[A057660(A028310(n))%A064987(n+1)]`
-/

namespace A292302.P15615501185427932939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057660 (A028310 n).toNat) (A064987 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292302.P15615501185427932939

noncomputable section

/-- A292302: Expansion of (1 - x)*Sum_{k>=1} k*phi(k)*x^k/(1 - x^k), where phi() is the Euler totient function (A000010).

Offset 1, canonical program `A292302.P15615501185427932939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A292302 (n : ℕ) : ℤ :=
  A292302.P15615501185427932939.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A292302.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A293447.P13625130516549796158

`A005187(A087207(n+1))+a(A003557(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A293447.P13625130516549796158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A005187 (A087207 (n + 1)).toNat + a (A003557 (n + 1) - 1).toNat

end

end A293447.P13625130516549796158

noncomputable section

/-- A293447: Fully additive with a(p^e) = e * A000225(PrimePi(p)), where PrimePi(n) = A000720(n) and A000225(n) = (2^n)-1.

Offset 1, canonical program `A293447.P13625130516549796158`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293447 (n : ℕ) : ℤ :=
  A293447.P13625130516549796158.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293447.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294235.P12226892777925913484

`∑[(A007431(n)+n)%2]`
-/

namespace A294235.P12226892777925913484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007431 n + (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294235.P12226892777925913484

noncomputable section

/-- A294235: Number of partitions of n into two parts such that the larger part is nonsquarefree.

Offset 1, canonical program `A294235.P12226892777925913484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294235 (n : ℕ) : ℤ :=
  A294235.P12226892777925913484.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297404.P1105051912658612473

`A087207(∏{e}[n+1, A000040(#)])`
-/

namespace A297404.P1105051912658612473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A297404.P1105051912658612473

noncomputable section

/-- A297404: A binary representation of the positive exponents that appear in the prime factorization of a number, shown in decimal.

Offset 1, canonical program `A297404.P1105051912658612473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297404 (n : ℕ) : ℤ :=
  A297404.P1105051912658612473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298867.P15695722077931917837

`A020934(n+1)+1+n`
-/

namespace A298867.P15695722077931917837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020934 (n + 1) + 1 + (n : ℤ)

end

end A298867.P15695722077931917837

noncomputable section

/-- A298867: Positions of numbers 4*p when all primes p and products 4*p are arranged in increasing order.

Offset 1, canonical program `A298867.P15695722077931917837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A298867 (n : ℕ) : ℤ :=
  A298867.P15695722077931917837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A298867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303385.P7477845777958172115

`A303384(n+1)-∑[A001057(n)]²`
-/

namespace A303385.P7477845777958172115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303384 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A303385.P7477845777958172115

noncomputable section

/-- A303385: Total area of all rectangles with dimensions s and t such that s | t, n = s + t and s < t.

Offset 1, canonical program `A303385.P7477845777958172115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303385 (n : ℕ) : ℤ :=
  A303385.P7477845777958172115.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305800.P15822938426651104625

`A066246(n+1)+2-A000007(n)`
-/

namespace A305800.P15822938426651104625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (n + 1) + (2 - A000007 n)

end

end A305800.P15822938426651104625

noncomputable section

/-- A305800: Filter sequence for a(prime) = constant sequences.

Offset 1, canonical program `A305800.P15822938426651104625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305800 (n : ℕ) : ℤ :=
  A305800.P15822938426651104625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306705.P258986654421283042

`A211776(n+1)*A007955(n+1)`
-/

namespace A306705.P258986654421283042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211776 (n + 1) * A007955 (n + 1)

end

end A306705.P258986654421283042

noncomputable section

/-- A306705: a(n) = Product_{d|n} d*tau(d), where tau(k) = the number of the divisors of k (A000005).

Offset 1, canonical program `A306705.P258986654421283042`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211776, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306705 (n : ℕ) : ℤ :=
  A306705.P258986654421283042.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211776, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306705.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307101.P8537828544159030044

`A211776(n+1)*A266265(n+1)`
-/

namespace A307101.P8537828544159030044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211776 (n + 1) * A266265 (n + 1)

end

end A307101.P8537828544159030044

noncomputable section

/-- A307101: a(n) = Product_{d|n} (tau(d)*pod(d)) where tau(k) = the number of divisors of k (A000005) and pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A307101.P8537828544159030044`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211776, A266265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307101 (n : ℕ) : ℤ :=
  A307101.P8537828544159030044.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211776, A266265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307101.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307508.P1138066095491844169

`A000040(A247514(n+1))`
-/

namespace A307508.P1138066095491844169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A247514 (n + 1)).toNat

end

end A307508.P1138066095491844169

noncomputable section

/-- A307508: Primes p for which the continued fraction expansion of sqrt(p) does not have a 1 in the second position.

Offset 1, canonical program `A307508.P1138066095491844169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5024 terms. -/
def A307508 (n : ℕ) : ℤ :=
  A307508.P1138066095491844169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5024 terms. -/
def A307508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307892.P2139601516006320098

`A324528(n+1)/(n+1)`
-/

namespace A307892.P2139601516006320098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324528 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A307892.P2139601516006320098

noncomputable section

/-- A307892: a(n) = lcm(tau(n), pod(n)) / n, where tau(k) = the number of divisors of k (A000005) and pod(n) = the product of divisors of k (A007955).

Offset 1, canonical program `A307892.P2139601516006320098`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A307892 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A307892.P2139601516006320098.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A307892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A308401.P1704796771430067553

`A005513(n+9)-A058187(n+3)`
-/

namespace A308401.P1704796771430067553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005513 (n + 9) - A058187 (n + 3)

end

end A308401.P1704796771430067553

noncomputable section

/-- A308401: Number of bracelets (turnover necklaces) of length n that have no reflection symmetry and consist of 6 white beads and n-6 black beads.

Offset 9, canonical program `A308401.P1704796771430067553`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005513, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308401 (n : ℕ) : ℤ :=
  A308401.P1704796771430067553.a (n - 9)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005513, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308401.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A309176.P1940731175005839416

`A002411(n+1)-A064602(n+1)`
-/

namespace A309176.P1940731175005839416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (n + 1) - A064602 (n + 1)

end

end A309176.P1940731175005839416

noncomputable section

/-- A309176: a(n) = n^2 * (n + 1)/2 - Sum_{k=1..n} sigma_2(k).

Offset 1, canonical program `A309176.P1940731175005839416`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309176 (n : ℕ) : ℤ :=
  A309176.P1940731175005839416.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309176.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A309323.P12128213157849117651

`∑{d}[n+1, #*A117108((n+1)/#)]`
-/

namespace A309323.P12128213157849117651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A117108 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309323.P12128213157849117651

noncomputable section

/-- A309323: Expansion of Sum_{k>=1} phi(k) * x^k/(1 - x^k)^4, where phi = Euler totient function (A000010).

Offset 1, canonical program `A309323.P12128213157849117651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309323 (n : ℕ) : ℤ :=
  A309323.P12128213157849117651.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309324.P3117719213953618928

`gcd(2, n+1)*A035109(n)`
-/

namespace A309324.P3117719213953618928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A035109 n

end

end A309324.P3117719213953618928

noncomputable section

/-- A309324: Expansion of Sum_{k>=1} psi(k) * x^k/(1 + x^k), where psi = Dedekind psi function (A001615).

Offset 1, canonical program `A309324.P3117719213953618928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309324 (n : ℕ) : ℤ :=
  A309324.P3117719213953618928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310420.P17604742702045992643

`abs(A008592(n)-A315305(n))`
-/

namespace A310420.P17604742702045992643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315305 n|

end

end A310420.P17604742702045992643

noncomputable section

/-- A310420: Coordination sequence Gal.6.324.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310420.P17604742702045992643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A310420 (n : ℕ) : ℤ :=
  A310420.P17604742702045992643.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A310420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310455.P786279696323869961

`(A310496(n)+A310413(n))/2`
-/

namespace A310455.P786279696323869961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310496 n + A310413 n : ℚ) / 2

end

end A310455.P786279696323869961

noncomputable section

/-- A310455: Coordination sequence Gal.6.348.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310455.P786279696323869961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A310455 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A310455.P786279696323869961.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A310455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310521.P11719741427687549128

`abs(A008592(n)-A315185(n))`
-/

namespace A310521.P11719741427687549128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315185 n|

end

end A310521.P11719741427687549128

noncomputable section

/-- A310521: Coordination sequence Gal.5.133.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310521.P11719741427687549128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2454 terms. -/
def A310521 (n : ℕ) : ℤ :=
  A310521.P11719741427687549128.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2454 terms. -/
def A310521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310531.P139863264852785367

`A313293(n)+A004396(A002264(n+1))`
-/

namespace A310531.P139863264852785367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313293 n + A004396 (A002264 (n + 1)).toNat

end

end A310531.P139863264852785367

noncomputable section

/-- A310531: Coordination sequence Gal.5.135.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310531.P139863264852785367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2248 terms. -/
def A310531 (n : ℕ) : ℤ :=
  A310531.P139863264852785367.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2248 terms. -/
def A310531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311512.P15083007676544046786

`A004525(A004396(n))+A312184(n)-A004396(n)`
-/

namespace A311512.P15083007676544046786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A312184 n - A004396 n)

end

end A311512.P15083007676544046786

noncomputable section

/-- A311512: Coordination sequence Gal.6.130.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311512.P15083007676544046786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A311512 (n : ℕ) : ℤ :=
  A311512.P15083007676544046786.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A311512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311861.P8116900546318081513

`A047588(n+1)+A311687(n)-n`
-/

namespace A311861.P8116900546318081513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (n + 1) + (A311687 n - (n : ℤ))

end

end A311861.P8116900546318081513

noncomputable section

/-- A311861: Coordination sequence Gal.6.130.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311861.P8116900546318081513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A311861 (n : ℕ) : ℤ :=
  A311861.P8116900546318081513.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A311861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312101.P13095207374321224915

`A004525(A004396(n))+A312184(n)-A004525(n)`
-/

namespace A312101.P13095207374321224915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A312184 n - A004525 n)

end

end A312101.P13095207374321224915

noncomputable section

/-- A312101: Coordination sequence Gal.6.150.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312101.P13095207374321224915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A312101 (n : ℕ) : ℤ :=
  A312101.P13095207374321224915.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A312101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312507.P15411761902841347457

`2*A313876(n)-A008458(n)`
-/

namespace A312507.P15411761902841347457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313876 n - A008458 n

end

end A312507.P15411761902841347457

noncomputable section

/-- A312507: Coordination sequence Gal.6.245.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312507.P15411761902841347457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A312507 (n : ℕ) : ℤ :=
  A312507.P15411761902841347457.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A312507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312969.P1122136448779470542

`A004525(n)+A312926(n)-A004396(A004525(n))`
-/

namespace A312969.P1122136448779470542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A312926 n - A004396 (A004525 n).toNat)

end

end A312969.P1122136448779470542

noncomputable section

/-- A312969: Coordination sequence Gal.6.254.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312969.P1122136448779470542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A312969 (n : ℕ) : ℤ :=
  A312969.P1122136448779470542.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A312969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313519.P11254400388031239526

`2*A313704(n)-A313834(n)`
-/

namespace A313519.P11254400388031239526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313704 n - A313834 n

end

end A313519.P11254400388031239526

noncomputable section

/-- A313519: Coordination sequence Gal.6.196.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313519.P11254400388031239526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A313519 (n : ℕ) : ℤ :=
  A313519.P11254400388031239526.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A313519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313543.P17775607979476667023

`A004396(A314038(n)+2*n)`
-/

namespace A313543.P17775607979476667023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314038 n + (2 * n : ℤ)).toNat

end

end A313543.P17775607979476667023

noncomputable section

/-- A313543: Coordination sequence Gal.6.196.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313543.P17775607979476667023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. -/
def A313543 (n : ℕ) : ℤ :=
  A313543.P17775607979476667023.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. -/
def A313543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313803.P13524405696789602585

`A314737(n)+n-A004396(A004525(n))`
-/

namespace A313803.P13524405696789602585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314737 n + ((n : ℤ) - A004396 (A004525 n).toNat)

end

end A313803.P13524405696789602585

noncomputable section

/-- A313803: Coordination sequence Gal.6.210.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313803.P13524405696789602585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A313803 (n : ℕ) : ℤ :=
  A313803.P13524405696789602585.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A313803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313825.P10683649782616596619

`2*A313722(n)-A313615(n)`
-/

namespace A313825.P10683649782616596619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313722 n - A313615 n

end

end A313825.P10683649782616596619

noncomputable section

/-- A313825: Coordination sequence Gal.6.322.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313825.P10683649782616596619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A313825 (n : ℕ) : ℤ :=
  A313825.P10683649782616596619.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A313825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314127.P7201920616213390850

`2*n+A004396(A310456(n))`
-/

namespace A314127.P7201920616213390850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A310456 n).toNat

end

end A314127.P7201920616213390850

noncomputable section

/-- A314127: Coordination sequence Gal.6.326.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314127.P7201920616213390850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. -/
def A314127 (n : ℕ) : ℤ :=
  A314127.P7201920616213390850.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. -/
def A314127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314157.P13095074004396682400

`A310456(n)+A004525(A008458(n)-A310456(n))`
-/

namespace A314157.P13095074004396682400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310456 n + A004525 (A008458 n - A310456 n).toNat

end

end A314157.P13095074004396682400

noncomputable section

/-- A314157: Coordination sequence Gal.6.623.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314157.P13095074004396682400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A314157 (n : ℕ) : ℤ :=
  A314157.P13095074004396682400.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A314157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314428.P9611413599869563837

`A315214(n)-A004396(A006369(n))`
-/

namespace A314428.P9611413599869563837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315214 n - A004396 (A006369 n).toNat

end

end A314428.P9611413599869563837

noncomputable section

/-- A314428: Coordination sequence Gal.6.58.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314428.P9611413599869563837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. -/
def A314428 (n : ℕ) : ℤ :=
  A314428.P9611413599869563837.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. -/
def A314428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314742.P12640656443291314387

`A311332(n)+A004525(n)`
-/

namespace A314742.P12640656443291314387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311332 n + A004525 n

end

end A314742.P12640656443291314387

noncomputable section

/-- A314742: Coordination sequence Gal.6.262.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314742.P12640656443291314387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. -/
def A314742 (n : ℕ) : ℤ :=
  A314742.P12640656443291314387.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. -/
def A314742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315186.P13057520070277243894

`2*A314684(n)-A008574(n)`
-/

namespace A315186.P13057520070277243894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314684 n - A008574 n

end

end A315186.P13057520070277243894

noncomputable section

/-- A315186: Coordination sequence Gal.6.263.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315186.P13057520070277243894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2401 terms. -/
def A315186 (n : ℕ) : ℤ :=
  A315186.P13057520070277243894.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2401 terms. -/
def A315186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315758.P11537770092758335120

`abs(A008592(n)-A311332(n))`
-/

namespace A315758.P11537770092758335120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311332 n|

end

end A315758.P11537770092758335120

noncomputable section

/-- A315758: Coordination sequence Gal.6.210.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315758.P11537770092758335120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2251 terms. -/
def A315758 (n : ℕ) : ℤ :=
  A315758.P11537770092758335120.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2251 terms. -/
def A315758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318742.P13794595884572258610

`A006218(n+1)-3*A024916(n+1)+3*A064602(n+1)`
-/

namespace A318742.P13794595884572258610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - 3 * A024916 (n + 1) + 3 * A064602 (n + 1)

end

end A318742.P13794595884572258610

noncomputable section

/-- A318742: a(n) = Sum_{k=1..n} floor(n/k)^3.

Offset 1, canonical program `A318742.P13794595884572258610`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318742 (n : ℕ) : ℤ :=
  A318742.P13794595884572258610.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318742.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318744.P5868279293464878838

`A006218(n+1)-5*A024916(n+1)+10*A064602(n+1)-10*A064603(n+1)+5*A064604(n+1)`
-/

namespace A318744.P5868279293464878838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - 5 * A024916 (n + 1) + 10 * A064602 (n + 1) - 10 * A064603 (n + 1) + 5 * A064604 (n + 1)

end

end A318744.P5868279293464878838

noncomputable section

/-- A318744: a(n) = Sum_{k=1..n} floor(n/k)^5.

Offset 1, canonical program `A318744.P5868279293464878838`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, A064603, A064604, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318744 (n : ℕ) : ℤ :=
  A318744.P5868279293464878838.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, A064603, A064604, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318744.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319225.P16688211917328614942

`A028310(abs(A330415(n+1)))`
-/

namespace A319225.P16688211917328614942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 |A330415 (n + 1)|.toNat

end

end A319225.P16688211917328614942

noncomputable section

/-- A319225: Number of acyclic spanning subgraphs of a cycle graph, where the sizes of the connected components are given by the prime indices of n.

Offset 1, canonical program `A319225.P16688211917328614942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319225 (n : ℕ) : ℤ :=
  A319225.P16688211917328614942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321516.P138228601672142670

`A070824(n+1)-A087624(n+1)`
-/

namespace A321516.P138228601672142670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1) - A087624 (n + 1)

end

end A321516.P138228601672142670

noncomputable section

/-- A321516: Number of composite divisors of n that are < n.

Offset 1, canonical program `A321516.P138228601672142670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321516 (n : ℕ) : ℤ :=
  A321516.P138228601672142670.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322430.P13676474653024602128

`eq[0, A005882(n)]`
-/

namespace A322430.P13676474653024602128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005882 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322430.P13676474653024602128

noncomputable section

/-- A322430: Numbers k such that the coefficient of x^k in the expansion of Product_{j>=1} (1-x^j)^8 is zero.

Offset 1, canonical program `A322430.P13676474653024602128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5866 terms. -/
def A322430 (n : ℕ) : ℤ :=
  (A322430.P13676474653024602128.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5866 terms. -/
def A322430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324506.P94793196211163730

`lcm(A211776(n+1), A324528(n+1))/A211776(n+1)`
-/

namespace A324506.P94793196211163730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A211776 (n + 1)) (A324528 (n + 1)) : ℚ) / (A211776 (n + 1) : ℚ)

end

end A324506.P94793196211163730

noncomputable section

/-- A324506: a(n) = numerator of Product_{d|n} (d/tau(d)) where tau(k) = the number of divisors of k (A000005).

Offset 1, canonical program `A324506.P94793196211163730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3779 terms. -/
def A324506 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A324506.P94793196211163730.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3779 terms. -/
def A324506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324987.P8516522238142221185

`A211776(n+1)*A206032(n+1)`
-/

namespace A324987.P8516522238142221185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211776 (n + 1) * A206032 (n + 1)

end

end A324987.P8516522238142221185

noncomputable section

/-- A324987: a(n) = Product_{d|n} (tau(d)*sigma(d)) where tau(k) = the number of divisors of k (A000005) and sigma(k) = the sum of the divisors of k (A000203).

Offset 1, canonical program `A324987.P8516522238142221185`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206032, A211776, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324987 (n : ℕ) : ℤ :=
  A324987.P8516522238142221185.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206032, A211776, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324987.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325937.P7515168000438611485

`A048272(n+1)+(-1)^(n+1)`
-/

namespace A325937.P7515168000438611485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1) + (-1) ^ (n + 1)

end

end A325937.P7515168000438611485

noncomputable section

/-- A325937: Expansion of Sum_{k>=1} (-1)^(k + 1) * x^(2*k) / (1 - x^k).

Offset 1, canonical program `A325937.P7515168000438611485`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325937 (n : ℕ) : ℤ :=
  A325937.P7515168000438611485.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325937.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A325939.P14233231963195728863

`1-A048272(n+1)`
-/

namespace A325939.P14233231963195728863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A048272 (n + 1)

end

end A325939.P14233231963195728863

noncomputable section

/-- A325939: Expansion of Sum_{k>=1} x^(2*k) / (1 + x^k).

Offset 1, canonical program `A325939.P14233231963195728863`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325939 (n : ℕ) : ℤ :=
  A325939.P14233231963195728863.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325939.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A325940.P5826704247194185154

`A048272(n+1)-A002129(n+1)`
-/

namespace A325940.P5826704247194185154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1) - A002129 (n + 1)

end

end A325940.P5826704247194185154

noncomputable section

/-- A325940: Expansion of Sum_{k>=1} x^(2*k) / (1 + x^k)^2.

Offset 1, canonical program `A325940.P5826704247194185154`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325940 (n : ℕ) : ℤ :=
  A325940.P5826704247194185154.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325940.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A325941.P481027245925735307

`A000593(n+1)-(n+1)*A048272(n+1)`
-/

namespace A325941.P481027245925735307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - (n + 1 : ℤ) * A048272 (n + 1)

end

end A325941.P481027245925735307

noncomputable section

/-- A325941: Expansion of Sum_{k>=1} k * x^(2*k) / (1 + x^k)^2.

Offset 1, canonical program `A325941.P481027245925735307`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325941 (n : ℕ) : ℤ :=
  A325941.P481027245925735307.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325941.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326048.P11105980823969462034

`gcd(A326049(n+1), A326050(n+1))`
-/

namespace A326048.P11105980823969462034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A326049 (n + 1)) (A326050 (n + 1))

end

end A326048.P11105980823969462034

noncomputable section

/-- A326048: a(n) = gcd(n-A050449(n), A082052(n)-n), where A050449 and A082052 give the sum of divisors of the form 4k+1, and not of that form, respectively.

Offset 1, canonical program `A326048.P11105980823969462034`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326049, A326050, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326048 (n : ℕ) : ℤ :=
  (A326048.P11105980823969462034.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326049, A326050, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327971.P15193960377859545139

`A280508(A110240(n))`
-/

namespace A327971.P15193960377859545139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280508 (A110240 n).toNat

end

end A327971.P15193960377859545139

noncomputable section

/-- A327971: Bitwise XOR of trajectories of rule 30 and its mirror image, rule 86, when both are started from a lone 1 cell: a(n) = A110240(n) XOR A265281(n).

Offset 0, canonical program `A327971.P15193960377859545139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, A280508, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327971 (n : ℕ) : ℤ :=
  A327971.P15193960377859545139.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, A280508, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327971.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328271.P2516295972375005117

`∑{d}[n+1, A057660(#)*A206369((n+1)/#)]`
-/

namespace A328271.P2516295972375005117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057660 d * A206369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328271.P2516295972375005117

noncomputable section

/-- A328271: Expansion of Sum_{k>=1} x^(k^2) * (1 + x^(k^2)) / (1 - x^(k^2))^3.

Offset 1, canonical program `A328271.P2516295972375005117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328271 (n : ℕ) : ℤ :=
  A328271.P2516295972375005117.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328502.P1197756649921844482

`∑{d}[n+1, A029935(#)*A351654((n+1)/#)]`
-/

namespace A328502.P1197756649921844482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A351654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328502.P1197756649921844482

noncomputable section

/-- A328502: Dirichlet g.f.: zeta(s-1) / (zeta(s) * zeta(s-2)).

Offset 1, canonical program `A328502.P1197756649921844482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328502 (n : ℕ) : ℤ :=
  A328502.P1197756649921844482.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329760.P7902454852561261286

`∩[A038604(n+1), A038615(n+1)]`
-/

namespace A329760.P7902454852561261286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329760.P7902454852561261286

noncomputable section

/-- A329760: Primes without {2, 7} as digits.

Offset 1, canonical program `A329760.P7902454852561261286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9910 terms. -/
def A329760 (n : ℕ) : ℤ :=
  (A329760.P7902454852561261286.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9910 terms. -/
def A329760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332086.P14336572187038747837

`A000720(A014688(n+1))-(n+1)`
-/

namespace A332086.P14336572187038747837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A014688 (n + 1)).toNat - (n + 1 : ℤ)

end

end A332086.P14336572187038747837

noncomputable section

/-- A332086: a(n) = pi(prime(n) + n) - n, where pi is the prime counting function.

Offset 1, canonical program `A332086.P14336572187038747837`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014688, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332086 (n : ℕ) : ℤ :=
  A332086.P14336572187038747837.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014688, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332086.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333569.P14197184389412241289

`∑{d}[n+1, A326415(#)*A344221((n+1)/#)]`
-/

namespace A333569.P14197184389412241289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326415 d * A344221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333569.P14197184389412241289

noncomputable section

/-- A333569: a(n) = Sum_{d|n} (-1)^(bigomega(d) - omega(d)) * phi(n/d).

Offset 1, canonical program `A333569.P14197184389412241289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333569 (n : ℕ) : ℤ :=
  A333569.P14197184389412241289.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333695.P11755395087226046441

`lcm(n+1, A057660(n+1))/(n+1)`
-/

namespace A333695.P11755395087226046441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A057660 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A333695.P11755395087226046441

noncomputable section

/-- A333695: Numerators of coefficients in expansion of Sum_{k>=1} phi(k) * log(1/(1 - x^k)).

Offset 1, canonical program `A333695.P11755395087226046441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333695 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A333695.P11755395087226046441.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333696.P5461163465730719669

`(n+1)/gcd(n+1, A057660(n+1))`
-/

namespace A333696.P5461163465730719669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A057660 (n + 1)) : ℚ)

end

end A333696.P5461163465730719669

noncomputable section

/-- A333696: Denominators of coefficients in expansion of Sum_{k>=1} phi(k) * log(1/(1 - x^k)).

Offset 1, canonical program `A333696.P5461163465730719669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333696 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A333696.P5461163465730719669.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334470.P14237330415455119872

`A253139(n+1)^A000005(n+1)/A211776(n+1)`
-/

namespace A334470.P14237330415455119872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253139 (n + 1) : ℚ) ^ (A000005 (n + 1) : ℤ) / (A211776 (n + 1) : ℚ)

end

end A334470.P14237330415455119872

noncomputable section

/-- A334470: a(n) = Product_{d|n} (A253139(n) / tau(d)) where A253139(n) = lcm_{d|n} tau(d).

Offset 1, canonical program `A334470.P14237330415455119872`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211776, A253139, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334470 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A334470.P14237330415455119872.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211776, A253139, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334470.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A335397.P14891039673154172877

`∩[A335328(n+1)-1, A335328(n+1)]`
-/

namespace A335397.P14891039673154172877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335328 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335397.P14891039673154172877

noncomputable section

/-- A335397: Starts of runs of 3 consecutive numbers that have an equal number of unitary and nonunitary divisors (A048109).

Offset 1, canonical program `A335397.P14891039673154172877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A335397 (n : ℕ) : ℤ :=
  (A335397.P14891039673154172877.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A335397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338713.P15967198908333661238

`A230980(n)^A024008(A072670(n))`
-/

namespace A338713.P15967198908333661238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230980 n : ℚ) ^ (A024008 (A072670 n).toNat : ℤ)

end

end A338713.P15967198908333661238

noncomputable section

/-- A338713: Number of numbers of the form i*n with 1 <= i <= n and tau(i*n) = 4.

Offset 1, canonical program `A338713.P15967198908333661238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338713 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A338713.P15967198908333661238.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339746.P14149983824418019061

`eq[1, A372573(n+1)]+1`
-/

namespace A339746.P14149983824418019061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A339746.P14149983824418019061

noncomputable section

/-- A339746: Positive integers of the form 2^i*3^j*k, gcd(k,6)=1, and i == j (mod 3).

Offset 1, canonical program `A339746.P14149983824418019061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339746 (n : ℕ) : ℤ :=
  (A339746.P14149983824418019061.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342165.P16521807271284690319

`A049084(n+1)+a(A066246(n+1))` with `a(0)=1`
-/

namespace A342165.P16521807271284690319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A049084 (n + 1) + a (A066246 (n + 1)).toNat

end

end A342165.P16521807271284690319

noncomputable section

/-- A342165: A fractal-like sequence: erase the terms that have a prime index, the non-erased terms rebuild the original sequence.

Offset 1, canonical program `A342165.P16521807271284690319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342165 (n : ℕ) : ℤ :=
  A342165.P16521807271284690319.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343519.P6978686432379773821

`∑{d}[n+1, A007431(#)*A101289((n+1)/#)]`
-/

namespace A343519.P6978686432379773821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A101289 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343519.P6978686432379773821

noncomputable section

/-- A343519: a(n) = Sum_{1 <= x_1 <= x_2 <= x_3 <= x_4 <= x_5 <= n} gcd(x_1, x_2, x_3 , x_4, x_5, n).

Offset 1, canonical program `A343519.P6978686432379773821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343519 (n : ℕ) : ℤ :=
  A343519.P6978686432379773821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345298.P9232387955265906661

`2*A087207(n+1)`
-/

namespace A345298.P9232387955265906661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087207 (n + 1)

end

end A345298.P9232387955265906661

noncomputable section

/-- A345298: a(n) = Sum_{p|n, p prime} tau(p #).

Offset 1, canonical program `A345298.P9232387955265906661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1181 terms. -/
def A345298 (n : ℕ) : ℤ :=
  A345298.P9232387955265906661.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1181 terms. -/
def A345298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346063.P3928103737815940541

`A000720(A039634(A000040(n+1)²-1))`
-/

namespace A346063.P3928103737815940541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A039634 (A000040 (n + 1) ^ 2 - 1).toNat).toNat

end

end A346063.P3928103737815940541

noncomputable section

/-- A346063: a(n) = primepi(A039634(prime(n)^2-1)).

Offset 1, canonical program `A346063.P3928103737815940541`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039634, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346063 (n : ℕ) : ℤ :=
  A346063.P3928103737815940541.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039634, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346063.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348510.P9117605113874141124

`A099377(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348510.P9117605113874141124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099377 (n + 1) - (n + 1 : ℤ)

end

end A348510.P9117605113874141124

noncomputable section

/-- A348510: a(n) = A099377(n) - n, where A099377(n) is the numerator of the harmonic mean of the divisors of n.

Offset 1, canonical program `A348510.P9117605113874141124`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099377, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348510 (n : ℕ) : ℤ :=
  A348510.P9117605113874141124.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099377, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348510.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348968.P179748498785656082

`gcd(n+1, A099377(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348968.P179748498785656082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A099377 (n + 1))

end

end A348968.P179748498785656082

noncomputable section

/-- A348968: a(n) = gcd(n, A099377(n)), where A099377(n) is the numerator of the harmonic mean of the divisors of n.

Offset 1, canonical program `A348968.P179748498785656082`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099377, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348968 (n : ℕ) : ℤ :=
  (A348968.P179748498785656082.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099377, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348968.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349693.P1618582373112485882

`1/3*A115364(n+1)*A372784(n+1)`
-/

namespace A349693.P1618582373112485882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (A115364 (n + 1) : ℚ) * (A372784 (n + 1) : ℚ)

end

end A349693.P1618582373112485882

noncomputable section

/-- A349693: Dirichlet convolution of the ruler function (A001511) with itself.

Offset 1, canonical program `A349693.P1618582373112485882`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349693 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349693.P1618582373112485882.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349693.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350123.P1025017910805116333

`2*A143128(n+1)-A064602(n+1)`
-/

namespace A350123.P1025017910805116333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143128 (n + 1) - A064602 (n + 1)

end

end A350123.P1025017910805116333

noncomputable section

/-- A350123: a(n) = Sum_{k=1..n} k^2 * floor(n/k)^2.

Offset 1, canonical program `A350123.P1025017910805116333`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, A143128, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350123 (n : ℕ) : ℤ :=
  A350123.P1025017910805116333.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, A143128, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350123.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350124.P3463729421972566049

`A064602(n+1)-3*A143128(n+1)+3*A319085(n+1)`
-/

namespace A350124.P3463729421972566049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064602 (n + 1) - 3 * A143128 (n + 1) + 3 * A319085 (n + 1)

end

end A350124.P3463729421972566049

noncomputable section

/-- A350124: a(n) = Sum_{k=1..n} k^2 * floor(n/k)^3.

Offset 1, canonical program `A350124.P3463729421972566049`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, A143128, A319085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350124 (n : ℕ) : ℤ :=
  A350124.P3463729421972566049.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, A143128, A319085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350124.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350534.P1685177641505256515

`A038548(n+1)+A060872(n+1)-A060866(n+1)`
-/

namespace A350534.P1685177641505256515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) + (A060872 (n + 1) - A060866 (n + 1))

end

end A350534.P1685177641505256515

noncomputable section

/-- A350534: Sum of the largest parts of the partitions of n into 3 parts whose largest part is equal to the product of the other two.

Offset 0, canonical program `A350534.P1685177641505256515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350534 (n : ℕ) : ℤ :=
  A350534.P1685177641505256515.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351398.P4856848397706998263

`filter[A140826(n+1), A245656(#)]`
-/

namespace A351398.P4856848397706998263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A351398.P4856848397706998263

noncomputable section

/-- A351398: Numbers k >= 3 such that the arithmetic mean of the divisors of k AND the arithmetic mean of the nondivisors of k are integers.

Offset 1, canonical program `A351398.P4856848397706998263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1901 terms. -/
def A351398 (n : ℕ) : ℤ :=
  A351398.P4856848397706998263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1901 terms. -/
def A351398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351560.P4314084197358316879

`A087207(A000203(n+1))`
-/

namespace A351560.P4314084197358316879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A000203 (n + 1)).toNat

end

end A351560.P4314084197358316879

noncomputable section

/-- A351560: a(n) is a binary representation of the primes that divide sigma(n) [the sum of divisors of n function], shown in decimal.

Offset 1, canonical program `A351560.P4314084197358316879`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351560 (n : ℕ) : ℤ :=
  A351560.P4314084197358316879.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351560.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353352.P1673129124953599033

`∑{d}[n+1, A353350(#)]`
-/

namespace A353352.P1673129124953599033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353350 d

end

end A353352.P1673129124953599033

noncomputable section

/-- A353352: Number of divisors d of n for which A048675(d) is a multiple of 3.

Offset 1, canonical program `A353352.P1673129124953599033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353352 (n : ℕ) : ℤ :=
  A353352.P1673129124953599033.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353380.P1519682102492887619

`1-abs(∑{d}[n+1, A332823(#)])`
-/

namespace A353380.P1519682102492887619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |∑ d ∈ Nat.divisors (f1 n), A332823 d|

end

end A353380.P1519682102492887619

noncomputable section

/-- A353380: a(n) = 1 if A353354(n) [= Sum_{d|n} A332823(d)] is zero, otherwise 0.

Offset 1, canonical program `A353380.P1519682102492887619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353380 (n : ℕ) : ℤ :=
  A353380.P1519682102492887619.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353445.P139513798113643550

`2-3*A332823(n+1)²`
-/

namespace A353445.P139513798113643550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - 3 * A332823 (n + 1) ^ 2

end

end A353445.P139513798113643550

noncomputable section

/-- A353445: Let f be the completely multiplicative function from the positive integers to the cube roots of unity defined by f(prime(m)) = w^(2^(m-1)), where w is the cube root with positive imaginary part. a(n) is twice the real part of f(n).

Offset 1, canonical program `A353445.P139513798113643550`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332823, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353445 (n : ℕ) : ℤ :=
  A353445.P139513798113643550.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332823, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353445.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355947.P8187086082936947056

`A362625(n+1)+A339370(n+1)`
-/

namespace A355947.P8187086082936947056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362625 (n + 1) + A339370 (n + 1)

end

end A355947.P8187086082936947056

noncomputable section

/-- A355947: a(n) = Sum_{k=1..n} (n+1-k)*floor(n/k).

Offset 0, canonical program `A355947.P8187086082936947056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355947 (n : ℕ) : ℤ :=
  A355947.P8187086082936947056.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355947.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A359830.P7538047403356094708

`eq[0, A353350(n+1)]+1`
-/

namespace A359830.P7538047403356094708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353350 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359830.P7538047403356094708

noncomputable section

/-- A359830: Numbers k such that A048675(k) is not a multiple of 3.

Offset 1, canonical program `A359830.P7538047403356094708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359830 (n : ℕ) : ℤ :=
  (A359830.P7538047403356094708.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360280.P7719168232723027333

`A008846(n+1)²`
-/

namespace A360280.P7719168232723027333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1) ^ 2

end

end A360280.P7719168232723027333

noncomputable section

/-- A360280: Squares that are the hypotenuse of a primitive Pythagorean triangle.

Offset 1, canonical program `A360280.P7719168232723027333`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360280 (n : ℕ) : ℤ :=
  A360280.P7719168232723027333.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360280.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A361121.P16839421460347675392

`A053542(n+1)%2`
-/

namespace A361121.P16839421460347675392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053542 (n + 1)) 2

end

end A361121.P16839421460347675392

noncomputable section

/-- A361121: 1 if n-th composite number A002808(n) is even, otherwise 0.

Offset 1, canonical program `A361121.P16839421460347675392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361121 (n : ℕ) : ℤ :=
  A361121.P16839421460347675392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362148.P4847235968772766025

`∩[A046099(n+1), A362147(n+1)]`
-/

namespace A362148.P4847235968772766025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362148.P4847235968772766025

noncomputable section

/-- A362148: Numbers that are neither cubefree nor cubefull.

Offset 1, canonical program `A362148.P4847235968772766025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1639 terms. -/
def A362148 (n : ℕ) : ℤ :=
  (A362148.P4847235968772766025.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1639 terms. -/
def A362148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363553.P1066074787311457405

`A011582(A369306(n+1))`
-/

namespace A363553.P1066074787311457405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011582 (A369306 (n + 1)).toNat

end

end A363553.P1066074787311457405

noncomputable section

/-- A363553: Möbius function of rank 5: a(n) = lambda(n) = A008836(n) if n is 5-free and 0 otherwise.

Offset 1, canonical program `A363553.P1066074787311457405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363553 (n : ℕ) : ℤ :=
  A363553.P1066074787311457405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363597.P3397001613817327848

`comp[A120944(n+1)-1]+1`
-/

namespace A363597.P3397001613817327848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A363597.P3397001613817327848

noncomputable section

/-- A363597: Union of prime powers and numbers that are not squarefree.

Offset 1, canonical program `A363597.P3397001613817327848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363597 (n : ℕ) : ℤ :=
  (A363597.P3397001613817327848.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363615.P15240525384775454564

`(A321543(n+1)-3*A002129(n+1)+2*A048272(n+1))/2`
-/

namespace A363615.P15240525384775454564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321543 (n + 1) - 3 * A002129 (n + 1) + 2 * A048272 (n + 1) : ℚ) / 2

end

end A363615.P15240525384775454564

noncomputable section

/-- A363615: Expansion of Sum_{k>0} x^(3*k)/(1+x^k)^3.

Offset 1, canonical program `A363615.P15240525384775454564`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321543, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363615 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363615.P15240525384775454564.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321543, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363615.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363629.P1618946847333743156

`-(A002129(n+1)+A048272(n+1))`
-/

namespace A363629.P1618946847333743156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A002129 (n + 1) + A048272 (n + 1))

end

end A363629.P1618946847333743156

noncomputable section

/-- A363629: Expansion of Sum_{k>0} (1/(1+x^k)^2 - 1).

Offset 1, canonical program `A363629.P1618946847333743156`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363629 (n : ℕ) : ℤ :=
  A363629.P1618946847333743156.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363629.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364343.P7180893498198076980

`(n+1)/2*(A002129(n+1)+A048272(n+1))`
-/

namespace A364343.P7180893498198076980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A002129 (n + 1) + A048272 (n + 1) : ℚ)

end

end A364343.P7180893498198076980

noncomputable section

/-- A364343: Expansion of Sum_{k>0} k * x^k/(1 + x^k)^3.

Offset 1, canonical program `A364343.P7180893498198076980`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364343 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364343.P7180893498198076980.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364343.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364351.P8907097505146139643

`(n+1)/2*(A000593(n+1)+(n+1)*A048272(n+1))`
-/

namespace A364351.P8907097505146139643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A000593 (n + 1) + (n + 1 : ℤ) * A048272 (n + 1) : ℚ)

end

end A364351.P8907097505146139643

noncomputable section

/-- A364351: Expansion of Sum_{k>0} k^2 * x^k/(1 + x^k)^3.

Offset 1, canonical program `A364351.P8907097505146139643`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364351 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364351.P8907097505146139643.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364351.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364970.P269985968203337812

`(A064602(n+1)+A024916(n+1))/2`
-/

namespace A364970.P269985968203337812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064602 (n + 1) + A024916 (n + 1) : ℚ) / 2

end

end A364970.P269985968203337812

noncomputable section

/-- A364970: a(n) = Sum_{k=1..n} binomial(floor(n/k)+2,3).

Offset 1, canonical program `A364970.P269985968203337812`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364970 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364970.P269985968203337812.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364970.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A365409.P15440935900468717618

`(A064603(n+1)+3*A064602(n+1)+2*A024916(n+1))/6`
-/

namespace A365409.P15440935900468717618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064603 (n + 1) + 3 * A064602 (n + 1) + 2 * A024916 (n + 1) : ℚ) / 6

end

end A365409.P15440935900468717618

noncomputable section

/-- A365409: a(n) = Sum_{k=1..n} binomial(floor(n/k)+3,4).

Offset 1, canonical program `A365409.P15440935900468717618`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, A064603, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365409 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A365409.P15440935900468717618.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, A064603, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365409.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365439.P12833997707315348155

`(A064604(n+1)+6*A064603(n+1)+11*A064602(n+1)+6*A024916(n+1))/24`
-/

namespace A365439.P12833997707315348155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064604 (n + 1) + 6 * A064603 (n + 1) + 11 * A064602 (n + 1) + 6 * A024916 (n + 1) : ℚ) / 24

end

end A365439.P12833997707315348155

noncomputable section

/-- A365439: a(n) = Sum_{k=1..n} binomial(floor(n/k)+4,5).

Offset 1, canonical program `A365439.P12833997707315348155`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, A064603, A064604, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365439 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A365439.P12833997707315348155.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, A064603, A064604, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365439.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366933.P12877232169146300968

`∑{d}[n+1, A001159(#)*A117108((n+1)/#)]`
-/

namespace A366933.P12877232169146300968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001159 d * A117108 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A366933.P12877232169146300968

noncomputable section

/-- A366933: Expansion of Sum_{k>=1} k^4 * x^k/(1 - x^k)^4.

Offset 1, canonical program `A366933.P12877232169146300968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366933 (n : ℕ) : ℤ :=
  A366933.P12877232169146300968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366938.P18390479391884880701

`∑[A320901(n+1)]`
-/

namespace A366938.P18390479391884880701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366938.P18390479391884880701

noncomputable section

/-- A366938: a(n) = Sum_{k=1..n} (-1)^(k-1) * binomial(k+2,3) * floor(n/k).

Offset 1, canonical program `A366938.P18390479391884880701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366938 (n : ℕ) : ℤ :=
  A366938.P18390479391884880701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366967.P15258383013760261162

`(A064602(n+1)-A024916(n+1))/2`
-/

namespace A366967.P15258383013760261162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064602 (n + 1) - A024916 (n + 1) : ℚ) / 2

end

end A366967.P15258383013760261162

noncomputable section

/-- A366967: a(n) = Sum_{k=2..n} binomial(k,2) * floor(n/k).

Offset 1, canonical program `A366967.P15258383013760261162`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366967 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A366967.P15258383013760261162.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366967.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366970.P12989769328622183636

`(A064602(n+1)-3*A024916(n+1))/2+A006218(n+1)`
-/

namespace A366970.P12989769328622183636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064602 (n + 1) - 3 * A024916 (n + 1) : ℚ) / 2 + (A006218 (n + 1) : ℚ)

end

end A366970.P12989769328622183636

noncomputable section

/-- A366970: a(n) = Sum_{k=3..n} binomial(k-1,2) * floor(n/k).

Offset 1, canonical program `A366970.P12989769328622183636`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366970 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A366970.P12989769328622183636.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366970.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366971.P178044051024339791

`(A064603(n+1)-3*A064602(n+1)+2*A024916(n+1))/6`
-/

namespace A366971.P178044051024339791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064603 (n + 1) - 3 * A064602 (n + 1) + 2 * A024916 (n + 1) : ℚ) / 6

end

end A366971.P178044051024339791

noncomputable section

/-- A366971: a(n) = Sum_{k=3..n} binomial(k,3) * floor(n/k).

Offset 1, canonical program `A366971.P178044051024339791`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, A064603, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366971 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A366971.P178044051024339791.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, A064603, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366971.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369254.P14967059013545152487

`eq[1, A369253(n+1)]+1`
-/

namespace A369254.P14967059013545152487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369253 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A369254.P14967059013545152487

noncomputable section

/-- A369254: Numbers k that have an odd number of divisors that are at most sqrt(k).

Offset 1, canonical program `A369254.P14967059013545152487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369254 (n : ℕ) : ℤ :=
  (A369254.P14967059013545152487.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370010.P2556358850231895376

`A045319(A020934(n+1)-1)`
-/

namespace A370010.P2556358850231895376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A020934 (n + 1) - 1).toNat

end

end A370010.P2556358850231895376

noncomputable section

/-- A370010: a(n) is the greatest prime less than 4*prime(n).

Offset 1, canonical program `A370010.P2556358850231895376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2879 terms. -/
def A370010 (n : ℕ) : ℤ :=
  A370010.P2556358850231895376.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2879 terms. -/
def A370010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371906.P54646913033196370

`xor(a(n-1), A087207(n+1))` with `a(0)=0`
-/

namespace A371906.P54646913033196370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (n - 1)) (A087207 (n + 1))

end

end A371906.P54646913033196370

noncomputable section

/-- A371906: a(n) = sum of 2^(k-1) such that floor(n/prime(k)) is odd.

Offset 1, canonical program `A371906.P54646913033196370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A371906 (n : ℕ) : ℤ :=
  A371906.P54646913033196370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A371906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372467.P9198545942954414521

`log2(A372466(n+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372467.P9198545942954414521
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A372466 (n + 1) + 1 : ℝ)

end

end A372467.P9198545942954414521

noncomputable section

/-- A372467: a(n) = log_2(A372466(n) + 1).

Offset 1, canonical program `A372467.P9198545942954414521`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372466, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372467 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372467.P9198545942954414521.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372466, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372467.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A375072.P124892896223991445

`∩[A060476(n+1), A382967(n+1)]`
-/

namespace A375072.P124892896223991445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375072.P124892896223991445

noncomputable section

/-- A375072: Biquadratefree numbers (A046100) that are not cubefree (A004709).

Offset 1, canonical program `A375072.P124892896223991445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2914 terms. -/
def A375072 (n : ℕ) : ℤ :=
  (A375072.P124892896223991445.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2914 terms. -/
def A375072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376602.P2124917522490715053

`eq[0, A073445(n+1)]+1`
-/

namespace A376602.P2124917522490715053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073445 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A376602.P2124917522490715053

noncomputable section

/-- A376602: Inflection and undulation points in the sequence of composite numbers (A002808).

Offset 1, canonical program `A376602.P2124917522490715053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7711 terms. -/
def A376602 (n : ℕ) : ℤ :=
  (A376602.P2124917522490715053.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7711 terms. -/
def A376602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376651.P6843983757789881629

`eq[2, A053542(n+1)]+1`
-/

namespace A376651.P6843983757789881629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053542 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A376651.P6843983757789881629

noncomputable section

/-- A376651: Points of upward concavity in the sequence of composite numbers (A002808).

Offset 1, canonical program `A376651.P6843983757789881629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A376651 (n : ℕ) : ℤ :=
  (A376651.P6843983757789881629.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A376651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382133.P15663710745626438162

`∩[A046386(n+1), A162800(n)]`
-/

namespace A382133.P15663710745626438162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382133.P15663710745626438162

noncomputable section

/-- A382133: Products of 4 distinct primes that are the average of two consecutive primes.

Offset 1, canonical program `A382133.P15663710745626438162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1061 terms. -/
def A382133 (n : ℕ) : ℤ :=
  (A382133.P15663710745626438162.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1061 terms. -/
def A382133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382421.P17694037240617820596

`A005361(A046099(n+1))`
-/

namespace A382421.P17694037240617820596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A046099 (n + 1)).toNat

end

end A382421.P17694037240617820596

noncomputable section

/-- A382421: The product of exponents in the prime factorization of the noncubefree numbers.

Offset 1, canonical program `A382421.P17694037240617820596`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A046099, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382421 (n : ℕ) : ℤ :=
  A382421.P17694037240617820596.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A046099, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382421.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382987.P16727742091010566575

`A026269(n+2)-A005554(n+1)`
-/

namespace A382987.P16727742091010566575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026269 (n + 2) - A005554 (n + 1)

end

end A382987.P16727742091010566575

noncomputable section

/-- A382987: a(n) is the total sum of the last symbol in all Catalan words of length n avoiding the pattern (>=,>=).

Offset 0, canonical program `A382987.P16727742091010566575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A382987 (n : ℕ) : ℤ :=
  A382987.P16727742091010566575.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A382987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386020.P5151810573370523150

`∩[A160337(n+1), A380906(n+1)]`
-/

namespace A386020.P5151810573370523150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386020.P5151810573370523150

noncomputable section

/-- A386020: Primes having only {0, 1, 2, 7} as digits.

Offset 1, canonical program `A386020.P5151810573370523150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A386020 (n : ℕ) : ℤ :=
  (A386020.P5151810573370523150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A386020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386025.P16199978454777636192

`∩[A160337(n+1), A361822(n+1)]`
-/

namespace A386025.P16199978454777636192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386025.P16199978454777636192

noncomputable section

/-- A386025: Primes having only {0, 1, 3, 7} as digits.

Offset 1, canonical program `A386025.P16199978454777636192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A386025 (n : ℕ) : ℤ :=
  (A386025.P16199978454777636192.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A386025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386111.P9785451128808228405

`∩[A030096(n+1), A190222(n+1)]`
-/

namespace A386111.P9785451128808228405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386111.P9785451128808228405

noncomputable section

/-- A386111: Primes having only {1, 3, 5, 7} as digits.

Offset 1, canonical program `A386111.P9785451128808228405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2029 terms. -/
def A386111 (n : ℕ) : ℤ :=
  (A386111.P9785451128808228405.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2029 terms. -/
def A386111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386268.P721446606681825854

`A392359(A040976(n+2))`
-/

namespace A386268.P721446606681825854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392359 (A040976 (n + 2)).toNat

end

end A386268.P721446606681825854

noncomputable section

/-- A386268: a(n) = numerator((prime(n) - 2)/(n - 1)).

Offset 2, canonical program `A386268.P721446606681825854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A386268 (n : ℕ) : ℤ :=
  A386268.P721446606681825854.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A386268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386342.P11450868314914418014

`∩[A038611(n+1), A038615(n+1)]`
-/

namespace A386342.P11450868314914418014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386342.P11450868314914418014

noncomputable section

/-- A386342: Primes without {3, 7} as digits.

Offset 1, canonical program `A386342.P11450868314914418014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6633 terms. -/
def A386342 (n : ℕ) : ℤ :=
  (A386342.P11450868314914418014.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6633 terms. -/
def A386342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386351.P7318400634088148714

`∩[A038613(n+1), A038615(n+1)]`
-/

namespace A386351.P7318400634088148714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386351.P7318400634088148714

noncomputable section

/-- A386351: Primes without {5, 7} as digits.

Offset 1, canonical program `A386351.P7318400634088148714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4967 terms. -/
def A386351 (n : ℕ) : ℤ :=
  (A386351.P7318400634088148714.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4967 terms. -/
def A386351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386354.P16560442262164628227

`∩[A038614(n+1), A038615(n+1)]`
-/

namespace A386354.P16560442262164628227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386354.P16560442262164628227

noncomputable section

/-- A386354: Primes without {6, 7} as digits.

Offset 1, canonical program `A386354.P16560442262164628227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4953 terms. -/
def A386354 (n : ℕ) : ℤ :=
  (A386354.P16560442262164628227.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4953 terms. -/
def A386354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386357.P4558547617115754189

`∩[A038615(n+1), A038616(n+1)]`
-/

namespace A386357.P4558547617115754189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386357.P4558547617115754189

noncomputable section

/-- A386357: Primes without {7, 8} as digits.

Offset 1, canonical program `A386357.P4558547617115754189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386357 (n : ℕ) : ℤ :=
  (A386357.P4558547617115754189.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386357.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A395270.P1707680225757047534

`filter[A120944(n+1), A323170(#)]`
-/

namespace A395270.P1707680225757047534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A395270.P1707680225757047534

noncomputable section

/-- A395270: Numbers that are radicals of abundant numbers.

Offset 1, canonical program `A395270.P1707680225757047534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4226 terms. -/
def A395270 (n : ℕ) : ℤ :=
  A395270.P1707680225757047534.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4226 terms. -/
def A395270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282238.P12994779080358154349

`A214677(A000045(n+1))`
-/

namespace A282238.P12994779080358154349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214677 (A000045 (n + 1)).toNat

end

end A282238.P12994779080358154349

noncomputable section

/-- A282238: a(n) = Fibonacci(n) represented in bijective base-7 numeration.

Offset 1, canonical program `A282238.P12994779080358154349`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214677, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A282238 (n : ℕ) : ℤ :=
  A282238.P12994779080358154349.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214677, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A282238.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284324.P5958562104063105870

`∩[A028846(n+1), A062372(n+1)]`
-/

namespace A284324.P5958562104063105870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284324.P5958562104063105870

noncomputable section

/-- A284324: Numbers k such that product of digits of k is a power of 8.

Offset 1, canonical program `A284324.P5958562104063105870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1013 terms. -/
def A284324 (n : ℕ) : ℤ :=
  (A284324.P5958562104063105870.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1013 terms. -/
def A284324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289616.P6968600782892435759

`A289654(n+1)-A289207(n)`
-/

namespace A289616.P6968600782892435759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289654 (n + 1) - A289207 n

end

end A289616.P6968600782892435759

noncomputable section

/-- A289616: A246604 (Catalan(n)-n) with initial terms 1,0,0,2,10 changed to 1,1,1,2,11.

Offset 0, canonical program `A289616.P6968600782892435759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289616 (n : ℕ) : ℤ :=
  A289616.P6968600782892435759.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310452.P8814723128049641890

`A312926(n)+∑[A021913(n)]`
-/

namespace A310452.P8814723128049641890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312926 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310452.P8814723128049641890

noncomputable section

/-- A310452: Coordination sequence Gal.6.195.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310452.P8814723128049641890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A310452 (n : ℕ) : ℤ :=
  A310452.P8814723128049641890.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A310452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313228.P2561284602986671939

`A313859(n)-A004525(A004396(n))`
-/

namespace A313228.P2561284602986671939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313859 n - A004525 (A004396 n).toNat

end

end A313228.P2561284602986671939

noncomputable section

/-- A313228: Coordination sequence Gal.6.155.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313228.P2561284602986671939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A313228 (n : ℕ) : ℤ :=
  A313228.P2561284602986671939.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A313228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313824.P16488686342278004829

`A004396(A004525(n))+A313859(n)-A004525(n)`
-/

namespace A313824.P16488686342278004829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A313859 n - A004525 n)

end

end A313824.P16488686342278004829

noncomputable section

/-- A313824: Coordination sequence Gal.6.195.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313824.P16488686342278004829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A313824 (n : ℕ) : ℤ :=
  A313824.P16488686342278004829.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A313824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328981.P4173490097379195379

`1-A359832(n+1)`
-/

namespace A328981.P4173490097379195379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A359832 (n + 1)

end

end A328981.P4173490097379195379

noncomputable section

/-- A328981: Indicator function of numbers whose binary representation ends in an even positive number of 0's.

Offset 1, canonical program `A328981.P4173490097379195379`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359832, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328981 (n : ℕ) : ℤ :=
  A328981.P4173490097379195379.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359832, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328981.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332424.P12302743230273671513

`∑{p}[n+1, #/A332823(#)]`
-/

namespace A332424.P12302743230273671513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (A332823 p : ℚ)

end

end A332424.P12302743230273671513

noncomputable section

/-- A332424: If n = Product (p_j^k_j) then a(n) = Sum ((-1)^(pi(p_j) + 1) * p_j), where pi = A000720.

Offset 1, canonical program `A332424.P12302743230273671513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332424 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A332424.P12302743230273671513.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381579.P9755719263119690810

`A007089(A381608(n))`
-/

namespace A381579.P9755719263119690810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A381608 n).toNat

end

end A381579.P9755719263119690810

noncomputable section

/-- A381579: The Chung-Graham representation of n: representation of n in base of even-indexed Fibonacci numbers.

Offset 0, canonical program `A381579.P9755719263119690810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4267 terms. -/
def A381579 (n : ℕ) : ℤ :=
  A381579.P9755719263119690810.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4267 terms. -/
def A381579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383371.P1134250893838150847

`p?[A028846(n+1)]`
-/

namespace A383371.P1134250893838150847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A383371.P1134250893838150847

noncomputable section

/-- A383371: Primes having only {1, 2, 4, 8} as digits.

Offset 1, canonical program `A383371.P1134250893838150847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. -/
def A383371 (n : ℕ) : ℤ :=
  A383371.P1134250893838150847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. -/
def A383371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386069.P385928273964232171

`∩[A072960(n+1), A386337(n+1)]`
-/

namespace A386069.P385928273964232171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386069.P385928273964232171

noncomputable section

/-- A386069: Primes having only {0, 3, 8, 9} as digits.

Offset 1, canonical program `A386069.P385928273964232171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A386069 (n : ℕ) : ℤ :=
  (A386069.P385928273964232171.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A386069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387254.P4440641154738734773

`A389065(n+1)²`
-/

namespace A387254.P4440641154738734773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1) ^ 2

end

end A387254.P4440641154738734773

noncomputable section

/-- A387254: Squares of numbers that are neither prime powers nor powerful.

Offset 1, canonical program `A387254.P4440641154738734773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387254 (n : ℕ) : ℤ :=
  A387254.P4440641154738734773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313259.P1861422749685330600

`A004396(A310533(n)+2*n)`
-/

namespace A313259.P1861422749685330600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310533 n + (2 * n : ℤ)).toNat

end

end A313259.P1861422749685330600

noncomputable section

/-- A313259: Coordination sequence Gal.6.204.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313259.P1861422749685330600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. -/
def A313259 (n : ℕ) : ℤ :=
  A313259.P1861422749685330600.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. -/
def A313259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313779.P5705324669876184418

`A312944(2*n)-4*n`
-/

namespace A313779.P5705324669876184418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312944 (2 * n) - (4 * n : ℤ)

end

end A313779.P5705324669876184418

noncomputable section

/-- A313779: Coordination sequence Gal.6.328.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313779.P5705324669876184418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2325 terms. -/
def A313779 (n : ℕ) : ℤ :=
  A313779.P5705324669876184418.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2325 terms. -/
def A313779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315473.P5440894521520911496

`A310533(n)+A000034(n)*A128834(n)`
-/

namespace A315473.P5440894521520911496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310533 n + A000034 n * A128834 n

end

end A315473.P5440894521520911496

noncomputable section

/-- A315473: Coordination sequence Gal.6.658.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315473.P5440894521520911496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A315473 (n : ℕ) : ℤ :=
  A315473.P5440894521520911496.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A315473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315519.P253301866715473937

`abs(A008592(n)-A312944(n))`
-/

namespace A315519.P253301866715473937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312944 n|

end

end A315519.P253301866715473937

noncomputable section

/-- A315519: Coordination sequence Gal.6.332.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315519.P253301866715473937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A315519 (n : ℕ) : ℤ :=
  A315519.P253301866715473937.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A315519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310465.P7677132150427515020

`A310380(n)+A001281(A310533(n)-A310380(n))`
-/

namespace A310465.P7677132150427515020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310380 n + A001281 (A310533 n - A310380 n).toNat

end

end A310465.P7677132150427515020

noncomputable section

/-- A310465: Coordination sequence Gal.6.342.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310465.P7677132150427515020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2235 terms. -/
def A310465 (n : ℕ) : ℤ :=
  A310465.P7677132150427515020.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2235 terms. -/
def A310465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283978.P12954739794367481226

`A002487(n)-A283976(n)`
-/

namespace A283978.P12954739794367481226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n - A283976 n

end

end A283978.P12954739794367481226

noncomputable section

/-- A283978: a(2n) = 0, a(2n+1) = A002487(n) AND A002487(n+1), where AND is bitwise-and (A004198).

Offset 0, canonical program `A283978.P12954739794367481226`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283976, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283978 (n : ℕ) : ℤ :=
  A283978.P12954739794367481226.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283976, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283978.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A283986.P7450117296325847881

`A283976(2*(n+1)-1)`
-/

namespace A283986.P7450117296325847881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * (n + 1) - 1)

end

end A283986.P7450117296325847881

noncomputable section

/-- A283986: a(n) = A002487(n-1) OR A002487(n), where OR is bitwise-or (A003986).

Offset 1, canonical program `A283986.P7450117296325847881`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283976, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283986 (n : ℕ) : ℤ :=
  A283986.P7450117296325847881.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283976, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283986.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A287374.P14008916992974002894

`n+1+char[A269161(n)]+n`
-/

namespace A287374.P14008916992974002894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269161 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A287374.P14008916992974002894

noncomputable section

/-- A287374: Positions of 1 in A101666.

Offset 1, canonical program `A287374.P14008916992974002894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287374 (n : ℕ) : ℤ :=
  (A287374.P14008916992974002894.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288915.P17477177874724802117

`Δ[comp[A270190(n+1)]]`
-/

namespace A288915.P17477177874724802117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270190 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A288915.P17477177874724802117

noncomputable section

/-- A288915: Run lengths in A039704.

Offset 1, canonical program `A288915.P17477177874724802117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A288915 (n : ℕ) : ℤ :=
  A288915.P17477177874724802117.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A288915.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A296084.P5567096927429281005

`A121373((A296082(n+1)+9)²)`
-/

namespace A296084.P5567096927429281005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 ((A296082 (n + 1) + 9) ^ 2).toNat

end

end A296084.P5567096927429281005

noncomputable section

/-- A296084: a(1) = 0 and for n > 1, a(n) = 1 if tau(n)-1 divides sigma(n)-1, 0 otherwise. Here tau = A000005, sigma = A000203.

Offset 1, canonical program `A296084.P5567096927429281005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296084 (n : ℕ) : ℤ :=
  A296084.P5567096927429281005.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309322.P6198726568580367255

`(A018804(n+1)+A069097(n+1))/2`
-/

namespace A309322.P6198726568580367255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) + A069097 (n + 1) : ℚ) / 2

end

end A309322.P6198726568580367255

noncomputable section

/-- A309322: Expansion of Sum_{k>=1} phi(k) * x^k/(1 - x^k)^3, where phi = Euler totient function (A000010).

Offset 1, canonical program `A309322.P6198726568580367255`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, A069097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A309322 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A309322.P6198726568580367255.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, A069097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A309322.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A317839.P17371659085018084050

`∑{d}[n+1, A007427(#)*A317838((n+1)/#)]`
-/

namespace A317839.P17371659085018084050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A317838 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317839.P17371659085018084050

noncomputable section

/-- A317839: Möbius transform of A002487, Stern's Diatomic sequence.

Offset 1, canonical program `A317839.P17371659085018084050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317839 (n : ℕ) : ℤ :=
  A317839.P17371659085018084050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317932.P6928807366266153349

`2^A305439(n+1)`
-/

namespace A317932.P6928807366266153349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A305439 (n + 1) : ℤ)

end

end A317932.P6928807366266153349

noncomputable section

/-- A317932: Denominators of certain "Dirichlet Square Root" sequences: a(n) = A046644(n)/(2^A007949(n)).

Offset 1, canonical program `A317932.P6928807366266153349`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317932 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A317932.P6928807366266153349.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317932.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317991.P1333235406774140562

`log2(A317989(n+2))`
-/

namespace A317991.P1333235406774140562
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A317989 (n + 2) : ℝ)

end

end A317991.P1333235406774140562

noncomputable section

/-- A317991: 2-rank of the narrow class group of the real quadratic field with discriminant A003658(n), n >= 2.

Offset 2, canonical program `A317991.P1333235406774140562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317989, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317991 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A317991.P1333235406774140562.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317989, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317991.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318440.P5886094417818087707

`A046645(n+1)-A007814(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318440.P5886094417818087707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) - A007814 (n + 1)

end

end A318440.P5886094417818087707

noncomputable section

/-- A318440: a(n) = A046645(n) - A007814(n); the 2-adic valuation of A299150.

Offset 1, canonical program `A318440.P5886094417818087707`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318440 (n : ℕ) : ℤ :=
  A318440.P5886094417818087707.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318440.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A318468.P4390416798166820558

`A224880(n+1)-A318466(n+1)`
-/

namespace A318468.P4390416798166820558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224880 (n + 1) - A318466 (n + 1)

end

end A318468.P4390416798166820558

noncomputable section

/-- A318468: a(n) = 2*n AND A000203(n), where AND is bitwise-and (A004198) and A000203 = sum of divisors.

Offset 1, canonical program `A318468.P4390416798166820558`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318466, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318468 (n : ℕ) : ℤ :=
  A318468.P4390416798166820558.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318466, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318513.P17793607305187104594

`A007814(A318512(n+1))`
-/

namespace A318513.P17793607305187104594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318512 (n + 1)).toNat

end

end A318513.P17793607305187104594

noncomputable section

/-- A318513: The 2-adic valuation of A318512.

Offset 1, canonical program `A318513.P17793607305187104594`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318513 (n : ℕ) : ℤ :=
  A318513.P17793607305187104594.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318513.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318651.P14693122508814225811

`A046644(n+1)/A318512(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318651.P14693122508814225811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046644 (n + 1) : ℚ) / (A318512 (n + 1) : ℚ)

end

end A318651.P14693122508814225811

noncomputable section

/-- A318651: a(n) = A046644(n)/A318512(n).

Offset 1, canonical program `A318651.P14693122508814225811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, A318512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318651 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318651.P14693122508814225811.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, A318512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318651.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318656.P13008805478963827236

`2*A007814(n+1)-A046645(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318656.P13008805478963827236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007814 (n + 1) - A046645 (n + 1)

end

end A318656.P13008805478963827236

noncomputable section

/-- A318656: The 2-adic valuation of ratio A318649(n)/A318512(n); a(n) = 2*A007814(n) - A046645(n).

Offset 1, canonical program `A318656.P13008805478963827236`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318656 (n : ℕ) : ℤ :=
  A318656.P13008805478963827236.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318656.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319715.P2645840201832669613

`A319713(n+1)+A276150(n+1)`
-/

namespace A319715.P2645840201832669613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319713 (n + 1) + A276150 (n + 1)

end

end A319715.P2645840201832669613

noncomputable section

/-- A319715: Sum of A276150(d) over divisors d of n, where A276150 gives the sum of digits in primorial base.

Offset 1, canonical program `A319715.P2645840201832669613`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, A319713, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319715 (n : ℕ) : ℤ :=
  A319715.P2645840201832669613.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, A319713, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319715.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324902.P6713213474126694737

`A007814(A318456(n+1))`
-/

namespace A324902.P6713213474126694737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318456 (n + 1)).toNat

end

end A324902.P6713213474126694737

noncomputable section

/-- A324902: The 2-adic valuation of A318456(n), where A318456(n) = n OR (sigma(n)-n).

Offset 1, canonical program `A324902.P6713213474126694737`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318456, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324902 (n : ℕ) : ℤ :=
  A324902.P6713213474126694737.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318456, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324902.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324906.P2435466228713464625

`A007814(1+A318466(n+1))`
-/

namespace A324906.P2435466228713464625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A318466 (n + 1)).toNat

end

end A324906.P2435466228713464625

noncomputable section

/-- A324906: Number of trailing 1-bits in the binary representation of A318466(n), where A318466(n) = 2*n OR sigma(n).

Offset 1, canonical program `A324906.P2435466228713464625`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318466, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324906 (n : ℕ) : ℤ :=
  A324906.P2435466228713464625.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318466, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324906.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325446.P518244642965140129

`A254578(∏{p}[n+1, #])`
-/

namespace A325446.P518244642965140129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254578 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A325446.P518244642965140129

noncomputable section

/-- A325446: The unitary version of Kalmár's function: number of ordered factorizations of n into powers of distinct primes.

Offset 1, canonical program `A325446.P518244642965140129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325446 (n : ℕ) : ℤ :=
  A325446.P518244642965140129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332464.P13607079084851042029

`A269174(A000203(n+1))`
-/

namespace A332464.P13607079084851042029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269174 (A000203 (n + 1)).toNat

end

end A332464.P13607079084851042029

noncomputable section

/-- A332464: Rule 124 one-dimensional cellular automaton applied for one step to the configuration read from the base-2 expansion of sigma(n), then converted back to decimal.

Offset 1, canonical program `A332464.P13607079084851042029`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269174, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332464 (n : ℕ) : ℤ :=
  A332464.P13607079084851042029.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269174, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332464.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332794.P344464151084610744

`2*A255655(n+1)-A018804(n+1)`
-/

namespace A332794.P344464151084610744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255655 (n + 1) - A018804 (n + 1)

end

end A332794.P344464151084610744

noncomputable section

/-- A332794: a(n) = Sum_{d|n} (-1)^(d + 1) * d * phi(n/d).

Offset 1, canonical program `A332794.P344464151084610744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332794 (n : ℕ) : ℤ :=
  A332794.P344464151084610744.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336407.P9817670677513642301

`A153238(n+1)+n`
-/

namespace A336407.P9817670677513642301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 1) + (n : ℤ)

end

end A336407.P9817670677513642301

noncomputable section

/-- A336407: a(n) is the number of composites < n-th odd composite.

Offset 1, canonical program `A336407.P9817670677513642301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336407 (n : ℕ) : ℤ :=
  A336407.P9817670677513642301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336407.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A337362.P16917080066168618758`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129308, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337362 (n : ℕ) : ℤ :=
  A337362.P16917080066168618758.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129308, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

Offset 1, canonical program `A337363.P11598784413067799807`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129308, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337363 (n : ℕ) : ℤ :=
  A337363.P11598784413067799807.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129308, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337363.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339451.P5257208981662838490

`∑[A079559(n)]-A182105(n+1)`
-/

namespace A339451.P5257208981662838490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A182105 (n + 1)

end

end A339451.P5257208981662838490

noncomputable section

/-- A339451: Gray-code-like sequence in which, at each step, the least significant bit that has never been toggled from the previous value, is toggled.

Offset 0, canonical program `A339451.P5257208981662838490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339451 (n : ℕ) : ℤ :=
  A339451.P5257208981662838490.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340078.P18087616502759424446

`gcd(n+1, 1+A018804(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340078.P18087616502759424446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (1 + A018804 (n + 1))

end

end A340078.P18087616502759424446

noncomputable section

/-- A340078: a(n) = gcd(n, 1+A018804(n)), where A018804(n) = Sum_{k=1..n} gcd(k, n).

Offset 1, canonical program `A340078.P18087616502759424446`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340078 (n : ℕ) : ℤ :=
  (A340078.P18087616502759424446.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340078.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340080.P13659753858061397286

`(1+A018804(n+1))/gcd(n+1, 1+A018804(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340080.P13659753858061397286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A018804 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (1 + A018804 (n + 1)) : ℚ)

end

end A340080.P13659753858061397286

noncomputable section

/-- A340080: a(n) = (1+A018804(n)) / gcd(n, 1+A018804(n)), where A018804(n) = Sum_{k=1..n} gcd(k, n).

Offset 1, canonical program `A340080.P13659753858061397286`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340080 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340080.P13659753858061397286.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340080.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343819.P12164081537324373688

`eq[A064547(n+1), A064547(n+2)]+1`
-/

namespace A343819.P12164081537324373688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A343819.P12164081537324373688

noncomputable section

/-- A343819: Numbers k such that k and k+1 have the same number of Fermi-Dirac factors (A064547).

Offset 1, canonical program `A343819.P12164081537324373688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7268 terms. -/
def A343819 (n : ℕ) : ℤ :=
  (A343819.P12164081537324373688.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7268 terms. -/
def A343819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344485.P2345228522684995315

`A000290(n+1)-A018804(n+1)`
-/

namespace A344485.P2345228522684995315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - A018804 (n + 1)

end

end A344485.P2345228522684995315

noncomputable section

/-- A344485: a(n) = Sum_{d|n} (n-d) * phi(n/d).

Offset 1, canonical program `A344485.P2345228522684995315`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344485 (n : ℕ) : ℤ :=
  A344485.P2345228522684995315.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344485.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344510.P9190292902148510420

`(n+1)*(n+1+A018804(n+1))/2`
-/

namespace A344510.P9190292902148510420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((n + 1 : ℤ) + A018804 (n + 1)) : ℚ) / 2

end

end A344510.P9190292902148510420

noncomputable section

/-- A344510: a(n) = Sum_{k=1..n} k * gcd(k,n).

Offset 1, canonical program `A344510.P9190292902148510420`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344510 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A344510.P9190292902148510420.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344510.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345279.P7115677743287407116

`A344931(n+1)+A324966(n+1)`
-/

namespace A345279.P7115677743287407116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344931 (n + 1) + A324966 (n + 1)

end

end A345279.P7115677743287407116

noncomputable section

/-- A345279: a(n) = Sum_{p|n} p^((pi(p)+1) mod 2).

Offset 1, canonical program `A345279.P7115677743287407116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345279 (n : ℕ) : ℤ :=
  A345279.P7115677743287407116.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347095.P13848354769774225057

`A018804(n+1)+A101035(n+1)`
-/

namespace A347095.P13848354769774225057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) + A101035 (n + 1)

end

end A347095.P13848354769774225057

noncomputable section

/-- A347095: Sum of Pillai's arithmetical function (A018804) and its Dirichlet inverse.

Offset 1, canonical program `A347095.P13848354769774225057`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, A101035, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347095 (n : ℕ) : ℤ :=
  A347095.P13848354769774225057.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, A101035, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347095.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347128.P11070062399515435337

`A018804(n+1)/A003557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347128.P11070062399515435337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A347128.P11070062399515435337

noncomputable section

/-- A347128: a(n) = A018804(n) / A003557(n), where A018804 is Pillai's arithmetical function.

Offset 1, canonical program `A347128.P11070062399515435337`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347128 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A347128.P11070062399515435337.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347128.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347131.P9557456993449807775

`∑{d}[n+1, A007431(#)*A319684((n+1)/#)]`
-/

namespace A347131.P9557456993449807775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A319684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347131.P9557456993449807775

noncomputable section

/-- A347131: a(n) = Sum_{d|n} phi(n/d) * A003415(d), where A003415 is the arithmetic derivative and phi is Euler totient function.

Offset 1, canonical program `A347131.P9557456993449807775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347131 (n : ℕ) : ℤ :=
  A347131.P9557456993449807775.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347134.P17427216324099525413

`∑{d}[n+1, A010051(#)*A018804((n+1)/#)]`
-/

namespace A347134.P17427216324099525413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A018804 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347134.P17427216324099525413

noncomputable section

/-- A347134: a(n) = Sum_{d|n} phi(n/d) * A069359(d), where phi is Euler totient function.

Offset 1, canonical program `A347134.P17427216324099525413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347134 (n : ℕ) : ℤ :=
  A347134.P17427216324099525413.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347950.P18371532176146364720

`char[A100345(n)-1]`
-/

namespace A347950.P18371532176146364720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100345 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A347950.P18371532176146364720

noncomputable section

/-- A347950: Characteristic function of numbers that have middle divisors.

Offset 1, canonical program `A347950.P18371532176146364720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347950 (n : ℕ) : ℤ :=
  (A347950.P18371532176146364720.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349123.P11110344356280477347

`∑{d}[n+1, A018804(#)*A319684((n+1)/#)]`
-/

namespace A349123.P11110344356280477347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A319684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349123.P11110344356280477347

noncomputable section

/-- A349123: a(n) = Sum_{d|n} A038040(n/d) * A003415(d), where A038040(n) = n*tau(n), and A003415 is the arithmetic derivative of n.

Offset 1, canonical program `A349123.P11110344356280477347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349123 (n : ℕ) : ℤ :=
  A349123.P11110344356280477347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349676.P6432705211347796036

`A018804(a(n-1))` with `a(0)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349676.P6432705211347796036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A018804 (a (n - 1)).toNat

end

end A349676.P6432705211347796036

noncomputable section

/-- A349676: Iterated Pillai's arithmetical function: a(1) = 2, for n >= 2, a(n) = A018804(a(n-1)).

Offset 1, canonical program `A349676.P6432705211347796036`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349676 (n : ℕ) : ℤ :=
  A349676.P6432705211347796036.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349676.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349692.P606356036147903569

`∑{d}[n+1, A018804(#)*A018804((n+1)/#)]`
-/

namespace A349692.P606356036147903569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A018804 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349692.P606356036147903569

noncomputable section

/-- A349692: Dirichlet convolution of the gcd-sum function (A018804) with itself.

Offset 1, canonical program `A349692.P606356036147903569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349692 (n : ℕ) : ℤ :=
  A349692.P606356036147903569.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350704.P136889457551582597

`filter[A156543(n+1), A066247(#)]`
-/

namespace A350704.P136889457551582597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A350704.P136889457551582597

noncomputable section

/-- A350704: Composite numbers that have no Sophie Germain prime factors.

Offset 1, canonical program `A350704.P136889457551582597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4746 terms. -/
def A350704 (n : ℕ) : ℤ :=
  A350704.P136889457551582597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4746 terms. -/
def A350704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351517.P17553045902605292487

`∏{p}[n+1, A345278(#)]`
-/

namespace A351517.P17553045902605292487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A345278 p

end

end A351517.P17553045902605292487

noncomputable section

/-- A351517: a(n) = Product_{p|n, p prime} p^(pi(p) mod 2).

Offset 1, canonical program `A351517.P17553045902605292487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351517 (n : ℕ) : ℤ :=
  A351517.P17553045902605292487.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353354.P15025921415780628562

`∑{d}[n+1, A332823(#)]`
-/

namespace A353354.P15025921415780628562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A332823 d

end

end A353354.P15025921415780628562

noncomputable section

/-- A353354: Inverse Möbius transform of A332823.

Offset 1, canonical program `A353354.P15025921415780628562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353354 (n : ℕ) : ℤ :=
  A353354.P15025921415780628562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353374.P4573974283751582701

`A035263(n+1)*A065043(n+1)`
-/

namespace A353374.P4573974283751582701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) * A065043 (n + 1)

end

end A353374.P4573974283751582701

noncomputable section

/-- A353374: a(n) = 1 if the prime factorization of n has an even number of prime factors that sum to an even number, otherwise 0.

Offset 1, canonical program `A353374.P4573974283751582701`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353374 (n : ℕ) : ℤ :=
  A353374.P4573974283751582701.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353374.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354039.P14555955065410119290

`lt[0, A354036(n+1)]+1`
-/

namespace A354039.P14555955065410119290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354036 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354039.P14555955065410119290

noncomputable section

/-- A354039: Odd numbers k for which sigma(k^2) == 1 (mod 4).

Offset 1, canonical program `A354039.P14555955065410119290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354039 (n : ℕ) : ℤ :=
  (A354039.P14555955065410119290.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355222.P17906569904308679321

`A182324(n)-A054054(A056142(n))`
-/

namespace A355222.P17906569904308679321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182324 n - A054054 (A056142 n).toNat

end

end A355222.P17906569904308679321

noncomputable section

/-- A355222: The k-th leftmost digit of a(n) is the greatest of the k leftmost digits of n.

Offset 0, canonical program `A355222.P17906569904308679321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A355222 (n : ℕ) : ℤ :=
  A355222.P17906569904308679321.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A355222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356472.P4075546166562556307

`lcm(n+1, A018804(n+1))/(n+1)`
-/

namespace A356472.P4075546166562556307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A018804 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A356472.P4075546166562556307

noncomputable section

/-- A356472: Numerator of the average of gcd(i,n) for i = 1..n.

Offset 1, canonical program `A356472.P4075546166562556307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356472 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A356472.P4075546166562556307.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358336.P1440461923045548440

`∑{d}[n+1, A029935(#)*A183097((n+1)/#)]`
-/

namespace A358336.P1440461923045548440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A183097 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358336.P1440461923045548440

noncomputable section

/-- A358336: Multiplicative sequence with a(p^e) = ((p-1) * (1 + e*(e+1)/2) + e) * p^(e-1) for prime p and e > 0.

Offset 1, canonical program `A358336.P1440461923045548440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358336 (n : ℕ) : ℤ :=
  A358336.P1440461923045548440.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359153.P11980574962426657024

`filter[A004767(n), A354036(#)]`
-/

namespace A359153.P11980574962426657024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A359153.P11980574962426657024

noncomputable section

/-- A359153: Numbers of the form 4u+3 with an odd number of prime factors (counted with multiplicity).

Offset 1, canonical program `A359153.P11980574962426657024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5112 terms. -/
def A359153 (n : ℕ) : ℤ :=
  A359153.P11980574962426657024.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5112 terms. -/
def A359153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359373.P13677423627337552667

`eq[1, A359372(n+1)]+1`
-/

namespace A359373.P13677423627337552667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359373.P13677423627337552667

noncomputable section

/-- A359373: Nonmultiples of 4 that have an odd number of prime factors (with multiplicity).

Offset 1, canonical program `A359373.P13677423627337552667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359373 (n : ℕ) : ℤ :=
  (A359373.P13677423627337552667.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359769.P3510413858819511961

`A353557(n+1)-A353556(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359769.P3510413858819511961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (n + 1) - A353556 (n + 1)

end

end A359769.P3510413858819511961

noncomputable section

/-- A359769: a(n) = A353557(n) - A353556(n).

Offset 1, canonical program `A359769.P3510413858819511961`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353556, A353557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359769 (n : ℕ) : ℤ :=
  A359769.P3510413858819511961.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353556, A353557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359769.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360126.P9027795698661320514

`eq[0, A360125(n+1)]+1`
-/

namespace A360126.P9027795698661320514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360125 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A360126.P9027795698661320514

noncomputable section

/-- A360126: Numbers k for which A359425(k) is even, where A359425 is Dirichlet convolution of the arithmetic derivative with the primorial base exp-function.

Offset 1, canonical program `A360126.P9027795698661320514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360126 (n : ℕ) : ℤ :=
  (A360126.P9027795698661320514.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360127.P2447225170114496464

`eq[1, A360125(n+1)]+1`
-/

namespace A360127.P2447225170114496464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360125 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A360127.P2447225170114496464

noncomputable section

/-- A360127: Numbers k for which A359425(k) is odd, where A359425 is the Dirichlet convolution of the arithmetic derivative with the primorial base exp function.

Offset 1, canonical program `A360127.P2447225170114496464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5294 terms. -/
def A360127 (n : ℕ) : ℤ :=
  (A360127.P2447225170114496464.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5294 terms. -/
def A360127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364011.P3082904920966475495

`A364205(n+1)+A002324(n+1)`
-/

namespace A364011.P3082904920966475495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364205 (n + 1) + A002324 (n + 1)

end

end A364011.P3082904920966475495

noncomputable section

/-- A364011: Expansion of Sum_{k>0} x^k / (1 + x^(3*k)).

Offset 1, canonical program `A364011.P3082904920966475495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364011 (n : ℕ) : ℤ :=
  A364011.P3082904920966475495.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364084.P12661241187166773764

`A363904(4*n+1)`
-/

namespace A364084.P12661241187166773764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363904 (4 * n + 1)

end

end A364084.P12661241187166773764

noncomputable section

/-- A364084: Expansion of Sum_{k>0} k * x^(3*k) / (1 - x^(4*k-1)).

Offset 1, canonical program `A364084.P12661241187166773764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364084 (n : ℕ) : ℤ :=
  A364084.P12661241187166773764.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364085.P4521992801007173167

`A363904(4*(n+1)-1)`
-/

namespace A364085.P4521992801007173167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363904 (4 * (n + 1) - 1)

end

end A364085.P4521992801007173167

noncomputable section

/-- A364085: Expansion of Sum_{k>0} k * x^k / (1 - x^(4*k-1)).

Offset 1, canonical program `A364085.P4521992801007173167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364085 (n : ℕ) : ℤ :=
  A364085.P4521992801007173167.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366247.P12546709701483345304

`A064547(n+1)-A366246(n+1)`
-/

namespace A366247.P12546709701483345304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 1) - A366246 (n + 1)

end

end A366247.P12546709701483345304

noncomputable section

/-- A366247: The number of infinitary divisors of n that are "Fermi-Dirac primes" (A050376) and terms of A366243.

Offset 1, canonical program `A366247.P12546709701483345304`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064547, A366246, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366247 (n : ℕ) : ℤ :=
  A366247.P12546709701483345304.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064547, A366246, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366247.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369668.P5612230000554155073

`2*A359151(n+1)`
-/

namespace A369668.P5612230000554155073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A359151 (n + 1)

end

end A369668.P5612230000554155073

noncomputable section

/-- A369668: Numbers that have an even number of prime factors with multiplicity and whose arithmetic derivative is of the form 4k+3.

Offset 1, canonical program `A369668.P5612230000554155073`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359151, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369668 (n : ℕ) : ℤ :=
  A369668.P5612230000554155073.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359151, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370895.P1285603479824087748

`∑[(-1)^n*A018804(n+1)]`
-/

namespace A370895.P1285603479824087748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A018804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370895.P1285603479824087748

noncomputable section

/-- A370895: Partial alternating sums of Pillai's arithmetical function (A018804).

Offset 1, canonical program `A370895.P1285603479824087748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370895 (n : ℕ) : ℤ :=
  A370895.P1285603479824087748.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373299.P1347449349989211872

`A151800(A022885(n+1))`
-/

namespace A373299.P1347449349989211872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A022885 (n + 1)).toNat

end

end A373299.P1347449349989211872

noncomputable section

/-- A373299: Numbers prime(k) such that prime(k) - prime(k-1) = prime(k+2) - prime(k+1).

Offset 1, canonical program `A373299.P1347449349989211872`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022885, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373299 (n : ℕ) : ℤ :=
  A373299.P1347449349989211872.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022885, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373299.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375230.P7295009914355440211

`3^A064547(n+1)`
-/

namespace A375230.P7295009914355440211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A064547 (n + 1) : ℤ)

end

end A375230.P7295009914355440211

noncomputable section

/-- A375230: The total number of infinitary divisors of the infinitary divisors of n.

Offset 1, canonical program `A375230.P7295009914355440211`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064547, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375230 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375230.P7295009914355440211.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064547, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375230.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378543.P12831466803385793164

`∑{d}[n+1, A359372(#)*A373188((n+1)/#)]`
-/

namespace A378543.P12831466803385793164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359372 d * A373188 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378543.P12831466803385793164

noncomputable section

/-- A378543: Sum of divisors d of n such that n/d has an odd number of prime factors (counted with multiplicity).

Offset 1, canonical program `A378543.P12831466803385793164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378543 (n : ℕ) : ℤ :=
  A378543.P12831466803385793164.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381852.P9783243754932668671

`A053644(2*n+1)-A049773(A049773(2*n+1))`
-/

namespace A381852.P9783243754932668671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (2 * n + 1) - A049773 (A049773 (2 * n + 1)).toNat

end

end A381852.P9783243754932668671

noncomputable section

/-- A381852: In the binary expansion of n (without leading zeros): complement the bits strictly to the right of the leftmost zero digit, if any.

Offset 0, canonical program `A381852.P9783243754932668671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A381852 (n : ℕ) : ℤ :=
  A381852.P9783243754932668671.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A381852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382069.P7816256565130258159

`A000217(n+1)+A000290(n+1)-A018804(n+1)`
-/

namespace A382069.P7816256565130258159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + A000290 (n + 1) - A018804 (n + 1)

end

end A382069.P7816256565130258159

noncomputable section

/-- A382069: Row sums of the triangular array in A199408.

Offset 1, canonical program `A382069.P7816256565130258159`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382069 (n : ℕ) : ℤ :=
  A382069.P7816256565130258159.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382069.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382290.P2377806297881400849

`A064547(n+1)-A001221(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A382290.P2377806297881400849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 1) - A001221 (n + 1)

end

end A382290.P2377806297881400849

noncomputable section

/-- A382290: a(n) = A064547(n) - A001221(n).

Offset 1, canonical program `A382290.P2377806297881400849`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A064547, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382290 (n : ℕ) : ℤ :=
  A382290.P2377806297881400849.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A064547, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382290.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382292.P11441178726949856059

`eq[A001221(n+1)+1, A064547(n+1)]+1`
-/

namespace A382292.P11441178726949856059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A382292.P11441178726949856059

noncomputable section

/-- A382292: Numbers k such that A382290(k) = 1.

Offset 1, canonical program `A382292.P11441178726949856059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3909 terms. -/
def A382292 (n : ℕ) : ℤ :=
  (A382292.P11441178726949856059.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3909 terms. -/
def A382292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382872.P13479336682410921135

`A000005(A018804(n+1))`
-/

namespace A382872.P13479336682410921135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A018804 (n + 1)).toNat

end

end A382872.P13479336682410921135

noncomputable section

/-- A382872: For n >= 1, a(n) is the number of divisors of Pillai's arithmetical function: Sum_{k=1..n} gcd(k, n) (A018804).

Offset 1, canonical program `A382872.P13479336682410921135`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382872 (n : ℕ) : ℤ :=
  A382872.P13479336682410921135.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382872.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383769.P11406854060680008032

`ceil(A318512(n+1)/2^val(n+1, 2))`
-/

namespace A383769.P11406854060680008032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A318512 (n + 1) : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌉

end

end A383769.P11406854060680008032

noncomputable section

/-- A383769: Denominators of the sequence whose Dirichlet convolution with itself yields cubes (A000578).

Offset 1, canonical program `A383769.P11406854060680008032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383769 (n : ℕ) : ℤ :=
  A383769.P11406854060680008032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384531.P15070268753136582785

`∑{d}[n+1, A018804(#)*A173557((n+1)/#)]`
-/

namespace A384531.P15070268753136582785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A173557 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384531.P15070268753136582785

noncomputable section

/-- A384531: Multiplicative sequence a(n) with a(p^e) = ((2*e+1) * p - 2*e) * p^(e-1) for prime p and e >= 0.

Offset 1, canonical program `A384531.P15070268753136582785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384531 (n : ℕ) : ℤ :=
  A384531.P15070268753136582785.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384868.P5511449840220434533

`A231204(A054429(n+1))-A231204(n+1)`
-/

namespace A384868.P5511449840220434533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 (A054429 (n + 1)).toNat - A231204 (n + 1)

end

end A384868.P5511449840220434533

noncomputable section

/-- A384868: a(n) = Sum_{i=1...|b|} i*(-1)^b_i where b is the lexicographically n-th binary string.

Offset 0, canonical program `A384868.P5511449840220434533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A384868 (n : ℕ) : ℤ :=
  A384868.P5511449840220434533.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A384868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390881.P7996395185274850031

`gcd(A018804(n+1), A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390881.P7996395185274850031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018804 (n + 1)) (A000203 (n + 1))

end

end A390881.P7996395185274850031

noncomputable section

/-- A390881: a(n) = gcd(A018804(n), A000203(n)).

Offset 1, canonical program `A390881.P7996395185274850031`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390881 (n : ℕ) : ℤ :=
  (A390881.P7996395185274850031.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390881.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396514.P190034944072554770

`A018804(n+1)-A000203(n+1)`
-/

namespace A396514.P190034944072554770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) - A000203 (n + 1)

end

end A396514.P190034944072554770

noncomputable section

/-- A396514: a(n) = Sum_{k=1..n, k does not divide n} gcd(k,n).

Offset 1, canonical program `A396514.P190034944072554770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396514 (n : ℕ) : ℤ :=
  A396514.P190034944072554770.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396514.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A397100.P2153576112342565242

`A007814(n+1)-A396409(n)`
-/

namespace A397100.P2153576112342565242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) - A396409 n

end

end A397100.P2153576112342565242

noncomputable section

/-- A397100: a(n) is the number of steps by which n's trajectory under f is ahead of 0's; i.e., f^k(0) = f^(k-a(n))(n) for all sufficiently large k, where f(n) = n XOR 2^A000120(n).

Offset 0, canonical program `A397100.P2153576112342565242`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A396409, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397100 (n : ℕ) : ℤ :=
  A397100.P2153576112342565242.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A396409, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397100.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286568.P15358631486427401094

`1/2*(2+(A000010(n+1)+A286357(n+1))²-A000010(n+1)-3*A286357(n+1))`
-/

namespace A286568.P15358631486427401094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A000010 (n + 1) + A286357 (n + 1)) ^ 2 - A000010 (n + 1) - 3 * A286357 (n + 1) : ℚ)

end

end A286568.P15358631486427401094

noncomputable section

/-- A286568: Compound filter (phi(n) & 2-adic valuation of sigma(n)): a(n) = P(A000010(n), A286357(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286568.P15358631486427401094`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286568 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286568.P15358631486427401094.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286568.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A287107.P12993006803381746333

`A287073(n+1)+A156077(A013947(n+1))`
-/

namespace A287107.P12993006803381746333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287073 (n + 1) + A156077 (A013947 (n + 1)).toNat

end

end A287107.P12993006803381746333

noncomputable section

/-- A287107: Positions of 2 in A287104.

Offset 1, canonical program `A287107.P12993006803381746333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4996 terms. -/
def A287107 (n : ℕ) : ℤ :=
  A287107.P12993006803381746333.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4996 terms. -/
def A287107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288575.P17818525623741595510

`∑[A213911(n)+A007895(n)]`
-/

namespace A288575.P17818525623741595510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 n + A007895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288575.P17818525623741595510

noncomputable section

/-- A288575: Partial sums of A104324.

Offset 0, canonical program `A288575.P17818525623741595510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288575 (n : ℕ) : ℤ :=
  A288575.P17818525623741595510.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288600.P16115501771230486977

`A288375(2-(2-n)%(n+1))`
-/

namespace A288600.P16115501771230486977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288375 (2 - Int.tmod (2 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A288600.P16115501771230486977

noncomputable section

/-- A288600: Fixed point of the mapping 00->0101, 10->1001, starting with 00.

Offset 1, canonical program `A288600.P16115501771230486977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288600 (n : ℕ) : ℤ :=
  A288600.P16115501771230486977.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288929.P9658926497667176175

`char[comp[2*A219641(n)+n+2]-1]`
-/

namespace A288929.P9658926497667176175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219641 n + (n + 2 : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288929.P9658926497667176175

noncomputable section

/-- A288929: Fixed point of the mapping 00->1000, 10->10011, starting with 00.

Offset 1, canonical program `A288929.P9658926497667176175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288929 (n : ℕ) : ℤ :=
  (A288929.P9658926497667176175.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288929.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A290288.P7015897065372757057

`A294487(2*(n+1))-A368058(2*(n+1))`
-/

namespace A290288.P7015897065372757057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294487 (2 * (n + 1)) - A368058 (2 * (n + 1))

end

end A290288.P7015897065372757057

noncomputable section

/-- A290288: Sum of the differences of the larger and smaller parts in the partitions of 2n into two parts with the larger part prime.

Offset 1, canonical program `A290288.P7015897065372757057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A290288 (n : ℕ) : ℤ :=
  A290288.P7015897065372757057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A290288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291770.P14763637493214319991

`A035327(A289831(n+1))`
-/

namespace A291770.P14763637493214319991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A289831 (n + 1)).toNat

end

end A291770.P14763637493214319991

noncomputable section

/-- A291770: A binary encoding of the zeros in ternary representation of n.

Offset 1, canonical program `A291770.P14763637493214319991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A291770 (n : ℕ) : ℤ :=
  A291770.P14763637493214319991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A291770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292601.P906998299720976826

`n-A292600(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292601.P906998299720976826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292600 n

end

end A292601.P906998299720976826

noncomputable section

/-- A292601: a(n) = n - A292600(n).

Offset 0, canonical program `A292601.P906998299720976826`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292600, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292601 (n : ℕ) : ℤ :=
  A292601.P906998299720976826.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292600, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292601.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A294022.P1258060895145082735

`A294487(n+1)-A368058(n+1)`
-/

namespace A294022.P1258060895145082735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294487 (n + 1) - A368058 (n + 1)

end

end A294022.P1258060895145082735

noncomputable section

/-- A294022: Sum of the differences of the larger and smaller parts in the partitions of n into two parts with the larger part prime.

Offset 1, canonical program `A294022.P1258060895145082735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294022 (n : ℕ) : ℤ :=
  A294022.P1258060895145082735.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294113.P16964987193441781902

`A368058(2*n+1)+A056171(2*n+1)`
-/

namespace A294113.P16964987193441781902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368058 (2 * n + 1) + A056171 (2 * n + 1)

end

end A294113.P16964987193441781902

noncomputable section

/-- A294113: Sum of the smaller parts of the partitions of 2n into two parts with larger part prime.

Offset 1, canonical program `A294113.P16964987193441781902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A294113 (n : ℕ) : ℤ :=
  A294113.P16964987193441781902.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A294113.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A297117.P14003803636479694355

`A297114(n+1)+A051953(n+1)`
-/

namespace A297117.P14003803636479694355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297114 (n + 1) + A051953 (n + 1)

end

end A297117.P14003803636479694355

noncomputable section

/-- A297117: Möbius transform of A011371, n minus (number of 1's in binary expansion of n).

Offset 1, canonical program `A297117.P14003803636479694355`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, A297114, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A297117 (n : ℕ) : ℤ :=
  A297117.P14003803636479694355.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, A297114, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A297117.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A298825.P17445611569160264652

`(n+1)*A298826(n+1)`
-/

namespace A298825.P17445611569160264652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A298826 (n + 1)

end

end A298825.P17445611569160264652

noncomputable section

/-- A298825: Row sums of A298824.

Offset 1, canonical program `A298825.P17445611569160264652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A298825 (n : ℕ) : ℤ :=
  A298825.P17445611569160264652.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A298825.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A300720.P15695279460942759688`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300718, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300720 (n : ℕ) : ℤ :=
  A300720.P15695279460942759688.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300718, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300720.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300837.P3407511099178858747

`A300836(n+1)+A007895(n+1)`
-/

namespace A300837.P3407511099178858747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300836 (n + 1) + A007895 (n + 1)

end

end A300837.P3407511099178858747

noncomputable section

/-- A300837: a(n) is the total number of terms (1-digits) in Zeckendorf representation of all divisors of n.

Offset 1, canonical program `A300837.P3407511099178858747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, A300836, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300837 (n : ℕ) : ℤ :=
  A300837.P3407511099178858747.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, A300836, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300837.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A302056.P1047659896841164977

`eq[0, A097195(n)]`
-/

namespace A302056.P1047659896841164977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097195 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302056.P1047659896841164977

noncomputable section

/-- A302056: Numbers k such that the coefficient of x^k in the expansion of Product_{j>=1} (1 - x^j)^4 is zero.

Offset 1, canonical program `A302056.P1047659896841164977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4167 terms. -/
def A302056 (n : ℕ) : ℤ :=
  (A302056.P1047659896841164977.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4167 terms. -/
def A302056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304095.P8518165107337469446

`∑{d}[n+1, A157658(#)*A304096((n+1)/#)]`
-/

namespace A304095.P8518165107337469446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A304096 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304095.P8518165107337469446

noncomputable section

/-- A304095: a(n) is the number of the proper divisors of n that are Lucas numbers larger than 3 (4, 7, 11, 18, ...).

Offset 1, canonical program `A304095.P8518165107337469446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304095 (n : ℕ) : ℤ :=
  A304095.P8518165107337469446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305809.P1603223688838508842

`∑{d}[n+1, A300251(#)*A319684((n+1)/#)]`
-/

namespace A305809.P1603223688838508842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300251 d * A319684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305809.P1603223688838508842

noncomputable section

/-- A305809: Dirichlet convolution of A003415 (Arithmetic derivative) with itself.

Offset 1, canonical program `A305809.P1603223688838508842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305809 (n : ℕ) : ℤ :=
  A305809.P1603223688838508842.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305809.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A309790.P12506806462962635043

`A104895(2*n+3)+A065620(A063946(2*(n+1)))`
-/

namespace A309790.P12506806462962635043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (2 * n + 3) + A065620 (A063946 (2 * (n + 1))).toNat

end

end A309790.P12506806462962635043

noncomputable section

/-- A309790: G.f. A(x) satisfies: A(x) = 2*x*(1 - x)*A(x^2) + x/(1 - x).

Offset 0, canonical program `A309790.P12506806462962635043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A309790 (n : ℕ) : ℤ :=
  A309790.P12506806462962635043.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A309790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316388.P4019904871240066925

`a(A000010(n+1)-1)+a(A051953(n+1)-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A316388.P4019904871240066925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (A000010 (n + 1) - 1).toNat + a (A051953 (n + 1) - 1).toNat

end

end A316388.P4019904871240066925

noncomputable section

/-- A316388: a(n) = a(phi(n)) + a(n-phi(n)) with a(1) = a(2) = a(3) = 1.

Offset 1, canonical program `A316388.P4019904871240066925`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A316388 (n : ℕ) : ℤ :=
  (A316388.P4019904871240066925.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A316388.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318315.P13571981915240890591

`A007814(A318314(n+1))`
-/

namespace A318315.P13571981915240890591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318314 (n + 1)).toNat

end

end A318315.P13571981915240890591

noncomputable section

/-- A318315: The 2-adic valuation of A318314.

Offset 1, canonical program `A318315.P13571981915240890591`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318314, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318315 (n : ℕ) : ℤ :=
  A318315.P13571981915240890591.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318314, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318315.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318465.P12082296130128085348

`2^A318464(n+1)`
-/

namespace A318465.P12082296130128085348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A318464 (n + 1) : ℤ)

end

end A318465.P12082296130128085348

noncomputable section

/-- A318465: The number of Zeckendorf-infinitary divisors of n = Product_{i} p(i)^r(i): divisors d = Product_{i} p(i)^s(i), such that the Zeckendorf expansion (A014417) of each s(i) contains only terms that are in the Zeckendorf expansion of r(i).

Offset 1, canonical program `A318465.P12082296130128085348`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318465 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318465.P12082296130128085348.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318465.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318473.P15254297892022099386

`A007814(A318474(n+1))`
-/

namespace A318473.P15254297892022099386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318474 (n + 1)).toNat

end

end A318473.P15254297892022099386

noncomputable section

/-- A318473: Additive with a(p^e) = A000045(e+1).

Offset 1, canonical program `A318473.P15254297892022099386`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318474, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318473 (n : ℕ) : ℤ :=
  A318473.P15254297892022099386.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318474, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318473.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A320003.P14814290166151194418

`A091954(n+1)-A320015(n+1)`
-/

namespace A320003.P14814290166151194418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1) - A320015 (n + 1)

end

end A320003.P14814290166151194418

noncomputable section

/-- A320003: Number of proper divisors of n of the form 6*k + 3.

Offset 1, canonical program `A320003.P14814290166151194418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320003 (n : ℕ) : ℤ :=
  A320003.P14814290166151194418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320003.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A322359.P4809427501009130692

`A322360(n+1)/A066086(n+1)`
-/

namespace A322359.P4809427501009130692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322360 (n + 1) : ℚ) / (A066086 (n + 1) : ℚ)

end

end A322359.P4809427501009130692

noncomputable section

/-- A322359: Least common multiple of product (p-1) and product (p+1), where p ranges over distinct prime divisors of n.

Offset 1, canonical program `A322359.P4809427501009130692`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066086, A322360, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322359 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322359.P4809427501009130692.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066086, A322360, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322359.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A325321.P4412432402840763013

`A010052(A051953(n+1))`
-/

namespace A325321.P4412432402840763013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A051953 (n + 1)).toNat

end

end A325321.P4412432402840763013

noncomputable section

/-- A325321: a(n) = 1 if cototient of n is a square, 0 otherwise.

Offset 1, canonical program `A325321.P4412432402840763013`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325321 (n : ℕ) : ℤ :=
  A325321.P4412432402840763013.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325321.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327239.P9428732686515301854

`A013947(n+2)-A013947(n+1)`
-/

namespace A327239.P9428732686515301854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 2) - A013947 (n + 1)

end

end A327239.P9428732686515301854

noncomputable section

/-- A327239: For n >= 1, a(n) = b(n+1) - b(n) where b is A013947.

Offset 1, canonical program `A327239.P9428732686515301854`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327239 (n : ℕ) : ℤ :=
  A327239.P9428732686515301854.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327239.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A330740.P3370590016903294651

`A117967(abs(A117966(n)))`
-/

namespace A330740.P3370590016903294651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 |A117966 n|.toNat

end

end A330740.P3370590016903294651

noncomputable section

/-- A330740: a(n) = min(n, A004488(n)), where A004488(n) is base-3 sum n+n without carries.

Offset 0, canonical program `A330740.P3370590016903294651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330740 (n : ℕ) : ℤ :=
  A330740.P3370590016903294651.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330740.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A331891.P10796456041934863719

`∑[2*A119608(n+1)]-A119608(n+1)`
-/

namespace A331891.P10796456041934863719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A119608 (n + 1)

end

end A331891.P10796456041934863719

noncomputable section

/-- A331891: Negabinary palindromes: nonnegative numbers whose negabinary expansion (A039724) is palindromic.

Offset 1, canonical program `A331891.P10796456041934863719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331891 (n : ℕ) : ℤ :=
  A331891.P10796456041934863719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331891.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A338452.P13216430907170277132

`eq[A093653(n+2), A093653(n+3)]+2`
-/

namespace A338452.P13216430907170277132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093653 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093653 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A338452.P13216430907170277132

noncomputable section

/-- A338452: Numbers k such that k and k+1 have the same total binary weight of their divisors (A093653).

Offset 1, canonical program `A338452.P13216430907170277132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A338452 (n : ℕ) : ℤ :=
  (A338452.P13216430907170277132.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A338452.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A341273.P10577388597316029777

`xor(n, A131577(A261283(n)))`
-/

namespace A341273.P10577388597316029777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A131577 (A261283 n).toNat)

end

end A341273.P10577388597316029777

noncomputable section

/-- A341273: If A261283(n) = 0, then a(n) = n, otherwise a(n) is obtained by flipping the A261283(n)-th rightmost bit in the binary expansion of n.

Offset 0, canonical program `A341273.P10577388597316029777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A341273 (n : ℕ) : ℤ :=
  A341273.P10577388597316029777.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A341273.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A342184.P10340909780046926633

`p?[ceil(A289353(n+1)/10)]`
-/

namespace A342184.P10340909780046926633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A289353 (n + 1) : ℚ) / 10⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342184.P10340909780046926633

noncomputable section

/-- A342184: Primes q such that 10*q-3 and 10*q+1 are cousin primes.

Offset 1, canonical program `A342184.P10340909780046926633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1112 terms. -/
def A342184 (n : ℕ) : ℤ :=
  A342184.P10340909780046926633.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1112 terms. -/
def A342184.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A343311.P12285777711636340916

`lt[A324337(n), A082023(n)²]`
-/

namespace A343311.P12285777711636340916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343311.P12285777711636340916

noncomputable section

/-- A343311: Numbers of the form x + y + z with distinct positive integers x,y,z such that (x+y+z) | x*y*z.

Offset 1, canonical program `A343311.P12285777711636340916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343311 (n : ℕ) : ℤ :=
  (A343311.P12285777711636340916.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343501.P17916702806192043918

`2*A338691(n+1)`
-/

namespace A343501.P17916702806192043918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338691 (n + 1)

end

end A343501.P17916702806192043918

noncomputable section

/-- A343501: Positions of 4's in A003324.

Offset 1, canonical program `A343501.P17916702806192043918`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338691, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343501 (n : ℕ) : ℤ :=
  A343501.P17916702806192043918.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338691, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343501.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A348196.P10190356890292704948

`A066339((n+1)²)`
-/

namespace A348196.P10190356890292704948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 ((n + 1) ^ 2)

end

end A348196.P10190356890292704948

noncomputable section

/-- A348196: Number of primes of the form 4k+1 < n^2.

Offset 1, canonical program `A348196.P10190356890292704948`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348196 (n : ℕ) : ℤ :=
  A348196.P10190356890292704948.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348196.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348976.P9987790780550882752

`A000010(n+1)+A300251(n+1)`
-/

namespace A348976.P9987790780550882752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A300251 (n + 1)

end

end A348976.P9987790780550882752

noncomputable section

/-- A348976: Möbius transform of A129283, which is sum of n and its arithmetic derivative.

Offset 1, canonical program `A348976.P9987790780550882752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A300251, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348976 (n : ℕ) : ℤ :=
  A348976.P9987790780550882752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A300251, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348976.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A349659.P4651749158989321582

`A000203(n+1)-A335182(n+1)`
-/

namespace A349659.P4651749158989321582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A335182 (n + 1)

end

end A349659.P4651749158989321582

noncomputable section

/-- A349659: Sum of the nonrefactorable divisors of n.

Offset 1, canonical program `A349659.P4651749158989321582`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335182, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349659 (n : ℕ) : ℤ :=
  A349659.P4651749158989321582.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335182, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349659.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A351561.P9711075868512573755

`A000005(n+1)+A051953(n+1)`
-/

namespace A351561.P9711075868512573755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A051953 (n + 1)

end

end A351561.P9711075868512573755

noncomputable section

/-- A351561: a(n) = n + d(n) - phi(n), where d is the number of divisors function, and phi is the Euler totient function.

Offset 1, canonical program `A351561.P9711075868512573755`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351561 (n : ℕ) : ℤ :=
  A351561.P9711075868512573755.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351561.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A352749.P9390807807202768394

`A000720(n+1)*A035250(n+1)`
-/

namespace A352749.P9390807807202768394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A035250 (n + 1)

end

end A352749.P9390807807202768394

noncomputable section

/-- A352749: a(n) = pi(n) * (pi(2n-1) - pi(n-1)).

Offset 1, canonical program `A352749.P9390807807202768394`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352749 (n : ℕ) : ℤ :=
  A352749.P9390807807202768394.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352749.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352753.P3714199880856668914

`A035250(n+1)*A034387(n+1)`
-/

namespace A352753.P3714199880856668914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (n + 1) * A034387 (n + 1)

end

end A352753.P3714199880856668914

noncomputable section

/-- A352753: a(n) = (pi(2n-1) - pi(n-1)) * Sum_{p <= n, p prime} p.

Offset 1, canonical program `A352753.P3714199880856668914`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, A035250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352753 (n : ℕ) : ℤ :=
  A352753.P3714199880856668914.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, A035250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352753.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A353643.P5389742288665032552`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A062401, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353643 (n : ℕ) : ℤ :=
  (A353643.P5389742288665032552.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A062401, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353643.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353946.P10018284100613643832

`A035250(n+1)^A000720(n+1)-C(2, n+2)`
-/

namespace A353946.P10018284100613643832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035250 (n + 1) : ℚ) ^ (A000720 (n + 1) : ℤ) - (Nat.choose 2 (n + 2) : ℚ)

end

end A353946.P10018284100613643832

noncomputable section

/-- A353946: a(n) = (pi(2n-1) - pi(n-1))^pi(n) for n > 1, a(1) = 0.

Offset 1, canonical program `A353946.P10018284100613643832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. -/
def A353946 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353946.P10018284100613643832.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. -/
def A353946.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A354112.P8571420097554948375

`A093653(A000225(n+1))`
-/

namespace A354112.P8571420097554948375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093653 (A000225 (n + 1)).toNat

end

end A354112.P8571420097554948375

noncomputable section

/-- A354112: Total number of 1's in binary expansion of all divisors of 2^n-1.

Offset 1, canonical program `A354112.P8571420097554948375`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093653, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354112 (n : ℕ) : ℤ :=
  A354112.P8571420097554948375.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093653, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354112.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A357625.P1034363125234446896

`eq[1, A124754(and(n, A006068(n)))+1]`
-/

namespace A357625.P1034363125234446896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (Int.land (n : ℤ) (A006068 n)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A357625.P1034363125234446896

noncomputable section

/-- A357625: Numbers k such that the k-th composition in standard order has half-alternating sum 0.

Offset 1, canonical program `A357625.P1034363125234446896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 749 terms. -/
def A357625 (n : ℕ) : ℤ :=
  (A357625.P1034363125234446896.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 749 terms. -/
def A357625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357696.P6244782871759486007

`filter[A357695(n+1), A294930(#)]`
-/

namespace A357696.P6244782871759486007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A357696.P6244782871759486007

noncomputable section

/-- A357696: Cubefree primitive abundant numbers: cubefree abundant numbers having no abundant proper divisor.

Offset 1, canonical program `A357696.P6244782871759486007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1876 terms. -/
def A357696 (n : ℕ) : ℤ :=
  A357696.P6244782871759486007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1876 terms. -/
def A357696.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A359161.P8726554361443463211

`filter[A091113(n+1), A353557(#)]`
-/

namespace A359161.P8726554361443463211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353557 (f1 j).toNat = 1) n)

end

end A359161.P8726554361443463211

noncomputable section

/-- A359161: Numbers of the form 4u+1 with an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A359161.P8726554361443463211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6282 terms. -/
def A359161 (n : ℕ) : ℤ :=
  A359161.P8726554361443463211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6282 terms. -/
def A359161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359163.P2654985658167397465

`filter[A091236(n+1), A353557(#)]`
-/

namespace A359163.P2654985658167397465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353557 (f1 j).toNat = 1) n)

end

end A359163.P2654985658167397465

noncomputable section

/-- A359163: Numbers of the form 4u+3 with an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A359163.P2654985658167397465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6172 terms. -/
def A359163 (n : ℕ) : ℤ :=
  A359163.P2654985658167397465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6172 terms. -/
def A359163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359370.P4336454204609883909

`A166486(n+1)-A359372(n+1)`
-/

namespace A359370.P4336454204609883909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (n + 1) - A359372 (n + 1)

end

end A359370.P4336454204609883909

noncomputable section

/-- A359370: a(n) = 1 if n is not a multiple of 4 and has an even number of prime factors (with multiplicity), otherwise a(n) = 0.

Offset 1, canonical program `A359370.P4336454204609883909`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359372, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359370 (n : ℕ) : ℤ :=
  A359370.P4336454204609883909.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359372, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359370.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A362008.P15802057352919654675

`eq[9, dr(A051953(n+1))]+1`
-/

namespace A362008.P15802057352919654675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A051953 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A362008.P15802057352919654675

noncomputable section

/-- A362008: Numbers whose Euler's cototient is divisible by 9.

Offset 1, canonical program `A362008.P15802057352919654675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1609 terms. -/
def A362008 (n : ℕ) : ℤ :=
  (A362008.P15802057352919654675.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1609 terms. -/
def A362008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363259.P18232685269626442063

`A363904(Δ[n²])`
-/

namespace A363259.P18232685269626442063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363904 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A363259.P18232685269626442063

noncomputable section

/-- A363259: Expansion of Sum_{k>0} k * x^(2*k) / (1 - x^(4*k-1)).

Offset 1, canonical program `A363259.P18232685269626442063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363259 (n : ℕ) : ℤ :=
  A363259.P18232685269626442063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363259.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A366643.P15455375307676145949

`A046951(A165725(n+1)*A165725(n+1))`
-/

namespace A366643.P15455375307676145949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A165725 (n + 1) * A165725 (n + 1)).toNat

end

end A366643.P15455375307676145949

noncomputable section

/-- A366643: a(n) is the number of divisors of n that are coprime to the terms of A366642.

Offset 1, canonical program `A366643.P15455375307676145949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A366643 (n : ℕ) : ℤ :=
  A366643.P15455375307676145949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A366643.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A368050.P9877690928199603770

`A193564(2*n+3)`
-/

namespace A368050.P9877690928199603770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193564 (2 * n + 3)

end

end A368050.P9877690928199603770

noncomputable section

/-- A368050: Main diagonal of the array where row n=0 lists the natural numbers and each new row n=1,2,... is found by taking the number n in the previous row, and "leaping" it over the next n terms to its right, keeping the other numbers fixed (see example).

Offset 1, canonical program `A368050.P9877690928199603770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5472 terms. -/
def A368050 (n : ℕ) : ℤ :=
  A368050.P9877690928199603770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5472 terms. -/
def A368050.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A368673.P18187719419902595963

`A368642(n+1)-A064608(n+1)`
-/

namespace A368673.P18187719419902595963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368642 (n + 1) - A064608 (n + 1)

end

end A368673.P18187719419902595963

noncomputable section

/-- A368673: Number of squarefree numbers less than n that do not divide n.

Offset 1, canonical program `A368673.P18187719419902595963`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064608, A368642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368673 (n : ℕ) : ℤ :=
  A368673.P18187719419902595963.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064608, A368642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368673.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368804.P4492888258836152047

`A007088(A362030(n+1))`
-/

namespace A368804.P4492888258836152047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A362030 (n + 1)).toNat

end

end A368804.P4492888258836152047

noncomputable section

/-- A368804: Irregular triangle read by rows: T(n,k) is the k-th balanced binary word of length 2*n, where words within a row are in lexicographical order (with leading zeros removed and interpreted as decimal numbers).

Offset 1, canonical program `A368804.P4492888258836152047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368804 (n : ℕ) : ℤ :=
  A368804.P4492888258836152047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368804.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A371263.P7260451375417791318

`A371256(A117967(n))`
-/

namespace A371263.P7260451375417791318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371256 (A117967 n).toNat

end

end A371263.P7260451375417791318

noncomputable section

/-- A371263: The run lengths transform of the balanced ternary expansion of n corresponds to the run lengths transform of the binary expansion of a(n).

Offset 0, canonical program `A371263.P7260451375417791318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3281 terms. -/
def A371263 (n : ℕ) : ℤ :=
  A371263.P7260451375417791318.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3281 terms. -/
def A371263.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A373303.P10871280826768265393

`A371176(n+2)-A371176(n+1)`
-/

namespace A373303.P10871280826768265393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371176 (n + 2) - A371176 (n + 1)

end

end A373303.P10871280826768265393

noncomputable section

/-- A373303: First differences of A371176.

Offset 1, canonical program `A373303.P10871280826768265393`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A371176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373303 (n : ℕ) : ℤ :=
  A373303.P10871280826768265393.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A371176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373303.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A378767.P14747477378798876079

`filter[A046099(n+1), A355447(#)]`
-/

namespace A378767.P14747477378798876079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A378767.P14747477378798876079

noncomputable section

/-- A378767: Numbers k that are not prime powers which are divisible by a cube greater than 1.

Offset 1, canonical program `A378767.P14747477378798876079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9962 terms. -/
def A378767 (n : ℕ) : ℤ :=
  A378767.P14747477378798876079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9962 terms. -/
def A378767.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A379739.P13853497522422973330

`A193564(2*(n+2))`
-/

namespace A379739.P13853497522422973330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193564 (2 * (n + 2))

end

end A379739.P13853497522422973330

noncomputable section

/-- A379739: Subdiagonal of the Hurt-Sada array.

Offset 1, canonical program `A379739.P13853497522422973330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5472 terms. -/
def A379739 (n : ℕ) : ℤ :=
  A379739.P13853497522422973330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5472 terms. -/
def A379739.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A380079.P368606423001304580

`A026272(A022342(n+2))`
-/

namespace A380079.P368606423001304580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (A022342 (n + 2)).toNat

end

end A380079.P368606423001304580

noncomputable section

/-- A380079: Start with a list of the positive integers L in increasing order. Then, at turn n>=1, element n jumps from its current position, m, to position m+n. Then a(n) = L(m+1).

Offset 1, canonical program `A380079.P368606423001304580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A380079 (n : ℕ) : ℤ :=
  A380079.P368606423001304580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A380079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380161.P11294645984776540590

`A000010(A055231(n+1))`
-/

namespace A380161.P11294645984776540590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A055231 (n + 1)).toNat

end

end A380161.P11294645984776540590

noncomputable section

/-- A380161: a(n) is the value of the Euler totient function when applied to the powerfree part of n.

Offset 1, canonical program `A380161.P11294645984776540590`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380161 (n : ℕ) : ℤ :=
  A380161.P11294645984776540590.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380161.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380443.P17503996144246579122

`A004525(A378299(n+1))`
-/

namespace A380443.P17503996144246579122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A378299 (n + 1)).toNat

end

end A380443.P17503996144246579122

noncomputable section

/-- A380443: a(n) = numerator(b(n)), where b(n) = b(n/2)/2 for n even and 1 - b((n-1)/2)/2 for n odd with b(1) = 1.

Offset 1, canonical program `A380443.P17503996144246579122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A380443 (n : ℕ) : ℤ :=
  A380443.P17503996144246579122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A380443.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A384048.P15247859992876317530`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384048 (n : ℕ) : ℤ :=
  A384048.P15247859992876317530.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384050.P7808103291810137926

`A000010(A055231(n+1))*A057521(n+1)`
-/

namespace A384050.P7808103291810137926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A055231 (n + 1)).toNat * A057521 (n + 1)

end

end A384050.P7808103291810137926

noncomputable section

/-- A384050: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a powerful number.

Offset 1, canonical program `A384050.P7808103291810137926`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384050 (n : ℕ) : ℤ :=
  A384050.P7808103291810137926.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384050.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A385122.P7971090258386335497

`A062821(n+1)-A163109(n+1)`
-/

namespace A385122.P7971090258386335497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1) - A163109 (n + 1)

end

end A385122.P7971090258386335497

noncomputable section

/-- A385122: a(n) = d(phi(n)) - phi(d(n)) where d(n) = A000005(n) is the number of divisors and phi(n) = A000010(n) is the Euler totient function.

Offset 1, canonical program `A385122.P7971090258386335497`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062821, A163109, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385122 (n : ℕ) : ℤ :=
  A385122.P7971090258386335497.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062821, A163109, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385122.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A387350.P5346268956136855131

`A002251(A005652(n+1))`
-/

namespace A387350.P5346268956136855131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A005652 (n + 1)).toNat

end

end A387350.P5346268956136855131

noncomputable section

/-- A387350: Positions of 1's in A387348.

Offset 1, canonical program `A387350.P5346268956136855131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A387350 (n : ℕ) : ℤ :=
  A387350.P5346268956136855131.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A387350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387362.P10061794841326187916

`∩[A003277(n+1)-2, A003277(n+1)]`
-/

namespace A387362.P10061794841326187916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387362.P10061794841326187916

noncomputable section

/-- A387362: Cyclic numbers k such that k+2 is also a cyclic number.

Offset 1, canonical program `A387362.P10061794841326187916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5319 terms. -/
def A387362 (n : ℕ) : ℤ :=
  (A387362.P10061794841326187916.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5319 terms. -/
def A387362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389838.P12199354101649347898

`∪[A002808(n+1), A053726(n+1)]`
-/

namespace A389838.P12199354101649347898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389838.P12199354101649347898

noncomputable section

/-- A389838: Numbers of the form j*k or j*k + (j-1)*(k-1) with j, k > 1.

Offset 1, canonical program `A389838.P12199354101649347898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389838 (n : ℕ) : ℤ :=
  (A389838.P12199354101649347898.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392090.P974268744326610450

`A047994(A356193(n+1))`
-/

namespace A392090.P974268744326610450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A356193 (n + 1)).toNat

end

end A392090.P974268744326610450

noncomputable section

/-- A392090: The unitary totient of the smallest cubefull number that is divisible by n.

Offset 1, canonical program `A392090.P974268744326610450`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A356193, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392090 (n : ℕ) : ℤ :=
  A392090.P974268744326610450.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A356193, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392090.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392980.P15181118893878896143

`A392236(2*(n+1))/2`
-/

namespace A392980.P15181118893878896143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392236 (2 * (n + 1)) : ℚ) / 2

end

end A392980.P15181118893878896143

noncomputable section

/-- A392980: Positions of zeros in A393336.

Offset 1, canonical program `A392980.P15181118893878896143`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A392236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392980 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392980.P15181118893878896143.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A392236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392980.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A393976.P11083541113519582612

`A127473(n+1)+A000010(n+1)+1`
-/

namespace A393976.P11083541113519582612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127473 (n + 1) + A000010 (n + 1) + 1

end

end A393976.P11083541113519582612

noncomputable section

/-- A393976: a(n) = phi(n)^2 + phi(n) + 1, where phi is Euler's totient function.

Offset 1, canonical program `A393976.P11083541113519582612`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A127473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A393976 (n : ℕ) : ℤ :=
  A393976.P11083541113519582612.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A127473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A393976.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395990.P6546272165125092159

`A000005(n+1)+A076752(n+1)-A046951(n+1)`
-/

namespace A395990.P6546272165125092159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A076752 (n + 1) - A046951 (n + 1)

end

end A395990.P6546272165125092159

noncomputable section

/-- A395990: a(n) = Sum_{d|n} d^(tau(n/d) mod 2).

Offset 1, canonical program `A395990.P6546272165125092159`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, A076752, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A395990 (n : ℕ) : ℤ :=
  A395990.P6546272165125092159.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, A076752, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A395990.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A283476.P12626958136040058516

`1+eq[1, A323511(n+1)]`
-/

namespace A283476.P12626958136040058516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323511 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283476.P12626958136040058516

noncomputable section

/-- A283476: Squarefree numbers n for which A079559(A048675(n)) = 1.

Offset 1, canonical program `A283476.P12626958136040058516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A283476 (n : ℕ) : ℤ :=
  (A283476.P12626958136040058516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A283476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285096.P16169422435609313154

`∩[A061385(n+1), A069709(n+1)]`
-/

namespace A285096.P16169422435609313154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285096.P16169422435609313154

noncomputable section

/-- A285096: Primes with integer arithmetic mean of digits = 2 in base 10.

Offset 1, canonical program `A285096.P16169422435609313154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 571 terms. -/
def A285096 (n : ℕ) : ℤ :=
  (A285096.P16169422435609313154.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 571 terms. -/
def A285096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285225.P10692360427278529095

`p?[A061387(n+1)]`
-/

namespace A285225.P10692360427278529095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285225.P10692360427278529095

noncomputable section

/-- A285225: Primes with integer arithmetic mean of digits = 4 in base 10.

Offset 1, canonical program `A285225.P10692360427278529095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 760 terms. -/
def A285225 (n : ℕ) : ℤ :=
  A285225.P10692360427278529095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 760 terms. -/
def A285225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285226.P16444782336951835408

`p?[A061388(n+1)]`
-/

namespace A285226.P16444782336951835408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285226.P16444782336951835408

noncomputable section

/-- A285226: Primes with integer arithmetic mean of digits = 5 in base 10.

Offset 1, canonical program `A285226.P16444782336951835408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 840 terms. -/
def A285226 (n : ℕ) : ℤ :=
  A285226.P16444782336951835408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 840 terms. -/
def A285226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285508.P10690134456776123429

`∪[A030078(n+1), A054753(n+1)]`
-/

namespace A285508.P10690134456776123429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285508.P10690134456776123429

noncomputable section

/-- A285508: Numbers with exactly three prime factors, not all distinct.

Offset 1, canonical program `A285508.P10690134456776123429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285508 (n : ℕ) : ℤ :=
  (A285508.P10690134456776123429.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286228.P2619244444952308733

`∪[A054753(n+1), A280076(n+1)]`
-/

namespace A286228.P2619244444952308733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286228.P2619244444952308733

noncomputable section

/-- A286228: Numbers n such that d(n) = 2^omega(n) + omega(n) where d = A000005 and omega = A001221.

Offset 1, canonical program `A286228.P2619244444952308733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286228 (n : ℕ) : ℤ :=
  (A286228.P2619244444952308733.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289555.P9214579124908911506

`lt[A122179(n+1), 2]+1`
-/

namespace A289555.P9214579124908911506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122179 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A289555.P9214579124908911506

noncomputable section

/-- A289555: Numbers that are not the product of two distinct composite numbers (A002808).

Offset 1, canonical program `A289555.P9214579124908911506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6428 terms. -/
def A289555 (n : ℕ) : ℤ :=
  (A289555.P9214579124908911506.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6428 terms. -/
def A289555.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A292145.P11540186890732361601

`A292144(A013929(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292145.P11540186890732361601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292144 (A013929 (n + 1)).toNat

end

end A292145.P11540186890732361601

noncomputable section

/-- A292145: A permutation of the natural numbers: A292144(A013929(n)).

Offset 1, canonical program `A292145.P11540186890732361601`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A292144, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A292145 (n : ℕ) : ℤ :=
  A292145.P11540186890732361601.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A292144, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A292145.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294060.P329766733442987257

`(n+1)*A262869(n+1)-2*A262871(n+1)`
-/

namespace A294060.P329766733442987257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A262869 (n + 1) - 2 * A262871 (n + 1)

end

end A294060.P329766733442987257

noncomputable section

/-- A294060: Sum of the differences of the larger and smaller parts in the partitions of n into two parts with the smaller part squarefree.

Offset 1, canonical program `A294060.P329766733442987257`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262869, A262871, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294060 (n : ℕ) : ℤ :=
  A294060.P329766733442987257.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262869, A262871, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294060.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294285.P4641961170870907035

`∑[n*char[∏{p}[n, #]]]-A262871(n+1)`
-/

namespace A294285.P4641961170870907035
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A262871 (n + 1)

end

end A294285.P4641961170870907035

noncomputable section

/-- A294285: Sum of the larger parts of the partitions of n into two distinct parts with larger part squarefree.

Offset 1, canonical program `A294285.P4641961170870907035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A294285 (n : ℕ) : ℤ :=
  A294285.P4641961170870907035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A294285.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A306217.P10231340410320966270

`filter[A045718(n), A354926(#)]`
-/

namespace A306217.P10231340410320966270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A306217.P10231340410320966270

noncomputable section

/-- A306217: Sphenic numbers with a prime nearest neighbor.

Offset 1, canonical program `A306217.P10231340410320966270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1708 terms. -/
def A306217 (n : ℕ) : ℤ :=
  A306217.P10231340410320966270.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1708 terms. -/
def A306217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308339.P12363408473159488480

`eq[1, A239656(n+1)]+1`
-/

namespace A308339.P12363408473159488480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A308339.P12363408473159488480

noncomputable section

/-- A308339: Sphenic number indices of A215217.

Offset 1, canonical program `A308339.P12363408473159488480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A308339 (n : ℕ) : ℤ :=
  (A308339.P12363408473159488480.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A308339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316561.P12406151038005718592

`record[∏{p}[A061387(n+2), #]]`
-/

namespace A316561.P12406151038005718592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316561.P12406151038005718592

noncomputable section

/-- A316561: Squarefree numbers whose arithmetic mean of digits is 4.

Offset 1, canonical program `A316561.P12406151038005718592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6779 terms. -/
def A316561 (n : ℕ) : ℤ :=
  (A316561.P12406151038005718592.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6779 terms. -/
def A316561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320515.P891390049597261690

`record[A007913(A320514(n+2))]`
-/

namespace A320515.P891390049597261690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A320514 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320515.P891390049597261690

noncomputable section

/-- A320515: Squarefree k > 1 with sigma(sigma(k)) < 2*k + 1.

Offset 1, canonical program `A320515.P891390049597261690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3608 terms. -/
def A320515 (n : ℕ) : ℤ :=
  A320515.P891390049597261690.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3608 terms. -/
def A320515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325470.P15058644850768859444

`A187794(n+1)+A000120(A059268(n))`
-/

namespace A325470.P15058644850768859444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187794 (n + 1) + A000120 (A059268 n).toNat

end

end A325470.P15058644850768859444

noncomputable section

/-- A325470: a(n) is the sum of divisors d of n such that d divides sigma(d).

Offset 1, canonical program `A325470.P15058644850768859444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A325470 (n : ℕ) : ℤ :=
  A325470.P15058644850768859444.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A325470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326054.P11521875358712095530

`A326053(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326054.P11521875358712095530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326053 (n + 1) - (n + 1 : ℤ)

end

end A326054.P11521875358712095530

noncomputable section

/-- A326054: a(n) = A326053(n) - n, where A326053 gives the sum of all other divisors of n except the largest square divisor.

Offset 1, canonical program `A326054.P11521875358712095530`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326053, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326054 (n : ℕ) : ℤ :=
  A326054.P11521875358712095530.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326053, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326054.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326129.P16648833890386583116

`gcd(A326127(n+1), A326128(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326129.P16648833890386583116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A326127 (n + 1)) (A326128 (n + 1))

end

end A326129.P16648833890386583116

noncomputable section

/-- A326129: a(n) = gcd(A326127(n), A326128(n)).

Offset 1, canonical program `A326129.P16648833890386583116`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326127, A326128, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326129 (n : ℕ) : ℤ :=
  (A326129.P16648833890386583116.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326127, A326128, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326129.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328728.P9496393580234342524

`A328749(A328727(n+1))`
-/

namespace A328728.P9496393580234342524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328749 (A328727 (n + 1)).toNat

end

end A328728.P9496393580234342524

noncomputable section

/-- A328728: a(n) = Sum_{k = 0..w and t_k > 0} (-1)^t_k * 2^k, where Sum_{k = 0..w} t_k * 3^k is the ternary representation of A328727(n).

Offset 1, canonical program `A328728.P9496393580234342524`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328727, A328749, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328728 (n : ℕ) : ℤ :=
  A328728.P9496393580234342524.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328727, A328749, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328728.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331072.P15370853631456897053

`∑[A122179(n+1)+ceil(∏{e}[n+1, #+1]/2)]`
-/

namespace A331072.P15370853631456897053
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122179 (n + 1) + ⌈((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331072.P15370853631456897053

noncomputable section

/-- A331072: a(n) = Sum_{k = 1..n} u_3(k), where u_3 = A034836.

Offset 1, canonical program `A331072.P15370853631456897053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331072 (n : ℕ) : ℤ :=
  A331072.P15370853631456897053.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332730.P8572861949830629075

`∑{d}[n+1, A322483(#)]`
-/

namespace A332730.P8572861949830629075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322483 d

end

end A332730.P8572861949830629075

noncomputable section

/-- A332730: a(n) = Sum_{d|n} tau(d/gcd(d, n/d)), where tau = A000005.

Offset 1, canonical program `A332730.P8572861949830629075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332730 (n : ℕ) : ℤ :=
  A332730.P8572861949830629075.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336510.P14148724725539657442

`xor(a(n-1), A248663(n+1))` with `a(0)=0`
-/

namespace A336510.P14148724725539657442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (n - 1)) (A248663 (n + 1))

end

end A336510.P14148724725539657442

noncomputable section

/-- A336510: a(n) = Sum_{p | A055204(n)} 2^(pi(p) - 1).

Offset 1, canonical program `A336510.P14148724725539657442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A336510 (n : ℕ) : ℤ :=
  A336510.P14148724725539657442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A336510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336615.P1929992287404199022

`eq[2, A295878(n+1)]+1`
-/

namespace A336615.P1929992287404199022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295878 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336615.P1929992287404199022

noncomputable section

/-- A336615: Numbers of the form p * m^2, where p is prime and m > 0 is not divisible by p.

Offset 1, canonical program `A336615.P1929992287404199022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9899 terms. -/
def A336615 (n : ℕ) : ℤ :=
  (A336615.P1929992287404199022.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9899 terms. -/
def A336615.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A350221.P7711641196611513956

`A309081((n+1)²)`
-/

namespace A350221.P7711641196611513956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309081 ((n + 1) ^ 2)

end

end A350221.P7711641196611513956

noncomputable section

/-- A350221: a(n) = Sum_{k=1..n} (-1)^(k+1) * floor((n/k)^2).

Offset 1, canonical program `A350221.P7711641196611513956`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A309081, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350221 (n : ℕ) : ℤ :=
  A350221.P7711641196611513956.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A309081, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350221.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351558.P12959759109943034203

`and(n, A248663(∏{p}[n, #]))`
-/

namespace A351558.P12959759109943034203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A248663 (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A351558.P12959759109943034203

noncomputable section

/-- A351558: a(n) = A048675(gcd(n, A019565(n))).

Offset 0, canonical program `A351558.P12959759109943034203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2243 terms. -/
def A351558 (n : ℕ) : ℤ :=
  A351558.P12959759109943034203.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2243 terms. -/
def A351558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352273.P15168054115810300813

`filter[A055048(n+1), A035263(#)]`
-/

namespace A352273.P15168054115810300813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A352273.P15168054115810300813

noncomputable section

/-- A352273: Numbers whose squarefree part is congruent to 5 modulo 6.

Offset 1, canonical program `A352273.P15168054115810300813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6659 terms. -/
def A352273 (n : ℕ) : ℤ :=
  A352273.P15168054115810300813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6659 terms. -/
def A352273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353472.P18369739324795552969

`char[A054753(n+1)-1]`
-/

namespace A353472.P18369739324795552969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353472.P18369739324795552969

noncomputable section

/-- A353472: a(n) = 1 if n is a product of a prime and the square of a different prime (p^2 * q), otherwise 0.

Offset 1, canonical program `A353472.P18369739324795552969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353472 (n : ℕ) : ℤ :=
  (A353472.P18369739324795552969.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358770.P14969810485770993373

`A035263(n+1)*A358769(n+1)`
-/

namespace A358770.P14969810485770993373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) * A358769 (n + 1)

end

end A358770.P14969810485770993373

noncomputable section

/-- A358770: a(n) = 1 if n is of the form p * m^2, where p is an odd prime and m is a natural number >= 1, otherwise 0.

Offset 1, canonical program `A358770.P14969810485770993373`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358769, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358770 (n : ℕ) : ℤ :=
  A358770.P14969810485770993373.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358769, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358770.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359870.P1653634179700732458

`lt[A001414(n+1), A007913(A350390(n+1))]+1`
-/

namespace A359870.P1653634179700732458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A350390 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A359870.P1653634179700732458

noncomputable section

/-- A359870: Numbers whose product of distinct prime factors is greater than the sum of its prime factors (with repetition).

Offset 1, canonical program `A359870.P1653634179700732458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8550 terms. -/
def A359870 (n : ℕ) : ℤ :=
  (A359870.P1653634179700732458.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8550 terms. -/
def A359870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365337.P17860016322392539795

`A000203(A350390(n+1))`
-/

namespace A365337.P17860016322392539795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A350390 (n + 1)).toNat

end

end A365337.P17860016322392539795

noncomputable section

/-- A365337: The sum of divisors of the largest exponentially odd number dividing n.

Offset 1, canonical program `A365337.P17860016322392539795`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350390, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365337 (n : ℕ) : ℤ :=
  A365337.P17860016322392539795.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350390, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365337.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365345.P13783101688852051196

`A000005(A053143(n+1))`
-/

namespace A365345.P13783101688852051196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A053143 (n + 1)).toNat

end

end A365345.P13783101688852051196

noncomputable section

/-- A365345: The number of divisors of the smallest square divisible by n.

Offset 1, canonical program `A365345.P13783101688852051196`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053143, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365345 (n : ℕ) : ℤ :=
  A365345.P13783101688852051196.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053143, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365345.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365346.P13037943139291011402

`A000203(A053143(n+1))`
-/

namespace A365346.P13037943139291011402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A053143 (n + 1)).toNat

end

end A365346.P13037943139291011402

noncomputable section

/-- A365346: The sum of divisors of the smallest square divisible by n.

Offset 1, canonical program `A365346.P13037943139291011402`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053143, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365346 (n : ℕ) : ℤ :=
  A365346.P13037943139291011402.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053143, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365346.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365551.P16217230584168280310

`A322483(A356191(n+1))`
-/

namespace A365551.P16217230584168280310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A356191 (n + 1)).toNat

end

end A365551.P16217230584168280310

noncomputable section

/-- A365551: The number of exponentially odd divisors of the smallest exponentially odd number divisible by n.

Offset 1, canonical program `A365551.P16217230584168280310`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322483, A356191, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365551 (n : ℕ) : ℤ :=
  A365551.P16217230584168280310.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322483, A356191, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365551.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365784.P9414466859234964261

`A126706(n+1)/A365783(n+1)`
-/

namespace A365784.P9414466859234964261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126706 (n + 1) : ℚ) / (A365783 (n + 1) : ℚ)

end

end A365784.P9414466859234964261

noncomputable section

/-- A365784: a(n) = A126706(n) divided by its squarefree kernel.

Offset 1, canonical program `A365784.P9414466859234964261`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126706, A365783, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365784 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A365784.P9414466859234964261.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126706, A365783, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365784.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365785.P6855440073540334258

`A387944(A365783(n+1))`
-/

namespace A365785.P6855440073540334258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387944 (A365783 (n + 1)).toNat

end

end A365785.P6855440073540334258

noncomputable section

/-- A365785: a(n) = k such that A120944(k) is the squarefree kernel of A126706(n).

Offset 1, canonical program `A365785.P6855440073540334258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7774 terms. -/
def A365785 (n : ℕ) : ℤ :=
  A365785.P6855440073540334258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7774 terms. -/
def A365785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365829.P2680897813873898775

`record[A007913(A246716(n+1))]`
-/

namespace A365829.P2680897813873898775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A246716 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A365829.P2680897813873898775

noncomputable section

/-- A365829: Squarefree non-semiprimes.

Offset 1, canonical program `A365829.P2680897813873898775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4722 terms. -/
def A365829 (n : ℕ) : ℤ :=
  A365829.P2680897813873898775.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4722 terms. -/
def A365829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367991.P5779548576678775471

`A048250(n+1)/A367990(n+1)`
-/

namespace A367991.P5779548576678775471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A367990 (n + 1) : ℚ)

end

end A367991.P5779548576678775471

noncomputable section

/-- A367991: The sum of the divisors of the squarefree part of n.

Offset 1, canonical program `A367991.P5779548576678775471`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367990, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367991 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367991.P5779548576678775471.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367990, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367991.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368170.P17133771726429753802

`A057521(A350390(n+1))`
-/

namespace A368170.P17133771726429753802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A350390 (n + 1)).toNat

end

end A368170.P17133771726429753802

noncomputable section

/-- A368170: The largest cubefull exponentially odd divisor of n.

Offset 1, canonical program `A368170.P17133771726429753802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368170 (n : ℕ) : ℤ :=
  A368170.P17133771726429753802.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368170.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A368468.P2584022470948144189`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, A322483, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368468 (n : ℕ) : ℤ :=
  A368468.P2584022470948144189.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, A322483, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372601.P13128133087775148390

`A051903(A350390(n+1))`
-/

namespace A372601.P13128133087775148390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A350390 (n + 1)).toNat

end

end A372601.P13128133087775148390

noncomputable section

/-- A372601: The maximal exponent in the prime factorization of the largest exponentially odd divisor of n.

Offset 1, canonical program `A372601.P13128133087775148390`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A350390, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372601 (n : ℕ) : ℤ :=
  A372601.P13128133087775148390.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A350390, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372601.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A376715.P17313450320270734925

`filter[A265640(n+1), A066247(#)]`
-/

namespace A376715.P17313450320270734925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A376715.P17313450320270734925

noncomputable section

/-- A376715: Composite numbers in A265640.

Offset 1, canonical program `A376715.P17313450320270734925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5018 terms. -/
def A376715 (n : ℕ) : ℤ :=
  A376715.P17313450320270734925.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5018 terms. -/
def A376715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376720.P7784690848056402490

`A126706(n+1)*A365783(n+1)`
-/

namespace A376720.P7784690848056402490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1) * A365783 (n + 1)

end

end A376720.P7784690848056402490

noncomputable section

/-- A376720: Product of numbers m that are neither squarefree nor prime powers and rad(m), where rad = A007947.

Offset 1, canonical program `A376720.P7784690848056402490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376720 (n : ℕ) : ℤ :=
  A376720.P7784690848056402490.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385132.P10498133729348376008

`n+1-A385133(n+1)`
-/

namespace A385132.P10498133729348376008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A385133 (n + 1)

end

end A385132.P10498133729348376008

noncomputable section

/-- A385132: The number of integers k from 1 to n such that gcd(n, k) has an even maximum exponent in its prime factorization.

Offset 1, canonical program `A385132.P10498133729348376008`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385133, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385132 (n : ℕ) : ℤ :=
  A385132.P10498133729348376008.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385133, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385132.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A392085.P14049026985306902224

`A047994(A019554(n+1))`
-/

namespace A392085.P14049026985306902224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A019554 (n + 1)).toNat

end

end A392085.P14049026985306902224

noncomputable section

/-- A392085: The unitary totient of the smallest number whose square is divisible by n.

Offset 1, canonical program `A392085.P14049026985306902224`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019554, A047994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392085 (n : ℕ) : ℤ :=
  A392085.P14049026985306902224.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019554, A047994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392085.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392087.P1327224941349964914

`A047994(A053143(n+1))`
-/

namespace A392087.P1327224941349964914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A053143 (n + 1)).toNat

end

end A392087.P1327224941349964914

noncomputable section

/-- A392087: The unitary totient of the smallest square divisible by n.

Offset 1, canonical program `A392087.P1327224941349964914`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A053143, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392087 (n : ℕ) : ℤ :=
  A392087.P1327224941349964914.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A053143, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392087.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392168.P7882618173264057118

`A001615(A053143(n+1))`
-/

namespace A392168.P7882618173264057118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A053143 (n + 1)).toNat

end

end A392168.P7882618173264057118

noncomputable section

/-- A392168: The Dedekind psi function value of the smallest square divisible by n.

Offset 1, canonical program `A392168.P7882618173264057118`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053143, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392168 (n : ℕ) : ℤ :=
  A392168.P7882618173264057118.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053143, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392168.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A398421.P3891246051767450638

`∩[A053850(n+1), A054753(n+1)]`
-/

namespace A398421.P3891246051767450638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398421.P3891246051767450638

noncomputable section

/-- A398421: Odd numbers of the form p^2*q, where p and q are distinct odd primes.

Offset 1, canonical program `A398421.P3891246051767450638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2955 terms. -/
def A398421 (n : ℕ) : ℤ :=
  (A398421.P3891246051767450638.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2955 terms. -/
def A398421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285227.P10686455318228212917

`∩[A061424(n+1), A069709(n+1)]`
-/

namespace A285227.P10686455318228212917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285227.P10686455318228212917

noncomputable section

/-- A285227: Primes with integer arithmetic mean of digits = 7 in base 10.

Offset 1, canonical program `A285227.P10686455318228212917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A285227 (n : ℕ) : ℤ :=
  (A285227.P10686455318228212917.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A285227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286324.P10528776469317877690

`A000005(A350390(n+1))`
-/

namespace A286324.P10528776469317877690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A350390 (n + 1)).toNat

end

end A286324.P10528776469317877690

noncomputable section

/-- A286324: a(n) is the number of bi-unitary divisors of n.

Offset 1, canonical program `A286324.P10528776469317877690`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350390, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286324 (n : ℕ) : ℤ :=
  A286324.P10528776469317877690.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350390, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286324.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294895.P16892911565145110880

`∏{d}[n+1, A008578(A000188(#))]`
-/

namespace A294895.P16892911565145110880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A008578 (A000188 d).toNat

end

end A294895.P16892911565145110880

noncomputable section

/-- A294895: a(n) = Product_{d|n, gcd(d,n/d)>1} prime(gcd(d,n/d)-1).

Offset 1, canonical program `A294895.P16892911565145110880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294895 (n : ℕ) : ℤ :=
  A294895.P16892911565145110880.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295657.P6967734593411189466

`A000188(A003557(n+1))`
-/

namespace A295657.P6967734593411189466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A003557 (n + 1)).toNat

end

end A295657.P6967734593411189466

noncomputable section

/-- A295657: Multiplicative with a(p^e) = p^floor((e-1)/2).

Offset 1, canonical program `A295657.P6967734593411189466`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295657 (n : ℕ) : ℤ :=
  A295657.P6967734593411189466.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295657.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295658.P31959927982178384

`A003557(A000188(n+1))`
-/

namespace A295658.P31959927982178384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A000188 (n + 1)).toNat

end

end A295658.P31959927982178384

noncomputable section

/-- A295658: Multiplicative with a(p^e) = p^max(0,(floor(e/2)-1)).

Offset 1, canonical program `A295658.P31959927982178384`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295658 (n : ℕ) : ℤ :=
  A295658.P31959927982178384.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295658.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317992.P5649410725794310829

`A001221(A033198(n+1))-1`
-/

namespace A317992.P5649410725794310829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A033198 (n + 1)).toNat - 1

end

end A317992.P5649410725794310829

noncomputable section

/-- A317992: 2-rank of the narrow class group of the real quadratic field Q(sqrt(k)), k squarefree > 1.

Offset 2, canonical program `A317992.P5649410725794310829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A317992 (n : ℕ) : ℤ :=
  A317992.P5649410725794310829.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A317992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318313.P9581478745777910388

`A046643(lcm(A000188(n+1), A006519(n+1)))`
-/

namespace A318313.P9581478745777910388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (Int.lcm (A000188 (n + 1)) (A006519 (n + 1)))

end

end A318313.P9581478745777910388

noncomputable section

/-- A318313: Numerators of the sequence whose Dirichlet convolution with itself yields A068068, number of odd unitary divisors of n.

Offset 1, canonical program `A318313.P9581478745777910388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318313 (n : ℕ) : ℤ :=
  A318313.P9581478745777910388.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326038.P7461773891542618718

`A000188(A000203(n+1))`
-/

namespace A326038.P7461773891542618718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A000203 (n + 1)).toNat

end

end A326038.P7461773891542618718

noncomputable section

/-- A326038: Square root of the largest square dividing the sum of divisors of n: a(n) = A000188(sigma(n)).

Offset 1, canonical program `A326038.P7461773891542618718`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326038 (n : ℕ) : ℤ :=
  A326038.P7461773891542618718.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326038.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335438.P3356434190855580502

`floor((A000188(A335437(n+1))-1)/2)`
-/

namespace A335438.P3356434190855580502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000188 (A335437 (n + 1)).toNat - 1 : ℚ) / 2⌋

end

end A335438.P3356434190855580502

noncomputable section

/-- A335438: Number of partitions of k_n into two distinct parts (s,t) such that k_n | s*t, where k_n = A335437(n).

Offset 1, canonical program `A335438.P3356434190855580502`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A335437, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335438 (n : ℕ) : ℤ :=
  A335438.P3356434190855580502.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A335437, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335438.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336318.P2686538755063264344

`A000188(A038040(n+1))`
-/

namespace A336318.P2686538755063264344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A038040 (n + 1)).toNat

end

end A336318.P2686538755063264344

noncomputable section

/-- A336318: Square root of the largest square dividing n*d(n), where d(n) is the number of divisors of n, A000005.

Offset 1, canonical program `A336318.P2686538755063264344`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336318 (n : ℕ) : ℤ :=
  A336318.P2686538755063264344.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336318.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337690.P488329027084497173

`∑{d}[n+1, A341619(#)]`
-/

namespace A337690.P488329027084497173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341619 d

end

end A337690.P488329027084497173

noncomputable section

/-- A337690: a(n) is the number of primitive nondeficient numbers (A006039) dividing n.

Offset 1, canonical program `A337690.P488329027084497173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337690 (n : ℕ) : ℤ :=
  A337690.P488329027084497173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337690.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A350388.P14803128031435634268

`A071974(n+1)²`
-/

namespace A350388.P14803128031435634268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (n + 1) ^ 2

end

end A350388.P14803128031435634268

noncomputable section

/-- A350388: a(n) is the largest unitary divisor of n that is a square.

Offset 1, canonical program `A350388.P14803128031435634268`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071974, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350388 (n : ℕ) : ℤ :=
  A350388.P14803128031435634268.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071974, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350388.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351603.P15662806587639298420

`∑{d}[A000188(n+1), A000584((n+1)/#)]`
-/

namespace A351603.P15662806587639298420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000584 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351603.P15662806587639298420

noncomputable section

/-- A351603: a(n) = n^5 * Sum_{d^2|n} 1 / d^5.

Offset 1, canonical program `A351603.P15662806587639298420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A351603 (n : ℕ) : ℤ :=
  A351603.P15662806587639298420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A351603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354713.P17399075421712042557

`A000005(A000188((n+2)²-1))`
-/

namespace A354713.P17399075421712042557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000188 ((n + 2) ^ 2 - 1)).toNat

end

end A354713.P17399075421712042557

noncomputable section

/-- A354713: Number of solutions (n, D) for Pell equation n^2 - D*y^2 = 1 with fixed n.

Offset 2, canonical program `A354713.P17399075421712042557`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354713 (n : ℕ) : ℤ :=
  A354713.P17399075421712042557.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354713.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355261.P9102816155030024956

`A000188(n+1)*A007947(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A355261.P9102816155030024956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) * A007947 (n + 1)

end

end A355261.P9102816155030024956

noncomputable section

/-- A355261: a(n) = largest-nth-power(n, 2) * radical(n) = A000188(n) * A007947(n), where largest-nth-power(n, e) is the largest positive integer b such that b^e divides n.

Offset 1, canonical program `A355261.P9102816155030024956`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355261 (n : ℕ) : ℤ :=
  A355261.P9102816155030024956.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355261.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365335.P17558981587538508230

`A325837(A000188(n+1))`
-/

namespace A365335.P17558981587538508230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 (A000188 (n + 1)).toNat

end

end A365335.P17558981587538508230

noncomputable section

/-- A365335: The number of exponentially odd coreful divisors of the square root of the largest square dividing n.

Offset 1, canonical program `A365335.P17558981587538508230`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A325837, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365335 (n : ℕ) : ℤ :=
  A365335.P17558981587538508230.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A325837, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365335.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365336.P7053891073090803951

`A033634(A000188(n+1))`
-/

namespace A365336.P7053891073090803951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (A000188 (n + 1)).toNat

end

end A365336.P7053891073090803951

noncomputable section

/-- A365336: The sum of exponentially odd divisors of the square root of the largest square dividing n.

Offset 1, canonical program `A365336.P7053891073090803951`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A033634, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365336 (n : ℕ) : ℤ :=
  A365336.P7053891073090803951.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A033634, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365336.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365549.P7046597874236443597

`A322483(A000188(n+1))`
-/

namespace A365549.P7046597874236443597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A000188 (n + 1)).toNat

end

end A365549.P7046597874236443597

noncomputable section

/-- A365549: The number of exponentially odd divisors of the square root of the largest square dividing n.

Offset 1, canonical program `A365549.P7046597874236443597`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A322483, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365549 (n : ℕ) : ℤ :=
  A365549.P7046597874236443597.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A322483, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365549.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367203.P9050632869691583128

`A000188(n+1)*A001616(n+1)`
-/

namespace A367203.P9050632869691583128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) * A001616 (n + 1)

end

end A367203.P9050632869691583128

noncomputable section

/-- A367203: Product of p^(v_p(n)-1) + p^(2*floor(v_p(n)/2)) over all prime divisors p of n with valuation v_p(n).

Offset 1, canonical program `A367203.P9050632869691583128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367203 (n : ℕ) : ℤ :=
  A367203.P9050632869691583128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367987.P14204999189059379175

`A000005(A071974(n+1))`
-/

namespace A367987.P14204999189059379175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A071974 (n + 1)).toNat

end

end A367987.P14204999189059379175

noncomputable section

/-- A367987: The number of square divisors of the largest unitary divisor of n that is a square.

Offset 1, canonical program `A367987.P14204999189059379175`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071974, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367987 (n : ℕ) : ℤ :=
  A367987.P14204999189059379175.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071974, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367987.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367988.P14682528638246534316

`A000203(A071974(n+1))`
-/

namespace A367988.P14682528638246534316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A071974 (n + 1)).toNat

end

end A367988.P14682528638246534316

noncomputable section

/-- A367988: The sum of the divisors of the square root of the largest unitary divisor of n that is a square.

Offset 1, canonical program `A367988.P14682528638246534316`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071974, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367988 (n : ℕ) : ℤ :=
  A367988.P14682528638246534316.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071974, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367988.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375240.P16828847594714467939

`A007913(n+1)*a(A000188(n+1)-1)` with `a(0)=1`
-/

namespace A375240.P16828847594714467939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007913 (n + 1) * a (A000188 (n + 1) - 1).toNat

end

end A375240.P16828847594714467939

noncomputable section

/-- A375240: For squarefree j, a(j*k^2) = j * a(k), a(1) = 1.

Offset 1, canonical program `A375240.P16828847594714467939`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A007913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375240 (n : ℕ) : ℤ :=
  A375240.P16828847594714467939.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A007913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375240.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375970.P9061839122044189861

`A000188(A000330(n+1))`
-/

namespace A375970.P9061839122044189861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A000330 (n + 1)).toNat

end

end A375970.P9061839122044189861

noncomputable section

/-- A375970: a(n) is the largest number k such that k^2 divides the square pyramidal number A000330(n).

Offset 1, canonical program `A375970.P9061839122044189861`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375970 (n : ℕ) : ℤ :=
  A375970.P9061839122044189861.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375970.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377817.P402920297205935675

`lt[1, A162641(n+1)]+1`
-/

namespace A377817.P402920297205935675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162641 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A377817.P402920297205935675

noncomputable section

/-- A377817: Numbers that have more than one even exponent in their prime factorization.

Offset 1, canonical program `A377817.P402920297205935675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A377817 (n : ℕ) : ℤ :=
  (A377817.P402920297205935675.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A377817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379663.P16552720730699355066

`A060143(A000188(n+1))+1`
-/

namespace A379663.P16552720730699355066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A000188 (n + 1)).toNat + 1

end

end A379663.P16552720730699355066

noncomputable section

/-- A379663: a(n) is the number of integer-sided triangles whose sides are in geometric progression with smallest side n.

Offset 1, canonical program `A379663.P16552720730699355066`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379663 (n : ℕ) : ℤ :=
  A379663.P16552720730699355066.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A388983.P17500820432191245093

`filter[A228056(n+1), A355447(#)]`
-/

namespace A388983.P17500820432191245093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A388983.P17500820432191245093

noncomputable section

/-- A388983: Numbers, not powers of primes, that are of the form p * m^2, where p is prime and m by necessity > 1.

Offset 1, canonical program `A388983.P17500820432191245093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9010 terms. -/
def A388983 (n : ℕ) : ℤ :=
  A388983.P17500820432191245093.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9010 terms. -/
def A388983.provenance : SequenceMachineLib.Provenance := .conjectured

