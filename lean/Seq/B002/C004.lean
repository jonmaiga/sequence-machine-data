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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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

/-! ## A271675.P7414307374982717467

`A001082(n+2)-1`
-/

namespace A271675.P7414307374982717467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 2) - 1

end

end A271675.P7414307374982717467

noncomputable section

/-- A271675: Numbers m such that 3*m + 4 is a square.

Offset 1, canonical program `A271675.P7414307374982717467`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271675 (n : ℕ) : ℤ :=
  A271675.P7414307374982717467.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271675.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A280700.P14793683405892301722

`A000120(A005187(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280700.P14793683405892301722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A005187 n).toNat

end

end A280700.P14793683405892301722

noncomputable section

/-- A280700: Binary weight of terms of A005187: a(n) = A000120(A005187(n)).

Offset 0, canonical program `A280700.P14793683405892301722`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280700 (n : ℕ) : ℤ :=
  A280700.P14793683405892301722.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280700.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A281450.P2139052333657562300

`A000045(A000984(n))`
-/

namespace A281450.P2139052333657562300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000984 n).toNat

end

end A281450.P2139052333657562300

noncomputable section

/-- A281450: a(n) = Fibonacci(binomial(2*n,n)).

Offset 0, canonical program `A281450.P2139052333657562300`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A281450 (n : ℕ) : ℤ :=
  A281450.P2139052333657562300.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A281450.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A284005.P12569247682710505975

`(1+A000120(n))*a(floor(n/2))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284005.P12569247682710505975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 + A000120 n) * a ⌊(n : ℚ) / 2⌋.toNat

end

end A284005.P12569247682710505975

noncomputable section

/-- A284005: a(0) = 1, and for n > 1, a(n) = (1 + A000120(n))*a(floor(n/2)); also a(n) = A000005(A283477(n)).

Offset 0, canonical program `A284005.P12569247682710505975`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284005 (n : ℕ) : ℤ :=
  A284005.P12569247682710505975.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284005.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A280637.P1583501028177231652

`A007953(A002522(n))`
-/

namespace A280637.P1583501028177231652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A002522 n).toNat

end

end A280637.P1583501028177231652

noncomputable section

/-- A280637: Sum of the digits of n^2+1.

Offset 0, canonical program `A280637.P1583501028177231652`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280637 (n : ℕ) : ℤ :=
  A280637.P1583501028177231652.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280637.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A212453.P13880183246629963000

`A212448(n+1)+1`
-/

namespace A212453.P13880183246629963000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212448 (n + 1) + 1

end

end A212453.P13880183246629963000

noncomputable section

/-- A212453: a(n) = ceiling(4n + log(4n)).

Offset 1, canonical program `A212453.P13880183246629963000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212453 (n : ℕ) : ℤ :=
  A212453.P13880183246629963000.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212461.P1099061354207032493

`A212457(n+1)+1`
-/

namespace A212461.P1099061354207032493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212457 (n + 1) + 1

end

end A212461.P1099061354207032493

noncomputable section

/-- A212461: a(n) = ceiling(4n*log(4n)).

Offset 1, canonical program `A212461.P1099061354207032493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212461 (n : ℕ) : ℤ :=
  A212461.P1099061354207032493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212461.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A213088.P18382071125931641229

`A209302(n+1)-1`
-/

namespace A213088.P18382071125931641229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209302 (n + 1) - 1

end

end A213088.P18382071125931641229

noncomputable section

/-- A213088: The Manhattan distance to the origin while traversing the first quadrant in a taxicab geometry.

Offset 1, canonical program `A213088.P18382071125931641229`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209302, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213088 (n : ℕ) : ℤ :=
  A213088.P18382071125931641229.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209302, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213088.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A213394.P5181858881943230254

`A000027(n+1)-A053666(n+1)`
-/

namespace A213394.P5181858881943230254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A053666 (n + 1)

end

end A213394.P5181858881943230254

noncomputable section

/-- A213394: The difference between n and the product of the digits of the n-th prime.

Offset 1, canonical program `A213394.P5181858881943230254`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213394 (n : ℕ) : ℤ :=
  A213394.P5181858881943230254.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213394.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213408.P6728982217744308874

`filter[A002654(n+1), A011558(#)]`
-/

namespace A213408.P6728982217744308874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A213408.P6728982217744308874

noncomputable section

/-- A213408: Sequence A002654 with the zero terms omitted.

Offset 1, canonical program `A213408.P6728982217744308874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A213408 (n : ℕ) : ℤ :=
  A213408.P6728982217744308874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A213408.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A213572.P13887935999869629047

`A000431(n+3)-∑[n+1]`
-/

namespace A213572.P13887935999869629047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000431 (n + 3) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213572.P13887935999869629047

noncomputable section

/-- A213572: Principal diagonal of the convolution array A213571.

Offset 1, canonical program `A213572.P13887935999869629047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A213572 (n : ℕ) : ℤ :=
  A213572.P13887935999869629047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A213572.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A213734.P14902977437505676787

`p?[A213650(n+1)]`
-/

namespace A213734.P14902977437505676787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A213734.P14902977437505676787

noncomputable section

/-- A213734: Primes in A213650.

Offset 1, canonical program `A213734.P14902977437505676787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A213734 (n : ℕ) : ℤ :=
  A213734.P14902977437505676787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A213734.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A213801.P3862981791407017782

`∑[A008264(n+1)-a(n-1)]+1` with `a(0)=3`
-/

namespace A213801.P3862981791407017782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A008264 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A213801.P3862981791407017782

noncomputable section

/-- A213801: Number of 3 X 3 0..n symmetric arrays with all rows summing to floor(n*3/2).

Offset 1, canonical program `A213801.P3862981791407017782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A213801 (n : ℕ) : ℤ :=
  A213801.P3862981791407017782.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A213801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213908.P5623755903322932494

`A103762(n+1)-n`
-/

namespace A213908.P5623755903322932494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103762 (n + 1) - (n : ℤ)

end

end A213908.P5623755903322932494

noncomputable section

/-- A213908: Minimal number of terms in the series 1/n + 1/(n+1) + 1/(n+2) + ... to obtain a sum >= 1.

Offset 1, canonical program `A213908.P5623755903322932494`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213908 (n : ℕ) : ℤ :=
  A213908.P5623755903322932494.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213908.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A214049.P6349825024405338528

`A214083(n+1)+A043545(2*n)`
-/

namespace A214049.P6349825024405338528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214083 (n + 1) + A043545 (2 * n)

end

end A214049.P6349825024405338528

noncomputable section

/-- A214049: Least m>0 such that n! <= m^3.

Offset 1, canonical program `A214049.P6349825024405338528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A214049 (n : ℕ) : ℤ :=
  A214049.P6349825024405338528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A214049.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A218327.P883947141529384446

`A014738(n)-A014493(n+1)*A014494(n+1)`
-/

namespace A218327.P883947141529384446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014738 n - A014493 (n + 1) * A014494 (n + 1)

end

end A218327.P883947141529384446

noncomputable section

/-- A218327: Even octagonal pyramidal numbers (A002414).

Offset 1, canonical program `A218327.P883947141529384446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218327 (n : ℕ) : ℤ :=
  A218327.P883947141529384446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218327.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A219390.P17150077939141016358`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219191, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219390 (n : ℕ) : ℤ :=
  A219390.P17150077939141016358.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219191, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219390.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A220465.P11455344750540427665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220465 (n : ℕ) : ℤ :=
  A220465.P11455344750540427665.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220465.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A220556.P9202644970290283826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A220556 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A220556.P9202644970290283826.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A220556.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A222715.P3900084338169479973

`∑[A005900(n+1)+(n+1)*A178946(n+1)]`
-/

namespace A222715.P3900084338169479973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 (n + 1) + (n + 1 : ℤ) * A178946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222715.P3900084338169479973

noncomputable section

/-- A222715: The number of binary pattern classes in the (2,n)-rectangular grid with 5 '1's and (2n-5) '0's: two patterns are in same class if one of them can be obtained by a reflection or 180-degree rotation of the other.

Offset 3, canonical program `A222715.P3900084338169479973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A222715 (n : ℕ) : ℤ :=
  A222715.P3900084338169479973.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A222715.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A223756.P3397043722478657849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A223756 (n : ℕ) : ℤ :=
  A223756.P3397043722478657849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A223756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224787.P11375264175183954260

`∑{d}[n+1, A120007((n+1)/#)^3]`
-/

namespace A224787.P11375264175183954260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A120007 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ 3

end

end A224787.P11375264175183954260

noncomputable section

/-- A224787: Sum of cubes of prime factors of n (counted with multiplicity).

Offset 1, canonical program `A224787.P11375264175183954260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224787 (n : ℕ) : ℤ :=
  A224787.P11375264175183954260.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224787.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A226784.P7540790382231416408

`(2*n*A212514(n+1))%(n+1)`
-/

namespace A226784.P7540790382231416408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * ((n : ℤ) * A212514 (n + 1))) (n + 1 : ℤ)

end

end A226784.P7540790382231416408

noncomputable section

/-- A226784: If gcd(n,6) != 1 then a(n)=0, otherwise a(n)=6^(-1) in Z/nZ*.

Offset 1, canonical program `A226784.P7540790382231416408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A226784 (n : ℕ) : ℤ :=
  A226784.P7540790382231416408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A226784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226787.P14628212277797661175

`abs(A131477(n)²%A001478(n+1))`
-/

namespace A226787.P14628212277797661175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A131477 n ^ 2) (A001478 (n + 1))|

end

end A226787.P14628212277797661175

noncomputable section

/-- A226787: If n=0 (mod 3) then a(n)=0, otherwise a(n)=9^(-1) in Z/nZ*.

Offset 1, canonical program `A226787.P14628212277797661175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226787 (n : ℕ) : ℤ :=
  A226787.P14628212277797661175.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226787.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A226982.P12477028334236699171

`floor(A118777(n+1)/2)`
-/

namespace A226982.P12477028334236699171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A118777 (n + 1) : ℚ) / 2⌋

end

end A226982.P12477028334236699171

noncomputable section

/-- A226982: a(n) = ceiling(n/2) - primepi(n).

Offset 1, canonical program `A226982.P12477028334236699171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226982 (n : ℕ) : ℤ :=
  A226982.P12477028334236699171.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226982.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A227990.P13507140651712075009

`val(A008864(n+1), 3)`
-/

namespace A227990.P13507140651712075009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008864 (n + 1)).toNat 3

end

end A227990.P13507140651712075009

noncomputable section

/-- A227990: 3^a(n) is the highest power of 3 dividing prime(n)+1.

Offset 1, canonical program `A227990.P13507140651712075009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227990 (n : ℕ) : ℤ :=
  (A227990.P13507140651712075009.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227990.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A228274.P108844250706599183

`∑{d}[n+1, (n+1)*A026741(#)]`
-/

namespace A228274.P108844250706599183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℤ) * A026741 d

end

end A228274.P108844250706599183

noncomputable section

/-- A228274: a(n) = Sum_{d|n, n/d odd} n * d.

Offset 1, canonical program `A228274.P108844250706599183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228274 (n : ℕ) : ℤ :=
  A228274.P108844250706599183.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228274.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 2, canonical program `A230550.P9251230265839186452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230550 (n : ℕ) : ℤ :=
  A230550.P9251230265839186452.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230550.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A230775.P17462288336970000234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230775 (n : ℕ) : ℤ :=
  A230775.P17462288336970000234.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230775.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A231507.P7530821481580684819

`record[A113646(2*n+1)-n]`
-/

namespace A231507.P7530821481580684819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113646 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231507.P7530821481580684819

noncomputable section

/-- A231507: a(n) is smallest number greater than a(n-1) such that a(n)+a(n-1) is composite.

Offset 1, canonical program `A231507.P7530821481580684819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A231507 (n : ℕ) : ℤ :=
  A231507.P7530821481580684819.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A231507.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A235497.P16290766832587102791

`A105814(n+1)+A068824(n+1)`
-/

namespace A235497.P16290766832587102791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105814 (n + 1) + A068824 (n + 1)

end

end A235497.P16290766832587102791

noncomputable section

/-- A235497: 2n concatenated with n.

Offset 1, canonical program `A235497.P16290766832587102791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235497 (n : ℕ) : ℤ :=
  A235497.P16290766832587102791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235497.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A236294.P17686924681662183359

`A220838(n+5)`
-/

namespace A236294.P17686924681662183359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220838 (n + 5)

end

end A236294.P17686924681662183359

noncomputable section

/-- A236294: a(n) = max( a(n-1) + a(n-3), 2*a(n-2) ) - a(n-4), with a(0)=1, a(1)=1, a(2)=2, a(3)=3.

Offset 0, canonical program `A236294.P17686924681662183359`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A220838, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236294 (n : ℕ) : ℤ :=
  A236294.P17686924681662183359.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A220838, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236294.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A236364.P13377447819875335470

`∑[3*A085787(n)+1]`
-/

namespace A236364.P13377447819875335470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A085787 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236364.P13377447819875335470

noncomputable section

/-- A236364: Sum of all the middle parts in the partitions of 3n into 3 parts.

Offset 1, canonical program `A236364.P13377447819875335470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236364 (n : ℕ) : ℤ :=
  A236364.P13377447819875335470.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236364.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A239668.P10235446486868174334

`A065764(n+1)-(∑{p}[n+1, #]+1)`
-/

namespace A239668.P10235446486868174334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065764 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), p + 1 : ℕ) : ℤ)

end

end A239668.P10235446486868174334

noncomputable section

/-- A239668: Sum of the composite divisors of n^2.

Offset 1, canonical program `A239668.P10235446486868174334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239668 (n : ℕ) : ℤ :=
  A239668.P10235446486868174334.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239668.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A241592.P9669127012109654097

`A220838(n+2)-char[A004771(n)]`
-/

namespace A241592.P9669127012109654097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220838 (n + 2) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A241592.P9669127012109654097

noncomputable section

/-- A241592: Degree of Somos4-oid polynomial s_n(x).

Offset 1, canonical program `A241592.P9669127012109654097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A241592 (n : ℕ) : ℤ :=
  A241592.P9669127012109654097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A241592.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A242188.P14005786775646046571

`∑[record[A005064(n+1)]*A062157(n)]`
-/

namespace A242188.P14005786775646046571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242188.P14005786775646046571

noncomputable section

/-- A242188: a(n) = Sum_{i=1..n} (-1)^(i+1) prime(i)^3.

Offset 0, canonical program `A242188.P14005786775646046571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1230 terms. -/
def A242188 (n : ℕ) : ℤ :=
  A242188.P14005786775646046571.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1230 terms. -/
def A242188.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A242481.P2656300796772830683

`A046698(A242480(n+1)-n)`
-/

namespace A242481.P2656300796772830683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (A242480 (n + 1) - (n : ℤ)).toNat

end

end A242481.P2656300796772830683

noncomputable section

/-- A242481: a(n) = ((n*(n+1)/2) mod n + sigma(n) mod n + antisigma(n) mod n) / n.

Offset 1, canonical program `A242481.P2656300796772830683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242481 (n : ℕ) : ℤ :=
  A242481.P2656300796772830683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242481.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A243717.P9128340511837324197

`A014409(n+2)-∑[n]`
-/

namespace A243717.P9128340511837324197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014409 (n + 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A243717.P9128340511837324197

noncomputable section

/-- A243717: Number of inequivalent (mod D_4) ways to place 2 nonattacking knights on an n X n board.

Offset 2, canonical program `A243717.P9128340511837324197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A243717 (n : ℕ) : ℤ :=
  A243717.P9128340511837324197.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A243717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244049.P15221357512083652868

`A153485(n+1)-n`
-/

namespace A244049.P15221357512083652868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153485 (n + 1) - (n : ℤ)

end

end A244049.P15221357512083652868

noncomputable section

/-- A244049: Sum of all proper divisors of all positive integers <= n.

Offset 1, canonical program `A244049.P15221357512083652868`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153485, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244049 (n : ℕ) : ℤ :=
  A244049.P15221357512083652868.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153485, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244049.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A244340.P781435136372845571

`abs(A235707(n+1)%A001478(n+1))`
-/

namespace A244340.P781435136372845571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A235707 (n + 1)) (A001478 (n + 1))|

end

end A244340.P781435136372845571

noncomputable section

/-- A244340: Floor( n^2*log(n) ) mod n.

Offset 1, canonical program `A244340.P781435136372845571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244340 (n : ℕ) : ℤ :=
  A244340.P781435136372845571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244340.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A245034.P11557764881920854689

`A172367(n+1)*A215848(n+1)`
-/

namespace A245034.P11557764881920854689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1) * A215848 (n + 1)

end

end A245034.P11557764881920854689

noncomputable section

/-- A245034: a(n) = prime(n)^2 - 4*prime(n).

Offset 3, canonical program `A245034.P11557764881920854689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245034 (n : ℕ) : ℤ :=
  A245034.P11557764881920854689.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245034.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A245933.P6671253405021218211

`A006337(n+15)`
-/

namespace A245933.P6671253405021218211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (n + 15)

end

end A245933.P6671253405021218211

noncomputable section

/-- A245933: Limit-reverse of A006337 (the difference sequence of Beatty sequence for sqrt(2)), with first term as initial block.

Offset 1, canonical program `A245933.P6671253405021218211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A245933 (n : ℕ) : ℤ :=
  A245933.P6671253405021218211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A245933.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A246104.P17036566817136398494

`A003258(A087172(n+1))`
-/

namespace A246104.P17036566817136398494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003258 (A087172 (n + 1)).toNat

end

end A246104.P17036566817136398494

noncomputable section

/-- A246104: Least m > 0 for which (s(m), ..., s(n+m-1)) = (s(0), ..., s(n)), the first n+1 terms of the infinite Fibonacci word A003849.

Offset 0, canonical program `A246104.P17036566817136398494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246104 (n : ℕ) : ℤ :=
  A246104.P17036566817136398494.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246140.P13755815379108080124

`A006337(n+8)`
-/

namespace A246140.P13755815379108080124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (n + 8)

end

end A246140.P13755815379108080124

noncomputable section

/-- A246140: Limiting block extension of A006337 (difference sequence of the Beatty sequence for sqrt(2)) with first term as initial block.

Offset 1, canonical program `A246140.P13755815379108080124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 550 terms. -/
def A246140 (n : ℕ) : ℤ :=
  A246140.P13755815379108080124.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 550 terms. -/
def A246140.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A247159.P16054265226077588382

`∑{d}[A100484(n+1), #]`
-/

namespace A247159.P16054265226077588382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A247159.P16054265226077588382

noncomputable section

/-- A247159: Sum of divisors of even semiprimes.

Offset 1, canonical program `A247159.P16054265226077588382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247159 (n : ℕ) : ℤ :=
  (A247159.P16054265226077588382.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247159.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A247374.P14018294318483882068

`A191386(n+3)+∑[2^n]`
-/

namespace A247374.P14018294318483882068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191386 (n + 3) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A247374.P14018294318483882068

noncomputable section

/-- A247374: Number of button presses required to try every combination of a binary combination lock with n number buttons.

Offset 1, canonical program `A247374.P14018294318483882068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A247374 (n : ℕ) : ℤ :=
  A247374.P14018294318483882068.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A247374.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A248643.P11968578012338498971

`A053650(n+1)-A071099(n)`
-/

namespace A248643.P11968578012338498971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053650 (n + 1) - A071099 n

end

end A248643.P11968578012338498971

noncomputable section

/-- A248643: a(n) = phi(2^n) - phi(n^2), with Euler's totient function phi = A000010.

Offset 1, canonical program `A248643.P11968578012338498971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A248643 (n : ℕ) : ℤ :=
  A248643.P11968578012338498971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A248643.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A249071.P9209328397963723985

`A004526(A004074(2*(n+1)))`
-/

namespace A249071.P9209328397963723985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004074 (2 * (n + 1))).toNat

end

end A249071.P9209328397963723985

noncomputable section

/-- A249071: a(n) = A004001(2*n) - n, where A004001 is Hofstadter-Conway $10000 sequence.

Offset 1, canonical program `A249071.P9209328397963723985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A249071 (n : ℕ) : ℤ :=
  A249071.P9209328397963723985.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A249071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249142.P5683150773963708471

`A068527(A080883(n)-1)`
-/

namespace A249142.P5683150773963708471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A080883 n - 1).toNat

end

end A249142.P5683150773963708471

noncomputable section

/-- A249142: Let k be the difference between the smallest square >= n and n. Sequence gives difference between the smallest square >= k and k.

Offset 1, canonical program `A249142.P5683150773963708471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249142 (n : ℕ) : ℤ :=
  A249142.P5683150773963708471.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249142.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A249728.P8976673975456800970

`∑[char[A061536(n+1)]]+1`
-/

namespace A249728.P8976673975456800970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061536 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A249728.P8976673975456800970

noncomputable section

/-- A249728: After a(1) = 1 each n appears A000720(n) times.

Offset 1, canonical program `A249728.P8976673975456800970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249728 (n : ℕ) : ℤ :=
  (A249728.P8976673975456800970.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249728.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A250222.P10068507283235786758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A250222 (n : ℕ) : ℤ :=
  A250222.P10068507283235786758.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A250222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250337.P11402605938923335163

`(n+2)^6-A250015(n+1)`
-/

namespace A250337.P11402605938923335163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 6 : ℤ) - A250015 (n + 1)

end

end A250337.P11402605938923335163

noncomputable section

/-- A250337: Number of length 1+5 0..n arrays with every six consecutive terms having the maximum of some three terms equal to the minimum of the remaining three terms.

Offset 1, canonical program `A250337.P11402605938923335163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250337 (n : ℕ) : ℤ :=
  A250337.P11402605938923335163.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250337.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A250623.P3707548778749929836`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A050502, A250621, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A250623 (n : ℕ) : ℤ :=
  A250623.P3707548778749929836.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A050502, A250621, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

/-! ## A253681.P8863297327921336173

`A253680(n+1)²`
-/

namespace A253681.P8863297327921336173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253680 (n + 1) ^ 2

end

end A253681.P8863297327921336173

noncomputable section

/-- A253681: Integer squares c^2 that are equal to the sum of an odd number M of consecutive cubed integers b^3 + (b+1)^3 + ... + (b+M-1)^3 = c^2 starting at b(n) (A253679).

Offset 1, canonical program `A253681.P8863297327921336173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253681 (n : ℕ) : ℤ :=
  A253681.P8863297327921336173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253681.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A253936.P6773095252791363139

`A000040(n+A007652(n+1)+1)`
-/

namespace A253936.P6773095252791363139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n : ℤ) + A007652 (n + 1) + 1).toNat

end

end A253936.P6773095252791363139

noncomputable section

/-- A253936: a(n) = prime(n + (prime(n) mod 10)).

Offset 1, canonical program `A253936.P6773095252791363139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007652, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253936 (n : ℕ) : ℤ :=
  A253936.P6773095252791363139.a (n - 1)

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

/-! ## A255683.P11508368181726655066

`A000120(n+1)*A003817(n+1)`
-/

namespace A255683.P11508368181726655066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) * A003817 (n + 1)

end

end A255683.P11508368181726655066

noncomputable section

/-- A255683: Sum of the binary numbers whose digits are cyclic permutations of the binary expansion of n.

Offset 1, canonical program `A255683.P11508368181726655066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A255683 (n : ℕ) : ℤ :=
  A255683.P11508368181726655066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A255683.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A256276.P17919701624986751523

`(n+1)%3*A002654(n+1)`
-/

namespace A256276.P17919701624986751523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 3 : ℕ) : ℤ) * A002654 (n + 1)

end

end A256276.P17919701624986751523

noncomputable section

/-- A256276: Expansion of q * phi(q) * chi(q^3) * psi(-q^9) in powers of q where phi(), psi(), chi() are Ramanujan theta functions.

Offset 1, canonical program `A256276.P17919701624986751523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256276 (n : ℕ) : ℤ :=
  A256276.P17919701624986751523.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256276.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A256785.P5991345614237837728

`eq[2, A107279(A244040(2*n))]`
-/

namespace A256785.P5991345614237837728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A244040 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256785.P5991345614237837728

noncomputable section

/-- A256785: Numbers n such that digitsum(n) is a whole number when n is represented in the fractional base 1.5 = 3/2.

Offset 1, canonical program `A256785.P5991345614237837728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A256785 (n : ℕ) : ℤ :=
  (A256785.P5991345614237837728.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A256785.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A258143.P11364511482062354094

`A014495(n+1-and(1, n))+2^n`
-/

namespace A258143.P11364511482062354094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (n + 1 - Nat.land 1 n) + (2 ^ n : ℤ)

end

end A258143.P11364511482062354094

noncomputable section

/-- A258143: Row sums of A257241, Stifel's version of the arithmetical triangle.

Offset 1, canonical program `A258143.P11364511482062354094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A258143 (n : ℕ) : ℤ :=
  A258143.P11364511482062354094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A258143.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A259251.P18427139595249200234

`A053716(∑{d}[n+1, #])`
-/

namespace A259251.P18427139595249200234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053716 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A259251.P18427139595249200234

noncomputable section

/-- A259251: a(n) = 1 + sigma(n) + sigma(n)^2 + sigma(n)^3 + sigma(n)^4 + sigma(n)^5 + sigma(n)^6.

Offset 1, canonical program `A259251.P18427139595249200234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3119 terms. -/
def A259251 (n : ℕ) : ℤ :=
  A259251.P18427139595249200234.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3119 terms. -/
def A259251.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A261128.P4897034755433582840

`A053716(n!)`
-/

namespace A261128.P4897034755433582840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053716 (Nat.factorial n)

end

end A261128.P4897034755433582840

noncomputable section

/-- A261128: Cyclotomic polynomial value Phi(7,n!).

Offset 0, canonical program `A261128.P4897034755433582840`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261128 (n : ℕ) : ℤ :=
  A261128.P4897034755433582840.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261128.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A262186.P12115085822725734353

`A030078(n+1)-(n+1)^3`
-/

namespace A262186.P12115085822725734353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) - ((n + 1) ^ 3 : ℤ)

end

end A262186.P12115085822725734353

noncomputable section

/-- A262186: a(n) = prime(n)^3 - n^3.

Offset 1, canonical program `A262186.P12115085822725734353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262186 (n : ℕ) : ℤ :=
  A262186.P12115085822725734353.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262209.P6934688457999335665

`∑{d}[n+1, A002654(#)]`
-/

namespace A262209.P6934688457999335665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d

end

end A262209.P6934688457999335665

noncomputable section

/-- A262209: Inverse Möbius transform of A002654.

Offset 1, canonical program `A262209.P6934688457999335665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262209 (n : ℕ) : ℤ :=
  A262209.P6934688457999335665.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262287.P12190766233230351271

`p?[A004758(n+1)]`
-/

namespace A262287.P12190766233230351271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262287.P12190766233230351271

noncomputable section

/-- A262287: Primes whose binary expansion begins 110.

Offset 1, canonical program `A262287.P12190766233230351271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1033 terms. -/
def A262287 (n : ℕ) : ℤ :=
  A262287.P12190766233230351271.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1033 terms. -/
def A262287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262610.P17210216451198933661

`∑[Δ[A245092(n)]-A001057(n)]`
-/

namespace A262610.P17210216451198933661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262610.P17210216451198933661

noncomputable section

/-- A262610: The values of sigma function (A000203) and the positive integers interleaved.

Offset 1, canonical program `A262610.P17210216451198933661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262610 (n : ℕ) : ℤ :=
  A262610.P17210216451198933661.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262685.P6512370385821566498

`∑[gcd(2, A036459(n+1))-1]`
-/

namespace A262685.P6512370385821566498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A036459 (n + 1)) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262685.P6512370385821566498

noncomputable section

/-- A262685: Least monotonic left inverse for A182859.

Offset 1, canonical program `A262685.P6512370385821566498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262685 (n : ℕ) : ℤ :=
  A262685.P6512370385821566498.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262685.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A264724.P12528243406351577182

`A121048(n+1)+n²+n`
-/

namespace A264724.P12528243406351577182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1) + (n ^ 2 + n : ℤ)

end

end A264724.P12528243406351577182

noncomputable section

/-- A264724: a(n) = n^2 + phi(n).

Offset 1, canonical program `A264724.P12528243406351577182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264724 (n : ℕ) : ℤ :=
  A264724.P12528243406351577182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264724.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A265917.P4246396207036222195

`floor(∑[A209229(n+1)]/A000120(n+1))`
-/

namespace A265917.P4246396207036222195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000120 (n + 1) : ℚ)⌋

end

end A265917.P4246396207036222195

noncomputable section

/-- A265917: a(n) = floor(A070939(n)/A000120(n)) where A070939(n) is the binary length of n and A000120(n) is the binary weight of n.

Offset 1, canonical program `A265917.P4246396207036222195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265917 (n : ℕ) : ℤ :=
  A265917.P4246396207036222195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265917.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A266109.P11839070490572607826

`A087686(n+2)+comp[A087686(n+1)]`
-/

namespace A266109.P11839070490572607826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087686 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087686 (n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A266109.P11839070490572607826

noncomputable section

/-- A266109: a(n) = A087686(1+A188163(n)); second column of A265901, second row of A265903.

Offset 1, canonical program `A266109.P11839070490572607826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A266109 (n : ℕ) : ℤ :=
  A266109.P11839070490572607826.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A266109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266188.P4854341864644204876

`A087686(n+1)-n`
-/

namespace A266188.P4854341864644204876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087686 (n + 1) - (n : ℤ)

end

end A266188.P4854341864644204876

noncomputable section

/-- A266188: a(n) = A004001(A087686(n)).

Offset 1, canonical program `A266188.P4854341864644204876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266188 (n : ℕ) : ℤ :=
  A266188.P4854341864644204876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266188.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A266349.P3095227349987421299

`∑[Δ[A053644(n)]-A093879(n+1)]`
-/

namespace A266349.P3095227349987421299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A093879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266349.P3095227349987421299

noncomputable section

/-- A266349: a(n) = 1 + A053644(n) - A004001(n+1) = 1 + A072376(n) - A266348(n).

Offset 1, canonical program `A266349.P3095227349987421299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266349 (n : ℕ) : ℤ :=
  A266349.P3095227349987421299.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266399.P4306058302541622465

`A088359(A088359(n+1)-1)`
-/

namespace A266399.P4306058302541622465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088359 (A088359 (n + 1) - 1).toNat

end

end A266399.P4306058302541622465

noncomputable section

/-- A266399: a(n) = A188163(A088359(n)); positions where A004001 obtains unique values.

Offset 1, canonical program `A266399.P4306058302541622465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5373 terms. -/
def A266399 (n : ℕ) : ℤ :=
  A266399.P4306058302541622465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5373 terms. -/
def A266399.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A266640.P10532561522276298160

`A087686(A080677(n+1)+1)-(n+1)`
-/

namespace A266640.P10532561522276298160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087686 (A080677 (n + 1) + 1).toNat - (n + 1 : ℤ)

end

end A266640.P10532561522276298160

noncomputable section

/-- A266640: Reversed reduced frequency counts for A004001: a(n) = A265754(A054429(n)).

Offset 1, canonical program `A266640.P10532561522276298160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A266640 (n : ℕ) : ℤ :=
  A266640.P10532561522276298160.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A266640.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A266843.P15807973679981638370

`A266502(n-2*A196199(n))`
-/

namespace A266843.P15807973679981638370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266502 ((n : ℤ) - 2 * A196199 n).toNat

end

end A266843.P15807973679981638370

noncomputable section

/-- A266843: Triangle read by rows giving successive states of cellular automaton generated by "Rule 70" initiated with a single ON (black) cell.

Offset 0, canonical program `A266843.P15807973679981638370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266843 (n : ℕ) : ℤ :=
  A266843.P15807973679981638370.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266843.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A267050.P6583964261662905485

`or(A266502(n), A267006(n))`
-/

namespace A267050.P6583964261662905485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266502 n) (A267006 n)

end

end A267050.P6583964261662905485

noncomputable section

/-- A267050: Triangle read by rows giving successive states of cellular automaton generated by "Rule 92" initiated with a single ON (black) cell.

Offset 0, canonical program `A267050.P6583964261662905485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267050 (n : ℕ) : ℤ :=
  A267050.P6583964261662905485.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267050.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A267084.P18331633137171553720

`A225804(n+1)-A060620(n+1)`
-/

namespace A267084.P18331633137171553720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225804 (n + 1) - A060620 (n + 1)

end

end A267084.P18331633137171553720

noncomputable section

/-- A267084: a(n) = ceiling(A007504(n)/n) - floor(A007504(n)/n); a(n) is 0 if n divides the sum of first n primes, 1 otherwise.

Offset 1, canonical program `A267084.P18331633137171553720`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060620, A225804, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A267084 (n : ℕ) : ℤ :=
  A267084.P18331633137171553720.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060620, A225804, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A267084.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A267538.P10229037407533658569

`or(10*a(n-1), A086694(A053644(n)))` with `a(0)=1`
-/

namespace A267538.P10229037407533658569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A086694 (A053644 n).toNat)

end

end A267538.P10229037407533658569

noncomputable section

/-- A267538: Binary representation of the middle column of the "Rule 143" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267538.P10229037407533658569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267538 (n : ℕ) : ℤ :=
  A267538.P10229037407533658569.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267538.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A267778.P18033994300650970323

`1-A267006(A266502(n)+n)`
-/

namespace A267778.P18033994300650970323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A267006 (A266502 n + (n : ℤ)).toNat

end

end A267778.P18033994300650970323

noncomputable section

/-- A267778: Triangle read by rows giving successive states of cellular automaton generated by "Rule 211" initiated with a single ON (black) cell.

Offset 0, canonical program `A267778.P18033994300650970323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267778 (n : ℕ) : ℤ :=
  A267778.P18033994300650970323.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267778.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A269024.P10444327362628611874

`A269020(n+1)%(n+1)`
-/

namespace A269024.P10444327362628611874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269020 (n + 1)) (n + 1 : ℤ)

end

end A269024.P10444327362628611874

noncomputable section

/-- A269024: a(n) = A269020(n) - n.

Offset 1, canonical program `A269024.P10444327362628611874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269024 (n : ℕ) : ℤ :=
  A269024.P10444327362628611874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269024.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A269608.P5096382214916858806

`A268459(n+1)-∑[A017341(n)]`
-/

namespace A269608.P5096382214916858806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268459 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269608.P5096382214916858806

noncomputable section

/-- A269608: Number of length-5 0..n arrays with no repeated value differing from the previous repeated value by one or less.

Offset 1, canonical program `A269608.P5096382214916858806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269608 (n : ℕ) : ℤ :=
  A269608.P5096382214916858806.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269608.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A272170.P13041691333987525323

`floor(A255875(n+1)/A255919(n+3))`
-/

namespace A272170.P13041691333987525323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A255875 (n + 1) : ℚ) / (A255919 (n + 3) : ℚ)⌋

end

end A272170.P13041691333987525323

noncomputable section

/-- A272170: Second most significant bit of Fibonacci numbers > 1 written in base 2.

Offset 3, canonical program `A272170.P13041691333987525323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A272170 (n : ℕ) : ℤ :=
  A272170.P13041691333987525323.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A272170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272171.P282174506312961864

`∏{e}[A004736(n+1), #+1]`
-/

namespace A272171.P282174506312961864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A272171.P282174506312961864

noncomputable section

/-- A272171: Triangle read by rows: T(n,k) in which row n lists the first n terms of A000005 in reverse order.

Offset 1, canonical program `A272171.P282174506312961864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272171 (n : ℕ) : ℤ :=
  (A272171.P282174506312961864.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272172.P6650418045185424072

`∑{d}[A004736(n+1), #]`
-/

namespace A272172.P6650418045185424072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A272172.P6650418045185424072

noncomputable section

/-- A272172: Triangle read by rows: T(n,k) in which row n lists the first n terms of A000203 in reverse order.

Offset 1, canonical program `A272172.P6650418045185424072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272172 (n : ℕ) : ℤ :=
  (A272172.P6650418045185424072.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272172.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A272206.P16055460093111779160

`round(A014285(n+1)/∑[A000040(n+1)])`
-/

namespace A272206.P16055460093111779160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A014285 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ))

end

end A272206.P16055460093111779160

noncomputable section

/-- A272206: Rounded barycenter of first n primes defined as a(n) = round(sum_{i=1..n}(i*prime(i)) / sum_{i=1..n}prime(i)).

Offset 1, canonical program `A272206.P16055460093111779160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272206 (n : ℕ) : ℤ :=
  A272206.P16055460093111779160.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272206.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A273348.P7248465168665721304

`A001792(n)+∑[A172481(n)]`
-/

namespace A273348.P7248465168665721304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273348.P7248465168665721304

noncomputable section

/-- A273348: The sum of the semiperimeters of the bargraphs of area n (n>=1).

Offset 1, canonical program `A273348.P7248465168665721304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A273348 (n : ℕ) : ℤ :=
  A273348.P7248465168665721304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A273348.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A274140.P6858810271729917994

`A090341(n+1)-∑[A090341(n+1)]`
-/

namespace A274140.P6858810271729917994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090341 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274140.P6858810271729917994

noncomputable section

/-- A274140: Sum of primes dividing n-th triangular number, counted with multiplicity.

Offset 1, canonical program `A274140.P6858810271729917994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274140 (n : ℕ) : ℤ :=
  A274140.P6858810271729917994.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274140.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A274489.P4187476448879453367

`ceil(A132408(n+1)/2)-1`
-/

namespace A274489.P4187476448879453367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132408 (n + 1) : ℚ) / 2⌉ - 1

end

end A274489.P4187476448879453367

noncomputable section

/-- A274489: a(n) = floor(sinh(n) / n^2).

Offset 1, canonical program `A274489.P4187476448879453367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A274489 (n : ℕ) : ℤ :=
  A274489.P4187476448879453367.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A274489.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A275699.P10065600547321136272

`∑{e}[A013929(n+1), #-1]`
-/

namespace A275699.P10065600547321136272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A275699.P10065600547321136272

noncomputable section

/-- A275699: Excess of numbers that are not squarefree.

Offset 1, canonical program `A275699.P10065600547321136272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275699 (n : ℕ) : ℤ :=
  A275699.P10065600547321136272.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275966.P4192951619174800952

`∑{d}[n+1, A002654(#)*A007427((n+1)/#)]`
-/

namespace A275966.P4192951619174800952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A275966.P4192951619174800952

noncomputable section

/-- A275966: a(n) is the real part of -I*Sum_{d|n}(mobius(d)*I^(n/d)), I=sqrt(-1), mobius(n) is A008683.

Offset 1, canonical program `A275966.P4192951619174800952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275966 (n : ℕ) : ℤ :=
  A275966.P4192951619174800952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275966.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A276736.P6839819516574191289

`lcm(n+1, A007429(n+1))/(n+1)`
-/

namespace A276736.P6839819516574191289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A007429 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A276736.P6839819516574191289

noncomputable section

/-- A276736: a(n) = numerator of Sum_{d|n} tau(d)/d.

Offset 1, canonical program `A276736.P6839819516574191289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276736 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A276736.P6839819516574191289.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276737.P10584001989765576024

`(n+1)/gcd(n+1, A007429(n+1))`
-/

namespace A276737.P10584001989765576024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A007429 (n + 1)) : ℚ)

end

end A276737.P10584001989765576024

noncomputable section

/-- A276737: a(n) = denominator of Sum_{d|n} tau(d)/d.

Offset 1, canonical program `A276737.P10584001989765576024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276737 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A276737.P10584001989765576024.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276862.P5228214510979501905

`1+A006337(n+1)`
-/

namespace A276862.P5228214510979501905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A006337 (n + 1)

end

end A276862.P5228214510979501905

noncomputable section

/-- A276862: First differences of the Beatty sequence A003151 for 1 + sqrt(2).

Offset 1, canonical program `A276862.P5228214510979501905`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006337, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276862 (n : ℕ) : ℤ :=
  A276862.P5228214510979501905.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006337, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276862.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276863.P14235469209385164231

`A188187(n+1)+3`
-/

namespace A276863.P14235469209385164231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188187 (n + 1) + 3

end

end A276863.P14235469209385164231

noncomputable section

/-- A276863: First differences of the Beatty sequence A276854 for 1 + sqrt(5).

Offset 1, canonical program `A276863.P14235469209385164231`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A188187, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276863 (n : ℕ) : ℤ :=
  A276863.P14235469209385164231.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A188187, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276863.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276864.P12212683155294600506

`abs(Δ[A001951(n)]+2)`
-/

namespace A276864.P12212683155294600506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + 2|

end

end A276864.P12212683155294600506

noncomputable section

/-- A276864: First differences of the Beatty sequence A001952 for 2 + sqrt(2).

Offset 1, canonical program `A276864.P12212683155294600506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276864 (n : ℕ) : ℤ :=
  A276864.P12212683155294600506.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276864.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A277327.P2410345354115847540

`A277314(or(1, n))-∏{e}[and(n+1, -n), #]`
-/

namespace A277327.P2410345354115847540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277314 (Nat.lor 1 n) - ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A277327.P2410345354115847540

noncomputable section

/-- A277327: Number of distinct primes dividing gcd(A260443(n), A260443(n+1)): a(n) = A001221(A277198(n)).

Offset 0, canonical program `A277327.P2410345354115847540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277327 (n : ℕ) : ℤ :=
  A277327.P2410345354115847540.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277368.P2770458880963617441

`eq[0, A160550(n+1)]+1`
-/

namespace A277368.P2770458880963617441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160550 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277368.P2770458880963617441

noncomputable section

/-- A277368: Numbers such that the number of their divisors divide the sum of their aliquot parts.

Offset 1, canonical program `A277368.P2770458880963617441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A277368 (n : ℕ) : ℤ :=
  (A277368.P2770458880963617441.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A277368.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A277645.P11537594925186816666

`A022840(n+1)+3*(n+1)`
-/

namespace A277645.P11537594925186816666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022840 (n + 1) + (3 * (n + 1) : ℤ)

end

end A277645.P11537594925186816666

noncomputable section

/-- A277645: Beatty sequence for 3+sqrt(6).

Offset 1, canonical program `A277645.P11537594925186816666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277645 (n : ℕ) : ℤ :=
  A277645.P11537594925186816666.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277645.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A278647.P12690470526946050067

`A009003(n+2)-A009003(n+1)`
-/

namespace A278647.P12690470526946050067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 2) - A009003 (n + 1)

end

end A278647.P12690470526946050067

noncomputable section

/-- A278647: First differences of Hypotenuse numbers A009003.

Offset 1, canonical program `A278647.P12690470526946050067`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278647 (n : ℕ) : ℤ :=
  A278647.P12690470526946050067.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278647.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A279557.P14817192244775272998

`∑[A099376(abs(1-n))]`
-/

namespace A279557.P14817192244775272998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279557.P14817192244775272998

noncomputable section

/-- A279557: Number of length n inversion sequences avoiding the patterns 110, 120, and 021.

Offset 0, canonical program `A279557.P14817192244775272998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A279557 (n : ℕ) : ℤ :=
  A279557.P14817192244775272998.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A279557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279561.P4289259103180755608

`∑[A001791(abs(1-n))]`
-/

namespace A279561.P4289259103180755608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279561.P4289259103180755608

noncomputable section

/-- A279561: Number of length n inversion sequences avoiding the patterns 101, 102, 201, and 210.

Offset 0, canonical program `A279561.P4289259103180755608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A279561 (n : ℕ) : ℤ :=
  A279561.P4289259103180755608.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A279561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279607.P18326851773898549082

`ceil(A184589(n+1)/2)`
-/

namespace A279607.P18326851773898549082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A184589 (n + 1) : ℚ) / 2⌉

end

end A279607.P18326851773898549082

noncomputable section

/-- A279607: Beatty sequence for e/2; i.e., a(n) = floor(n*e/2).

Offset 1, canonical program `A279607.P18326851773898549082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279607 (n : ℕ) : ℤ :=
  A279607.P18326851773898549082.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279735.P6571742376258623597

`A006367(Δ[n²])`
-/

namespace A279735.P6571742376258623597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A279735.P6571742376258623597

noncomputable section

/-- A279735: Number of n X 2 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

Offset 1, canonical program `A279735.P6571742376258623597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A279735 (n : ℕ) : ℤ :=
  A279735.P6571742376258623597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A279735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279882.P5085618674870066561

`A000225(A008864(n+1))`
-/

namespace A279882.P5085618674870066561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A008864 (n + 1)).toNat

end

end A279882.P5085618674870066561

noncomputable section

/-- A279882: a(n) = 2^(prime(n) + 1) - 1.

Offset 1, canonical program `A279882.P5085618674870066561`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279882 (n : ℕ) : ℤ :=
  A279882.P5085618674870066561.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279882.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A279913.P10448204860853440387

`A002283(n+1)-A061601(n+1)`
-/

namespace A279913.P10448204860853440387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (n + 1) - A061601 (n + 1)

end

end A279913.P10448204860853440387

noncomputable section

/-- A279913: Largest n-digit number ending in n.

Offset 1, canonical program `A279913.P10448204860853440387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A279913 (n : ℕ) : ℤ :=
  A279913.P10448204860853440387.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A279913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279929.P8314140879303540729

`A131944(n+1)%A080322(n+2)`
-/

namespace A279929.P8314140879303540729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131944 (n + 1)) (A080322 (n + 2))

end

end A279929.P8314140879303540729

noncomputable section

/-- A279929: Expansion of c(q)*c(q^2)/9 - c(q^3)*c(q^6)/3 in powers of q where c() is a cubic AGM theta function.

Offset 1, canonical program `A279929.P8314140879303540729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279929 (n : ℕ) : ℤ :=
  A279929.P8314140879303540729.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280077.P17597455334426451579

`∑[A007429(n+1)]`
-/

namespace A280077.P17597455334426451579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280077.P17597455334426451579

noncomputable section

/-- A280077: Partial sums of A007429 (Sum_{d|n} sigma(d)).

Offset 1, canonical program `A280077.P17597455334426451579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280077 (n : ℕ) : ℤ :=
  A280077.P17597455334426451579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280085.P11023069278118658947

`∑[A206032(n+1)]`
-/

namespace A280085.P11023069278118658947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280085.P11023069278118658947

noncomputable section

/-- A280085: Partial sums of A206032 (Product_{d|n} sigma(d)).

Offset 1, canonical program `A280085.P11023069278118658947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A280085 (n : ℕ) : ℤ :=
  A280085.P11023069278118658947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A280085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280247.P5390597219215679512

`∑[A280246(n+1)]`
-/

namespace A280247.P5390597219215679512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280247.P5390597219215679512

noncomputable section

/-- A280247: Partial sums of A280246 (Product_{d|n} psi(d)).

Offset 1, canonical program `A280247.P5390597219215679512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1679 terms. -/
def A280247 (n : ℕ) : ℤ :=
  A280247.P5390597219215679512.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1679 terms. -/
def A280247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280569.P16408018769860519565

`gcd(2, A250120(n))/(-1)^n`
-/

namespace A280569.P16408018769860519565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A250120 n) : ℚ) / ((-1) ^ n : ℚ)

end

end A280569.P16408018769860519565

noncomputable section

/-- A280569: a(n) = (-1)^n * 2 if n = 5*k and n!=0, otherwise a(n) = (-1)^n.

Offset 0, canonical program `A280569.P16408018769860519565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280569 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A280569.P16408018769860519565.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280706.P15409076620470328915

`∑[A005185(A239913(n+1)+1)]`
-/

namespace A280706.P15409076620470328915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A239913 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280706.P15409076620470328915

noncomputable section

/-- A280706: a(n) = Sum_{k=1..n} q(k+1-q(k)), where q(k) = A005185(k); partial sums of A283467.

Offset 1, canonical program `A280706.P15409076620470328915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280706 (n : ℕ) : ℤ :=
  A280706.P15409076620470328915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280965.P11828091217461109387

`∩[A256173(n+1), A263651(n+1)]`
-/

namespace A280965.P11828091217461109387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280965.P11828091217461109387

noncomputable section

/-- A280965: Nonsquares whose distances to the two nearest squares are squares.

Offset 1, canonical program `A280965.P11828091217461109387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. -/
def A280965 (n : ℕ) : ℤ :=
  (A280965.P11828091217461109387.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. -/
def A280965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280995.P6106047691923245664

`A003188(n)-A055945(A003188(n))`
-/

namespace A280995.P6106047691923245664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n - A055945 (A003188 n).toNat

end

end A280995.P6106047691923245664

noncomputable section

/-- A280995: a(n) is the number produced when n is converted to binary reflected Gray code, the binary digits are reversed and the code is converted back to decimal.

Offset 0, canonical program `A280995.P6106047691923245664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280995 (n : ℕ) : ℤ :=
  A280995.P6106047691923245664.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281018.P7272843195360736797

`∩[A281015(n+1), A281017(n+1)]`
-/

namespace A281018.P7272843195360736797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281018.P7272843195360736797

noncomputable section

/-- A281018: Numbers with a prime number of dots and a prime number of dashes in their International Morse numeral representation.

Offset 1, canonical program `A281018.P7272843195360736797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1704 terms. -/
def A281018 (n : ℕ) : ℤ :=
  (A281018.P7272843195360736797.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1704 terms. -/
def A281018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281050.P15094595003626402173

`record[A000035(n)*A055243(A052928(n))]`
-/

namespace A281050.P15094595003626402173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A055243 (A052928 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281050.P15094595003626402173

noncomputable section

/-- A281050: Number of n X 2 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

Offset 1, canonical program `A281050.P15094595003626402173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A281050 (n : ℕ) : ℤ :=
  A281050.P15094595003626402173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A281050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281199.P10272472224117840655

`A166336(n)-1`
-/

namespace A281199.P10272472224117840655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166336 n - 1

end

end A281199.P10272472224117840655

noncomputable section

/-- A281199: Number of n X 2 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

Offset 1, canonical program `A281199.P10272472224117840655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A281199 (n : ℕ) : ℤ :=
  A281199.P10272472224117840655.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A281199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281200.P17871408107867168491

`(A004277(3*n)+n)*2^n`
-/

namespace A281200.P17871408107867168491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 (3 * n) + (n : ℤ)) * (2 ^ n : ℤ)

end

end A281200.P17871408107867168491

noncomputable section

/-- A281200: Number of n X 3 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

Offset 1, canonical program `A281200.P17871408107867168491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. -/
def A281200 (n : ℕ) : ℤ :=
  A281200.P17871408107867168491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. -/
def A281200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281206.P5937654758335153391

`2*(A029907((n+1)%(n^4+1))+A001911(n))`
-/

namespace A281206.P5937654758335153391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A029907 ((n + 1) % (n ^ 4 + 1)) + A001911 n)

end

end A281206.P5937654758335153391

noncomputable section

/-- A281206: Number of 2 X n 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

Offset 1, canonical program `A281206.P5937654758335153391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A281206 (n : ℕ) : ℤ :=
  A281206.P5937654758335153391.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A281206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281292.P10672042603538441158

`∪[2*A280084(n+1), A280084(n+1)]`
-/

namespace A281292.P10672042603538441158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A280084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A281292.P10672042603538441158

noncomputable section

/-- A281292: Squarefree numbers that are the sum of two squares in exactly one way.

Offset 1, canonical program `A281292.P10672042603538441158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281292 (n : ℕ) : ℤ :=
  (A281292.P10672042603538441158.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281375.P13759685335242621079

`A053639(n+1)-A043545(n)`
-/

namespace A281375.P13759685335242621079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053639 (n + 1) - A043545 n

end

end A281375.P13759685335242621079

noncomputable section

/-- A281375: a(n) = floor(2^(n+1)/n).

Offset 1, canonical program `A281375.P13759685335242621079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A281375 (n : ℕ) : ℤ :=
  A281375.P13759685335242621079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A281375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281925.P16287795133733270560

`filter[A001043(n+1), A101637(#)]`
-/

namespace A281925.P16287795133733270560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A281925.P16287795133733270560

noncomputable section

/-- A281925: Numbers that are the product of exactly 4 primes and are of the form prime(k) + prime(k + 1).

Offset 1, canonical program `A281925.P16287795133733270560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 961 terms. -/
def A281925 (n : ℕ) : ℤ :=
  A281925.P16287795133733270560.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 961 terms. -/
def A281925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282029.P4628424250403549240

`n-A242096(or(1, n))`
-/

namespace A282029.P4628424250403549240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A242096 (Nat.lor 1 n)

end

end A282029.P4628424250403549240

noncomputable section

/-- A282029: a(n) = n - pi(n/2).

Offset 0, canonical program `A282029.P4628424250403549240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282029 (n : ℕ) : ℤ :=
  A282029.P4628424250403549240.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282081.P11413017079100609461

`∑[A282080(n)]`
-/

namespace A282081.P11413017079100609461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282081.P11413017079100609461

noncomputable section

/-- A282081: Number of n-element subsets of [n+5] having an even sum.

Offset 0, canonical program `A282081.P11413017079100609461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282081 (n : ℕ) : ℤ :=
  A282081.P11413017079100609461.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282088.P14513073344983035111

`A279028(abs(A097141(n)))`
-/

namespace A282088.P14513073344983035111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279028 |A097141 n|.toNat

end

end A282088.P14513073344983035111

noncomputable section

/-- A282088: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 553", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282088.P14513073344983035111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A282088 (n : ℕ) : ℤ :=
  A282088.P14513073344983035111.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A282088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282121.P687425894295116859

`or(A277926(n), A277952(A237420(n)))`
-/

namespace A282121.P687425894295116859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277926 n) (A277952 (A237420 n).toNat)

end

end A282121.P687425894295116859

noncomputable section

/-- A282121: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 430", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282121.P687425894295116859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282121 (n : ℕ) : ℤ :=
  A282121.P687425894295116859.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282142.P11491660470681616041

`lcm(A056594(n), A281146(n))`
-/

namespace A282142.P11491660470681616041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A281146 n)

end

end A282142.P11491660470681616041

noncomputable section

/-- A282142: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 553", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282142.P11491660470681616041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282142 (n : ℕ) : ℤ :=
  (A282142.P11491660470681616041.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282388.P15003936815126334606

`A133179(Δ[n²])`
-/

namespace A282388.P15003936815126334606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A282388.P15003936815126334606

noncomputable section

/-- A282388: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 462", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282388.P15003936815126334606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 422 terms. -/
def A282388 (n : ℕ) : ℤ :=
  A282388.P15003936815126334606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 422 terms. -/
def A282388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282415.P3467170783009879874

`A278753(n)+Δ[A289404(n)]`
-/

namespace A282415.P3467170783009879874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289404 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278753 n + (f1 (n + 1) - f1 n)

end

end A282415.P3467170783009879874

noncomputable section

/-- A282415: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 469", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282415.P3467170783009879874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A282415 (n : ℕ) : ℤ :=
  A282415.P3467170783009879874.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A282415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282796.P8939512327850085478

`A056830(n)+A279028(n)-A000035(n)`
-/

namespace A282796.P8939512327850085478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 n + (A279028 n - A000035 n)

end

end A282796.P8939512327850085478

noncomputable section

/-- A282796: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 505", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282796.P8939512327850085478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282796 (n : ℕ) : ℤ :=
  A282796.P8939512327850085478.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282797.P11912184071198259924

`A279028(n)+A056830(A052928(n))`
-/

namespace A282797.P11912184071198259924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279028 n + A056830 (A052928 n).toNat

end

end A282797.P11912184071198259924

noncomputable section

/-- A282797: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 505", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282797.P11912184071198259924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282797 (n : ℕ) : ℤ :=
  A282797.P11912184071198259924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283234.P14512764588910667133

`∑[2*A282162(n)]`
-/

namespace A283234.P14512764588910667133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A282162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283234.P14512764588910667133

noncomputable section

/-- A283234: 2*A001950.

Offset 1, canonical program `A283234.P14512764588910667133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283234 (n : ℕ) : ℤ :=
  A283234.P14512764588910667133.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283360.P18224020745696931425

`abs(A283025(n+2)-A283025(n+1))`
-/

namespace A283360.P18224020745696931425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A283025 (n + 2) - A283025 (n + 1)|

end

end A283360.P18224020745696931425

noncomputable section

/-- A283360: Absolute values of first differences of A283025.

Offset 1, canonical program `A283360.P18224020745696931425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283360 (n : ℕ) : ℤ :=
  A283360.P18224020745696931425.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A283467.P8492852021599687265

`A005185(A239913(n+1)+1)`
-/

namespace A283467.P8492852021599687265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A239913 (n + 1) + 1).toNat

end

end A283467.P8492852021599687265

noncomputable section

/-- A283467: a(n) = A005185(n+1-A005185(n)).

Offset 1, canonical program `A283467.P8492852021599687265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283467 (n : ℕ) : ℤ :=
  A283467.P8492852021599687265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283480.P446411479583086570

`∑[A095901(n+1)]`
-/

namespace A283480.P446411479583086570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283480.P446411479583086570

noncomputable section

/-- A283480: Partial sums of A095901.

Offset 1, canonical program `A283480.P446411479583086570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283480 (n : ℕ) : ℤ :=
  A283480.P446411479583086570.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283482.P13946192901551077010

`eq[0, A095901(n+1)]+1`
-/

namespace A283482.P13946192901551077010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095901 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283482.P13946192901551077010

noncomputable section

/-- A283482: Positions of even terms in A004001.

Offset 1, canonical program `A283482.P13946192901551077010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5068 terms. -/
def A283482 (n : ℕ) : ℤ :=
  (A283482.P13946192901551077010.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5068 terms. -/
def A283482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283599.P7289157399895568468

`record[gcd(n+1, 1-A065764(n+1))]`
-/

namespace A283599.P7289157399895568468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (1 - A065764 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283599.P7289157399895568468

noncomputable section

/-- A283599: Numbers k that divide sigma(k^2) - 1.

Offset 1, canonical program `A283599.P7289157399895568468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1240 terms. -/
def A283599 (n : ℕ) : ℤ :=
  (A283599.P7289157399895568468.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1240 terms. -/
def A283599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283623.P10639924523567309276

`A006254(n+1)+A000040(n+1)`
-/

namespace A283623.P10639924523567309276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + A000040 (n + 1)

end

end A283623.P10639924523567309276

noncomputable section

/-- A283623: a(n) = prime(n) + (1 + prime(1 + n))/2.

Offset 1, canonical program `A283623.P10639924523567309276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283623 (n : ℕ) : ℤ :=
  A283623.P10639924523567309276.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283623.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A283776.P160697927852129727

`lt[val(A022838(n+1), 2), 1]+1`
-/

namespace A283776.P160697927852129727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A022838 (n + 1)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A283776.P160697927852129727

noncomputable section

/-- A283776: Numbers k such that floor(k*sqrt(3)) is odd.

Offset 1, canonical program `A283776.P160697927852129727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A283776 (n : ℕ) : ℤ :=
  (A283776.P160697927852129727.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A283776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284022.P18172573424355451815

`A095121(n)+1-A273972(n)`
-/

namespace A284022.P18172573424355451815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A273972 n)

end

end A284022.P18172573424355451815

noncomputable section

/-- A284022: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 779", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A284022.P18172573424355451815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A284022 (n : ℕ) : ℤ :=
  A284022.P18172573424355451815.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A284022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284151.P14768707365356727264

`A284099(n+1)+A284105(n+1)`
-/

namespace A284151.P14768707365356727264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284099 (n + 1) + A284105 (n + 1)

end

end A284151.P14768707365356727264

noncomputable section

/-- A284151: Sum_{d|n, d=1 or 6 mod 7} d.

Offset 1, canonical program `A284151.P14768707365356727264`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284099, A284105, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284151 (n : ℕ) : ℤ :=
  A284151.P14768707365356727264.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284099, A284105, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284151.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284235.P13269542876579324852

`A263013(n)+A056830(n)`
-/

namespace A284235.P13269542876579324852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263013 n + A056830 n

end

end A284235.P13269542876579324852

noncomputable section

/-- A284235: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 833", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A284235.P13269542876579324852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A284235 (n : ℕ) : ℤ :=
  A284235.P13269542876579324852.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A284235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284371.P12964631515090121639

`A026364(n+1)-Δ[n²]`
-/

namespace A284371.P12964631515090121639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026364 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A284371.P12964631515090121639

noncomputable section

/-- A284371: Positions of 1 in A284369; complement of A284370.

Offset 1, canonical program `A284371.P12964631515090121639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284371 (n : ℕ) : ℤ :=
  A284371.P12964631515090121639.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284505.P3040843879912031655

`A283963(∑[char[2*n]])`
-/

namespace A284505.P3040843879912031655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283963 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A284505.P3040843879912031655

noncomputable section

/-- A284505: Fixed point of the morphism 0->1, 1->1100.

Offset 1, canonical program `A284505.P3040843879912031655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284505 (n : ℕ) : ℤ :=
  A284505.P3040843879912031655.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284606.P6562321549469287511

`A062157(n)*A284019(n+1)`
-/

namespace A284606.P6562321549469287511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A284019 (n + 1)

end

end A284606.P6562321549469287511

noncomputable section

/-- A284606: a(n) = (-1)^n * A284019(n).

Offset 1, canonical program `A284606.P6562321549469287511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284606 (n : ℕ) : ℤ :=
  A284606.P6562321549469287511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284625.P13423851547970933234

`A050140(n+1)+2`
-/

namespace A284625.P13423851547970933234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050140 (n + 1) + 2

end

end A284625.P13423851547970933234

noncomputable section

/-- A284625: Positions of 2 in A284749.

Offset 1, canonical program `A284625.P13423851547970933234`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050140, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284625 (n : ℕ) : ℤ :=
  A284625.P13423851547970933234.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050140, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284625.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284773.P8746156910445809745

`∑[char[A283965(n+1)]+1]`
-/

namespace A284773.P8746156910445809745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283965 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284773.P8746156910445809745

noncomputable section

/-- A284773: Positions of 0 in A284772; complement of A284774.

Offset 1, canonical program `A284773.P8746156910445809745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284773 (n : ℕ) : ℤ :=
  (A284773.P8746156910445809745.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284774.P7490368662566357042

`A283965(n+1)+1+n`
-/

namespace A284774.P7490368662566357042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283965 (n + 1) + 1 + (n : ℤ)

end

end A284774.P7490368662566357042

noncomputable section

/-- A284774: Positions of 1 in A284772; complement of A284773.

Offset 1, canonical program `A284774.P7490368662566357042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284774 (n : ℕ) : ℤ :=
  A284774.P7490368662566357042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284776.P12423276562320356730

`2*n+1-A189664(A028310(n))`
-/

namespace A284776.P12423276562320356730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A189664 (A028310 n).toNat

end

end A284776.P12423276562320356730

noncomputable section

/-- A284776: Positions of 0 in A284775; complement of A284777.

Offset 1, canonical program `A284776.P12423276562320356730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284776 (n : ℕ) : ℤ :=
  A284776.P12423276562320356730.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284777.P11967598167269202955

`A189666(n+1)-n`
-/

namespace A284777.P11967598167269202955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189666 (n + 1) - (n : ℤ)

end

end A284777.P11967598167269202955

noncomputable section

/-- A284777: Positions of 1 in A284775; complement of A284776.

Offset 1, canonical program `A284777.P11967598167269202955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284777 (n : ℕ) : ℤ :=
  A284777.P11967598167269202955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284819.P13954242782944102522

`A189666(n+1)+1`
-/

namespace A284819.P13954242782944102522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189666 (n + 1) + 1

end

end A284819.P13954242782944102522

noncomputable section

/-- A284819: Positions of 1 in A284817.

Offset 1, canonical program `A284819.P13954242782944102522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284819 (n : ℕ) : ℤ :=
  A284819.P13954242782944102522.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284880.P8602811279724322610

`A189630(n+1)-(n+1)`
-/

namespace A284880.P8602811279724322610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189630 (n + 1) - (n + 1 : ℤ)

end

end A284880.P8602811279724322610

noncomputable section

/-- A284880: Positions of 1 in A284878; complement of A284879.

Offset 1, canonical program `A284880.P8602811279724322610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284880 (n : ℕ) : ℤ :=
  A284880.P8602811279724322610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284907.P2959481405445577709

`A189670(n+1)-n`
-/

namespace A284907.P2959481405445577709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189670 (n + 1) - (n : ℤ)

end

end A284907.P2959481405445577709

noncomputable section

/-- A284907: Positions of 1 in A284905; complement of A284906.

Offset 1, canonical program `A284907.P2959481405445577709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284907 (n : ℕ) : ℤ :=
  A284907.P2959481405445577709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284968.P8591459530232121028

`∑[∑[A000245(n)]]`
-/

namespace A284968.P8591459530232121028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284968.P8591459530232121028

noncomputable section

/-- A284968: Least hairpin family matchings with n edges that are both L&P and C&C whose leftmost edge is part of a hairpin.

Offset 1, canonical program `A284968.P8591459530232121028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A284968 (n : ℕ) : ℤ :=
  A284968.P8591459530232121028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A284968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285020.P2019826248152179802

`A000984(n)/gcd(A000984(n), A004643(n))`
-/

namespace A285020.P2019826248152179802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (Int.gcd (A000984 n) (A004643 n) : ℚ)

end

end A285020.P2019826248152179802

noncomputable section

/-- A285020: Numerator of binomial(2*n,n)/20^n.

Offset 0, canonical program `A285020.P2019826248152179802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A285020 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A285020.P2019826248152179802.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A285020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285436.P11623261315318011481

`A277918(floor(n/2))`
-/

namespace A285436.P11623261315318011481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277918 ⌊(n : ℚ) / 2⌋.toNat

end

end A285436.P11623261315318011481

noncomputable section

/-- A285436: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 22", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A285436.P11623261315318011481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A285436 (n : ℕ) : ℤ :=
  A285436.P11623261315318011481.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A285436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285473.P5965544858136921209

`or(1, A277560(n))`
-/

namespace A285473.P5965544858136921209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A277560 n)

end

end A285473.P5965544858136921209

noncomputable section

/-- A285473: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 3", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A285473.P5965544858136921209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A285473 (n : ℕ) : ℤ :=
  A285473.P5965544858136921209.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A285473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285510.P11499573024811075816

`∪[2*n+1, A187811(n+1)]`
-/

namespace A285510.P11499573024811075816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285510.P11499573024811075816

noncomputable section

/-- A285510: Numbers k such that the average of the squarefree divisors of k is an integer.

Offset 1, canonical program `A285510.P11499573024811075816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285510 (n : ℕ) : ℤ :=
  (A285510.P11499573024811075816.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285551.P12448397724595995412

`A100538(n+2)-A100538(n+1)`
-/

namespace A285551.P12448397724595995412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100538 (n + 2) - A100538 (n + 1)

end

end A285551.P12448397724595995412

noncomputable section

/-- A285551: Volume of each square prism building the next 3-dimensional box in A100538 where side lengths form the Padovan spiral number sequence (A134816), starting with 1 X 1 X 1, 1 X 1 X 2, 2 X 2 X 2, 2 X 2 X 3, 4 X 4 X 5, ...

Offset 1, canonical program `A285551.P12448397724595995412`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100538, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285551 (n : ℕ) : ℤ :=
  A285551.P12448397724595995412.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100538, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285551.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A285680.P812841276497210756

`A284394(comp[A284396(n+1)]+1)`
-/

namespace A285680.P812841276497210756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284396 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284394 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A285680.P812841276497210756

noncomputable section

/-- A285680: {1010->2}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A285680.P812841276497210756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7941 terms. -/
def A285680 (n : ℕ) : ℤ :=
  A285680.P812841276497210756.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7941 terms. -/
def A285680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285682.P14811825003316370073

`abs(2*A284624(n+1)-2-n)`
-/

namespace A285682.P14811825003316370073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A284624 (n + 1) - 2 - (n : ℤ)|

end

end A285682.P14811825003316370073

noncomputable section

/-- A285682: Positions of 1 in A285680.

Offset 1, canonical program `A285682.P14811825003316370073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285682 (n : ℕ) : ℤ :=
  A285682.P14811825003316370073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285683.P17064142293880284403

`A284396(n+1)-n`
-/

namespace A285683.P17064142293880284403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284396 (n + 1) - (n : ℤ)

end

end A285683.P17064142293880284403

noncomputable section

/-- A285683: Positions of 2 in A285680.

Offset 1, canonical program `A285683.P17064142293880284403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285683 (n : ℕ) : ℤ :=
  A285683.P17064142293880284403.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285774.P2339232712092425148

`A077957(n)*A133179(n)`
-/

namespace A285774.P2339232712092425148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n * A133179 n

end

end A285774.P2339232712092425148

noncomputable section

/-- A285774: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 84", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A285774.P2339232712092425148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 394 terms. -/
def A285774 (n : ℕ) : ℤ :=
  A285774.P2339232712092425148.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 394 terms. -/
def A285774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285775.P6581137490788025272

`xor(A063524(A004525(n)), A277560(n))`
-/

namespace A285775.P6581137490788025272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 (A004525 n).toNat) (A277560 n)

end

end A285775.P6581137490788025272

noncomputable section

/-- A285775: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 89", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A285775.P6581137490788025272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A285775 (n : ℕ) : ℤ :=
  A285775.P6581137490788025272.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A285775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285896.P7013669895608726308

`∑{d}[n+1, #*A011558((n+1)/#)]`
-/

namespace A285896.P7013669895608726308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A011558 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A285896.P7013669895608726308

noncomputable section

/-- A285896: Sum of divisors d of n such that n/d is not congruent to 0 mod 5.

Offset 1, canonical program `A285896.P7013669895608726308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285896 (n : ℕ) : ℤ :=
  A285896.P7013669895608726308.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285967.P213330600347507789

`A285958(n+1)+A123087(n)`
-/

namespace A285967.P213330600347507789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285958 (n + 1) + A123087 n

end

end A285967.P213330600347507789

noncomputable section

/-- A285967: Positions of 0 in A285966; complement of A285968.

Offset 1, canonical program `A285967.P213330600347507789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285967 (n : ℕ) : ℤ :=
  A285967.P213330600347507789.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285969.P11670156523082472099

`char[comp[∑[A036581(n)]]]`
-/

namespace A285969.P11670156523082472099
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285969.P11670156523082472099

noncomputable section

/-- A285969: {0110->0}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A285969.P11670156523082472099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285969 (n : ℕ) : ℤ :=
  (A285969.P11670156523082472099.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285980.P9702020314867581309

`∑[char[A285979(n+1)-(n+1)]+1]`
-/

namespace A285980.P9702020314867581309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285979 (n + 1) - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285980.P9702020314867581309

noncomputable section

/-- A285980: Positions of 1 in A285978; complement of A285979.

Offset 1, canonical program `A285980.P9702020314867581309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285980 (n : ℕ) : ℤ :=
  (A285980.P9702020314867581309.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286265.P4047765915956604991

`lt[n+1, A092693(n+1)]+1`
-/

namespace A286265.P4047765915956604991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092693 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A286265.P4047765915956604991

noncomputable section

/-- A286265: Totient abundant numbers: numbers k such that A092693(k) > k.

Offset 1, canonical program `A286265.P4047765915956604991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3708 terms. -/
def A286265 (n : ℕ) : ℤ :=
  (A286265.P4047765915956604991.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3708 terms. -/
def A286265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286688.P12697212265259802839

`A171588(n+1-gcd(n, ∑[n]))`
-/

namespace A286688.P12697212265259802839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (n + 1 - Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A286688.P12697212265259802839

noncomputable section

/-- A286688: {0->00, 1->10}-transform of the Pell word, A171588.

Offset 1, canonical program `A286688.P12697212265259802839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286688 (n : ℕ) : ℤ :=
  A286688.P12697212265259802839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286689.P1415532130380415468

`∑[2-A187967(n+1)]`
-/

namespace A286689.P1415532130380415468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A187967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286689.P1415532130380415468

noncomputable section

/-- A286689: Positions of 0 in A286688; complement of A286690.

Offset 1, canonical program `A286689.P1415532130380415468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286689 (n : ℕ) : ℤ :=
  A286689.P1415532130380415468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286751.P10318098983426885217

`2*A249115(n+1)-(n+1)`
-/

namespace A286751.P10318098983426885217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A249115 (n + 1) - (n + 1 : ℤ)

end

end A286751.P10318098983426885217

noncomputable section

/-- A286751: Positions of 1 in A286749; complement of A286750.

Offset 1, canonical program `A286751.P10318098983426885217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286751 (n : ℕ) : ℤ :=
  A286751.P10318098983426885217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286753.P7951708052083784182

`2*n+A035340(n)%2+1`
-/

namespace A286753.P7951708052083784182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (Int.tmod (A035340 n) 2 + 1)

end

end A286753.P7951708052083784182

noncomputable section

/-- A286753: Positions of 0 in A286752; complement of A286753.

Offset 1, canonical program `A286753.P7951708052083784182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286753 (n : ℕ) : ℤ :=
  A286753.P7951708052083784182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286770.P12168461856078736924

`A057427(xor(2, n))*A280410(n)`
-/

namespace A286770.P12168461856078736924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Nat.xor 2 n) * A280410 n

end

end A286770.P12168461856078736924

noncomputable section

/-- A286770: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 221", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A286770.P12168461856078736924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A286770 (n : ℕ) : ℤ :=
  A286770.P12168461856078736924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A286770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286808.P17632618332489192172

`A138591(A028310(n))+n`
-/

namespace A286808.P17632618332489192172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (A028310 n).toNat + (n : ℤ)

end

end A286808.P17632618332489192172

noncomputable section

/-- A286808: Positions of 0 in A286807; complement of A286809.

Offset 1, canonical program `A286808.P17632618332489192172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286808 (n : ℕ) : ℤ :=
  A286808.P17632618332489192172.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286863.P9330102431573233598

`A000042(A004763(n+2)-n)`
-/

namespace A286863.P9330102431573233598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A004763 (n + 2) - (n : ℤ)).toNat

end

end A286863.P9330102431573233598

noncomputable section

/-- A286863: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 814", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A286863.P9330102431573233598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A286863 (n : ℕ) : ℤ :=
  A286863.P9330102431573233598.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A286863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286909.P7521876757351739898

`∑[2*Δ[A001951(n)]]`
-/

namespace A286909.P7521876757351739898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286909.P7521876757351739898

noncomputable section

/-- A286909: Positions of 1 in A286907; complement of A286908.

Offset 1, canonical program `A286909.P7521876757351739898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286909 (n : ℕ) : ℤ :=
  A286909.P7521876757351739898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287091.P14879557112610420772

`ceil(A008620(A053799(n))/A008458(n))`
-/

namespace A287091.P14879557112610420772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008620 (A053799 n).toNat : ℚ) / (A008458 n : ℚ)⌉

end

end A287091.P14879557112610420772

noncomputable section

/-- A287091: Expansion of Product_{k>=1} 1/(1 - x^((2*k-1)^3)).

Offset 0, canonical program `A287091.P14879557112610420772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A287091 (n : ℕ) : ℤ :=
  A287091.P14879557112610420772.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A287091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287373.P285798426159073330

`lt[A101666(n), 1]+1`
-/

namespace A287373.P285798426159073330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101666 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A287373.P285798426159073330

noncomputable section

/-- A287373: Positions of 0 in A101666.

Offset 1, canonical program `A287373.P285798426159073330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A287373 (n : ℕ) : ℤ :=
  (A287373.P285798426159073330.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A287373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287441.P16492158289097742092

`3*(n+1)-A287438(n+1)`
-/

namespace A287441.P16492158289097742092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A287438 (n + 1)

end

end A287441.P16492158289097742092

noncomputable section

/-- A287441: Positions of 2 in A287438.

Offset 1, canonical program `A287441.P16492158289097742092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287441 (n : ℕ) : ℤ :=
  A287441.P16492158289097742092.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287529.P12551350988628766671

`A287528(n+1)+3*n+1`
-/

namespace A287529.P12551350988628766671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287528 (n + 1) + (3 * n + 1 : ℤ)

end

end A287529.P12551350988628766671

noncomputable section

/-- A287529: Positions of 0 in A287528.

Offset 1, canonical program `A287529.P12551350988628766671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287529 (n : ℕ) : ℤ :=
  A287529.P12551350988628766671.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287658.P14616635243715041679

`A380960(n)+1+n`
-/

namespace A287658.P14616635243715041679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380960 n + 1 + (n : ℤ)

end

end A287658.P14616635243715041679

noncomputable section

/-- A287658: Positions of 0 in A287657; complement of A287659.

Offset 1, canonical program `A287658.P14616635243715041679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287658 (n : ℕ) : ℤ :=
  A287658.P14616635243715041679.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287743.P4852823348231064615

`lcm(A286508(n), A287742(n))`
-/

namespace A287743.P4852823348231064615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A286508 n) (A287742 n)

end

end A287743.P4852823348231064615

noncomputable section

/-- A287743: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 342", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A287743.P4852823348231064615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A287743 (n : ℕ) : ℤ :=
  (A287743.P4852823348231064615.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A287743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287790.P4979616440180160803

`A287657(A004396(n+1))`
-/

namespace A287790.P4979616440180160803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287657 (A004396 (n + 1)).toNat

end

end A287790.P4979616440180160803

noncomputable section

/-- A287790: {0->001, 1->110}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A287790.P4979616440180160803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287790 (n : ℕ) : ℤ :=
  A287790.P4979616440180160803.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287795.P10719789566400101505

`1-A287657(A133310(n))`
-/

namespace A287795.P10719789566400101505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A287657 (A133310 n).toNat

end

end A287795.P10719789566400101505

noncomputable section

/-- A287795: {0->101, 1->010}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A287795.P10719789566400101505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287795 (n : ℕ) : ℤ :=
  A287795.P10719789566400101505.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287802.P16887405492664947401

`A120613(ceil((n+3)/2))+n+1`
-/

namespace A287802.P16887405492664947401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120613 ⌈(n + 3 : ℚ) / 2⌉.toNat + (n + 1 : ℤ)

end

end A287802.P16887405492664947401

noncomputable section

/-- A287802: Positions of 0 in A287801; complement of A287803.

Offset 1, canonical program `A287802.P16887405492664947401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287802 (n : ℕ) : ℤ :=
  A287802.P16887405492664947401.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212449.P12458469017393266597

`A212454(n+1)-1`
-/

namespace A212449.P12458469017393266597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212454 (n + 1) - 1

end

end A212449.P12458469017393266597

noncomputable section

/-- A212449: Floor(5n + log(5n)).

Offset 1, canonical program `A212449.P12458469017393266597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212449 (n : ℕ) : ℤ :=
  A212449.P12458469017393266597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212458.P550046348673168418

`A212462(n+1)-1`
-/

namespace A212458.P550046348673168418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212462 (n + 1) - 1

end

end A212458.P550046348673168418

noncomputable section

/-- A212458: a(n) = floor(5n*log(5n)).

Offset 1, canonical program `A212458.P550046348673168418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212458 (n : ℕ) : ℤ :=
  A212458.P550046348673168418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212496.P12538457052188032369

`∑[1-A359770(n+1)-A359770(n+1)]`
-/

namespace A212496.P12538457052188032369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A359770 (n + 1) - A359770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212496.P12538457052188032369

noncomputable section

/-- A212496: a(n) = Sum_{k=1..n} (-1)^(k-Omega(k)) with Omega(k) the total number of prime factors of k (counted with multiplicity).

Offset 1, canonical program `A212496.P12538457052188032369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212496 (n : ℕ) : ℤ :=
  A212496.P12538457052188032369.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212496.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A213546.P8585322791800106052

`A292053(n+1)+A213556(n+1)`
-/

namespace A213546.P8585322791800106052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292053 (n + 1) + A213556 (n + 1)

end

end A213546.P8585322791800106052

noncomputable section

/-- A213546: Principal diagonal of the convolution array A213505.

Offset 1, canonical program `A213546.P8585322791800106052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213546 (n : ℕ) : ℤ :=
  A213546.P8585322791800106052.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213546.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A214547.P5981767396618173425

`lt[A009194(n+1), A033879(n+1)]+1`
-/

namespace A214547.P5981767396618173425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A214547.P5981767396618173425

noncomputable section

/-- A214547: Deficient numbers for which the (absolute value of) abundance is not a divisor.

Offset 1, canonical program `A214547.P5981767396618173425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7483 terms. -/
def A214547 (n : ℕ) : ℤ :=
  (A214547.P5981767396618173425.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7483 terms. -/
def A214547.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A217009.P11979282326358017543

`A007094(7*(n+1))`
-/

namespace A217009.P11979282326358017543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (7 * (n + 1))

end

end A217009.P11979282326358017543

noncomputable section

/-- A217009: Multiples of 7 in base 8.

Offset 1, canonical program `A217009.P11979282326358017543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1428 terms. -/
def A217009 (n : ℕ) : ℤ :=
  A217009.P11979282326358017543.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1428 terms. -/
def A217009.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A220846.P4568934254118068041

`∑{d}[n+1, #]*A007956(n+1)`
-/

namespace A220846.P4568934254118068041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A007956 (n + 1)

end

end A220846.P4568934254118068041

noncomputable section

/-- A220846: a(n) = sum_(d|n) ((product_(d|n) d) / d).

Offset 1, canonical program `A220846.P4568934254118068041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A220846 (n : ℕ) : ℤ :=
  A220846.P4568934254118068041.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A220846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222463.P5850114946438020891

`A026741(A227109(n+5))`
-/

namespace A222463.P5850114946438020891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A227109 (n + 5)).toNat

end

end A222463.P5850114946438020891

noncomputable section

/-- A222463: a(n) = n*5/gcd(n*5,n+5), n >= 5.

Offset 5, canonical program `A222463.P5850114946438020891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 997 terms. -/
def A222463 (n : ℕ) : ℤ :=
  A222463.P5850114946438020891.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 997 terms. -/
def A222463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224880.P6096983120324589862

`A033879(n+1)+2*A000203(n+1)`
-/

namespace A224880.P6096983120324589862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + 2 * A000203 (n + 1)

end

end A224880.P6096983120324589862

noncomputable section

/-- A224880: a(n) = 2*n + sum of divisors of n.

Offset 1, canonical program `A224880.P6096983120324589862`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033879, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224880 (n : ℕ) : ℤ :=
  A224880.P6096983120324589862.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033879, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224880.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A227128.P9558132721139232292

`∑{d}[n+1, #*A365428((n+1)/#)]`
-/

namespace A227128.P9558132721139232292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A365428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A227128.P9558132721139232292

noncomputable section

/-- A227128: The twisted Euler phi-function for the non-principal Dirichlet character mod 3.

Offset 1, canonical program `A227128.P9558132721139232292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227128 (n : ℕ) : ℤ :=
  A227128.P9558132721139232292.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227128.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A228189.P1478427510605484894

`floor(A228272(n+1)/2)`
-/

namespace A228189.P1478427510605484894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A228272 (n + 1) : ℚ) / 2⌋

end

end A228189.P1478427510605484894

noncomputable section

/-- A228189: Volume of right circular cone (rounded down) with the diameter of base and height equal to n.

Offset 1, canonical program `A228189.P1478427510605484894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228189 (n : ℕ) : ℤ :=
  A228189.P1478427510605484894.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228189.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A230263.P8370102804236807387

`lcm(floor((2-n%4)/2), A034178(lcm(4, n+1)/4))`
-/

namespace A230263.P8370102804236807387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌊(2 - ((n % 4 : ℕ) : ℤ) : ℚ) / 2⌋ (A034178 (SequenceMachineLib.roundAway ((Nat.lcm 4 (n + 1) : ℚ) / 4)).toNat)

end

end A230263.P8370102804236807387

noncomputable section

/-- A230263: Number of nonnegative integer solutions to the equation x^2 - 4*y^2 = n.

Offset 1, canonical program `A230263.P8370102804236807387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230263 (n : ℕ) : ℤ :=
  (A230263.P8370102804236807387.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230263.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A230654.P9728224852520061212

`eq[4, A051950(n+2)]+1`
-/

namespace A230654.P9728224852520061212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A230654.P9728224852520061212

noncomputable section

/-- A230654: Numbers n such that tau(n+1) - tau(n) = 4, where tau(n) = the number of divisors of n (A000005).

Offset 1, canonical program `A230654.P9728224852520061212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1883 terms. -/
def A230654 (n : ℕ) : ℤ :=
  (A230654.P9728224852520061212.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1883 terms. -/
def A230654.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A231947.P3420748892416134547

`A103440(3*n+1)`
-/

namespace A231947.P3420748892416134547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103440 (3 * n + 1)

end

end A231947.P3420748892416134547

noncomputable section

/-- A231947: Expansion of q^(-1/3) * a(q)^2 * c(q) / 3 in powers of q where a(), c() are cubic AGM theta functions.

Offset 0, canonical program `A231947.P3420748892416134547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A231947 (n : ℕ) : ℤ :=
  A231947.P3420748892416134547.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A231947.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A235796.P10282550748648679139

`A033879(n+1)-1`
-/

namespace A235796.P10282550748648679139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) - 1

end

end A235796.P10282550748648679139

noncomputable section

/-- A235796: 2*n - 1 - sigma(n).

Offset 1, canonical program `A235796.P10282550748648679139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033879, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A235796 (n : ℕ) : ℤ :=
  A235796.P10282550748648679139.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033879, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A235796.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A237046.P16405713100893644750

`lt[1, A033879(n+1)]+1`
-/

namespace A237046.P16405713100893644750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A237046.P16405713100893644750

noncomputable section

/-- A237046: Numbers n such that sigma(n) < 2n-1.

Offset 1, canonical program `A237046.P16405713100893644750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237046 (n : ℕ) : ℤ :=
  (A237046.P16405713100893644750.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237046.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A239461.P12041808004721065073

`(n+1)*(A253445(n+1)-(n²+n))`
-/

namespace A239461.P12041808004721065073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A253445 (n + 1) - (n ^ 2 + n : ℤ))

end

end A239461.P12041808004721065073

noncomputable section

/-- A239461: Concatenation of n^3 and n^2.

Offset 1, canonical program `A239461.P12041808004721065073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239461 (n : ℕ) : ℤ :=
  A239461.P12041808004721065073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239461.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A243011.P10761689159614172034`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A238328, A238702, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A243011 (n : ℕ) : ℤ :=
  A243011.P10761689159614172034.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A238328, A238702, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A243011.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A249099.P88740456389879622

`A160542(2*n+3)-A060576(A034387(2*n+1))`
-/

namespace A249099.P88740456389879622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (2 * n + 3) - A060576 (A034387 (2 * n + 1)).toNat

end

end A249099.P88740456389879622

noncomputable section

/-- A249099: Position of 3*n^6 in the ordered union of {h^6, h >=1} and {3*k^6, k >=1}.

Offset 1, canonical program `A249099.P88740456389879622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A249099 (n : ℕ) : ℤ :=
  A249099.P88740456389879622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A249099.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A253203.P13303616197894554342

`A256244(n+1)²`
-/

namespace A253203.P13303616197894554342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256244 (n + 1) ^ 2

end

end A253203.P13303616197894554342

noncomputable section

/-- A253203: The least square larger than n with same parity as n.

Offset 1, canonical program `A253203.P13303616197894554342`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256244, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253203 (n : ℕ) : ℤ :=
  A253203.P13303616197894554342.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256244, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253203.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253629.P1098263720651424872

`A003557(n+1)*A206787(n+1)`
-/

namespace A253629.P1098263720651424872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A206787 (n + 1)

end

end A253629.P1098263720651424872

noncomputable section

/-- A253629: Multiplicative function defined for prime powers by a(p^e) = p^(e-1)(p+1) if p > 2 and a(2^e) = 2^(e-1).

Offset 1, canonical program `A253629.P1098263720651424872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253629 (n : ℕ) : ℤ :=
  A253629.P1098263720651424872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253887.P2947588352557606588

`A004396(A286577(n+1))`
-/

namespace A253887.P2947588352557606588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A286577 (n + 1)).toNat

end

end A253887.P2947588352557606588

noncomputable section

/-- A253887: Row index of n in A191450: a(3n) = 2n, a(3n+1) = 2n+1, a(3n+2) = a(n+1).

Offset 1, canonical program `A253887.P2947588352557606588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253887 (n : ℕ) : ℤ :=
  A253887.P2947588352557606588.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253887.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A255655.P17610219700829856514

`∑{d}[n+1, A007427(#)*A109386((n+1)/#)]`
-/

namespace A255655.P17610219700829856514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A109386 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A255655.P17610219700829856514

noncomputable section

/-- A255655: The sum of the odd terms in row n of A050873.

Offset 1, canonical program `A255655.P17610219700829856514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255655 (n : ℕ) : ℤ :=
  A255655.P17610219700829856514.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255655.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A256243.P15073476310533961468

`A004524(A256244(n+1)²-n)`
-/

namespace A256243.P15073476310533961468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A256244 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A256243.P15073476310533961468

noncomputable section

/-- A256243: Smallest positive integer m such that n + 2m is a square.

Offset 1, canonical program `A256243.P15073476310533961468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256243 (n : ℕ) : ℤ :=
  A256243.P15073476310533961468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256243.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A257408.P7293558973563838932

`eq[1, A034178(n+1)]+1`
-/

namespace A257408.P7293558973563838932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A257408.P7293558973563838932

noncomputable section

/-- A257408: Values of n such that there is exactly 1 solution to x^2 - y^2 = n with x > y >= 0.

Offset 1, canonical program `A257408.P7293558973563838932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1500 terms. -/
def A257408 (n : ℕ) : ℤ :=
  (A257408.P7293558973563838932.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1500 terms. -/
def A257408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257411.P9185470921176240693

`eq[4, A034178(n+1)]+1`
-/

namespace A257411.P9185470921176240693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A257411.P9185470921176240693

noncomputable section

/-- A257411: Values of n such that there are exactly 4 solutions to x^2 - y^2 = n with x > y >= 0.

Offset 1, canonical program `A257411.P9185470921176240693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1419 terms. -/
def A257411 (n : ℕ) : ℤ :=
  (A257411.P9185470921176240693.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1419 terms. -/
def A257411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257412.P2136020918674413741

`eq[5, A034178(A028310(n))]`
-/

namespace A257412.P2136020918674413741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257412.P2136020918674413741

noncomputable section

/-- A257412: Values of n such that there are exactly 5 solutions to x^2 - y^2 = n with x > y >= 0.

Offset 1, canonical program `A257412.P2136020918674413741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A257412 (n : ℕ) : ℤ :=
  (A257412.P2136020918674413741.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A257412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257413.P16665506709251320358

`eq[6, A034178(A028310(n))]`
-/

namespace A257413.P16665506709251320358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257413.P16665506709251320358

noncomputable section

/-- A257413: Values of n such that there are exactly 6 solutions to x^2 - y^2 = n with x > y >= 0.

Offset 1, canonical program `A257413.P16665506709251320358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 520 terms. -/
def A257413 (n : ℕ) : ℤ :=
  (A257413.P16665506709251320358.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 520 terms. -/
def A257413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257415.P10533796931957512431

`eq[8, A034178(A028310(n))]`
-/

namespace A257415.P10533796931957512431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257415.P10533796931957512431

noncomputable section

/-- A257415: Values of n such that there are exactly 8 solutions to x^2 - y^2 = n with x > y >= 0.

Offset 1, canonical program `A257415.P10533796931957512431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A257415 (n : ℕ) : ℤ :=
  (A257415.P10533796931957512431.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A257415.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A259445.P2436748714426383029

`gcd(n+1, A368744(n+1))`
-/

namespace A259445.P2436748714426383029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A368744 (n + 1))

end

end A259445.P2436748714426383029

noncomputable section

/-- A259445: Multiplicative with a(n) = n if n is odd and a(2^s)=2.

Offset 1, canonical program `A259445.P2436748714426383029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259445 (n : ℕ) : ℤ :=
  (A259445.P2436748714426383029.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259676.P16720077974617783061

`A000566(A114517(n+1))`
-/

namespace A259676.P16720077974617783061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A114517 (n + 1)).toNat

end

end A259676.P16720077974617783061

noncomputable section

/-- A259676: Heptagonal numbers (A000566) that are semiprimes (A001358).

Offset 1, canonical program `A259676.P16720077974617783061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A259676 (n : ℕ) : ℤ :=
  A259676.P16720077974617783061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A259676.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A269659.P12988167991157226264

`2-n²+A269778(n+1)+n`
-/

namespace A269659.P12988167991157226264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n ^ 2 : ℤ) + (A269778 (n + 1) + (n : ℤ))

end

end A269659.P12988167991157226264

noncomputable section

/-- A269659: Number of length-6 0..n arrays with no adjacent pair x,x+1 repeated.

Offset 1, canonical program `A269659.P12988167991157226264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269659 (n : ℕ) : ℤ :=
  A269659.P12988167991157226264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269659.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A271568.P11000683878390668970

`filter[A050704(n+2), A354927(#)]`
-/

namespace A271568.P11000683878390668970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050704 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A271568.P11000683878390668970

noncomputable section

/-- A271568: Squarefree semiprimes n such that phi(n) - 1 is prime.

Offset 1, canonical program `A271568.P11000683878390668970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4674 terms. -/
def A271568 (n : ℕ) : ℤ :=
  A271568.P11000683878390668970.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4674 terms. -/
def A271568.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A274915.P5817165163141562259

`filter[A292315(n+1), A340363(#)]`
-/

namespace A274915.P5817165163141562259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A274915.P5817165163141562259

noncomputable section

/-- A274915: Powers of odd non-Fermat primes.

Offset 1, canonical program `A274915.P5817165163141562259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4252 terms. -/
def A274915 (n : ℕ) : ℤ :=
  A274915.P5817165163141562259.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4252 terms. -/
def A274915.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A276542.P6729285358371022252

`eq[A063440(n+1), A063440(n+2)]+1`
-/

namespace A276542.P6729285358371022252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A276542.P6729285358371022252

noncomputable section

/-- A276542: Numbers k such that the k-th and (k+1)st triangular numbers have the same number of divisors.

Offset 1, canonical program `A276542.P6729285358371022252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276542 (n : ℕ) : ℤ :=
  (A276542.P6729285358371022252.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276542.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A277169.P7870320882973460960

`A000290(A007956(n+1))`
-/

namespace A277169.P7870320882973460960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A007956 (n + 1)).toNat

end

end A277169.P7870320882973460960

noncomputable section

/-- A277169: Product of squares of proper divisors of n.

Offset 1, canonical program `A277169.P7870320882973460960`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277169 (n : ℕ) : ℤ :=
  A277169.P7870320882973460960.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277169.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A277387.P14399053052702784469

`A277388(n+2)-2*A108674(n)`
-/

namespace A277387.P14399053052702784469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277388 (n + 2) - 2 * A108674 n

end

end A277387.P14399053052702784469

noncomputable section

/-- A277387: Number of nonnegative solutions of a certain system of linear Diophantine equations depending on an even parameter.

Offset 1, canonical program `A277387.P14399053052702784469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277387 (n : ℕ) : ℤ :=
  A277387.P14399053052702784469.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277387.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A278085.P490881361197768056

`∑{d}[n+1, A193356(#)*A365428((n+1)/#)]`
-/

namespace A278085.P490881361197768056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A193356 d * A365428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A278085.P490881361197768056

noncomputable section

/-- A278085: 1/4 of the number of primitive integral quadruples with sum = 3*n and sum of squares = 3*n^2.

Offset 1, canonical program `A278085.P490881361197768056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A278085 (n : ℕ) : ℤ :=
  A278085.P490881361197768056.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A278085.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A279051.P13470628447190644571

`A300893(A153733(n)+1)`
-/

namespace A279051.P13470628447190644571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300893 (A153733 n + 1).toNat

end

end A279051.P13470628447190644571

noncomputable section

/-- A279051: Sum of odd nonprime divisors of n.

Offset 1, canonical program `A279051.P13470628447190644571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279051 (n : ℕ) : ℤ :=
  A279051.P13470628447190644571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279458.P16976233013369130140

`∩[A028260(n+1), A030231(n+1)]`
-/

namespace A279458.P16976233013369130140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279458.P16976233013369130140

noncomputable section

/-- A279458: Numbers k such that number of distinct primes dividing k is even and number of prime divisors (counted with multiplicity) of k is even.

Offset 1, canonical program `A279458.P16976233013369130140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7333 terms. -/
def A279458 (n : ℕ) : ℤ :=
  (A279458.P16976233013369130140.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7333 terms. -/
def A279458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280116.P3577260603132501466

`∑[∏{d}[n+1, #*A007956(#)]]`
-/

namespace A280116.P3577260603132501466
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), (d : ℤ) * A007956 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280116.P3577260603132501466

noncomputable section

/-- A280116: Partial sums of A266265 (Product_{d|n} pod(d)).

Offset 1, canonical program `A280116.P3577260603132501466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A280116 (n : ℕ) : ℤ :=
  A280116.P3577260603132501466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A280116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280196.P16878667472138717475

`lt[n, A318828(n+1)+2]+1`
-/

namespace A280196.P16878667472138717475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318828 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A280196.P16878667472138717475

noncomputable section

/-- A280196: Numbers n such that a^(n-1) == 1 (mod n^2) has no solutions with 1 < a < n^2-1.

Offset 1, canonical program `A280196.P16878667472138717475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280196 (n : ℕ) : ℤ :=
  (A280196.P16878667472138717475.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280199.P9968655352959598236

`lt[1, A348259(n+1)]+1`
-/

namespace A280199.P9968655352959598236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A280199.P9968655352959598236

noncomputable section

/-- A280199: Numbers n such that a^(n-1) == 1 (mod n^2) has solutions with 1 < a < n^2-1.

Offset 1, canonical program `A280199.P9968655352959598236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280199 (n : ℕ) : ℤ :=
  (A280199.P9968655352959598236.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281122.P114872565162045204

`A345135(Δ[n²])`
-/

namespace A281122.P114872565162045204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345135 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A281122.P114872565162045204

noncomputable section

/-- A281122: Triangle T read by rows: n-th row (n>=0) gives the non-vanishing coefficients of the polynomial q(n,x) = ((x+1)^(2^n) - (x-1)^(2^n))/2.

Offset 0, canonical program `A281122.P114872565162045204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A281122 (n : ℕ) : ℤ :=
  A281122.P114872565162045204.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A281122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282324.P8074953035641554398

`p?[A030432(n+1)+2]`
-/

namespace A282324.P8074953035641554398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A282324.P8074953035641554398

noncomputable section

/-- A282324: Greater of twin primes congruent to 19 (mod 30).

Offset 1, canonical program `A282324.P8074953035641554398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A282324 (n : ℕ) : ℤ :=
  A282324.P8074953035641554398.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A282324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282412.P8185400050348961788

`lcm(A282411(n), A284352(n))`
-/

namespace A282412.P8185400050348961788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A282411 n) (A284352 n)

end

end A282412.P8185400050348961788

noncomputable section

/-- A282412: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 467", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282412.P8185400050348961788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282412 (n : ℕ) : ℤ :=
  (A282412.P8185400050348961788.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283352.P13054535847704051275

`A000007(n)+A290660(n)-1`
-/

namespace A283352.P13054535847704051275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A290660 n - 1)

end

end A283352.P13054535847704051275

noncomputable section

/-- A283352: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 619", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A283352.P13054535847704051275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A283352 (n : ℕ) : ℤ :=
  A283352.P13054535847704051275.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A283352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283610.P9230607664063654978

`∩[A011537(n+1), A007094(n)]`
-/

namespace A283610.P9230607664063654978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283610.P9230607664063654978

noncomputable section

/-- A283610: Numbers n whose largest decimal digit is 7.

Offset 1, canonical program `A283610.P9230607664063654978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3959 terms. -/
def A283610 (n : ℕ) : ℤ :=
  (A283610.P9230607664063654978.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3959 terms. -/
def A283610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284062.P8258744999605309053

`∩[A011531(n+1), A052382(n+1)]`
-/

namespace A284062.P8258744999605309053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284062.P8258744999605309053

noncomputable section

/-- A284062: Numbers whose smallest decimal digit is 1.

Offset 1, canonical program `A284062.P8258744999605309053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5320 terms. -/
def A284062 (n : ℕ) : ℤ :=
  (A284062.P8258744999605309053.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5320 terms. -/
def A284062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284103.P11048966256680687602

`(A284361(n+1)-A284097(n+1))%A116073(n+1)`
-/

namespace A284103.P11048966256680687602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284361 (n + 1) - A284097 (n + 1)) (A116073 (n + 1))

end

end A284103.P11048966256680687602

noncomputable section

/-- A284103: a(n) = Sum_{d|n, d == 4 (mod 5)} d.

Offset 1, canonical program `A284103.P11048966256680687602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284103 (n : ℕ) : ℤ :=
  A284103.P11048966256680687602.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284214.P16839856081255687971

`∑[A006949(n)]%(n+1)`
-/

namespace A284214.P16839856081255687971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A284214.P16839856081255687971

noncomputable section

/-- A284214: Remainder when sum of first n terms of A006949 is divided by n.

Offset 1, canonical program `A284214.P16839856081255687971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284214 (n : ℕ) : ℤ :=
  A284214.P16839856081255687971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284364.P18289447628931741723

`char[A284366(n+1)-1]`
-/

namespace A284364.P18289447628931741723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284366 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284364.P18289447628931741723

noncomputable section

/-- A284364: Fixed point of the morphism 0->1, 1->101010.

Offset 1, canonical program `A284364.P18289447628931741723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284364 (n : ℕ) : ℤ :=
  (A284364.P18289447628931741723.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284370.P181059077873080180

`A284753(floor(n/2)+1)+n`
-/

namespace A284370.P181059077873080180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284753 (⌊(n : ℚ) / 2⌋ + 1).toNat + (n : ℤ)

end

end A284370.P181059077873080180

noncomputable section

/-- A284370: Positions of 0 in A284369; complement of A284371.

Offset 1, canonical program `A284370.P181059077873080180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284370 (n : ℕ) : ℤ :=
  A284370.P181059077873080180.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284791.P2982177250107877844

`A284933(n+1)+A033999(n)`
-/

namespace A284791.P2982177250107877844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284933 (n + 1) + A033999 n

end

end A284791.P2982177250107877844

noncomputable section

/-- A284791: Positions of 1 in A284789; complement of A284790.

Offset 1, canonical program `A284791.P2982177250107877844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284791 (n : ℕ) : ℤ :=
  A284791.P2982177250107877844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284851.P2577468141538468078

`char[A284853(n+1)-1]`
-/

namespace A284851.P2577468141538468078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284853 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284851.P2577468141538468078

noncomputable section

/-- A284851: Fixed point of the morphism 0 -> 01, 1 -> 0100.

Offset 1, canonical program `A284851.P2577468141538468078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284851 (n : ℕ) : ℤ :=
  (A284851.P2577468141538468078.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284912.P5087844353214427284

`char[A284914(n+1)-1]`
-/

namespace A284912.P5087844353214427284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284914 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284912.P5087844353214427284

noncomputable section

/-- A284912: Fixed point of the morphism 0 -> 01, 1 -> 1010.

Offset 1, canonical program `A284912.P5087844353214427284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284912 (n : ℕ) : ℤ :=
  (A284912.P5087844353214427284.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284927.P18268349016529181647

`2*A321817(n+1)-A013954(n+1)`
-/

namespace A284927.P18268349016529181647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321817 (n + 1) - A013954 (n + 1)

end

end A284927.P18268349016529181647

noncomputable section

/-- A284927: a(n) = Sum_{d|n} (-1)^(n/d+1)*d^6.

Offset 1, canonical program `A284927.P18268349016529181647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284927 (n : ℕ) : ℤ :=
  A284927.P18268349016529181647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285097.P8430036968409566481

`val(A322250(A028310(n)), 2)`
-/

namespace A285097.P8430036968409566481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A322250 (A028310 n).toNat).toNat 2

end

end A285097.P8430036968409566481

noncomputable section

/-- A285097: a(n) = difference between the positions of two least significant 1-bits in base-2 representation of n, or 0 if there are less than two 1-bits in n (when n is either zero or a power of 2).

Offset 0, canonical program `A285097.P8430036968409566481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A285097 (n : ℕ) : ℤ :=
  (A285097.P8430036968409566481.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A285097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285965.P14704777127460749347

`A285979(n+2)-A000035(n)`
-/

namespace A285965.P14704777127460749347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285979 (n + 2) - A000035 n

end

end A285965.P14704777127460749347

noncomputable section

/-- A285965: Positions of 1 in A285963; complement of A285964.

Offset 1, canonical program `A285965.P14704777127460749347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A285965 (n : ℕ) : ℤ :=
  A285965.P14704777127460749347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A285965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285975.P17423521814547835926

`char[A285977(n+1)-1]`
-/

namespace A285975.P17423521814547835926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285977 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285975.P17423521814547835926

noncomputable section

/-- A285975: {00->0}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A285975.P17423521814547835926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285975 (n : ℕ) : ℤ :=
  (A285975.P17423521814547835926.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285978.P4350401160499057966

`1-char[A285979(n+1)-1]`
-/

namespace A285978.P4350401160499057966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285979 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285978.P4350401160499057966

noncomputable section

/-- A285978: {00->1}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A285978.P4350401160499057966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285978 (n : ℕ) : ℤ :=
  A285978.P4350401160499057966.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286052.P8197763076954538338

`and(A014205(n)², A026465(A008619(n)))`
-/

namespace A286052.P8197763076954538338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014205 n ^ 2) (A026465 (A008619 n).toNat)

end

end A286052.P8197763076954538338

noncomputable section

/-- A286052: {101->0}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A286052.P8197763076954538338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286052 (n : ℕ) : ℤ :=
  A286052.P8197763076954538338.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286628.P18256267008233098291

`val(A337360(n+1), A070824(n+1)+2)`
-/

namespace A286628.P18256267008233098291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A337360 (n + 1)).toNat (A070824 (n + 1) + 2).toNat

end

end A286628.P18256267008233098291

noncomputable section

/-- A286628: a(n) = exponent of the highest power of A000005(n) (number of divisors of n) dividing A000203(n) (sum of divisors of n), a(1) = 1.

Offset 1, canonical program `A286628.P18256267008233098291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286628 (n : ℕ) : ℤ :=
  (A286628.P18256267008233098291.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286746.P2397408077294088213

`A287772(n-a(n-1))` with `a(0)=0`
-/

namespace A286746.P2397408077294088213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A287772 ((n : ℤ) - a (n - 1)).toNat

end

end A286746.P2397408077294088213

noncomputable section

/-- A286746: {00->null}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A286746.P2397408077294088213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286746 (n : ℕ) : ℤ :=
  A286746.P2397408077294088213.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286903.P10980288912855720806

`char[A286905(n+1)-1]`
-/

namespace A286903.P10980288912855720806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286905 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286903.P10980288912855720806

noncomputable section

/-- A286903: {0->00}-transform of the Sturmian word A080764.

Offset 1, canonical program `A286903.P10980288912855720806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286903 (n : ℕ) : ℤ :=
  (A286903.P10980288912855720806.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286987.P17283735074823528912

`1-char[A286988(n+1)-1]`
-/

namespace A286987.P17283735074823528912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286988 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A286987.P17283735074823528912

noncomputable section

/-- A286987: {111->1}-transform of the Sturmian word A080764.

Offset 1, canonical program `A286987.P17283735074823528912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286987 (n : ℕ) : ℤ :=
  A286987.P17283735074823528912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287072.P6282913887168030122

`2-A287104(A287106(n+1)-n+1)`
-/

namespace A287072.P6282913887168030122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A287104 (A287106 (n + 1) - (n : ℤ) + 1).toNat

end

end A287072.P6282913887168030122

noncomputable section

/-- A287072: Start with 0 and repeatedly substitute 0->01, 1->21, 2->0.

Offset 1, canonical program `A287072.P6282913887168030122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7548 terms. -/
def A287072 (n : ℕ) : ℤ :=
  A287072.P6282913887168030122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7548 terms. -/
def A287072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287453.P9247111651694809918

`A130509(A287454(n+1))`
-/

namespace A287453.P9247111651694809918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130509 (A287454 (n + 1)).toNat

end

end A287453.P9247111651694809918

noncomputable section

/-- A287453: Positions of 1 in A287451.

Offset 1, canonical program `A287453.P9247111651694809918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A287453 (n : ℕ) : ℤ :=
  A287453.P9247111651694809918.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A287453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287675.P5352225782856583721

`floor(A287775(n+1)+n/2)`
-/

namespace A287675.P5352225782856583721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A287775 (n + 1) : ℚ) + (n : ℚ) / 2⌋

end

end A287675.P5352225782856583721

noncomputable section

/-- A287675: Positions of 0 in A287674; complement of A287676.

Offset 1, canonical program `A287675.P5352225782856583721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287675 (n : ℕ) : ℤ :=
  A287675.P5352225782856583721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287722.P15445179942749685933

`char[A287724(n+1)-1]`
-/

namespace A287722.P15445179942749685933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287724 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A287722.P15445179942749685933

noncomputable section

/-- A287722: {0->1, 1->010}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A287722.P15445179942749685933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287722 (n : ℕ) : ℤ :=
  (A287722.P15445179942749685933.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287722.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A224854.P17096122939360505849

`∩[A201804(n+1), A201816(n+1)]`
-/

namespace A224854.P17096122939360505849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224854.P17096122939360505849

noncomputable section

/-- A224854: Numbers n such that 90*n + 11 and 90*n + 13 are twin prime.

Offset 1, canonical program `A224854.P17096122939360505849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2561 terms. -/
def A224854 (n : ℕ) : ℤ :=
  (A224854.P17096122939360505849.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2561 terms. -/
def A224854.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A227428.P16365958953958314226

`A006047(n)-A206424(n)`
-/

namespace A227428.P16365958953958314226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n - A206424 n

end

end A227428.P16365958953958314226

noncomputable section

/-- A227428: Number of twos in row n of triangle A083093.

Offset 0, canonical program `A227428.P16365958953958314226`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, A206424, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A227428 (n : ℕ) : ℤ :=
  A227428.P16365958953958314226.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, A206424, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A227428.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A231877.P9922668353028729998

`lt[n*char[A231876(n+1)], n]`
-/

namespace A231877.P9922668353028729998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231876 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A231877.P9922668353028729998

noncomputable section

/-- A231877: Numbers k such that omega(k)^2 (cf. A001221) does not divide k.

Offset 1, canonical program `A231877.P9922668353028729998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1300 terms. -/
def A231877 (n : ℕ) : ℤ :=
  (A231877.P9922668353028729998.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1300 terms. -/
def A231877.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A245484.P7320759544988298613

`A001001(n+1)-A064987(n+1)`
-/

namespace A245484.P7320759544988298613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001001 (n + 1) - A064987 (n + 1)

end

end A245484.P7320759544988298613

noncomputable section

/-- A245484: a(n) = Sum_{(d

Offset 1, canonical program `A245484.P7320759544988298613`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001001, A064987, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245484 (n : ℕ) : ℤ :=
  A245484.P7320759544988298613.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001001, A064987, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245484.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245908.P1056546773488542885

`A082863(p?[xor(1, n)])`
-/

namespace A245908.P1056546773488542885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082863 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A245908.P1056546773488542885

noncomputable section

/-- A245908: The number of distinct prime factors of prime(n)^2-1.

Offset 1, canonical program `A245908.P1056546773488542885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A245908 (n : ℕ) : ℤ :=
  A245908.P1056546773488542885.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A245908.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A247562.P5849283782100272797`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247562 (n : ℕ) : ℤ :=
  A247562.P5849283782100272797.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247562.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A254046.P17306611648514838872`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051064, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A254046 (n : ℕ) : ℤ :=
  A254046.P17306611648514838872.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051064, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A254046.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A262684.P17488021356452668094

`1-A262683(n+1)`
-/

namespace A262684.P17488021356452668094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A262683 (n + 1)

end

end A262684.P17488021356452668094

noncomputable section

/-- A262684: Characteristic function for A080218.

Offset 1, canonical program `A262684.P17488021356452668094`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262683, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262684 (n : ℕ) : ℤ :=
  A262684.P17488021356452668094.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262683, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262684.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A263084.P12304099767879666495

`∑[A051950(2*(n+1))]`
-/

namespace A263084.P12304099767879666495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263084.P12304099767879666495

noncomputable section

/-- A263084: a(n) = A263086(n) - A263085(n).

Offset 1, canonical program `A263084.P12304099767879666495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263084 (n : ℕ) : ℤ :=
  A263084.P12304099767879666495.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263084.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A274206.P16201747773322554499

`(n+1)%(10^A160094(n+1))`
-/

namespace A274206.P16201747773322554499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (SequenceMachineLib.roundAway ((10 : ℚ) ^ (A160094 (n + 1) : ℤ)))

end

end A274206.P16201747773322554499

noncomputable section

/-- A274206: a(n) = the last nonzero digit of n followed by all the trailing zeros of n.

Offset 1, canonical program `A274206.P16201747773322554499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274206 (n : ℕ) : ℤ :=
  A274206.P16201747773322554499.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278908.P3432667754633221191

`∏{e}[n+1, A034444(#)]`
-/

namespace A278908.P3432667754633221191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A034444 (Nat.factorization (f1 n) p)

end

end A278908.P3432667754633221191

noncomputable section

/-- A278908: Multiplicative with a(p^e) = 2^omega(e), where omega = A001221.

Offset 1, canonical program `A278908.P3432667754633221191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278908 (n : ℕ) : ℤ :=
  A278908.P3432667754633221191.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285881.P15118884319307160235

`A013928(n+2)-A285879(n+1)`
-/

namespace A285881.P15118884319307160235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 2) - A285879 (n + 1)

end

end A285881.P15118884319307160235

noncomputable section

/-- A285881: Number of even squarefree numbers <= n.

Offset 1, canonical program `A285881.P15118884319307160235`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, A285879, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A285881 (n : ℕ) : ℤ :=
  A285881.P15118884319307160235.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, A285879, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A285881.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A256533.P5671197403926202284

`A332264(n+1)+A175254(n+1)`
-/

namespace A256533.P5671197403926202284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332264 (n + 1) + A175254 (n + 1)

end

end A256533.P5671197403926202284

noncomputable section

/-- A256533: Product of n and the sum of all divisors of all positive integers <= n.

Offset 1, canonical program `A256533.P5671197403926202284`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175254, A332264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A256533 (n : ℕ) : ℤ :=
  A256533.P5671197403926202284.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175254, A332264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A256533.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A280049.P1262711397762833047

`A007088(A003159(n+1))`
-/

namespace A280049.P1262711397762833047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A003159 (n + 1)).toNat

end

end A280049.P1262711397762833047

noncomputable section

/-- A280049: Canonical representation of n as a sum of distinct Jacobsthal numbers J(n) (A001045) (see Comments for details); also binary numbers that end in an even number of zeros.

Offset 1, canonical program `A280049.P1262711397762833047`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003159, A007088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280049 (n : ℕ) : ℤ :=
  A280049.P1262711397762833047.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003159, A007088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280049.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A281149.P12904850799090773250

`A007088(A171885(n+1))`
-/

namespace A281149.P12904850799090773250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A171885 (n + 1)).toNat

end

end A281149.P12904850799090773250

noncomputable section

/-- A281149: Elias gamma code (EGC) for n.

Offset 1, canonical program `A281149.P12904850799090773250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A281149 (n : ℕ) : ℤ :=
  A281149.P12904850799090773250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A281149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283997.P17182648528535694112

`A283996(n)-A283998(n)`
-/

namespace A283997.P17182648528535694112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283996 n - A283998 n

end

end A283997.P17182648528535694112

noncomputable section

/-- A283997: a(n) = n XOR A005187(floor(n/2)), where XOR is bitwise-xor (A003987).

Offset 0, canonical program `A283997.P17182648528535694112`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283996, A283998, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A283997 (n : ℕ) : ℤ :=
  A283997.P17182648528535694112.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283996, A283998, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A283997.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284820.P16918251575447438407

`eq[char[A284847(n+1)], A000007(n)]`
-/

namespace A284820.P16918251575447438407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284847 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A284820.P16918251575447438407

noncomputable section

/-- A284820: Positions of 0 in the {1100->0}-transform of A010060; complement of A284847.

Offset 1, canonical program `A284820.P16918251575447438407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5555 terms. -/
def A284820 (n : ℕ) : ℤ :=
  (A284820.P16918251575447438407.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5555 terms. -/
def A284820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287015.P2593987207787593327

`A007088(A000032(n))`
-/

namespace A287015.P2593987207787593327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000032 n).toNat

end

end A287015.P2593987207787593327

noncomputable section

/-- A287015: Lucas numbers written in base 2.

Offset 0, canonical program `A287015.P2593987207787593327`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287015 (n : ℕ) : ℤ :=
  A287015.P2593987207787593327.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287015.provenance : SequenceMachineLib.Provenance := .conditional

