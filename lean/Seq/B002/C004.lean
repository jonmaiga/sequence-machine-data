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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
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

/-! ## A201555.P7616371346376601089

`A000984(n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A201555.P7616371346376601089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n ^ 2)

end

end A201555.P7616371346376601089

noncomputable section

/-- A201555: a(n) = C(2*n^2,n^2) = A000984(n^2), where A000984 is the central binomial coefficients.

Offset 0, canonical program `A201555.P7616371346376601089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A201555 (n : ℕ) : ℤ :=
  A201555.P7616371346376601089.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A201555.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A203307.P15403217758868856959

`1/2*A028365(n+1)`
-/

namespace A203307.P15403217758868856959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A028365 (n + 1) : ℚ)

end

end A203307.P15403217758868856959

noncomputable section

/-- A203307: a(n) = v(n+1)/(2*v(n)), where v = A203305.

Offset 1, canonical program `A203307.P15403217758868856959`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A203307 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A203307.P15403217758868856959.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A203307.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A205593.P16905158844139717774

`log2(A205592(n+2))`
-/

namespace A205593.P16905158844139717774
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A205592 (n + 2) : ℝ)

end

end A205593.P16905158844139717774

noncomputable section

/-- A205593: a(2) = 0, a(3k) = a(3k+1) = a(2k), a(3k+2) = a(2k+1) + 1 for k >= 1.

Offset 2, canonical program `A205593.P16905158844139717774`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A205593 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A205593.P16905158844139717774.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A205593.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A212012.P10131555541362374622

`2*A004736(n+1)`
-/

namespace A212012.P10131555541362374622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004736 (n + 1)

end

end A212012.P10131555541362374622

noncomputable section

/-- A212012: Triangle read by rows in which row n lists the number of states of the subshells of the n-th shell of the nuclear shell model ordered by energy level in increasing order.

Offset 1, canonical program `A212012.P10131555541362374622`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212012 (n : ℕ) : ℤ :=
  A212012.P10131555541362374622.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212012.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A212503.P7074195460241346720

`A077043(n)²`
-/

namespace A212503.P7074195460241346720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n ^ 2

end

end A212503.P7074195460241346720

noncomputable section

/-- A212503: Number of (w,x,y,z) with all terms in {1,...,n} and w

Offset 0, canonical program `A212503.P7074195460241346720`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212503 (n : ℕ) : ℤ :=
  A212503.P7074195460241346720.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212503.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A212507.P15479428626439604042

`A006578(n)*A077043(n)`
-/

namespace A212507.P15479428626439604042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006578 n * A077043 n

end

end A212507.P15479428626439604042

noncomputable section

/-- A212507: Number of (w,x,y,z) with all terms in {1,...,n} and w

Offset 0, canonical program `A212507.P15479428626439604042`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212507 (n : ℕ) : ℤ :=
  A212507.P15479428626439604042.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212507.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A214263.P14358253122449274088

`A010054(2*n+1)`
-/

namespace A214263.P14358253122449274088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (2 * n + 1)

end

end A214263.P14358253122449274088

noncomputable section

/-- A214263: Expansion of f(x^1, x^7) in powers of x where f() is Ramanujan's general theta function.

Offset 0, canonical program `A214263.P14358253122449274088`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214263 (n : ℕ) : ℤ :=
  A214263.P14358253122449274088.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A214264.P7340386951159269035

`A010054(2*n)`
-/

namespace A214264.P7340386951159269035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (2 * n)

end

end A214264.P7340386951159269035

noncomputable section

/-- A214264: Expansion of f(x^3, x^5) in powers of x where f() is Ramanujan's two-variable theta function.

Offset 0, canonical program `A214264.P7340386951159269035`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214264 (n : ℕ) : ℤ :=
  A214264.P7340386951159269035.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214264.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A215580.P15485213879133625661

`A005248(n+1)-A000034(n)`
-/

namespace A215580.P15485213879133625661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 1) - A000034 n

end

end A215580.P15485213879133625661

noncomputable section

/-- A215580: Partial sums of A215602.

Offset 0, canonical program `A215580.P15485213879133625661`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A215580 (n : ℕ) : ℤ :=
  A215580.P15485213879133625661.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A215580.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A216243.P17518036523963729443

`A215602(n)+2`
-/

namespace A216243.P17518036523963729443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215602 n + 2

end

end A216243.P17518036523963729443

noncomputable section

/-- A216243: Partial sums of the squares of Lucas numbers (A000032).

Offset 0, canonical program `A216243.P17518036523963729443`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216243 (n : ℕ) : ℤ :=
  A216243.P17518036523963729443.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216243.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A216584.P10493900783905801092

`A002426(n)*A000984(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A216584.P10493900783905801092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n * A000984 n

end

end A216584.P10493900783905801092

noncomputable section

/-- A216584: a(n) = A002426(n)*A000984(n); product of central trinomial coefficients and central binomial coefficients.

Offset 0, canonical program `A216584.P10493900783905801092`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216584 (n : ℕ) : ℤ :=
  A216584.P10493900783905801092.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216584.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A216685.P9601473456840992618

`A000120(n+a(n-1))` with `a(0)=0`
-/

namespace A216685.P9601473456840992618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000120 ((n : ℤ) + a (n - 1)).toNat

end

end A216685.P9601473456840992618

noncomputable section

/-- A216685: a(n) is the number of 1's in binary expansion of n + a(n-1), with a(0)=0.

Offset 0, canonical program `A216685.P9601473456840992618`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216685 (n : ℕ) : ℤ :=
  A216685.P9601473456840992618.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216685.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A218008.P8397887611227486020

`2*A014495(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218008.P8397887611227486020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014495 n

end

end A218008.P8397887611227486020

noncomputable section

/-- A218008: Sum of successive absolute differences of the binomial coefficients = 2*A014495(n).

Offset 0, canonical program `A218008.P8397887611227486020`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A218008 (n : ℕ) : ℤ :=
  A218008.P8397887611227486020.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A218008.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A219390.P17150077939141016358

`2*A219191(n+1)`
-/

namespace A219390.P17150077939141016358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219191 (n + 1)

end

end A219390.P17150077939141016358

noncomputable section

/-- A219390: Numbers k such that 14*k+1 is a square.

Offset 1, canonical program `A219390.P17150077939141016358`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A219390 (n : ℕ) : ℤ :=
  A219390.P17150077939141016358.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A219390.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A219527.P3328106027146800020

`A168380(n+1)-1`
-/

namespace A219527.P3328106027146800020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168380 (n + 1) - 1

end

end A219527.P3328106027146800020

noncomputable section

/-- A219527: a(n) = (6*n^2 + 7*n - 9 + 2*n^3)/12 - (-1)^n*(n+1)/4.

Offset 1, canonical program `A219527.P3328106027146800020`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A219527 (n : ℕ) : ℤ :=
  A219527.P3328106027146800020.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A219527.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A220082.P4767613609164849461

`4*A085787(n)+1`
-/

namespace A220082.P4767613609164849461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A085787 n + 1

end

end A220082.P4767613609164849461

noncomputable section

/-- A220082: Numbers k such that 10*k-1 is a square.

Offset 1, canonical program `A220082.P4767613609164849461`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220082 (n : ℕ) : ℤ :=
  A220082.P4767613609164849461.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220082.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A220465.P11455344750540427665

`A004736(A004736(n+1))`
-/

namespace A220465.P11455344750540427665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A004736 (n + 1)).toNat

end

end A220465.P11455344750540427665

noncomputable section

/-- A220465: Reverse reluctant sequence of reverse reluctant sequence A004736.

Offset 1, canonical program `A220465.P11455344750540427665`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220465 (n : ℕ) : ℤ :=
  A220465.P11455344750540427665.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220465.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A220466.P5608170771874935148

`(n+2)/2*A060818(n+1)/A060818(n)`
-/

namespace A220466.P5608170771874935148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * ((A060818 (n + 1) : ℚ) / (A060818 n : ℚ))

end

end A220466.P5608170771874935148

noncomputable section

/-- A220466: a((2*n-1)*2^p) = 4^p*(n-1) + 2^(p-1)*(1+2^p), p >= 0 and n >= 1.

Offset 1, canonical program `A220466.P5608170771874935148`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220466 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A220466.P5608170771874935148.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220466.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A220556.P9202644970290283826

`(n+1)^A004736(n+1)`
-/

namespace A220556.P9202644970290283826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A220556.P9202644970290283826

noncomputable section

/-- A220556: Square array T(n,k) = ((n+k-1)*(n+k-2)/2+n)^k, n,k > 0 read by antidiagonals.

Offset 1, canonical program `A220556.P9202644970290283826`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220556 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A220556.P9202644970290283826.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220556.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A227356.P7010420418748917047

`a(n-1)+A129361(n)` with `a(0)=1, a(1)=2`
-/

namespace A227356.P7010420418748917047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + A129361 n

end

end A227356.P7010420418748917047

noncomputable section

/-- A227356: Partial sums of A129361.

Offset 1, canonical program `A227356.P7010420418748917047`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227356 (n : ℕ) : ℤ :=
  A227356.P7010420418748917047.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227356.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A227758.P8934593272528539020

`A051027(n+1)-A000203(n+1)-(n+1)`
-/

namespace A227758.P8934593272528539020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) - A000203 (n + 1) - (n + 1 : ℤ)

end

end A227758.P8934593272528539020

noncomputable section

/-- A227758: a(n) = sigma(sigma(n)) - sigma(n) - n, where sigma(n) = A000203(n) = sum of the divisors of n.

Offset 1, canonical program `A227758.P8934593272528539020`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227758 (n : ℕ) : ℤ :=
  A227758.P8934593272528539020.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227758.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A227805.P8030689830281348118

`2*A195084(n+1)`
-/

namespace A227805.P8030689830281348118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195084 (n + 1)

end

end A227805.P8030689830281348118

noncomputable section

/-- A227805: Sum of even numbers starting at 2, alternating signs.

Offset 1, canonical program `A227805.P8030689830281348118`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227805 (n : ℕ) : ℤ :=
  A227805.P8030689830281348118.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227805.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228484.P202728195289297954

`2^n*A005809(n)`
-/

namespace A228484.P202728195289297954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A005809 n

end

end A228484.P202728195289297954

noncomputable section

/-- A228484: a(n) = 2^n*(3*n)!/(n!*(2*n)!).

Offset 0, canonical program `A228484.P202728195289297954`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228484 (n : ℕ) : ℤ :=
  A228484.P202728195289297954.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228484.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228843.P9707303351717591130

`4^n*A228842(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A228843.P9707303351717591130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A228842 n

end

end A228843.P9707303351717591130

noncomputable section

/-- A228843: a(n) = 4^n*A228842(n).

Offset 0, canonical program `A228843.P9707303351717591130`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228843 (n : ℕ) : ℤ :=
  A228843.P9707303351717591130.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228843.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A229852.P573498570990364365

`3*A104777(n+1)`
-/

namespace A229852.P573498570990364365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A104777 (n + 1)

end

end A229852.P573498570990364365

noncomputable section

/-- A229852: 3*h^2, where h is an odd integer not divisible by 3.

Offset 1, canonical program `A229852.P573498570990364365`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229852 (n : ℕ) : ℤ :=
  A229852.P573498570990364365.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229852.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A230865.P13351572211588276155

`n+A053824(n)`
-/

namespace A230865.P13351572211588276155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A053824 n

end

end A230865.P13351572211588276155

noncomputable section

/-- A230865: a(n) = n + (sum of digits in base-5 representation of n).

Offset 0, canonical program `A230865.P13351572211588276155`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230865 (n : ℕ) : ℤ :=
  A230865.P13351572211588276155.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230865.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A233149.P1830884297999285355

`-A077119((n+1)²+1)`
-/

namespace A233149.P1830884297999285355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A077119 ((n + 1) ^ 2 + 1)

end

end A233149.P1830884297999285355

noncomputable section

/-- A233149: a(n) = ((n^2+1)^3) - s, where s is the nearest square to (n^2+1)^3.

Offset 1, canonical program `A233149.P1830884297999285355`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A233149 (n : ℕ) : ℤ :=
  A233149.P1830884297999285355.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A233149.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A235799.P2518108065630090782

`A024816(n+1)+A000217(n)`
-/

namespace A235799.P2518108065630090782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1) + A000217 n

end

end A235799.P2518108065630090782

noncomputable section

/-- A235799: a(n) = n^2 - sigma(n).

Offset 1, canonical program `A235799.P2518108065630090782`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A235799 (n : ℕ) : ℤ :=
  A235799.P2518108065630090782.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A235799.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A236678.P11070967660282356039

`a(n-1)+A236677(n)` with `a(0)=1`
-/

namespace A236678.P11070967660282356039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A236677 n

end

end A236678.P11070967660282356039

noncomputable section

/-- A236678: Partial sums of the characteristic function of A079599.

Offset 0, canonical program `A236678.P11070967660282356039`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236678 (n : ℕ) : ℤ :=
  A236678.P11070967660282356039.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236678.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239050.P12685587340824370499

`2*A074400(n+1)`
-/

namespace A239050.P12685587340824370499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074400 (n + 1)

end

end A239050.P12685587340824370499

noncomputable section

/-- A239050: a(n) = 4*sigma(n).

Offset 1, canonical program `A239050.P12685587340824370499`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239050 (n : ℕ) : ℤ :=
  A239050.P12685587340824370499.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239050.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239052.P10933618441211416237

`3*A008438(n)`
-/

namespace A239052.P10933618441211416237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008438 n

end

end A239052.P10933618441211416237

noncomputable section

/-- A239052: Sum of divisors of 4*n-2.

Offset 1, canonical program `A239052.P10933618441211416237`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239052 (n : ℕ) : ℤ :=
  A239052.P10933618441211416237.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239052.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239053.P13241166166120264042

`4*A097723(n)`
-/

namespace A239053.P13241166166120264042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A097723 n

end

end A239053.P13241166166120264042

noncomputable section

/-- A239053: Sum of divisors of 4*n-1.

Offset 1, canonical program `A239053.P13241166166120264042`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239053 (n : ℕ) : ℤ :=
  A239053.P13241166166120264042.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239053.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A241907.P7197561150555948447

`floor(A048990(n)/A001246(n))`
-/

namespace A241907.P7197561150555948447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048990 n : ℚ) / (A001246 n : ℚ)⌋

end

end A241907.P7197561150555948447

noncomputable section

/-- A241907: a(n) = floor( Catalan(2*n) / Catalan(n)^2 ).

Offset 0, canonical program `A241907.P7197561150555948447`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A241907 (n : ℕ) : ℤ :=
  A241907.P7197561150555948447.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A241907.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A242278.P1128140246244468018

`6*A167993(n+1)`
-/

namespace A242278.P1128140246244468018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A167993 (n + 1)

end

end A242278.P1128140246244468018

noncomputable section

/-- A242278: Number of non-palindromic n-tuples of 3 distinct elements.

Offset 1, canonical program `A242278.P1128140246244468018`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242278 (n : ℕ) : ℤ :=
  A242278.P1128140246244468018.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242278.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A242389.P11990972106804115361

`A000079(n+1)-A001065(n+1)`
-/

namespace A242389.P11990972106804115361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A001065 (n + 1)

end

end A242389.P11990972106804115361

noncomputable section

/-- A242389: 2^n minus the sum of the proper divisors of n.

Offset 1, canonical program `A242389.P11990972106804115361`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242389 (n : ℕ) : ℤ :=
  A242389.P11990972106804115361.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242389.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244329.P12240149953231840397

`floor(A024816(n+1)/A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244329.P12240149953231840397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024816 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)⌋

end

end A244329.P12240149953231840397

noncomputable section

/-- A244329: a(n) = floor(antisigma(n) / sigma(n)) = floor(A024816(n) / A000203(n)).

Offset 1, canonical program `A244329.P12240149953231840397`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244329 (n : ℕ) : ℤ :=
  A244329.P12240149953231840397.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244352.P5842462205093254359

`A110272(n)-A079291(n)`
-/

namespace A244352.P5842462205093254359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110272 n - A079291 n

end

end A244352.P5842462205093254359

noncomputable section

/-- A244352: a(n) = Pell(n)^3 - Pell(n)^2, where Pell(n) is the n-th Pell number (A000129).

Offset 0, canonical program `A244352.P5842462205093254359`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244352 (n : ℕ) : ℤ :=
  A244352.P5842462205093254359.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244352.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244855.P16069968218495320223

`A056571(n+1)-1`
-/

namespace A244855.P16069968218495320223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056571 (n + 1) - 1

end

end A244855.P16069968218495320223

noncomputable section

/-- A244855: a(n) = Fibonacci(n)^4-1.

Offset 1, canonical program `A244855.P16069968218495320223`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244855 (n : ℕ) : ℤ :=
  A244855.P16069968218495320223.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244855.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A245391.P7205502003046110437

`A000079(n)*A001791(n+1)`
-/

namespace A245391.P7205502003046110437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A001791 (n + 1)

end

end A245391.P7205502003046110437

noncomputable section

/-- A245391: a(n) = 2^n*binomial(2*(n+1), n).

Offset 0, canonical program `A245391.P7205502003046110437`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245391 (n : ℕ) : ℤ :=
  A245391.P7205502003046110437.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245391.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A247562.P5849283782100272797

`A101402(10^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A247562.P5849283782100272797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (10 ^ n)

end

end A247562.P5849283782100272797

noncomputable section

/-- A247562: A101402(10^n).

Offset 0, canonical program `A247562.P5849283782100272797`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247562 (n : ℕ) : ℤ :=
  A247562.P5849283782100272797.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247562.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A247917.P1048329276801402457

`-A104769(n+1)`
-/

namespace A247917.P1048329276801402457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A104769 (n + 1)

end

end A247917.P1048329276801402457

noncomputable section

/-- A247917: Expansion of 1 / (1 + x - x^3) in powers of x.

Offset 0, canonical program `A247917.P1048329276801402457`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247917 (n : ℕ) : ℤ :=
  A247917.P1048329276801402457.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247917.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A247954.P11123436793123845115

`A051027(2*n+1)`
-/

namespace A247954.P11123436793123845115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (2 * n + 1)

end

end A247954.P11123436793123845115

noncomputable section

/-- A247954: a(n) = sigma(sigma(2n-1)).

Offset 1, canonical program `A247954.P11123436793123845115`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247954 (n : ℕ) : ℤ :=
  A247954.P11123436793123845115.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247954.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A248517.P14904334009551317657

`A060831(n)-n`
-/

namespace A248517.P14904334009551317657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n - (n : ℤ)

end

end A248517.P14904334009551317657

noncomputable section

/-- A248517: Number of odd divisors > 1 in the numbers 1 through n, counted with multiplicity.

Offset 0, canonical program `A248517.P14904334009551317657`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A248517 (n : ℕ) : ℤ :=
  A248517.P14904334009551317657.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A248517.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A248928.P6547511480324052605

`A027434(n+1)²`
-/

namespace A248928.P6547511480324052605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (n + 1) ^ 2

end

end A248928.P6547511480324052605

noncomputable section

/-- A248928: Interleave (2*n+2)^2 with (2*n+3)^2, both listed n+1 times.

Offset 0, canonical program `A248928.P6547511480324052605`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A248928 (n : ℕ) : ℤ :=
  A248928.P6547511480324052605.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A248928.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A249154.P2345966816674260141

`(n+1)*A000120(n)`
-/

namespace A249154.P2345966816674260141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000120 n

end

end A249154.P2345966816674260141

noncomputable section

/-- A249154: (n+1) times the number of 1's in the binary expansion of n.

Offset 0, canonical program `A249154.P2345966816674260141`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249154 (n : ℕ) : ℤ :=
  A249154.P2345966816674260141.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249154.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A249586.P18263077682237297372

`A000537(n^3)`
-/

namespace A249586.P18263077682237297372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (n ^ 3)

end

end A249586.P18263077682237297372

noncomputable section

/-- A249586: Sum of the first n^3 cubes.

Offset 0, canonical program `A249586.P18263077682237297372`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249586 (n : ℕ) : ℤ :=
  A249586.P18263077682237297372.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249586.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A251732.P11083506637498144455

`3^n*A123335(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A251732.P11083506637498144455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A123335 n

end

end A251732.P11083506637498144455

noncomputable section

/-- A251732: a(n) = 3^n*A123335(n). Rational parts of the integers in Q(sqrt(2)) giving the length of a Lévy C-curve variant at iteration step n.

Offset 0, canonical program `A251732.P11083506637498144455`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251732 (n : ℕ) : ℤ :=
  A251732.P11083506637498144455.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251732.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A253487.P6679940990735206685

`2*A110609(n+1)`
-/

namespace A253487.P6679940990735206685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110609 (n + 1)

end

end A253487.P6679940990735206685

noncomputable section

/-- A253487: Number of lattice paths of 2*n+2 steps in the first quadrant from (0,0) to (n,n).

Offset 0, canonical program `A253487.P6679940990735206685`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253487 (n : ℕ) : ℤ :=
  A253487.P6679940990735206685.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253487.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A253515.P13457922378749465889

`A130829(n+1)-A074294(n+1)`
-/

namespace A253515.P13457922378749465889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130829 (n + 1) - A074294 (n + 1)

end

end A253515.P13457922378749465889

noncomputable section

/-- A253515: Count down from 2*k to 1, then from 2*(k+1) to 1 and so on.

Offset 1, canonical program `A253515.P13457922378749465889`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253515 (n : ℕ) : ℤ :=
  A253515.P13457922378749465889.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253515.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A254046.P17306611648514838872

`A051064(2*n+1)`
-/

namespace A254046.P17306611648514838872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (2 * n + 1)

end

end A254046.P17306611648514838872

noncomputable section

/-- A254046: Column index of n in A191450: a(3n) = 1, a(3n+1) = 1, a(3n+2) = 1 + a(n+1).

Offset 1, canonical program `A254046.P17306611648514838872`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254046 (n : ℕ) : ℤ :=
  A254046.P17306611648514838872.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254046.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A254667.P2531765093314999596

`A063524(n)+n`
-/

namespace A254667.P2531765093314999596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + (n : ℤ)

end

end A254667.P2531765093314999596

noncomputable section

/-- A254667: The nonnegative numbers with 2 instead of 1.

Offset 0, canonical program `A254667.P2531765093314999596`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254667 (n : ℕ) : ℤ :=
  A254667.P2531765093314999596.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254667.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255683.P1316510834808175680

`A000120(n+1)*(A000918(A000523(n+1)+1)+1)`
-/

namespace A255683.P1316510834808175680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) * (A000918 (A000523 (n + 1) + 1).toNat + 1)

end

end A255683.P1316510834808175680

noncomputable section

/-- A255683: Sum of the binary numbers whose digits are cyclic permutations of the binary expansion of n.

Offset 1, canonical program `A255683.P1316510834808175680`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255683 (n : ℕ) : ℤ :=
  A255683.P1316510834808175680.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255683.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256135.P15425195409357675136

`A000351(A000120(n))`
-/

namespace A256135.P15425195409357675136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A000120 n).toNat

end

end A256135.P15425195409357675136

noncomputable section

/-- A256135: a(n) = 5^A000120(n).

Offset 0, canonical program `A256135.P15425195409357675136`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256135 (n : ℕ) : ℤ :=
  A256135.P15425195409357675136.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256135.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256136.P14588542491347922594

`A000400(A000120(n))`
-/

namespace A256136.P14588542491347922594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (A000120 n).toNat

end

end A256136.P14588542491347922594

noncomputable section

/-- A256136: a(n) = 6^A000120(n).

Offset 0, canonical program `A256136.P14588542491347922594`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256136 (n : ℕ) : ℤ :=
  A256136.P14588542491347922594.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256136.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256244.P8227914721066336132

`A000196(n+2)-A071028(n+2)+2`
-/

namespace A256244.P8227914721066336132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 2) - A071028 (n + 2) + 2

end

end A256244.P8227914721066336132

noncomputable section

/-- A256244: a(n) = sqrt(n + 2*A256243(n)).

Offset 1, canonical program `A256244.P8227914721066336132`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256244 (n : ℕ) : ℤ :=
  A256244.P8227914721066336132.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256244.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A257520.P11881127439333961031

`A097861(n)+1`
-/

namespace A257520.P11881127439333961031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n + 1

end

end A257520.P11881127439333961031

noncomputable section

/-- A257520: Number of factorizations of m^2 into 2 factors, where m is a product of exactly n distinct primes and each factor is a product of n primes (counted with multiplicity).

Offset 0, canonical program `A257520.P11881127439333961031`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257520 (n : ℕ) : ℤ :=
  A257520.P11881127439333961031.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257520.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A258745.P174900374007038232

`A028365(n)/(n+1)`
-/

namespace A258745.P174900374007038232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028365 n : ℚ) / (n + 1 : ℚ)

end

end A258745.P174900374007038232

noncomputable section

/-- A258745: Order of general affine group AGL(n,2) (=A028365(n)) divided by (n+1).

Offset 0, canonical program `A258745.P174900374007038232`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258745 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A258745.P174900374007038232.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258745.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A258831.P9209545369141060216

`(-1)^n*A098098(n)`
-/

namespace A258831.P9209545369141060216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A098098 n

end

end A258831.P9209545369141060216

noncomputable section

/-- A258831: Expansion of (psi(-x^3) * f(-x, x^2))^2 in powers of x where psi(), f(,) are Ramanujan theta functions.

Offset 0, canonical program `A258831.P9209545369141060216`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258831 (n : ℕ) : ℤ :=
  A258831.P9209545369141060216.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258831.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261232.P7381574163309701758

`A261231(3^n)`
-/

namespace A261232.P7381574163309701758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261231 (3 ^ n)

end

end A261232.P7381574163309701758

noncomputable section

/-- A261232: a(n) = number of steps to reach 0 when starting from k = 3^n and repeatedly applying the map that replaces k with k - (sum of digits in base-3 representation of k).

Offset 0, canonical program `A261232.P7381574163309701758`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261232 (n : ℕ) : ℤ :=
  A261232.P7381574163309701758.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261232.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262189.P8058755779545758609

`A060001(n+2)/A000045(n+1)`
-/

namespace A262189.P8058755779545758609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060001 (n + 2) : ℚ) / (A000045 (n + 1) : ℚ)

end

end A262189.P8058755779545758609

noncomputable section

/-- A262189: a(n) = Fibonacci(n+1)! / Fibonacci(n).

Offset 1, canonical program `A262189.P8058755779545758609`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262189 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A262189.P8058755779545758609.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262189.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262927.P17145259488631727692

`A262397(2*n)+A262397(2*n+1)`
-/

namespace A262927.P17145259488631727692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262397 (2 * n) + A262397 (2 * n + 1)

end

end A262927.P17145259488631727692

noncomputable section

/-- A262927: a(n+9) = a(n) + 10*(n+4) + 9. a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=10, a(5)=15, a(6)=23, a(7)=30, a(8)=39.

Offset 0, canonical program `A262927.P17145259488631727692`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262927 (n : ℕ) : ℤ :=
  A262927.P17145259488631727692.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262927.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263673.P17564345836323760569

`A180000(n)*A152271(n)`
-/

namespace A263673.P17564345836323760569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180000 n * A152271 n

end

end A263673.P17564345836323760569

noncomputable section

/-- A263673: a(n) = lcm{1,2,...,n} / binomial(n,floor(n/2)).

Offset 0, canonical program `A263673.P17564345836323760569`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263673 (n : ℕ) : ℤ :=
  A263673.P17564345836323760569.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263673.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263727.P9447933061179139825

`A048760(A000045(n))`
-/

namespace A263727.P9447933061179139825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A000045 n).toNat

end

end A263727.P9447933061179139825

noncomputable section

/-- A263727: Largest square number less than or equal to the n-th Fibonacci number.

Offset 0, canonical program `A263727.P9447933061179139825`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263727 (n : ℕ) : ℤ :=
  A263727.P9447933061179139825.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263727.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263841.P10709210720201135454

`A005773(n+1)+A132894(n)`
-/

namespace A263841.P10709210720201135454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) + A132894 n

end

end A263841.P10709210720201135454

noncomputable section

/-- A263841: Expansion of (1 - 2*x - x^2)/(sqrt(1+x)*(1-3*x)^(3/2)*2*x) - 1/(2*x).

Offset 0, canonical program `A263841.P10709210720201135454`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263841 (n : ℕ) : ℤ :=
  A263841.P10709210720201135454.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263841.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A265104.P5308251035994619113

`A265100(n+2)-6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265104.P5308251035994619113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265100 (n + 2) - 6

end

end A265104.P5308251035994619113

noncomputable section

/-- A265104: a(n) = A265100(n+1) - 6, n >= 1.

Offset 1, canonical program `A265104.P5308251035994619113`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265104 (n : ℕ) : ℤ :=
  A265104.P5308251035994619113.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265104.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A265917.P11657784271815987445

`floor(A070939(n+1)/A000120(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265917.P11657784271815987445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A070939 (n + 1) : ℚ) / (A000120 (n + 1) : ℚ)⌋

end

end A265917.P11657784271815987445

noncomputable section

/-- A265917: a(n) = floor(A070939(n)/A000120(n)) where A070939(n) is the binary length of n and A000120(n) is the binary weight of n.

Offset 1, canonical program `A265917.P11657784271815987445`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265917 (n : ℕ) : ℤ :=
  A265917.P11657784271815987445.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265917.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268329.P14268697526507854789

`2*A000344(n+2)`
-/

namespace A268329.P14268697526507854789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000344 (n + 2)

end

end A268329.P14268697526507854789

noncomputable section

/-- A268329: Expansion of (1 - sqrt(1 - 4*x))^5/16.

Offset 5, canonical program `A268329.P14268697526507854789`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268329 (n : ℕ) : ℤ :=
  A268329.P14268697526507854789.a (n - 5)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268555.P8235004269466494055

`A000984(n)*A001850(n)`
-/

namespace A268555.P8235004269466494055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A001850 n

end

end A268555.P8235004269466494055

noncomputable section

/-- A268555: Diagonal of the rational function of six variables 1/((1 - w - u v - u v w) * (1 - z - x y)).

Offset 0, canonical program `A268555.P8235004269466494055`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268555 (n : ℕ) : ℤ :=
  A268555.P8235004269466494055.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268555.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A270577.P11460174371161535537

`A000108(2*n)*A000984(n)`
-/

namespace A270577.P11460174371161535537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (2 * n) * A000984 n

end

end A270577.P11460174371161535537

noncomputable section

/-- A270577: Generalized Catalan numbers C(3,n), where the (m,n)-th Catalan is the number of paths in R^m from the origin to the point (n,...,n,(m-1)n) with m kinds of moves such that the path never rises above the hyperplane x_m = x_1+...+x_{m-1}.

Offset 0, canonical program `A270577.P11460174371161535537`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A270577 (n : ℕ) : ℤ :=
  A270577.P11460174371161535537.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A270577.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A271786.P16373864937216797583

`2*(A001629(n+2)+A271785(n))`
-/

namespace A271786.P16373864937216797583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001629 (n + 2) + A271785 n)

end

end A271786.P16373864937216797583

noncomputable section

/-- A271786: Expansion of 2*(1-x)*(2*x^2+4*x+1) / (1-x-x^2)^2.

Offset 0, canonical program `A271786.P16373864937216797583`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271786 (n : ℕ) : ℤ :=
  A271786.P16373864937216797583.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271786.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A272172.P12139415757426446480

`A000203(A004736(n+1))`
-/

namespace A272172.P12139415757426446480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A004736 (n + 1)).toNat

end

end A272172.P12139415757426446480

noncomputable section

/-- A272172: Triangle read by rows: T(n,k) in which row n lists the first n terms of A000203 in reverse order.

Offset 1, canonical program `A272172.P12139415757426446480`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272172 (n : ℕ) : ℤ :=
  A272172.P12139415757426446480.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272172.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274009.P14334026613148662434

`A000120(n)+(-1)^n`
-/

namespace A274009.P14334026613148662434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (-1) ^ n

end

end A274009.P14334026613148662434

noncomputable section

/-- A274009: 1's distance from a number in its binary expansion.

Offset 0, canonical program `A274009.P14334026613148662434`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274009 (n : ℕ) : ℤ :=
  A274009.P14334026613148662434.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274009.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274382.P5095635014473517218

`gcd(n+1, A024816(n+1))`
-/

namespace A274382.P5095635014473517218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A024816 (n + 1))

end

end A274382.P5095635014473517218

noncomputable section

/-- A274382: a(n) = gcd(n, n*(n+1)/2 - sigma(n)).

Offset 1, canonical program `A274382.P5095635014473517218`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274382 (n : ℕ) : ℤ :=
  (A274382.P5095635014473517218.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274382.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274536.P15978769108737800431

`2*A272027(n+1)`
-/

namespace A274536.P15978769108737800431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A272027 (n + 1)

end

end A274536.P15978769108737800431

noncomputable section

/-- A274536: a(n) = 6 * sigma(n).

Offset 1, canonical program `A274536.P15978769108737800431`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274536 (n : ℕ) : ℤ :=
  A274536.P15978769108737800431.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274536.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274575.P18445276803397930196

`A000120(n+1)-A008687(n+2)`
-/

namespace A274575.P18445276803397930196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - A008687 (n + 2)

end

end A274575.P18445276803397930196

noncomputable section

/-- A274575: For m=1,2,3,... write all the 2^m binary vectors of length m in increasing order, and replace each vector with (number of 1's) - (number of 0's). Start with an initial 0 for the empty vector.

Offset 0, canonical program `A274575.P18445276803397930196`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274575 (n : ℕ) : ℤ :=
  A274575.P18445276803397930196.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274575.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274922.P9821768908038600101

`(-1)^n*A028310(n)`
-/

namespace A274922.P9821768908038600101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A028310 n

end

end A274922.P9821768908038600101

noncomputable section

/-- A274922: a(n) = (-1)^n * n if n>0, a(0) = 1.

Offset 0, canonical program `A274922.P9821768908038600101`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274922 (n : ℕ) : ℤ :=
  A274922.P9821768908038600101.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274922.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276659.P3187042620927487117

`a(n-1)+A058877(n+1)` with `a(0)=0`
-/

namespace A276659.P3187042620927487117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A058877 (n + 1)

end

end A276659.P3187042620927487117

noncomputable section

/-- A276659: Accumulation of the upper left triangle used in binomial transform of nonnegative integers.

Offset 0, canonical program `A276659.P3187042620927487117`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276659 (n : ℕ) : ℤ :=
  A276659.P3187042620927487117.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276659.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276666.P223053164440974407

`A000984(n+1)-3*A000984(n)`
-/

namespace A276666.P223053164440974407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) - 3 * A000984 n

end

end A276666.P223053164440974407

noncomputable section

/-- A276666: a(n) = (n-1)*Catalan(n).

Offset 0, canonical program `A276666.P223053164440974407`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276666 (n : ℕ) : ℤ :=
  A276666.P223053164440974407.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276666.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276916.P396322178884957613

`4*A276914(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276916.P396322178884957613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A276914 n + 1

end

end A276916.P396322178884957613

noncomputable section

/-- A276916: Subsequence of centered square numbers obtained by adding four triangles from A276914 and a central element, a(n) = 4*A276914(n) + 1.

Offset 0, canonical program `A276916.P396322178884957613`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276916 (n : ℕ) : ℤ :=
  A276916.P396322178884957613.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276916.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A204573.P913580374745478678

`floor(A055851(n+1)/6)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A204573.P913580374745478678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055851 (n + 1) : ℚ) / 6⌋

end

end A204573.P913580374745478678

noncomputable section

/-- A204573: A204519(n)^2 = floor(A055851(n)/6): Squares which written in base 6, with some digit appended, yield another square.

Offset 1, canonical program `A204573.P913580374745478678`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A204573 (n : ℕ) : ℤ :=
  A204573.P913580374745478678.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A204573.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A213064.P13019634568250474485

`2*A292272(n)`
-/

namespace A213064.P13019634568250474485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292272 n

end

end A213064.P13019634568250474485

noncomputable section

/-- A213064: Bitwise AND of 2n with the one's-complement of n.

Offset 0, canonical program `A213064.P13019634568250474485`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213064 (n : ℕ) : ℤ :=
  A213064.P13019634568250474485.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213064.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A214318.P2534198729933058842

`2*a(n-1)+A003842(n)` with `a(0)=1`
-/

namespace A214318.P2534198729933058842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A003842 n

end

end A214318.P2534198729933058842

noncomputable section

/-- A214318: Replace the word A214317(n) with its position in A007931.

Offset 1, canonical program `A214318.P2534198729933058842`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214318 (n : ℕ) : ℤ :=
  A214318.P2534198729933058842.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214318.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A219843.P18379057056590791838

`A000225(n+1)-A001317(n)`
-/

namespace A219843.P18379057056590791838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A001317 n

end

end A219843.P18379057056590791838

noncomputable section

/-- A219843: Rows of A219463 seen as numbers in binary representation.

Offset 0, canonical program `A219843.P18379057056590791838`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A219843 (n : ℕ) : ℤ :=
  A219843.P18379057056590791838.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A219843.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A225569.P15635823222923067752

`A063524(A053735(1+n))`
-/

namespace A225569.P15635823222923067752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A053735 (1 + n)).toNat

end

end A225569.P15635823222923067752

noncomputable section

/-- A225569: Decimal expansion of Sum_{n>=0} 1/10^(3^n), a transcendental number.

Offset 0, canonical program `A225569.P15635823222923067752`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225569 (n : ℕ) : ℤ :=
  A225569.P15635823222923067752.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225569.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A230631.P4210711857821606968

`A053737(n)+n`
-/

namespace A230631.P4210711857821606968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n + (n : ℤ)

end

end A230631.P4210711857821606968

noncomputable section

/-- A230631: a(n) = n + (sum of digits in base-4 representation of n).

Offset 0, canonical program `A230631.P4210711857821606968`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230631 (n : ℕ) : ℤ :=
  A230631.P4210711857821606968.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230631.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A230641.P12572480448472300178

`n+A053735(n)`
-/

namespace A230641.P12572480448472300178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A053735 n

end

end A230641.P12572480448472300178

noncomputable section

/-- A230641: a(n) = n + (sum of digits in base-3 representation of n).

Offset 0, canonical program `A230641.P12572480448472300178`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230641 (n : ℕ) : ℤ :=
  A230641.P12572480448472300178.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230641.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A230724.P11052356802034479438

`A007953(A000073(n))`
-/

namespace A230724.P11052356802034479438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000073 n).toNat

end

end A230724.P11052356802034479438

noncomputable section

/-- A230724: Digital sum of tribonacci numbers with a(0)=a(1)=0, a(2)=1.

Offset 0, canonical program `A230724.P11052356802034479438`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230724 (n : ℕ) : ℤ :=
  A230724.P11052356802034479438.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230724.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A230725.P18115786073558631145

`A007953(A000213(n))`
-/

namespace A230725.P18115786073558631145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000213 n).toNat

end

end A230725.P18115786073558631145

noncomputable section

/-- A230725: Digital sum of tribonacci numbers with a(0)=a(1)=a(2)=1.

Offset 0, canonical program `A230725.P18115786073558631145`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230725 (n : ℕ) : ℤ :=
  A230725.P18115786073558631145.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230725.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A240752.P6360468264731897152

`A007953(A000290(n+1))-A007953(A000290(n))`
-/

namespace A240752.P6360468264731897152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000290 (n + 1)).toNat - A007953 (A000290 n).toNat

end

end A240752.P6360468264731897152

noncomputable section

/-- A240752: First differences of digit sums of squares, cf. A004159.

Offset 1, canonical program `A240752.P6360468264731897152`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240752 (n : ℕ) : ℤ :=
  A240752.P6360468264731897152.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240752.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A242603.P13537598340442924408

`(n+1)/A268354(n+1)`
-/

namespace A242603.P13537598340442924408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A268354 (n + 1) : ℚ)

end

end A242603.P13537598340442924408

noncomputable section

/-- A242603: Largest divisor of n not divisible by 7. Remove factors 7 from n.

Offset 1, canonical program `A242603.P13537598340442924408`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242603 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A242603.P13537598340442924408.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242603.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A245354.P11124633670853891194

`A007953(A024653(n))`
-/

namespace A245354.P11124633670853891194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A024653 n).toNat

end

end A245354.P11124633670853891194

noncomputable section

/-- A245354: Sum of digits of n in fractional base 9/5.

Offset 0, canonical program `A245354.P11124633670853891194`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245354 (n : ℕ) : ℤ :=
  A245354.P11124633670853891194.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245354.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A245627.P11893254286747696492

`A007953(A008593(n))`
-/

namespace A245627.P11893254286747696492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A008593 n).toNat

end

end A245627.P11893254286747696492

noncomputable section

/-- A245627: Base 10 digit sum of 11*n.

Offset 0, canonical program `A245627.P11893254286747696492`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245627 (n : ℕ) : ℤ :=
  A245627.P11893254286747696492.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245627.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A247083.P17136360663830774539

`a(n-1)+A007953(a(n-3))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A247083.P17136360663830774539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 1) + A007953 (a (n - 3)).toNat

end

end A247083.P17136360663830774539

noncomputable section

/-- A247083: a(n) = 0 for n <= 0: Starting with n=1, a(n) = 1 + the sum of the digital sums of a(0) through a(n-3).

Offset 0, canonical program `A247083.P17136360663830774539`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247083 (n : ℕ) : ℤ :=
  A247083.P17136360663830774539.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247083.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A257800.P8907689118794167458

`A000035(A233271(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257800.P8907689118794167458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A233271 n).toNat

end

end A257800.P8907689118794167458

noncomputable section

/-- A257800: Sequence A233271 reduced modulo 2: a(n) = A000035(A233271(n)); the parity of each term in the infinite trunk of inverted binary beanstalk.

Offset 0, canonical program `A257800.P8907689118794167458`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257800 (n : ℕ) : ℤ :=
  A257800.P8907689118794167458.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257800.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263133.P4183536222213236562

`(2^A000267(n)+2^A384688(n))/3-1`
-/

namespace A263133.P4183536222213236562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A000267 n : ℤ) + (2 : ℚ) ^ (A384688 n : ℤ)) / 3 - 1

end

end A263133.P4183536222213236562

noncomputable section

/-- A263133: Numbers m such that binomial(4*m + 3, m) is odd.

Offset 1, canonical program `A263133.P4183536222213236562`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263133 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A263133.P4183536222213236562.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263133.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A265024.P4967435460097502295

`n!*A000593(n+1)`
-/

namespace A265024.P4967435460097502295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000593 (n + 1)

end

end A265024.P4967435460097502295

noncomputable section

/-- A265024: a(n) = n! * Sum_{d in D(n+1)} (-1)^(d+1)*(n+1)/d, D(n) the divisors of n.

Offset 0, canonical program `A265024.P4967435460097502295`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265024 (n : ℕ) : ℤ :=
  A265024.P4967435460097502295.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265024.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268228.P10558893402885558714

`A007953(A016754(n))`
-/

namespace A268228.P10558893402885558714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A016754 n).toNat

end

end A268228.P10558893402885558714

noncomputable section

/-- A268228: a(n) = sum of digits of (2n + 1)^2.

Offset 0, canonical program `A268228.P10558893402885558714`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268228 (n : ℕ) : ℤ :=
  A268228.P10558893402885558714.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268228.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A269221.P16991346444194408351

`A000142(A007953(n))`
-/

namespace A269221.P16991346444194408351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A007953 n).toNat

end

end A269221.P16991346444194408351

noncomputable section

/-- A269221: Factorial of the sum of decimal digits of n.

Offset 0, canonical program `A269221.P16991346444194408351`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A269221 (n : ℕ) : ℤ :=
  A269221.P16991346444194408351.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A269221.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A269223.P14814624165986150479

`A000142(A053735(n))`
-/

namespace A269223.P14814624165986150479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A053735 n).toNat

end

end A269223.P14814624165986150479

noncomputable section

/-- A269223: Factorial of the sum of digits of n in base 3.

Offset 0, canonical program `A269223.P14814624165986150479`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A269223 (n : ℕ) : ℤ :=
  A269223.P14814624165986150479.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A269223.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A269224.P2228145044449409064

`A000142(A053737(n))`
-/

namespace A269224.P2228145044449409064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A053737 n).toNat

end

end A269224.P2228145044449409064

noncomputable section

/-- A269224: Factorial of the sum of digits of n in base 4.

Offset 0, canonical program `A269224.P2228145044449409064`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A269224 (n : ℕ) : ℤ :=
  A269224.P2228145044449409064.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A269224.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A199930.P7858068792414983377

`A199803(3*n)`
-/

namespace A199930.P7858068792414983377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199803 (3 * n)

end

end A199930.P7858068792414983377

noncomputable section

/-- A199930: Trisection 0 of A199803.

Offset 0, canonical program `A199930.P7858068792414983377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A199930 (n : ℕ) : ℤ :=
  A199930.P7858068792414983377.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A199930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199931.P16336687389798306724

`A199803(3*n+1)`
-/

namespace A199931.P16336687389798306724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199803 (3 * n + 1)

end

end A199931.P16336687389798306724

noncomputable section

/-- A199931: Trisection 1 of A199803.

Offset 0, canonical program `A199931.P16336687389798306724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A199931 (n : ℕ) : ℤ :=
  A199931.P16336687389798306724.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A199931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200067.P5475478222933441891

`A190798(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A200067.P5475478222933441891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A190798 (n - 1) - a (n - 1)

end

end A200067.P5475478222933441891

noncomputable section

/-- A200067: Maximum sum of all products of absolute differences and distances between element pairs among the integer partitions of n.

Offset 0, canonical program `A200067.P5475478222933441891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200067 (n : ℕ) : ℤ :=
  A200067.P5475478222933441891.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200310.P15227365676242880610

`∑[abs(Δ[A003143(n)])]`
-/

namespace A200310.P15227365676242880610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003143 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200310.P15227365676242880610

noncomputable section

/-- A200310: a(n) = n-1 for n <= 4, otherwise if n is even then a(n) = a(n-5)+2^(n/2), and if n is odd then a(n) = a(n-1)+2^((n-3)/2).

Offset 1, canonical program `A200310.P15227365676242880610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A200310 (n : ℕ) : ℤ :=
  A200310.P15227365676242880610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A200310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200563.P12269536516070508962

`∑[A200562(n+2)-A200562(n)]`
-/

namespace A200563.P12269536516070508962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200562 (n + 2) - A200562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200563.P12269536516070508962

noncomputable section

/-- A200563: Expansion of -2*x*(1+4*x) / ((2*x-1)*(4*x^2+3*x+1)).

Offset 1, canonical program `A200563.P12269536516070508962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A200563 (n : ℕ) : ℤ :=
  A200563.P12269536516070508962.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A200563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200613.P5415592000491537825

`A258431(n+1)+A001700(n)-A000346(n)`
-/

namespace A200613.P5415592000491537825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258431 (n + 1) + (A001700 n - A000346 n)

end

end A200613.P5415592000491537825

noncomputable section

/-- A200613: Number of quasi-abelian ideals in the affine Lie algebra sl_n^{hat}.

Offset 1, canonical program `A200613.P5415592000491537825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A200613 (n : ℕ) : ℤ :=
  A200613.P5415592000491537825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A200613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200888.P1885015922845263124

`Δ[A002299(n)]+∑[A053134(n)]`
-/

namespace A200888.P1885015922845263124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002299 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A200888.P1885015922845263124

noncomputable section

/-- A200888: Number of 0..n arrays x(0..4) of 5 elements without any interior element greater than both neighbors.

Offset 1, canonical program `A200888.P1885015922845263124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A200888 (n : ℕ) : ℤ :=
  A200888.P1885015922845263124.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A200888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201786.P4099425712573629758

`∩[A142183(n+1), A134593(n)]`
-/

namespace A201786.P4099425712573629758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134593 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201786.P4099425712573629758

noncomputable section

/-- A201786: Primes of the form 5*k^2 - 4.

Offset 1, canonical program `A201786.P4099425712573629758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A201786 (n : ℕ) : ℤ :=
  (A201786.P4099425712573629758.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A201786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202023.P13237295766979010631

`C(A003056(n), A056944(n))`
-/

namespace A202023.P13237295766979010631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A056944 n).toNat

end

end A202023.P13237295766979010631

noncomputable section

/-- A202023: Triangle T(n,k), read by rows, given by (1, 0, 1, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (0, 1, -1, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

Offset 0, canonical program `A202023.P13237295766979010631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202023 (n : ℕ) : ℤ :=
  (A202023.P13237295766979010631.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202096.P16574343800052593515

`A001249(A008619(n+1))*A001249(A008619(n)+1)`
-/

namespace A202096.P16574343800052593515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 (A008619 (n + 1)).toNat * A001249 (A008619 n + 1).toNat

end

end A202096.P16574343800052593515

noncomputable section

/-- A202096: Number of (n+2) X 6 binary arrays avoiding patterns 001 and 011 in rows and columns.

Offset 1, canonical program `A202096.P16574343800052593515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202096 (n : ℕ) : ℤ :=
  A202096.P16574343800052593515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202276.P11372972948396556949

`∑[A175253(n+1)]`
-/

namespace A202276.P11372972948396556949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202276.P11372972948396556949

noncomputable section

/-- A202276: Number of integers k <= n such that sigma(x) = k has no solution, sigma = A000203.

Offset 1, canonical program `A202276.P11372972948396556949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202276 (n : ℕ) : ℤ :=
  A202276.P11372972948396556949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202333.P13249908490991948429

`A050486(n+3)+2-A005585(n+4)`
-/

namespace A202333.P13249908490991948429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050486 (n + 3) + (2 - A005585 (n + 4))

end

end A202333.P13249908490991948429

noncomputable section

/-- A202333: Number of (n+1) X 7 binary arrays with consecutive windows of two bits considered as a binary number nondecreasing in every row and column.

Offset 1, canonical program `A202333.P13249908490991948429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A202333 (n : ℕ) : ℤ :=
  A202333.P13249908490991948429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A202333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202340.P12710682154038267641

`char[A136495(A136495(n+1))]+1`
-/

namespace A202340.P12710682154038267641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (A136495 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A202340.P12710682154038267641

noncomputable section

/-- A202340: Number of times n occurs in Hofstadter H-sequence A005374.

Offset 0, canonical program `A202340.P12710682154038267641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202340 (n : ℕ) : ℤ :=
  (A202340.P12710682154038267641.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202341.P2903062940164643080

`comp[A136495(n+1)+A005374(n)]`
-/

namespace A202341.P2903062940164643080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (n + 1) + A005374 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A202341.P2903062940164643080

noncomputable section

/-- A202341: Numbers occurring exactly once in Hofstadter H-sequence A005374.

Offset 1, canonical program `A202341.P2903062940164643080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202341 (n : ℕ) : ℤ :=
  (A202341.P2903062940164643080.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202637.P2116359330053341843

`A041008(2*n)`
-/

namespace A202637.P2116359330053341843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041008 (2 * n)

end

end A202637.P2116359330053341843

noncomputable section

/-- A202637: x-values in the solution to x^2 - 7*y^2 = -3.

Offset 1, canonical program `A202637.P2116359330053341843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A202637 (n : ℕ) : ℤ :=
  A202637.P2116359330053341843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A202637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203299.P16754718405884152906

`A203246(n+2)+∑[∑[lcm(2, n)+3]]`
-/

namespace A203299.P16754718405884152906
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203246 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A203299.P16754718405884152906

noncomputable section

/-- A203299: Second elementary symmetric function of the first n terms of (2,2,3,3,4,4,5,5...).

Offset 2, canonical program `A203299.P16754718405884152906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203299 (n : ℕ) : ℤ :=
  A203299.P16754718405884152906.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203553.P6403346514830057154

`xor(1, A094761(n)-A259361(n))`
-/

namespace A203553.P6403346514830057154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A094761 n - A259361 n)

end

end A203553.P6403346514830057154

noncomputable section

/-- A203553: Lodumo_2 of A118175, which is n 1's followed by n 0's.

Offset 0, canonical program `A203553.P6403346514830057154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203553 (n : ℕ) : ℤ :=
  A203553.P6403346514830057154.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203554.P1633143920349780261

`abs(A094761(n)-A259361(n))`
-/

namespace A203554.P1633143920349780261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094761 n - A259361 n|

end

end A203554.P1633143920349780261

noncomputable section

/-- A203554: Lodumo_2 of A079813, which is n 0's followed by n 1's.

Offset 0, canonical program `A203554.P1633143920349780261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203554 (n : ℕ) : ℤ :=
  A203554.P1633143920349780261.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203570.P14237758701816468598

`A001254(n)+A027979(n)-A002878(n)`
-/

namespace A203570.P14237758701816468598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001254 n + (A027979 n - A002878 n)

end

end A203570.P14237758701816468598

noncomputable section

/-- A203570: Bisection of A201207 (half-convolution of the Lucas sequence A000032 with itself); even part.

Offset 0, canonical program `A203570.P14237758701816468598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A203570 (n : ℕ) : ℤ :=
  A203570.P14237758701816468598.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A203570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204175.P4096975912672246987

`1-A204171(n+1)`
-/

namespace A204175.P4096975912672246987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A204171 (n + 1)

end

end A204175.P4096975912672246987

noncomputable section

/-- A204175: Symmetric matrix based on f(i,j)=(1 if max(i,j) is even, and 0 otherwise), by antidiagonals.

Offset 1, canonical program `A204175.P4096975912672246987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204175 (n : ℕ) : ℤ :=
  A204175.P4096975912672246987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204214.P753734922948979263

`Δ[A213556(n+1)+A004282(n)]`
-/

namespace A204214.P753734922948979263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213556 (n + 1) + A004282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A204214.P753734922948979263

noncomputable section

/-- A204214: Number of length 6 nonnegative integer arrays starting and ending with 0 with adjacent elements differing by no more than n.

Offset 1, canonical program `A204214.P753734922948979263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A204214 (n : ℕ) : ℤ :=
  A204214.P753734922948979263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A204214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204429.P1450093185621297544

`2-A204421(n+1)`
-/

namespace A204429.P1450093185621297544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A204421 (n + 1)

end

end A204429.P1450093185621297544

noncomputable section

/-- A204429: Symmetric matrix: f(i,j)=(2*i + 2*j) mod 3, by antidiagonals.

Offset 1, canonical program `A204429.P1450093185621297544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204429 (n : ℕ) : ℤ :=
  A204429.P1450093185621297544.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204437.P15617630980625576851

`and(1, A108037(n))`
-/

namespace A204437.P15617630980625576851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A108037 n)

end

end A204437.P15617630980625576851

noncomputable section

/-- A204437: Symmetric matrix: f(i,j)=((i+j+1)^2 mod 3), by (constant) antidiagonals.

Offset 1, canonical program `A204437.P15617630980625576851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204437 (n : ℕ) : ℤ :=
  A204437.P15617630980625576851.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204441.P7061204664835740213

`A168181(A279891(n)+2)`
-/

namespace A204441.P7061204664835740213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168181 (A279891 n + 2).toNat

end

end A204441.P7061204664835740213

noncomputable section

/-- A204441: Symmetric matrix: f(i,j)=floor[(i+j+2)/4]-floor[(i+j-1)/4], by (constant) antidiagonals.

Offset 1, canonical program `A204441.P7061204664835740213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204441 (n : ℕ) : ℤ :=
  A204441.P7061204664835740213.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204445.P52060757072548891

`round(2/(A204255(n+1)+1))`
-/

namespace A204445.P52060757072548891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / (A204255 (n + 1) + 1 : ℚ))

end

end A204445.P52060757072548891

noncomputable section

/-- A204445: Symmetric matrix: f(i,j)=floor[(i+j+4)/4]-floor[(i+j+1)/4], by (constant) antidiagonals.

Offset 1, canonical program `A204445.P52060757072548891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204445 (n : ℕ) : ℤ :=
  A204445.P52060757072548891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204544.P4329731522923238201

`5^n*A002380(n)`
-/

namespace A204544.P4329731522923238201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A002380 n

end

end A204544.P4329731522923238201

noncomputable section

/-- A204544: Fractional part of (3/2)^n without the decimal point.

Offset 0, canonical program `A204544.P4329731522923238201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A204544 (n : ℕ) : ℤ :=
  A204544.P4329731522923238201.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A204544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204545.P11394262719737038937

`gcd(2, A057944(n))-1`
-/

namespace A204545.P11394262719737038937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A057944 n) : ℤ) - 1

end

end A204545.P11394262719737038937

noncomputable section

/-- A204545: Symmetric matrix: f(i,j)=floor[(i+j+3)/4]-floor[(i+j+1)/4], by (constant) antidiagonals.

Offset 1, canonical program `A204545.P11394262719737038937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204545 (n : ℕ) : ℤ :=
  A204545.P11394262719737038937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204547.P3252054047008293211

`1-A204269(n+1)`
-/

namespace A204547.P3252054047008293211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A204269 (n + 1)

end

end A204547.P3252054047008293211

noncomputable section

/-- A204547: Symmetric matrix: f(i,j)=floor[(i+j+4)/4]-floor[(i+j+2)/4], by (constant) antidiagonals.

Offset 1, canonical program `A204547.P3252054047008293211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204547 (n : ℕ) : ℤ :=
  A204547.P3252054047008293211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204549.P1941969792183270277

`A057944(n)%2`
-/

namespace A204549.P1941969792183270277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057944 n) 2

end

end A204549.P1941969792183270277

noncomputable section

/-- A204549: Symmetric matrix: f(i,j)=floor[(i+j+5)/4]-floor[(i+j+3)/4], by (constant) antidiagonals.

Offset 1, canonical program `A204549.P1941969792183270277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204549 (n : ℕ) : ℤ :=
  A204549.P1941969792183270277.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204815.P8666352689272894956

`(A277543(A000038(n)+n)^n)%5`
-/

namespace A204815.P8666352689272894956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277543 (A000038 n + (n : ℤ)).toNat ^ n) 5

end

end A204815.P8666352689272894956

noncomputable section

/-- A204815: Final nonzero digit of n^n in base 5.

Offset 0, canonical program `A204815.P8666352689272894956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A204815 (n : ℕ) : ℤ :=
  A204815.P8666352689272894956.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A204815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206032.P15818663996432524408

`∏{d}[n+1, A001065(#)+#]`
-/

namespace A206032.P15818663996432524408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (A001065 d + (d : ℤ))

end

end A206032.P15818663996432524408

noncomputable section

/-- A206032: a(n) = Product_{d|n} sigma(d) where sigma = A000203.

Offset 1, canonical program `A206032.P15818663996432524408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A206032 (n : ℕ) : ℤ :=
  A206032.P15818663996432524408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A206032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206268.P9393558027782757496

`A191830(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A206268.P9393558027782757496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A191830 (n - 1) + a (n - 1)

end

end A206268.P9393558027782757496

noncomputable section

/-- A206268: Number of compositions of n with at most one 1.

Offset 0, canonical program `A206268.P9393558027782757496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A206268 (n : ℕ) : ℤ :=
  A206268.P9393558027782757496.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A206268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206773.P1039150232301474807

`A001065(n+1)-A105221(n+1)`
-/

namespace A206773.P1039150232301474807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A105221 (n + 1)

end

end A206773.P1039150232301474807

noncomputable section

/-- A206773: Sum of the nonprime proper divisors (or nonprime aliquot parts) of n.

Offset 1, canonical program `A206773.P1039150232301474807`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206773 (n : ℕ) : ℤ :=
  A206773.P1039150232301474807.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206773.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A206803.P2151029632934271645

`∑[2*A206802(n+2)]`
-/

namespace A206803.P2151029632934271645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A206802 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206803.P2151029632934271645

noncomputable section

/-- A206803: Sum_{0

Offset 2, canonical program `A206803.P2151029632934271645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206803 (n : ℕ) : ℤ :=
  A206803.P2151029632934271645.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206804.P1242575260079652548

`∑[A206802(n+2)]`
-/

namespace A206804.P1242575260079652548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206802 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206804.P1242575260079652548

noncomputable section

/-- A206804: (1/2)*A206803.

Offset 2, canonical program `A206804.P1242575260079652548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206804 (n : ℕ) : ℤ :=
  A206804.P1242575260079652548.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206824.P14274703909039369394

`A091954(∏{p}[n+2, #])`
-/

namespace A206824.P14274703909039369394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A206824.P14274703909039369394

noncomputable section

/-- A206824: Number of solutions (n,k) of s(k) = s(n) (mod n), where 1 <= k < n and s(k) = k(k+1)/2.

Offset 2, canonical program `A206824.P14274703909039369394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A206824 (n : ℕ) : ℤ :=
  A206824.P14274703909039369394.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A206824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206907.P3358709916380969385

`A002264(A097337(n+1))+∑[A177702(n)]`
-/

namespace A206907.P3358709916380969385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A097337 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206907.P3358709916380969385

noncomputable section

/-- A206907: n+[nr/s]+[nt/s], where []=floor, r=1/3, s=sqrt(3), t=1/s.

Offset 1, canonical program `A206907.P3358709916380969385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206907 (n : ℕ) : ℤ :=
  A206907.P3358709916380969385.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207400.P14434467165464985475

`A166830(n+1)*A181510(n+1)`
-/

namespace A207400.P14434467165464985475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166830 (n + 1) * A181510 (n + 1)

end

end A207400.P14434467165464985475

noncomputable section

/-- A207400: Number of n X 5 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 1 0 vertically.

Offset 1, canonical program `A207400.P14434467165464985475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207400 (n : ℕ) : ℤ :=
  A207400.P14434467165464985475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207990.P6589723644473389047

`p?[∑[A031131(n+1)]]`
-/

namespace A207990.P6589723644473389047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207990.P6589723644473389047

noncomputable section

/-- A207990: Primes of the form prime(n) + prime(n+1) - 5.

Offset 1, canonical program `A207990.P6589723644473389047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1983 terms. -/
def A207990 (n : ℕ) : ℤ :=
  A207990.P6589723644473389047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1983 terms. -/
def A207990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207991.P23937838274844558

`p?[A001043(n+1)+5]`
-/

namespace A207991.P23937838274844558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207991.P23937838274844558

noncomputable section

/-- A207991: Primes of the form prime(n) + prime(n+1) + 5.

Offset 1, canonical program `A207991.P23937838274844558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1975 terms. -/
def A207991 (n : ℕ) : ℤ :=
  A207991.P23937838274844558.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1975 terms. -/
def A207991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208089.P15961409153887252375

`3*A208087(n+1)`
-/

namespace A208089.P15961409153887252375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A208087 (n + 1)

end

end A208089.P15961409153887252375

noncomputable section

/-- A208089: Number of 8 X (n+1) 0..1 arrays with every 2 X 2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..1 introduced in row major order.

Offset 1, canonical program `A208089.P15961409153887252375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A208089 (n : ℕ) : ℤ :=
  A208089.P15961409153887252375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A208089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208176.P16613018010814383461

`A059929(n)+1`
-/

namespace A208176.P16613018010814383461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 n + 1

end

end A208176.P16613018010814383461

noncomputable section

/-- A208176: a(n) = F(n+1)^2, if n>=0 is even (F=A000045) and a(n) = (L(2n+2)+8)/5, if n is odd (L=A000204).

Offset 0, canonical program `A208176.P16613018010814383461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A208176 (n : ℕ) : ℤ :=
  A208176.P16613018010814383461.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A208176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208548.P11240313443183236661

`A002264(A175222(n+1))-A046933(n+1)`
-/

namespace A208548.P11240313443183236661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A175222 (n + 1)).toNat - A046933 (n + 1)

end

end A208548.P11240313443183236661

noncomputable section

/-- A208548: a(n) = floor((4/3)*(2+prime(n)) - prime(n+1)).

Offset 1, canonical program `A208548.P11240313443183236661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A208548 (n : ℕ) : ℤ :=
  A208548.P11240313443183236661.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A208548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208665.P1447488627337888995

`∑[3*A120437(n+1)]`
-/

namespace A208665.P1447488627337888995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A120437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208665.P1447488627337888995

noncomputable section

/-- A208665: Numbers that match odd ternary polynomials; see Comments.

Offset 1, canonical program `A208665.P1447488627337888995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208665 (n : ℕ) : ℤ :=
  A208665.P1447488627337888995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208890.P15905558347705889732

`A000984(n)*A004981(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A208890.P15905558347705889732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A004981 n

end

end A208890.P15905558347705889732

noncomputable section

/-- A208890: a(n) = A000984(n)*A004981(n), the term-wise product of the coefficients in (1-4*x)^(-1/2) and (1-8*x)^(-1/4).

Offset 0, canonical program `A208890.P15905558347705889732`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004981, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A208890 (n : ℕ) : ℤ :=
  A208890.P15905558347705889732.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004981, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A208890.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A209231.P5618915818047327057

`A005253(n)-1`
-/

namespace A209231.P5618915818047327057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005253 n - 1

end

end A209231.P5618915818047327057

noncomputable section

/-- A209231: Number of binary words of length n such that there is at least one 0 and every run of consecutive 0's is of length >= 4.

Offset 0, canonical program `A209231.P5618915818047327057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. -/
def A209231 (n : ℕ) : ℤ :=
  A209231.P5618915818047327057.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. -/
def A209231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209614.P10572847628687150085

`∑{d}[Δ[A048766(n)], A000045((n+1)/#)]`
-/

namespace A209614.P10572847628687150085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A209614.P10572847628687150085

noncomputable section

/-- A209614: G.f.: Sum_{n>=1} Fibonacci(n^3)*x^(n^3).

Offset 1, canonical program `A209614.P10572847628687150085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A209614 (n : ℕ) : ℤ :=
  A209614.P10572847628687150085.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A209614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209634.P15930513484194304343

`3*A082375(n)+1`
-/

namespace A209634.P15930513484194304343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A082375 n + 1

end

end A209634.P15930513484194304343

noncomputable section

/-- A209634: Triangle with (1,4,7,10,13,16...,(3*n-2),...) in every column, shifted down twice.

Offset 1, canonical program `A209634.P15930513484194304343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209634 (n : ℕ) : ℤ :=
  A209634.P15930513484194304343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209859.P17593637001217111861

`floor(A209639(n)/2)`
-/

namespace A209859.P17593637001217111861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A209639 n : ℚ) / 2⌋

end

end A209859.P17593637001217111861

noncomputable section

/-- A209859: Rewrite the binary expansion of n from the most significant end, 1 -> 1, 0+1 (one or more zeros followed by one) -> 0, drop the trailing zeros of the original n.

Offset 0, canonical program `A209859.P17593637001217111861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A209859 (n : ℕ) : ℤ :=
  A209859.P17593637001217111861.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A209859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209929.P9729360077625781388

`round(sqrt(atan(A190997(n+1))))`
-/

namespace A209929.P9729360077625781388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.arctan (A190997 (n + 1) : ℝ)))

end

end A209929.P9729360077625781388

noncomputable section

/-- A209929: Smallest digit of all divisors of n.

Offset 1, canonical program `A209929.P9729360077625781388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209929 (n : ℕ) : ℤ :=
  A209929.P9729360077625781388.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210064.P5749393447975860566

`A038806(n)-A018218(n)`
-/

namespace A210064.P5749393447975860566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038806 n - A018218 n

end

end A210064.P5749393447975860566

noncomputable section

/-- A210064: Total number of 231 patterns in the set of permutations avoiding 123.

Offset 1, canonical program `A210064.P5749393447975860566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A210064 (n : ℕ) : ℤ :=
  A210064.P5749393447975860566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A210064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210136.P4525698088877762562

`A210054(n+1)-A209822(n+1)`
-/

namespace A210136.P4525698088877762562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210054 (n + 1) - A209822 (n + 1)

end

end A210136.P4525698088877762562

noncomputable section

/-- A210136: Number of (n+1) X 2 0..3 arrays containing all values 0..3 with every 2 X 2 subblock having one, two or four distinct values, and new values 0..3 introduced in row major order.

Offset 1, canonical program `A210136.P4525698088877762562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A210136 (n : ℕ) : ℤ :=
  A210136.P4525698088877762562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A210136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210209.P12905943660189559259

`A115311(n+1)/A131534(n)`
-/

namespace A210209.P12905943660189559259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115311 (n + 1) : ℚ) / (A131534 n : ℚ)

end

end A210209.P12905943660189559259

noncomputable section

/-- A210209: GCD of all sums of n consecutive Fibonacci numbers.

Offset 0, canonical program `A210209.P12905943660189559259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 958 terms. -/
def A210209 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A210209.P12905943660189559259.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 958 terms. -/
def A210209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210357.P3827189753604429060

`A110655(A022851(n+1))`
-/

namespace A210357.P3827189753604429060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A022851 (n + 1)).toNat

end

end A210357.P3827189753604429060

noncomputable section

/-- A210357: Location of the maximum modulus in the inverse of Hilbert's matrix.

Offset 1, canonical program `A210357.P3827189753604429060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A210357 (n : ℕ) : ℤ :=
  A210357.P3827189753604429060.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A210357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210435.P7595724009279329966

`1-A192543(n+1)+n`
-/

namespace A210435.P7595724009279329966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A192543 (n + 1) + (n : ℤ)

end

end A210435.P7595724009279329966

noncomputable section

/-- A210435: Number of digits in 5^n.

Offset 0, canonical program `A210435.P7595724009279329966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210435 (n : ℕ) : ℤ :=
  A210435.P7595724009279329966.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210497.P15561998313545519789

`A001043(n+1)-A062234(n+1)`
-/

namespace A210497.P15561998313545519789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - A062234 (n + 1)

end

end A210497.P15561998313545519789

noncomputable section

/-- A210497: a(n) = 2*prime(n+1) - prime(n).

Offset 1, canonical program `A210497.P15561998313545519789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210497 (n : ℕ) : ℤ :=
  A210497.P15561998313545519789.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210934.P6617217077888488102

`A001414(A008864(n+1))`
-/

namespace A210934.P6617217077888488102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A008864 (n + 1)).toNat

end

end A210934.P6617217077888488102

noncomputable section

/-- A210934: Sum of prime factors of prime(n)+1 (counted with multiplicity).

Offset 1, canonical program `A210934.P6617217077888488102`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A008864, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A210934 (n : ℕ) : ℤ :=
  A210934.P6617217077888488102.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A008864, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A210934.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A210936.P14296701000802497448

`A001414(A006093(n+1))`
-/

namespace A210936.P14296701000802497448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A006093 (n + 1)).toNat

end

end A210936.P14296701000802497448

noncomputable section

/-- A210936: Sum of prime factors of prime(n)-1 (counted with multiplicity).

Offset 1, canonical program `A210936.P14296701000802497448`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A006093, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A210936 (n : ℕ) : ℤ :=
  A210936.P14296701000802497448.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A006093, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A210936.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A211265.P3770983483908970250

`∑[A211159(n+1)]+n`
-/

namespace A211265.P3770983483908970250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A211265.P3770983483908970250

noncomputable section

/-- A211265: Number of integer pairs (x,y) such that 0

Offset 1, canonical program `A211265.P3770983483908970250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211265 (n : ℕ) : ℤ :=
  A211265.P3770983483908970250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211381.P2497063138568768857

`A211380(n+3)-A000332(n+3)`
-/

namespace A211381.P2497063138568768857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211380 (n + 3) - A000332 (n + 3)

end

end A211381.P2497063138568768857

noncomputable section

/-- A211381: Number of pairs of intersecting diagonals in the exterior of a regular n-gon.

Offset 3, canonical program `A211381.P2497063138568768857`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211380, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211381 (n : ℕ) : ℤ :=
  A211381.P2497063138568768857.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211380, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211381.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A211528.P14625012457903362307

`A211525(n+1)+2*A006327(n+4)`
-/

namespace A211528.P14625012457903362307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211525 (n + 1) + 2 * A006327 (n + 4)

end

end A211528.P14625012457903362307

noncomputable section

/-- A211528: Number of -1..1 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having two, four or six distinct values for every i,j,k<=n.

Offset 1, canonical program `A211528.P14625012457903362307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A211528 (n : ℕ) : ℤ :=
  A211528.P14625012457903362307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A211528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211529.P292426756212088253

`A211526(n+1)+2*A006327(n+4)`
-/

namespace A211529.P292426756212088253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211526 (n + 1) + 2 * A006327 (n + 4)

end

end A211529.P292426756212088253

noncomputable section

/-- A211529: Number of -1..1 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having two, four, five or six distinct values for every i,j,k<=n.

Offset 1, canonical program `A211529.P292426756212088253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A211529 (n : ℕ) : ℤ :=
  A211529.P292426756212088253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A211529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211542.P7607861162328610110

`A004652(n)-A069905(A052938(n))`
-/

namespace A211542.P7607861162328610110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 n - A069905 (A052938 n).toNat

end

end A211542.P7607861162328610110

noncomputable section

/-- A211542: Number of ordered triples (w,x,y) with all terms in {1,...,n} and 2w=4y-3x.

Offset 0, canonical program `A211542.P7607861162328610110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211542 (n : ℕ) : ℤ :=
  A211542.P7607861162328610110.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212159.P1250702774170849760

`(-1)^A006254(n+1)`
-/

namespace A212159.P1250702774170849760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A006254 (n + 1) : ℤ)

end

end A212159.P1250702774170849760

noncomputable section

/-- A212159: a(n) = (-1)^((prime(n) + 1)/2).

Offset 2, canonical program `A212159.P1250702774170849760`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212159 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A212159.P1250702774170849760.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212159.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A212233.P15822774752107181943

`A027914(2*(n+1))`
-/

namespace A212233.P15822774752107181943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 (2 * (n + 1))

end

end A212233.P15822774752107181943

noncomputable section

/-- A212233: Number of 0..2 arrays of length 2*n with sum no more than 2*n in any length 2n subsequence (=50% duty cycle).

Offset 1, canonical program `A212233.P15822774752107181943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A212233 (n : ℕ) : ℤ :=
  A212233.P15822774752107181943.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A212233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212404.P10514492863889483640

`A004171(n+1)+A001791(n)`
-/

namespace A212404.P10514492863889483640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 (n + 1) + A001791 n

end

end A212404.P10514492863889483640

noncomputable section

/-- A212404: Number of binary arrays of length 2*n+2 with no more than n ones in any length 2n subsequence (=50% duty cycle).

Offset 1, canonical program `A212404.P10514492863889483640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A212404 (n : ℕ) : ℤ :=
  A212404.P10514492863889483640.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A212404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212510.P14644633675115054678

`(A001840(n)-n)*A077043(n)`
-/

namespace A212510.P14644633675115054678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001840 n - (n : ℤ)) * A077043 n

end

end A212510.P14644633675115054678

noncomputable section

/-- A212510: Number of (w,x,y,z) with all terms in {1,...,n} and w3z.

Offset 0, canonical program `A212510.P14644633675115054678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212510 (n : ℕ) : ℤ :=
  A212510.P14644633675115054678.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212512.P2827929840228850799

`(A211540(n)+A006578(n))*A006578(n)`
-/

namespace A212512.P2827929840228850799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A211540 n + A006578 n) * A006578 n

end

end A212512.P2827929840228850799

noncomputable section

/-- A212512: Number of (w,x,y,z) with all terms in {1,...,n} and w<=2x and y

Offset 0, canonical program `A212512.P2827929840228850799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212512 (n : ℕ) : ℤ :=
  A212512.P2827929840228850799.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212513.P9978081440259541698

`A006578(n)*A397972(n)`
-/

namespace A212513.P9978081440259541698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006578 n * A397972 n

end

end A212513.P9978081440259541698

noncomputable section

/-- A212513: Number of (w,x,y,z) with all terms in {1,...,n} and w<=2x and y<=3z.

Offset 0, canonical program `A212513.P9978081440259541698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212513 (n : ℕ) : ℤ :=
  A212513.P9978081440259541698.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212514.P3714945399054877261

`(A001840(n)-n)*A006578(n)`
-/

namespace A212514.P3714945399054877261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001840 n - (n : ℤ)) * A006578 n

end

end A212514.P3714945399054877261

noncomputable section

/-- A212514: Number of (w,x,y,z) with all terms in {1,...,n} and w<=2x and y>3z.

Offset 0, canonical program `A212514.P3714945399054877261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212514 (n : ℕ) : ℤ :=
  A212514.P3714945399054877261.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212517.P9130843482353071563

`(n²-A006578(n))*A397972(n)`
-/

namespace A212517.P9130843482353071563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - A006578 n) * A397972 n

end

end A212517.P9130843482353071563

noncomputable section

/-- A212517: Number of (w,x,y,z) with all terms in {1,...,n} and w>2x and y<=3z.

Offset 0, canonical program `A212517.P9130843482353071563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212517 (n : ℕ) : ℤ :=
  A212517.P9130843482353071563.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212518.P17660951834491083763

`(A001840(n)-n)*∑[A140106(n+1)]`
-/

namespace A212518.P17660951834491083763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001840 n - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212518.P17660951834491083763

noncomputable section

/-- A212518: Number of (w,x,y,z) with all terms in {1,...,n} and w>2x and y>3z.

Offset 0, canonical program `A212518.P17660951834491083763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212518 (n : ℕ) : ℤ :=
  A212518.P17660951834491083763.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212519.P16552761711127633602

`∑[A140106(n+1)]*∑[A002264(n)]`
-/

namespace A212519.P16552761711127633602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A212519.P16552761711127633602

noncomputable section

/-- A212519: Number of (w,x,y,z) with all terms in {1,...,n} and w>2x and y>=3z.

Offset 0, canonical program `A212519.P16552761711127633602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212519 (n : ℕ) : ℤ :=
  A212519.P16552761711127633602.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212595.P16881548213722038787

`A175851(2*(n+6))`
-/

namespace A212595.P16881548213722038787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (2 * (n + 6))

end

end A212595.P16881548213722038787

noncomputable section

/-- A212595: Let f(n) = 2n-7. Difference between f(n) and the nearest prime < f(n).

Offset 10, canonical program `A212595.P16881548213722038787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9991 terms. -/
def A212595 (n : ℕ) : ℤ :=
  A212595.P16881548213722038787.a (n - 10)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9991 terms. -/
def A212595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212600.P11668726103471995510

`filter[A136437(n+3), A066247(#)]`
-/

namespace A212600.P11668726103471995510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136437 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A212600.P11668726103471995510

noncomputable section

/-- A212600: Composite numbers p-m! arising in A212266.

Offset 1, canonical program `A212600.P11668726103471995510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5599 terms. -/
def A212600 (n : ℕ) : ℤ :=
  A212600.P11668726103471995510.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5599 terms. -/
def A212600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212669.P13872816623606607563

`2*(n+1)+16*A002299(n)`
-/

namespace A212669.P13872816623606607563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + 16 * A002299 n

end

end A212669.P13872816623606607563

noncomputable section

/-- A212669: a(n) = 2/15 * (32*n^5 + 80*n^4 + 40*n^3 - 20*n^2 + 3*n).

Offset 1, canonical program `A212669.P13872816623606607563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212669 (n : ℕ) : ℤ :=
  A212669.P13872816623606607563.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212676.P10516445017516578818

`A342397(n)+n*∑[A065033(n)-2]`
-/

namespace A212676.P10516445017516578818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342397 n + (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212676.P10516445017516578818

noncomputable section

/-- A212676: Number of (w,x,y,z) with all terms in {1,...,n} and w+x=|x-y|+|y-z|.

Offset 0, canonical program `A212676.P10516445017516578818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212676 (n : ℕ) : ℤ :=
  A212676.P10516445017516578818.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212677.P3721750323941663788

`∑[A242771(record[A029579(n)])]`
-/

namespace A212677.P3721750323941663788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242771 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212677.P3721750323941663788

noncomputable section

/-- A212677: Number of (w,x,y,z) with all terms in {1,...,n} and w+y=|x-y|+|y-z|.

Offset 0, canonical program `A212677.P3721750323941663788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A212677 (n : ℕ) : ℤ :=
  A212677.P3721750323941663788.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A212677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212689.P12151621685584583542

`A131479(n)-A212688(n)`
-/

namespace A212689.P12151621685584583542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131479 n - A212688 n

end

end A212689.P12151621685584583542

noncomputable section

/-- A212689: Number of (w,x,y,z) with all terms in {1,...,n} and 2|w-x|>n+|y-z|.

Offset 0, canonical program `A212689.P12151621685584583542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212689 (n : ℕ) : ℤ :=
  A212689.P12151621685584583542.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212743.P8901795894585003481

`(n+1)²²-A212742(n)`
-/

namespace A212743.P8901795894585003481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A212742 n

end

end A212743.P8901795894585003481

noncomputable section

/-- A212743: Number of (w,x,y,z) with all terms in {0,...,n} and max{w,x,y,z}>2*min{w,x,y,z}.

Offset 0, canonical program `A212743.P8901795894585003481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212743 (n : ℕ) : ℤ :=
  A212743.P8901795894585003481.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212769.P16448248741169686819

`A006094(n+1)%A001043(n+1)`
-/

namespace A212769.P16448248741169686819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006094 (n + 1)) (A001043 (n + 1))

end

end A212769.P16448248741169686819

noncomputable section

/-- A212769: p*q modulo (p+q) with p, q consecutive primes.

Offset 1, canonical program `A212769.P16448248741169686819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212769 (n : ℕ) : ℤ :=
  A212769.P16448248741169686819.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212849.P15956116978994903587

`record[A000027(n+1)*A010054(A001414(n+1))]`
-/

namespace A212849.P15956116978994903587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A010054 (A001414 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212849.P15956116978994903587

noncomputable section

/-- A212849: Numbers whose sum of prime factors (counted with multiplicity) is a triangular number.

Offset 1, canonical program `A212849.P15956116978994903587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. -/
def A212849 (n : ℕ) : ℤ :=
  A212849.P15956116978994903587.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. -/
def A212849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212890.P12500765985835150325

`(n+1)^4-A212889(n)`
-/

namespace A212890.P12500765985835150325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) - A212889 n

end

end A212890.P12500765985835150325

noncomputable section

/-- A212890: Number of (w,x,y,z) with all terms in {0,...,n} and odd range.

Offset 0, canonical program `A212890.P12500765985835150325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212890 (n : ℕ) : ℤ :=
  A212890.P12500765985835150325.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212905.P11159810601554210294

`2*A213483(n)-A005893(n)`
-/

namespace A212905.P11159810601554210294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213483 n - A005893 n

end

end A212905.P11159810601554210294

noncomputable section

/-- A212905: Number of (w,x,y,z) with all terms in {0,...,n} and |w-x|+|x-y+|y-z|=2n.

Offset 0, canonical program `A212905.P11159810601554210294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212905 (n : ℕ) : ℤ :=
  A212905.P11159810601554210294.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212962.P160029048643165813

`A006497(n)-floor(A001254(n)/A005248(n))`
-/

namespace A212962.P160029048643165813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006497 n - ⌊(A001254 n : ℚ) / (A005248 n : ℚ)⌋

end

end A212962.P160029048643165813

noncomputable section

/-- A212962: Expansion of x*(3+x-x^3)/((1-3*x-x^2)*(1-x)*(1+x)).

Offset 0, canonical program `A212962.P160029048643165813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. -/
def A212962 (n : ℕ) : ℤ :=
  A212962.P160029048643165813.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. -/
def A212962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212977.P17578249698588708687

`C(n+3, 3)-A058187(n)`
-/

namespace A212977.P17578249698588708687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) - A058187 n

end

end A212977.P17578249698588708687

noncomputable section

/-- A212977: Number of (w,x,y) with all terms in {0,...,n} and n/2 < w+x+y <= n.

Offset 0, canonical program `A212977.P17578249698588708687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212977 (n : ℕ) : ℤ :=
  A212977.P17578249698588708687.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213032.P72579716324121742

`A010762(A028310(n))-A152467(n)²`
-/

namespace A213032.P72579716324121742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010762 (A028310 n).toNat - A152467 n ^ 2

end

end A213032.P72579716324121742

noncomputable section

/-- A213032: a(n) = floor(n/2)*floor(n/3)-floor(n/6)^2.

Offset 0, canonical program `A213032.P72579716324121742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213032 (n : ℕ) : ℤ :=
  A213032.P72579716324121742.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213042.P6060846030219902544

`A028289(n)-a(n-1)` with `a(0)=1`
-/

namespace A213042.P6060846030219902544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028289 n - a (n - 1)

end

end A213042.P6060846030219902544

noncomputable section

/-- A213042: Convolution of (1,0,2,0,3,0,...) and (1,0,0,2,0,0,3,0,0,...); i.e., (A027656(n)) and (A175676(n+2)).

Offset 0, canonical program `A213042.P6060846030219902544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213042 (n : ℕ) : ℤ :=
  A213042.P6060846030219902544.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213194.P3452364425526493797

`A008619(A060511(n))`
-/

namespace A213194.P3452364425526493797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A060511 n).toNat

end

end A213194.P3452364425526493797

noncomputable section

/-- A213194: First inverse function (numbers of rows) for pairing function A211377.

Offset 1, canonical program `A213194.P3452364425526493797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A213194 (n : ℕ) : ℤ :=
  A213194.P3452364425526493797.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A213194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213382.P4051828088006674872

`eq[n, A213381(n)]`
-/

namespace A213382.P4051828088006674872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213382.P4051828088006674872

noncomputable section

/-- A213382: Numbers n such that n^n mod (n + 2) = n.

Offset 1, canonical program `A213382.P4051828088006674872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 513 terms. -/
def A213382 (n : ℕ) : ℤ :=
  (A213382.P4051828088006674872.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 513 terms. -/
def A213382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213393.P16252528104220517147

`6*A190798(n+1)`
-/

namespace A213393.P16252528104220517147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A190798 (n + 1)

end

end A213393.P16252528104220517147

noncomputable section

/-- A213393: Number of (w,x,y) with all terms in {0,...,n} and 2*max(w,x,y) > 3*min(w,x,y).

Offset 0, canonical program `A213393.P16252528104220517147`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A190798, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213393 (n : ℕ) : ℤ :=
  A213393.P16252528104220517147.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A190798, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213393.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213394.P16098337122954015116

`n+1-A053666(n+1)`
-/

namespace A213394.P16098337122954015116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A053666 (n + 1)

end

end A213394.P16098337122954015116

noncomputable section

/-- A213394: The difference between n and the product of the digits of the n-th prime.

Offset 1, canonical program `A213394.P16098337122954015116`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213394 (n : ℕ) : ℤ :=
  A213394.P16098337122954015116.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213394.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213560.P16918128216561739588

`(n+2)/2*A145216(n+1)`
-/

namespace A213560.P16918128216561739588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A145216 (n + 1) : ℚ)

end

end A213560.P16918128216561739588

noncomputable section

/-- A213560: Antidiagonal sums of the convolution array A213558.

Offset 1, canonical program `A213560.P16918128216561739588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213560 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A213560.P16918128216561739588.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213706.P17260508495557102754

`a(n-1)+A071542(n)` with `a(0)=0`
-/

namespace A213706.P17260508495557102754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A071542 n

end

end A213706.P17260508495557102754

noncomputable section

/-- A213706: Partial sums of A071542.

Offset 0, canonical program `A213706.P17260508495557102754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071542, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213706 (n : ℕ) : ℤ :=
  A213706.P17260508495557102754.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071542, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213706.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213709.P17085692847900461859

`A071542(2^(n+1)-1)-A071542(2^n-1)`
-/

namespace A213709.P17085692847900461859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 (2 ^ (n + 1) - 1) - A071542 (2 ^ n - 1)

end

end A213709.P17085692847900461859

noncomputable section

/-- A213709: Number of steps to go from 2^(n+1)-1 to (2^n)-1 using the iterative process described in A071542.

Offset 0, canonical program `A213709.P17085692847900461859`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071542, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213709 (n : ℕ) : ℤ :=
  A213709.P17085692847900461859.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071542, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213709.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213710.P973503051556971072

`A071542(2^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A213710.P973503051556971072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 (2 ^ n)

end

end A213710.P973503051556971072

noncomputable section

/-- A213710: Number of steps to reach 0 when starting from 2^n and iterating the map x -> x - (number of 1's in binary representation of x): a(n) = A071542(2^n) = A218600(n)+1.

Offset 0, canonical program `A213710.P973503051556971072`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071542, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213710 (n : ℕ) : ℤ :=
  A213710.P973503051556971072.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071542, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213710.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213787.P10885586562566697687

`A000045(n)*A191797(n+1)-A056014(n+1)`
-/

namespace A213787.P10885586562566697687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A191797 (n + 1) - A056014 (n + 1)

end

end A213787.P10885586562566697687

noncomputable section

/-- A213787: a(n) = Sum_{1<=i

Offset 0, canonical program `A213787.P10885586562566697687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A213787 (n : ℕ) : ℤ :=
  A213787.P10885586562566697687.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A213787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213801.P6059428673365715276

`A064412(n+2)-A077043((2*(n+1)+1-(-1)^(n+1))/4)`
-/

namespace A213801.P6059428673365715276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064412 (n + 2) - A077043 (SequenceMachineLib.roundAway (((2 * (n + 1) : ℤ) + (1 - (-1) ^ (n + 1)) : ℚ) / 4)).toNat

end

end A213801.P6059428673365715276

noncomputable section

/-- A213801: Number of 3 X 3 0..n symmetric arrays with all rows summing to floor(n*3/2).

Offset 1, canonical program `A213801.P6059428673365715276`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064412, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213801 (n : ℕ) : ℤ :=
  A213801.P6059428673365715276.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064412, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213801.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214046.P3375513513788457765

`A061375(n+1)+A057427(n)`
-/

namespace A214046.P3375513513788457765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061375 (n + 1) + A057427 n

end

end A214046.P3375513513788457765

noncomputable section

/-- A214046: Least m>0 such that n! <= m^n.

Offset 1, canonical program `A214046.P3375513513788457765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214046 (n : ℕ) : ℤ :=
  A214046.P3375513513788457765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214054.P9495975754376215366

`gcd(2, A007912(xor(3, n)+3))`
-/

namespace A214054.P9495975754376215366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A007912 (Nat.xor 3 n + 3))

end

end A214054.P9495975754376215366

noncomputable section

/-- A214054: Least m>0 such that n!!+m and n-m have a common divisor > 1.

Offset 1, canonical program `A214054.P9495975754376215366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8165 terms. -/
def A214054 (n : ℕ) : ℤ :=
  (A214054.P9495975754376215366.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8165 terms. -/
def A214054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214081.P11361497169394466987

`A000142(A048766(n))`
-/

namespace A214081.P11361497169394466987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A048766 n).toNat

end

end A214081.P11361497169394466987

noncomputable section

/-- A214081: a(n) = floor( n^(1/3) )!.

Offset 0, canonical program `A214081.P11361497169394466987`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048766, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214081 (n : ℕ) : ℤ :=
  A214081.P11361497169394466987.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048766, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214081.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214293.P9450923103603162024

`A169695(A008706(n+1))-A169695(n+1)`
-/

namespace A214293.P9450923103603162024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (A008706 (n + 1)).toNat - A169695 (n + 1)

end

end A214293.P9450923103603162024

noncomputable section

/-- A214293: a(n) = 1 if n is a square, -1 if n is five times a square.

Offset 1, canonical program `A214293.P9450923103603162024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214293 (n : ℕ) : ℤ :=
  A214293.P9450923103603162024.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214317.P1350936880509777613

`10*a(n-1)+2-A005614(n)` with `a(0)=1`
-/

namespace A214317.P1350936880509777613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + (2 - A005614 n)

end

end A214317.P1350936880509777613

noncomputable section

/-- A214317: a(n) = length-n prefix of the Fibonacci word A003842.

Offset 1, canonical program `A214317.P1350936880509777613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A214317 (n : ℕ) : ℤ :=
  A214317.P1350936880509777613.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A214317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214319.P793865802162299093

`A182028(n)+A003849(n+1)`
-/

namespace A214319.P793865802162299093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182028 n + A003849 (n + 1)

end

end A214319.P793865802162299093

noncomputable section

/-- A214319: First differences of A182028.

Offset 0, canonical program `A214319.P793865802162299093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A214319 (n : ℕ) : ℤ :=
  A214319.P793865802162299093.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A214319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214509.P57029170938544749

`A136748(n+1)%A014710(n)`
-/

namespace A214509.P57029170938544749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136748 (n + 1)) (A014710 n)

end

end A214509.P57029170938544749

noncomputable section

/-- A214509: a(n) = 1 if n is an odd square or twice a nonzero even square, -1 if a nonzero even square or twice an odd square else 0.

Offset 1, canonical program `A214509.P57029170938544749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214509 (n : ℕ) : ℤ :=
  A214509.P57029170938544749.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214681.P13397189043489326683

`A065330(n+1)*A234959(n+1)`
-/

namespace A214681.P13397189043489326683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (n + 1) * A234959 (n + 1)

end

end A214681.P13397189043489326683

noncomputable section

/-- A214681: a(n) is obtained from n by removing factors of 2 and 3 that do not contribute to a factor of 6.

Offset 1, canonical program `A214681.P13397189043489326683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214681 (n : ℕ) : ℤ :=
  A214681.P13397189043489326683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214710.P3311664088709254903

`A007877(A007912(n+3)+A007893(n+1))`
-/

namespace A214710.P3311664088709254903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A007912 (n + 3) + A007893 (n + 1)).toNat

end

end A214710.P3311664088709254903

noncomputable section

/-- A214710: Least m>0 such that n!-m and n!!-m are relatively prime.

Offset 1, canonical program `A214710.P3311664088709254903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A214710 (n : ℕ) : ℤ :=
  A214710.P3311664088709254903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A214710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214824.P7114462778934576427

`A000917(n)-A002057(n)`
-/

namespace A214824.P7114462778934576427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000917 n - A002057 n

end

end A214824.P7114462778934576427

noncomputable section

/-- A214824: Number of solid standard Young tableaux of shape [[(2)^n],[2]].

Offset 1, canonical program `A214824.P7114462778934576427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A214824 (n : ℕ) : ℤ :=
  A214824.P7114462778934576427.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A214824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214838.P12315198182131377277

`A077241(n)²+2`
-/

namespace A214838.P12315198182131377277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077241 n ^ 2 + 2

end

end A214838.P12315198182131377277

noncomputable section

/-- A214838: Triangular numbers of the form k^2 + 2.

Offset 1, canonical program `A214838.P12315198182131377277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A214838 (n : ℕ) : ℤ :=
  A214838.P12315198182131377277.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A214838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214884.P2792534514431824253

`∑[∑[A099496(n)]]+xor(n, -1)`
-/

namespace A214884.P2792534514431824253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099496 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.xor (n : ℤ) (-1)

end

end A214884.P2792534514431824253

noncomputable section

/-- A214884: a(n) = Sum_{k=0..n} (-1)^k*F(k)*F(k+2), where F=A000045 (Fibonacci numbers).

Offset 0, canonical program `A214884.P2792534514431824253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A214884 (n : ℕ) : ℤ :=
  A214884.P2792534514431824253.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A214884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214885.P14676877343203418941

`A077916(n)-(n+1)`
-/

namespace A214885.P14676877343203418941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077916 n - (n + 1 : ℤ)

end

end A214885.P14676877343203418941

noncomputable section

/-- A214885: a(n) = Sum_{k=0..n} (-1)^k*F(k)*F(k+3), where F=A000045 (Fibonacci numbers).

Offset 0, canonical program `A214885.P14676877343203418941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A214885 (n : ℕ) : ℤ :=
  A214885.P14676877343203418941.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A214885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215030.P16388215424714916452

`and(A066033(n+1), A176040(n))`
-/

namespace A215030.P16388215424714916452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066033 (n + 1)) (A176040 n)

end

end A215030.P16388215424714916452

noncomputable section

/-- A215030: a(n) = A215029(A000040(n)), where A000040(n) is the n-th prime.

Offset 1, canonical program `A215030.P16388215424714916452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215030 (n : ℕ) : ℤ :=
  A215030.P16388215424714916452.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215092.P9241392620537580199

`∑[2-A080278(A234959(n+1))]`
-/

namespace A215092.P9241392620537580199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A080278 (A234959 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215092.P9241392620537580199

noncomputable section

/-- A215092: a(n) = Sum_{i=0..m} d(i)*3^i, where Sum_{i=0..m} d(i)*6^i is the base-6 representation of n.

Offset 1, canonical program `A215092.P9241392620537580199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215092 (n : ℕ) : ℤ :=
  A215092.P9241392620537580199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215175.P279961201682932440

`A214297(A026741(n))-A123108(A093178(n))`
-/

namespace A215175.P279961201682932440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214297 (A026741 n).toNat - A123108 (A093178 n).toNat

end

end A215175.P279961201682932440

noncomputable section

/-- A215175: a(2*n) = A214297(n), a(2*n+1) = A000290(n).

Offset 0, canonical program `A215175.P279961201682932440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215175 (n : ℕ) : ℤ :=
  A215175.P279961201682932440.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215259.P940527813139096403

`A187284(n)+n`
-/

namespace A215259.P940527813139096403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187284 n + (n : ℤ)

end

end A215259.P940527813139096403

noncomputable section

/-- A215259: Nearest integer to log(A003418(n)).

Offset 0, canonical program `A215259.P940527813139096403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215259 (n : ℕ) : ℤ :=
  A215259.P940527813139096403.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215294.P3946334629995793634

`∏[A081181(n)/A065942(n)]`
-/

namespace A215294.P3946334629995793634
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081181 n : ℚ) / (A065942 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A215294.P3946334629995793634

noncomputable section

/-- A215294: Number of permutations of 0..floor((n*3-2)/2) on odd squares of an n X 3 array such that each row and column of odd squares is increasing.

Offset 1, canonical program `A215294.P3946334629995793634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A215294 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A215294.P3946334629995793634.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A215294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215456.P7038399107069761046

`A007912(4*(n+1))%Δ[A002378(n)]`
-/

namespace A215456.P7038399107069761046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007912 (4 * (n + 1))) (f1 (n + 1) - f1 n)

end

end A215456.P7038399107069761046

noncomputable section

/-- A215456: a(n)=(4n-1)!! modulo 2n, n=1,2,...

Offset 1, canonical program `A215456.P7038399107069761046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A215456 (n : ℕ) : ℤ :=
  A215456.P7038399107069761046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A215456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215480.P17421984776920031326

`val(A105561(n+1), 3)`
-/

namespace A215480.P17421984776920031326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A105561 (n + 1)).toNat 3

end

end A215480.P17421984776920031326

noncomputable section

/-- A215480: Characteristic function of numbers n with exactly two distinct prime factors.

Offset 1, canonical program `A215480.P17421984776920031326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215480 (n : ℕ) : ℤ :=
  (A215480.P17421984776920031326.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215808.P8126471697275371774

`p?[A062234(n+1)]`
-/

namespace A215808.P8126471697275371774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215808.P8126471697275371774

noncomputable section

/-- A215808: Primes of the form 2*prime(k) - prime(k+1).

Offset 1, canonical program `A215808.P8126471697275371774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 918 terms. -/
def A215808 (n : ℕ) : ℤ :=
  A215808.P8126471697275371774.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 918 terms. -/
def A215808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215850.P12379767940283912571

`∩[A045457(n+1), A215751(n+1)]`
-/

namespace A215850.P12379767940283912571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215850.P12379767940283912571

noncomputable section

/-- A215850: Primes p such that 2*p + 1 divides Lucas(p).

Offset 1, canonical program `A215850.P12379767940283912571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1331 terms. -/
def A215850 (n : ℕ) : ℤ :=
  (A215850.P12379767940283912571.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1331 terms. -/
def A215850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215863.P7850156349747650779

`(∑[A008778(n+1)]+1)*∑[n]`
-/

namespace A215863.P7850156349747650779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A215863.P7850156349747650779

noncomputable section

/-- A215863: Number of simple labeled graphs on n+3 nodes with exactly n connected components that are trees or cycles.

Offset 0, canonical program `A215863.P7850156349747650779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215863 (n : ℕ) : ℤ :=
  A215863.P7850156349747650779.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215879.P7420381154779558260

`val(A094114(2*(n+1)), 2)`
-/

namespace A215879.P7420381154779558260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A094114 (2 * (n + 1))).toNat 2

end

end A215879.P7420381154779558260

noncomputable section

/-- A215879: Written in base 3, n ends in a(n) consecutive nonzero digits.

Offset 0, canonical program `A215879.P7420381154779558260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A215879 (n : ℕ) : ℤ :=
  (A215879.P7420381154779558260.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A215879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215917.P11031401657935840300

`Δ[A215885(n)]*A062157(n)`
-/

namespace A215917.P11031401657935840300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A062157 n

end

end A215917.P11031401657935840300

noncomputable section

/-- A215917: a(n) = -3*a(n-1) + a(n-3), with a(0)=0, a(1)=6, and a(2)=-15.

Offset 0, canonical program `A215917.P11031401657935840300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A215917 (n : ℕ) : ℤ :=
  A215917.P11031401657935840300.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A215917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216153.P15491257447114026993

`A205959(A018252(n+1))`
-/

namespace A216153.P15491257447114026993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205959 (A018252 (n + 1)).toNat

end

end A216153.P15491257447114026993

noncomputable section

/-- A216153: The partial products of a(n) are the distinct values of the exponential of the von Mangoldt function modified by restricting the divisors to prime divisors (A205957).

Offset 1, canonical program `A216153.P15491257447114026993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A216153 (n : ℕ) : ℤ :=
  A216153.P15491257447114026993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A216153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216687.P16719336148888210859

`record[A093178(n+11)*A188641(n+10)]`
-/

namespace A216687.P16719336148888210859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (n + 11) * A188641 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216687.P16719336148888210859

noncomputable section

/-- A216687: Odd numbers > 10 that can be written as m*s - m + 1, where s is the sum of their digits and m >= 1.

Offset 1, canonical program `A216687.P16719336148888210859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1195 terms. -/
def A216687 (n : ℕ) : ℤ :=
  A216687.P16719336148888210859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1195 terms. -/
def A216687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217218.P1330784543100849563

`A185590(A017401(n))`
-/

namespace A217218.P1330784543100849563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185590 (A017401 n).toNat

end

end A217218.P1330784543100849563

noncomputable section

/-- A217218: Trajectory of 44 under the map k -> A006368(k).

Offset 1, canonical program `A217218.P1330784543100849563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 910 terms. -/
def A217218 (n : ℕ) : ℤ :=
  A217218.P1330784543100849563.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 910 terms. -/
def A217218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217254.P1291140988976231142

`round(A128930(n+1)/(n+1))`
-/

namespace A217254.P1291140988976231142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A128930 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A217254.P1291140988976231142

noncomputable section

/-- A217254: a(n) = round(primepi(n) * prime(n)/n).

Offset 1, canonical program `A217254.P1291140988976231142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217254 (n : ℕ) : ℤ :=
  A217254.P1291140988976231142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217445.P645570032554833675

`eq[1, or(A057427(n), A180017(n))]`
-/

namespace A217445.P645570032554833675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057427 n) (A180017 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217445.P645570032554833675

noncomputable section

/-- A217445: Numbers n such that n! has the same number of terminating zeros in bases 3 and 4.

Offset 1, canonical program `A217445.P645570032554833675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2702 terms. -/
def A217445 (n : ℕ) : ℤ :=
  (A217445.P645570032554833675.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2702 terms. -/
def A217445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217477.P11172635933459327032

`(A004277(n)+2)*A168491(n)`
-/

namespace A217477.P11172635933459327032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 n + 2) * A168491 n

end

end A217477.P11172635933459327032

noncomputable section

/-- A217477: Z-sequence for the Riordan triangle A111125.

Offset 0, canonical program `A217477.P11172635933459327032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A217477 (n : ℕ) : ℤ :=
  A217477.P11172635933459327032.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A217477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217526.P4421922415180328638

`A168049(n)-A123108(n)`
-/

namespace A217526.P4421922415180328638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 n - A123108 n

end

end A217526.P4421922415180328638

noncomputable section

/-- A217526: From the enumeration of involutions avoiding the pattern 4321.

Offset 0, canonical program `A217526.P4421922415180328638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A217526 (n : ℕ) : ℤ :=
  A217526.P4421922415180328638.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A217526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217558.P16797002515684870992

`A008599(A053836(n))-n`
-/

namespace A217558.P16797002515684870992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008599 (A053836 n).toNat - (n : ℤ)

end

end A217558.P16797002515684870992

noncomputable section

/-- A217558: Split-and-swap on 8-bit integers.

Offset 0, canonical program `A217558.P16797002515684870992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A217558 (n : ℕ) : ℤ :=
  A217558.P16797002515684870992.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A217558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217622.P12949597402063927546

`A006450(2*(n+1))`
-/

namespace A217622.P12949597402063927546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (2 * (n + 1))

end

end A217622.P12949597402063927546

noncomputable section

/-- A217622: Prime(prime(2*n)).

Offset 1, canonical program `A217622.P12949597402063927546`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217622 (n : ℕ) : ℤ :=
  A217622.P12949597402063927546.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217622.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217623.P16926536028161874528

`A006450((n+1)²)`
-/

namespace A217623.P16926536028161874528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 ((n + 1) ^ 2)

end

end A217623.P16926536028161874528

noncomputable section

/-- A217623: a(n) = prime(prime(n^2)).

Offset 1, canonical program `A217623.P16926536028161874528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A217623 (n : ℕ) : ℤ :=
  A217623.P16926536028161874528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A217623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217624.P7503922285772767855

`A006450(3*(n+1))`
-/

namespace A217624.P7503922285772767855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (3 * (n + 1))

end

end A217624.P7503922285772767855

noncomputable section

/-- A217624: Prime(prime(3*n)).

Offset 1, canonical program `A217624.P7503922285772767855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217624 (n : ℕ) : ℤ :=
  A217624.P7503922285772767855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217656.P10697064785089551026

`∩[A140687(n+1), A141975(n+1)]`
-/

namespace A217656.P10697064785089551026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217656.P10697064785089551026

noncomputable section

/-- A217656: Primes p such that p = 361 + 420*k for some k.

Offset 1, canonical program `A217656.P10697064785089551026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1233 terms. -/
def A217656 (n : ℕ) : ℤ :=
  (A217656.P10697064785089551026.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1233 terms. -/
def A217656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217694.P620674075960763506

`A129361(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A217694.P620674075960763506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A129361 n - a (n - 2)

end

end A217694.P620674075960763506

noncomputable section

/-- A217694: Number of n-variations of the set {1,2,...,n+1} satisfying p(i)-i in {-2,0,2}, i=1..n (an n-variation of the set N_{n+s} = {1,2,...,n+s} is any 1-to-1 mapping p from the set N_n = {1,2,...,n} into N_{n+s} = {1,2,...,n+s}).

Offset 0, canonical program `A217694.P620674075960763506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A217694 (n : ℕ) : ℤ :=
  A217694.P620674075960763506.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A217694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217946.P4119184011466137260

`A000245(n+1)+record[A232500(n+5)]`
-/

namespace A217946.P4119184011466137260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232500 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217946.P4119184011466137260

noncomputable section

/-- A217946: a(n) = 4^n*(n+1)*(8*n^2+32*n+33)*P(3/2,n)/(3*P(4,n)) where P(a,n) is the Pochhammer rising factorial.

Offset 0, canonical program `A217946.P4119184011466137260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A217946 (n : ℕ) : ℤ :=
  A217946.P4119184011466137260.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A217946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218257.P16517323974653770966

`A059909((n+1)²)`
-/

namespace A218257.P16517323974653770966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059909 ((n + 1) ^ 2)

end

end A218257.P16517323974653770966

noncomputable section

/-- A218257: a(n) = |{m : multiplicative order of n mod m = 8}|.

Offset 1, canonical program `A218257.P16517323974653770966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A218257 (n : ℕ) : ℤ :=
  A218257.P16517323974653770966.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A218257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218381.P3083862309969667451

`lt[0, A211996(n+1)]+1`
-/

namespace A218381.P3083862309969667451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211996 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A218381.P3083862309969667451

noncomputable section

/-- A218381: Numbers k = i*j such that i+j is a square.

Offset 1, canonical program `A218381.P3083862309969667451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 977 terms. -/
def A218381 (n : ℕ) : ℤ :=
  (A218381.P3083862309969667451.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 977 terms. -/
def A218381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218444.P10091015155135104589

`∑[A001876(n)]`
-/

namespace A218444.P10091015155135104589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218444.P10091015155135104589

noncomputable section

/-- A218444: a(n) = Sum_{k>=0} floor(n/(5*k + 1)).

Offset 0, canonical program `A218444.P10091015155135104589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218444 (n : ℕ) : ℤ :=
  A218444.P10091015155135104589.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218445.P17304662535675583263

`∑[A001877(n)]`
-/

namespace A218445.P17304662535675583263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218445.P17304662535675583263

noncomputable section

/-- A218445: a(n) = Sum_{k>=0} floor(n/(5*k + 2)).

Offset 0, canonical program `A218445.P17304662535675583263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218445 (n : ℕ) : ℤ :=
  A218445.P17304662535675583263.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218446.P16595335050583582027

`∑[A001878(n)]`
-/

namespace A218446.P16595335050583582027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218446.P16595335050583582027

noncomputable section

/-- A218446: a(n) = Sum_{k>=0} floor(n/(5*k + 3)).

Offset 0, canonical program `A218446.P16595335050583582027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218446 (n : ℕ) : ℤ :=
  A218446.P16595335050583582027.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218461.P9982432580826872899

`floor(A006450(n+1)/A000040(n+1))`
-/

namespace A218461.P9982432580826872899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006450 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A218461.P9982432580826872899

noncomputable section

/-- A218461: Floor( prime(prime(n))/ prime(n) ).

Offset 1, canonical program `A218461.P9982432580826872899`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006450, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A218461 (n : ℕ) : ℤ :=
  A218461.P9982432580826872899.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006450, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A218461.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A219660.P14458110715348428642

`A000120(A051122(n))`
-/

namespace A219660.P14458110715348428642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A051122 n).toNat

end

end A219660.P14458110715348428642

noncomputable section

/-- A219660: a(n) = number of bit-positions where Fibonacci numbers F(n) and F(n+1) contain both an 1-bit in their binary representation.

Offset 0, canonical program `A219660.P14458110715348428642`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051122, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219660 (n : ℕ) : ℤ :=
  A219660.P14458110715348428642.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051122, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A220098.P14603736137621403724

`A053615(A128217(n+2))`
-/

namespace A220098.P14603736137621403724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A128217 (n + 2)).toNat

end

end A220098.P14603736137621403724

noncomputable section

/-- A220098: Manhattan distances between 2n and 1 in the double spiral with positive integers and 1 at the center.

Offset 1, canonical program `A220098.P14603736137621403724`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128217, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220098 (n : ℕ) : ℤ :=
  A220098.P14603736137621403724.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128217, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220098.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A220101.P13755942363765172959

`n*A000245(n)`
-/

namespace A220101.P13755942363765172959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000245 n

end

end A220101.P13755942363765172959

noncomputable section

/-- A220101: Number of ordered set partitions of {1,...,n} into n-1 blocks avoiding the pattern 123.

Offset 1, canonical program `A220101.P13755942363765172959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A220101 (n : ℕ) : ℤ :=
  A220101.P13755942363765172959.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A220101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220589.P547849876058364495

`2*A002026(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A220589.P547849876058364495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * A002026 (n + 1) - a (n - 1)

end

end A220589.P547849876058364495

noncomputable section

/-- A220589: Number of simple skew-merged permutations with n elements.

Offset 4, canonical program `A220589.P547849876058364495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A220589 (n : ℕ) : ℤ :=
  A220589.P547849876058364495.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A220589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220768.P15389986771423682204

`∑{d}[A004277(n), A000045(A158416(#))]`
-/

namespace A220768.P15389986771423682204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000045 (A158416 d).toNat

end

end A220768.P15389986771423682204

noncomputable section

/-- A220768: Number of tilings of a 2 X n rectangle using integer-sided rectangular tiles of equal area.

Offset 0, canonical program `A220768.P15389986771423682204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A220768 (n : ℕ) : ℤ :=
  A220768.P15389986771423682204.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A220768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220838.P14620897940068102218

`∑[A110656(n)-A002817(n+1)%2]`
-/

namespace A220838.P14620897940068102218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 n - Int.tmod (A002817 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220838.P14620897940068102218

noncomputable section

/-- A220838: Tropical version of Somos-4 sequence A006720.

Offset 1, canonical program `A220838.P14620897940068102218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220838 (n : ℕ) : ℤ :=
  A220838.P14620897940068102218.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220889.P18153767106500405500

`∑[A220888(n)]-A000332(n)`
-/

namespace A220889.P18153767106500405500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000332 n

end

end A220889.P18153767106500405500

noncomputable section

/-- A220889: a(n) = F(n+8) - (1/6)*(n^4-2*n^3+26*n^2+47*n+132) where F(i) = Fibonacci numbers (A000045).

Offset 1, canonical program `A220889.P18153767106500405500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A220889 (n : ℕ) : ℤ :=
  A220889.P18153767106500405500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A220889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220902.P9397525949046414963

`A099376(n)+A005807(n)`
-/

namespace A220902.P9397525949046414963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A005807 n

end

end A220902.P9397525949046414963

noncomputable section

/-- A220902: a(n) = Catalan(n) - A000245(n-2).

Offset 2, canonical program `A220902.P9397525949046414963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A220902 (n : ℕ) : ℤ :=
  A220902.P9397525949046414963.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A220902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221264.P4034302150785658829

`lt[A005094(n+1), 0]+1`
-/

namespace A221264.P4034302150785658829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A221264.P4034302150785658829

noncomputable section

/-- A221264: Numbers having fewer distinct prime factors of form 4*k+1 than of 4*k+3.

Offset 1, canonical program `A221264.P4034302150785658829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4562 terms. -/
def A221264 (n : ℕ) : ℤ :=
  (A221264.P4034302150785658829.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4562 terms. -/
def A221264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221265.P6244898558375044085

`lt[0, A005094(n+2)]+2`
-/

namespace A221265.P6244898558375044085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A221265.P6244898558375044085

noncomputable section

/-- A221265: Numbers having more distinct prime factors of form 4*k+1 than of 4*k+3.

Offset 1, canonical program `A221265.P6244898558375044085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2815 terms. -/
def A221265 (n : ℕ) : ℤ :=
  (A221265.P6244898558375044085.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2815 terms. -/
def A221265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222030.P10406464568820635234

`∪[∑[2*n], A089237(n+1)]`
-/

namespace A222030.P10406464568820635234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A222030.P10406464568820635234

noncomputable section

/-- A222030: Primes and quarter-squares.

Offset 0, canonical program `A222030.P10406464568820635234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A222030 (n : ℕ) : ℤ :=
  (A222030.P10406464568820635234.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A222030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222993.P8408352810680705070

`Δ[A112502(n)]`
-/

namespace A222993.P8408352810680705070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A222993.P8408352810680705070

noncomputable section

/-- A222993: Number of n X 2 0..2 arrays with successive rows and columns fitting to straight lines with nondecreasing slope, with a single point array taken as having zero slope.

Offset 1, canonical program `A222993.P8408352810680705070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A222993 (n : ℕ) : ℤ :=
  A222993.P8408352810680705070.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A222993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A223035.P17125103435558196622

`p?[A175396(n+1)]`
-/

namespace A223035.P17125103435558196622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A223035.P17125103435558196622

noncomputable section

/-- A223035: Prime numbers whose digits squared sum to a square.

Offset 1, canonical program `A223035.P17125103435558196622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 901 terms. -/
def A223035 (n : ℕ) : ℤ :=
  A223035.P17125103435558196622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 901 terms. -/
def A223035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A223756.P3397043722478657849

`A223659(n+1)²`
-/

namespace A223756.P3397043722478657849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223659 (n + 1) ^ 2

end

end A223756.P3397043722478657849

noncomputable section

/-- A223756: Number of n X 2 0..3 arrays with rows, antidiagonals and columns unimodal.

Offset 1, canonical program `A223756.P3397043722478657849`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A223659, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A223756 (n : ℕ) : ℤ :=
  A223756.P3397043722478657849.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A223659, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A223756.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A224274.P7526504996366702607

`A005810(n+1)/4`
-/

namespace A224274.P7526504996366702607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005810 (n + 1) : ℚ) / 4

end

end A224274.P7526504996366702607

noncomputable section

/-- A224274: a(n) = binomial(4*n,n)/4.

Offset 1, canonical program `A224274.P7526504996366702607`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224274 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A224274.P7526504996366702607.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224274.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A224855.P8373330680304639775

`∩[A196000(n+1), A202115(n+1)]`
-/

namespace A224855.P8373330680304639775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224855.P8373330680304639775

noncomputable section

/-- A224855: Numbers n such that 90*n + 17 and 90*n + 19 are twin primes.

Offset 1, canonical program `A224855.P8373330680304639775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2539 terms. -/
def A224855 (n : ℕ) : ℤ :=
  (A224855.P8373330680304639775.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2539 terms. -/
def A224855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224856.P11929615249765491218

`∩[A201739(n+1), A201819(n+1)]`
-/

namespace A224856.P11929615249765491218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224856.P11929615249765491218

noncomputable section

/-- A224856: Numbers n such that 90*n + 29 and 90*n + 31 are twin primes.

Offset 1, canonical program `A224856.P11929615249765491218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. -/
def A224856 (n : ℕ) : ℤ :=
  (A224856.P11929615249765491218.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. -/
def A224856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224857.P3836827436332242418

`∩[A202104(n+1), A202105(n+1)]`
-/

namespace A224857.P3836827436332242418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224857.P3836827436332242418

noncomputable section

/-- A224857: Numbers n such that 90n + 41 and 90n + 43 are twin primes.

Offset 1, canonical program `A224857.P3836827436332242418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2605 terms. -/
def A224857 (n : ℕ) : ℤ :=
  (A224857.P3836827436332242418.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2605 terms. -/
def A224857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224862.P10932737819112680464

`∩[A195993(n+1), A202129(n+1)]`
-/

namespace A224862.P10932737819112680464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224862.P10932737819112680464

noncomputable section

/-- A224862: Numbers n such that 90*n + 71 and 90*n + 73 are twin primes.

Offset 1, canonical program `A224862.P10932737819112680464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2522 terms. -/
def A224862 (n : ℕ) : ℤ :=
  (A224862.P10932737819112680464.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2522 terms. -/
def A224862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224864.P12895529055223917671

`∩[A201822(n+1), A202112(n+1)]`
-/

namespace A224864.P12895529055223917671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224864.P12895529055223917671

noncomputable section

/-- A224864: Numbers n such that 90*n + 77 and 90*n + 79 are twin primes.

Offset 1, canonical program `A224864.P12895529055223917671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2559 terms. -/
def A224864 (n : ℕ) : ℤ :=
  (A224864.P12895529055223917671.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2559 terms. -/
def A224864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224889.P2171058080815795800

`A181732(n+1)-1`
-/

namespace A224889.P2171058080815795800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181732 (n + 1) - 1

end

end A224889.P2171058080815795800

noncomputable section

/-- A224889: Numbers n such that 90n + 91 is prime.

Offset 1, canonical program `A224889.P2171058080815795800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224889 (n : ℕ) : ℤ :=
  A224889.P2171058080815795800.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224976.P11584365082941137146

`2*A111932(n+1)-A000203(n+1)`
-/

namespace A224976.P11584365082941137146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111932 (n + 1) - A000203 (n + 1)

end

end A224976.P11584365082941137146

noncomputable section

/-- A224976: L.g.f.: log( 1 + Sum_{n>=1} x^(n*(3*n-1)/2) + x^(n*(3*n+1)/2) ) = Sum_{n>=1} a(n)*x^n/n.

Offset 1, canonical program `A224976.P11584365082941137146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224976 (n : ℕ) : ℤ :=
  A224976.P11584365082941137146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225013.P15914430659359903742

`∑[∑[A225012(n+1)]]+1`
-/

namespace A225013.P15914430659359903742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225012 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A225013.P15914430659359903742

noncomputable section

/-- A225013: Number of 6Xn 0..1 arrays with rows unimodal and columns nondecreasing.

Offset 1, canonical program `A225013.P15914430659359903742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225013 (n : ℕ) : ℤ :=
  A225013.P15914430659359903742.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225612.P6133763593902213281

`∑[A005810(n)]`
-/

namespace A225612.P6133763593902213281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225612.P6133763593902213281

noncomputable section

/-- A225612: Partial sums of the binomial coefficients C(4*n,n).

Offset 0, canonical program `A225612.P6133763593902213281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A225612 (n : ℕ) : ℤ :=
  A225612.P6133763593902213281.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A225612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225975.P14240903064831222647

`gcd(A109043(n), A227316(A026741(n)))`
-/

namespace A225975.P14240903064831222647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109043 n) (A227316 (A026741 n).toNat)

end

end A225975.P14240903064831222647

noncomputable section

/-- A225975: Square root of A226008(n).

Offset 0, canonical program `A225975.P14240903064831222647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225975 (n : ℕ) : ℤ :=
  (A225975.P14240903064831222647.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226044.P10491954615088566281

`A205383(n+8)²`
-/

namespace A226044.P10491954615088566281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205383 (n + 8) ^ 2

end

end A226044.P10491954615088566281

noncomputable section

/-- A226044: Period of length 8: 1, 64, 16, 64, 4, 64, 16, 64.

Offset 0, canonical program `A226044.P10491954615088566281`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A205383, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226044 (n : ℕ) : ℤ :=
  A226044.P10491954615088566281.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A205383, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226044.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226208.P9905066037066462262

`A111982(record[A038554(n)])`
-/

namespace A226208.P9905066037066462262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111982 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A226208.P9905066037066462262

noncomputable section

/-- A226208: Zeckendorf distance between n and n+1.

Offset 1, canonical program `A226208.P9905066037066462262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 520 terms. -/
def A226208 (n : ℕ) : ℤ :=
  A226208.P9905066037066462262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 520 terms. -/
def A226208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226250.P13657873324624354211

`A136495(n+1)+n`
-/

namespace A226250.P13657873324624354211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (n + 1) + (n : ℤ)

end

end A226250.P13657873324624354211

noncomputable section

/-- A226250: Positions of positive numbers in the ordering of the rational numbers at A226247.

Offset 1, canonical program `A226250.P13657873324624354211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A226250 (n : ℕ) : ℤ :=
  A226250.P13657873324624354211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A226250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226333.P9778864042201279343

`∑{d}[n+1, A035207(#)*A059376((n+1)/#)]`
-/

namespace A226333.P9778864042201279343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035207 d * A059376 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A226333.P9778864042201279343

noncomputable section

/-- A226333: Expansion of (E_4(q) - E_4(q^5)) / 240 in powers of q where E_4 is an Eisenstein series.

Offset 1, canonical program `A226333.P9778864042201279343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226333 (n : ℕ) : ℤ :=
  A226333.P9778864042201279343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226502.P16735220966508621268

`Δ[A000040(n+1)*A215848(n+1)]`
-/

namespace A226502.P16735220966508621268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A215848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226502.P16735220966508621268

noncomputable section

/-- A226502: Let P(k) denote the k-th prime (P(1)=2, P(2)=3 ...); a(n) = P(n+1)P(n+3) - P(n)P(n+2).

Offset 1, canonical program `A226502.P16735220966508621268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A226502 (n : ℕ) : ℤ :=
  A226502.P16735220966508621268.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A226502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226509.P5444790229536301618

`A001609(A028310(n))+2*A065033(n)`
-/

namespace A226509.P5444790229536301618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001609 (A028310 n).toNat + 2 * A065033 n

end

end A226509.P5444790229536301618

noncomputable section

/-- A226509: Expansion of (3-2*x)/(1-x-x^3)+x/(1-x)^2+x/(1-x^2).

Offset 0, canonical program `A226509.P5444790229536301618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 603 terms. -/
def A226509 (n : ℕ) : ℤ :=
  A226509.P5444790229536301618.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 603 terms. -/
def A226509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226636.P1207896288114140507

`eq[3, A053735(n)]`
-/

namespace A226636.P1207896288114140507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226636.P1207896288114140507

noncomputable section

/-- A226636: Numbers whose base-3 sum of digits is 3.

Offset 1, canonical program `A226636.P1207896288114140507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A226636 (n : ℕ) : ℤ :=
  (A226636.P1207896288114140507.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A226636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226720.P9359734811790805252

`Δ[A025713(n)]`
-/

namespace A226720.P9359734811790805252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226720.P9359734811790805252

noncomputable section

/-- A226720: Complement of A122437.

Offset 1, canonical program `A226720.P9359734811790805252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226720 (n : ℕ) : ℤ :=
  A226720.P9359734811790805252.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226843.P8475319031818773873

`A158611(p?[2*n+1])`
-/

namespace A226843.P8475319031818773873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A226843.P8475319031818773873

noncomputable section

/-- A226843: a(n) = prime(prime(n + 1) - 2).

Offset 1, canonical program `A226843.P8475319031818773873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A226843 (n : ℕ) : ℤ :=
  A226843.P8475319031818773873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A226843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226894.P7504913734433053599

`A000027(A215001(n+1)+n)`
-/

namespace A226894.P7504913734433053599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A215001 (n + 1) + (n : ℤ)).toNat

end

end A226894.P7504913734433053599

noncomputable section

/-- A226894: Position of n-th harmonic number H(n) in the joint ranking of {H(k)} and {log k}, for k >= 1; complement of A226896.

Offset 1, canonical program `A226894.P7504913734433053599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1002 terms. -/
def A226894 (n : ℕ) : ℤ :=
  A226894.P7504913734433053599.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1002 terms. -/
def A226894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226913.P8047699162367960814

`comp[A008347(n)]`
-/

namespace A226913.P8047699162367960814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A226913.P8047699162367960814

noncomputable section

/-- A226913: Not of form sum_{i=0..n-1} (-1)^i prime(n-i), where prime(k) denotes the k-th prime.

Offset 1, canonical program `A226913.P8047699162367960814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226913 (n : ℕ) : ℤ :=
  (A226913.P8047699162367960814.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226969.P9831287097395014531

`eq[4, A053737(n)]`
-/

namespace A226969.P9831287097395014531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226969.P9831287097395014531

noncomputable section

/-- A226969: Numbers whose base-4 sum of digits is 4.

Offset 1, canonical program `A226969.P9831287097395014531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. -/
def A226969 (n : ℕ) : ℤ :=
  (A226969.P9831287097395014531.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. -/
def A226969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226994.P17259098154566869969

`1+A047665(n)`
-/

namespace A226994.P17259098154566869969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A047665 n

end

end A226994.P17259098154566869969

noncomputable section

/-- A226994: Number of lattice paths from (0,0) to (n,n) consisting of steps U=(1,1), H=(1,0) and S=(0,1) such that the first step leaving the diagonal (if any) is an H step.

Offset 0, canonical program `A226994.P17259098154566869969`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047665, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226994 (n : ℕ) : ℤ :=
  A226994.P17259098154566869969.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047665, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226994.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226995.P7493703247149475882

`A089165(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A226995.P7493703247149475882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A089165 (n - 1) + a (n - 1)

end

end A226995.P7493703247149475882

noncomputable section

/-- A226995: Number of lattice paths from (0,0) to (n,n) consisting of steps U=(1,1), H=(1,0) and S=(0,1) such that the first step leaving the diagonal (if any) is an H step and the last step joining the diagonal (if any) is a S step.

Offset 0, canonical program `A226995.P7493703247149475882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A226995 (n : ℕ) : ℤ :=
  A226995.P7493703247149475882.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A226995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227043.P17416568840744351118

`A026741(n)*A176895(A029579(n))`
-/

namespace A227043.P17416568840744351118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n * A176895 (A029579 n).toNat

end

end A227043.P17416568840744351118

noncomputable section

/-- A227043: Numerator of harmonic mean H(n,2), n>= 0.

Offset 0, canonical program `A227043.P17416568840744351118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227043 (n : ℕ) : ℤ :=
  A227043.P17416568840744351118.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227056.P12583909736503362194

`A184138(n+2)-(n+4)`
-/

namespace A227056.P12583909736503362194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184138 (n + 2) - (n + 4 : ℤ)

end

end A227056.P12583909736503362194

noncomputable section

/-- A227056: Number of n X 2 -2..2 arrays of 2 X 2 subblock diagonal sums minus antidiagonal sums for some (n+1) X 3 binary array with rows and columns of the latter in lexicographically nondecreasing order.

Offset 1, canonical program `A227056.P12583909736503362194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A227056 (n : ℕ) : ℤ :=
  A227056.P12583909736503362194.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A227056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227062.P17655102543388537746

`eq[5, A053824(n)]`
-/

namespace A227062.P17655102543388537746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227062.P17655102543388537746

noncomputable section

/-- A227062: Numbers whose base-5 sum of digits is 5.

Offset 1, canonical program `A227062.P17655102543388537746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A227062 (n : ℕ) : ℤ :=
  (A227062.P17655102543388537746.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A227062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227080.P1696635524758973866

`eq[6, A053827(n)]`
-/

namespace A227080.P1696635524758973866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227080.P1696635524758973866

noncomputable section

/-- A227080: Numbers whose base-6 sum of digits is 6.

Offset 1, canonical program `A227080.P1696635524758973866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A227080 (n : ℕ) : ℤ :=
  (A227080.P1696635524758973866.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A227080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227131.P12309905687250345847

`gcd(∑{d}[A091703(n), #], A028887(n))`
-/

namespace A227131.P12309905687250345847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091703 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) (A028887 n)

end

end A227131.P12309905687250345847

noncomputable section

/-- A227131: Sum of divisors of n that are not divisible by 25. a(0) = 1.

Offset 0, canonical program `A227131.P12309905687250345847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227131 (n : ℕ) : ℤ :=
  (A227131.P12309905687250345847.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227140.P606836370575662025

`A106617(A026741(n))`
-/

namespace A227140.P606836370575662025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (A026741 n).toNat

end

end A227140.P606836370575662025

noncomputable section

/-- A227140: a(n) = n/gcd(n,2^5), n >= 0.

Offset 0, canonical program `A227140.P606836370575662025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227140 (n : ℕ) : ℤ :=
  A227140.P606836370575662025.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227203.P18118523218393650008

`p?[2*n+1]²%A001043(n+1)`
-/

namespace A227203.P18118523218393650008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℤ) (A001043 (n + 1))

end

end A227203.P18118523218393650008

noncomputable section

/-- A227203: Prime(n)^2 mod (prime(n) + prime(n+1)).

Offset 1, canonical program `A227203.P18118523218393650008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227203 (n : ℕ) : ℤ :=
  A227203.P18118523218393650008.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227327.P13060071104446160578

`∑[∑[∑[A026741(n-a(n-1))]]]` with `a(0)=0`
-/

namespace A227327.P13060071104446160578
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f3 =>
  A026741 ((n : ℤ) - f3 (n - 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227327.P13060071104446160578

noncomputable section

/-- A227327: Number of non-equivalent ways to choose two points in an equilateral triangle grid of side n.

Offset 1, canonical program `A227327.P13060071104446160578`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227327 (n : ℕ) : ℤ :=
  A227327.P13060071104446160578.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227361.P11230324571385952125

`(-1)^n*A000120(n)+n`
-/

namespace A227361.P11230324571385952125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000120 n + (n : ℤ)

end

end A227361.P11230324571385952125

noncomputable section

/-- A227361: If n is even, then a(n) = n + bitsum(n), else a(n) = n - bitsum(n), where bitsum(n) is the count of binary 1's in n, A000120.

Offset 0, canonical program `A227361.P11230324571385952125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227361 (n : ℕ) : ℤ :=
  A227361.P11230324571385952125.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227547.P9561160085571280683

`A036439(n+1)+1`
-/

namespace A227547.P9561160085571280683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 1) + 1

end

end A227547.P9561160085571280683

noncomputable section

/-- A227547: a(n) = a(n-1) + prime(n-1), with a(1)=3.

Offset 1, canonical program `A227547.P9561160085571280683`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227547 (n : ℕ) : ℤ :=
  A227547.P9561160085571280683.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227547.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A227559.P17297700120002775526

`A091954(n+3)-ceil(n/2)+n`
-/

namespace A227559.P17297700120002775526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 3) - ⌈(n : ℚ) / 2⌉ + (n : ℤ)

end

end A227559.P17297700120002775526

noncomputable section

/-- A227559: Number of partitions of n into distinct parts with boundary size 2.

Offset 3, canonical program `A227559.P17297700120002775526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 998 terms. -/
def A227559 (n : ℕ) : ℤ :=
  A227559.P17297700120002775526.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 998 terms. -/
def A227559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227675.P630598864551539950

`A223659(n+1)+∑[C(n, 3)]`
-/

namespace A227675.P630598864551539950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223659 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A227675.P630598864551539950

noncomputable section

/-- A227675: Number of n X 2 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 3 binary array having an odd sum, with rows and columns of the latter in lexicographically nondecreasing order.

Offset 1, canonical program `A227675.P630598864551539950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227675 (n : ℕ) : ℤ :=
  A227675.P630598864551539950.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227990.P15467407999104537429

`A007949(A008864(n+1))`
-/

namespace A227990.P15467407999104537429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A008864 (n + 1)).toNat

end

end A227990.P15467407999104537429

noncomputable section

/-- A227990: 3^a(n) is the highest power of 3 dividing prime(n)+1.

Offset 1, canonical program `A227990.P15467407999104537429`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227990 (n : ℕ) : ℤ :=
  A227990.P15467407999104537429.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227990.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A227995.P329768956790891278

`A005810(n)-a(n-1)` with `a(0)=1`
-/

namespace A227995.P329768956790891278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005810 n - a (n - 1)

end

end A227995.P329768956790891278

noncomputable section

/-- A227995: Alternate partial sums of the binomial coefficients C(4*n,n).

Offset 0, canonical program `A227995.P329768956790891278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A227995 (n : ℕ) : ℤ :=
  A227995.P329768956790891278.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A227995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228187.P1035965118323279461

`eq[A000038(n), A053186(A070565(n))]`
-/

namespace A228187.P1035965118323279461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A070565 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228187.P1035965118323279461

noncomputable section

/-- A228187: Positive numbers which when decremented by the product of their digits produce a square.

Offset 1, canonical program `A228187.P1035965118323279461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A228187 (n : ℕ) : ℤ :=
  (A228187.P1035965118323279461.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A228187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228321.P3035066690980424821

`2*A106648(n)-A028310(n)`
-/

namespace A228321.P3035066690980424821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106648 n - A028310 n

end

end A228321.P3035066690980424821

noncomputable section

/-- A228321: The Wiener index of the graph obtained by applying Mycielski's construction to the path graph on n vertices (n>=2).

Offset 2, canonical program `A228321.P3035066690980424821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228321 (n : ℕ) : ℤ :=
  A228321.P3035066690980424821.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228358.P14957160635234131478

`record[A271566(A018252(n+2))]`
-/

namespace A228358.P14957160635234131478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271566 (A018252 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228358.P14957160635234131478

noncomputable section

/-- A228358: Numbers k such that 3*k - 4 is not prime.

Offset 1, canonical program `A228358.P14957160635234131478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228358 (n : ℕ) : ℤ :=
  A228358.P14957160635234131478.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228403.P6601110408836053115

`A071716(n+1)+A000245(n)`
-/

namespace A228403.P6601110408836053115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071716 (n + 1) + A000245 n

end

end A228403.P6601110408836053115

noncomputable section

/-- A228403: The number of boundary twigs for complete binary twigs. A twig is a vertex with one edge on the boundary and only one other descendant.

Offset 1, canonical program `A228403.P6601110408836053115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A228403 (n : ℕ) : ℤ :=
  A228403.P6601110408836053115.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A228403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228463.P17573629568626594097

`A225008(n+1)+A053126(n+4)`
-/

namespace A228463.P17573629568626594097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225008 (n + 1) + A053126 (n + 4)

end

end A228463.P17573629568626594097

noncomputable section

/-- A228463: Number of arrays of maxima of three adjacent elements of some length 8 0..n array.

Offset 1, canonical program `A228463.P17573629568626594097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228463 (n : ℕ) : ℤ :=
  A228463.P17573629568626594097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228529.P12052301848896517561

`A000040(A033286(n+1))`
-/

namespace A228529.P12052301848896517561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A033286 (n + 1)).toNat

end

end A228529.P12052301848896517561

noncomputable section

/-- A228529: a(n) = prime(n*prime(n)).

Offset 1, canonical program `A228529.P12052301848896517561`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A033286, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A228529 (n : ℕ) : ℤ :=
  A228529.P12052301848896517561.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A033286, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A228529.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A228707.P14961629345554892652

`ceil((A228706(n)+A002265(n))/2)`
-/

namespace A228707.P14961629345554892652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A228706 n + A002265 n : ℚ) / 2⌉

end

end A228707.P14961629345554892652

noncomputable section

/-- A228707: G.f.: (1-3*x+5*x^2-5*x^3+5*x^4-5*x^5+5*x^6-3*x^7+x^8)/((1-x)^4*(1+x^4)*(1+x^2)^2).

Offset 0, canonical program `A228707.P14961629345554892652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228707 (n : ℕ) : ℤ :=
  A228707.P14961629345554892652.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228873.P17386157323288434337

`2*A000217(A059840(n+3))`
-/

namespace A228873.P17386157323288434337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 (A059840 (n + 3)).toNat

end

end A228873.P17386157323288434337

noncomputable section

/-- A228873: a(n) = F(n) * F(n+1) * F(n+2) * F(n+3), the product of four consecutive Fibonacci numbers, A000045.

Offset 1, canonical program `A228873.P17386157323288434337`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059840, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228873 (n : ℕ) : ℤ :=
  A228873.P17386157323288434337.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059840, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228873.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A228958.P4266075833310147019

`∑[A392334(n)]`
-/

namespace A228958.P4266075833310147019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228958.P4266075833310147019

noncomputable section

/-- A228958: a(n) = 1*2 + 3*4 + 5*6 + 7*8 + 9*10 + 11*12 + 13*14 + ... + (up to n).

Offset 1, canonical program `A228958.P4266075833310147019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228958 (n : ℕ) : ℤ :=
  A228958.P4266075833310147019.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229282.P10153737054531546493

`floor(A098156(3*n+1)/4)`
-/

namespace A229282.P10153737054531546493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A098156 (3 * n + 1) : ℚ) / 4⌋

end

end A229282.P10153737054531546493

noncomputable section

/-- A229282: Number of ascending runs in {1,...,8}^n.

Offset 0, canonical program `A229282.P10153737054531546493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A229282 (n : ℕ) : ℤ :=
  A229282.P10153737054531546493.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A229282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229335.P16993302265292166254

`A000203(n+1)*(A100587(n+1)+1)/2`
-/

namespace A229335.P16993302265292166254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) * ((A100587 (n + 1) + 1 : ℚ) / 2)

end

end A229335.P16993302265292166254

noncomputable section

/-- A229335: Sum of sums of elements of subsets of divisors of n.

Offset 1, canonical program `A229335.P16993302265292166254`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100587, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A229335 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A229335.P16993302265292166254.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100587, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A229335.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A229347.P15433898513579831732

`(n+1)*A052938(A087893(n+1))`
-/

namespace A229347.P15433898513579831732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A052938 (A087893 (n + 1)).toNat

end

end A229347.P15433898513579831732

noncomputable section

/-- A229347: a(1) = 1, for n > 1 a(n) = n*2^(omega(n)-1) where omega is A001221.

Offset 1, canonical program `A229347.P15433898513579831732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229347 (n : ℕ) : ℤ :=
  A229347.P15433898513579831732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229473.P15385143365646390287

`A133086(A004277(n)-1)+A002699(n)`
-/

namespace A229473.P15385143365646390287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133086 (A004277 n - 1).toNat + A002699 n

end

end A229473.P15385143365646390287

noncomputable section

/-- A229473: Number of defective 4-colorings of an n X 2 0..3 array connected horizontally, antidiagonally and vertically with exactly one mistake, and colors introduced in row-major 0..3 order.

Offset 1, canonical program `A229473.P15385143365646390287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A229473 (n : ℕ) : ℤ :=
  A229473.P15385143365646390287.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A229473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229784.P3983521032097858868

`∑[A120962(n)]%10`
-/

namespace A229784.P3983521032097858868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 10

end

end A229784.P3983521032097858868

noncomputable section

/-- A229784: a(n) = (1^1^1 + 2^2^2 . . . + n^n^n) mod 10.

Offset 0, canonical program `A229784.P3983521032097858868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229784 (n : ℕ) : ℤ :=
  A229784.P3983521032097858868.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229826.P1529673124160606402

`∩[A089644(n+1), A125494(n+1)]`
-/

namespace A229826.P1529673124160606402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229826.P1529673124160606402

noncomputable section

/-- A229826: Evil (A001969) numbers divisible by 7 but not divisible by 3.

Offset 1, canonical program `A229826.P1529673124160606402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 967 terms. -/
def A229826 (n : ℕ) : ℤ :=
  (A229826.P1529673124160606402.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 967 terms. -/
def A229826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229854.P2402401608803055440

`∩[A142398(n+1), A229853(n)]`
-/

namespace A229854.P2402401608803055440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229853 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229854.P2402401608803055440

noncomputable section

/-- A229854: Primes of the form 384*k + 1.

Offset 1, canonical program `A229854.P2402401608803055440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1241 terms. -/
def A229854 (n : ℕ) : ℤ :=
  (A229854.P2402401608803055440.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1241 terms. -/
def A229854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229990.P8596526445958010261

`A131737(A169647(n+2))`
-/

namespace A229990.P8596526445958010261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (A169647 (n + 2)).toNat

end

end A229990.P8596526445958010261

noncomputable section

/-- A229990: Numbers k such that the interval [floor((k+1)/2), floor(3*(k+1)/2)] contains more primes than the interval [floor(k/2), floor(3*k/2)] does.

Offset 1, canonical program `A229990.P8596526445958010261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A229990 (n : ℕ) : ℤ :=
  A229990.P8596526445958010261.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A229990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230038.P4892601751849355898

`A064784(A022846(n+1))`
-/

namespace A230038.P4892601751849355898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064784 (A022846 (n + 1)).toNat

end

end A230038.P4892601751849355898

noncomputable section

/-- A230038: Distance between n^2 and the smallest triangular number >= n^2.

Offset 1, canonical program `A230038.P4892601751849355898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A230038 (n : ℕ) : ℤ :=
  A230038.P4892601751849355898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A230038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230137.P8347840085871938097

`A100071(n)+A001787(n)`
-/

namespace A230137.P8347840085871938097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 n + A001787 n

end

end A230137.P8347840085871938097

noncomputable section

/-- A230137: a(n)/2^n is the expected value of the maximum of the number of heads and the number of tails when n fair coins are tossed.

Offset 0, canonical program `A230137.P8347840085871938097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A230137 (n : ℕ) : ℤ :=
  A230137.P8347840085871938097.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A230137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230225.P3425636386318015061

`p?[lt[3, A175851(2*n+3)]]`
-/

namespace A230225.P3425636386318015061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A230225.P3425636386318015061

noncomputable section

/-- A230225: Primes p such that 2*p+1 and 2*p+3 are not prime.

Offset 1, canonical program `A230225.P3425636386318015061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A230225 (n : ℕ) : ℤ :=
  (A230225.P3425636386318015061.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A230225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230240.P1450382956197497395

`filter[A242660(n+1), A152822(#)]`
-/

namespace A230240.P1450382956197497395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A230240.P1450382956197497395

noncomputable section

/-- A230240: Values of N for which the equation x^2 - 9*y^2 = N has integer solutions.

Offset 1, canonical program `A230240.P1450382956197497395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. -/
def A230240 (n : ℕ) : ℤ :=
  A230240.P1450382956197497395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. -/
def A230240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230368.P17810546015416859750

`abs(A106664(n*and(1, n)))`
-/

namespace A230368.P17810546015416859750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106664 (n * Nat.land 1 n)|

end

end A230368.P17810546015416859750

noncomputable section

/-- A230368: A strong divisibility sequence associated with the algebraic integer 1 + i.

Offset 1, canonical program `A230368.P17810546015416859750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. -/
def A230368 (n : ℕ) : ℤ :=
  A230368.P17810546015416859750.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. -/
def A230368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230460.P18201916198529807444

`A000040(A100484(n+1))`
-/

namespace A230460.P18201916198529807444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A100484 (n + 1)).toNat

end

end A230460.P18201916198529807444

noncomputable section

/-- A230460: Prime(2*prime(n)).

Offset 1, canonical program `A230460.P18201916198529807444`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A100484, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A230460 (n : ℕ) : ℤ :=
  A230460.P18201916198529807444.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A100484, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A230460.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230549.P11351822998614377782

`(n+2)²-4*A230548(n+2)`
-/

namespace A230549.P11351822998614377782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - 4 * A230548 (n + 2)

end

end A230549.P11351822998614377782

noncomputable section

/-- A230549: Coins left after packing twin hearts patterns into n X n coins.

Offset 2, canonical program `A230549.P11351822998614377782`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230549 (n : ℕ) : ℤ :=
  A230549.P11351822998614377782.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230549.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230550.P9251230265839186452

`(n+1)²-2*A230548(n+2)`
-/

namespace A230550.P9251230265839186452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - 2 * A230548 (n + 2)

end

end A230550.P9251230265839186452

noncomputable section

/-- A230550: Voids left after packing twin hearts patterns into n X n coins.

Offset 2, canonical program `A230550.P9251230265839186452`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230550 (n : ℕ) : ℤ :=
  A230550.P9251230265839186452.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230550.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230585.P6348763636375271191

`record[abs(A120304(n))+2]`
-/

namespace A230585.P6348763636375271191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A120304 n| + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230585.P6348763636375271191

noncomputable section

/-- A230585: First terms of first rows of zigzag matrices as defined in A088961.

Offset 1, canonical program `A230585.P6348763636375271191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A230585 (n : ℕ) : ℤ :=
  A230585.P6348763636375271191.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A230585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230597.P16336454087684677726

`eq[A000120(n), A062756(n)]`
-/

namespace A230597.P16336454087684677726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230597.P16336454087684677726

noncomputable section

/-- A230597: Numbers n such that (the binary weight of n) = (the ternary weight of n).

Offset 1, canonical program `A230597.P16336454087684677726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. -/
def A230597 (n : ℕ) : ℤ :=
  (A230597.P16336454087684677726.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. -/
def A230597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230775.P17462288336970000234

`A000040(A230774(n+1))`
-/

namespace A230775.P17462288336970000234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A230774 (n + 1)).toNat

end

end A230775.P17462288336970000234

noncomputable section

/-- A230775: Smallest prime number greater than or equal to the square root of n.

Offset 1, canonical program `A230775.P17462288336970000234`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A230774, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A230775 (n : ℕ) : ℤ :=
  A230775.P17462288336970000234.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A230774, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A230775.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230901.P17815976702079233727

`char[A184480(n+1)-1]`
-/

namespace A230901.P17815976702079233727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184480 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A230901.P17815976702079233727

noncomputable section

/-- A230901: Sturmian word: equals the limit word S(infinity) where S(0) = 0, S(1) = 1 and for n >= 1, S(n+1) = S(n)S(n)S(n)S(n-1).

Offset 0, canonical program `A230901.P17815976702079233727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230901 (n : ℕ) : ℤ :=
  (A230901.P17815976702079233727.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231607.P13191046615176950809

`p?[A040976(n+1)-598]`
-/

namespace A231607.P13191046615176950809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 598

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231607.P13191046615176950809

noncomputable section

/-- A231607: Primes p such that p + 600 is also prime.

Offset 1, canonical program `A231607.P13191046615176950809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3366 terms. -/
def A231607 (n : ℕ) : ℤ :=
  A231607.P13191046615176950809.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3366 terms. -/
def A231607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231665.P16382713433774330828

`∑[A053737(n)²]`
-/

namespace A231665.P16382713433774330828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231665.P16382713433774330828

noncomputable section

/-- A231665: a(n) = Sum_{i=0..n} digsum_4(i)^2, where digsum_4(i) = A053737(i).

Offset 0, canonical program `A231665.P16382713433774330828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231665 (n : ℕ) : ℤ :=
  A231665.P16382713433774330828.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231666.P6388544758695979375

`∑[A053737(n)^3]`
-/

namespace A231666.P6388544758695979375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231666.P6388544758695979375

noncomputable section

/-- A231666: a(n) = Sum_{i=0..n} digsum_4(i)^3, where digsum_4(i) = A053737(i).

Offset 0, canonical program `A231666.P6388544758695979375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231666 (n : ℕ) : ℤ :=
  A231666.P6388544758695979375.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231667.P3413105081984781509

`∑[A053737(n)^4]`
-/

namespace A231667.P3413105081984781509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231667.P3413105081984781509

noncomputable section

/-- A231667: a(n) = Sum_{i=0..n} digsum_4(i)^4, where digsum_4(i) = A053737(i).

Offset 0, canonical program `A231667.P3413105081984781509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231667 (n : ℕ) : ℤ :=
  A231667.P3413105081984781509.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231668.P9102284697367683491

`∑[A053824(n)]`
-/

namespace A231668.P9102284697367683491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231668.P9102284697367683491

noncomputable section

/-- A231668: a(n) = Sum_{i=0..n} digsum_5(i), where digsum_5(i) = A053824(i).

Offset 0, canonical program `A231668.P9102284697367683491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231668 (n : ℕ) : ℤ :=
  A231668.P9102284697367683491.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231669.P3399117245193815518

`∑[A053824(n)²]`
-/

namespace A231669.P3399117245193815518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231669.P3399117245193815518

noncomputable section

/-- A231669: a(n) = Sum_{i=0..n} digsum_5(i)^2, where digsum_5(i) = A053824(i).

Offset 0, canonical program `A231669.P3399117245193815518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231669 (n : ℕ) : ℤ :=
  A231669.P3399117245193815518.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231670.P15139428656320515460

`∑[A053824(n)^3]`
-/

namespace A231670.P15139428656320515460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231670.P15139428656320515460

noncomputable section

/-- A231670: a(n) = Sum_{i=0..n} digsum_5(i)^3, where digsum_5(i) = A053824(i).

Offset 0, canonical program `A231670.P15139428656320515460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231670 (n : ℕ) : ℤ :=
  A231670.P15139428656320515460.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231671.P8639604201154569080

`∑[A053824(n)^4]`
-/

namespace A231671.P8639604201154569080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231671.P8639604201154569080

noncomputable section

/-- A231671: a(n) = Sum_{i=0..n} digsum_5(i)^4, where digsum_5(i) = A053824(i).

Offset 0, canonical program `A231671.P8639604201154569080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231671 (n : ℕ) : ℤ :=
  A231671.P8639604201154569080.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231672.P15541814258976411712

`∑[A053827(n)]`
-/

namespace A231672.P15541814258976411712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231672.P15541814258976411712

noncomputable section

/-- A231672: a(n) = Sum_{i=0..n} digsum_6(i), where digsum_6(i) = A053827(i).

Offset 0, canonical program `A231672.P15541814258976411712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231672 (n : ℕ) : ℤ :=
  A231672.P15541814258976411712.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231673.P7565841286569407630

`∑[A053827(n)²]`
-/

namespace A231673.P7565841286569407630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231673.P7565841286569407630

noncomputable section

/-- A231673: a(n) = Sum_{i=0..n} digsum_6(i)^2, where digsum_6(i) = A053827(i).

Offset 0, canonical program `A231673.P7565841286569407630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231673 (n : ℕ) : ℤ :=
  A231673.P7565841286569407630.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231674.P15630276326049919643

`∑[A053827(n)^3]`
-/

namespace A231674.P15630276326049919643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231674.P15630276326049919643

noncomputable section

/-- A231674: a(n) = Sum_{i=0..n} digsum_6(i)^3, where digsum_6(i) = A053827(i).

Offset 0, canonical program `A231674.P15630276326049919643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231674 (n : ℕ) : ℤ :=
  A231674.P15630276326049919643.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231675.P2348544671511139733

`∑[A053827(n)^4]`
-/

namespace A231675.P2348544671511139733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231675.P2348544671511139733

noncomputable section

/-- A231675: a(n) = Sum_{i=0..n} digsum_6(i)^4, where digsum_6(i) = A053827(i).

Offset 0, canonical program `A231675.P2348544671511139733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231675 (n : ℕ) : ℤ :=
  A231675.P2348544671511139733.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232494.P6247191816924031342

`A232493(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A232494.P6247191816924031342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A232493 n + 2 * a (n - 1)

end

end A232494.P6247191816924031342

noncomputable section

/-- A232494: If n mod 2 = 0 then 2^(n-1)*(3^n+3*3^(n/2)-2) otherwise 2^(n-1)*(3^n+5*3^((n-1)/2)-2).

Offset 0, canonical program `A232494.P6247191816924031342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A232494 (n : ℕ) : ℤ :=
  A232494.P6247191816924031342.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A232494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232771.P13410807256980959240

`∑[A005246(A004772(n+1))]-1`
-/

namespace A232771.P13410807256980959240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (A004772 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A232771.P13410807256980959240

noncomputable section

/-- A232771: Values of x satisfying x^2 = floor(y^2/3 + y).

Offset 1, canonical program `A232771.P13410807256980959240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A232771 (n : ℕ) : ℤ :=
  A232771.P13410807256980959240.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A232771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233280.P14130287684218724208

`A063946(A003188(n))`
-/

namespace A233280.P14130287684218724208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A003188 n).toNat

end

end A233280.P14130287684218724208

noncomputable section

/-- A233280: Permutation of nonnegative integers: a(n) = A003188(A054429(n)).

Offset 0, canonical program `A233280.P14130287684218724208`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233280 (n : ℕ) : ℤ :=
  A233280.P14130287684218724208.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233280.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A233474.P341788617094122790

`A005668(or(1, n))+floor(A221875(n+1)/2)`
-/

namespace A233474.P341788617094122790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005668 (Nat.lor 1 n) + ⌊(A221875 (n + 1) : ℚ) / 2⌋

end

end A233474.P341788617094122790

noncomputable section

/-- A233474: Numbers m such that 5*T(m)-1 is a square, where T = A000217.

Offset 1, canonical program `A233474.P341788617094122790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A233474 (n : ℕ) : ℤ :=
  A233474.P341788617094122790.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A233474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233774.P13113059997126762199

`A006046(n)+A193494(n)+1`
-/

namespace A233774.P13113059997126762199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n + (A193494 n + 1)

end

end A233774.P13113059997126762199

noncomputable section

/-- A233774: Total number of vertices in the first n rows of Sierpinski gasket, with a(0) = 1.

Offset 0, canonical program `A233774.P13113059997126762199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233774 (n : ℕ) : ℤ :=
  A233774.P13113059997126762199.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233932.P2836833035610206240

`Δ[A008619(A004202(a(n-1)))]` with `a(0)=1`
-/

namespace A233932.P2836833035610206240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A008619 (A004202 (f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233932.P2836833035610206240

noncomputable section

/-- A233932: Irregular table read by rows: T(n,k) is the binary representation of n shifted right k times and incremented if the last bit shifted away was set.

Offset 1, canonical program `A233932.P2836833035610206240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A233932 (n : ℕ) : ℤ :=
  A233932.P2836833035610206240.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A233932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234474.P13636113180550074245

`filter[A064807(n+1), A188641(#)]`
-/

namespace A234474.P13636113180550074245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A234474.P13636113180550074245

noncomputable section

/-- A234474: Numbers that are divisible by their digital sum and digital root.

Offset 1, canonical program `A234474.P13636113180550074245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A234474 (n : ℕ) : ℤ :=
  A234474.P13636113180550074245.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A234474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234740.P13025832871094759849

`∑[A079395(n+1)]`
-/

namespace A234740.P13025832871094759849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234740.P13025832871094759849

noncomputable section

/-- A234740: Sum of the eleventh powers of the first n primes.

Offset 1, canonical program `A234740.P13025832871094759849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A234740 (n : ℕ) : ℤ :=
  A234740.P13025832871094759849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A234740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235265.P1717586972171710680

`p?[A004793(A000040(n+1))]`
-/

namespace A235265.P1717586972171710680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235265.P1717586972171710680

noncomputable section

/-- A235265: Primes whose base-3 representation also is the base-2 representation of a prime.

Offset 1, canonical program `A235265.P1717586972171710680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A235265 (n : ℕ) : ℤ :=
  A235265.P1717586972171710680.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A235265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235398.P13717221228828732430

`∑{digits}[A030078(n+1), #]`
-/

namespace A235398.P13717221228828732430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A235398.P13717221228828732430

noncomputable section

/-- A235398: Sum of digits of the cubes of prime numbers.

Offset 1, canonical program `A235398.P13717221228828732430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235398 (n : ℕ) : ℤ :=
  (A235398.P13717221228828732430.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235642.P11216031610826937538

`A004648(10^n)`
-/

namespace A235642.P11216031610826937538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (10 ^ n)

end

end A235642.P11216031610826937538

noncomputable section

/-- A235642: a(n) = prime(10^n) mod 10^n.

Offset 0, canonical program `A235642.P11216031610826937538`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004648, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A235642 (n : ℕ) : ℤ :=
  A235642.P11216031610826937538.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004648, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A235642.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A235743.P3971823922931559072

`A000040(eq[A031131(n+1)+4, A031131(n+2)]+1)`
-/

namespace A235743.P3971823922931559072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1) + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A235743.P3971823922931559072

noncomputable section

/-- A235743: Primes p(k) such that p(k) + p(k+3) = p(k+1) + p(k+2) + 4.

Offset 1, canonical program `A235743.P3971823922931559072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 746 terms. -/
def A235743 (n : ℕ) : ℤ :=
  A235743.P3971823922931559072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 746 terms. -/
def A235743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235996.P612755675873609379

`2^n-∑[A208354(n)]`
-/

namespace A235996.P612755675873609379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235996.P612755675873609379

noncomputable section

/-- A235996: Number of length n binary words that contain at least one pair of consecutive 0's followed by (at some point in the word) at least one pair of consecutive 1's.

Offset 0, canonical program `A235996.P612755675873609379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A235996 (n : ℕ) : ℤ :=
  A235996.P612755675873609379.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A235996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236182.P8812619462684082735

`∑[A030516(n+1)]`
-/

namespace A236182.P8812619462684082735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236182.P8812619462684082735

noncomputable section

/-- A236182: Sum of the sixth powers of the first n primes.

Offset 1, canonical program `A236182.P8812619462684082735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236182 (n : ℕ) : ℤ :=
  A236182.P8812619462684082735.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236206.P10023384627399408474

`filter[A160545(n+1), A011558(#)]`
-/

namespace A236206.P10023384627399408474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A236206.P10023384627399408474

noncomputable section

/-- A236206: Numbers not divisible by 3, 5 or 7.

Offset 1, canonical program `A236206.P10023384627399408474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8000 terms. -/
def A236206 (n : ℕ) : ℤ :=
  A236206.P10023384627399408474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8000 terms. -/
def A236206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236209.P8443258730828089445

`∑[A092759(n+1)]`
-/

namespace A236209.P8443258730828089445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236209.P8443258730828089445

noncomputable section

/-- A236209: Sum of the seventh powers of the first n primes.

Offset 1, canonical program `A236209.P8443258730828089445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236209 (n : ℕ) : ℤ :=
  A236209.P8443258730828089445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236214.P10912221979790008616

`∑[A179645(n+1)]`
-/

namespace A236214.P10912221979790008616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236214.P10912221979790008616

noncomputable section

/-- A236214: Sum of the eighth powers of the first n primes.

Offset 1, canonical program `A236214.P10912221979790008616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236214 (n : ℕ) : ℤ :=
  A236214.P10912221979790008616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236215.P8665745897530177500

`∑[A179665(n+1)]`
-/

namespace A236215.P8665745897530177500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236215.P8665745897530177500

noncomputable section

/-- A236215: Sum of the ninth powers of the first n primes.

Offset 1, canonical program `A236215.P8665745897530177500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236215 (n : ℕ) : ℤ :=
  A236215.P8665745897530177500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236216.P6788692688263138763

`∑[A030629(n+1)]`
-/

namespace A236216.P6788692688263138763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236216.P6788692688263138763

noncomputable section

/-- A236216: Sum of the tenth powers of the first n primes.

Offset 1, canonical program `A236216.P6788692688263138763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236216 (n : ℕ) : ℤ :=
  A236216.P6788692688263138763.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236217.P14395066498749290225

`filter[A229968(n+1), A011558(#)]`
-/

namespace A236217.P14395066498749290225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A236217.P14395066498749290225

noncomputable section

/-- A236217: Numbers not divisible by 3, 5 or 11.

Offset 1, canonical program `A236217.P14395066498749290225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8000 terms. -/
def A236217 (n : ℕ) : ℤ :=
  A236217.P14395066498749290225.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8000 terms. -/
def A236217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236218.P7494143856053409080

`∑[A030631(n+1)]`
-/

namespace A236218.P7494143856053409080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236218.P7494143856053409080

noncomputable section

/-- A236218: Sum of the twelfth powers of the first n primes.

Offset 1, canonical program `A236218.P7494143856053409080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236218 (n : ℕ) : ℤ :=
  A236218.P7494143856053409080.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236221.P10884310046436513075

`∑[A138031(n+1)]`
-/

namespace A236221.P10884310046436513075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236221.P10884310046436513075

noncomputable section

/-- A236221: Sum of the thirteenth powers of the first n primes.

Offset 1, canonical program `A236221.P10884310046436513075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236221 (n : ℕ) : ℤ :=
  A236221.P10884310046436513075.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236222.P5013014953412716250

`∑[A092759(n+1)²]`
-/

namespace A236222.P5013014953412716250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092759 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236222.P5013014953412716250

noncomputable section

/-- A236222: Sum of the fourteenth powers of the first n primes.

Offset 1, canonical program `A236222.P5013014953412716250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236222 (n : ℕ) : ℤ :=
  A236222.P5013014953412716250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236223.P9577004228190771243

`∑[A050997(n+1)^3]`
-/

namespace A236223.P9577004228190771243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236223.P9577004228190771243

noncomputable section

/-- A236223: Sum of the fifteenth powers of the first n primes.

Offset 1, canonical program `A236223.P9577004228190771243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236223 (n : ℕ) : ℤ :=
  A236223.P9577004228190771243.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236693.P4114692838688995240

`eq[A057427(n), A073816(n+1)]+1`
-/

namespace A236693.P4114692838688995240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073816 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A236693.P4114692838688995240

noncomputable section

/-- A236693: Numbers k such that 2^sigma(k) == 1 (mod k).

Offset 1, canonical program `A236693.P4114692838688995240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A236693 (n : ℕ) : ℤ :=
  (A236693.P4114692838688995240.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A236693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237448.P13955953425339463645

`A131818(n+1)-A080343(n)`
-/

namespace A237448.P13955953425339463645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1) - A080343 n

end

end A237448.P13955953425339463645

noncomputable section

/-- A237448: Square array T(row >= 1, col >= 1): The first row, row=1, T(1,col) = col = A000027. When row > col, T(row,col) = row, otherwise (when 1 < row <= col), T(row,col) = row-1.

Offset 1, canonical program `A237448.P13955953425339463645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237448 (n : ℕ) : ℤ :=
  A237448.P13955953425339463645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237649.P15310033212845427612

`A163659((n+1)^3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A237649.P15310033212845427612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163659 ((n + 1) ^ 3)

end

end A237649.P15310033212845427612

noncomputable section

/-- A237649: a(n) = A163659(n^3), where A163659 is the logarithmic derivative of Stern's diatomic series (A002487).

Offset 1, canonical program `A237649.P15310033212845427612`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163659, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A237649 (n : ℕ) : ℤ :=
  A237649.P15310033212845427612.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163659, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A237649.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A237654.P9038227127362551737

`abs(∑[A077916(n)])`
-/

namespace A237654.P9038227127362551737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A237654.P9038227127362551737

noncomputable section

/-- A237654: G.f.: exp( Sum_{n>=1} 5*Fibonacci(n-1)*Fibonacci(n+1) * x^n/n ).

Offset 0, canonical program `A237654.P9038227127362551737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A237654 (n : ℕ) : ℤ :=
  A237654.P9038227127362551737.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A237654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238248.P15572753832820351809

`A043689(n+1)+1`
-/

namespace A238248.P15572753832820351809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043689 (n + 1) + 1

end

end A238248.P15572753832820351809

noncomputable section

/-- A238248: Numbers m such that A072219(m) = 7.

Offset 1, canonical program `A238248.P15572753832820351809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238248 (n : ℕ) : ℤ :=
  A238248.P15572753832820351809.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238362.P12922951587572492693

`p?[A000120(A000120(n)+1)*(8*n+3)]`
-/

namespace A238362.P12922951587572492693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000120 n + 1).toNat * (8 * n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238362.P12922951587572492693

noncomputable section

/-- A238362: Primes p such that A000120(p - 1) = A000120(p + 1) = 2^k for some k.

Offset 1, canonical program `A238362.P12922951587572492693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 581 terms. -/
def A238362 (n : ℕ) : ℤ :=
  A238362.P12922951587572492693.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 581 terms. -/
def A238362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238420.P1153612300768833759

`(n+1)*A059929(n)`
-/

namespace A238420.P1153612300768833759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A059929 n

end

end A238420.P1153612300768833759

noncomputable section

/-- A238420: a(n) is the Wiener index of the Lucas cube L_n.

Offset 1, canonical program `A238420.P1153612300768833759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A238420 (n : ℕ) : ℤ :=
  A238420.P1153612300768833759.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A238420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238452.P10935441616488023036

`gcd(n, n%2)*A208355(n)`
-/

namespace A238452.P10935441616488023036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n % 2) : ℤ) * A208355 n

end

end A238452.P10935441616488023036

noncomputable section

/-- A238452: Second column of the extended Catalan triangle A189231.

Offset 0, canonical program `A238452.P10935441616488023036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A238452 (n : ℕ) : ℤ :=
  A238452.P10935441616488023036.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A238452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238529.P10773024009408837413

`1+a(A238525(n))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A238529.P10773024009408837413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  1 + a (A238525 n).toNat

end

end A238529.P10773024009408837413

noncomputable section

/-- A238529: a(0) = a(1) = 0, and for n > 1, a(n) = number of iterations of A238525 (n modulo sopfr(n)) needed to reach either 0 or 1. Here sopfr(n) is the sum of the prime factors of n, with multiplicity, A001414.

Offset 0, canonical program `A238529.P10773024009408837413`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A238525, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A238529 (n : ℕ) : ℤ :=
  (A238529.P10773024009408837413.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A238525, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A238529.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A238737.P4243855582569951164

`A175851(2*(n+1))-1`
-/

namespace A238737.P4243855582569951164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (2 * (n + 1)) - 1

end

end A238737.P4243855582569951164

noncomputable section

/-- A238737: a(n) = 2*n+2 - A224911(n).

Offset 0, canonical program `A238737.P4243855582569951164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238737 (n : ℕ) : ℤ :=
  A238737.P4243855582569951164.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238913.P6336402216914630951

`A000102(n)+A000100(n)`
-/

namespace A238913.P6336402216914630951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000102 n + A000100 n

end

end A238913.P6336402216914630951

noncomputable section

/-- A238913: Number of self-inverse permutations p on [n] where the maximal displacement of an element equals 2.

Offset 0, canonical program `A238913.P6336402216914630951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 352 terms. -/
def A238913 (n : ℕ) : ℤ :=
  A238913.P6336402216914630951.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 352 terms. -/
def A238913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239305.P1574009698639339678

`∑[A099036(n)]-A094588(n)`
-/

namespace A239305.P1574009698639339678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A094588 n

end

end A239305.P1574009698639339678

noncomputable section

/-- A239305: Expansion of (4*x^4-5*x^3-x^2+3*x-1) / (2*x^5+3*x^4-4*x^3-3*x^2+4*x-1).

Offset 0, canonical program `A239305.P1574009698639339678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A239305 (n : ℕ) : ℤ :=
  A239305.P1574009698639339678.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A239305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239324.P18438988059213314958

`A090431(n)+a(n-1)` with `a(0)=0`
-/

namespace A239324.P18438988059213314958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A090431 n + a (n - 1)

end

end A239324.P18438988059213314958

noncomputable section

/-- A239324: Partial sums of A090431.

Offset 0, canonical program `A239324.P18438988059213314958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239324 (n : ℕ) : ℤ :=
  A239324.P18438988059213314958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239447.P4299851072612919937

`∑[n-A055945(n)]`
-/

namespace A239447.P4299851072612919937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239447.P4299851072612919937

noncomputable section

/-- A239447: Partial sums of A030101.

Offset 0, canonical program `A239447.P4299851072612919937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239447 (n : ℕ) : ℤ :=
  A239447.P4299851072612919937.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239619.P15559327982944587006

`A053735(A000040(n+1))`
-/

namespace A239619.P15559327982944587006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A000040 (n + 1)).toNat

end

end A239619.P15559327982944587006

noncomputable section

/-- A239619: Base 3 sum of digits of prime(n).

Offset 1, canonical program `A239619.P15559327982944587006`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239619 (n : ℕ) : ℤ :=
  A239619.P15559327982944587006.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239619.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239690.P6526358221762526972

`A053737(A000040(n+1))`
-/

namespace A239690.P6526358221762526972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A000040 (n + 1)).toNat

end

end A239690.P6526358221762526972

noncomputable section

/-- A239690: Base 4 sum of digits of prime(n).

Offset 1, canonical program `A239690.P6526358221762526972`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239690 (n : ℕ) : ℤ :=
  A239690.P6526358221762526972.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239690.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239691.P9580753319822426723

`A053824(A000040(n+1))`
-/

namespace A239691.P9580753319822426723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A000040 (n + 1)).toNat

end

end A239691.P9580753319822426723

noncomputable section

/-- A239691: Base 5 sum of digits of prime(n).

Offset 1, canonical program `A239691.P9580753319822426723`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239691 (n : ℕ) : ℤ :=
  A239691.P9580753319822426723.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239691.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239692.P2456652248599163808

`A053827(A000040(n+1))`
-/

namespace A239692.P2456652248599163808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A000040 (n + 1)).toNat

end

end A239692.P2456652248599163808

noncomputable section

/-- A239692: Base 6 sum of digits of prime(n).

Offset 1, canonical program `A239692.P2456652248599163808`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239692 (n : ℕ) : ℤ :=
  A239692.P2456652248599163808.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239692.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239942.P985275361702822978

`A039716(n+2)-A039716(n+1)`
-/

namespace A239942.P985275361702822978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039716 (n + 2) - A039716 (n + 1)

end

end A239942.P985275361702822978

noncomputable section

/-- A239942: a(n) = prime(n)! - prime(n - 1)!.

Offset 2, canonical program `A239942.P985275361702822978`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239942 (n : ℕ) : ℤ :=
  A239942.P985275361702822978.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239942.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240068.P6814075163463490224

`8*A008864(n+1)`
-/

namespace A240068.P6814075163463490224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A008864 (n + 1)

end

end A240068.P6814075163463490224

noncomputable section

/-- A240068: Number of prime Lipschitz quaternions having norm prime(n).

Offset 1, canonical program `A240068.P6814075163463490224`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240068 (n : ℕ) : ℤ :=
  A240068.P6814075163463490224.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240068.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240231.P14758268946136650672

`A028310(∑{e}[n+1, A053735(#)])`
-/

namespace A240231.P14758268946136650672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ p ∈ Nat.primeFactors (f1 n), A053735 (Nat.factorization (f1 n) p)).toNat

end

end A240231.P14758268946136650672

noncomputable section

/-- A240231: Number of factors needed in the unique factorization of positive integers into terms of A186285 where any term is used at most twice.

Offset 1, canonical program `A240231.P14758268946136650672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240231 (n : ℕ) : ℤ :=
  A240231.P14758268946136650672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240513.P2129167559691971757

`A119749(n+1)+a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A240513.P2129167559691971757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A119749 (n + 1) + a (n - 2)

end

end A240513.P2129167559691971757

noncomputable section

/-- A240513: Number of n X 2 0..1 arrays with no element equal to exactly two horizontal and vertical neighbors, with new values 0..1 introduced in row major order.

Offset 1, canonical program `A240513.P2129167559691971757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A240513 (n : ℕ) : ℤ :=
  A240513.P2129167559691971757.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A240513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240569.P17904370683734456303

`p?[A018252(n+1)+A018252(n+3)]`
-/

namespace A240569.P17904370683734456303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + A018252 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240569.P17904370683734456303

noncomputable section

/-- A240569: Primes of the form k(m) + k(m+2) where k(m) = A018252(m) (nonprimes), m >= 1.

Offset 1, canonical program `A240569.P17904370683734456303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A240569 (n : ℕ) : ℤ :=
  A240569.P17904370683734456303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A240569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240609.P9554572774244923858

`A342912(n+1)+A005043(n)-A082397(n+1)`
-/

namespace A240609.P9554572774244923858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342912 (n + 1) + (A005043 n - A082397 (n + 1))

end

end A240609.P9554572774244923858

noncomputable section

/-- A240609: Number of n-length words w over a 3-ary alphabet such that w is empty or a prefix z concatenated with letter a_i and i=1 or 0 < #(z,a_{i-1}) >= #(z,a_i), where #(z,a_i) counts the occurrences of the i-th letter in z.

Offset 0, canonical program `A240609.P9554572774244923858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A240609 (n : ℕ) : ℤ :=
  A240609.P9554572774244923858.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A240609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240804.P4925870377936776396

`A070826(n+2)-2`
-/

namespace A240804.P4925870377936776396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070826 (n + 2) - 2

end

end A240804.P4925870377936776396

noncomputable section

/-- A240804: a(n) = -2 + product of first n odd primes.

Offset 1, canonical program `A240804.P4925870377936776396`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070826, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240804 (n : ℕ) : ℤ :=
  A240804.P4925870377936776396.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070826, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240804.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240848.P13107810746749667617

`n+A007953(n)+A055642(n)`
-/

namespace A240848.P13107810746749667617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A007953 n + A055642 n

end

end A240848.P13107810746749667617

noncomputable section

/-- A240848: Sum of n, digitsum(n) and number of digits of n.

Offset 0, canonical program `A240848.P13107810746749667617`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240848 (n : ℕ) : ℤ :=
  A240848.P13107810746749667617.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240848.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240860.P9512636483321662059

`∑[(-1)^n*A001248(n+1)]`
-/

namespace A240860.P9512636483321662059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240860.P9512636483321662059

noncomputable section

/-- A240860: a(n) = Sum_{i=1..n} (-1)^{i+1} prime(i)^2, where prime(k) denotes the k-th prime: alternating sum of the squares of the first n primes.

Offset 1, canonical program `A240860.P9512636483321662059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240860 (n : ℕ) : ℤ :=
  A240860.P9512636483321662059.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240939.P940604586909977599

`A068869(n+1)-A185012(n)`
-/

namespace A240939.P940604586909977599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068869 (n + 1) - A185012 n

end

end A240939.P940604586909977599

noncomputable section

/-- A240939: Least number k >= 0 such that n! + k is a perfect power.

Offset 1, canonical program `A240939.P940604586909977599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A240939 (n : ℕ) : ℤ :=
  A240939.P940604586909977599.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A240939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241452.P5049079082097694883

`A039623(A028310(abs(1-n)))-1`
-/

namespace A241452.P5049079082097694883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039623 (A028310 |1 - (n : ℤ)|.toNat).toNat - 1

end

end A241452.P5049079082097694883

noncomputable section

/-- A241452: a(n) = pg(3, n) + pg(4, n) + ... + pg(n, n) where pg(m, n) is the n-th m-th-order polygonal number.

Offset 0, canonical program `A241452.P5049079082097694883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241452 (n : ℕ) : ℤ :=
  A241452.P5049079082097694883.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241478.P14446686761118758760

`A002697(n)+A000984(n)`
-/

namespace A241478.P14446686761118758760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n + A000984 n

end

end A241478.P14446686761118758760

noncomputable section

/-- A241478: a(n) = 4^n*(n/4 + binomial(n-1/2, -1/2)).

Offset 0, canonical program `A241478.P14446686761118758760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A241478 (n : ℕ) : ℤ :=
  A241478.P14446686761118758760.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A241478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241575.P5643789270522155057

`A214848(n)-1`
-/

namespace A241575.P5643789270522155057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214848 n - 1

end

end A241575.P5643789270522155057

noncomputable section

/-- A241575: Sturmian expansion of 1/2 in base sqrt(2)-1.

Offset 0, canonical program `A241575.P5643789270522155057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A241575 (n : ℕ) : ℤ :=
  A241575.P5643789270522155057.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A241575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241582.P4738133126774208548

`record[A131644(n+1)]`
-/

namespace A241582.P4738133126774208548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241582.P4738133126774208548

noncomputable section

/-- A241582: Records in A131644.

Offset 1, canonical program `A241582.P4738133126774208548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 586 terms. -/
def A241582 (n : ℕ) : ℤ :=
  A241582.P4738133126774208548.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 586 terms. -/
def A241582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241587.P18432490739127419303

`Δ[A168597(n)/2]-A168597(n)`
-/

namespace A241587.P18432490739127419303
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168597 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A168597 n : ℚ)

end

end A241587.P18432490739127419303

noncomputable section

/-- A241587: Coefficients in an expansion of the trace of the log of the adjacency operator on the infinite grid Z x Z.

Offset 1, canonical program `A241587.P18432490739127419303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A241587 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A241587.P18432490739127419303.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A241587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241603.P4160281635668687309

`∑{d}[n+1, #*A210032(#)]`
-/

namespace A241603.P4160281635668687309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A210032 d

end

end A241603.P4160281635668687309

noncomputable section

/-- A241603: a(n) = Sum_{d|n, d <= 5} d^2 + 5*Sum_{d|n, d>5} d.

Offset 1, canonical program `A241603.P4160281635668687309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A241603 (n : ℕ) : ℤ :=
  A241603.P4160281635668687309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A241603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241682.P11323323633827690027

`(A123344(n)-A167193(n))*A084247(n)`
-/

namespace A241682.P11323323633827690027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A123344 n - A167193 n) * A084247 n

end

end A241682.P11323323633827690027

noncomputable section

/-- A241682: Total number of unit squares appearing in the Thue-Morse sequence logical matrices after n stages.

Offset 0, canonical program `A241682.P11323323633827690027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A241682 (n : ℕ) : ℤ :=
  A241682.P11323323633827690027.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A241682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241746.P12347380051297708002

`A270296(A103517(n))+3`
-/

namespace A241746.P12347380051297708002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270296 (A103517 n).toNat + 3

end

end A241746.P12347380051297708002

noncomputable section

/-- A241746: Smallest number greater than n that CANNOT be scored using n darts on a standard dartboard.

Offset 1, canonical program `A241746.P12347380051297708002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A241746 (n : ℕ) : ℤ :=
  A241746.P12347380051297708002.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A241746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241816.P2851650172626581552

`A214546(and(n, n+1))-1+n`
-/

namespace A241816.P2851650172626581552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214546 (Nat.land n (n + 1)) - 1 + (n : ℤ)

end

end A241816.P2851650172626581552

noncomputable section

/-- A241816: a(n) is the largest number smaller than n that can be obtained by swapping two adjacent bits in n, or n if no such number exists.

Offset 0, canonical program `A241816.P2851650172626581552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241816 (n : ℕ) : ℤ :=
  A241816.P2851650172626581552.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241989.P18072735750899753269

`eq[n+1, lcm(n+1, A053836(n+1))]+1`
-/

namespace A241989.P18072735750899753269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A053836 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A241989.P18072735750899753269

noncomputable section

/-- A241989: Positive numbers n that are divisible by the sum of the digits of n in base 16.

Offset 1, canonical program `A241989.P18072735750899753269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1606 terms. -/
def A241989 (n : ℕ) : ℤ :=
  (A241989.P18072735750899753269.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1606 terms. -/
def A241989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242120.P15962889724436984483

`A022976(A074972(n+1))`
-/

namespace A242120.P15962889724436984483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022976 (A074972 (n + 1)).toNat

end

end A242120.P15962889724436984483

noncomputable section

/-- A242120: a(n) = n-th prime modulo 20.

Offset 1, canonical program `A242120.P15962889724436984483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242120 (n : ℕ) : ℤ :=
  A242120.P15962889724436984483.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242137.P8379527440574402766

`lt[A076816(n), A054071(n+1)]`
-/

namespace A242137.P8379527440574402766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242137.P8379527440574402766

noncomputable section

/-- A242137: Numbers n such that there are no triangular numbers strictly between n^2 and n^2 + n.

Offset 1, canonical program `A242137.P8379527440574402766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2937 terms. -/
def A242137 (n : ℕ) : ℤ :=
  (A242137.P8379527440574402766.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2937 terms. -/
def A242137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242172.P14720321246685490122

`A100071(n+2)/2`
-/

namespace A242172.P14720321246685490122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100071 (n + 2) : ℚ) / 2

end

end A242172.P14720321246685490122

noncomputable section

/-- A242172: a(n) = 2^n*binomial((n + 1 + (n mod 2))/2, 1/2).

Offset 0, canonical program `A242172.P14720321246685490122`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100071, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A242172 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A242172.P14720321246685490122.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100071, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A242172.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A242206.P15295837578510900863

`∑[A167821(n+4)-2]`
-/

namespace A242206.P15295837578510900863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167821 (n + 4) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242206.P15295837578510900863

noncomputable section

/-- A242206: Number of length n binary words which contain 00 and 01 and 10 and 11 as (possibly overlapping) contiguous subsequences.

Offset 5, canonical program `A242206.P15295837578510900863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A242206 (n : ℕ) : ℤ :=
  A242206.P15295837578510900863.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A242206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242300.P18198570952785436576

`A242496(n)+A027941(n)`
-/

namespace A242300.P18198570952785436576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242496 n + A027941 n

end

end A242300.P18198570952785436576

noncomputable section

/-- A242300: a(n) = Sum_{0<=i

Offset 0, canonical program `A242300.P18198570952785436576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A242300 (n : ℕ) : ℤ :=
  A242300.P18198570952785436576.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A242300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242401.P14578160612207848124

`eq[A056926(n), A123110(n)]`
-/

namespace A242401.P14578160612207848124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242401.P14578160612207848124

noncomputable section

/-- A242401: Numbers that are neither triangular nor square.

Offset 1, canonical program `A242401.P14578160612207848124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242401 (n : ℕ) : ℤ :=
  (A242401.P14578160612207848124.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242407.P18030510277826149703

`eq[A053735(n), A089643(2*n)]`
-/

namespace A242407.P18030510277826149703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242407.P18030510277826149703

noncomputable section

/-- A242407: Numbers such that in ternary representation all pairs of adjacent digits have sums not greater than 2.

Offset 1, canonical program `A242407.P18030510277826149703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A242407 (n : ℕ) : ℤ :=
  (A242407.P18030510277826149703.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A242407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242481.P14390238496426978029

`A242480(n+1)/(n+1)`
-/

namespace A242481.P14390238496426978029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242480 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A242481.P14390238496426978029

noncomputable section

/-- A242481: a(n) = ((n*(n+1)/2) mod n + sigma(n) mod n + antisigma(n) mod n) / n.

Offset 1, canonical program `A242481.P14390238496426978029`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A242480, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A242481 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A242481.P14390238496426978029.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A242480, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A242481.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A242483.P4194193378462052771

`2*lt[n, A054024(A004277(n))]`
-/

namespace A242483.P4194193378462052771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A242483.P4194193378462052771

noncomputable section

/-- A242483: Numbers n such that A242481(n) = ((n*(n+1)/2) mod n + sigma(n) mod n + antisigma(n) mod n) / n = 2.

Offset 1, canonical program `A242483.P4194193378462052771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6516 terms. -/
def A242483 (n : ℕ) : ℤ :=
  (A242483.P4194193378462052771.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6516 terms. -/
def A242483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242515.P17523326989586538796

`lt[12, A175851(12*(n+1))]`
-/

namespace A242515.P17523326989586538796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (12 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A242515.P17523326989586538796

noncomputable section

/-- A242515: Numbers n such that 12n+1, 12n+5, 12n+7, 12n+11 are all composite numbers.

Offset 1, canonical program `A242515.P17523326989586538796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1204 terms. -/
def A242515 (n : ℕ) : ℤ :=
  (A242515.P17523326989586538796.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1204 terms. -/
def A242515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242594.P11226976374991562602

`eq[4, A008952(2*n)]`
-/

namespace A242594.P11226976374991562602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242594.P11226976374991562602

noncomputable section

/-- A242594: Numbers k such that 4^k has initial digit 4.

Offset 1, canonical program `A242594.P11226976374991562602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4849 terms. -/
def A242594 (n : ℕ) : ℤ :=
  (A242594.P11226976374991562602.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4849 terms. -/
def A242594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243011.P10761689159614172034

`A238328(n+1)-A238702(n+1)`
-/

namespace A243011.P10761689159614172034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238328 (n + 1) - A238702 (n + 1)

end

end A243011.P10761689159614172034

noncomputable section

/-- A243011: Sum of the three largest parts in the partitions of 4n into 4 parts.

Offset 1, canonical program `A243011.P10761689159614172034`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A238702, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243011 (n : ℕ) : ℤ :=
  A243011.P10761689159614172034.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A238702, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243011.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A243615.P8785003313074137621

`eq[A007953(n), A070939(n)]`
-/

namespace A243615.P8785003313074137621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243615.P8785003313074137621

noncomputable section

/-- A243615: Numbers n whose digital sum equals the number of binary digits in its binary expansion.

Offset 1, canonical program `A243615.P8785003313074137621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A243615 (n : ℕ) : ℤ :=
  (A243615.P8785003313074137621.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A243615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243616.P4113993082893584915

`p?[A007953(n+1)+A000040(n+1)]`
-/

namespace A243616.P4113993082893584915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243616.P4113993082893584915

noncomputable section

/-- A243616: Primes p of the form prime(n) + digitsum(n).

Offset 1, canonical program `A243616.P4113993082893584915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 906 terms. -/
def A243616 (n : ℕ) : ℤ :=
  A243616.P4113993082893584915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 906 terms. -/
def A243616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244050.P4388915496307742353

`4*A175254(n+1)`
-/

namespace A244050.P4388915496307742353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A175254 (n + 1)

end

end A244050.P4388915496307742353

noncomputable section

/-- A244050: Partial sums of A243980.

Offset 1, canonical program `A244050.P4388915496307742353`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244050 (n : ℕ) : ℤ :=
  A244050.P4388915496307742353.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244050.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244160.P12813125502844365443

`∑[A010058(n)]`
-/

namespace A244160.P12813125502844365443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244160.P12813125502844365443

noncomputable section

/-- A244160: a(0)=0, and for n >= 1, a(n) = the largest k such that k-th Catalan number <= n.

Offset 0, canonical program `A244160.P12813125502844365443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244160 (n : ℕ) : ℤ :=
  A244160.P12813125502844365443.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244221.P4166625272978156220

`a(n-A081290(n))` with `a(0)=0, a(1)=1`
-/

namespace A244221.P4166625272978156220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ((n : ℤ) - A081290 n).toNat

end

end A244221.P4166625272978156220

noncomputable section

/-- A244221: Parity of Greedy Catalan Base representation for n: a(n) = A014418(n) reduced modulo 2.

Offset 0, canonical program `A244221.P4166625272978156220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244221 (n : ℕ) : ℤ :=
  (A244221.P4166625272978156220.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244325.P7029042646841468854

`floor((∑[n]-A001065(n+1))/(n+1))`
-/

namespace A244325.P7029042646841468854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A001065 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A244325.P7029042646841468854

noncomputable section

/-- A244325: a(n) = floor(antisigma(n) / n), where antisigma(n) = A024816(n) = the sum of the non-divisors of n that are between 1 and n.

Offset 1, canonical program `A244325.P7029042646841468854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244325 (n : ℕ) : ℤ :=
  A244325.P7029042646841468854.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244374.P963690707800537045

`p?[A104635(n+2)+A104635(n+1)+1]`
-/

namespace A244374.P963690707800537045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 2) + (A104635 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244374.P963690707800537045

noncomputable section

/-- A244374: Primes which are the arithmetic mean of two consecutive primes of the form 4n+3.

Offset 1, canonical program `A244374.P963690707800537045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 619 terms. -/
def A244374 (n : ℕ) : ℤ :=
  A244374.P963690707800537045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 619 terms. -/
def A244374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244611.P15680507198700871691

`A138950(n+1)%2`
-/

namespace A244611.P15680507198700871691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138950 (n + 1)) 2

end

end A244611.P15680507198700871691

noncomputable section

/-- A244611: Expansion of (phi(q) + phi(q^2) - phi(q^3) - phi(q^6)) / 2 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A244611.P15680507198700871691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244611 (n : ℕ) : ℤ :=
  A244611.P15680507198700871691.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244734.P1874380478709244094

`(n+1)/gcd(n+1, A057944(n))`
-/

namespace A244734.P1874380478709244094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A057944 n) : ℚ)

end

end A244734.P1874380478709244094

noncomputable section

/-- A244734: Numerators of the triangle T(n,k) = (n*(n+1)/2 + k + 1)/(k+1) for n >= k >= 0.

Offset 0, canonical program `A244734.P1874380478709244094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244734 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A244734.P1874380478709244094.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244735.P8665477361551316467

`A039703(n+1)%2`
-/

namespace A244735.P8665477361551316467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039703 (n + 1)) 2

end

end A244735.P8665477361551316467

noncomputable section

/-- A244735: a(n) = (prime(n) mod 5) mod 2.

Offset 1, canonical program `A244735.P8665477361551316467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244735 (n : ℕ) : ℤ :=
  A244735.P8665477361551316467.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244736.P9268599895378486618

`eq[2, gcd(2, A039703(n+1))]+1`
-/

namespace A244736.P9268599895378486618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A039703 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A244736.P9268599895378486618

noncomputable section

/-- A244736: Numbers k such that (prime(k) mod 5) is even.

Offset 1, canonical program `A244736.P9268599895378486618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A244736 (n : ℕ) : ℤ :=
  (A244736.P9268599895378486618.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A244736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244738.P5761160337677679669

`A039703(n+1)%3`
-/

namespace A244738.P5761160337677679669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039703 (n + 1)) 3

end

end A244738.P5761160337677679669

noncomputable section

/-- A244738: a(n) = (prime(n) mod 5) mod 3.

Offset 1, canonical program `A244738.P5761160337677679669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244738 (n : ℕ) : ℤ :=
  A244738.P5761160337677679669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244797.P7934935714290983183

`A032741(A040976(n+1))`
-/

namespace A244797.P7934935714290983183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A040976 (n + 1)).toNat

end

end A244797.P7934935714290983183

noncomputable section

/-- A244797: Number of moduli m such that (prime(n) mod m) = 2.

Offset 1, canonical program `A244797.P7934935714290983183`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032741, A040976, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A244797 (n : ℕ) : ℤ :=
  A244797.P7934935714290983183.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032741, A040976, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A244797.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245034.P13693774637477102255

`A001248(n+3)-4*A000040(n+3)`
-/

namespace A245034.P13693774637477102255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 3) - 4 * A000040 (n + 3)

end

end A245034.P13693774637477102255

noncomputable section

/-- A245034: a(n) = prime(n)^2 - 4*prime(n).

Offset 3, canonical program `A245034.P13693774637477102255`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001248, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245034 (n : ℕ) : ℤ :=
  A245034.P13693774637477102255.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001248, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245034.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245035.P16215164544948974787

`A245032(A006093(n+1))`
-/

namespace A245035.P16215164544948974787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245032 (A006093 (n + 1)).toNat

end

end A245035.P16215164544948974787

noncomputable section

/-- A245035: a(n) = (prime(n) - 7)^2 * (4*prime(n) - 1).

Offset 1, canonical program `A245035.P16215164544948974787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A245035 (n : ℕ) : ℤ :=
  A245035.P16215164544948974787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A245035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245174.P17300894965390179754

`Δ[A006450(n+2)-A006450(n+1)]`
-/

namespace A245174.P17300894965390179754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 2) - A006450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245174.P17300894965390179754

noncomputable section

/-- A245174: Second differences of A006450.

Offset 1, canonical program `A245174.P17300894965390179754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245174 (n : ℕ) : ℤ :=
  A245174.P17300894965390179754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245232.P15192089048372292749

`A005900(A103982(n+1))`
-/

namespace A245232.P15192089048372292749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 (A103982 (n + 1)).toNat

end

end A245232.P15192089048372292749

noncomputable section

/-- A245232: Semiprimes of the form (2*n^3+n)/3.

Offset 1, canonical program `A245232.P15192089048372292749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A245232 (n : ℕ) : ℤ :=
  A245232.P15192089048372292749.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A245232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245305.P12336053277035372019

`floor(p?[A158709(n+1)-2]/4)`
-/

namespace A245305.P12336053277035372019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158709 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 4⌋

end

end A245305.P12336053277035372019

noncomputable section

/-- A245305: Numbers k such that 4k+1, 4k+3, and 6k+5 are all primes.

Offset 1, canonical program `A245305.P12336053277035372019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A245305 (n : ℕ) : ℤ :=
  A245305.P12336053277035372019.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A245305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245550.P6354447121910343670

`A006046(floor(n/2))+sqrt(A177241(n))`
-/

namespace A245550.P6354447121910343670
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A006046 ⌊(n : ℚ) / 2⌋.toNat : ℝ) + Real.sqrt (A177241 n : ℝ)

end

end A245550.P6354447121910343670

noncomputable section

/-- A245550: a(0)=0; for n >= 1, a(n) = f(n) - 2*f(floor((n-1)/2)), where f(n) = A006046(n).

Offset 0, canonical program `A245550.P6354447121910343670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A245550 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A245550.P6354447121910343670.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A245550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245560.P16423341925158403688

`∑[ceil((n+3)*2^(n-2))]-A100071(n)`
-/

namespace A245560.P16423341925158403688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 3 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A100071 n

end

end A245560.P16423341925158403688

noncomputable section

/-- A245560: Row sums of triangle in A144480.

Offset 0, canonical program `A245560.P16423341925158403688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A245560 (n : ℕ) : ℤ :=
  A245560.P16423341925158403688.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A245560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245871.P12093525415730841866

`2*(n+1)*(∑[n+4]+2)-Δ[A052938(n)]`
-/

namespace A245871.P12093525415730841866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℕ) : ℤ) - (f2 (n + 1) - f2 n)

end

end A245871.P12093525415730841866

noncomputable section

/-- A245871: Number of length 2+2 0..n arrays with some pair in every consecutive three terms totalling exactly n.

Offset 1, canonical program `A245871.P12093525415730841866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245871 (n : ℕ) : ℤ :=
  A245871.P12093525415730841866.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246062.P4162383363487901360

`abs(A193618(n))`
-/

namespace A246062.P4162383363487901360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A193618 n|

end

end A246062.P4162383363487901360

noncomputable section

/-- A246062: G.f.: sqrt( (1 + sqrt(1+8*x)) / (1 + sqrt(1-8*x)) ).

Offset 0, canonical program `A246062.P4162383363487901360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A246062 (n : ℕ) : ℤ :=
  A246062.P4162383363487901360.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A246062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246178.P16004013760185347357

`A061178(n)+a(n-3)` with `a(0)=1, a(1)=9, a(2)=51`
-/

namespace A246178.P16004013760185347357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 51] fun n a =>
  A061178 n + a (n - 3)

end

end A246178.P16004013760185347357

noncomputable section

/-- A246178: Expansion of 1/(1 - 3*x + x^2)^3.

Offset 0, canonical program `A246178.P16004013760185347357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A246178 (n : ℕ) : ℤ :=
  A246178.P16004013760185347357.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A246178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246306.P12951552392633180147

`abs(1-A246305(n+1))`
-/

namespace A246306.P12951552392633180147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A246305 (n + 1)|

end

end A246306.P12951552392633180147

noncomputable section

/-- A246306: Numbers k such that cos(k) > cos(k+1) > cos(k+2) > cos(k+3) < cos(k+4).

Offset 1, canonical program `A246306.P12951552392633180147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246306 (n : ℕ) : ℤ :=
  A246306.P12951552392633180147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246413.P8427678712717733605

`A246407(n+7)-11`
-/

namespace A246413.P8427678712717733605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246407 (n + 7) - 11

end

end A246413.P8427678712717733605

noncomputable section

/-- A246413: Positive integers k satisfying csc(k) > csc(k+1).

Offset 1, canonical program `A246413.P8427678712717733605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. -/
def A246413 (n : ℕ) : ℤ :=
  A246413.P8427678712717733605.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. -/
def A246413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246438.P3012299356465480649

`eq[0, A164349(n)]`
-/

namespace A246438.P3012299356465480649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246438.P3012299356465480649

noncomputable section

/-- A246438: Numbers m such that A164349(m) = 0.

Offset 1, canonical program `A246438.P3012299356465480649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246438 (n : ℕ) : ℤ :=
  (A246438.P3012299356465480649.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246439.P44155868527142489

`lt[0, A164349(n)]`
-/

namespace A246439.P44155868527142489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A246439.P44155868527142489

noncomputable section

/-- A246439: Numbers m such that A164349(m) = 1.

Offset 1, canonical program `A246439.P44155868527142489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5816 terms. -/
def A246439 (n : ℕ) : ℤ :=
  (A246439.P44155868527142489.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5816 terms. -/
def A246439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246447.P1059127038919390337

`(n+3)²-Δ[A118777(n+2)]`
-/

namespace A246447.P1059127038919390337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118777 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - (f1 (n + 1) - f1 n)

end

end A246447.P1059127038919390337

noncomputable section

/-- A246447: The odd primes squared plus 1 and the composites squared minus 1.

Offset 1, canonical program `A246447.P1059127038919390337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A246447 (n : ℕ) : ℤ :=
  A246447.P1059127038919390337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A246447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246467.P12426944221142986197

`A026375(n)²`
-/

namespace A246467.P12426944221142986197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026375 n ^ 2

end

end A246467.P12426944221142986197

noncomputable section

/-- A246467: G.f.: 1 / AGM(1-5*x, sqrt((1-x)*(1-25*x))).

Offset 0, canonical program `A246467.P12426944221142986197`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246467 (n : ℕ) : ℤ :=
  A246467.P12426944221142986197.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246467.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246472.P9218684632649261526

`A161168(n)-A032443(n)`
-/

namespace A246472.P9218684632649261526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161168 n - A032443 n

end

end A246472.P9218684632649261526

noncomputable section

/-- A246472: Number of order-preserving (monotone) functions from the power set of 1 = {0} to the power set of n = {0, ..., n-1}.

Offset 0, canonical program `A246472.P9218684632649261526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A246472 (n : ℕ) : ℤ :=
  A246472.P9218684632649261526.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A246472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246592.P8185262232204503921

`n-A053644(A038554(n))`
-/

namespace A246592.P8185262232204503921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A053644 (A038554 n).toNat

end

end A246592.P8185262232204503921

noncomputable section

/-- A246592: Smallest number that can be obtained by swapping 2 adjacent bits in the binary expansion of n.

Offset 0, canonical program `A246592.P8185262232204503921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246592 (n : ℕ) : ℤ :=
  A246592.P8185262232204503921.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246594.P17130502543014025446

`A053644(A087734(n))+n`
-/

namespace A246594.P17130502543014025446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A087734 n).toNat + (n : ℤ)

end

end A246594.P17130502543014025446

noncomputable section

/-- A246594: a(n)=n for n <= 2; for n >= 3, a(n) = largest number that can be obtained by swapping two adjacent bits in the binary expansion of n.

Offset 0, canonical program `A246594.P17130502543014025446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A246594 (n : ℕ) : ℤ :=
  A246594.P17130502543014025446.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A246594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246622.P10478257499552316779

`p?[A063114(n+1)]`
-/

namespace A246622.P10478257499552316779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246622.P10478257499552316779

noncomputable section

/-- A246622: Primes of the form n + product of nonzero digits of n, in order of their occurrence.

Offset 1, canonical program `A246622.P10478257499552316779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 784 terms. -/
def A246622 (n : ℕ) : ℤ :=
  A246622.P10478257499552316779.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 784 terms. -/
def A246622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246910.P10023558416160660707

`eq[3/2*A074400(n+1), A000203(A155085(n+1))]+1`
-/

namespace A246910.P10023558416160660707
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A074400 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A155085 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A246910.P10023558416160660707

noncomputable section

/-- A246910: Numbers n such that sigma(n+sigma(n)) = 3*sigma(n).

Offset 1, canonical program `A246910.P10023558416160660707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A246910 (n : ℕ) : ℤ :=
  (A246910.P10023558416160660707.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A246910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246929.P7246319778338344955

`A001748(10*(n+1)+n+1)/3`
-/

namespace A246929.P7246319778338344955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (10 * (n + 1) + n + 1) : ℚ) / 3

end

end A246929.P7246319778338344955

noncomputable section

/-- A246929: a(n) = prime(11*n).

Offset 1, canonical program `A246929.P7246319778338344955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1818 terms. -/
def A246929 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A246929.P7246319778338344955.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1818 terms. -/
def A246929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246934.P5973542768665934503

`ceil(sqrt(A112045(n+1)))²`
-/

namespace A246934.P5973542768665934503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A112045 (n + 1) : ℝ)⌉ ^ 2

end

end A246934.P5973542768665934503

noncomputable section

/-- A246934: The closest square to n-th prime.

Offset 1, canonical program `A246934.P5973542768665934503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246934 (n : ℕ) : ℤ :=
  A246934.P5973542768665934503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247146.P7652991668944919018

`A034729(n+1)-2^n`
-/

namespace A247146.P7652991668944919018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034729 (n + 1) - (2 ^ n : ℤ)

end

end A247146.P7652991668944919018

noncomputable section

/-- A247146: As a binary numeral, the bit 2^(m-1) of a(n) is 1 iff m is a proper divisor of n.

Offset 1, canonical program `A247146.P7652991668944919018`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034729, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247146 (n : ℕ) : ℤ :=
  A247146.P7652991668944919018.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034729, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247146.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247159.P14898152283325292687

`A000203(A100484(n+1))`
-/

namespace A247159.P14898152283325292687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A100484 (n + 1)).toNat

end

end A247159.P14898152283325292687

noncomputable section

/-- A247159: Sum of divisors of even semiprimes.

Offset 1, canonical program `A247159.P14898152283325292687`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247159 (n : ℕ) : ℤ :=
  A247159.P14898152283325292687.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247159.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247287.P5555525899423498411

`∑[A097861(n)]`
-/

namespace A247287.P5555525899423498411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247287.P5555525899423498411

noncomputable section

/-- A247287: Number of weak peaks in all Motzkin paths of length n. A weak peak of a Motzkin path is a vertex on the top of a hump. A hump is an upstep followed by 0 or more flatsteps followed by a downstep. For example, the Motzkin path u*duu*h*h*dd, where u=(1,1), h=(1,0), d(1,-1), has 4 weak peaks (shown by the stars).

Offset 0, canonical program `A247287.P5555525899423498411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A247287 (n : ℕ) : ℤ :=
  A247287.P5555525899423498411.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A247287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247301.P7412956680447402795

`floor((A247302(n+3)+A010054(n))/2)`
-/

namespace A247301.P7412956680447402795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A247302 (n + 3) + A010054 n : ℚ) / 2⌋

end

end A247301.P7412956680447402795

noncomputable section

/-- A247301: Rectangular array read upwards by columns: T = T(n,k) = number of paths from (0,0) to (n,k), where 0 >= k <= 2, consisting of segments given by the vectors (1,1), (2,1), (1,-1).

Offset 0, canonical program `A247301.P7412956680447402795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1216 terms. -/
def A247301 (n : ℕ) : ℤ :=
  A247301.P7412956680447402795.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1216 terms. -/
def A247301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247418.P2117262707560324076

`∑[A067856(n+1)%2]`
-/

namespace A247418.P2117262707560324076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067856 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247418.P2117262707560324076

noncomputable section

/-- A247418: a(n) = Sum_{i=1..n} mu(i)*(-1)^(i+1).

Offset 1, canonical program `A247418.P2117262707560324076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247418 (n : ℕ) : ℤ :=
  A247418.P2117262707560324076.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247420.P9000325431005934409

`2*A000201(A000201(A242094(n+1)))+n+1`
-/

namespace A247420.P9000325431005934409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000201 (A000201 (A242094 (n + 1)).toNat).toNat + (n + 1 : ℤ)

end

end A247420.P9000325431005934409

noncomputable section

/-- A247420: Complement of A247419.

Offset 1, canonical program `A247420.P9000325431005934409`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A242094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247420 (n : ℕ) : ℤ :=
  A247420.P9000325431005934409.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A242094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247420.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247617.P3615264077344713285

`A145979(n)-A246416(n)`
-/

namespace A247617.P3615264077344713285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145979 n - A246416 n

end

end A247617.P3615264077344713285

noncomputable section

/-- A247617: a(4n) = n + 1/2 - (-1)^n/2 + (-1)^n, a(2n+1) = 2*n + 5, a(4n+2) = 2*n + 3.

Offset 0, canonical program `A247617.P3615264077344713285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247617 (n : ℕ) : ℤ :=
  A247617.P3615264077344713285.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247644.P317797350283830947

`A140751(n+1)*A140751(n)`
-/

namespace A247644.P317797350283830947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140751 (n + 1) * A140751 n

end

end A247644.P317797350283830947

noncomputable section

/-- A247644: Triangle formed from the odd-numbered rows of A088855.

Offset 1, canonical program `A247644.P317797350283830947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2600 terms. -/
def A247644 (n : ℕ) : ℤ :=
  A247644.P317797350283830947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2600 terms. -/
def A247644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247787.P10201470630707085594

`∑{d}[1-A100484(n+1), #]`
-/

namespace A247787.P10201470630707085594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A100484 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A247787.P10201470630707085594

noncomputable section

/-- A247787: Sum of divisors of 2*prime(n)-1.

Offset 1, canonical program `A247787.P10201470630707085594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247787 (n : ℕ) : ℤ :=
  (A247787.P10201470630707085594.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247938.P2429314974595596227

`A000203(A001348(n+1))`
-/

namespace A247938.P2429314974595596227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001348 (n + 1)).toNat

end

end A247938.P2429314974595596227

noncomputable section

/-- A247938: Sum of divisors of 2^prime(n)-1.

Offset 1, canonical program `A247938.P2429314974595596227`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001348, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247938 (n : ℕ) : ℤ :=
  A247938.P2429314974595596227.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001348, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247938.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247972.P1506214924061998001

`A247971(a(n-1)+5)+n` with `a(0)=5`
-/

namespace A247972.P1506214924061998001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A247971 (a (n - 1) + 5).toNat + (n : ℤ)

end

end A247972.P1506214924061998001

noncomputable section

/-- A247972: Numbers k such that A247971(k+1) = A247971(k).

Offset 1, canonical program `A247972.P1506214924061998001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A247972 (n : ℕ) : ℤ :=
  A247972.P1506214924061998001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A247972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247984.P15958932547498070819

`A307768(n+1)+A007877(n+1)*A063886(n+1)`
-/

namespace A247984.P15958932547498070819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307768 (n + 1) + A007877 (n + 1) * A063886 (n + 1)

end

end A247984.P15958932547498070819

noncomputable section

/-- A247984: Constant terms of congruences derived from a permutation polynomial motivated by generalized quadrangles.

Offset 1, canonical program `A247984.P15958932547498070819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A247984 (n : ℕ) : ℤ :=
  A247984.P15958932547498070819.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A247984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247987.P17329123447741709562

`comp[A247986(n+1)-1]+1`
-/

namespace A247987.P17329123447741709562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247986 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A247987.P17329123447741709562

noncomputable section

/-- A247987: Numbers k such that A247985(k+1) - A247985(k) = 3.

Offset 1, canonical program `A247987.P17329123447741709562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A247987 (n : ℕ) : ℤ :=
  (A247987.P17329123447741709562.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A247987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248150.P14883232548873335720

`lt[A105824(n+1), 1]+1`
-/

namespace A248150.P14883232548873335720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105824 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A248150.P14883232548873335720

noncomputable section

/-- A248150: Numbers whose sum of divisors (A000203) is divisible by 4.

Offset 1, canonical program `A248150.P14883232548873335720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248150 (n : ℕ) : ℤ :=
  (A248150.P14883232548873335720.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248184.P16797326836110857965

`record[n+1-A248183(n+1)%A248183(n+2)]`
-/

namespace A248184.P16797326836110857965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A248183 (n + 1)) (A248183 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248184.P16797326836110857965

noncomputable section

/-- A248184: Numbers k such that A248183(k+1) = A248183(k).

Offset 1, canonical program `A248184.P16797326836110857965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A248184 (n : ℕ) : ℤ :=
  A248184.P16797326836110857965.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A248184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248368.P16657822915587106588

`p?[A248221(n+1)]`
-/

namespace A248368.P16657822915587106588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248368.P16657822915587106588

noncomputable section

/-- A248368: Primes p such that 52*p + 1 is prime.

Offset 1, canonical program `A248368.P16657822915587106588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 670 terms. -/
def A248368 (n : ℕ) : ℤ :=
  A248368.P16657822915587106588.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 670 terms. -/
def A248368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248502.P6195159982500652258

`comp[A248501(n+1)-1]+1`
-/

namespace A248502.P6195159982500652258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248501 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A248502.P6195159982500652258

noncomputable section

/-- A248502: Numbers m that are not coprime to floor(m/16).

Offset 1, canonical program `A248502.P6195159982500652258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248502 (n : ℕ) : ℤ :=
  (A248502.P6195159982500652258.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248567.P6131162230624126847

`A107907(A028310(3*n+2))+A001478(n+1)`
-/

namespace A248567.P6131162230624126847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107907 (A028310 (3 * n + 2)).toNat + A001478 (n + 1)

end

end A248567.P6131162230624126847

noncomputable section

/-- A248567: Numbers k such that A248565(k+1) = A248565(k) + 2.

Offset 1, canonical program `A248567.P6131162230624126847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A248567 (n : ℕ) : ℤ :=
  A248567.P6131162230624126847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A248567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248910.P11530105690920292692

`record[A054895(A234959(n+1))+1+n]`
-/

namespace A248910.P11530105690920292692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054895 (A234959 (n + 1)).toNat + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248910.P11530105690920292692

noncomputable section

/-- A248910: Numbers with no zeros in base-6 representation.

Offset 1, canonical program `A248910.P11530105690920292692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4299 terms. -/
def A248910 (n : ℕ) : ℤ :=
  A248910.P11530105690920292692.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4299 terms. -/
def A248910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249036.P2673849611643492835

`2-A078881(a(n-1))+n` with `a(0)=1`
-/

namespace A249036.P2673849611643492835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - A078881 (a (n - 1)).toNat + (n : ℤ)

end

end A249036.P2673849611643492835

noncomputable section

/-- A249036: a(1)=1, a(2)=2; thereafter a(n) = a(n-1-(number of even terms so far)) + a(n-1-(number of odd terms so far)).

Offset 1, canonical program `A249036.P2673849611643492835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249036 (n : ℕ) : ℤ :=
  A249036.P2673849611643492835.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249164.P13270305561893433312

`2*A245783(n+1)-1`
-/

namespace A249164.P13270305561893433312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A245783 (n + 1) - 1

end

end A249164.P13270305561893433312

noncomputable section

/-- A249164: Numbers n such that the triangular number T(n) is equal to the sum of the pentagonal numbers P(m) and P(m+1) for some m.

Offset 1, canonical program `A249164.P13270305561893433312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A249164 (n : ℕ) : ℤ :=
  A249164.P13270305561893433312.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A249164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249166.P4963763552087285521

`floor(A235497(2*n+1)/2)+n+1`
-/

namespace A249166.P4963763552087285521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A235497 (2 * n + 1) : ℚ) / 2⌋ + (n + 1 : ℤ)

end

end A249166.P4963763552087285521

noncomputable section

/-- A249166: Odd integers concatenated with themselves.

Offset 1, canonical program `A249166.P4963763552087285521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A249166 (n : ℕ) : ℤ :=
  A249166.P4963763552087285521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A249166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249343.P11021096354197649042

`(n+1)*A004128(n)-∑[A346502(n)]`
-/

namespace A249343.P11021096354197649042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004128 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249343.P11021096354197649042

noncomputable section

/-- A249343: The exponent of the highest power of 3 dividing the product of the elements on the n-th row of Pascal's triangle (A001142(n)).

Offset 0, canonical program `A249343.P11021096354197649042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249343 (n : ℕ) : ℤ :=
  A249343.P11021096354197649042.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249719.P10354154330167799316

`eq[9, A060011(n)]`
-/

namespace A249719.P10354154330167799316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060011 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249719.P10354154330167799316

noncomputable section

/-- A249719: Complement of A051382.

Offset 1, canonical program `A249719.P10354154330167799316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8464 terms. -/
def A249719 (n : ℕ) : ℤ :=
  (A249719.P10354154330167799316.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8464 terms. -/
def A249719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250155.P12803802932175960487

`(n+2)^7-A250060(n+1)`
-/

namespace A250155.P12803802932175960487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 7 : ℤ) - A250060 (n + 1)

end

end A250155.P12803802932175960487

noncomputable section

/-- A250155: Number of length 1+6 0..n arrays with every seven consecutive terms having the maximum of some two terms equal to the minimum of the remaining five terms.

Offset 1, canonical program `A250155.P12803802932175960487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250155 (n : ℕ) : ℤ :=
  A250155.P12803802932175960487.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250429.P13624110313230034880

`A001249(A008619(n+1))*A001249(A008619(n))`
-/

namespace A250429.P13624110313230034880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 (A008619 (n + 1)).toNat * A001249 (A008619 n).toNat

end

end A250429.P13624110313230034880

noncomputable section

/-- A250429: Number of (n+1)X(5+1) 0..1 arrays with nondecreasing sum of every two consecutive values in every row and column.

Offset 1, canonical program `A250429.P13624110313230034880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250429 (n : ℕ) : ℤ :=
  A250429.P13624110313230034880.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250497.P5629535852931321434

`A164406(n+3)^3`
-/

namespace A250497.P5629535852931321434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164406 (n + 3) ^ 3

end

end A250497.P5629535852931321434

noncomputable section

/-- A250497: Number of (n+2)X(1+2) 0..1 arrays with nondecreasing medians of every three consecutive values in every row and column.

Offset 1, canonical program `A250497.P5629535852931321434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A250497 (n : ℕ) : ℤ :=
  A250497.P5629535852931321434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A250497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250622.P6101694569032814672

`A250621(n+1)-A000040(n+1)`
-/

namespace A250622.P6101694569032814672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250621 (n + 1) - A000040 (n + 1)

end

end A250622.P6101694569032814672

noncomputable section

/-- A250622: a(n) = floor(n*log(prime(n)))-prime(n), n >= 1.

Offset 1, canonical program `A250622.P6101694569032814672`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A250621, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A250622 (n : ℕ) : ℤ :=
  A250622.P6101694569032814672.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A250621, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A250622.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A250623.P3707548778749929836

`A250621(n+1)+A050502(n+1)-2*A000040(n+1)`
-/

namespace A250623.P3707548778749929836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250621 (n + 1) + A050502 (n + 1) - 2 * A000040 (n + 1)

end

end A250623.P3707548778749929836

noncomputable section

/-- A250623: a(n) = floor(n*log(prime(n))) + ceiling(n*log(n)) - 2*prime(n).

Offset 1, canonical program `A250623.P3707548778749929836`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A250621, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A250623 (n : ℕ) : ℤ :=
  A250623.P3707548778749929836.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A250621, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A250623.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A251187.P12829986196269252338

`A006501(n+3)^3`
-/

namespace A251187.P12829986196269252338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006501 (n + 3) ^ 3

end

end A251187.P12829986196269252338

noncomputable section

/-- A251187: Number of (n+2)X(1+2) 0..1 arrays with nondecreasing sum of every three consecutive values in every row and column.

Offset 1, canonical program `A251187.P12829986196269252338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A251187 (n : ℕ) : ℤ :=
  A251187.P12829986196269252338.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A251187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251482.P5204972859914801161

`A085581(n+2)+A086861(n+2)+1-2*(n+2)`
-/

namespace A251482.P5204972859914801161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085581 (n + 2) + (A086861 (n + 2) + 1 - (2 * (n + 2) : ℤ))

end

end A251482.P5204972859914801161

noncomputable section

/-- A251482: a(n) = floor(prime(n)/log(n)) + ceiling(prime(n)/log(prime(n))) - 2*n, n >=2.

Offset 2, canonical program `A251482.P5204972859914801161`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085581, A086861, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A251482 (n : ℕ) : ℤ :=
  A251482.P5204972859914801161.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085581, A086861, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A251482.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A251707.P16439731495366822498

`A251706(n+1)-A001592(n)`
-/

namespace A251707.P16439731495366822498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251706 (n + 1) - A001592 n

end

end A251707.P16439731495366822498

noncomputable section

/-- A251707: 6-step Fibonacci sequence starting with (0,0,0,1,0,0).

Offset 0, canonical program `A251707.P16439731495366822498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A251707 (n : ℕ) : ℤ :=
  A251707.P16439731495366822498.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A251707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251711.P4002084624491784275

`A251710(n+1)-A122189(n)`
-/

namespace A251711.P4002084624491784275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251710 (n + 1) - A122189 n

end

end A251711.P4002084624491784275

noncomputable section

/-- A251711: 7-step Fibonacci sequence starting with (0,0,0,0,1,0,0).

Offset 0, canonical program `A251711.P4002084624491784275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251711 (n : ℕ) : ℤ :=
  A251711.P4002084624491784275.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251720.P7553802040136073168

`A000040(n+1)*A006094(n+1)`
-/

namespace A251720.P7553802040136073168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A006094 (n + 1)

end

end A251720.P7553802040136073168

noncomputable section

/-- A251720: a(n) = (p_n)^2 * p_{n+1}, where p_n is the n-th prime, A000040(n).

Offset 1, canonical program `A251720.P7553802040136073168`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A251720 (n : ℕ) : ℤ :=
  A251720.P7553802040136073168.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A251720.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A251741.P8014523365454003641

`A251740(n+1)-A079262(n)`
-/

namespace A251741.P8014523365454003641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251740 (n + 1) - A079262 n

end

end A251741.P8014523365454003641

noncomputable section

/-- A251741: 8-step Fibonacci sequence starting with 0,0,0,0,1,0,0,0.

Offset 0, canonical program `A251741.P8014523365454003641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251741 (n : ℕ) : ℤ :=
  A251741.P8014523365454003641.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251746.P9920030553128613572

`A104144(n+1)-A104144(n)`
-/

namespace A251746.P9920030553128613572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 (n + 1) - A104144 n

end

end A251746.P9920030553128613572

noncomputable section

/-- A251746: 9-step Fibonacci sequence starting with 0,0,0,0,0,0,0,1,0.

Offset 0, canonical program `A251746.P9920030553128613572`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A251746 (n : ℕ) : ℤ :=
  A251746.P9920030553128613572.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A251746.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A251747.P15525027116418191893

`A104144(n+2)-A104144(n+1)-A104144(n)`
-/

namespace A251747.P15525027116418191893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 (n + 2) - A104144 (n + 1) - A104144 n

end

end A251747.P15525027116418191893

noncomputable section

/-- A251747: 9-step Fibonacci sequence starting with 0,0,0,0,0,0,1,0,0.

Offset 0, canonical program `A251747.P15525027116418191893`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A251747 (n : ℕ) : ℤ :=
  A251747.P15525027116418191893.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A251747.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A252055.P14347574890606999635

`∑{d}[n+1, A003849(#-1)*A005614((n+1)/#-1)]`
-/

namespace A252055.P14347574890606999635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003849 (d - 1) * A005614 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A252055.P14347574890606999635

noncomputable section

/-- A252055: Number of products A000201(i)*A001950(j) = n.

Offset 1, canonical program `A252055.P14347574890606999635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A252055 (n : ℕ) : ℤ :=
  A252055.P14347574890606999635.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A252055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252651.P4540024866136707722

`A046913(2*n+1)/A061347(n+1)*A061347(n+2)`
-/

namespace A252651.P4540024866136707722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046913 (2 * n + 1) : ℚ) / (A061347 (n + 1) : ℚ) * (A061347 (n + 2) : ℚ)

end

end A252651.P4540024866136707722

noncomputable section

/-- A252651: Expansion of q^(-1/2) * (eta(q) * eta(q^2) * eta(q^6) / eta(q^3))^2 in powers of q.

Offset 0, canonical program `A252651.P4540024866136707722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A252651 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A252651.P4540024866136707722.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A252651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252704.P14111611536729371917

`A337959(n+1)+A337960(n+1)`
-/

namespace A252704.P14111611536729371917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337959 (n + 1) + A337960 (n + 1)

end

end A252704.P14111611536729371917

noncomputable section

/-- A252704: The number of ways to color the faces of a regular icosahedron with n colors, counting mirror images as one.

Offset 1, canonical program `A252704.P14111611536729371917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252704 (n : ℕ) : ℤ :=
  A252704.P14111611536729371917.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252871.P6032531055172696839

`A252815(n+1)-∑[C(n+3, 2)]`
-/

namespace A252871.P6032531055172696839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252815 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A252871.P6032531055172696839

noncomputable section

/-- A252871: Number of nX3 nonnegative integer arrays with upper left 0 and lower right n+3-4 and value increasing by 0 or 1 with every step right or down.

Offset 1, canonical program `A252871.P6032531055172696839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252871 (n : ℕ) : ℤ :=
  A252871.P6032531055172696839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253106.P15381254514479886503

`∪[A001748(n+1), A100484(n+1)]`
-/

namespace A253106.P15381254514479886503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A253106.P15381254514479886503

noncomputable section

/-- A253106: Semiprimes with smallest factor <= 3.

Offset 1, canonical program `A253106.P15381254514479886503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253106 (n : ℕ) : ℤ :=
  (A253106.P15381254514479886503.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253205.P9230231232005101634

`record[gcd(n+1, n%A007953(n+1))]`
-/

namespace A253205.P9230231232005101634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (n : ℤ) (A007953 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253205.P9230231232005101634

noncomputable section

/-- A253205: Natural numbers n such that n-1 is divisible by the sum of the decimal digits of n.

Offset 1, canonical program `A253205.P9230231232005101634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 438 terms. -/
def A253205 (n : ℕ) : ℤ :=
  (A253205.P9230231232005101634.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 438 terms. -/
def A253205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253251.P7156480629485270913

`A052038(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A253251.P7156480629485270913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052038 (a (n - 1)).toNat + a (n - 1)

end

end A253251.P7156480629485270913

noncomputable section

/-- A253251: a(1) = 1, and for n > 0, a(n+1) = a(n) + floor(10^k/a(n)), where k is the least integer such that 10^k >= a(n).

Offset 1, canonical program `A253251.P7156480629485270913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7106 terms. -/
def A253251 (n : ℕ) : ℤ :=
  A253251.P7156480629485270913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7106 terms. -/
def A253251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253414.P8812429951265453479

`A073089(2*n+3)-A073089(A014681(n+1))`
-/

namespace A253414.P8812429951265453479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (2 * n + 3) - A073089 (A014681 (n + 1)).toNat

end

end A253414.P8812429951265453479

noncomputable section

/-- A253414: G.f. satisfies (1+x^2)*g(x) = 1 + x*g(x^2).

Offset 0, canonical program `A253414.P8812429951265453479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253414 (n : ℕ) : ℤ :=
  A253414.P8812429951265453479.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253780.P12171033837205224752

`A253779(n+1)^3`
-/

namespace A253780.P12171033837205224752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253779 (n + 1) ^ 3

end

end A253780.P12171033837205224752

noncomputable section

/-- A253780: Cubes c^3 that are equal to the sum of m^3 consecutive cubes starting at b^3 with b (A253778) for m^3 not divisible by 3 (A118719).

Offset 1, canonical program `A253780.P12171033837205224752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253780 (n : ℕ) : ℤ :=
  A253780.P12171033837205224752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253936.P2651308302355443036

`A000040(n+1+A007652(n+1))`
-/

namespace A253936.P2651308302355443036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 1 : ℤ) + A007652 (n + 1)).toNat

end

end A253936.P2651308302355443036

noncomputable section

/-- A253936: a(n) = prime(n + (prime(n) mod 10)).

Offset 1, canonical program `A253936.P2651308302355443036`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007652, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253936 (n : ℕ) : ℤ :=
  A253936.P2651308302355443036.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007652, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253936.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253969.P1574330651743664428

`A000040(eq[2, A006094(n+2)%3]+2)`
-/

namespace A253969.P1574330651743664428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006094 (n + 2)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A253969.P1574330651743664428

noncomputable section

/-- A253969: Primes p such that p + nextprime(p) is divisible by 6.

Offset 1, canonical program `A253969.P1574330651743664428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5979 terms. -/
def A253969 (n : ℕ) : ℤ :=
  A253969.P1574330651743664428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5979 terms. -/
def A253969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254111.P14386116396176993841

`A254110(n+1)+1`
-/

namespace A254111.P14386116396176993841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254110 (n + 1) + 1

end

end A254111.P14386116396176993841

noncomputable section

/-- A254111: One-based column index of n in A254105: If A234017(n) = 0, then a(n) = 1, otherwise a(n) = 1 + a(A234017(n)).

Offset 1, canonical program `A254111.P14386116396176993841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A254111 (n : ℕ) : ℤ :=
  A254111.P14386116396176993841.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A254111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254146.P6523098754647194470

`A254145(n)+A001555(n)`
-/

namespace A254146.P6523098754647194470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254145 n + A001555 n

end

end A254146.P6523098754647194470

noncomputable section

/-- A254146: a(n) = 1*8^n + 2*7^n + 3*6^n + 4*5^n + 5*4^n + 6*3^n + 7*2^n + 8*1^n.

Offset 0, canonical program `A254146.P6523098754647194470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A254146 (n : ℕ) : ℤ :=
  A254146.P6523098754647194470.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A254146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254464.P2241084014738837999

`A254463(n)+A254145(n)`
-/

namespace A254464.P2241084014738837999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254463 n + A254145 n

end

end A254464.P2241084014738837999

noncomputable section

/-- A254464: a(n) = 21*2^n + 10*4^n + 15*3^n + 3*6^n + 6*5^n + 7^n + 28.

Offset 0, canonical program `A254464.P2241084014738837999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A254464 (n : ℕ) : ℤ :=
  A254464.P2241084014738837999.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A254464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254671.P17194479350893143433

`lt[1, A296955(n+1)-2]`
-/

namespace A254671.P17194479350893143433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296955 (n + 1) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A254671.P17194479350893143433

noncomputable section

/-- A254671: Numbers that can be represented as x*y + x + y, where x >= y > 1.

Offset 1, canonical program `A254671.P17194479350893143433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254671 (n : ℕ) : ℤ :=
  (A254671.P17194479350893143433.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254674.P12644809012096564832

`∑[A001090(n)]+A199336(n+1)²`
-/

namespace A254674.P12644809012096564832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A199336 (n + 1) ^ 2

end

end A254674.P12644809012096564832

noncomputable section

/-- A254674: Indices of heptagonal numbers (A000566) which are also centered triangular numbers (A005448).

Offset 1, canonical program `A254674.P12644809012096564832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A254674 (n : ℕ) : ℤ :=
  A254674.P12644809012096564832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A254674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254707.P1774732235880204760

`2*A165188(n+1)-A254594(n)`
-/

namespace A254707.P1774732235880204760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A165188 (n + 1) - A254594 n

end

end A254707.P1774732235880204760

noncomputable section

/-- A254707: Expansion of (1 + 2*x^2) / ((1 - x^2)^2 * (1 - x^3) * (1 - x^4)) in powers of x.

Offset 0, canonical program `A254707.P1774732235880204760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254707 (n : ℕ) : ℤ :=
  A254707.P1774732235880204760.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254877.P4893868847996213209

`∑[A069905(A026741(n+3))]`
-/

namespace A254877.P4893868847996213209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A026741 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254877.P4893868847996213209

noncomputable section

/-- A254877: Expansion of (1 - x^5) / ((1 - x) * (1 - x^2)^2 * (1 - x^3) * (1 - x^4)) in powers of x.

Offset 0, canonical program `A254877.P4893868847996213209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A254877 (n : ℕ) : ℤ :=
  A254877.P4893868847996213209.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A254877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255177.P6164696374415755256

`Δ[Δ[A001015(n-A057427(n))]]`
-/

namespace A255177.P6164696374415755256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 ((n : ℤ) - A057427 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255177.P6164696374415755256

noncomputable section

/-- A255177: Second differences of seventh powers (A001015).

Offset 0, canonical program `A255177.P6164696374415755256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A255177 (n : ℕ) : ℤ :=
  A255177.P6164696374415755256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A255177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255224.P15824476764255298837

`A255223(n+1)+12`
-/

namespace A255224.P15824476764255298837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255223 (n + 1) + 12

end

end A255224.P15824476764255298837

noncomputable section

/-- A255224: Number of (n+2)X(4+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 2 and no column sum 2.

Offset 1, canonical program `A255224.P15824476764255298837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A255224 (n : ℕ) : ℤ :=
  A255224.P15824476764255298837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A255224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255225.P10298454783296627816

`A255223(n+1)+30`
-/

namespace A255225.P10298454783296627816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255223 (n + 1) + 30

end

end A255225.P10298454783296627816

noncomputable section

/-- A255225: Number of (n+2)X(5+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 2 and no column sum 2.

Offset 1, canonical program `A255225.P10298454783296627816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A255225 (n : ℕ) : ℤ :=
  A255225.P10298454783296627816.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A255225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255368.P5363430774879013215

`A062157(n)*A186101(n)`
-/

namespace A255368.P5363430774879013215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A186101 n

end

end A255368.P5363430774879013215

noncomputable section

/-- A255368: a(n) = -(-1)^n * 2 * n / 3 if n divisible by 3, a(n) = -(-1)^n * n otherwise.

Offset 0, canonical program `A255368.P5363430774879013215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255368 (n : ℕ) : ℤ :=
  A255368.P5363430774879013215.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255491.P15620683629542724992

`comp[A181732(n+1)-1]+1`
-/

namespace A255491.P15620683629542724992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181732 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A255491.P15620683629542724992

noncomputable section

/-- A255491: Numbers k such that 90*k+1 is composite.

Offset 1, canonical program `A255491.P15620683629542724992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255491 (n : ℕ) : ℤ :=
  (A255491.P15620683629542724992.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255527.P13612266625817391283

`A127739(A065033(n))+n`
-/

namespace A255527.P13612266625817391283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (A065033 n).toNat + (n : ℤ)

end

end A255527.P13612266625817391283

noncomputable section

/-- A255527: Where records occur in A255437.

Offset 1, canonical program `A255527.P13612266625817391283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255527 (n : ℕ) : ℤ :=
  A255527.P13612266625817391283.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255648.P2204606610145785971

`abs(A112848(n+1))`
-/

namespace A255648.P2204606610145785971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112848 (n + 1)|

end

end A255648.P2204606610145785971

noncomputable section

/-- A255648: Expansion of (a(q) + a(q^2) + a(q^3) + a(q^6) - 4) / 6 in powers of q where a() is a cubic AGM theta function.

Offset 1, canonical program `A255648.P2204606610145785971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255648 (n : ℕ) : ℤ :=
  A255648.P2204606610145785971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255743.P1815308521634170027

`A003951(A000120(n))`
-/

namespace A255743.P1815308521634170027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003951 (A000120 n).toNat

end

end A255743.P1815308521634170027

noncomputable section

/-- A255743: a(1) = 1; for n > 1, a(n) = 9*8^{A000120(n-1)-1}.

Offset 1, canonical program `A255743.P1815308521634170027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255743 (n : ℕ) : ℤ :=
  A255743.P1815308521634170027.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255744.P326173307851122901

`A003952(A000120(n))`
-/

namespace A255744.P326173307851122901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003952 (A000120 n).toNat

end

end A255744.P326173307851122901

noncomputable section

/-- A255744: a(1) = 1; for n > 1, a(n) = 10*9^(A000120(n-1)-1).

Offset 1, canonical program `A255744.P326173307851122901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255744 (n : ℕ) : ℤ :=
  A255744.P326173307851122901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255766.P5457253108334879080

`∑[A003953(A000120(n))]`
-/

namespace A255766.P5457253108334879080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003953 (A000120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255766.P5457253108334879080

noncomputable section

/-- A255766: Partial sums of A255745.

Offset 1, canonical program `A255766.P5457253108334879080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255766 (n : ℕ) : ℤ :=
  A255766.P5457253108334879080.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255977.P171322725944610092

`A054347(n)-((n+1)²-3*(n+1))/2`
-/

namespace A255977.P171322725944610092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054347 n : ℚ) - (((n + 1) ^ 2 : ℤ) - (3 * (n + 1) : ℤ) : ℚ) / 2

end

end A255977.P171322725944610092

noncomputable section

/-- A255977: The number of numbers j+k*r <= n, where r = golden ratio and j and k are nonnegative integers.

Offset 1, canonical program `A255977.P171322725944610092`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054347, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255977 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A255977.P171322725944610092.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054347, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255977.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256140.P8900186657448038736

`(C(comp[∑[n]]-n, 2)-(n+1))^A000120(n-C(∑[char[∑[n]]], 2))`
-/

namespace A256140.P8900186657448038736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℚ) ^ (A000120 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2) : ℤ)

end

end A256140.P8900186657448038736

noncomputable section

/-- A256140: Square array read by antidiagonals upwards: T(n,k) = n^A000120(k), n>=0, k>=0.

Offset 0, canonical program `A256140.P8900186657448038736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256140 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A256140.P8900186657448038736.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256277.P12689751389106813256

`A000984(n+1)%(2*n+3)`
-/

namespace A256277.P12689751389106813256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000984 (n + 1)) (2 * n + 3 : ℤ)

end

end A256277.P12689751389106813256

noncomputable section

/-- A256277: C(2*n,n) mod 2*n+1.

Offset 1, canonical program `A256277.P12689751389106813256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A256277 (n : ℕ) : ℤ :=
  A256277.P12689751389106813256.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A256277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256313.P3101194887776980855

`A256524(n)-A077043(n+1)`
-/

namespace A256313.P3101194887776980855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256524 n - A077043 (n + 1)

end

end A256313.P3101194887776980855

noncomputable section

/-- A256313: Number of partitions of 3n into exactly 4 parts.

Offset 0, canonical program `A256313.P3101194887776980855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256313 (n : ℕ) : ℤ :=
  A256313.P3101194887776980855.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256701.P16267587922398115576

`A001057(A073122(n+1)+n)`
-/

namespace A256701.P16267587922398115576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A073122 (n + 1) + (n : ℤ)).toNat

end

end A256701.P16267587922398115576

noncomputable section

/-- A256701: Positive part of the minimal alternating binary representation of n (defined at A245596).

Offset 1, canonical program `A256701.P16267587922398115576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A256701 (n : ℕ) : ℤ :=
  A256701.P16267587922398115576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A256701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256764.P16508789042629990084

`2^(n+3)*A204032(n+2)`
-/

namespace A256764.P16508789042629990084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) * A204032 (n + 2)

end

end A256764.P16508789042629990084

noncomputable section

/-- A256764: Number of (n+2)X(1+2) 0..1 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum.

Offset 1, canonical program `A256764.P16508789042629990084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A256764 (n : ℕ) : ℤ :=
  A256764.P16508789042629990084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A256764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256765.P9408415703290799051

`A204032(n+2)²`
-/

namespace A256765.P9408415703290799051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204032 (n + 2) ^ 2

end

end A256765.P9408415703290799051

noncomputable section

/-- A256765: Number of (n+2)X(2+2) 0..1 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum.

Offset 1, canonical program `A256765.P9408415703290799051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A256765 (n : ℕ) : ℤ :=
  A256765.P9408415703290799051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A256765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256966.P7229463913405472594

`∑[A095791(n)]+n`
-/

namespace A256966.P7229463913405472594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A256966.P7229463913405472594

noncomputable section

/-- A256966: Partial sums of A072649.

Offset 1, canonical program `A256966.P7229463913405472594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256966 (n : ℕ) : ℤ :=
  A256966.P7229463913405472594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257089.P3849951302181853917

`A007949(A256689(n+1))`
-/

namespace A257089.P3849951302181853917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A256689 (n + 1)).toNat

end

end A257089.P3849951302181853917

noncomputable section

/-- A257089: a(n) = log_3 (A256689(n)).

Offset 1, canonical program `A257089.P3849951302181853917`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256689, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257089 (n : ℕ) : ℤ :=
  A257089.P3849951302181853917.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256689, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257089.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257090.P18330022939788008876

`log2(A256691(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257090.P18330022939788008876
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A256691 (n + 1) : ℝ)

end

end A257090.P18330022939788008876

noncomputable section

/-- A257090: a(n) = log_2 (A256691(n)).

Offset 1, canonical program `A257090.P18330022939788008876`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256691, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257090 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A257090.P18330022939788008876.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256691, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257090.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257230.P10276478354982974710

`A006093(n+1)-A165994(n+2)`
-/

namespace A257230.P10276478354982974710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A165994 (n + 2)

end

end A257230.P10276478354982974710

noncomputable section

/-- A257230: Floor(sqrt(q)-(q-p)), where p and q are consecutive primes.

Offset 1, canonical program `A257230.P10276478354982974710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257230 (n : ℕ) : ℤ :=
  A257230.P10276478354982974710.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257295.P17273272147279927714

`round(A007953(n)/A055642(n))`
-/

namespace A257295.P17273272147279927714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007953 n : ℚ) / (A055642 n : ℚ))

end

end A257295.P17273272147279927714

noncomputable section

/-- A257295: Arithmetic mean of the digits of n, rounded to the nearest integer.

Offset 0, canonical program `A257295.P17273272147279927714`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257295 (n : ℕ) : ℤ :=
  A257295.P17273272147279927714.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257295.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257296.P8153982668821683699

`floor(A007953(n)/A055642(n)*10^(A055642(n)-1))`
-/

namespace A257296.P8153982668821683699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007953 n : ℚ) / (A055642 n : ℚ) * (10 : ℚ) ^ (A055642 n - 1 : ℤ)⌋

end

end A257296.P8153982668821683699

noncomputable section

/-- A257296: Arithmetic mean of the digits of n, multiplied by 10^(d-1) and rounded down, where d is the number of digits of n.

Offset 0, canonical program `A257296.P8153982668821683699`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257296 (n : ℕ) : ℤ :=
  A257296.P8153982668821683699.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257296.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257464.P12698508547421429426

`∑[A083709(n)]`
-/

namespace A257464.P12698508547421429426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257464.P12698508547421429426

noncomputable section

/-- A257464: Number of factorizations of m^n into 3 factors, where m is a product of exactly 3 distinct primes and each factor is a product of n primes (counted with multiplicity).

Offset 0, canonical program `A257464.P12698508547421429426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257464 (n : ℕ) : ℤ :=
  A257464.P12698508547421429426.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257934.P15340406107944310212

`A154949(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A257934.P15340406107944310212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A154949 n - a (n - 2)

end

end A257934.P15340406107944310212

noncomputable section

/-- A257934: Expansion of 1/(1-x-x^2-x^3-x^4+x^5+x^6+x^7).

Offset 0, canonical program `A257934.P15340406107944310212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A257934 (n : ℕ) : ℤ :=
  A257934.P15340406107944310212.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A257934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258056.P1744994457823559617

`A006370(a(n-1))` with `a(0)=75`
-/

namespace A258056.P1744994457823559617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [75] fun n a =>
  A006370 (a (n - 1)).toNat

end

end A258056.P1744994457823559617

noncomputable section

/-- A258056: 3x + 1 sequence starting at 75.

Offset 0, canonical program `A258056.P1744994457823559617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258056 (n : ℕ) : ℤ :=
  A258056.P1744994457823559617.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258098.P2093917202914971256

`A006370(a(n-1))` with `a(0)=79`
-/

namespace A258098.P2093917202914971256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [79] fun n a =>
  A006370 (a (n - 1)).toNat

end

end A258098.P2093917202914971256

noncomputable section

/-- A258098: 3x + 1 sequence starting at 79.

Offset 0, canonical program `A258098.P2093917202914971256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258098 (n : ℕ) : ℤ :=
  A258098.P2093917202914971256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258445.P3993367522767130701

`A140751(A023969(n)+n)`
-/

namespace A258445.P3993367522767130701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140751 (A023969 n + (n : ℤ)).toNat

end

end A258445.P3993367522767130701

noncomputable section

/-- A258445: Irregular triangle related to Pascal's triangle.

Offset 1, canonical program `A258445.P3993367522767130701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A258445 (n : ℕ) : ℤ :=
  A258445.P3993367522767130701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A258445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258578.P11835959862927243434

`A000040(eq[1, A006094(n+2)%3]+2)`
-/

namespace A258578.P11835959862927243434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006094 (n + 2)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A258578.P11835959862927243434

noncomputable section

/-- A258578: Primes p such that difference between p and next prime after p is multiple of 6.

Offset 1, canonical program `A258578.P11835959862927243434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4019 terms. -/
def A258578 (n : ℕ) : ℤ :=
  A258578.P11835959862927243434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4019 terms. -/
def A258578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259547.P2532143196346448718

`n*A259546(n)`
-/

namespace A259547.P2532143196346448718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A259546 n

end

end A259547.P2532143196346448718

noncomputable section

/-- A259547: a(n) = n^4*Fibonacci(n).

Offset 0, canonical program `A259547.P2532143196346448718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 430 terms. -/
def A259547 (n : ℕ) : ℤ :=
  A259547.P2532143196346448718.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 430 terms. -/
def A259547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259549.P10181913513683013065

`∑[A071028(n)]`
-/

namespace A259549.P10181913513683013065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259549.P10181913513683013065

noncomputable section

/-- A259549: Triangle T(n,k) with rows of length 2n-1 filled with consecutive integers, each appearing twice except for the last term, T(n,2n-1) = n(n+1)/2.

Offset 1, canonical program `A259549.P10181913513683013065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259549 (n : ℕ) : ℤ :=
  A259549.P10181913513683013065.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259626.P18318315588248049035

`A259625(n+1)+1`
-/

namespace A259626.P18318315588248049035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259625 (n + 1) + 1

end

end A259626.P18318315588248049035

noncomputable section

/-- A259626: List of numbers L and L + 1, where L = A000032, the Lucas numbers, sorted into increasing order and duplicates removed.

Offset 1, canonical program `A259626.P18318315588248049035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 955 terms. -/
def A259626 (n : ℕ) : ℤ :=
  A259626.P18318315588248049035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 955 terms. -/
def A259626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259648.P18063920106671831620

`floor(A030078(n+2)/((n+2)*log(n+2)))`
-/

namespace A259648.P18063920106671831620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030078 (n + 2) : ℝ) / ((n + 2 : ℝ) * Real.log (n + 2 : ℝ))⌋

end

end A259648.P18063920106671831620

noncomputable section

/-- A259648: a(n) = floor( prime(n)^3 / (n*log(n)) ).

Offset 2, canonical program `A259648.P18063920106671831620`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259648 (n : ℕ) : ℤ :=
  A259648.P18063920106671831620.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259648.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259665.P16347607823842233365

`a(n-1)+A137688(n-1)²` with `a(0)=0`
-/

namespace A259665.P16347607823842233365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A137688 (n - 1) ^ 2

end

end A259665.P16347607823842233365

noncomputable section

/-- A259665: a(0)=0, a(1)=1, a(n) = min{4 a(k) + (4^(n-k)-1)/3, k=0..(n-1)} for n>=2.

Offset 0, canonical program `A259665.P16347607823842233365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A259665 (n : ℕ) : ℤ :=
  A259665.P16347607823842233365.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A259665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259667.P17440056628924730979

`A159989(n)%6`
-/

namespace A259667.P17440056628924730979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159989 n) 6

end

end A259667.P17440056628924730979

noncomputable section

/-- A259667: Catalan numbers mod 6.

Offset 0, canonical program `A259667.P17440056628924730979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259667 (n : ℕ) : ℤ :=
  A259667.P17440056628924730979.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259966.P1129345898442510754

`A118430(n+1)+Δ[A118430(n)]`
-/

namespace A259966.P1129345898442510754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118430 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118430 (n + 1) + (f1 (n + 1) - f1 n)

end

end A259966.P1129345898442510754

noncomputable section

/-- A259966: Total binary weight (cf. A000120) of all A005251(n) binary sequences of length n not containing any isolated 1's.

Offset 0, canonical program `A259966.P1129345898442510754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A259966 (n : ℕ) : ℤ :=
  A259966.P1129345898442510754.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A259966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260112.P11147998696318706904

`A053737(n)+A110591(n)-1`
-/

namespace A260112.P11147998696318706904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n + A110591 n - 1

end

end A260112.P11147998696318706904

noncomputable section

/-- A260112: Minimal number of steps to get from 0 to n by (a) adding 1 or (b) multiplying by 4.

Offset 0, canonical program `A260112.P11147998696318706904`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260112 (n : ℕ) : ℤ :=
  A260112.P11147998696318706904.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260112.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260188.P5872051986536960582

`lcm(a(n-1), A105561(n+1))` with `a(0)=1`
-/

namespace A260188.P5872051986536960582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A105561 (n + 1))

end

end A260188.P5872051986536960582

noncomputable section

/-- A260188: Greatest primorial less than or equal to n.

Offset 1, canonical program `A260188.P5872051986536960582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260188 (n : ℕ) : ℤ :=
  (A260188.P5872051986536960582.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260302.P5652294795697804353

`C(A057427(A004526(n))*A339623(n+1)+1, 2)`
-/

namespace A260302.P5652294795697804353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057427 (A004526 n).toNat * A339623 (n + 1) + 1).toNat 2

end

end A260302.P5652294795697804353

noncomputable section

/-- A260302: Maximum water retention of a number octagon of order n.

Offset 1, canonical program `A260302.P5652294795697804353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260302 (n : ℕ) : ℤ :=
  (A260302.P5652294795697804353.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260492.P11140523939615091371

`A071028(n)*A140751(n)`
-/

namespace A260492.P11140523939615091371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n * A140751 n

end

end A260492.P11140523939615091371

noncomputable section

/-- A260492: Pascal's triangle aerated with columns of zeros.

Offset 0, canonical program `A260492.P11140523939615091371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A260492 (n : ℕ) : ℤ :=
  A260492.P11140523939615091371.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A260492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260626.P15351941485670242193

`A014491(A018252(n+1))`
-/

namespace A260626.P15351941485670242193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014491 (A018252 (n + 1)).toNat

end

end A260626.P15351941485670242193

noncomputable section

/-- A260626: a(n) = gcd(m, 2^m-1) where m is the n-th nonprime positive integer.

Offset 1, canonical program `A260626.P15351941485670242193`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260626 (n : ℕ) : ℤ :=
  A260626.P15351941485670242193.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260626.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260754.P5965187776734892308

`A039716(n+2)/A000040(n+1)`
-/

namespace A260754.P5965187776734892308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039716 (n + 2) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A260754.P5965187776734892308

noncomputable section

/-- A260754: a(n) = prime(n+1)! / prime(n).

Offset 1, canonical program `A260754.P5965187776734892308`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A039716, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A260754 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A260754.P5965187776734892308.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A039716, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A260754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260945.P4856476267328599373

`A062157(n)*A112848(A028310(n))`
-/

namespace A260945.P4856476267328599373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A112848 (A028310 n).toNat

end

end A260945.P4856476267328599373

noncomputable section

/-- A260945: Expansion of (2*b(q^4) - b(q) - b(q^2)) / 3 in powers of q where b() is a cubic AGM theta function.

Offset 0, canonical program `A260945.P4856476267328599373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260945 (n : ℕ) : ℤ :=
  A260945.P4856476267328599373.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261055.P9719171263553810423

`A001628(n+1)-Δ[A023610(n)]`
-/

namespace A261055.P9719171263553810423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 (n + 1) - (f1 (n + 1) - f1 n)

end

end A261055.P9719171263553810423

noncomputable section

/-- A261055: Expansion of ( -1-2*x+x^2+x^3 ) / (x^2+x-1)^3 .

Offset 0, canonical program `A261055.P9719171263553810423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A261055 (n : ℕ) : ℤ :=
  A261055.P9719171263553810423.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A261055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261056.P17142807306852606954

`2*A006645(n+2)-A006645(n)`
-/

namespace A261056.P17142807306852606954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006645 (n + 2) - A006645 n

end

end A261056.P17142807306852606954

noncomputable section

/-- A261056: Expansion of ( 2-x^2 ) / (x^2+2*x-1)^2 .

Offset 0, canonical program `A261056.P17142807306852606954`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261056 (n : ℕ) : ℤ :=
  A261056.P17142807306852606954.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261056.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261457.P16800842563720939048

`A039716(n+1)-A000142(n+1)`
-/

namespace A261457.P16800842563720939048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039716 (n + 1) - A000142 (n + 1)

end

end A261457.P16800842563720939048

noncomputable section

/-- A261457: a(n) = prime(n)! - n!.

Offset 1, canonical program `A261457.P16800842563720939048`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261457 (n : ℕ) : ℤ :=
  A261457.P16800842563720939048.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261457.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261468.P14571084693483149754

`A031131(n+1)%(∑[n]+2)`
-/

namespace A261468.P14571084693483149754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031131 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ)

end

end A261468.P14571084693483149754

noncomputable section

/-- A261468: a(n) = prime(n+2) mod prime(n).

Offset 1, canonical program `A261468.P14571084693483149754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261468 (n : ℕ) : ℤ :=
  A261468.P14571084693483149754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261523.P4523387212413988190

`A058077(n+1)*A039716(n+1)`
-/

namespace A261523.P4523387212413988190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058077 (n + 1) * A039716 (n + 1)

end

end A261523.P4523387212413988190

noncomputable section

/-- A261523: a(n) = prime(n+1)! / (prime(n+1) - prime(n))!.

Offset 1, canonical program `A261523.P4523387212413988190`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039716, A058077, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A261523 (n : ℕ) : ℤ :=
  A261523.P4523387212413988190.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039716, A058077, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A261523.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261585.P15148700531395716474

`A204551(A011862(n+4)-n)`
-/

namespace A261585.P15148700531395716474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (A011862 (n + 4) - (n : ℤ)).toNat

end

end A261585.P15148700531395716474

noncomputable section

/-- A261585: Number of sexagesimal digits of Fibonacci numbers in base-60 representation.

Offset 0, canonical program `A261585.P15148700531395716474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A261585 (n : ℕ) : ℤ :=
  A261585.P15148700531395716474.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A261585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261682.P2615648034852906024

`A027306(n+1)+A014495(n+1)`
-/

namespace A261682.P2615648034852906024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 (n + 1) + A014495 (n + 1)

end

end A261682.P2615648034852906024

noncomputable section

/-- A261682: a(n) = 2^n+(1+(n mod 2)/2)*C(n+1,floor((n+(n mod 2))/2))-1.

Offset 0, canonical program `A261682.P2615648034852906024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A261682 (n : ℕ) : ℤ :=
  A261682.P2615648034852906024.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A261682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261726.P9459264864596179

`C(A006093(n+2), A006093(n+1))`
-/

namespace A261726.P9459264864596179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006093 (n + 2)).toNat (A006093 (n + 1)).toNat

end

end A261726.P9459264864596179

noncomputable section

/-- A261726: a(n) = binomial(prime(n+1)-1, prime(n)-1).

Offset 1, canonical program `A261726.P9459264864596179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1182 terms. -/
def A261726 (n : ℕ) : ℤ :=
  (A261726.P9459264864596179.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1182 terms. -/
def A261726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261884.P17761053337338084082

`A112848(n+1)/A177702(n)`
-/

namespace A261884.P17761053337338084082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112848 (n + 1) : ℚ) / (A177702 n : ℚ)

end

end A261884.P17761053337338084082

noncomputable section

/-- A261884: Expansion of (a(q) - a(q^2) - 2*a(q^3) + 2*a(q^6)) / 6 in powers of q where a() is a cubic AGM function.

Offset 1, canonical program `A261884.P17761053337338084082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261884 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A261884.P17761053337338084082.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261971.P11221082958945660540

`6*A001248(n+1)-12*A000040(n+1)+8`
-/

namespace A261971.P11221082958945660540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A001248 (n + 1) - 12 * A000040 (n + 1) + 8

end

end A261971.P11221082958945660540

noncomputable section

/-- A261971: Number of unit cubes that have a side on the surface of a p X p X p cube composed of p^3 unit cubes, where p is the n-th prime.

Offset 1, canonical program `A261971.P11221082958945660540`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001248, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A261971 (n : ℕ) : ℤ :=
  A261971.P11221082958945660540.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001248, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A261971.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261997.P14508608129924253283

`A039716(n+1)-A062439(n+1)`
-/

namespace A261997.P14508608129924253283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039716 (n + 1) - A062439 (n + 1)

end

end A261997.P14508608129924253283

noncomputable section

/-- A261997: a(n) = prime(n)! - prime(n!).

Offset 1, canonical program `A261997.P14508608129924253283`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039716, A062439, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A261997 (n : ℕ) : ℤ :=
  A261997.P14508608129924253283.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039716, A062439, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A261997.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262021.P16382475691803801981

`A006450(n+1)-(n+1)`
-/

namespace A262021.P16382475691803801981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) - (n + 1 : ℤ)

end

end A262021.P16382475691803801981

noncomputable section

/-- A262021: a(n) = prime(prime(n)) - n.

Offset 1, canonical program `A262021.P16382475691803801981`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262021 (n : ℕ) : ℤ :=
  A262021.P16382475691803801981.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262021.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262085.P10166447916415025632

`eq[A082023(n+8), A082023(n)]`
-/

namespace A262085.P10166447916415025632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 (n + 8)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A262085.P10166447916415025632

noncomputable section

/-- A262085: Numbers n such that phi(n + 8) = phi(n) + 8 where phi(n) = A000010(n) is Euler's totient function.

Offset 1, canonical program `A262085.P10166447916415025632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. -/
def A262085 (n : ℕ) : ℤ :=
  (A262085.P10166447916415025632.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. -/
def A262085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262138.P2006343145286097734

`A109763(n+1)-A062234(A080513(n))`
-/

namespace A262138.P2006343145286097734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (n + 1) - A062234 (A080513 n).toNat

end

end A262138.P2006343145286097734

noncomputable section

/-- A262138: Interleaved first and second differences of the prime numbers.

Offset 1, canonical program `A262138.P2006343145286097734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262138 (n : ℕ) : ℤ :=
  A262138.P2006343145286097734.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262186.P7927414774880988309

`A030078(n+1)-A000578(n+1)`
-/

namespace A262186.P7927414774880988309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) - A000578 (n + 1)

end

end A262186.P7927414774880988309

noncomputable section

/-- A262186: a(n) = prime(n)^3 - n^3.

Offset 1, canonical program `A262186.P7927414774880988309`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262186 (n : ℕ) : ℤ :=
  A262186.P7927414774880988309.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262186.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262248.P6925392583546764891

`C(A006005(n+1), 4)`
-/

namespace A262248.P6925392583546764891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006005 (n + 1)).toNat 4

end

end A262248.P6925392583546764891

noncomputable section

/-- A262248: Number of intersections of diagonals in the interior of a regular p-gon where p is the n-th prime.

Offset 1, canonical program `A262248.P6925392583546764891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262248 (n : ℕ) : ℤ :=
  (A262248.P6925392583546764891.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262720.P7657853626115152366

`A014531(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A262720.P7657853626115152366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014531 (n + 1) - a (n - 1)

end

end A262720.P7657853626115152366

noncomputable section

/-- A262720: a(n) = Sum_{k=0..n/2} binomial(n+3,k)*binomial(n+1-k,k+1).

Offset 0, canonical program `A262720.P7657853626115152366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A262720 (n : ℕ) : ℤ :=
  A262720.P7657853626115152366.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A262720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262808.P9571554599653427594

`A071028(gcd(n, A027656(n)))`
-/

namespace A262808.P9571554599653427594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 (Int.gcd (n : ℤ) (A027656 n))

end

end A262808.P9571554599653427594

noncomputable section

/-- A262808: Triangle read by rows giving successive states of cellular automaton generated by "Rule 147" initiated with a single ON (black) cell.

Offset 0, canonical program `A262808.P9571554599653427594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262808 (n : ℕ) : ℤ :=
  A262808.P9571554599653427594.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262866.P18281721116564885018

`A290682(A004277(n))-A001317(n)*A016116(2*n)`
-/

namespace A262866.P18281721116564885018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290682 (A004277 n).toNat - A001317 n * A016116 (2 * n)

end

end A262866.P18281721116564885018

noncomputable section

/-- A262866: Decimal representation of the n-th iteration of the "Rule 153" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A262866.P18281721116564885018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A262866 (n : ℕ) : ℤ :=
  A262866.P18281721116564885018.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A262866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262867.P11260331152945562372

`A171378(n)+1`
-/

namespace A262867.P11260331152945562372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171378 n + 1

end

end A262867.P11260331152945562372

noncomputable section

/-- A262867: Total number of ON (black) cells after n iterations of the "Rule 153" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A262867.P11260331152945562372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262867 (n : ℕ) : ℤ :=
  A262867.P11260331152945562372.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263134.P7692546386271083285

`∑[A045721(n)]`
-/

namespace A263134.P7692546386271083285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263134.P7692546386271083285

noncomputable section

/-- A263134: a(n) = Sum_{k=0..n} binomial(3*k+1,k).

Offset 0, canonical program `A263134.P7692546386271083285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A263134 (n : ℕ) : ℤ :=
  A263134.P7692546386271083285.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A263134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263483.P11551331983002563713

`A000040(n+1)+A039704(n+1)`
-/

namespace A263483.P11551331983002563713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A039704 (n + 1)

end

end A263483.P11551331983002563713

noncomputable section

/-- A263483: a(n) = prime(n)+(prime(n) modulo 6).

Offset 1, canonical program `A263483.P11551331983002563713`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A039704, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A263483 (n : ℕ) : ℤ :=
  A263483.P11551331983002563713.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A039704, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A263483.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A263529.P3881219160965345252

`Δ[A187044(n)]`
-/

namespace A263529.P3881219160965345252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263529.P3881219160965345252

noncomputable section

/-- A263529: Binomial transform of double factorial n!! (A006882).

Offset 0, canonical program `A263529.P3881219160965345252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A263529 (n : ℕ) : ℤ :=
  A263529.P3881219160965345252.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A263529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263844.P203203564096424831

`2-(A188374(n+1)+A080764(n))`
-/

namespace A263844.P203203564096424831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A188374 (n + 1) + A080764 n)

end

end A263844.P203203564096424831

noncomputable section

/-- A263844: Constant term in expansion of n in Fraenkel's exotic ternary representation.

Offset 1, canonical program `A263844.P203203564096424831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A263844 (n : ℕ) : ℤ :=
  A263844.P203203564096424831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A263844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263846.P12034222114530177158

`A048766(A000040(n+1))`
-/

namespace A263846.P12034222114530177158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A000040 (n + 1)).toNat

end

end A263846.P12034222114530177158

noncomputable section

/-- A263846: Floor of cube root of n-th prime.

Offset 1, canonical program `A263846.P12034222114530177158`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A048766, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A263846 (n : ℕ) : ℤ :=
  A263846.P12034222114530177158.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A048766, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A263846.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A263899.P16152381148978745656

`A002524(n+1)-Δ[A002265(n)]`
-/

namespace A263899.P16152381148978745656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (n + 1) - (f1 (n + 1) - f1 n)

end

end A263899.P16152381148978745656

noncomputable section

/-- A263899: Number of length n arrays of permutations of 0..n-1 with each element moved by -2 to 2 places and the total absolute value of displacements not greater than 2*(n-1).

Offset 1, canonical program `A263899.P16152381148978745656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A263899 (n : ℕ) : ℤ :=
  A263899.P16152381148978745656.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A263899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264202.P8990464749144740541

`Δ[A020706(n)]*A006253(n+2)`
-/

namespace A264202.P8990464749144740541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006253 (n + 2)

end

end A264202.P8990464749144740541

noncomputable section

/-- A264202: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 0,2 or 1,0.

Offset 1, canonical program `A264202.P8990464749144740541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A264202 (n : ℕ) : ℤ :=
  A264202.P8990464749144740541.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A264202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264263.P13926301945791695937

`A253900(n+1)-1`
-/

namespace A264263.P13926301945791695937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253900 (n + 1) - 1

end

end A264263.P13926301945791695937

noncomputable section

/-- A264263: The number of distinct nontrivial integral cevians of an isosceles triangle, with base of length 1 and legs of length n, that divide the base into two integral parts.

Offset 1, canonical program `A264263.P13926301945791695937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A264263 (n : ℕ) : ℤ :=
  A264263.P13926301945791695937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A264263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264440.P13852650709322467696

`A028310(A070824(n+1))`
-/

namespace A264440.P13852650709322467696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A070824 (n + 1)).toNat

end

end A264440.P13852650709322467696

noncomputable section

/-- A264440: Row lengths of the irregular triangle A137510 (number of divisors d of n with 1 < d < n, or 0 if no such d exists).

Offset 1, canonical program `A264440.P13852650709322467696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264440 (n : ℕ) : ℤ :=
  A264440.P13852650709322467696.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264514.P17377703999448308121

`A264507(Δ[n²])`
-/

namespace A264514.P17377703999448308121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264507 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A264514.P17377703999448308121

noncomputable section

/-- A264514: Number of (2n) X (2+1) arrays of permutations of 0..n*6-1 with each element having directed index change -1,0 0,2 -1,-2 or 1,0.

Offset 1, canonical program `A264514.P17377703999448308121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A264514 (n : ℕ) : ℤ :=
  A264514.P17377703999448308121.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A264514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264515.P6654015843554446290

`A264507(n+1)²`
-/

namespace A264515.P6654015843554446290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264507 (n + 1) ^ 2

end

end A264515.P6654015843554446290

noncomputable section

/-- A264515: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 with each element having directed index change -1,0 0,2 -1,-2 or 1,0.

Offset 1, canonical program `A264515.P6654015843554446290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A264515 (n : ℕ) : ℤ :=
  A264515.P6654015843554446290.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A264515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264847.P10430912638818153852

`∑[∑[A059939(A080686(n+2))]]`
-/

namespace A264847.P10430912638818153852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 (A080686 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264847.P10430912638818153852

noncomputable section

/-- A264847: Pluritriangular numbers: a(0) = 0; a(n+1) = a(n) + the number of digits in terms a(0)..a(n).

Offset 0, canonical program `A264847.P10430912638818153852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A264847 (n : ℕ) : ℤ :=
  A264847.P10430912638818153852.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A264847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265160.P10879582922766651151

`A100484(n+1)+A111209(n+1)`
-/

namespace A265160.P10879582922766651151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + A111209 (n + 1)

end

end A265160.P10879582922766651151

noncomputable section

/-- A265160: a(n) = 2^n + prime(n).

Offset 1, canonical program `A265160.P10879582922766651151`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100484, A111209, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A265160 (n : ℕ) : ℤ :=
  A265160.P10879582922766651151.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100484, A111209, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A265160.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A265326.P14016085815446765591

`A055945(A000040(n+1))`
-/

namespace A265326.P14016085815446765591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (A000040 (n + 1)).toNat

end

end A265326.P14016085815446765591

noncomputable section

/-- A265326: n-th prime minus its binary reversal.

Offset 1, canonical program `A265326.P14016085815446765591`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A055945, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A265326 (n : ℕ) : ℤ :=
  A265326.P14016085815446765591.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A055945, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A265326.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A265359.P15668175611696395647

`a(n-1)+A240025(n)+A240025(n-1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A265359.P15668175611696395647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 1) + A240025 n + A240025 (n - 1)

end

end A265359.P15668175611696395647

noncomputable section

/-- A265359: Spiralwise distance to the nearest inner neighbor in Ulam-style square-spirals using zero-based indexing: a(0) = 0, for n >= 1, a(n) = n - A265409(n).

Offset 0, canonical program `A265359.P15668175611696395647`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A240025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265359 (n : ℕ) : ℤ :=
  A265359.P15668175611696395647.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A240025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265359.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A265410.P7138294630023427214

`a(n-1)+(1-A240025(n-1))*(1-A240025(n))` with `a(0)=0, a(1)=1`
-/

namespace A265410.P7138294630023427214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (1 - A240025 (n - 1)) * (1 - A240025 n)

end

end A265410.P7138294630023427214

noncomputable section

/-- A265410: a(n) = one-based index to the nearest horizontally or vertically adjacent inner neighbor in square-grid spirals, and to the nearest diagonally adjacent inner neighbor when n is one of the corner cases A033638.

Offset 1, canonical program `A265410.P7138294630023427214`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A240025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265410 (n : ℕ) : ℤ :=
  A265410.P7138294630023427214.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A240025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265410.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A265613.P220478530151626736

`A007946(n)-2*A002057(n)`
-/

namespace A265613.P220478530151626736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007946 n - 2 * A002057 n

end

end A265613.P220478530151626736

noncomputable section

/-- A265613: a(n) = CatalanNumber(n+1)*n*(3*n^2+5*n+2)/((4+n)*(3+n)).

Offset 0, canonical program `A265613.P220478530151626736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A265613 (n : ℕ) : ℤ :=
  A265613.P220478530151626736.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A265613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265939.P878535478202518798

`A117186(2*n)`
-/

namespace A265939.P878535478202518798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117186 (2 * n)

end

end A265939.P878535478202518798

noncomputable section

/-- A265939: Central terms of triangle A102363.

Offset 0, canonical program `A265939.P878535478202518798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A265939 (n : ℕ) : ℤ :=
  A265939.P878535478202518798.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A265939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266188.P8279762912778917924

`A004001(A087686(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266188.P8279762912778917924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A087686 (n + 1)).toNat

end

end A266188.P8279762912778917924

noncomputable section

/-- A266188: a(n) = A004001(A087686(n)).

Offset 1, canonical program `A266188.P8279762912778917924`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087686, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A266188 (n : ℕ) : ℤ :=
  A266188.P8279762912778917924.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087686, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A266188.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A266218.P16124281478245643888

`xor(A063524(n), A266436(n))`
-/

namespace A266218.P16124281478245643888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A266436 n)

end

end A266218.P16124281478245643888

noncomputable section

/-- A266218: Decimal representation of the n-th iteration of the "Rule 7" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266218.P16124281478245643888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266218 (n : ℕ) : ℤ :=
  A266218.P16124281478245643888.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266341.P9671448473235777529

`A053644(A038554(n))+n-A053644(n)`
-/

namespace A266341.P9671448473235777529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A038554 n).toNat + ((n : ℤ) - A053644 n)

end

end A266341.P9671448473235777529

noncomputable section

/-- A266341: If A036987(n) = 1, a(n) = n - A053644(n), otherwise a(n) = n - A053644(n) + 2^(A063250(n)-1).

Offset 0, canonical program `A266341.P9671448473235777529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266341 (n : ℕ) : ℤ :=
  A266341.P9671448473235777529.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266532.P17179654325174085964

`A160722(n)+ceil(n*sin(11))`
-/

namespace A266532.P17179654325174085964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160722 n + ⌈(n : ℝ) * Real.sin (11 : ℝ)⌉

end

end A266532.P17179654325174085964

noncomputable section

/-- A266532: Total number of Y-toothpicks after n-th stage in the "outward" version of the cellular automaton of A160120.

Offset 0, canonical program `A266532.P17179654325174085964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266532 (n : ℕ) : ℤ :=
  A266532.P17179654325174085964.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266707.P5074477213507265024

`abs(A059929(n)+Δ[A192872(n)])`
-/

namespace A266707.P5074477213507265024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059929 n + (f1 (n + 1) - f1 n)|

end

end A266707.P5074477213507265024

noncomputable section

/-- A266707: Coefficient of x^2 in minimal polynomial of the continued fraction [1^n,phi,1,1,1,...], where 1^n means n ones and phi = golden ratio = (1 + sqrt(5))/2.

Offset 0, canonical program `A266707.P5074477213507265024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A266707 (n : ℕ) : ℤ :=
  A266707.P5074477213507265024.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A266707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266718.P2106620432007152276

`(2-A165326(n))*A266461(n)`
-/

namespace A266718.P2106620432007152276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A165326 n) * A266461 n

end

end A266718.P2106620432007152276

noncomputable section

/-- A266718: Decimal representation of the n-th iteration of the "Rule 59" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266718.P2106620432007152276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266718 (n : ℕ) : ℤ :=
  A266718.P2106620432007152276.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266980.P14525064463920435922

`A266668(n)+A001045(n)`
-/

namespace A266980.P14525064463920435922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266668 n + A001045 n

end

end A266980.P14525064463920435922

noncomputable section

/-- A266980: Decimal representation of the n-th iteration of the "Rule 79" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266980.P14525064463920435922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266980 (n : ℕ) : ℤ :=
  A266980.P14525064463920435922.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267034.P4851684498594056330

`A266982((n+1)%(2*n+1))`
-/

namespace A267034.P4851684498594056330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266982 ((n + 1) % (2 * n + 1))

end

end A267034.P4851684498594056330

noncomputable section

/-- A267034: Triangle read by rows giving successive states of cellular automaton generated by "Rule 85" initiated with a single ON (black) cell.

Offset 0, canonical program `A267034.P4851684498594056330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267034 (n : ℕ) : ℤ :=
  A267034.P4851684498594056330.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267068.P17504432387453911525

`(n+1)/A189733(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A267068.P17504432387453911525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A189733 n : ℚ)

end

end A267068.P17504432387453911525

noncomputable section

/-- A267068: a(n) = (n+1) / A189733(n).

Offset 0, canonical program `A267068.P17504432387453911525`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189733, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267068 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A267068.P17504432387453911525.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189733, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267068.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A267134.P15213870686594157141

`Δ[n²]-eq[5, A039704(n+3)]`
-/

namespace A267134.P15213870686594157141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039704 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ)

end

end A267134.P15213870686594157141

noncomputable section

/-- A267134: a(n) = n minus the number of primes of form 6m + 1 that are less than n-th prime of form 6m - 1.

Offset 1, canonical program `A267134.P15213870686594157141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267134 (n : ℕ) : ℤ :=
  A267134.P15213870686594157141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267271.P1576574748171931790

`or(A029744(A016777(n)), A267003(n))`
-/

namespace A267271.P1576574748171931790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A029744 (A016777 n).toNat) (A267003 n)

end

end A267271.P1576574748171931790

noncomputable section

/-- A267271: Decimal representation of the n-th iteration of the "Rule 115" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267271.P1576574748171931790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A267271 (n : ℕ) : ℤ :=
  A267271.P1576574748171931790.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A267271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267351.P7254378362285730718

`or(A146523(n), A266668(n))`
-/

namespace A267351.P7254378362285730718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146523 n) (A266668 n)

end

end A267351.P7254378362285730718

noncomputable section

/-- A267351: Decimal representation of the n-th iteration of the "Rule 123" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267351.P7254378362285730718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A267351 (n : ℕ) : ℤ :=
  A267351.P7254378362285730718.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A267351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267421.P8160187547805568179

`p?[A004232(n+1)+1+n]`
-/

namespace A267421.P8160187547805568179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004232 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267421.P8160187547805568179

noncomputable section

/-- A267421: Primes of the form prime(n) + n + n^2.

Offset 1, canonical program `A267421.P8160187547805568179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A267421 (n : ℕ) : ℤ :=
  A267421.P8160187547805568179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A267421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267443.P4725894432829547169

`A043545(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A267443.P4725894432829547169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A043545 n + 10 * a (n - 1)

end

end A267443.P4725894432829547169

noncomputable section

/-- A267443: Binary representation of the middle column of the "Rule 129" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267443.P4725894432829547169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267443 (n : ℕ) : ℤ :=
  A267443.P4725894432829547169.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267533.P12377575930394932186

`A152822(C(5, A053186(n)))`
-/

namespace A267533.P12377575930394932186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 (Nat.choose 5 (A053186 n).toNat)

end

end A267533.P12377575930394932186

noncomputable section

/-- A267533: Triangle read by rows giving successive states of cellular automaton generated by "Rule 143" initiated with a single ON (black) cell.

Offset 0, canonical program `A267533.P12377575930394932186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267533 (n : ℕ) : ℤ :=
  A267533.P12377575930394932186.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267573.P14663366683955841848

`A000040(n+1)+A039702(n+1)`
-/

namespace A267573.P14663366683955841848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A039702 (n + 1)

end

end A267573.P14663366683955841848

noncomputable section

/-- A267573: a(n) = prime(n) + (prime(n) mod 4).

Offset 1, canonical program `A267573.P14663366683955841848`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A039702, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A267573 (n : ℕ) : ℤ :=
  A267573.P14663366683955841848.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A039702, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A267573.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A267605.P324515188696850996

`(∑[∑[A034870(n)]]+n)%2`
-/

namespace A267605.P324515188696850996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)) 2

end

end A267605.P324515188696850996

noncomputable section

/-- A267605: Triangle read by rows giving successive states of cellular automaton generated by "Rule 181" initiated with a single ON (black) cell.

Offset 0, canonical program `A267605.P324515188696850996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267605 (n : ℕ) : ℤ :=
  A267605.P324515188696850996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267675.P16119488282880190552

`and(-A001317(n), A095121(2*n))`
-/

namespace A267675.P16119488282880190552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A001317 n) (A095121 (2 * n))

end

end A267675.P16119488282880190552

noncomputable section

/-- A267675: Decimal representation of the n-th iteration of the "Rule 195" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267675.P16119488282880190552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A267675 (n : ℕ) : ℤ :=
  A267675.P16119488282880190552.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A267675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267704.P11767077599225187257

`(1-C(2, A004738(n+1)))²`
-/

namespace A267704.P11767077599225187257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose 2 (A004738 (n + 1)).toNat : ℤ)) ^ 2

end

end A267704.P11767077599225187257

noncomputable section

/-- A267704: Triangle read by rows giving successive states of cellular automaton generated by "Rule 205" initiated with a single ON (black) cell.

Offset 0, canonical program `A267704.P11767077599225187257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267704 (n : ℕ) : ℤ :=
  A267704.P11767077599225187257.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267729.P4113010895853328698

`Δ[A023610(n)]²`
-/

namespace A267729.P4113010895853328698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A267729.P4113010895853328698

noncomputable section

/-- A267729: Number of n X 2 0..1 arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

Offset 1, canonical program `A267729.P4113010895853328698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A267729 (n : ℕ) : ℤ :=
  A267729.P4113010895853328698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A267729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267730.P9907999590693264910

`Δ[A023610(n)]^3`
-/

namespace A267730.P9907999590693264910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A267730.P9907999590693264910

noncomputable section

/-- A267730: Number of nX3 0..1 arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

Offset 1, canonical program `A267730.P9907999590693264910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A267730 (n : ℕ) : ℤ :=
  A267730.P9907999590693264910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A267730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267773.P6472055355787003497

`C(n, A245552(n)²)`
-/

namespace A267773.P6472055355787003497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A245552 n ^ 2).toNat

end

end A267773.P6472055355787003497

noncomputable section

/-- A267773: Triangle read by rows giving successive states of cellular automaton generated by "Rule 207" initiated with a single ON (black) cell.

Offset 0, canonical program `A267773.P6472055355787003497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267773 (n : ℕ) : ℤ :=
  (A267773.P6472055355787003497.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267800.P2365698362491411621

`A267776(a(n-3)+n)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A267800.P2365698362491411621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A267776 (a (n - 3) + (n : ℤ)).toNat

end

end A267800.P2365698362491411621

noncomputable section

/-- A267800: Triangle read by rows giving successive states of cellular automaton generated by "Rule 213" initiated with a single ON (black) cell.

Offset 0, canonical program `A267800.P2365698362491411621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267800 (n : ℕ) : ℤ :=
  A267800.P2365698362491411621.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267810.P5765769009516729792

`A267683(n*a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A267810.P5765769009516729792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A267683 ((n : ℤ) * a (n - 2)).toNat

end

end A267810.P5765769009516729792

noncomputable section

/-- A267810: Triangle read by rows giving successive states of cellular automaton generated by "Rule 217" initiated with a single ON (black) cell.

Offset 0, canonical program `A267810.P5765769009516729792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267810 (n : ℕ) : ℤ :=
  A267810.P5765769009516729792.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267891.P13368573259135657762

`eq[16, A054844(n+1)]+1`
-/

namespace A267891.P13368573259135657762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A267891.P13368573259135657762

noncomputable section

/-- A267891: Numbers with 8 odd divisors.

Offset 1, canonical program `A267891.P13368573259135657762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267891 (n : ℕ) : ℤ :=
  (A267891.P13368573259135657762.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267905.P2308361667573374848

`ceil(A106514(n)/2)`
-/

namespace A267905.P2308361667573374848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A106514 n : ℚ) / 2⌉

end

end A267905.P2308361667573374848

noncomputable section

/-- A267905: Number of n X 1 0..2 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

Offset 1, canonical program `A267905.P2308361667573374848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A267905 (n : ℕ) : ℤ :=
  A267905.P2308361667573374848.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A267905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267991.P17804240115584663066

`a(n-2)+A226881(n+1)+1` with `a(0)=1, a(1)=4`
-/

namespace A267991.P17804240115584663066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + (A226881 (n + 1) + 1)

end

end A267991.P17804240115584663066

noncomputable section

/-- A267991: Number of 2Xn arrays containing n copies of 0..2-1 with row sums and column sums nondecreasing.

Offset 1, canonical program `A267991.P17804240115584663066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A267991 (n : ℕ) : ℤ :=
  A267991.P17804240115584663066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A267991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268174.P3160749783044655820

`eq[A001057(n), A213381(n)]`
-/

namespace A268174.P3160749783044655820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268174.P3160749783044655820

noncomputable section

/-- A268174: Integers m such that m^(m+1) == 1 (modulo (m+2)).

Offset 1, canonical program `A268174.P3160749783044655820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A268174 (n : ℕ) : ℤ :=
  (A268174.P3160749783044655820.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A268174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268185.P2116769644466918163

`A000040(n+1)+A007652(n+1)`
-/

namespace A268185.P2116769644466918163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A007652 (n + 1)

end

end A268185.P2116769644466918163

noncomputable section

/-- A268185: a(n) = prime(n) + last digit of prime(n).

Offset 1, canonical program `A268185.P2116769644466918163`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007652, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A268185 (n : ℕ) : ℤ :=
  A268185.P2116769644466918163.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007652, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A268185.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268230.P9683439550737180113

`A000079(n)*A133179(A010078(n+1))`
-/

namespace A268230.P9683439550737180113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A133179 (A010078 (n + 1)).toNat

end

end A268230.P9683439550737180113

noncomputable section

/-- A268230: Decimal equivalents of A268229.

Offset 0, canonical program `A268230.P9683439550737180113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A268230 (n : ℕ) : ℤ :=
  A268230.P9683439550737180113.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A268230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268235.P3437335353854557803

`∑[A034729(n+1)]`
-/

namespace A268235.P3437335353854557803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268235.P3437335353854557803

noncomputable section

/-- A268235: a(n) = Sum_{k=1..n} floor(n/k)*2^(k-1).

Offset 1, canonical program `A268235.P3437335353854557803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A268235 (n : ℕ) : ℤ :=
  A268235.P3437335353854557803.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A268235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268370.P12788103030648664107

`∑[A000344(n+3)-A099376(n)]`
-/

namespace A268370.P12788103030648664107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000344 (n + 3) - A099376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268370.P12788103030648664107

noncomputable section

/-- A268370: Number of North-East lattice paths from (0,0) to (n,n) that have exactly three east steps below the subdiagonal y = x-1.

Offset 4, canonical program `A268370.P12788103030648664107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A268370 (n : ℕ) : ℤ :=
  A268370.P12788103030648664107.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A268370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268444.P5634643260865107777

`∏{digits}[A007090(n), #+1]`
-/

namespace A268444.P5634643260865107777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).prod

end

end A268444.P5634643260865107777

noncomputable section

/-- A268444: a(n) = Product_{i=0..k}(n_i+1) where n = Sum_{i=0..k}n_i*4^i is the base-4 representation of n.

Offset 0, canonical program `A268444.P5634643260865107777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268444 (n : ℕ) : ℤ :=
  (A268444.P5634643260865107777.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268620.P18422231041694745516

`eq[4, gcd(4, A007953(n))]`
-/

namespace A268620.P18422231041694745516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A007953 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268620.P18422231041694745516

noncomputable section

/-- A268620: Numbers whose digital sum is a multiple of 4.

Offset 1, canonical program `A268620.P18422231041694745516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2498 terms. -/
def A268620 (n : ℕ) : ℤ :=
  (A268620.P18422231041694745516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2498 terms. -/
def A268620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268744.P7767334516591821469

`A286814(n+1)+A001333(n)`
-/

namespace A268744.P7767334516591821469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286814 (n + 1) + A001333 n

end

end A268744.P7767334516591821469

noncomputable section

/-- A268744: Number of n X 2 binary arrays with some element plus some horizontally or vertically adjacent neighbor totalling two no more than once.

Offset 1, canonical program `A268744.P7767334516591821469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A268744 (n : ℕ) : ℤ :=
  A268744.P7767334516591821469.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A268744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268775.P165643180478746125

`A093835(n)+A079859(n+4)`
-/

namespace A268775.P165643180478746125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093835 n + A079859 (n + 4)

end

end A268775.P165643180478746125

noncomputable section

/-- A268775: Number of n X 2 binary arrays with some element plus some horizontally, vertically, diagonally or antidiagonally adjacent neighbor totalling two no more than once.

Offset 1, canonical program `A268775.P165643180478746125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A268775 (n : ℕ) : ℤ :=
  A268775.P165643180478746125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A268775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268887.P548244548204823572

`abs(∑[∑[n*A077985(n+1)]])`
-/

namespace A268887.P548244548204823572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A077985 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A268887.P548244548204823572

noncomputable section

/-- A268887: Number of 2 X n binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

Offset 1, canonical program `A268887.P548244548204823572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A268887 (n : ℕ) : ℤ :=
  A268887.P548244548204823572.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A268887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268900.P15039982914417740740

`6*A229582(n+1)`
-/

namespace A268900.P15039982914417740740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229582 (n + 1)

end

end A268900.P15039982914417740740

noncomputable section

/-- A268900: Number of n X 4 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

Offset 1, canonical program `A268900.P15039982914417740740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A268900 (n : ℕ) : ℤ :=
  A268900.P15039982914417740740.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A268900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268989.P662386248003310424

`A208354(2*n+3)`
-/

namespace A268989.P662386248003310424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 (2 * n + 3)

end

end A268989.P662386248003310424

noncomputable section

/-- A268989: Number of n X 2 binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

Offset 1, canonical program `A268989.P662386248003310424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A268989 (n : ℕ) : ℤ :=
  A268989.P662386248003310424.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A268989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269246.P11189101600261398533

`∑{digits}[n*n², A085862(#)]`
-/

namespace A269246.P11189101600261398533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A085862 x).sum

end

end A269246.P11189101600261398533

noncomputable section

/-- A269246: Number of times the digit 6 appears in the decimal expansion of n^3.

Offset 0, canonical program `A269246.P11189101600261398533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269246 (n : ℕ) : ℤ :=
  A269246.P11189101600261398533.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269250.P13199977431476461355

`∑{digits}[n^3, C(2, A006254(#+1))]`
-/

namespace A269250.P13199977431476461355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose 2 (A006254 (x + 1)).toNat).sum

end

end A269250.P13199977431476461355

noncomputable section

/-- A269250: Number of times the digit 0 appears in the decimal expansion of n^3.

Offset 0, canonical program `A269250.P13199977431476461355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269250 (n : ℕ) : ℤ :=
  (A269250.P13199977431476461355.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269381.P1411983519145448973

`∑[char[A233271(n+1)]]`
-/

namespace A269381.P1411983519145448973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233271 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269381.P1411983519145448973

noncomputable section

/-- A269381: Least monotonic left inverse of A233271.

Offset 0, canonical program `A269381.P1411983519145448973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A269381 (n : ℕ) : ℤ :=
  (A269381.P1411983519145448973.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A269381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269390.P13967432364545519165

`comp[A233271(n)]`
-/

namespace A269390.P13967432364545519165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A269390.P13967432364545519165

noncomputable section

/-- A269390: Complement of A233271.

Offset 1, canonical program `A269390.P13967432364545519165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269390 (n : ℕ) : ℤ :=
  (A269390.P13967432364545519165.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269601.P14206171943154091293

`A175654(n+1)+A175654(n)+A001787(n)`
-/

namespace A269601.P14206171943154091293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175654 (n + 1) + (A175654 n + A001787 n)

end

end A269601.P14206171943154091293

noncomputable section

/-- A269601: Number of length-n 0..2 arrays with no repeated value differing from the previous repeated value by one or less.

Offset 1, canonical program `A269601.P14206171943154091293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. -/
def A269601 (n : ℕ) : ℤ :=
  A269601.P14206171943154091293.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. -/
def A269601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269849.P9914812276268584730

`∑[(A006094(n+1)%3+1)%2]`
-/

namespace A269849.P9914812276268584730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A006094 (n + 1)) 3 + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269849.P9914812276268584730

noncomputable section

/-- A269849: a(n) = number of integers k <= n for which prime(k+1)-prime(k) is not a multiple of three.

Offset 1, canonical program `A269849.P9914812276268584730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269849 (n : ℕ) : ℤ :=
  A269849.P9914812276268584730.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269903.P4765007722614101742

`eq[4, and(6, A126084(n))]`
-/

namespace A269903.P4765007722614101742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A126084 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269903.P4765007722614101742

noncomputable section

/-- A269903: Integers n such that A002110(n) / 2 is the sum of 4 but no fewer nonzero squares.

Offset 1, canonical program `A269903.P4765007722614101742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. -/
def A269903 (n : ℕ) : ℤ :=
  (A269903.P4765007722614101742.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. -/
def A269903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270127.P5718691714425253421

`∑[A062383(n)*A071044(n)]-A057427(n)`
-/

namespace A270127.P5718691714425253421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n * A071044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057427 n

end

end A270127.P5718691714425253421

noncomputable section

/-- A270127: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 86", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270127.P5718691714425253421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4612 terms. -/
def A270127 (n : ℕ) : ℤ :=
  A270127.P5718691714425253421.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4612 terms. -/
def A270127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270131.P3903911104145321744

`A270089(n)+4%A053439(n)`
-/

namespace A270131.P3903911104145321744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270089 n + Int.tmod 4 (A053439 n)

end

end A270131.P3903911104145321744

noncomputable section

/-- A270131: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 89", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270131.P3903911104145321744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3339 terms. -/
def A270131 (n : ℕ) : ℤ :=
  A270131.P3903911104145321744.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3339 terms. -/
def A270131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270200.P3592585650237564585

`∪[A001015(n), A233273(n)]`
-/

namespace A270200.P3592585650237564585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A270200.P3592585650237564585

noncomputable section

/-- A270200: a(0) = 0; for n >= 1, a(n) = A054429(A005187(1+A054429(n-1))).

Offset 0, canonical program `A270200.P3592585650237564585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270200 (n : ℕ) : ℤ :=
  (A270200.P3592585650237564585.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270298.P12968977381553057789

`4*A008364(n+2)`
-/

namespace A270298.P12968977381553057789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008364 (n + 2)

end

end A270298.P12968977381553057789

noncomputable section

/-- A270298: Numbers which are representable as a sum of eight but no fewer consecutive nonnegative integers.

Offset 1, canonical program `A270298.P12968977381553057789`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270298 (n : ℕ) : ℤ :=
  A270298.P12968977381553057789.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270298.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A270370.P16781783007930802579

`floor(∑[A048766(n)/(-1)^n])`
-/

namespace A270370.P16781783007930802579
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048766 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A270370.P16781783007930802579

noncomputable section

/-- A270370: a(n) = Sum_{k=0..n} (-1)^k*floor(k^(1/3)).

Offset 0, canonical program `A270370.P16781783007930802579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270370 (n : ℕ) : ℤ :=
  A270370.P16781783007930802579.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270544.P6791323703914777716

`4*A060831(n)+n%2+n`
-/

namespace A270544.P6791323703914777716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A060831 n + ((n % 2 + n : ℕ) : ℤ)

end

end A270544.P6791323703914777716

noncomputable section

/-- A270544: Number of ordered pairs (i,j) with |i|, |j| <= n, |i * j| <= n, and i odd.

Offset 0, canonical program `A270544.P6791323703914777716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270544 (n : ℕ) : ℤ :=
  A270544.P6791323703914777716.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270742.P9511645227848509118

`and(1, A235963(n)+A000124(A235963(n+1)))`
-/

namespace A270742.P9511645227848509118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A235963 n + A000124 (A235963 (n + 1)).toNat)

end

end A270742.P9511645227848509118

noncomputable section

/-- A270742: Binary expansion of C = (1/2)*(3/4)*(7/8)*(15/16)... .

Offset 0, canonical program `A270742.P9511645227848509118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A270742 (n : ℕ) : ℤ :=
  A270742.P9511645227848509118.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A270742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270819.P9082800308901195485

`floor((p?[round(8*n/7)]-2)/8)*A006093(n+1)`
-/

namespace A270819.P9082800308901195485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2 : ℚ) / 8⌋ * A006093 (n + 1)

end

end A270819.P9082800308901195485

noncomputable section

/-- A270819: a(n) is the number of arithmetic progressions of length 3 among the quadratic residues modulo prime(n).

Offset 1, canonical program `A270819.P9082800308901195485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270819 (n : ℕ) : ℤ :=
  A270819.P9082800308901195485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271056.P15190929235682603079

`∑[A271054(n)]`
-/

namespace A271056.P15190929235682603079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271056.P15190929235682603079

noncomputable section

/-- A271056: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 259", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A271056.P15190929235682603079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3159 terms. -/
def A271056 (n : ℕ) : ℤ :=
  A271056.P15190929235682603079.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3159 terms. -/
def A271056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271355.P12576549963311332079

`A254729(A004736(n+1))`
-/

namespace A271355.P12576549963311332079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254729 (A004736 (n + 1)).toNat

end

end A271355.P12576549963311332079

noncomputable section

/-- A271355: Triangular array: T(n,k) = |round((r^n)*(s^k))|, where r = golden ratio = (1+sqrt(5))/2, s = (1-sqrt(5))/2, 1 <= k <= n, n >= 1.

Offset 1, canonical program `A271355.P12576549963311332079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271355 (n : ℕ) : ℤ :=
  A271355.P12576549963311332079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271439.P9966869928347178630

`(1-A010054(n))*A083920(n)`
-/

namespace A271439.P9966869928347178630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010054 n) * A083920 n

end

end A271439.P9966869928347178630

noncomputable section

/-- A271439: If n is a triangular number, a(n) = 0, otherwise a(n) = n - A002024(n) + 1.

Offset 0, canonical program `A271439.P9966869928347178630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271439 (n : ℕ) : ℤ :=
  A271439.P9966869928347178630.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271484.P10642354924052871060

`A059169(n+1)%A008620(A026741(n))`
-/

namespace A271484.P10642354924052871060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059169 (n + 1)) (A008620 (A026741 n).toNat)

end

end A271484.P10642354924052871060

noncomputable section

/-- A271484: Expansion of x^5/((1-x^2)*(1-x^4))+x^10/((1-x^4)*(1-x^6)).

Offset 0, canonical program `A271484.P10642354924052871060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271484 (n : ℕ) : ℤ :=
  A271484.P10642354924052871060.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271499.P15216955592391079473

`lt[1, A000120(2*n-A005187(n))]`
-/

namespace A271499.P15216955592391079473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((2 * n : ℤ) - A005187 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A271499.P15216955592391079473

noncomputable section

/-- A271499: Positive numbers n such that the number of 1's in the binary expansion of n is not a power of 2.

Offset 1, canonical program `A271499.P15216955592391079473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271499 (n : ℕ) : ℤ :=
  (A271499.P15216955592391079473.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271998.P5278477966171253614

`A271997(n+4)-1`
-/

namespace A271998.P5278477966171253614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271997 (n + 4) - 1

end

end A271998.P5278477966171253614

noncomputable section

/-- A271998: Volatile sequence: a(n) = A018227(n)-6.

Offset 3, canonical program `A271998.P5278477966171253614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A271998 (n : ℕ) : ℤ :=
  A271998.P5278477966171253614.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A271998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272173.P7571362483636851933

`A000203(n+1)*A008864(n+1)`
-/

namespace A272173.P7571362483636851933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A008864 (n + 1)

end

end A272173.P7571362483636851933

noncomputable section

/-- A272173: Product of the sum of the divisors of n and the sum of the divisors of n-th prime.

Offset 1, canonical program `A272173.P7571362483636851933`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272173 (n : ℕ) : ℤ :=
  A272173.P7571362483636851933.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272173.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A272756.P7505850742485616259

`ceil(A123753(A033156(n+1))/A123753(n))`
-/

namespace A272756.P7505850742485616259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A123753 (A033156 (n + 1)).toNat : ℚ) / (A123753 n : ℚ)⌉

end

end A272756.P7505850742485616259

noncomputable section

/-- A272756: a(n) is the least k such that k > A070939(n * k).

Offset 1, canonical program `A272756.P7505850742485616259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 918 terms. -/
def A272756 (n : ℕ) : ℤ :=
  A272756.P7505850742485616259.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 918 terms. -/
def A272756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272887.P6057499258403771745

`A091954(p?[xor(1, n)+1]+1)%(n+1)`
-/

namespace A272887.P6057499258403771745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091954 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)) (n + 1 : ℤ)

end

end A272887.P6057499258403771745

noncomputable section

/-- A272887: Number of ways to write prime(n) as (4*x + 2)*y + 4*x + 1 where x and y are nonnegative integers.

Offset 1, canonical program `A272887.P6057499258403771745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A272887 (n : ℕ) : ℤ :=
  A272887.P6057499258403771745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A272887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273188.P10817074238036710104

`eq[8, gcd(8, A007953(n))]`
-/

namespace A273188.P10817074238036710104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A007953 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273188.P10817074238036710104

noncomputable section

/-- A273188: Numbers whose digit sum is divisible by 8.

Offset 1, canonical program `A273188.P10817074238036710104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A273188 (n : ℕ) : ℤ :=
  (A273188.P10817074238036710104.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A273188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273189.P9425377602579684644

`A273187(n)-48`
-/

namespace A273189.P9425377602579684644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273187 n - 48

end

end A273189.P9425377602579684644

noncomputable section

/-- A273189: a(n) is the third number in a triple consisting of 3 numbers, which when squared are part of a right diagonal of a magic square of squares.

Offset 0, canonical program `A273189.P9425377602579684644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A273189 (n : ℕ) : ℤ :=
  A273189.P9425377602579684644.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A273189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273221.P18280931573240640292

`A006564(A000040(n+1))-A262247(n+1)`
-/

namespace A273221.P18280931573240640292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006564 (A000040 (n + 1)).toNat - A262247 (n + 1)

end

end A273221.P18280931573240640292

noncomputable section

/-- A273221: a(n) = p*(p - 1)*(13*p - 5)/6, where p = prime(n).

Offset 1, canonical program `A273221.P18280931573240640292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A273221 (n : ℕ) : ℤ :=
  A273221.P18280931573240640292.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A273221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273401.P1165814043605019566

`eq[A054844(n+2), A054844(n+1)]+1`
-/

namespace A273401.P1165814043605019566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A273401.P1165814043605019566

noncomputable section

/-- A273401: Numbers n such that n and n + 1 have exactly the same number of odd divisors.

Offset 1, canonical program `A273401.P1165814043605019566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273401 (n : ℕ) : ℤ :=
  (A273401.P1165814043605019566.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273500.P16328251982798064153

`∑[A273499(n)]`
-/

namespace A273500.P16328251982798064153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273500.P16328251982798064153

noncomputable section

/-- A273500: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273500.P16328251982798064153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2755 terms. -/
def A273500 (n : ℕ) : ℤ :=
  A273500.P16328251982798064153.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2755 terms. -/
def A273500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273501.P2635603986377445307

`Δ[A273499(n)]`
-/

namespace A273501.P2635603986377445307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273501.P2635603986377445307

noncomputable section

/-- A273501: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273501.P2635603986377445307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2767 terms. -/
def A273501 (n : ℕ) : ℤ :=
  A273501.P2635603986377445307.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2767 terms. -/
def A273501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273526.P3109969726555546109

`∑[abs(Δ[A246604(n)])]`
-/

namespace A273526.P3109969726555546109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246604 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273526.P3109969726555546109

noncomputable section

/-- A273526: Number of 123-avoiding indecomposable permutations.

Offset 1, canonical program `A273526.P3109969726555546109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A273526 (n : ℕ) : ℤ :=
  A273526.P3109969726555546109.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A273526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273939.P15009550147313335799

`A056921(n)+A056922(n)`
-/

namespace A273939.P15009550147313335799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056921 n + A056922 n

end

end A273939.P15009550147313335799

noncomputable section

/-- A273939: a(0) = 1, a(1) = 2; for k>0, a(2*k) = k*a(2*k-1) + a(2*k-2), a(2*k+1) = a(2*k) + a(2*k-1).

Offset 0, canonical program `A273939.P15009550147313335799`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056921, A056922, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273939 (n : ℕ) : ℤ :=
  A273939.P15009550147313335799.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056921, A056922, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273939.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A273973.P17292048362556108881

`A133179(Δ[or(1, n²)])`
-/

namespace A273973.P17292048362556108881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A273973.P17292048362556108881

noncomputable section

/-- A273973: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 20", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273973.P17292048362556108881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 423 terms. -/
def A273973 (n : ℕ) : ℤ :=
  A273973.P17292048362556108881.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 423 terms. -/
def A273973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274010.P14654792066424409895

`A092338(A028310(n))-1`
-/

namespace A274010.P14654792066424409895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092338 (A028310 n).toNat - 1

end

end A274010.P14654792066424409895

noncomputable section

/-- A274010: Boris Stechkin function: a(n) is the number of m with 2 <= m <= n and floor(n(m-1)/m) divisible by m-1.

Offset 0, canonical program `A274010.P14654792066424409895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274010 (n : ℕ) : ℤ :=
  A274010.P14654792066424409895.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274473.P317316573485528462

`and(A001317(A042948(n)), A126646(n))`
-/

namespace A274473.P317316573485528462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001317 (A042948 n).toNat) (A126646 n)

end

end A274473.P317316573485528462

noncomputable section

/-- A274473: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 22", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A274473.P317316573485528462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A274473 (n : ℕ) : ℤ :=
  A274473.P317316573485528462.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A274473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274663.P13727613085558383025

`A094648(3*n)`
-/

namespace A274663.P13727613085558383025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094648 (3 * n)

end

end A274663.P13727613085558383025

noncomputable section

/-- A274663: Sum of n-th powers of the roots of x^3 + 4*x^2 - 11*x - 1.

Offset 0, canonical program `A274663.P13727613085558383025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A274663 (n : ℕ) : ℤ :=
  A274663.P13727613085558383025.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A274663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274698.P9145926141844344103

`A000040(n+1)-2*A007652(n+1)`
-/

namespace A274698.P9145926141844344103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2 * A007652 (n + 1)

end

end A274698.P9145926141844344103

noncomputable section

/-- A274698: a(n)=prime(n)-(2*last digit of prime(n)).

Offset 1, canonical program `A274698.P9145926141844344103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274698 (n : ℕ) : ℤ :=
  A274698.P9145926141844344103.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274987.P13758219418933082249

`p?[A274601(p?[A274601(n+1)])]`
-/

namespace A274987.P13758219418933082249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274601 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274601 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274987.P13758219418933082249

noncomputable section

/-- A274987: Primes p such that A274601(p) is a prime.

Offset 1, canonical program `A274987.P13758219418933082249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A274987 (n : ℕ) : ℤ :=
  A274987.P13758219418933082249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A274987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275017.P17569823699481363832

`A158611(n+1)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A275017.P17569823699481363832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A158611 (n + 1) - a (n - 2)

end

end A275017.P17569823699481363832

noncomputable section

/-- A275017: a(1)=1, a(2)=2, a(n) = prime(n-2) - a(n-2) for n > 2.

Offset 1, canonical program `A275017.P17569823699481363832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275017 (n : ℕ) : ℤ :=
  A275017.P17569823699481363832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275112.P4810474057767871080

`∑[A064412(A028310(n))]-1`
-/

namespace A275112.P4810474057767871080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064412 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A275112.P4810474057767871080

noncomputable section

/-- A275112: Zero together with the partial sums of A064412.

Offset 0, canonical program `A275112.P4810474057767871080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275112 (n : ℕ) : ℤ :=
  A275112.P4810474057767871080.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275161.P342480281307186842

`6-2*A240025(n+1)`
-/

namespace A275161.P342480281307186842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - 2 * A240025 (n + 1)

end

end A275161.P342480281307186842

noncomputable section

/-- A275161: Number of sides of a polygon formed by tiling n squares in a spiral.

Offset 1, canonical program `A275161.P342480281307186842`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A240025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275161 (n : ℕ) : ℤ :=
  A275161.P342480281307186842.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A240025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275161.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275418.P17647390156546014803

`eq[A054844(n+3), A054844(n+1)]+2`
-/

namespace A275418.P17647390156546014803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A275418.P17647390156546014803

noncomputable section

/-- A275418: Numbers n such that n - 1 has exactly as many odd divisors as n + 1.

Offset 1, canonical program `A275418.P17647390156546014803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275418 (n : ℕ) : ℤ :=
  (A275418.P17647390156546014803.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275495.P8871957792591783515

`A177235(n+1)+A091954(n+1)`
-/

namespace A275495.P8871957792591783515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177235 (n + 1) + A091954 (n + 1)

end

end A275495.P8871957792591783515

noncomputable section

/-- A275495: a(n) = Sum_{k=2..n} floor(n/k) - 2*floor(n/(2*k)).

Offset 1, canonical program `A275495.P8871957792591783515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275495 (n : ℕ) : ℤ :=
  A275495.P8871957792591783515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276055.P8454000691251205862

`A006053(A052938(n+1))-A187065(n)`
-/

namespace A276055.P8454000691251205862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006053 (A052938 (n + 1)).toNat - A187065 n

end

end A276055.P8454000691251205862

noncomputable section

/-- A276055: Number of palindromic compositions of n with parts in {1,2,4,6,8,10,...}.

Offset 0, canonical program `A276055.P8454000691251205862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 782 terms. -/
def A276055 (n : ℕ) : ℤ :=
  A276055.P8454000691251205862.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 782 terms. -/
def A276055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276129.P2467275896849965756

`Δ[A054455(n)-A239342(n+1)]`
-/

namespace A276129.P2467275896849965756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054455 n - A239342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276129.P2467275896849965756

noncomputable section

/-- A276129: a(n) is the number of ordered ways to tile a strip of length n+2 with white tiles of odd lengths summing to length n and two red squares.

Offset 0, canonical program `A276129.P2467275896849965756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 458 terms. -/
def A276129 (n : ℕ) : ℤ :=
  A276129.P2467275896849965756.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 458 terms. -/
def A276129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276208.P11970610108144692030

`A028310(A067850(n+1)+n)`
-/

namespace A276208.P11970610108144692030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A067850 (n + 1) + (n : ℤ)).toNat

end

end A276208.P11970610108144692030

noncomputable section

/-- A276208: Position of n! in the joint ranking of {2^h} and {k!}, where h >= 0, k >= 0.

Offset 1, canonical program `A276208.P11970610108144692030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276208 (n : ℕ) : ℤ :=
  A276208.P11970610108144692030.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276368.P15727639332310724622

`A056449(n)*A065942(n)`
-/

namespace A276368.P15727639332310724622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 n * A065942 n

end

end A276368.P15727639332310724622

noncomputable section

/-- A276368: G.f. A(x) satisfies: A(x - 3*x^3) = 1/(1 - 3*x).

Offset 0, canonical program `A276368.P15727639332310724622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A276368 (n : ℕ) : ℤ :=
  A276368.P15727639332310724622.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A276368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276397.P8421453054304162173

`A188590(n+1)-3`
-/

namespace A276397.P8421453054304162173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188590 (n + 1) - 3

end

end A276397.P8421453054304162173

noncomputable section

/-- A276397: Trajectory of 0 under the morphism 0 -> 001, 1 -> 0010.

Offset 0, canonical program `A276397.P8421453054304162173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276397 (n : ℕ) : ℤ :=
  A276397.P8421453054304162173.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276732.P8742035922757632699

`10*A158017(n+1)-1`
-/

namespace A276732.P8742035922757632699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A158017 (n + 1) - 1

end

end A276732.P8742035922757632699

noncomputable section

/-- A276732: Primes p such that (p + 1)/10 is also prime.

Offset 1, canonical program `A276732.P8742035922757632699`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276732 (n : ℕ) : ℤ :=
  A276732.P8742035922757632699.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276732.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277094.P17994480033795369155

`A063459(or(1, n))+n`
-/

namespace A277094.P17994480033795369155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063459 (Nat.lor 1 n) + (n : ℤ)

end

end A277094.P17994480033795369155

noncomputable section

/-- A277094: Numbers k such that sin(k) > 0 and sin(k+2) < 0.

Offset 1, canonical program `A277094.P17994480033795369155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277094 (n : ℕ) : ℤ :=
  A277094.P17994480033795369155.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277097.P13283059158650942872

`5-A007652(n+1)`
-/

namespace A277097.P13283059158650942872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A007652 (n + 1)

end

end A277097.P13283059158650942872

noncomputable section

/-- A277097: a(n) = 5 - (prime(n) mod 10).

Offset 1, canonical program `A277097.P13283059158650942872`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007652, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277097 (n : ℕ) : ℤ :=
  A277097.P13283059158650942872.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007652, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277097.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277149.P7769864639982086180

`A197879(A001954(2*13*n))`
-/

namespace A277149.P7769864639982086180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197879 (A001954 (2 * (13 * n))).toNat

end

end A277149.P7769864639982086180

noncomputable section

/-- A277149: Lexicographically least sequence of nonnegative integers that avoids 9/5-powers.

Offset 0, canonical program `A277149.P7769864639982086180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A277149 (n : ℕ) : ℤ :=
  A277149.P7769864639982086180.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A277149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277377.P315428366020284387

`Δ[A053187(n)+A002061(A056847(n))]`
-/

namespace A277377.P315428366020284387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053187 n + A002061 (A056847 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277377.P315428366020284387

noncomputable section

/-- A277377: Each odd integer k is followed by k even integers.

Offset 1, canonical program `A277377.P315428366020284387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7162 terms. -/
def A277377 (n : ℕ) : ℤ :=
  A277377.P315428366020284387.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7162 terms. -/
def A277377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277383.P12304855010601705857

`A005843(A007606(n+1))%A005408(A048761(n))`
-/

namespace A277383.P12304855010601705857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A007606 (n + 1)).toNat) (A005408 (A048761 n).toNat)

end

end A277383.P12304855010601705857

noncomputable section

/-- A277383: Each even integer k is followed by k odd integers.

Offset 1, canonical program `A277383.P12304855010601705857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5030 terms. -/
def A277383 (n : ℕ) : ℤ :=
  A277383.P12304855010601705857.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5030 terms. -/
def A277383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277548.P8976666866191349016

`eq[4, A277543(n+1)]+1`
-/

namespace A277548.P8976666866191349016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277548.P8976666866191349016

noncomputable section

/-- A277548: Numbers k such that k/5^m == 4 (mod 5), where 5^m is the greatest power of 5 that divides k.

Offset 1, canonical program `A277548.P8976666866191349016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A277548 (n : ℕ) : ℤ :=
  (A277548.P8976666866191349016.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A277548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277550.P8262281964553815661

`1+eq[1, A277543(n+1)]`
-/

namespace A277550.P8262281964553815661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277550.P8262281964553815661

noncomputable section

/-- A277550: Numbers k such that k/5^m == 1 (mod 5), where 5^m is the greatest power of 5 that divides k.

Offset 1, canonical program `A277550.P8262281964553815661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A277550 (n : ℕ) : ℤ :=
  (A277550.P8262281964553815661.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A277550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277555.P18235990996721503234

`eq[3, A277543(n+1)]+1`
-/

namespace A277555.P18235990996721503234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277555.P18235990996721503234

noncomputable section

/-- A277555: Numbers k such that k/5^m == 3 (mod 5), where 5^m is the greatest power of 5 that divides k.

Offset 1, canonical program `A277555.P18235990996721503234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A277555 (n : ℕ) : ℤ :=
  (A277555.P18235990996721503234.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A277555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277661.P18037095489669609944

`A001108(n)-A047665(n)`
-/

namespace A277661.P18037095489669609944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n - A047665 n

end

end A277661.P18037095489669609944

noncomputable section

/-- A277661: 1st-order coefficients of the 1/N-expansion of traces of negative powers of real Wishart matrices with parameter c=2.

Offset 0, canonical program `A277661.P18037095489669609944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A277661 (n : ℕ) : ℤ :=
  A277661.P18037095489669609944.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A277661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277830.P11318479144716426685

`1+A061217(A014824(n)+1)`
-/

namespace A277830.P11318479144716426685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A061217 (A014824 n + 1).toNat

end

end A277830.P11318479144716426685

noncomputable section

/-- A277830: Number of digits '0' in the set of all numbers from 0 to A014824(n) = Sum_{i=1..n} i*10^(n-i) = (0, 1, 12, 123, 1234, 12345, ...).

Offset 0, canonical program `A277830.P11318479144716426685`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061217, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277830 (n : ℕ) : ℤ :=
  A277830.P11318479144716426685.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061217, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277830.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277864.P4378495412895518711

`or(1, A277797(n))`
-/

namespace A277864.P4378495412895518711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A277797 n)

end

end A277864.P4378495412895518711

noncomputable section

/-- A277864: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 3", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A277864.P4378495412895518711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A277864 (n : ℕ) : ℤ :=
  A277864.P4378495412895518711.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A277864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277924.P15431982985121928956

`A032443(n)+A001791(n)`
-/

namespace A277924.P15431982985121928956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032443 n + A001791 n

end

end A277924.P15431982985121928956

noncomputable section

/-- A277924: a(n) = Sum_{i=0..n+1} binomial(2*n,n-i+1).

Offset 0, canonical program `A277924.P15431982985121928956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A277924 (n : ℕ) : ℤ :=
  A277924.P15431982985121928956.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A277924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277927.P18359111901922409751

`gcd(A277560(n), A277926(n))`
-/

namespace A277927.P18359111901922409751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A277560 n) (A277926 n)

end

end A277927.P18359111901922409751

noncomputable section

/-- A277927: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 5", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A277927.P18359111901922409751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A277927 (n : ℕ) : ℤ :=
  (A277927.P18359111901922409751.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A277927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277933.P1829904161806407735

`or(A273972(A052928(n)), A277918(n))`
-/

namespace A277933.P1829904161806407735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A273972 (A052928 n).toNat) (A277918 n)

end

end A277933.P1829904161806407735

noncomputable section

/-- A277933: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 6", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A277933.P1829904161806407735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A277933 (n : ℕ) : ℤ :=
  A277933.P1829904161806407735.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A277933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277964.P461955963198020473

`A007089(A074940(n+1))`
-/

namespace A277964.P461955963198020473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A074940 (n + 1)).toNat

end

end A277964.P461955963198020473

noncomputable section

/-- A277964: Numbers whose largest decimal digit is 2.

Offset 1, canonical program `A277964.P461955963198020473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9489 terms. -/
def A277964 (n : ℕ) : ℤ :=
  A277964.P461955963198020473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9489 terms. -/
def A277964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278029.P1112025626637894235

`Δ[A000124(n-A076411(n+1))]`
-/

namespace A278029.P1112025626637894235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 ((n : ℤ) - A076411 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278029.P1112025626637894235

noncomputable section

/-- A278029: a(1) = 0; for n > 1, a(n) = k if n is a non-perfect-power, A007916(k); or 0 if n is a perfect power.

Offset 1, canonical program `A278029.P1112025626637894235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A278029 (n : ℕ) : ℤ :=
  A278029.P1112025626637894235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A278029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278043.P1081770688957329620

`A000120(A003726(n+1))`
-/

namespace A278043.P1081770688957329620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003726 (n + 1)).toNat

end

end A278043.P1081770688957329620

noncomputable section

/-- A278043: Number of 1's in tribonacci representation of n (cf. A278038).

Offset 0, canonical program `A278043.P1081770688957329620`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003726, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278043 (n : ℕ) : ℤ :=
  A278043.P1081770688957329620.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003726, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278043.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A278045.P7038591754817271268

`val(A003726(n+1)+A000038(n), 2)`
-/

namespace A278045.P7038591754817271268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003726 (n + 1) + A000038 n).toNat 2

end

end A278045.P7038591754817271268

noncomputable section

/-- A278045: Number of trailing 0's in tribonacci representation of n (cf. A278038).

Offset 0, canonical program `A278045.P7038591754817271268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278045 (n : ℕ) : ℤ :=
  (A278045.P7038591754817271268.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278164.P857982996237124715

`A277904(2*n-a(n-1))` with `a(0)=0`
-/

namespace A278164.P857982996237124715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A277904 ((2 * n : ℤ) - a (n - 1)).toNat

end

end A278164.P857982996237124715

noncomputable section

/-- A278164: Irregular triangle read by rows: row n (n >= 0) is obtained by listing numbers 0 .. A000123(n)-1.

Offset 1, canonical program `A278164.P857982996237124715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5307 terms. -/
def A278164 (n : ℕ) : ℤ :=
  A278164.P857982996237124715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5307 terms. -/
def A278164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278301.P979363314421420552

`A007317(n+1)-A000245(n)`
-/

namespace A278301.P979363314421420552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 1) - A000245 n

end

end A278301.P979363314421420552

noncomputable section

/-- A278301: Number of permutations of length n in the class of juxtapositions of 321-avoiders with 21-avoiders.

Offset 0, canonical program `A278301.P979363314421420552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A278301 (n : ℕ) : ℤ :=
  A278301.P979363314421420552.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A278301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278646.P6809345885454626845

`Δ[n²]*A005043(n)`
-/

namespace A278646.P6809345885454626845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A005043 n

end

end A278646.P6809345885454626845

noncomputable section

/-- A278646: a(n) = ((2*n+1)/(n+1))*Sum_{j=0..n/2} binomial(n+1, j)*binomial(n-j-1, n-2*j).

Offset 0, canonical program `A278646.P6809345885454626845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A278646 (n : ℕ) : ℤ :=
  A278646.P6809345885454626845.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A278646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278933.P2526544740831554129

`∑[2*A200213(A028310(n))]`
-/

namespace A278933.P2526544740831554129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A200213 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278933.P2526544740831554129

noncomputable section

/-- A278933: Number of 2 X 2 matrices with entries in {0,1,...,n} and permanent = trace with no entry repeated.

Offset 0, canonical program `A278933.P2526544740831554129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278933 (n : ℕ) : ℤ :=
  A278933.P2526544740831554129.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279136.P12562316986369065531

`A000035(n)+3*A097861(n)`
-/

namespace A279136.P12562316986369065531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + 3 * A097861 n

end

end A279136.P12562316986369065531

noncomputable section

/-- A279136: a(n) = n*Sum_{i=0..n-1} binomial(n,i)*binomial(i-1,n-i-1)/(n-i).

Offset 0, canonical program `A279136.P12562316986369065531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A279136 (n : ℕ) : ℤ :=
  A279136.P12562316986369065531.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A279136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279262.P434213535527223328

`2*(A029907(n)+A001911(n))`
-/

namespace A279262.P434213535527223328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A029907 n + A001911 n)

end

end A279262.P434213535527223328

noncomputable section

/-- A279262: Number of n X 2 0..1 arrays with no element equal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

Offset 1, canonical program `A279262.P434213535527223328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A279262 (n : ℕ) : ℤ :=
  A279262.P434213535527223328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A279262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279495.P16641540049933314464

`∑{d}[n+1, A023533(#)]`
-/

namespace A279495.P16641540049933314464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023533 d

end

end A279495.P16641540049933314464

noncomputable section

/-- A279495: Number of tetrahedral numbers dividing n.

Offset 1, canonical program `A279495.P16641540049933314464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279495 (n : ℕ) : ℤ :=
  A279495.P16641540049933314464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201014.P5854575639799289141

`∩[A011540(n+1), A173905(n+1)]`
-/

namespace A201014.P5854575639799289141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201014.P5854575639799289141

noncomputable section

/-- A201014: Composite numbers (include 0) whose product of digits is 0.

Offset 1, canonical program `A201014.P5854575639799289141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3440 terms. -/
def A201014 (n : ℕ) : ℤ :=
  (A201014.P5854575639799289141.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3440 terms. -/
def A201014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201461.P15060642789857487320

`A345135(2*A103354(n+1))`
-/

namespace A201461.P15060642789857487320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345135 (2 * A103354 (n + 1)).toNat

end

end A201461.P15060642789857487320

noncomputable section

/-- A201461: Triangle read by rows: n-th row (n>=0) gives coefficients of the polynomial ((x+1)^(2^n) + (x-1)^(2^n))/2.

Offset 0, canonical program `A201461.P15060642789857487320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. -/
def A201461 (n : ℕ) : ℤ :=
  A201461.P15060642789857487320.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. -/
def A201461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201816.P5067483426122242254

`lt[A001221(A082369(3*n+1)), 2]`
-/

namespace A201816.P5067483426122242254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A082369 (3 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A201816.P5067483426122242254

noncomputable section

/-- A201816: Numbers k such that 90*k + 13 is prime.

Offset 1, canonical program `A201816.P5067483426122242254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 408 terms. -/
def A201816 (n : ℕ) : ℤ :=
  (A201816.P5067483426122242254.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 408 terms. -/
def A201816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202093.P17617771732918613506

`A250426(n+2)`
-/

namespace A202093.P17617771732918613506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250426 (n + 2)

end

end A202093.P17617771732918613506

noncomputable section

/-- A202093: Number of (n+2) X 3 binary arrays avoiding patterns 001 and 011 in rows and columns.

Offset 1, canonical program `A202093.P17617771732918613506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A202093 (n : ℕ) : ℤ :=
  A202093.P17617771732918613506.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A202093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202098.P4128263867690976448

`A331575(n+11)²`
-/

namespace A202098.P4128263867690976448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331575 (n + 11) ^ 2

end

end A202098.P4128263867690976448

noncomputable section

/-- A202098: Number of (n+2) X 8 binary arrays avoiding patterns 001 and 011 in rows and columns.

Offset 1, canonical program `A202098.P4128263867690976448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A202098 (n : ℕ) : ℤ :=
  A202098.P4128263867690976448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A202098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202486.P8789427035128539930

`A264365(n+4)²`
-/

namespace A202486.P8789427035128539930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264365 (n + 4) ^ 2

end

end A202486.P8789427035128539930

noncomputable section

/-- A202486: Number of (n+2)X4 binary arrays avoiding patterns 000 and 010 in rows, columns and nw-to-se diagonals.

Offset 1, canonical program `A202486.P8789427035128539930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A202486 (n : ℕ) : ℤ :=
  A202486.P8789427035128539930.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A202486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204822.P986191513022326355

`A000203(A005101(n+1))`
-/

namespace A204822.P986191513022326355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A005101 (n + 1)).toNat

end

end A204822.P986191513022326355

noncomputable section

/-- A204822: Sum of divisors (A000203) of abundant numbers (A005101).

Offset 1, canonical program `A204822.P986191513022326355`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204822 (n : ℕ) : ℤ :=
  A204822.P986191513022326355.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204822.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A204823.P4919634814112807220

`∑{d}[A005100(n+1), #]`
-/

namespace A204823.P4919634814112807220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A204823.P4919634814112807220

noncomputable section

/-- A204823: Sum of divisors (A000203) of deficient numbers (A005100).

Offset 1, canonical program `A204823.P4919634814112807220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204823 (n : ℕ) : ℤ :=
  (A204823.P4919634814112807220.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204827.P17698641458636388094

`∩[A005100(n+1), A028983(n+1)]`
-/

namespace A204827.P17698641458636388094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A204827.P17698641458636388094

noncomputable section

/-- A204827: Deficient numbers with even sum of divisors.

Offset 1, canonical program `A204827.P17698641458636388094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7537 terms. -/
def A204827 (n : ℕ) : ℤ :=
  (A204827.P17698641458636388094.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7537 terms. -/
def A204827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206369.P2534442500048428716

`abs(A061020(n+1))`
-/

namespace A206369.P2534442500048428716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A061020 (n + 1)|

end

end A206369.P2534442500048428716

noncomputable section

/-- A206369: a(p^k) = p^k - p^(k-1) + p^(k-2) - ... +- 1, and then extend by multiplicativity.

Offset 1, canonical program `A206369.P2534442500048428716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061020, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206369 (n : ℕ) : ℤ :=
  A206369.P2534442500048428716.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061020, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206369.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A207005.P8295083017489759373

`eq[A001221(n+1-A001221(n+1)), A001221(n+1)]+1`
-/

namespace A207005.P8295083017489759373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((n + 1 : ℤ) - A001221 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A207005.P8295083017489759373

noncomputable section

/-- A207005: Numbers k such that omega(k) = omega(k - omega(k)) where omega(k) is the number of distinct primes dividing k.

Offset 1, canonical program `A207005.P8295083017489759373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207005 (n : ℕ) : ℤ :=
  (A207005.P8295083017489759373.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207006.P17524923869019092889

`eq[A001221(A001221(n+1)+n+1), A001221(n+1)]+1`
-/

namespace A207006.P17524923869019092889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001221 (n + 1) + (n + 1 : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A207006.P17524923869019092889

noncomputable section

/-- A207006: Numbers n such that omega(n) = omega(n + omega(n)) where omega(n) is the number of distinct primes dividing n.

Offset 1, canonical program `A207006.P17524923869019092889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207006 (n : ℕ) : ℤ :=
  (A207006.P17524923869019092889.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207249.P9404039459940817354

`sqrt(A206981(n+1))*sqrt(A207854(n+1))`
-/

namespace A207249.P9404039459940817354
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A206981 (n + 1) : ℝ) * Real.sqrt (A207854 (n + 1) : ℝ)

end

end A207249.P9404039459940817354

noncomputable section

/-- A207249: Number of n X 3 0..1 arrays avoiding 0 0 1 and 1 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

Offset 1, canonical program `A207249.P9404039459940817354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A207249 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A207249.P9404039459940817354.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A207249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207538.P3362735136045177086

`A000079(A082375(n))*A011973(n)`
-/

namespace A207538.P3362735136045177086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A082375 n).toNat * A011973 n

end

end A207538.P3362735136045177086

noncomputable section

/-- A207538: Triangle of coefficients of polynomials v(n,x) jointly generated with A207537; see Formula section.

Offset 1, canonical program `A207538.P3362735136045177086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207538 (n : ℕ) : ℤ :=
  A207538.P3362735136045177086.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207840.P5446005302528712102

`sqrt(A206981(n+1))*sqrt(A207924(n+1))`
-/

namespace A207840.P5446005302528712102
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A206981 (n + 1) : ℝ) * Real.sqrt (A207924 (n + 1) : ℝ)

end

end A207840.P5446005302528712102

noncomputable section

/-- A207840: Number of n X 3 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 1 1 1 vertically.

Offset 1, canonical program `A207840.P5446005302528712102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A207840 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A207840.P5446005302528712102.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A207840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208023.P17884512696912570816

`sqrt(A207170(n+1))*sqrt(A208035(n+1))`
-/

namespace A208023.P17884512696912570816
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207170 (n + 1) : ℝ) * Real.sqrt (A208035 (n + 1) : ℝ)

end

end A208023.P17884512696912570816

noncomputable section

/-- A208023: Number of n X 3 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 1 0 1 vertically.

Offset 1, canonical program `A208023.P17884512696912570816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A208023 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A208023.P17884512696912570816.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A208023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208116.P12057990313644117716

`(A208551(n+1)/A002620(n+3))²`
-/

namespace A208116.P12057990313644117716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A208551 (n + 1) : ℚ) / (A002620 (n + 3) : ℚ)) ^ 2

end

end A208116.P12057990313644117716

noncomputable section

/-- A208116: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 1 vertically.

Offset 1, canonical program `A208116.P12057990313644117716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A208116 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A208116.P12057990313644117716.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A208116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209211.P11824110619297163653

`eq[n, A318828(n+1)]+1`
-/

namespace A209211.P11824110619297163653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318828 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A209211.P11824110619297163653

noncomputable section

/-- A209211: Numbers k such that k-1 and phi(k) are relatively prime.

Offset 1, canonical program `A209211.P11824110619297163653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209211 (n : ℕ) : ℤ :=
  (A209211.P11824110619297163653.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209291.P18360299347997775299

`∑[(n+1)*A336040(n+1)]`
-/

namespace A209291.P18360299347997775299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A336040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209291.P18360299347997775299

noncomputable section

/-- A209291: Sum of the refactorable numbers less than or equal to n.

Offset 1, canonical program `A209291.P18360299347997775299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209291 (n : ℕ) : ℤ :=
  A209291.P18360299347997775299.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210039.P13325331133632388062

`A034839(A049068(n+1))`
-/

namespace A210039.P13325331133632388062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034839 (A049068 (n + 1)).toNat

end

end A210039.P13325331133632388062

noncomputable section

/-- A210039: Array of coefficients of polynomials u(n,x) jointly generated with A210040; see the Formula section.

Offset 1, canonical program `A210039.P13325331133632388062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A210039 (n : ℕ) : ℤ :=
  A210039.P13325331133632388062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A210039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211117.P3659241348641989542

`A211479(n+1)+A211490(n+1)-9`
-/

namespace A211117.P3659241348641989542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211479 (n + 1) + (A211490 (n + 1) - 9)

end

end A211117.P3659241348641989542

noncomputable section

/-- A211117: Number of (n+1) X (n+1) -2..2 symmetric matrices with every 2 X 2 subblock having sum zero and two, three or four distinct values.

Offset 1, canonical program `A211117.P3659241348641989542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A211117 (n : ℕ) : ℤ :=
  A211117.P3659241348641989542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A211117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211261.P11564212885417913307

`floor(A000005(2*(n+1))/2)-1`
-/

namespace A211261.P11564212885417913307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (2 * (n + 1)) : ℚ) / 2⌋ - 1

end

end A211261.P11564212885417913307

noncomputable section

/-- A211261: Number of integer pairs (x,y) such that 0

Offset 1, canonical program `A211261.P11564212885417913307`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211261 (n : ℕ) : ℤ :=
  A211261.P11564212885417913307.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211261.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A211262.P15561464354873054007

`A004526(A000005(3*(n+1)))-A000034(n)`
-/

namespace A211262.P15561464354873054007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000005 (3 * (n + 1))).toNat - A000034 n

end

end A211262.P15561464354873054007

noncomputable section

/-- A211262: Number of integer pairs (x,y) such that 0

Offset 1, canonical program `A211262.P15561464354873054007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211262 (n : ℕ) : ℤ :=
  A211262.P15561464354873054007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211270.P5835320324361181167

`floor((A000005(2*(n+1))-1)/2)`
-/

namespace A211270.P5835320324361181167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (2 * (n + 1)) - 1 : ℚ) / 2⌋

end

end A211270.P5835320324361181167

noncomputable section

/-- A211270: Number of integer pairs (x,y) such that 0 < x <= y <= n and x*y = 2n.

Offset 1, canonical program `A211270.P5835320324361181167`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211270 (n : ℕ) : ℤ :=
  A211270.P5835320324361181167.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211270.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A211324.P4978454997270415450

`A211114(n+1)+A090991(n+1)`
-/

namespace A211324.P4978454997270415450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211114 (n + 1) + A090991 (n + 1)

end

end A211324.P4978454997270415450

noncomputable section

/-- A211324: Number of (n+1) X (n+1) -3..3 symmetric matrices with every 2 X 2 subblock having sum zero and one or three distinct values.

Offset 1, canonical program `A211324.P4978454997270415450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A211324 (n : ℕ) : ℤ :=
  A211324.P4978454997270415450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A211324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211337.P18010796566095735436

`eq[1, A000005(n+1)%3]+1`
-/

namespace A211337.P18010796566095735436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A211337.P18010796566095735436

noncomputable section

/-- A211337: Numbers k for which the number of divisors, tau(k), is congruent to 1 modulo 3.

Offset 1, canonical program `A211337.P18010796566095735436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211337 (n : ℕ) : ℤ :=
  (A211337.P18010796566095735436.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211338.P17217578141647606892

`lt[(A000005(n+1)+1)%3, 1]+1`
-/

namespace A211338.P17217578141647606892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 1) + 1) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A211338.P17217578141647606892

noncomputable section

/-- A211338: Numbers k for which the number of divisors, tau(k), is congruent to 2 modulo 3.

Offset 1, canonical program `A211338.P17217578141647606892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211338 (n : ℕ) : ℤ :=
  (A211338.P17217578141647606892.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211430.P8380286044930942036

`2*A211483(n)-A005408(n)`
-/

namespace A211430.P8380286044930942036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211483 n - A005408 n

end

end A211430.P8380286044930942036

noncomputable section

/-- A211430: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w^2+x+y=0.

Offset 0, canonical program `A211430.P8380286044930942036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 581 terms. -/
def A211430 (n : ℕ) : ℤ :=
  A211430.P8380286044930942036.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 581 terms. -/
def A211430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212164.P17151163733821615941

`lt[A001221(n+1), A051903(n+1)]+1`
-/

namespace A212164.P17151163733821615941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A212164.P17151163733821615941

noncomputable section

/-- A212164: Numbers k such that the maximum exponent in its prime factorization is greater than the number of positive exponents (A051903(k) > A001221(k)).

Offset 1, canonical program `A212164.P17151163733821615941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4819 terms. -/
def A212164 (n : ℕ) : ℤ :=
  (A212164.P17151163733821615941.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4819 terms. -/
def A212164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212165.P325953888853094015

`lt[A001221(n+1)-A051903(n+1), 1]+1`
-/

namespace A212165.P325953888853094015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A051903 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A212165.P325953888853094015

noncomputable section

/-- A212165: Numbers k such that the maximum exponent in its prime factorization is not less than the number of positive exponents (A051903(k) >= A001221(k)).

Offset 1, canonical program `A212165.P325953888853094015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212165 (n : ℕ) : ℤ :=
  (A212165.P325953888853094015.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212166.P9615223934233399891

`eq[A001221(n+1), A051903(n+1)]+1`
-/

namespace A212166.P9615223934233399891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A212166.P9615223934233399891

noncomputable section

/-- A212166: Numbers k such that the maximum exponent in its prime factorization equals the number of positive exponents (A051903(k) = A001221(k)).

Offset 1, canonical program `A212166.P9615223934233399891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212166 (n : ℕ) : ℤ :=
  (A212166.P9615223934233399891.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212168.P13428896127998377424

`lt[A051903(n+1), A001221(n+1)]+1`
-/

namespace A212168.P13428896127998377424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A212168.P13428896127998377424

noncomputable section

/-- A212168: Numbers n such that the maximal exponent in its prime factorization is less than the number of positive exponents (A051903(n) < A001221(n)).

Offset 1, canonical program `A212168.P13428896127998377424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212168 (n : ℕ) : ℤ :=
  (A212168.P13428896127998377424.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212562.P9619993933328220815

`n^4-A212565(n)`
-/

namespace A212562.P9619993933328220815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212565 n

end

end A212562.P9619993933328220815

noncomputable section

/-- A212562: Number of (w,x,y,z) with all terms in {1,...,n} and w+x

Offset 0, canonical program `A212562.P9619993933328220815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212562 (n : ℕ) : ℤ :=
  A212562.P9619993933328220815.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212571.P10300611427590139486

`n²²-A212574(n)`
-/

namespace A212571.P10300611427590139486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A212574 n

end

end A212571.P10300611427590139486

noncomputable section

/-- A212571: Number of (w,x,y,z) with all terms in {1,...,n} and |w-x|<|x-y|+|y-z|.

Offset 0, canonical program `A212571.P10300611427590139486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212571 (n : ℕ) : ℤ :=
  A212571.P10300611427590139486.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212687.P13544540666538065801

`n²²-A212688(n)`
-/

namespace A212687.P13544540666538065801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A212688 n

end

end A212687.P13544540666538065801

noncomputable section

/-- A212687: Number of (w,x,y,z) with all terms in {1,...,n} and 2|w-x|

Offset 0, canonical program `A212687.P13544540666538065801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212687 (n : ℕ) : ℤ :=
  A212687.P13544540666538065801.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212759.P10804257057777667653

`A212764(n)+A008619(n)²²`
-/

namespace A212759.P10804257057777667653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212764 n + (A008619 n ^ 2) ^ 2

end

end A212759.P10804257057777667653

noncomputable section

/-- A212759: Number of (w,x,y,z) with all terms in {0,...,n} and w, x, and y even.

Offset 0, canonical program `A212759.P10804257057777667653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212759 (n : ℕ) : ℤ :=
  A212759.P10804257057777667653.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212972.P15305657758278643221

`(n+1)^3-A212971(n)`
-/

namespace A212972.P15305657758278643221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A212971 n

end

end A212972.P15305657758278643221

noncomputable section

/-- A212972: Number of triples (w,x,y) with all terms in {0,...,n} and w >= floor((x+y)/3).

Offset 0, canonical program `A212972.P15305657758278643221`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212971, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212972 (n : ℕ) : ℤ :=
  A212972.P15305657758278643221.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212971, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212972.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A212979.P15688986192476150994

`3*∑[A250120(n)-A301291(n)]+1`
-/

namespace A212979.P15688986192476150994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A301291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A212979.P15688986192476150994

noncomputable section

/-- A212979: Number of (w,x,y) with all terms in {0,...,n} and range=average.

Offset 0, canonical program `A212979.P15688986192476150994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212979 (n : ℕ) : ℤ :=
  A212979.P15688986192476150994.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213369.P8237522146268580617

`A318163(2*A003817(n)-n)`
-/

namespace A213369.P8237522146268580617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318163 (2 * A003817 n - (n : ℤ)).toNat

end

end A213369.P8237522146268580617

noncomputable section

/-- A213369: The twisted Stern sequence: a(0) = 0, a(1) = 1 and a(2n) = -a(n), a(2n + 1) = -a(n)-a(n + 1) for n>=1.

Offset 0, canonical program `A213369.P8237522146268580617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A213369 (n : ℕ) : ℤ :=
  A213369.P8237522146268580617.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A213369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213544.P18315218714805834190

`(A011755(n+1)+1)/2`
-/

namespace A213544.P18315218714805834190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011755 (n + 1) + 1 : ℚ) / 2

end

end A213544.P18315218714805834190

noncomputable section

/-- A213544: Sum of numerators of Farey Sequence of order n.

Offset 1, canonical program `A213544.P18315218714805834190`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011755, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213544 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A213544.P18315218714805834190.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011755, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213544.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214167.P16007822320014085442

`A056272(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A214167.P16007822320014085442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056272 (n + 1) - a (n - 1)

end

end A214167.P16007822320014085442

noncomputable section

/-- A214167: Number of 0..5 colorings of a 1 X (n+1) array circular in the n+1 direction with new values 0..5 introduced in row major order.

Offset 1, canonical program `A214167.P16007822320014085442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A214167 (n : ℕ) : ℤ :=
  A214167.P16007822320014085442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A214167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214330.P7168307080799275346

`C(2, A227836(n)+2)`
-/

namespace A214330.P7168307080799275346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A227836 n + 2).toNat

end

end A214330.P7168307080799275346

noncomputable section

/-- A214330: a(n) = A214551(n) mod 2.

Offset 0, canonical program `A214330.P7168307080799275346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214330 (n : ℕ) : ℤ :=
  (A214330.P7168307080799275346.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214643.P12516775339655171107

`∪[A133870(n+1), A142038(n+1)]`
-/

namespace A214643.P12516775339655171107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214643.P12516775339655171107

noncomputable section

/-- A214643: Primes p such that p XOR 22 = p + 22.

Offset 1, canonical program `A214643.P12516775339655171107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214643 (n : ℕ) : ℤ :=
  (A214643.P12516775339655171107.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214678.P6950269482527157551

`A052382(eq[1, A007095(n+1)/A052382(n+1)]+1)`
-/

namespace A214678.P6950269482527157551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007095 (n + 1) : ℚ) / (A052382 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A214678.P6950269482527157551

noncomputable section

/-- A214678: a(n) = n represented in bijective base-8 numeration.

Offset 1, canonical program `A214678.P6950269482527157551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A214678 (n : ℕ) : ℤ :=
  A214678.P6950269482527157551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A214678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214888.P4270454209454101815

`∪[A090187(n+1), A141850(n+1)]`
-/

namespace A214888.P4270454209454101815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214888.P4270454209454101815

noncomputable section

/-- A214888: Primes congruent to {2, 3} mod 11.

Offset 1, canonical program `A214888.P4270454209454101815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214888 (n : ℕ) : ℤ :=
  (A214888.P4270454209454101815.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215104.P3862985368621771494

`∪[A138623(n+1), A214890(n+1)]`
-/

namespace A215104.P3862985368621771494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215104.P3862985368621771494

noncomputable section

/-- A215104: Primes congruent to {2, 3, 5} mod 17.

Offset 1, canonical program `A215104.P3862985368621771494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215104 (n : ℕ) : ℤ :=
  (A215104.P3862985368621771494.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215105.P1088098343684687308

`∪[A102851(n+1), A215101(n+1)]`
-/

namespace A215105.P1088098343684687308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215105.P1088098343684687308

noncomputable section

/-- A215105: Primes congruent to {2, 3, 5} mod 19.

Offset 1, canonical program `A215105.P1088098343684687308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215105 (n : ℕ) : ℤ :=
  (A215105.P1088098343684687308.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215153.P11999709609863500417

`∪[A129484(n+1), A214890(n+1)]`
-/

namespace A215153.P11999709609863500417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215153.P11999709609863500417

noncomputable section

/-- A215153: Primes congruent to {1, 2, 3} mod 17.

Offset 1, canonical program `A215153.P11999709609863500417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215153 (n : ℕ) : ℤ :=
  (A215153.P11999709609863500417.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215154.P4006258148339535244

`∪[A141868(n+1), A215101(n+1)]`
-/

namespace A215154.P4006258148339535244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215154.P4006258148339535244

noncomputable section

/-- A215154: Primes congruent to {1, 2, 3} mod 19.

Offset 1, canonical program `A215154.P4006258148339535244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215154 (n : ℕ) : ℤ :=
  (A215154.P4006258148339535244.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215163.P17122064836461897530

`∪[A141849(n+1), A141851(n+1)]`
-/

namespace A215163.P17122064836461897530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215163.P17122064836461897530

noncomputable section

/-- A215163: Primes congruent to {1, 4} mod 11.

Offset 1, canonical program `A215163.P17122064836461897530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215163 (n : ℕ) : ℤ :=
  (A215163.P17122064836461897530.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215164.P17020110804136505988

`∪[A093191(n+1), A268753(n+1)]`
-/

namespace A215164.P17020110804136505988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215164.P17020110804136505988

noncomputable section

/-- A215164: Primes congruent to {1, 4} mod 13.

Offset 1, canonical program `A215164.P17020110804136505988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215164 (n : ℕ) : ℤ :=
  (A215164.P17020110804136505988.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215166.P4426320899168472041

`∪[A141868(n+1), A141870(n+1)]`
-/

namespace A215166.P4426320899168472041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215166.P4426320899168472041

noncomputable section

/-- A215166: Primes congruent to {1, 4} mod 19.

Offset 1, canonical program `A215166.P4426320899168472041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215166 (n : ℕ) : ℤ :=
  (A215166.P4426320899168472041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215167.P10655791794589351713

`∪[A090187(n+1), A141852(n+1)]`
-/

namespace A215167.P10655791794589351713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215167.P10655791794589351713

noncomputable section

/-- A215167: Primes congruent to {2, 5} mod 11.

Offset 1, canonical program `A215167.P10655791794589351713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215167 (n : ℕ) : ℤ :=
  (A215167.P10655791794589351713.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215168.P5522760675368971835

`∪[A141858(n+1), A102732(n+1)]`
-/

namespace A215168.P5522760675368971835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215168.P5522760675368971835

noncomputable section

/-- A215168: Primes congruent to {2, 5} mod 13.

Offset 1, canonical program `A215168.P5522760675368971835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215168 (n : ℕ) : ℤ :=
  (A215168.P5522760675368971835.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215169.P6984535108480389464

`∪[A138623(n+1), A140544(n+1)]`
-/

namespace A215169.P6984535108480389464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215169.P6984535108480389464

noncomputable section

/-- A215169: Primes congruent to {2, 5} mod 17.

Offset 1, canonical program `A215169.P6984535108480389464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215169 (n : ℕ) : ℤ :=
  (A215169.P6984535108480389464.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215170.P16196430733042655435

`∪[A102851(n+1), A141869(n+1)]`
-/

namespace A215170.P16196430733042655435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215170.P16196430733042655435

noncomputable section

/-- A215170: Primes congruent to {2, 5} mod 19.

Offset 1, canonical program `A215170.P16196430733042655435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215170 (n : ℕ) : ℤ :=
  (A215170.P16196430733042655435.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215206.P4497237975855598041

`∪[A090187(n+1), A141854(n+1)]`
-/

namespace A215206.P4497237975855598041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215206.P4497237975855598041

noncomputable section

/-- A215206: Primes congruent to {2, 7} mod 11.

Offset 1, canonical program `A215206.P4497237975855598041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215206 (n : ℕ) : ℤ :=
  (A215206.P4497237975855598041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215207.P12348991230913771112

`∪[A140371(n+1), A141858(n+1)]`
-/

namespace A215207.P12348991230913771112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215207.P12348991230913771112

noncomputable section

/-- A215207: Primes congruent to {2, 7} mod 13.

Offset 1, canonical program `A215207.P12348991230913771112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215207 (n : ℕ) : ℤ :=
  (A215207.P12348991230913771112.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215208.P12872707927017093378

`∪[A138629(n+1), A140544(n+1)]`
-/

namespace A215208.P12872707927017093378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215208.P12872707927017093378

noncomputable section

/-- A215208: Primes congruent to {2, 7} mod 17.

Offset 1, canonical program `A215208.P12872707927017093378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215208 (n : ℕ) : ℤ :=
  (A215208.P12872707927017093378.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215209.P9506204771007964000

`∪[A141869(n+1), A141872(n+1)]`
-/

namespace A215209.P9506204771007964000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215209.P9506204771007964000

noncomputable section

/-- A215209: Primes congruent to {2, 7} mod 19.

Offset 1, canonical program `A215209.P9506204771007964000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215209 (n : ℕ) : ℤ :=
  (A215209.P9506204771007964000.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215280.P13878712752042011737

`∪[A093191(n+1), A214889(n+1)]`
-/

namespace A215280.P13878712752042011737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215280.P13878712752042011737

noncomputable section

/-- A215280: Primes congruent to {2, 3, 4} mod 13.

Offset 1, canonical program `A215280.P13878712752042011737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215280 (n : ℕ) : ℤ :=
  (A215280.P13878712752042011737.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215282.P15421644998039034553

`∪[A141870(n+1), A215101(n+1)]`
-/

namespace A215282.P15421644998039034553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215282.P15421644998039034553

noncomputable section

/-- A215282: Primes congruent to {2, 3, 4} mod 19.

Offset 1, canonical program `A215282.P15421644998039034553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215282 (n : ℕ) : ℤ :=
  (A215282.P15421644998039034553.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215304.P5744718279713109426

`∪[A129484(n+1), A215281(n+1)]`
-/

namespace A215304.P5744718279713109426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215304.P5744718279713109426

noncomputable section

/-- A215304: Primes congruent to {1, 2, 3, 4} mod 17.

Offset 1, canonical program `A215304.P5744718279713109426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215304 (n : ℕ) : ℤ :=
  (A215304.P5744718279713109426.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215316.P17217771670333190806

`∪[A138623(n+1), A215281(n+1)]`
-/

namespace A215316.P17217771670333190806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215316.P17217771670333190806

noncomputable section

/-- A215316: Primes congruent to {2, 3, 4, 5} mod 17.

Offset 1, canonical program `A215316.P17217771670333190806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215316 (n : ℕ) : ℤ :=
  (A215316.P17217771670333190806.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215352.P9939805677576000821

`∪[A140545(n+1), A215281(n+1)]`
-/

namespace A215352.P9939805677576000821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215352.P9939805677576000821

noncomputable section

/-- A215352: Primes congruent to {2, 3, 4, 6} mod 17.

Offset 1, canonical program `A215352.P9939805677576000821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215352 (n : ℕ) : ℤ :=
  (A215352.P9939805677576000821.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215355.P3196433915697977544

`∪[A102732(n+1), A215359(n+1)]`
-/

namespace A215355.P3196433915697977544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215355.P3196433915697977544

noncomputable section

/-- A215355: Primes congruent to {0, 2, 3, 4, 5} mod 13.

Offset 1, canonical program `A215355.P3196433915697977544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215355 (n : ℕ) : ℤ :=
  (A215355.P3196433915697977544.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215356.P17842161571957885222

`∪[A138623(n+1), A215360(n+1)]`
-/

namespace A215356.P17842161571957885222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215356.P17842161571957885222

noncomputable section

/-- A215356: Primes congruent to {0, 2, 3, 4, 5} mod 17.

Offset 1, canonical program `A215356.P17842161571957885222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215356 (n : ℕ) : ℤ :=
  (A215356.P17842161571957885222.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215357.P13591823837820838479

`∪[A102851(n+1), A215361(n+1)]`
-/

namespace A215357.P13591823837820838479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215357.P13591823837820838479

noncomputable section

/-- A215357: Primes congruent to {0, 2, 3, 4, 5} mod 19.

Offset 1, canonical program `A215357.P13591823837820838479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215357 (n : ℕ) : ℤ :=
  (A215357.P13591823837820838479.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215358.P13244640912977840726

`∪[A141851(n+1), A215374(n+1)]`
-/

namespace A215358.P13244640912977840726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215358.P13244640912977840726

noncomputable section

/-- A215358: Primes congruent to {0, 2, 3, 4} mod 11.

Offset 1, canonical program `A215358.P13244640912977840726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215358 (n : ℕ) : ℤ :=
  (A215358.P13244640912977840726.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215378.P9622553553527907091

`∪[A141849(n+1), A215374(n+1)]`
-/

namespace A215378.P9622553553527907091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215378.P9622553553527907091

noncomputable section

/-- A215378: Primes congruent to {0, 1, 2, 3} mod 11.

Offset 1, canonical program `A215378.P9622553553527907091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215378 (n : ℕ) : ℤ :=
  (A215378.P9622553553527907091.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215380.P13737349323683384483

`∪[A129484(n+1), A215376(n+1)]`
-/

namespace A215380.P13737349323683384483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215380.P13737349323683384483

noncomputable section

/-- A215380: Primes congruent to {0, 1, 2, 3} mod 17.

Offset 1, canonical program `A215380.P13737349323683384483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215380 (n : ℕ) : ℤ :=
  (A215380.P13737349323683384483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215381.P1725177119798405766

`∪[A141868(n+1), A215377(n+1)]`
-/

namespace A215381.P1725177119798405766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215381.P1725177119798405766

noncomputable section

/-- A215381: Primes congruent to {0, 1, 2, 3} mod 19.

Offset 1, canonical program `A215381.P1725177119798405766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215381 (n : ℕ) : ℤ :=
  (A215381.P1725177119798405766.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215387.P8622939867060955229

`∪[A093350(n+1), A214889(n+1)]`
-/

namespace A215387.P8622939867060955229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215387.P8622939867060955229

noncomputable section

/-- A215387: Primes congruent to {2, 3, 6} mod 13.

Offset 1, canonical program `A215387.P8622939867060955229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215387 (n : ℕ) : ℤ :=
  (A215387.P8622939867060955229.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215388.P6479722193099368893

`∪[A140545(n+1), A214890(n+1)]`
-/

namespace A215388.P6479722193099368893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215388.P6479722193099368893

noncomputable section

/-- A215388: Primes congruent to {2, 3, 6} mod 17.

Offset 1, canonical program `A215388.P6479722193099368893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215388 (n : ℕ) : ℤ :=
  (A215388.P6479722193099368893.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215389.P9588713011954173466

`∪[A141871(n+1), A215101(n+1)]`
-/

namespace A215389.P9588713011954173466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215389.P9588713011954173466

noncomputable section

/-- A215389: Primes congruent to {2, 3, 6} mod 19.

Offset 1, canonical program `A215389.P9588713011954173466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215389 (n : ℕ) : ℤ :=
  (A215389.P9588713011954173466.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215390.P16701221075813804655

`∪[A090187(n+1), A141849(n+1)]`
-/

namespace A215390.P16701221075813804655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215390.P16701221075813804655

noncomputable section

/-- A215390: Primes congruent to {1, 2} mod 11.

Offset 1, canonical program `A215390.P16701221075813804655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215390 (n : ℕ) : ℤ :=
  (A215390.P16701221075813804655.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215391.P1080224131390404443

`∪[A141858(n+1), A268753(n+1)]`
-/

namespace A215391.P1080224131390404443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215391.P1080224131390404443

noncomputable section

/-- A215391: Primes congruent to {1, 2} mod 13.

Offset 1, canonical program `A215391.P1080224131390404443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215391 (n : ℕ) : ℤ :=
  (A215391.P1080224131390404443.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215392.P5390637372741882320

`∪[A129484(n+1), A140544(n+1)]`
-/

namespace A215392.P5390637372741882320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215392.P5390637372741882320

noncomputable section

/-- A215392: Primes congruent to {1, 2} mod 17.

Offset 1, canonical program `A215392.P5390637372741882320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215392 (n : ℕ) : ℤ :=
  (A215392.P5390637372741882320.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215393.P13301529686558923603

`∪[A141868(n+1), A141869(n+1)]`
-/

namespace A215393.P13301529686558923603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215393.P13301529686558923603

noncomputable section

/-- A215393: Primes congruent to {1, 2} mod 19.

Offset 1, canonical program `A215393.P13301529686558923603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215393 (n : ℕ) : ℤ :=
  (A215393.P13301529686558923603.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215667.P1287202979309322342

`(A141849(n+1)-1)/22`
-/

namespace A215667.P1287202979309322342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141849 (n + 1) - 1 : ℚ) / 22

end

end A215667.P1287202979309322342

noncomputable section

/-- A215667: 22n+1 is prime.

Offset 1, canonical program `A215667.P1287202979309322342`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141849, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A215667 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A215667.P1287202979309322342.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141849, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A215667.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A215747.P14723553648550715807

`(xor(1, n+1)*A015910(n+1))%(n+1)`
-/

namespace A215747.P14723553648550715807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.xor 1 (n + 1) : ℤ) * A015910 (n + 1)) (n + 1 : ℤ)

end

end A215747.P14723553648550715807

noncomputable section

/-- A215747: a(n) = (-2)^n mod n.

Offset 1, canonical program `A215747.P14723553648550715807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215747 (n : ℕ) : ℤ :=
  A215747.P14723553648550715807.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216057.P3710212579143236931

`A045429(n+1)-A045356(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A216057.P3710212579143236931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1) - A045356 (n + 1)

end

end A216057.P3710212579143236931

noncomputable section

/-- A216057: a(n) = A045429(n) - A045356(n).

Offset 1, canonical program `A216057.P3710212579143236931`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045356, A045429, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A216057 (n : ℕ) : ℤ :=
  A216057.P3710212579143236931.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045356, A045429, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A216057.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A216677.P14396045950144953032

`∏{e}[n+1, A002265(#*A000005(n+1))]`
-/

namespace A216677.P14396045950144953032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A002265 ((Nat.factorization (f1 n) p : ℤ) * A000005 (n + 1)).toNat

end

end A216677.P14396045950144953032

noncomputable section

/-- A216677: Number of squares s^2 that divide the product of the divisors of n, such that rad(s) = rad(n), where rad(n) = A007947.

Offset 1, canonical program `A216677.P14396045950144953032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216677 (n : ℕ) : ℤ :=
  A216677.P14396045950144953032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216918.P12965838950278040036

`2*lt[2, A001221(2*n+1)]+1`
-/

namespace A216918.P12965838950278040036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A216918.P12965838950278040036

noncomputable section

/-- A216918: Odd numbers with at least 3 distinct prime factors.

Offset 1, canonical program `A216918.P12965838950278040036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216918 (n : ℕ) : ℤ :=
  (A216918.P12965838950278040036.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217009.P14255670570923127505

`A007094(A008589(n+1))`
-/

namespace A217009.P14255670570923127505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A008589 (n + 1)).toNat

end

end A217009.P14255670570923127505

noncomputable section

/-- A217009: Multiples of 7 in base 8.

Offset 1, canonical program `A217009.P14255670570923127505`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217009 (n : ℕ) : ℤ :=
  A217009.P14255670570923127505.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217009.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217442.P11818262742147486345

`lt[(n+1)%A000005(A006093(n+1)), 1]+1`
-/

namespace A217442.P11818262742147486345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000005 (A006093 (n + 1)).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A217442.P11818262742147486345

noncomputable section

/-- A217442: Numbers n such that d(prime(n) - 1) | n, where d(k) is the number of divisors of k.

Offset 1, canonical program `A217442.P11818262742147486345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 803 terms. -/
def A217442 (n : ℕ) : ℤ :=
  (A217442.P11818262742147486345.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 803 terms. -/
def A217442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217740.P8591975626272247519

`A005101(A005101(n+1))`
-/

namespace A217740.P8591975626272247519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (A005101 (n + 1)).toNat

end

end A217740.P8591975626272247519

noncomputable section

/-- A217740: Abundant numbers with abundant subscripts.

Offset 1, canonical program `A217740.P8591975626272247519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. -/
def A217740 (n : ℕ) : ℤ :=
  A217740.P8591975626272247519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. -/
def A217740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217973.P11846285657803405566

`filter[A052382(n+1), A188641(#)]`
-/

namespace A217973.P11846285657803405566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A217973.P11846285657803405566

noncomputable section

/-- A217973: Niven (or Harshad) numbers not containing the digit 0.

Offset 1, canonical program `A217973.P11846285657803405566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 841 terms. -/
def A217973 (n : ℕ) : ℤ :=
  A217973.P11846285657803405566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 841 terms. -/
def A217973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218291.P17440105116101161052

`filter[A274319(n+2), A079979(#)]`
-/

namespace A218291.P17440105116101161052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274319 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A218291.P17440105116101161052

noncomputable section

/-- A218291: Multiples of 6 such that the sum of their digits is also a multiple of 6.

Offset 1, canonical program `A218291.P17440105116101161052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A218291 (n : ℕ) : ℤ :=
  A218291.P17440105116101161052.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A218291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218506.P14739239847812447530

`A308733(n+4)-char[4*(n+1)]`
-/

namespace A218506.P14739239847812447530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308733 (n + 4) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A218506.P14739239847812447530

noncomputable section

/-- A218506: Number of partitions of n in which any two parts differ by at most 4.

Offset 0, canonical program `A218506.P14739239847812447530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3242 terms. -/
def A218506 (n : ℕ) : ℤ :=
  A218506.P14739239847812447530.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3242 terms. -/
def A218506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219174.P8041433782300055859

`eq[1, A364252(n+1)]+1`
-/

namespace A219174.P8041433782300055859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364252 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A219174.P8041433782300055859

noncomputable section

/-- A219174: Numbers that have no other prime factors than 2 and/or Mersenne primes.

Offset 1, canonical program `A219174.P8041433782300055859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A219174 (n : ℕ) : ℤ :=
  (A219174.P8041433782300055859.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A219174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220235.P1336882981885097975

`(A066601(n+1)+A015910(n+1))%(n+1)`
-/

namespace A220235.P1336882981885097975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066601 (n + 1) + A015910 (n + 1)) (n + 1 : ℤ)

end

end A220235.P1336882981885097975

noncomputable section

/-- A220235: a(n) = (2^n + 3^n) modulo n.

Offset 1, canonical program `A220235.P1336882981885097975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220235 (n : ℕ) : ℤ :=
  A220235.P1336882981885097975.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224907.P17184024121669876912

`2*A005101(n+1)`
-/

namespace A224907.P17184024121669876912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005101 (n + 1)

end

end A224907.P17184024121669876912

noncomputable section

/-- A224907: Numbers n such that the sum of reciprocals of even divisors of n > 1.

Offset 1, canonical program `A224907.P17184024121669876912`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224907 (n : ℕ) : ℤ :=
  A224907.P17184024121669876912.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224907.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A225230.P5717106397182085981

`A001221(n+1)-A051903(n+1)`
-/

namespace A225230.P5717106397182085981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A051903 (n + 1)

end

end A225230.P5717106397182085981

noncomputable section

/-- A225230: In the canonical prime factorization of n: (number of distinct primes) minus (largest prime exponent).

Offset 1, canonical program `A225230.P5717106397182085981`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A225230 (n : ℕ) : ℤ :=
  A225230.P5717106397182085981.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A225230.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A225241.P5113222394722278636

`2*A005100(n+1)`
-/

namespace A225241.P5113222394722278636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005100 (n + 1)

end

end A225241.P5113222394722278636

noncomputable section

/-- A225241: Numbers n such that the sum of the reciprocals of the even divisors of n is greater than zero and less than one.

Offset 1, canonical program `A225241.P5113222394722278636`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A225241 (n : ℕ) : ℤ :=
  A225241.P5113222394722278636.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A225241.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226432.P6741597299688805071

`A208354(A233583(n+1))-A006355(n)`
-/

namespace A226432.P6741597299688805071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 (A233583 (n + 1)).toNat - A006355 n

end

end A226432.P6741597299688805071

noncomputable section

/-- A226432: The number of simple permutations of length n in a particular geometric grid class.

Offset 1, canonical program `A226432.P6741597299688805071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. -/
def A226432 (n : ℕ) : ℤ :=
  A226432.P6741597299688805071.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. -/
def A226432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227179.P15689747325054342099

`A227181(n)-A227177(n)`
-/

namespace A227179.P15689747325054342099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227181 n - A227177 n

end

end A227179.P15689747325054342099

noncomputable section

/-- A227179: After initial 0, integers from 0 to n(n-1) followed by integers from 0 to n(n+1) and so on.

Offset 0, canonical program `A227179.P15689747325054342099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9952 terms. -/
def A227179 (n : ℕ) : ℤ :=
  A227179.P15689747325054342099.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9952 terms. -/
def A227179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227874.P3056215725130656370

`eq[A000005(n+2)+2, A000005(n+1)]+1`
-/

namespace A227874.P3056215725130656370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A227874.P3056215725130656370

noncomputable section

/-- A227874: Numbers n such that tau(n+1) - tau(n) = -2, where tau(n) = the number of divisors of n (A000005).

Offset 1, canonical program `A227874.P3056215725130656370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A227874 (n : ℕ) : ℤ :=
  (A227874.P3056215725130656370.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A227874.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A229089.P7074531385501001204

`lt[A229087(n+1), 0]+1`
-/

namespace A229089.P7074531385501001204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229087 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A229089.P7074531385501001204

noncomputable section

/-- A229089: Numbers n such that sigma(n) mod n < antisigma(n) mod n, where sigma(n) = A000203(n) = sum of divisor of n, antisigma(n) = A024816(n) = sum of non-divisors of n.

Offset 1, canonical program `A229089.P7074531385501001204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7170 terms. -/
def A229089 (n : ℕ) : ℤ :=
  (A229089.P7074531385501001204.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7170 terms. -/
def A229089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229090.P2897396179284103415

`lt[0, A229087(n+1)]+1`
-/

namespace A229090.P2897396179284103415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229087 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A229090.P2897396179284103415

noncomputable section

/-- A229090: Numbers n such that sigma(n) mod n > antisigma(n) mod n, where sigma(n) = A000203(n) = sum of divisors of n, antisigma(n) = A024816(n) = sum of non-divisors of n.

Offset 1, canonical program `A229090.P2897396179284103415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2824 terms. -/
def A229090 (n : ℕ) : ℤ :=
  (A229090.P2897396179284103415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2824 terms. -/
def A229090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229109.P7396241872602068631

`n+1+A001221(n+1)`
-/

namespace A229109.P7396241872602068631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A001221 (n + 1)

end

end A229109.P7396241872602068631

noncomputable section

/-- A229109: a(n) = n plus the number of its distinct prime factors.

Offset 1, canonical program `A229109.P7396241872602068631`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A229109 (n : ℕ) : ℤ :=
  A229109.P7396241872602068631.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A229109.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A229115.P9819039358198494583

`eq[14, A229087(n+1)]+1`
-/

namespace A229115.P9819039358198494583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229087 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A229115.P9819039358198494583

noncomputable section

/-- A229115: Numbers n such that sigma(n) mod n - antisigma(n) mod n = 14, where sigma(n) = A000203(n) = sum of divisor of n, antisigma(n) = A024816(n) = sum of non-divisors of n.

Offset 1, canonical program `A229115.P9819039358198494583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 366 terms. -/
def A229115 (n : ℕ) : ℤ :=
  (A229115.P9819039358198494583.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 366 terms. -/
def A229115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229221.P13418059073900449142

`eq[1, A032741(n-A007954(n))]`
-/

namespace A229221.P13418059073900449142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 ((n : ℤ) - A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229221.P13418059073900449142

noncomputable section

/-- A229221: Numbers k such that k - (product of digits of k) is prime.

Offset 1, canonical program `A229221.P13418059073900449142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 858 terms. -/
def A229221 (n : ℕ) : ℤ :=
  (A229221.P13418059073900449142.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 858 terms. -/
def A229221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229253.P10040121674296205229

`A001787(A000005(n+1))`
-/

namespace A229253.P10040121674296205229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A000005 (n + 1)).toNat

end

end A229253.P10040121674296205229

noncomputable section

/-- A229253: Total number of elements of nonempty subsets of divisors of n.

Offset 1, canonical program `A229253.P10040121674296205229`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A229253 (n : ℕ) : ℤ :=
  A229253.P10040121674296205229.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A229253.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A229423.P15058870928533988016

`A252815(n+1)+A062748(n)+1`
-/

namespace A229423.P15058870928533988016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252815 (n + 1) + (A062748 n + 1)

end

end A229423.P15058870928533988016

noncomputable section

/-- A229423: Number of n X 3 0..2 arrays with horizontal differences mod 3 never 1, vertical differences mod 3 never -1, rows lexicographically nondecreasing, and columns lexicographically nonincreasing.

Offset 1, canonical program `A229423.P15058870928533988016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229423 (n : ℕ) : ℤ :=
  A229423.P15058870928533988016.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229882.P2075050429214835395

`A007674(n+1)²+A007674(n+1)`
-/

namespace A229882.P2075050429214835395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 1) ^ 2 + A007674 (n + 1)

end

end A229882.P2075050429214835395

noncomputable section

/-- A229882: Squarefree oblong numbers.

Offset 1, canonical program `A229882.P2075050429214835395`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A229882 (n : ℕ) : ℤ :=
  A229882.P2075050429214835395.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A229882.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A229949.P12190683132002036541

`A000005(A002620(n+2))`
-/

namespace A229949.P12190683132002036541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002620 (n + 2)).toNat

end

end A229949.P12190683132002036541

noncomputable section

/-- A229949: Number of divisors of the n-th positive quarter-square.

Offset 1, canonical program `A229949.P12190683132002036541`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A229949 (n : ℕ) : ℤ :=
  A229949.P12190683132002036541.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A229949.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230099.P6314507689840629811

`A007954(n)+n`
-/

namespace A230099.P6314507689840629811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n + (n : ℤ)

end

end A230099.P6314507689840629811

noncomputable section

/-- A230099: a(n) = n + (product of digits of n).

Offset 0, canonical program `A230099.P6314507689840629811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230099 (n : ℕ) : ℤ :=
  A230099.P6314507689840629811.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230099.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230203.P13072862272042323846

`lt[0, A295302(n+1)]+1`
-/

namespace A230203.P13072862272042323846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295302 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A230203.P13072862272042323846

noncomputable section

/-- A230203: Numbers k such that sigma(phi(k)) > k.

Offset 1, canonical program `A230203.P13072862272042323846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230203 (n : ℕ) : ℤ :=
  (A230203.P13072862272042323846.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230294.P9485852536752022539

`∑[A095374(2*(n+1))-A095374(n+1)]`
-/

namespace A230294.P9485852536752022539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095374 (2 * (n + 1)) - A095374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230294.P9485852536752022539

noncomputable section

/-- A230294: a(n) = Sum_{i=1..n} d(4*i+1) - Sum_{i=1..n} d(2*i+1), where d(n) = A000005(n).

Offset 1, canonical program `A230294.P9485852536752022539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A230294 (n : ℕ) : ℤ :=
  A230294.P9485852536752022539.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A230294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230328.P1657364608292761915

`A000034(A173234(n))*A257942(n)`
-/

namespace A230328.P1657364608292761915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A173234 n).toNat * A257942 n

end

end A230328.P1657364608292761915

noncomputable section

/-- A230328: Denominator of n(n+3)/(4(n+1)(n+2)) = Sum_{k = 1..n} 1/(k(k+1)(k+2)).

Offset 0, canonical program `A230328.P1657364608292761915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230328 (n : ℕ) : ℤ :=
  A230328.P1657364608292761915.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231680.P11557233718960307562

`∑[∑{digits}[A007094(n), #]]`
-/

namespace A231680.P11557233718960307562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231680.P11557233718960307562

noncomputable section

/-- A231680: a(n) = Sum_{i=0..n} digsum_8(i), where digsum_8(i) = A053829(i).

Offset 0, canonical program `A231680.P11557233718960307562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231680 (n : ℕ) : ℤ :=
  (A231680.P11557233718960307562.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231681.P15334397148565643114

`∑[∑{digits}[A007094(n), #]²]`
-/

namespace A231681.P15334397148565643114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231681.P15334397148565643114

noncomputable section

/-- A231681: a(n) = Sum_{i=0..n} digsum_8(i)^2, where digsum_8(i) = A053829(i).

Offset 0, canonical program `A231681.P15334397148565643114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231681 (n : ℕ) : ℤ :=
  (A231681.P15334397148565643114.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231683.P1273227042826182736

`∑[∑{digits}[A007094(n), #]²²]`
-/

namespace A231683.P1273227042826182736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231683.P1273227042826182736

noncomputable section

/-- A231683: a(n) = Sum_{i=0..n} digsum_8(i)^4, where digsum_8(i) = A053829(i).

Offset 0, canonical program `A231683.P1273227042826182736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231683 (n : ℕ) : ℤ :=
  (A231683.P1273227042826182736.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231684.P6020696567074052500

`∑[∑{digits}[A007095(n), #]]`
-/

namespace A231684.P6020696567074052500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231684.P6020696567074052500

noncomputable section

/-- A231684: a(n) = Sum_{i=0..n} digsum_9(i), where digsum_9(i) = A053830(i).

Offset 0, canonical program `A231684.P6020696567074052500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231684 (n : ℕ) : ℤ :=
  (A231684.P6020696567074052500.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231685.P1261863985809089979

`∑[∑{digits}[A007095(n), #]²]`
-/

namespace A231685.P1261863985809089979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231685.P1261863985809089979

noncomputable section

/-- A231685: a(n) = Sum_{i=0..n} digsum_9(i)^2, where digsum_9(i) = A053830(i).

Offset 0, canonical program `A231685.P1261863985809089979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231685 (n : ℕ) : ℤ :=
  (A231685.P1261863985809089979.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231686.P5166136307374724277

`∑[∑{digits}[A007095(n), #]^3]`
-/

namespace A231686.P5166136307374724277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231686.P5166136307374724277

noncomputable section

/-- A231686: a(n) = Sum_{i=0..n} digsum_9(i)^3, where digsum_9(i) = A053830(i).

Offset 0, canonical program `A231686.P5166136307374724277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231686 (n : ℕ) : ℤ :=
  (A231686.P5166136307374724277.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231687.P14861985078575087158

`∑[∑{digits}[A007095(n), #]^4]`
-/

namespace A231687.P14861985078575087158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231687.P14861985078575087158

noncomputable section

/-- A231687: a(n) = Sum_{i=0..n} digsum_9(i)^4, where digsum_9(i) = A053830(i).

Offset 0, canonical program `A231687.P14861985078575087158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231687 (n : ℕ) : ℤ :=
  (A231687.P14861985078575087158.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231876.P18340019204035770853

`eq[n+1, lcm(n+1, A001221(n+1)²)]+1`
-/

namespace A231876.P18340019204035770853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A001221 (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A231876.P18340019204035770853

noncomputable section

/-- A231876: Numbers k such that omega(k)^2 (cf. A001221) divides k.

Offset 1, canonical program `A231876.P18340019204035770853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1100 terms. -/
def A231876 (n : ℕ) : ℤ :=
  (A231876.P18340019204035770853.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1100 terms. -/
def A231876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231959.P9351094932317826349

`record[gcd(n+1, A132634(2*(n+1)))]`
-/

namespace A231959.P9351094932317826349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A132634 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231959.P9351094932317826349

noncomputable section

/-- A231959: Numbers n dividing the Lucas sequence u(n) defined by u(i) = 3*u(i-1) - u(i-2) with initial conditions u(0)=0, u(1)=1.

Offset 1, canonical program `A231959.P9351094932317826349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. -/
def A231959 (n : ℕ) : ℤ :=
  (A231959.P9351094932317826349.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. -/
def A231959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233131.P11554169254893934889

`A004125(A028310(n))-(n*A230980(n)-A024924(n))`
-/

namespace A233131.P11554169254893934889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (A028310 n).toNat - ((n : ℤ) * A230980 n - A024924 n)

end

end A233131.P11554169254893934889

noncomputable section

/-- A233131: Sum of remainders of n modulo all smaller composite numbers.

Offset 0, canonical program `A233131.P11554169254893934889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233131 (n : ℕ) : ℤ :=
  A233131.P11554169254893934889.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234045.P17871312824107287060

`A238468(n-A238468(n+2))`
-/

namespace A234045.P17871312824107287060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238468 ((n : ℤ) - A238468 (n + 2)).toNat

end

end A234045.P17871312824107287060

noncomputable section

/-- A234045: Period 7: repeat [0, 0, 1, -1, -1, 1, 0].

Offset 0, canonical program `A234045.P17871312824107287060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A234045 (n : ℕ) : ℤ :=
  A234045.P17871312824107287060.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A234045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234586.P10206095258370351874

`n+2-A234587(C(or(1, n), n))`
-/

namespace A234586.P10206095258370351874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A234587 (Nat.choose (Nat.lor 1 n) n)

end

end A234586.P10206095258370351874

noncomputable section

/-- A234586: Odd-indexed terms are absolute values of differences.

Offset 1, canonical program `A234586.P10206095258370351874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A234586 (n : ℕ) : ℤ :=
  A234586.P10206095258370351874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A234586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234646.P14047031751974978695

`A005070((1-n)²+n)+∑{p}[n+1, #]`
-/

namespace A234646.P14047031751974978695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005070 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A234646.P14047031751974978695

noncomputable section

/-- A234646: Sum of the distinct prime divisors of n^3 + 1.

Offset 0, canonical program `A234646.P14047031751974978695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A234646 (n : ℕ) : ℤ :=
  A234646.P14047031751974978695.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A234646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234695.P11730189554864400723

`p?[A234851(n+1)]`
-/

namespace A234695.P11730189554864400723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234695.P11730189554864400723

noncomputable section

/-- A234695: Primes p with prime(p) - p + 1 also prime.

Offset 1, canonical program `A234695.P11730189554864400723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2160 terms. -/
def A234695 (n : ℕ) : ℤ :=
  A234695.P11730189554864400723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2160 terms. -/
def A234695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235621.P10422737223195381463

`p?[A037475(A000040(n+1))]`
-/

namespace A235621.P10422737223195381463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235621.P10422737223195381463

noncomputable section

/-- A235621: Primes whose base-9 representation also is the base-7 representation of a prime.

Offset 1, canonical program `A235621.P10422737223195381463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A235621 (n : ℕ) : ℤ :=
  A235621.P10422737223195381463.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A235621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236284.P9106495769996058109

`A000005(n+1)^(n+1)`
-/

namespace A236284.P9106495769996058109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ (n + 1)

end

end A236284.P9106495769996058109

noncomputable section

/-- A236284: a(n) = tau(n)^n, where tau(n) = A000005(n) = the number of divisors of n.

Offset 1, canonical program `A236284.P9106495769996058109`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236284 (n : ℕ) : ℤ :=
  A236284.P9106495769996058109.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236284.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A236285.P7829773990434493690

`A000005(n+1)^A000203(n+1)`
-/

namespace A236285.P7829773990434493690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) ^ (A000203 (n + 1) : ℤ)

end

end A236285.P7829773990434493690

noncomputable section

/-- A236285: a(n) = tau(n)^sigma(n), where tau(n) = A000005(n) = the number of divisors of n and sigma(n) = A000203(n) = the sum of divisors of n.

Offset 1, canonical program `A236285.P7829773990434493690`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236285 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A236285.P7829773990434493690.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236285.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A236286.P5783426394669148059

`A000005(n+1)^A001065(n+1)`
-/

namespace A236286.P5783426394669148059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) ^ (A001065 (n + 1) : ℤ)

end

end A236286.P5783426394669148059

noncomputable section

/-- A236286: a(n) = tau(n)^sigma(n) / tau(n)^n, where tau(n) = A000005(n) = the number of divisors of n and sigma(n) = A000203(n) = the sum of divisors of n.

Offset 1, canonical program `A236286.P5783426394669148059`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236286 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A236286.P5783426394669148059.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236286.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A236287.P8329458404916216592

`A000203(n+1)^A000005(n+1)`
-/

namespace A236287.P8329458404916216592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) ^ (A000005 (n + 1) : ℤ)

end

end A236287.P8329458404916216592

noncomputable section

/-- A236287: a(n) = sigma(n)^tau(n), where tau(n) = A000005(n) = the number of divisors of n and sigma(n) = A000203(n) = the sum of divisors of n.

Offset 1, canonical program `A236287.P8329458404916216592`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236287 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A236287.P8329458404916216592.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236287.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A236395.P3290551735307445708

`A132634(A000040(n+1))`
-/

namespace A236395.P3290551735307445708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132634 (A000040 (n + 1)).toNat

end

end A236395.P3290551735307445708

noncomputable section

/-- A236395: a(n) = Fibonacci(p) mod p^2, where p = prime(n).

Offset 1, canonical program `A236395.P3290551735307445708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. -/
def A236395 (n : ℕ) : ℤ :=
  A236395.P3290551735307445708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. -/
def A236395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237353.P6068301606430795874

`A164560(n+1)%A287841(n+1)`
-/

namespace A237353.P6068301606430795874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164560 (n + 1)) (A287841 (n + 1))

end

end A237353.P6068301606430795874

noncomputable section

/-- A237353: For n=g+h, a(n) is the minimum value of omega(g)+omega(h).

Offset 2, canonical program `A237353.P6068301606430795874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. -/
def A237353 (n : ℕ) : ℤ :=
  A237353.P6068301606430795874.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. -/
def A237353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238952.P6937701478012677279

`A007425(n+1)-A000005(n+1)`
-/

namespace A238952.P6937701478012677279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1) - A000005 (n + 1)

end

end A238952.P6937701478012677279

noncomputable section

/-- A238952: The size (the number of arcs) in the transitive closure of divisor lattice D(n).

Offset 1, canonical program `A238952.P6937701478012677279`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A007425, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A238952 (n : ℕ) : ℤ :=
  A238952.P6937701478012677279.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A007425, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A238952.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A238985.P10795254232173325653

`filter[A052382(n+1), A086299(#)]`
-/

namespace A238985.P10795254232173325653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A238985.P10795254232173325653

noncomputable section

/-- A238985: Zeroless 7-smooth numbers.

Offset 1, canonical program `A238985.P10795254232173325653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A238985 (n : ℕ) : ℤ :=
  A238985.P10795254232173325653.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A238985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239059.P17968933749774508671

`A239195(n+1)+A238705(n+1)`
-/

namespace A239059.P17968933749774508671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239195 (n + 1) + A238705 (n + 1)

end

end A239059.P17968933749774508671

noncomputable section

/-- A239059: Sum of the two smallest parts from the partitions of 4n into 4 parts with smallest part = 1.

Offset 1, canonical program `A239059.P17968933749774508671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239059 (n : ℕ) : ℤ :=
  A239059.P17968933749774508671.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239201.P12977593979021015894

`3*A242586(n)-1`
-/

namespace A239201.P12977593979021015894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A242586 n - 1

end

end A239201.P12977593979021015894

noncomputable section

/-- A239201: Expansion of -(x * sqrt(5*x^2 -6*x +1) -2*x^3 +3*x^2 -x) / ((3*x^2 -4*x +1) * sqrt(5*x^2 -6*x +1) +5*x^3 -11*x^2 +7*x -1).

Offset 1, canonical program `A239201.P12977593979021015894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A239201 (n : ℕ) : ℤ :=
  A239201.P12977593979021015894.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A239201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239733.P15139081428395781281

`∩[A023216(n+1), A023234(n+1)]`
-/

namespace A239733.P15139081428395781281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239733.P15139081428395781281

noncomputable section

/-- A239733: Primes p such that 4p+9 and 9p+4 are both prime.

Offset 1, canonical program `A239733.P15139081428395781281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239733 (n : ℕ) : ℤ :=
  (A239733.P15139081428395781281.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239751.P7598983440700543939

`lt[A000120(n), A055640(n)]`
-/

namespace A239751.P7598983440700543939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239751.P7598983440700543939

noncomputable section

/-- A239751: Numbers whose number of nonzero binary digits is less than their number of nonzero decimal digits.

Offset 1, canonical program `A239751.P7598983440700543939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A239751 (n : ℕ) : ℤ :=
  (A239751.P7598983440700543939.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A239751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239930.P8856580518813960922

`∑{d}[n+1, A240025(#)]`
-/

namespace A239930.P8856580518813960922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A240025 d

end

end A239930.P8856580518813960922

noncomputable section

/-- A239930: Number of distinct quarter-squares dividing n.

Offset 1, canonical program `A239930.P8856580518813960922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239930 (n : ℕ) : ℤ :=
  A239930.P8856580518813960922.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239976.P10372821839735602561

`eq[1, A068426(n)]+1`
-/

namespace A239976.P10372821839735602561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A239976.P10372821839735602561

noncomputable section

/-- A239976: Positions of ones in binary representation of log(2).

Offset 1, canonical program `A239976.P10372821839735602561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4976 terms. -/
def A239976 (n : ℕ) : ℤ :=
  (A239976.P10372821839735602561.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4976 terms. -/
def A239976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241566.P8126277569896418132

`∑[A307912(n+1)]`
-/

namespace A241566.P8126277569896418132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241566.P8126277569896418132

noncomputable section

/-- A241566: Number of 2-element subsets of {1,...,n} whose sum has more than 2 divisors.

Offset 1, canonical program `A241566.P8126277569896418132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241566 (n : ℕ) : ℤ :=
  A241566.P8126277569896418132.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242002.P8299068809405779655

`∑[2^(n+1)*A065357(n+1)*A065357(n)]`
-/

namespace A242002.P8299068809405779655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A065357 (n + 1) * A065357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242002.P8299068809405779655

noncomputable section

/-- A242002: Sum_{k=1..n} (-1)^isprime(k)*2^k.

Offset 1, canonical program `A242002.P8299068809405779655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A242002 (n : ℕ) : ℤ :=
  A242002.P8299068809405779655.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A242002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243129.P17128912643122886576

`A000203(A000005(A000005(A000005(n+1))))`
-/

namespace A243129.P17128912643122886576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000005 (A000005 (A000005 (n + 1)).toNat).toNat).toNat

end

end A243129.P17128912643122886576

noncomputable section

/-- A243129: a(n) = sigma(d(d(d(n)))), where d(n) is the number of divisors of n.

Offset 1, canonical program `A243129.P17128912643122886576`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243129 (n : ℕ) : ℤ :=
  A243129.P17128912643122886576.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243129.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244048.P6865276920681536651

`A024816(n+1)-A004125(n+1)`
-/

namespace A244048.P6865276920681536651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1) - A004125 (n + 1)

end

end A244048.P6865276920681536651

noncomputable section

/-- A244048: Antisigma(n) minus the sum of remainders of n mod k, for k = 1,2,3,...,n.

Offset 1, canonical program `A244048.P6865276920681536651`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244048 (n : ℕ) : ℤ :=
  A244048.P6865276920681536651.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244478.P6259852117696337114

`2*A006949(n)-a(n-1)` with `a(0)=2`
-/

namespace A244478.P6259852117696337114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * A006949 n - a (n - 1)

end

end A244478.P6259852117696337114

noncomputable section

/-- A244478: a(0)=2, a(1)=0, a(2)=2; thereafter a(n) = a(n-1-a(n-1))+a(n-2-a(n-2)) unless a(n-1) <= n-1 or a(n-2) <= n-2 in which case the sequence terminates.

Offset 0, canonical program `A244478.P6259852117696337114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244478 (n : ℕ) : ℤ :=
  A244478.P6259852117696337114.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244607.P4839199191391835478

`eq[1, ∑{e}[1-A007954(n), #]]`
-/

namespace A244607.P4839199191391835478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A007954 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244607.P4839199191391835478

noncomputable section

/-- A244607: Numbers k such that (product of digits of k) - 1 is prime.

Offset 1, canonical program `A244607.P4839199191391835478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A244607 (n : ℕ) : ℤ :=
  (A244607.P4839199191391835478.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A244607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245382.P3222382834720020531

`p?[A245383(n+1)]`
-/

namespace A245382.P3222382834720020531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245382.P3222382834720020531

noncomputable section

/-- A245382: Primes whose product of digits is a semiprime.

Offset 1, canonical program `A245382.P3222382834720020531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A245382 (n : ℕ) : ℤ :=
  A245382.P3222382834720020531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A245382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245515.P10148833794480420337

`C(A260222((val(n+1, 2)+1)*(n+1)), A028310(n))`
-/

namespace A245515.P10148833794480420337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A260222 ((SequenceMachineLib.valuation (n + 1) 2 + 1) * (n + 1))).toNat (A028310 n).toNat

end

end A245515.P10148833794480420337

noncomputable section

/-- A245515: a(n) = n*floor(mod((gcd(n, Fibonacci((-1)^n + n))), 1 + n)/n) for n>=2.

Offset 1, canonical program `A245515.P10148833794480420337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A245515 (n : ℕ) : ℤ :=
  (A245515.P10148833794480420337.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A245515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245639.P3877904969913949712

`p?[A143827(n+1)]`
-/

namespace A245639.P3877904969913949712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245639.P3877904969913949712

noncomputable section

/-- A245639: Prime numbers P such that 8*P^2-1 is also prime.

Offset 1, canonical program `A245639.P3877904969913949712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 935 terms. -/
def A245639 (n : ℕ) : ℤ :=
  A245639.P3877904969913949712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 935 terms. -/
def A245639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246294.P17393245477566257957

`A327139(Δ[n²])`
-/

namespace A246294.P17393245477566257957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A246294.P17393245477566257957

noncomputable section

/-- A246294: Numbers k such that sin(k) < sin(k+1) > sin(k+2).

Offset 1, canonical program `A246294.P17393245477566257957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A246294 (n : ℕ) : ℤ :=
  A246294.P17393245477566257957.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A246294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246297.P8914562729595011779

`A327139(2*(n+1))`
-/

namespace A246297.P8914562729595011779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (2 * (n + 1))

end

end A246297.P8914562729595011779

noncomputable section

/-- A246297: Numbers k such that sin(k) > sin(k+1) < sin(k+2).

Offset 1, canonical program `A246297.P8914562729595011779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A246297 (n : ℕ) : ℤ :=
  A246297.P8914562729595011779.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A246297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246406.P15282604472216613680

`∩[A246407(n+1)-1, A246407(n+1)]`
-/

namespace A246406.P15282604472216613680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246407 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246406.P15282604472216613680

noncomputable section

/-- A246406: Nonnegative integers k satisfying sec(k) > sec(k+1) > sec(k+2) < sec(k+3).

Offset 1, canonical program `A246406.P15282604472216613680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A246406 (n : ℕ) : ℤ :=
  (A246406.P15282604472216613680.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A246406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246558.P11717952315131037420

`A007954(A000045(n))`
-/

namespace A246558.P11717952315131037420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A000045 n).toNat

end

end A246558.P11717952315131037420

noncomputable section

/-- A246558: Product of the digits of the n-th Fibonacci number.

Offset 0, canonical program `A246558.P11717952315131037420`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246558 (n : ℕ) : ℤ :=
  A246558.P11717952315131037420.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246558.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246692.P5270854730874171209

`record[gcd(n+1, A270388(2*(n+1)))]`
-/

namespace A246692.P5270854730874171209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A270388 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246692.P5270854730874171209

noncomputable section

/-- A246692: Numbers k such that k | A000129(k).

Offset 1, canonical program `A246692.P5270854730874171209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A246692 (n : ℕ) : ℤ :=
  (A246692.P5270854730874171209.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A246692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246776.P2517314765722432230

`A249669(n+1)-A000040(n+2)`
-/

namespace A246776.P2517314765722432230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) - A000040 (n + 2)

end

end A246776.P2517314765722432230

noncomputable section

/-- A246776: a(n) = floor(prime(n)^(1+1/n)) - prime(n+1).

Offset 1, canonical program `A246776.P2517314765722432230`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A249669, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246776 (n : ℕ) : ℤ :=
  A246776.P2517314765722432230.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A249669, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246776.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246778.P4705111850102885447

`A249669(n+1)-A000040(n+1)`
-/

namespace A246778.P4705111850102885447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) - A000040 (n + 1)

end

end A246778.P4705111850102885447

noncomputable section

/-- A246778: a(n) = floor(prime(n)^(1+1/n)) - prime(n).

Offset 1, canonical program `A246778.P4705111850102885447`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A249669, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246778 (n : ℕ) : ℤ :=
  A246778.P4705111850102885447.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A249669, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246778.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246916.P16965770001564161991

`A000203(n+1)*A001710(A000005(n+1)+1)`
-/

namespace A246916.P16965770001564161991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A001710 (A000005 (n + 1) + 1).toNat

end

end A246916.P16965770001564161991

noncomputable section

/-- A246916: Sum of the cumulative sums of all the permutations of divisors of number n.

Offset 1, canonical program `A246916.P16965770001564161991`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246916 (n : ℕ) : ℤ :=
  A246916.P16965770001564161991.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246916.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246931.P531083120571491770

`A031340(2*(n+1))`
-/

namespace A246931.P531083120571491770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031340 (2 * (n + 1))

end

end A246931.P531083120571491770

noncomputable section

/-- A246931: Prime(14*n).

Offset 1, canonical program `A246931.P531083120571491770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A246931 (n : ℕ) : ℤ :=
  A246931.P531083120571491770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A246931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246933.P12478425848138798615

`A031341(2*(n+1))`
-/

namespace A246933.P12478425848138798615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031341 (2 * (n + 1))

end

end A246933.P12478425848138798615

noncomputable section

/-- A246933: a(n) = prime(16*n).

Offset 1, canonical program `A246933.P12478425848138798615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A246933 (n : ℕ) : ℤ :=
  A246933.P12478425848138798615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A246933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247513.P11269454306953394611

`6^A001221(n+1)*A005361(n+1)`
-/

namespace A247513.P11269454306953394611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A001221 (n + 1) : ℤ) * (A005361 (n + 1) : ℚ)

end

end A247513.P11269454306953394611

noncomputable section

/-- A247513: Number of elements in the set {(x,y,z): 1<=x,y,z<=n, gcd(x,y,z)=1, lcm(x,y,z)=n}.

Offset 1, canonical program `A247513.P11269454306953394611`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A247513 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A247513.P11269454306953394611.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A247513.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247678.P17590283635497127436

`filter[A063305(n+3), A373977(#)]`
-/

namespace A247678.P17590283635497127436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A247678.P17590283635497127436

noncomputable section

/-- A247678: Odd composite numbers congruent to 4 modulo 9.

Offset 1, canonical program `A247678.P17590283635497127436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3954 terms. -/
def A247678 (n : ℕ) : ℤ :=
  A247678.P17590283635497127436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3954 terms. -/
def A247678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248211.P6041066512751082017

`A001221(n+2)-A001221(n+1)`
-/

namespace A248211.P6041066512751082017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2) - A001221 (n + 1)

end

end A248211.P6041066512751082017

noncomputable section

/-- A248211: First differences of omega(n), the number of distinct prime factors function (A001221).

Offset 1, canonical program `A248211.P6041066512751082017`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248211 (n : ℕ) : ℤ :=
  A248211.P6041066512751082017.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248211.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A248577.P10884066776821242186

`A000005(n+1)*A001221(n+1)`
-/

namespace A248577.P10884066776821242186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A001221 (n + 1)

end

end A248577.P10884066776821242186

noncomputable section

/-- A248577: Product of the number of divisors of n and the number of distinct prime divisors of n; i.e., tau(n) * omega(n).

Offset 1, canonical program `A248577.P10884066776821242186`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A248577 (n : ℕ) : ℤ :=
  A248577.P10884066776821242186.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A248577.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A248662.P15236440755590100314

`lt[A001414(n+1), A000005(n+1)]+1`
-/

namespace A248662.P15236440755590100314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A248662.P15236440755590100314

noncomputable section

/-- A248662: Numbers with the property: tau(n) > sopfr(n), or A000005(n) > A001414(n).

Offset 1, canonical program `A248662.P15236440755590100314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 926 terms. -/
def A248662 (n : ℕ) : ℤ :=
  (A248662.P15236440755590100314.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 926 terms. -/
def A248662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248806.P12635437797534997553

`Δ[eq[1, A000002(n+1)]]-1`
-/

namespace A248806.P12635437797534997553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A248806.P12635437797534997553

noncomputable section

/-- A248806: Number of 2's separating successive 1's in the Kolakoski sequence A000002.

Offset 1, canonical program `A248806.P12635437797534997553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4995 terms. -/
def A248806 (n : ℕ) : ℤ :=
  A248806.P12635437797534997553.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4995 terms. -/
def A248806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249102.P1085466036066387248

`eq[0, A268643(A307913(n+1))]`
-/

namespace A249102.P1085466036066387248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A307913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249102.P1085466036066387248

noncomputable section

/-- A249102: Numbers with no 1's in base-7 expansion.

Offset 1, canonical program `A249102.P1085466036066387248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1296 terms. -/
def A249102 (n : ℕ) : ℤ :=
  (A249102.P1085466036066387248.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1296 terms. -/
def A249102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250427.P17058954788119591334

`(A005994(n+2)-A096338(n))²`
-/

namespace A250427.P17058954788119591334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005994 (n + 2) - A096338 n) ^ 2

end

end A250427.P17058954788119591334

noncomputable section

/-- A250427: Number of (n+1)X(3+1) 0..1 arrays with nondecreasing sum of every two consecutive values in every row and column.

Offset 1, canonical program `A250427.P17058954788119591334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A250427 (n : ℕ) : ℤ :=
  A250427.P17058954788119591334.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A250427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252480.P15877996964888360874

`∩[A011540(n+1)-1, A011540(n+1)]`
-/

namespace A252480.P15877996964888360874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252480.P15877996964888360874

noncomputable section

/-- A252480: Numbers whose decimal representation has at least one '0' digit in a position other than the final digit.

Offset 1, canonical program `A252480.P15877996964888360874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7721 terms. -/
def A252480 (n : ℕ) : ℤ :=
  (A252480.P15877996964888360874.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7721 terms. -/
def A252480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252505.P33012695452401926

`A000005(A058035(n+1))`
-/

namespace A252505.P33012695452401926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A058035 (n + 1)).toNat

end

end A252505.P33012695452401926

noncomputable section

/-- A252505: Number of biquadratefree (4th power free) divisors of n.

Offset 1, canonical program `A252505.P33012695452401926`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A058035, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252505 (n : ℕ) : ℤ :=
  A252505.P33012695452401926.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A058035, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252505.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A254958.P15726477760308022044

`∩[A052382(n+1), A175396(n+1)]`
-/

namespace A254958.P15726477760308022044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254958.P15726477760308022044

noncomputable section

/-- A254958: Zeroless numbers n with digits d_1, d_2, ... d_k such that d_1^2 + ... + d_k^2 is a square.

Offset 1, canonical program `A254958.P15726477760308022044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 384 terms. -/
def A254958 (n : ℕ) : ℤ :=
  (A254958.P15726477760308022044.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 384 terms. -/
def A254958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255415.P4478179475312166102

`A260715(A017401(n))`
-/

namespace A255415.P4478179475312166102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260715 (A017401 n).toNat

end

end A255415.P4478179475312166102

noncomputable section

/-- A255415: Row 5 of Ludic array A255127.

Offset 1, canonical program `A255415.P4478179475312166102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 910 terms. -/
def A255415 (n : ℕ) : ℤ :=
  A255415.P4478179475312166102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 910 terms. -/
def A255415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255808.P14703978000163478120

`record[A052382(n+1)+n+1-A007095(n+1)]`
-/

namespace A255808.P14703978000163478120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1) + ((n + 1 : ℤ) - A007095 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255808.P14703978000163478120

noncomputable section

/-- A255808: Numbers with no zeros in base-9 representation.

Offset 1, canonical program `A255808.P14703978000163478120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A255808 (n : ℕ) : ℤ :=
  A255808.P14703978000163478120.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A255808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256532.P7056753071363475223

`(n+1)*A004125(n+1)`
-/

namespace A256532.P7056753071363475223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004125 (n + 1)

end

end A256532.P7056753071363475223

noncomputable section

/-- A256532: Product of n and the sum of remainders of n mod k, for k = 1, 2, 3, ..., n.

Offset 1, canonical program `A256532.P7056753071363475223`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256532 (n : ℕ) : ℤ :=
  A256532.P7056753071363475223.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256532.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256862.P1813085850284359841

`A013632(3*a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A256862.P1813085850284359841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A013632 (3 * a (n - 1)).toNat + a (n - 1)

end

end A256862.P1813085850284359841

noncomputable section

/-- A256862: a(1)=1, then a(n) = least number > a(n-1) such that 2*a(n-1)+a(n) is prime.

Offset 1, canonical program `A256862.P1813085850284359841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 520 terms. -/
def A256862 (n : ℕ) : ℤ :=
  A256862.P1813085850284359841.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 520 terms. -/
def A256862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257220.P8696948705799715242

`lt[25, 4*a(A387463(n))]` with `a(0)=2, a(1)=7`
-/

namespace A257220.P8696948705799715242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n f2 =>
  4 * f2 (A387463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257220.P8696948705799715242

noncomputable section

/-- A257220: Numbers that have at least one divisor containing the digit 3 in base 10.

Offset 1, canonical program `A257220.P8696948705799715242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8394 terms. -/
def A257220 (n : ℕ) : ℤ :=
  (A257220.P8696948705799715242.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8394 terms. -/
def A257220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257282.P3133761122508046710

`comp[A257292(n+1)]`
-/

namespace A257282.P3133761122508046710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A257282.P3133761122508046710

noncomputable section

/-- A257282: Numbers whose square is not the sum of two consecutive nonsquares.

Offset 1, canonical program `A257282.P3133761122508046710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257282 (n : ℕ) : ℤ :=
  (A257282.P3133761122508046710.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257294.P9500194499461381062

`floor(A007954(n)^(1/A055642(n))*10^(A055642(n)-1))`
-/

namespace A257294.P9500194499461381062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007954 n : ℝ) ^ (1 / (A055642 n : ℚ) : ℝ) * ((10 : ℚ) ^ (A055642 n - 1 : ℤ) : ℝ)⌋

end

end A257294.P9500194499461381062

noncomputable section

/-- A257294: The first d decimal digits of the geometric mean of the digits of n, where d is the number of digits of n, without leading zeros.

Offset 0, canonical program `A257294.P9500194499461381062`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A257294 (n : ℕ) : ℤ :=
  A257294.P9500194499461381062.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A257294.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257531.P7062776360316150328

`A063524(A062173(n+1))`
-/

namespace A257531.P7062776360316150328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A062173 (n + 1)).toNat

end

end A257531.P7062776360316150328

noncomputable section

/-- A257531: If 2^(n-1) mod n = 1, then 1 else 0.

Offset 1, canonical program `A257531.P7062776360316150328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257531 (n : ℕ) : ℤ :=
  A257531.P7062776360316150328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257931.P9957961478944527783

`A128834(n)*A259042(n)`
-/

namespace A257931.P9957961478944527783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n * A259042 n

end

end A257931.P9957961478944527783

noncomputable section

/-- A257931: Period 24 sequence [0, 1, 1, 0, -2, -1, 0, 1, 0, 0, -1, -1, 0, 1, 1, 0, 0, -1, 0, 1, 2, 0, -1, -1].

Offset 0, canonical program `A257931.P9957961478944527783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257931 (n : ℕ) : ℤ :=
  A257931.P9957961478944527783.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259024.P17201124140699928540

`A084091(n+1)-A084091(A175676(n+1))`
-/

namespace A259024.P17201124140699928540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 (n + 1) - A084091 (A175676 (n + 1)).toNat

end

end A259024.P17201124140699928540

noncomputable section

/-- A259024: a(4*n) = a(n). a(4*n + 2) = 0. a(4*n + 1) = - A259022(n+2). a(4*n + 3) = - A259022(n-2).

Offset 1, canonical program `A259024.P17201124140699928540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259024 (n : ℕ) : ℤ :=
  A259024.P17201124140699928540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259315.P8137311913003913152

`comp[∪[A000040(n+1), A011540(n+1)]]`
-/

namespace A259315.P8137311913003913152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A259315.P8137311913003913152

noncomputable section

/-- A259315: Nonprimes containing no zeros in decimal representation.

Offset 1, canonical program `A259315.P8137311913003913152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259315 (n : ℕ) : ℤ :=
  (A259315.P8137311913003913152.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259651.P16463871168149686535

`A001221(A000326(n+1))`
-/

namespace A259651.P16463871168149686535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000326 (n + 1)).toNat

end

end A259651.P16463871168149686535

noncomputable section

/-- A259651: Number of distinct prime factors of the n-th pentagonal number (A000326).

Offset 1, canonical program `A259651.P16463871168149686535`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259651 (n : ℕ) : ℤ :=
  A259651.P16463871168149686535.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259651.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259773.P1634430538473741223

`A007954(A000032(n))`
-/

namespace A259773.P1634430538473741223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A000032 n).toNat

end

end A259773.P1634430538473741223

noncomputable section

/-- A259773: Product of the digits of the n-th Lucas number.

Offset 0, canonical program `A259773.P1634430538473741223`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259773 (n : ℕ) : ℤ :=
  A259773.P1634430538473741223.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259773.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260235.P8919696338789847144

`A001221(A000384(n+2))`
-/

namespace A260235.P8919696338789847144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000384 (n + 2)).toNat

end

end A260235.P8919696338789847144

noncomputable section

/-- A260235: Number of distinct prime factors of the n-th hexagonal number (A000384).

Offset 2, canonical program `A260235.P8919696338789847144`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260235 (n : ℕ) : ℤ :=
  A260235.P8919696338789847144.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260235.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260256.P436292535346818829

`eq[A000005(n+1), A000005(n+5)]+3`
-/

namespace A260256.P436292535346818829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3

end

end A260256.P436292535346818829

noncomputable section

/-- A260256: Numbers m such that tau(m + 2) = tau(m - 2) where tau(k) = A000005(k).

Offset 1, canonical program `A260256.P436292535346818829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8284 terms. -/
def A260256 (n : ℕ) : ℤ :=
  (A260256.P436292535346818829.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8284 terms. -/
def A260256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260298.P4761561818638806536

`A000040(eq[A260611(n+1)+1, A000040(n+1)]+1)`
-/

namespace A260298.P4761561818638806536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260611 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A260298.P4761561818638806536

noncomputable section

/-- A260298: Primes p such that hyperfactorial(p-1) == 1 (mod p).

Offset 1, canonical program `A260298.P4761561818638806536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. -/
def A260298 (n : ℕ) : ℤ :=
  A260298.P4761561818638806536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. -/
def A260298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261447.P2588180063038653049

`A001221(A032741(n+2))`
-/

namespace A261447.P2588180063038653049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A032741 (n + 2)).toNat

end

end A261447.P2588180063038653049

noncomputable section

/-- A261447: The number of distinct prime factors of the number of proper divisors of n.

Offset 2, canonical program `A261447.P2588180063038653049`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A032741, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A261447 (n : ℕ) : ℤ :=
  A261447.P2588180063038653049.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A032741, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A261447.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262190.P7057828386404779220

`A055640(∑{digits}[n, 4^#]%4+10*n)`
-/

namespace A262190.P7057828386404779220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 4 ^ x).sum % 4 + 10 * n)

end

end A262190.P7057828386404779220

noncomputable section

/-- A262190: Number of distinct palindromes contained as substrings in the decimal representation of n.

Offset 0, canonical program `A262190.P7057828386404779220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A262190 (n : ℕ) : ℤ :=
  A262190.P7057828386404779220.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A262190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262530.P16964743584819314098

`A003056(∑[A337843(n)])`
-/

namespace A262530.P16964743584819314098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A262530.P16964743584819314098

noncomputable section

/-- A262530: Numbers such that digits occur at most twice in decimal representation.

Offset 1, canonical program `A262530.P16964743584819314098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A262530 (n : ℕ) : ℤ :=
  A262530.P16964743584819314098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A262530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262684.P11535517176772026227

`1-a(A000005(n+1)-1)` with `a(0)=0, a(1)=0`
-/

namespace A262684.P11535517176772026227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 - a (A000005 (n + 1) - 1).toNat

end

end A262684.P11535517176772026227

noncomputable section

/-- A262684: Characteristic function for A080218.

Offset 1, canonical program `A262684.P11535517176772026227`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262684 (n : ℕ) : ℤ :=
  A262684.P11535517176772026227.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262684.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A263085.P16582971687481211869

`A000005(2*(n+1)-1)+a(n-1)` with `a(0)=1`
-/

namespace A263085.P16582971687481211869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (2 * (n + 1) - 1) + a (n - 1)

end

end A263085.P16582971687481211869

noncomputable section

/-- A263085: Partial sums of A099774 (A099774(n) = number of divisors of n-th odd number).

Offset 1, canonical program `A263085.P16582971687481211869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A263085 (n : ℕ) : ℤ :=
  A263085.P16582971687481211869.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A263085.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A263243.P14781637449265801547

`A267520(n*and(1, ∑[n]))`
-/

namespace A263243.P14781637449265801547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267520 (n * Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A263243.P14781637449265801547

noncomputable section

/-- A263243: Triangle read by rows giving successive states of cellular automaton generated by "Rule 155" initiated with a single ON (black) cell.

Offset 0, canonical program `A263243.P14781637449265801547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263243 (n : ℕ) : ℤ :=
  A263243.P14781637449265801547.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263919.P4377395564244564805

`(A266982(n)+n)%2`
-/

namespace A263919.P4377395564244564805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266982 n + (n : ℤ)) 2

end

end A263919.P4377395564244564805

noncomputable section

/-- A263919: Triangle read by rows giving successive states of cellular automaton generated by "Rule 163" initiated with a single ON (black) cell.

Offset 0, canonical program `A263919.P4377395564244564805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263919 (n : ℕ) : ℤ :=
  A263919.P4377395564244564805.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264441.P18237955088571379997

`floor(sqrt(A045763(n+1)²+1))`
-/

namespace A264441.P18237955088571379997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A045763 (n + 1) ^ 2 + 1)

end

end A264441.P18237955088571379997

noncomputable section

/-- A264441: Length of row n of the irregular triangle A133995 (positive integers <= n which are neither divisors of n nor coprime to n).

Offset 1, canonical program `A264441.P18237955088571379997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264441 (n : ℕ) : ℤ :=
  A264441.P18237955088571379997.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265402.P14245081475958957780

`p?[comp[(n+1)*A001221(2*n+1)]]`
-/

namespace A265402.P14245081475958957780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001221 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A265402.P14245081475958957780

noncomputable section

/-- A265402: Fixed points of A265388: numbers n for which gcd{k=1..n-1} binomial(2*n, 2*k) = n.

Offset 1, canonical program `A265402.P14245081475958957780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1770 terms. -/
def A265402 (n : ℕ) : ℤ :=
  (A265402.P14245081475958957780.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1770 terms. -/
def A265402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265412.P11385853226138778996

`A265411(n)+a(n-1)` with `a(0)=1`
-/

namespace A265412.P11385853226138778996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A265411 n + a (n - 1)

end

end A265412.P11385853226138778996

noncomputable section

/-- A265412: Partial sums of A265411.

Offset 0, canonical program `A265412.P11385853226138778996`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265411, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265412 (n : ℕ) : ℤ :=
  A265412.P11385853226138778996.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265411, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265412.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A265711.P15707034598538859304

`A266227(a(n-1)+1)+a(n-1)` with `a(0)=1`
-/

namespace A265711.P15707034598538859304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266227 (a (n - 1) + 1).toNat + a (n - 1)

end

end A265711.P15707034598538859304

noncomputable section

/-- A265711: Numbers n such that floor(Sum_{d|n} 1 / sigma(d)) = 1.

Offset 1, canonical program `A265711.P15707034598538859304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265711 (n : ℕ) : ℤ :=
  A265711.P15707034598538859304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265712.P4281004375783898549

`eq[2, A266227(n+1)]+1`
-/

namespace A265712.P4281004375783898549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266227 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A265712.P4281004375783898549

noncomputable section

/-- A265712: Numbers n such that floor(Sum_{d|n} 1 / sigma(d)) = 2.

Offset 1, canonical program `A265712.P4281004375783898549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1209 terms. -/
def A265712 (n : ℕ) : ℤ :=
  (A265712.P4281004375783898549.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1209 terms. -/
def A265712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266069.P2566806973001176226

`and(A266461(n), A266607(n))`
-/

namespace A266069.P2566806973001176226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266461 n) (A266607 n)

end

end A266069.P2566806973001176226

noncomputable section

/-- A266069: Decimal representation of the n-th iteration of the "Rule 3" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266069.P2566806973001176226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266069 (n : ℕ) : ℤ :=
  A266069.P2566806973001176226.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266090.P15536049013854608840

`and(A266671(n), A267003(n))`
-/

namespace A266090.P15536049013854608840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266671 n) (A267003 n)

end

end A266090.P15536049013854608840

noncomputable section

/-- A266090: Decimal representation of the n-th iteration of the "Rule 17" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266090.P15536049013854608840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266090 (n : ℕ) : ℤ :=
  A266090.P15536049013854608840.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266155.P15383333705459464585

`A266377(xor(n, a(n-1)))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A266155.P15383333705459464585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  A266377 (Int.xor (n : ℤ) (a (n - 1))).toNat

end

end A266155.P15383333705459464585

noncomputable section

/-- A266155: Triangle read by rows giving successive states of cellular automaton generated by "Rule 19" initiated with a single ON (black) cell.

Offset 0, canonical program `A266155.P15383333705459464585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266155 (n : ℕ) : ℤ :=
  A266155.P15383333705459464585.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266176.P15973943140520790239

`A266668(n)-Δ[A016116(n)²]`
-/

namespace A266176.P15973943140520790239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266668 n - (f1 (n + 1) - f1 n)

end

end A266176.P15973943140520790239

noncomputable section

/-- A266176: Decimal representation of the n-th iteration of the "Rule 5" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266176.P15973943140520790239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266176 (n : ℕ) : ℤ :=
  A266176.P15973943140520790239.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267044.P17562880071829113964

`A267538(n)-a(n-1)` with `a(0)=1`
-/

namespace A267044.P17562880071829113964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267538 n - a (n - 1)

end

end A267044.P17562880071829113964

noncomputable section

/-- A267044: Binary representation of the middle column of the "Rule 91" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267044.P17562880071829113964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267044 (n : ℕ) : ℤ :=
  A267044.P17562880071829113964.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267259.P16464707296081217590

`Δ[n²]-A267261(n)`
-/

namespace A267259.P16464707296081217590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A267261 n

end

end A267259.P16464707296081217590

noncomputable section

/-- A267259: Number of ON (black) cells in the n-th iteration of the "Rule 111" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267259.P16464707296081217590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267259 (n : ℕ) : ℤ :=
  A267259.P16464707296081217590.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268317.P13150400514428310603

`a(A268318(n-1))+1` with `a(0)=0`
-/

namespace A268317.P13150400514428310603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A268318 (n - 1)).toNat + 1

end

end A268317.P13150400514428310603

noncomputable section

/-- A268317: Irregular triangle read by rows: T(n,k) gives the columns sum in the table Fib(n+1) X Fib(n), where k = 1..Fib(n), and 1's are assigned to cells on the longest diagonal path.

Offset 0, canonical program `A268317.P13150400514428310603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A268317 (n : ℕ) : ℤ :=
  (A268317.P13150400514428310603.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A268317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268388.P181920710593903785

`eq[0, A302777(n+2)]+2`
-/

namespace A268388.P181920710593903785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302777 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A268388.P181920710593903785

noncomputable section

/-- A268388: "Fermi-Dirac composites": numbers k for which A064547(k) > 1.

Offset 1, canonical program `A268388.P181920710593903785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268388 (n : ℕ) : ℤ :=
  (A268388.P181920710593903785.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269160.P5728616991785596865

`A387312(2*n)`
-/

namespace A269160.P5728616991785596865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387312 (2 * n)

end

end A269160.P5728616991785596865

noncomputable section

/-- A269160: Formula for Wolfram's Rule 30 cellular automaton: a(n) = n XOR (2n OR 4n).

Offset 0, canonical program `A269160.P5728616991785596865`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A387312, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269160 (n : ℕ) : ℤ :=
  A269160.P5728616991785596865.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A387312, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269160.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A269454.P4242820123996942999

`p?[A294091(n+1)]`
-/

namespace A269454.P4242820123996942999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269454.P4242820123996942999

noncomputable section

/-- A269454: Safe primes that are not congruent to -1 mod 8.

Offset 1, canonical program `A269454.P4242820123996942999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1126 terms. -/
def A269454 (n : ℕ) : ℤ :=
  A269454.P4242820123996942999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1126 terms. -/
def A269454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270088.P5283542168159360007

`abs(or(8, -A273767(n)))`
-/

namespace A270088.P5283542168159360007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 8 (-A273767 n)|

end

end A270088.P5283542168159360007

noncomputable section

/-- A270088: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 73", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270088.P5283542168159360007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A270088 (n : ℕ) : ℤ :=
  A270088.P5283542168159360007.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A270088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270130.P16178713870882663809

`-or(4, -A273767(n))`
-/

namespace A270130.P16178713870882663809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 4 (-A273767 n)

end

end A270130.P16178713870882663809

noncomputable section

/-- A270130: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 89", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270130.P16178713870882663809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A270130 (n : ℕ) : ℤ :=
  A270130.P16178713870882663809.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A270130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270342.P12478377227330995864

`eq[0, A270388(n+2)]+2`
-/

namespace A270342.P12478377227330995864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270388 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A270342.P12478377227330995864

noncomputable section

/-- A270342: Positive integers n such that the sum of the Pell numbers A000129(0) + ... + A000129(n-1) is divisible by n.

Offset 1, canonical program `A270342.P12478377227330995864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A270342 (n : ℕ) : ℤ :=
  (A270342.P12478377227330995864.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A270342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271319.P11966031781455970266

`A001221(A060354(n+2))`
-/

namespace A271319.P11966031781455970266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A060354 (n + 2)).toNat

end

end A271319.P11966031781455970266

noncomputable section

/-- A271319: Number of distinct prime factors of the n-th n-gonal number (A060354).

Offset 2, canonical program `A271319.P11966031781455970266`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A271319 (n : ℕ) : ℤ :=
  A271319.P11966031781455970266.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A271319.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A272008.P3020960973328718695

`(A000203(n+1)/A009194(n+1))%((n+1)/gcd(n-1-2*n, ∑{d}[n+1, #]))`
-/

namespace A272008.P3020960973328718695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ))) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.gcd ((n : ℤ) - 1 - (2 * n : ℤ)) ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) : ℚ)))

end

end A272008.P3020960973328718695

noncomputable section

/-- A272008: a(n) is the numerator of the fractional part of sigma(n)/n, where sigma(n) is the sum of the divisors of n.

Offset 1, canonical program `A272008.P3020960973328718695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272008 (n : ℕ) : ℤ :=
  A272008.P3020960973328718695.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272171.P16960674483232534523

`A000005(A004736(n+1))`
-/

namespace A272171.P16960674483232534523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004736 (n + 1)).toNat

end

end A272171.P16960674483232534523

noncomputable section

/-- A272171: Triangle read by rows: T(n,k) in which row n lists the first n terms of A000005 in reverse order.

Offset 1, canonical program `A272171.P16960674483232534523`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272171 (n : ℕ) : ℤ :=
  A272171.P16960674483232534523.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272171.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A272229.P706658860281146822

`eq[A001221(3*n+4), A001221(n+1)]+1`
-/

namespace A272229.P706658860281146822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A272229.P706658860281146822

noncomputable section

/-- A272229: Numbers n such that n and 3n+1 have the same number of distinct prime divisors.

Offset 1, canonical program `A272229.P706658860281146822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A272229 (n : ℕ) : ℤ :=
  (A272229.P706658860281146822.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A272229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272377.P3912786864071120039

`A000005(A000032(n))`
-/

namespace A272377.P3912786864071120039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000032 n).toNat

end

end A272377.P3912786864071120039

noncomputable section

/-- A272377: Number of positive divisors of A000032(n).

Offset 0, canonical program `A272377.P3912786864071120039`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272377 (n : ℕ) : ℤ :=
  A272377.P3912786864071120039.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272377.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A272872.P7782579486698380684

`lt[(n+2)%A000005(n+1), 1]+1`
-/

namespace A272872.P7782579486698380684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A000005 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A272872.P7782579486698380684

noncomputable section

/-- A272872: Numbers k such that k+1 is divisible by number of divisors of k.

Offset 1, canonical program `A272872.P7782579486698380684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272872 (n : ℕ) : ℤ :=
  (A272872.P7782579486698380684.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272896.P15057235948138467158

`A196564(2^n)-A196563(2^n)`
-/

namespace A272896.P15057235948138467158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (2 ^ n) - A196563 (2 ^ n)

end

end A272896.P15057235948138467158

noncomputable section

/-- A272896: Difference between the number of odd and even digits in the decimal expansion of 2^n.

Offset 0, canonical program `A272896.P15057235948138467158`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A196563, A196564, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A272896 (n : ℕ) : ℤ :=
  A272896.P15057235948138467158.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A196563, A196564, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A272896.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A273460.P16091352189442865612

`eq[A007954(n+1), A048050(n+1)]+1`
-/

namespace A273460.P16091352189442865612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A273460.P16091352189442865612

noncomputable section

/-- A273460: Numbers n such that sum of the divisors of n (except 1 and n) is equal to the product of the digits of n.

Offset 1, canonical program `A273460.P16091352189442865612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A273460 (n : ℕ) : ℤ :=
  (A273460.P16091352189442865612.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A273460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274612.P12827660095432405851

`filter[A043489(n+1), A168184(#)]`
-/

namespace A274612.P12827660095432405851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A274612.P12827660095432405851

noncomputable section

/-- A274612: Numbers not divisible by 10 with at least one zero but no two adjacent 0's among its decimal digits.

Offset 1, canonical program `A274612.P12827660095432405851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1539 terms. -/
def A274612 (n : ℕ) : ℤ :=
  A274612.P12827660095432405851.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1539 terms. -/
def A274612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274685.P1074266660649065575

`filter[A274397(n+1), A379952(#)]`
-/

namespace A274685.P1074266660649065575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A274685.P1074266660649065575

noncomputable section

/-- A274685: Odd numbers n such that sigma(n) is divisible by 5.

Offset 1, canonical program `A274685.P1074266660649065575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4521 terms. -/
def A274685 (n : ℕ) : ℤ :=
  A274685.P1074266660649065575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4521 terms. -/
def A274685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275202.P2888438390454499260

`A005942(n+2)/2`
-/

namespace A275202.P2888438390454499260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005942 (n + 2) : ℚ) / 2

end

end A275202.P2888438390454499260

noncomputable section

/-- A275202: Subword complexity (number of distinct blocks of length n) of the period doubling sequence A096268.

Offset 1, canonical program `A275202.P2888438390454499260`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005942, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275202 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A275202.P2888438390454499260.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005942, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275202.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275367.P11593078130365677386

`A000005(2*(n+1)²)-A000005((n+1)²)`
-/

namespace A275367.P11593078130365677386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1) ^ 2) - A000005 ((n + 1) ^ 2)

end

end A275367.P11593078130365677386

noncomputable section

/-- A275367: Number of odd divisors of n^2.

Offset 1, canonical program `A275367.P11593078130365677386`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275367 (n : ℕ) : ℤ :=
  A275367.P11593078130365677386.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275367.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275616.P14201198473443466928

`eq[1, gcd(n+1, A001221(n+1))]+1`
-/

namespace A275616.P14201198473443466928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001221 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A275616.P14201198473443466928

noncomputable section

/-- A275616: Numbers k such that k and omega(k) are relatively prime, where omega(n) (A001221) is the number of distinct prime divisors of n.

Offset 1, canonical program `A275616.P14201198473443466928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275616 (n : ℕ) : ℤ :=
  (A275616.P14201198473443466928.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276038.P2474071255086564491

`eq[A007954(n), A234959(A051801(n))]`
-/

namespace A276038.P2474071255086564491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234959 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276038.P2474071255086564491

noncomputable section

/-- A276038: Numbers n such that product of digits of n is a power of 6.

Offset 1, canonical program `A276038.P2474071255086564491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A276038 (n : ℕ) : ℤ :=
  (A276038.P2474071255086564491.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A276038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276262.P9385478510724947906

`∩[A141849(n+1), A195043(n)]`
-/

namespace A276262.P9385478510724947906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195043 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276262.P9385478510724947906

noncomputable section

/-- A276262: Centered 22-gonal primes.

Offset 1, canonical program `A276262.P9385478510724947906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A276262 (n : ℕ) : ℤ :=
  (A276262.P9385478510724947906.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A276262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276678.P1507170948591821380

`A000005(A000326(n+1))`
-/

namespace A276678.P1507170948591821380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000326 (n + 1)).toNat

end

end A276678.P1507170948591821380

noncomputable section

/-- A276678: Number of divisors of the n-th pentagonal number.

Offset 1, canonical program `A276678.P1507170948591821380`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276678 (n : ℕ) : ℤ :=
  A276678.P1507170948591821380.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276678.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276679.P3505518426421667446

`A000005(A000384(n+1))`
-/

namespace A276679.P3505518426421667446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000384 (n + 1)).toNat

end

end A276679.P3505518426421667446

noncomputable section

/-- A276679: Number of divisors of the n-th hexagonal number.

Offset 1, canonical program `A276679.P3505518426421667446`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276679 (n : ℕ) : ℤ :=
  A276679.P3505518426421667446.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276679.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276680.P15546991815700362490

`A000005(A000566(n+1))`
-/

namespace A276680.P15546991815700362490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000566 (n + 1)).toNat

end

end A276680.P15546991815700362490

noncomputable section

/-- A276680: Number of divisors of the n-th heptagonal number.

Offset 1, canonical program `A276680.P15546991815700362490`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276680 (n : ℕ) : ℤ :=
  A276680.P15546991815700362490.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276680.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276681.P5271611203890390845

`A000005(A000567(n+1))`
-/

namespace A276681.P5271611203890390845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000567 (n + 1)).toNat

end

end A276681.P5271611203890390845

noncomputable section

/-- A276681: Number of divisors of the n-th octagonal number.

Offset 1, canonical program `A276681.P5271611203890390845`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276681 (n : ℕ) : ℤ :=
  A276681.P5271611203890390845.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276681.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276682.P14610706334698834383

`A000005(A001106(n+1))`
-/

namespace A276682.P14610706334698834383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001106 (n + 1)).toNat

end

end A276682.P14610706334698834383

noncomputable section

/-- A276682: Number of divisors of the n-th 9-gonal number.

Offset 1, canonical program `A276682.P14610706334698834383`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276682 (n : ℕ) : ℤ :=
  A276682.P14610706334698834383.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276682.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276683.P1282822124416539506

`A000005(A001107(n+1))`
-/

namespace A276683.P1282822124416539506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001107 (n + 1)).toNat

end

end A276683.P1282822124416539506

noncomputable section

/-- A276683: Number of divisors of the n-th 10-gonal number.

Offset 1, canonical program `A276683.P1282822124416539506`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276683 (n : ℕ) : ℤ :=
  A276683.P1282822124416539506.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276683.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276729.P16499400846689770455

`A055642(n)-A193238(n)`
-/

namespace A276729.P16499400846689770455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n - A193238 n

end

end A276729.P16499400846689770455

noncomputable section

/-- A276729: Number of nonprime digits in the decimal expansion of n.

Offset 0, canonical program `A276729.P16499400846689770455`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, A193238, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276729 (n : ℕ) : ℤ :=
  A276729.P16499400846689770455.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, A193238, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276729.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277194.P2099939740491535609

`Δ[n²-A047809(n)]`
-/

namespace A277194.P2099939740491535609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A047809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277194.P2099939740491535609

noncomputable section

/-- A277194: Number of integers k in range [n^2, ((n+1)^2)-1] for which 4 = the least number of squares that add up to k (A002828).

Offset 0, canonical program `A277194.P2099939740491535609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 513 terms. -/
def A277194 (n : ℕ) : ℤ :=
  A277194.P2099939740491535609.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 513 terms. -/
def A277194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277216.P4779686101066146694

`A007954(A000203(n+1))`
-/

namespace A277216.P4779686101066146694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A000203 (n + 1)).toNat

end

end A277216.P4779686101066146694

noncomputable section

/-- A277216: Product of decimal digits of sum of divisors of n.

Offset 1, canonical program `A277216.P4779686101066146694`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277216 (n : ℕ) : ℤ :=
  A277216.P4779686101066146694.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277216.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277314.P8241262981008711249

`A057526(A129343(n)+1)`
-/

namespace A277314.P8241262981008711249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (A129343 n + 1).toNat

end

end A277314.P8241262981008711249

noncomputable section

/-- A277314: Number of nonzero coefficients in Stern polynomial B(n,t).

Offset 0, canonical program `A277314.P8241262981008711249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A277314 (n : ℕ) : ℤ :=
  A277314.P8241262981008711249.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A277314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277592.P12084105617845741953

`5*A277599(n+1)`
-/

namespace A277592.P12084105617845741953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A277599 (n + 1)

end

end A277592.P12084105617845741953

noncomputable section

/-- A277592: Numbers k such that k/10^m == 5 mod 10, where 10^m is the greatest power of 10 that divides n.

Offset 1, canonical program `A277592.P12084105617845741953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277592 (n : ℕ) : ℤ :=
  A277592.P12084105617845741953.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277692.P7540958945063117141

`A296066(n+1)+A032741(A026741(n))`
-/

namespace A277692.P7540958945063117141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296066 (n + 1) + A032741 (A026741 n).toNat

end

end A277692.P7540958945063117141

noncomputable section

/-- A277692: Mendelsohn-Rodney sequence: number of court balanced tournament designs that are available for a given set of teams n.

Offset 1, canonical program `A277692.P7540958945063117141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277692 (n : ℕ) : ℤ :=
  A277692.P7540958945063117141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277965.P4665117588498832647

`A007090(A337250(n+1))`
-/

namespace A277965.P4665117588498832647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A337250 (n + 1)).toNat

end

end A277965.P4665117588498832647

noncomputable section

/-- A277965: Numbers whose largest decimal digit is 3.

Offset 1, canonical program `A277965.P4665117588498832647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8057 terms. -/
def A277965 (n : ℕ) : ℤ :=
  A277965.P4665117588498832647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8057 terms. -/
def A277965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278446.P1895680114426817818

`or(a(n-1), A285543(n))-a(n-1)` with `a(0)=1`
-/

namespace A278446.P1895680114426817818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (a (n - 1)) (A285543 n) - a (n - 1)

end

end A278446.P1895680114426817818

noncomputable section

/-- A278446: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 43", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A278446.P1895680114426817818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A278446 (n : ℕ) : ℤ :=
  A278446.P1895680114426817818.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A278446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278491.P3466130709018157541

`record[(A322016(n)+1)*A322015(n+1)]`
-/

namespace A278491.P3466130709018157541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A322016 n + 1) * A322015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278491.P3466130709018157541

noncomputable section

/-- A278491: After a(0)=0, numbers n such that (A002828(1+n) = 1) and (A002828(4+n) = 4).

Offset 0, canonical program `A278491.P3466130709018157541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6145 terms. -/
def A278491 (n : ℕ) : ℤ :=
  A278491.P3466130709018157541.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6145 terms. -/
def A278491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278603.P11848414338915408695

`A065357(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A278603.P11848414338915408695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A065357 (n - 1) + a (n - 1)

end

end A278603.P11848414338915408695

noncomputable section

/-- A278603: A prime mountain: peaks and valleys beyond the origin correspond to prime abscissa (see Comments for precise definition).

Offset 0, canonical program `A278603.P11848414338915408695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278603 (n : ℕ) : ℤ :=
  A278603.P11848414338915408695.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278617.P18364928375276200259

`A084360(Δ[n²])`
-/

namespace A278617.P18364928375276200259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A278617.P18364928375276200259

noncomputable section

/-- A278617: Number of distinct odd primes less than or equal to 2n-3 that appear as a part in the partitions of 2n into two parts.

Offset 1, canonical program `A278617.P18364928375276200259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278617 (n : ℕ) : ℤ :=
  A278617.P18364928375276200259.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278996.P4006759836835331074

`A189715(n+1)-1`
-/

namespace A278996.P4006759836835331074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189715 (n + 1) - 1

end

end A278996.P4006759836835331074

noncomputable section

/-- A278996: Numbers of the form (3h+1)*3^(2k)-1 or (3h+2)*3^(2k+1)-1 for h,k in N.

Offset 1, canonical program `A278996.P4006759836835331074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278996 (n : ℕ) : ℤ :=
  A278996.P4006759836835331074.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279081.P6625978833785229983

`A000005((n+1)*(n+2)*(n+3)/6)`
-/

namespace A279081.P6625978833785229983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((n + 2 : ℚ) * ((n + 3 : ℚ) / 6)))).toNat

end

end A279081.P6625978833785229983

noncomputable section

/-- A279081: Number of divisors of the n-th tetrahedral number.

Offset 1, canonical program `A279081.P6625978833785229983`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279081 (n : ℕ) : ℤ :=
  A279081.P6625978833785229983.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279081.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A207250.P11170784498866221785

`sqrt(A206981(n+1))*sqrt(A207947(n+1))`
-/

namespace A207250.P11170784498866221785
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A206981 (n + 1) : ℝ) * Real.sqrt (A207947 (n + 1) : ℝ)

end

end A207250.P11170784498866221785

noncomputable section

/-- A207250: Number of n X 4 0..1 arrays avoiding 0 0 1 and 1 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

Offset 1, canonical program `A207250.P11170784498866221785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A207250 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A207250.P11170784498866221785.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A207250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255178.P1809111956897378111

`∑[A255182(n)]`
-/

namespace A255178.P1809111956897378111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255178.P1809111956897378111

noncomputable section

/-- A255178: Second differences of eighth powers (A001016).

Offset 0, canonical program `A255178.P1809111956897378111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255178 (n : ℕ) : ℤ :=
  A255178.P1809111956897378111.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268579.P7243601401784214145

`A319258(∑[and(1, n)+1])`
-/

namespace A268579.P7243601401784214145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319258 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268579.P7243601401784214145

noncomputable section

/-- A268579: Expansion of (1 + 6*x + x^2 + 12*x^3 - 2*x^4)/((1 - x)^4*(1 + x)^3).

Offset 0, canonical program `A268579.P7243601401784214145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A268579 (n : ℕ) : ℤ :=
  A268579.P7243601401784214145.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A268579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271894.P2446466682916937442

`A271895(n+1)/2`
-/

namespace A271894.P2446466682916937442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271895 (n + 1) : ℚ) / 2

end

end A271894.P2446466682916937442

noncomputable section

/-- A271894: Expansion of (1+x-3*x^2) / ( 1-2*x-4*x^2+6*x^3 ).

Offset 0, canonical program `A271894.P2446466682916937442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A271894 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A271894.P2446466682916937442.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A271894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204455.P9449319865665436464

`A099985(n+1)/2`
-/

namespace A204455.P9449319865665436464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099985 (n + 1) : ℚ) / 2

end

end A204455.P9449319865665436464

noncomputable section

/-- A204455: Squarefree product of all odd primes dividing n, and 1 if n is a power of 2: A099985/2.

Offset 1, canonical program `A204455.P9449319865665436464`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204455 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A204455.P9449319865665436464.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204455.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A206424.P17237868033879064005

`A109168(A006047(n))`
-/

namespace A206424.P17237868033879064005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (A006047 n).toNat

end

end A206424.P17237868033879064005

noncomputable section

/-- A206424: The number of 1's in row n of Pascal's Triangle (mod 3).

Offset 0, canonical program `A206424.P17237868033879064005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206424 (n : ℕ) : ℤ :=
  A206424.P17237868033879064005.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208903.P7218260234787230813

`A208902(n+1)-2`
-/

namespace A208903.P7218260234787230813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208902 (n + 1) - 2

end

end A208903.P7218260234787230813

noncomputable section

/-- A208903: The sum over all bitstrings b of length n with at least two runs of the number of runs in b not immediately followed by a longer run.

Offset 1, canonical program `A208903.P7218260234787230813`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A208902, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A208903 (n : ℕ) : ℤ :=
  A208903.P7218260234787230813.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A208902, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A208903.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A219097.P16650777398605658511

`A071986(2^n)`
-/

namespace A219097.P16650777398605658511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071986 (2 ^ n)

end

end A219097.P16650777398605658511

noncomputable section

/-- A219097: Parity of pi(2^n).

Offset 0, canonical program `A219097.P16650777398605658511`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071986, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219097 (n : ℕ) : ℤ :=
  A219097.P16650777398605658511.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071986, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219097.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A220314.P12330248929035524189

`A000984(n+1)-(2*(n+1))^A000720(n+1)`
-/

namespace A220314.P12330248929035524189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (n + 1) : ℚ) - (2 * (n + 1) : ℚ) ^ (A000720 (n + 1) : ℤ)

end

end A220314.P12330248929035524189

noncomputable section

/-- A220314: binomial(2n,n) - (2n)^pi(n), where pi(n) is the number of primes <= n.

Offset 1, canonical program `A220314.P12330248929035524189`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220314 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A220314.P12330248929035524189.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220314.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A220656.P9197403006323816996

`A220655(n+1)+1`
-/

namespace A220656.P9197403006323816996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220655 (n + 1) + 1

end

end A220656.P9197403006323816996

noncomputable section

/-- A220656: The positions of those permutations in A030298 where the first element is not fixed.

Offset 1, canonical program `A220656.P9197403006323816996`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A220655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220656 (n : ℕ) : ℤ :=
  A220656.P9197403006323816996.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A220655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220656.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A221205.P3574255995108441508

`round(sqrt(A006880(n)))`
-/

namespace A221205.P3574255995108441508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A006880 n : ℝ))

end

end A221205.P3574255995108441508

noncomputable section

/-- A221205: a(n) is the nearest integer to sqrt(pi(10^n)) (see A006880).

Offset 0, canonical program `A221205.P3574255995108441508`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006880, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A221205 (n : ℕ) : ℤ :=
  A221205.P3574255995108441508.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006880, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A221205.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A228121.P1458711502036451659

`A024893(n+1)+2`
-/

namespace A228121.P1458711502036451659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 1) + 2

end

end A228121.P1458711502036451659

noncomputable section

/-- A228121: Numbers n such that 3n - 4 is prime.

Offset 1, canonical program `A228121.P1458711502036451659`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024893, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228121 (n : ℕ) : ℤ :=
  A228121.P1458711502036451659.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024893, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228121.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230781.P11223862249852391792

`filter[A230780(n+1), A353815(#)]`
-/

namespace A230781.P11223862249852391792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A230781.P11223862249852391792

noncomputable section

/-- A230781: Squared radii of circles centered at a grid point in a triangular lattice hitting exactly 6 points. Squares or triple of squares that are not expressible as x^2+xy+y^2 with y > x > 0.

Offset 1, canonical program `A230781.P11223862249852391792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A230781 (n : ℕ) : ℤ :=
  A230781.P11223862249852391792.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A230781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233905.P15948617020059089414

`A264596(n)-A000120(n)`
-/

namespace A233905.P15948617020059089414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264596 n - A000120 n

end

end A233905.P15948617020059089414

noncomputable section

/-- A233905: a(2n) = a(n), a(2n+1) = a(n) + n, with a(0)=0.

Offset 0, canonical program `A233905.P15948617020059089414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233905 (n : ℕ) : ℤ :=
  A233905.P15948617020059089414.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236575.P1267155392555266441

`Δ[A000720(A013929(n+1))]`
-/

namespace A236575.P1267155392555266441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A013929 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236575.P1267155392555266441

noncomputable section

/-- A236575: Number of primes between successive numbers that are not squarefree.

Offset 1, canonical program `A236575.P1267155392555266441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236575 (n : ℕ) : ℤ :=
  A236575.P1267155392555266441.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242090.P12079019008023178367

`1/2*A242089(n+1)`
-/

namespace A242090.P12079019008023178367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A242089 (n + 1) : ℚ)

end

end A242090.P12079019008023178367

noncomputable section

/-- A242090: Number of triples (a,b,c) with 0 < a < b < c < p and a + b + c == 0 mod p, where 2*b < p = prime(n).

Offset 1, canonical program `A242090.P12079019008023178367`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A242089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A242090 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A242090.P12079019008023178367.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A242089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A242090.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A242456.P17431878854406711509

`A000142(n+2)/A007917(n+2)`
-/

namespace A242456.P17431878854406711509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 2) : ℚ) / (A007917 (n + 2) : ℚ)

end

end A242456.P17431878854406711509

noncomputable section

/-- A242456: Least number k such that n!/k is prime.

Offset 2, canonical program `A242456.P17431878854406711509`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A242456 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A242456.P17431878854406711509.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A242456.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244092.P5012121100547918818

`p?[A002144(n+1)+2*A082074(n+1)]`
-/

namespace A244092.P5012121100547918818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) + 2 * A082074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244092.P5012121100547918818

noncomputable section

/-- A244092: Primes which are the arithmetic mean of two consecutive primes of the form 4n + 1.

Offset 1, canonical program `A244092.P5012121100547918818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 585 terms. -/
def A244092 (n : ℕ) : ℤ :=
  A244092.P5012121100547918818.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 585 terms. -/
def A244092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245396.P10349761144669550165

`A007917(A249669(n+1))`
-/

namespace A245396.P10349761144669550165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A249669 (n + 1)).toNat

end

end A245396.P10349761144669550165

noncomputable section

/-- A245396: Largest prime not exceeding prime(n)^(1 + 1/n).

Offset 1, canonical program `A245396.P10349761144669550165`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, A249669, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245396 (n : ℕ) : ℤ :=
  A245396.P10349761144669550165.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, A249669, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245396.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A248962.P12892924221916097292

`A000720(A250621(n+1)+A000007(n))`
-/

namespace A248962.P12892924221916097292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A250621 (n + 1) + A000007 n).toNat

end

end A248962.P12892924221916097292

noncomputable section

/-- A248962: a(n) = PrimePi(log(prime(n))*n).

Offset 1, canonical program `A248962.P12892924221916097292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8761 terms. -/
def A248962 (n : ℕ) : ℤ :=
  A248962.P12892924221916097292.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8761 terms. -/
def A248962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249345.P5584176250624842080

`A246839(n)-∑[A027868(n)]`
-/

namespace A249345.P5584176250624842080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246839 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249345.P5584176250624842080

noncomputable section

/-- A249345: The exponent of the highest power of 5 dividing the product of the elements on the n-th row of Pascal's triangle.

Offset 0, canonical program `A249345.P5584176250624842080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A249345 (n : ℕ) : ℤ :=
  A249345.P5584176250624842080.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A249345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252477.P7231859735119608919

`A079636(n+1)-1`
-/

namespace A252477.P7231859735119608919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079636 (n + 1) - 1

end

end A252477.P7231859735119608919

noncomputable section

/-- A252477: Integer part of 1/(sqrt(prime(n+1))-sqrt(prime(n))).

Offset 1, canonical program `A252477.P7231859735119608919`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079636, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A252477 (n : ℕ) : ℤ :=
  A252477.P7231859735119608919.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079636, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A252477.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A255326.P2760968161460451827

`1+a(A066503(n))` with `a(0)=0`
-/

namespace A255326.P2760968161460451827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A066503 n).toNat

end

end A255326.P2760968161460451827

noncomputable section

/-- A255326: a(n) gives the number of steps needed to reach zero, when we start from x = n and repeatedly subtract x's squarefree kernel (A007947(x)) from it.

Offset 0, canonical program `A255326.P2760968161460451827`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255326 (n : ℕ) : ℤ :=
  (A255326.P2760968161460451827.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255326.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256605.P11334752825439384772

`A003418(n+3)/A007917(n+2)`
-/

namespace A256605.P11334752825439384772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 3) : ℚ) / (A007917 (n + 2) : ℚ)

end

end A256605.P11334752825439384772

noncomputable section

/-- A256605: Least k such that n+1 is the n-th divisor of k.

Offset 2, canonical program `A256605.P11334752825439384772`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256605 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A256605.P11334752825439384772.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256605.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260456.P8742662874947804953

`A359794(n+1)%2`
-/

namespace A260456.P8742662874947804953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359794 (n + 1)) 2

end

end A260456.P8742662874947804953

noncomputable section

/-- A260456: Infinite palindromic word (a(1),a(2),a(3),...) with initial word w(1) = 1 and midword sequence (0,null,0,null,0,null,...); see Comments.

Offset 1, canonical program `A260456.P8742662874947804953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260456 (n : ℕ) : ℤ :=
  A260456.P8742662874947804953.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261792.P15740581189978020374

`p?[A128913(n+1)-1]`
-/

namespace A261792.P15740581189978020374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128913 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261792.P15740581189978020374

noncomputable section

/-- A261792: Primes of the form k*pi(k) - 1, where pi(k) is the number of primes <= k.

Offset 1, canonical program `A261792.P15740581189978020374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 432 terms. -/
def A261792 (n : ℕ) : ℤ :=
  A261792.P15740581189978020374.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 432 terms. -/
def A261792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265127.P10114735400883052266

`4*A239885(n+1)`
-/

namespace A265127.P10114735400883052266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A239885 (n + 1)

end

end A265127.P10114735400883052266

noncomputable section

/-- A265127: a(n) = prime(n) * 2^n.

Offset 1, canonical program `A265127.P10114735400883052266`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A239885, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265127 (n : ℕ) : ℤ :=
  A265127.P10114735400883052266.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A239885, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265127.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A266288.P2981641528736582152

`∑{d}[n+1, A002324(#)*A059377((n+1)/#)]`
-/

namespace A266288.P2981641528736582152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002324 d * A059377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A266288.P2981641528736582152

noncomputable section

/-- A266288: Expansion of a(q)^2 * (c(q)/3)^3 in powers of q where a(), c() are cubic AGM theta functions.

Offset 1, canonical program `A266288.P2981641528736582152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266288 (n : ℕ) : ℤ :=
  A266288.P2981641528736582152.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273282.P4615267142029211613

`A007917(A079866(n+2))`
-/

namespace A273282.P4615267142029211613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A079866 (n + 2)).toNat

end

end A273282.P4615267142029211613

noncomputable section

/-- A273282: Largest prime not exceeding the geometric mean of all prime divisors of n counted with multiplicity.

Offset 2, canonical program `A273282.P4615267142029211613`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, A079866, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273282 (n : ℕ) : ℤ :=
  A273282.P4615267142029211613.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, A079866, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273282.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277174.P1977954027832943730

`n!*A048803(n)`
-/

namespace A277174.P1977954027832943730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A048803 n

end

end A277174.P1977954027832943730

noncomputable section

/-- A277174: a(n) = Product_{i=1..n} i*rad(i) where rad(n) = A007947(n).

Offset 0, canonical program `A277174.P1977954027832943730`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048803, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277174 (n : ℕ) : ℤ :=
  A277174.P1977954027832943730.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048803, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277174.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A203444.P8004498472754597362

`lt[0, char[A001615(n+1)]]`
-/

namespace A203444.P8004498472754597362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A203444.P8004498472754597362

noncomputable section

/-- A203444: Numbers in range of Dedekind Psi function: A001615.

Offset 1, canonical program `A203444.P8004498472754597362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2154 terms. -/
def A203444 (n : ℕ) : ℤ :=
  (A203444.P8004498472754597362.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2154 terms. -/
def A203444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203639.P16011470496757075944

`A005361(n+1)*A003557(n+1)`
-/

namespace A203639.P16011470496757075944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A003557 (n + 1)

end

end A203639.P16011470496757075944

noncomputable section

/-- A203639: Multiplicative with a(p^e) = e*p^(e-1).

Offset 1, canonical program `A203639.P16011470496757075944`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A203639 (n : ℕ) : ℤ :=
  A203639.P16011470496757075944.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A203639.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A204093.P12830992095828407750

`6*A007088(n)`
-/

namespace A204093.P12830992095828407750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A007088 n

end

end A204093.P12830992095828407750

noncomputable section

/-- A204093: Numbers whose set of base-10 digits is {0,6}.

Offset 0, canonical program `A204093.P12830992095828407750`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204093 (n : ℕ) : ℤ :=
  A204093.P12830992095828407750.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204093.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A204094.P6203249824050151500

`7*A007088(n)`
-/

namespace A204094.P6203249824050151500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A007088 n

end

end A204094.P6203249824050151500

noncomputable section

/-- A204094: Numbers whose set of base 10 digits is {0,7}.

Offset 0, canonical program `A204094.P6203249824050151500`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204094 (n : ℕ) : ℤ :=
  A204094.P6203249824050151500.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204094.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A204095.P12496041222764549128

`8*A007088(n)`
-/

namespace A204095.P12496041222764549128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A007088 n

end

end A204095.P12496041222764549128

noncomputable section

/-- A204095: Numbers whose base 10 digits are a subset of {0, 8}.

Offset 0, canonical program `A204095.P12496041222764549128`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204095 (n : ℕ) : ℤ :=
  A204095.P12496041222764549128.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204095.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A206329.P6902662214066965316

`filter[A001043(n+1), A008966(#)]`
-/

namespace A206329.P6902662214066965316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A206329.P6902662214066965316

noncomputable section

/-- A206329: Squarefree sums of 2 successive primes.

Offset 1, canonical program `A206329.P6902662214066965316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1413 terms. -/
def A206329 (n : ℕ) : ℤ :=
  A206329.P6902662214066965316.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1413 terms. -/
def A206329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206462.P3532272431253020228

`record[A000040(n+1)*A008966(A001043(n+1))]`
-/

namespace A206462.P3532272431253020228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A008966 (A001043 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206462.P3532272431253020228

noncomputable section

/-- A206462: Primes p such that p + nextprime(p) is a squarefree number (A005117).

Offset 1, canonical program `A206462.P3532272431253020228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1413 terms. -/
def A206462 (n : ℕ) : ℤ :=
  A206462.P3532272431253020228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1413 terms. -/
def A206462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212529.P13831011610352375140

`A007088(A005352(n+1))`
-/

namespace A212529.P13831011610352375140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A005352 (n + 1)).toNat

end

end A212529.P13831011610352375140

noncomputable section

/-- A212529: Negative numbers in base -2.

Offset 1, canonical program `A212529.P13831011610352375140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A212529 (n : ℕ) : ℤ :=
  A212529.P13831011610352375140.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A212529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212591.P6513515405958816910

`floor((A000695(n+1)+A000695(n))/4)`
-/

namespace A212591.P6513515405958816910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000695 (n + 1) + A000695 n : ℚ) / 4⌋

end

end A212591.P6513515405958816910

noncomputable section

/-- A212591: a(n) is the smallest value of k for which A020986(k) = n.

Offset 1, canonical program `A212591.P6513515405958816910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A212591 (n : ℕ) : ℤ :=
  A212591.P6513515405958816910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A212591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213673.P3226696509757726817

`(n²-A000695(n))/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A213673.P3226696509757726817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - A000695 n : ℚ) / 4

end

end A213673.P3226696509757726817

noncomputable section

/-- A213673: (n^2 - A000695(n))/4.

Offset 0, canonical program `A213673.P3226696509757726817`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213673 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A213673.P3226696509757726817.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213673.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214282.P2833437964249261638

`A214283(n+1)+A001405(n+1)`
-/

namespace A214282.P2833437964249261638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214283 (n + 1) + A001405 (n + 1)

end

end A214282.P2833437964249261638

noncomputable section

/-- A214282: Largest Euler characteristic of a downset on an n-dimensional cube.

Offset 1, canonical program `A214282.P2833437964249261638`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214282 (n : ℕ) : ℤ :=
  A214282.P2833437964249261638.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214282.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217856.P13198607299286411855

`eq[3, A318475(n+1)]+1`
-/

namespace A217856.P13198607299286411855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318475 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A217856.P13198607299286411855

noncomputable section

/-- A217856: Numbers with three prime factors, not necessarily distinct, except cubes of primes.

Offset 1, canonical program `A217856.P13198607299286411855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217856 (n : ℕ) : ℤ :=
  (A217856.P13198607299286411855.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227291.P15541895303528652524

`A010052(n+1)*A008966(A000196(n+1))`
-/

namespace A227291.P15541895303528652524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 1) * A008966 (A000196 (n + 1)).toNat

end

end A227291.P15541895303528652524

noncomputable section

/-- A227291: Characteristic function of squarefree numbers squared (A062503).

Offset 1, canonical program `A227291.P15541895303528652524`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A010052, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A227291 (n : ℕ) : ℤ :=
  A227291.P15541895303528652524.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A010052, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A227291.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A228071.P9444289082571793754

`A007088(n)-n`
-/

namespace A228071.P9444289082571793754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n - (n : ℤ)

end

end A228071.P9444289082571793754

noncomputable section

/-- A228071: Write n in binary and interpret as a decimal number; a(n) is this quantity minus n.

Offset 0, canonical program `A228071.P9444289082571793754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228071 (n : ℕ) : ℤ :=
  A228071.P9444289082571793754.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228071.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230542.P15479602818993290102

`lt[1, (n+2)%A000026(n+1)]+1`
-/

namespace A230542.P15479602818993290102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A000026 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A230542.P15479602818993290102

noncomputable section

/-- A230542: Numbers that cannot be divided by their multiplicative projection (A000026).

Offset 1, canonical program `A230542.P15479602818993290102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2296 terms. -/
def A230542 (n : ℕ) : ℤ :=
  (A230542.P15479602818993290102.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2296 terms. -/
def A230542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239694.P16976564839662586664

`A053829(A000040(n+1))`
-/

namespace A239694.P16976564839662586664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A000040 (n + 1)).toNat

end

end A239694.P16976564839662586664

noncomputable section

/-- A239694: Base 8 sum of digits of prime(n).

Offset 1, canonical program `A239694.P16976564839662586664`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A053829, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A239694 (n : ℕ) : ℤ :=
  A239694.P16976564839662586664.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A053829, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A239694.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244963.P8812478636684031312

`A000203(n+1)-A001615(n+1)`
-/

namespace A244963.P8812478636684031312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A001615 (n + 1)

end

end A244963.P8812478636684031312

noncomputable section

/-- A244963: a(n) = sigma(n) - n * Product_{p|n, p prime} (1 + 1/p).

Offset 1, canonical program `A244963.P8812478636684031312`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244963 (n : ℕ) : ℤ :=
  A244963.P8812478636684031312.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244963.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245802.P6380090416342982397

`eq[0, (n+1)%A053829(n+1)]+1`
-/

namespace A245802.P6380090416342982397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A053829 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A245802.P6380090416342982397

noncomputable section

/-- A245802: Numbers that are divisible by the sum of their base 8 digits.

Offset 1, canonical program `A245802.P6380090416342982397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1505 terms. -/
def A245802 (n : ℕ) : ℤ :=
  (A245802.P6380090416342982397.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1505 terms. -/
def A245802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249183.P13548390400809222770

`A007088(A249184(n))`
-/

namespace A249183.P13548390400809222770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A249184 n).toNat

end

end A249183.P13548390400809222770

noncomputable section

/-- A249183: a(n) = row n of triangle A249133, concatenated.

Offset 0, canonical program `A249183.P13548390400809222770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A249184, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A249183 (n : ℕ) : ℤ :=
  A249183.P13548390400809222770.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A249184, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A249183.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A254278.P17344502935349551101

`record[(n+2)%A187793(n+2)]`
-/

namespace A254278.P17344502935349551101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A187793 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254278.P17344502935349551101

noncomputable section

/-- A254278: Numbers that are smaller than the sum of their deficient divisors.

Offset 1, canonical program `A254278.P17344502935349551101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8454 terms. -/
def A254278 (n : ℕ) : ℤ :=
  A254278.P17344502935349551101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8454 terms. -/
def A254278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264663.P2079914734675243927

`A007088(A000108(n))`
-/

namespace A264663.P2079914734675243927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000108 n).toNat

end

end A264663.P2079914734675243927

noncomputable section

/-- A264663: Catalan numbers written in base 2.

Offset 0, canonical program `A264663.P2079914734675243927`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A264663 (n : ℕ) : ℤ :=
  A264663.P2079914734675243927.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A264663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A266809.P9129826628413284547

`A007088(A266810(n))`
-/

namespace A266809.P9129826628413284547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266810 n).toNat

end

end A266809.P9129826628413284547

noncomputable section

/-- A266809: Binary representation of the n-th iteration of the "Rule 62" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266809.P9129826628413284547`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A266810, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A266809 (n : ℕ) : ℤ :=
  A266809.P9129826628413284547.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A266810, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A266809.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A267257.P4515086165542725921

`A007088(A267258(n))`
-/

namespace A267257.P4515086165542725921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267258 n).toNat

end

end A267257.P4515086165542725921

noncomputable section

/-- A267257: Binary representation of the middle column of the "Rule 111" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267257.P4515086165542725921`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A267258, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A267257 (n : ℕ) : ℤ :=
  A267257.P4515086165542725921.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A267258, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A267257.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268383.P1822048145753504683

`n-A268382(n)`
-/

namespace A268383.P1822048145753504683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A268382 n

end

end A268383.P1822048145753504683

noncomputable section

/-- A268383: Least monotonic left inverse of A268412.

Offset 0, canonical program `A268383.P1822048145753504683`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268382, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268383 (n : ℕ) : ℤ :=
  A268383.P1822048145753504683.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268382, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268383.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A269130.P11293985648693636355

`A007088(n)+n`
-/

namespace A269130.P11293985648693636355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n + (n : ℤ)

end

end A269130.P11293985648693636355

noncomputable section

/-- A269130: a(n) = n + (n base 2 regarded as a decimal number).

Offset 0, canonical program `A269130.P11293985648693636355`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269130 (n : ℕ) : ℤ :=
  A269130.P11293985648693636355.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269130.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A274340.P5891894812331933496

`A187793(a(n-1))` with `a(0)=19`
-/

namespace A274340.P5891894812331933496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [19] fun n a =>
  A187793 (a (n - 1)).toNat

end

end A274340.P5891894812331933496

noncomputable section

/-- A274340: The period 4 sequence of the iterated sum of deficient divisors function (A187793) starting at 19.

Offset 1, canonical program `A274340.P5891894812331933496`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A187793, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274340 (n : ℕ) : ℤ :=
  A274340.P5891894812331933496.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A187793, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274340.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276049.P10431965570969386100

`p?[(n+1)*A294936(n-A294936(n+2)+1)]`
-/

namespace A276049.P10431965570969386100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A294936 ((n : ℤ) - A294936 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276049.P10431965570969386100

noncomputable section

/-- A276049: Isolated deficient numbers that are prime.

Offset 1, canonical program `A276049.P10431965570969386100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2649 terms. -/
def A276049 (n : ℕ) : ℤ :=
  A276049.P10431965570969386100.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2649 terms. -/
def A276049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278038.P15952078169272648163

`A007088(eq[0, and(n, 2*and(n, 2*n))])`
-/

namespace A278038.P15952078169272648163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * Nat.land n (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A278038.P15952078169272648163

noncomputable section

/-- A278038: Binary vectors not containing three consecutive 1's; or, representation of n in the tribonacci base.

Offset 0, canonical program `A278038.P15952078169272648163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278038 (n : ℕ) : ℤ :=
  A278038.P15952078169272648163.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278038.provenance : SequenceMachineLib.Provenance := .conjectured

