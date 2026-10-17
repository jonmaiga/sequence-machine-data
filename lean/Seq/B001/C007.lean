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

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A231620.P1269331257882165954

`A000930(n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A231620.P1269331257882165954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n ^ 2)

end

end A231620.P1269331257882165954

noncomputable section

/-- A231620: a(n) = A000930(n^2), where A000930 is Narayana's cows sequence.

Offset 0, canonical program `A231620.P1269331257882165954`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000930(n²)` (program `A231620.P1269331257882165954`, by `A231620.P1269331257882165954.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A231620 (n : ℕ) : ℤ :=
  A231620.P1269331257882165954.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000930(n²)` (program `A231620.P1269331257882165954`, by `A231620.P1269331257882165954.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A231620.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A231621.P11402412686938669235

`A000930(n*(n+1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A231621.P11402412686938669235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat

end

end A231621.P11402412686938669235

noncomputable section

/-- A231621: a(n) = A000930(n*(n+1)/2), where A000930 is Narayana's cows sequence.

Offset 0, canonical program `A231621.P11402412686938669235`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000930(n*(n+1)/2)` (program `A231621.P11402412686938669235`, by `A231621.P11402412686938669235.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A231621 (n : ℕ) : ℤ :=
  A231621.P11402412686938669235.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000930(n*(n+1)/2)` (program `A231621.P11402412686938669235`, by `A231621.P11402412686938669235.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A231621.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A219389.P8139600210026434129

`(A175886(n+1)²-1)/13`
-/

namespace A219389.P8139600210026434129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175886 (n + 1) ^ 2 - 1 : ℚ) / 13

end

end A219389.P8139600210026434129

noncomputable section

/-- A219389: Numbers k such that 13*k+1 is a square.

Offset 1, canonical program `A219389.P8139600210026434129`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A219389 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A219389.P8139600210026434129.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A219389.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A219462.P5614578218388287376

`A000351(n)*A001906(n)`
-/

namespace A219462.P5614578218388287376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n * A001906 n

end

end A219462.P5614578218388287376

noncomputable section

/-- A219462: a(n) = Sum_{k = 1..2*n} binomial(2*n,k) * Fibonacci(2*k).

Offset 0, canonical program `A219462.P5614578218388287376`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A219462 (n : ℕ) : ℤ :=
  A219462.P5614578218388287376.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A219462.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A220436.P15888042924145104676

`A127546(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A220436.P15888042924145104676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127546 n ^ 2

end

end A220436.P15888042924145104676

noncomputable section

/-- A220436: a(n) = A127546(n)^2.

Offset 0, canonical program `A220436.P15888042924145104676`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220436 (n : ℕ) : ℤ :=
  A220436.P15888042924145104676.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220436.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A221719.P2919061492299489347

`A083329(n+1)-A000045(n+3)`
-/

namespace A221719.P2919061492299489347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 (n + 1) - A000045 (n + 3)

end

end A221719.P2919061492299489347

noncomputable section

/-- A221719: a(n) = 3*2^n - Fibonacci(n+3) - 1.

Offset 0, canonical program `A221719.P2919061492299489347`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A221719 (n : ℕ) : ℤ :=
  A221719.P2919061492299489347.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A221719.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A221874.P16110993488221044620

`2*A129556(n+1)+1`
-/

namespace A221874.P16110993488221044620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129556 (n + 1) + 1

end

end A221874.P16110993488221044620

noncomputable section

/-- A221874: Numbers m such that 10*m^2 + 6 is a square.

Offset 1, canonical program `A221874.P16110993488221044620`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A221874 (n : ℕ) : ℤ :=
  A221874.P16110993488221044620.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A221874.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A222407.P11853468899913562210

`A010888(A000073(n))`
-/

namespace A222407.P11853468899913562210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A000073 n).toNat

end

end A222407.P11853468899913562210

noncomputable section

/-- A222407: Digital roots of tribonacci numbers A000073.

Offset 0, canonical program `A222407.P11853468899913562210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A222407 (n : ℕ) : ℤ :=
  A222407.P11853468899913562210.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A222407.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A222716.P15093168432039899886

`10*A024166(n)`
-/

namespace A222716.P15093168432039899886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A024166 n

end

end A222716.P15093168432039899886

noncomputable section

/-- A222716: Numbers which are both the sum of n+1 consecutive triangular numbers and the sum of the n-1 immediately following triangular numbers.

Offset 1, canonical program `A222716.P15093168432039899886`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A222716 (n : ℕ) : ℤ :=
  A222716.P15093168432039899886.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A222716.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A225328.P14388853100062003675

`A002426(n)^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A225328.P14388853100062003675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n ^ n

end

end A225328.P14388853100062003675

noncomputable section

/-- A225328: a(n) = A002426(n)^n, where A002426 is the central trinomial coefficients.

Offset 0, canonical program `A225328.P14388853100062003675`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225328 (n : ℕ) : ℤ :=
  A225328.P14388853100062003675.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225328.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A225602.P3911621368011717902

`A002426(n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A225602.P3911621368011717902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (n ^ 2)

end

end A225602.P3911621368011717902

noncomputable section

/-- A225602: a(n) = A002426(n^2), where A002426 is the central trinomial coefficients.

Offset 0, canonical program `A225602.P3911621368011717902`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225602 (n : ℕ) : ℤ :=
  A225602.P3911621368011717902.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225602.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A226493.P13246878929426534135

`12*A015518(n)`
-/

namespace A226493.P13246878929426534135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A015518 n

end

end A226493.P13246878929426534135

noncomputable section

/-- A226493: Closed walks of length n in K_4 graph.

Offset 1, canonical program `A226493.P13246878929426534135`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A226493 (n : ℕ) : ℤ :=
  A226493.P13246878929426534135.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A226493.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A226881.P11275722064909766115

`A027306(n)-1`
-/

namespace A226881.P11275722064909766115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 n - 1

end

end A226881.P11275722064909766115

noncomputable section

/-- A226881: Number of n-length binary words w with #(w,0) >= #(w,1) >= 1, where #(w,x) gives the number of digits x in w.

Offset 0, canonical program `A226881.P11275722064909766115`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A226881 (n : ℕ) : ℤ :=
  A226881.P11275722064909766115.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A226881.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A227168.P16341637054509734106

`A062828(n+1)²`
-/

namespace A227168.P16341637054509734106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062828 (n + 1) ^ 2

end

end A227168.P16341637054509734106

noncomputable section

/-- A227168: a(n) = gcd(2*n, n*(n+1)/2)^2.

Offset 1, canonical program `A227168.P16341637054509734106`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227168 (n : ℕ) : ℤ :=
  A227168.P16341637054509734106.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227168.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A227200.P9264526407839763535

`A000032(n+1)-2^n`
-/

namespace A227200.P9264526407839763535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - (2 ^ n : ℤ)

end

end A227200.P9264526407839763535

noncomputable section

/-- A227200: a(n) = a(n-1) + a(n-2) - 2^(n-1) with a(0)=a(2)=0, a(1)=-a(3)=1, a(4)=-5.

Offset 0, canonical program `A227200.P9264526407839763535`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227200 (n : ℕ) : ℤ :=
  A227200.P9264526407839763535.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227200.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A227241.P1522147016068319572

`A014105(A000203(n+1))`
-/

namespace A227241.P1522147016068319572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 (A000203 (n + 1)).toNat

end

end A227241.P1522147016068319572

noncomputable section

/-- A227241: a(n) = sigma(n)*( 2*sigma(n)+1 ).

Offset 1, canonical program `A227241.P1522147016068319572`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227241 (n : ℕ) : ℤ :=
  A227241.P1522147016068319572.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227241.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A227380.P17588488786740241967

`n*A130658(n+2)`
-/

namespace A227380.P17588488786740241967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A130658 (n + 2)

end

end A227380.P17588488786740241967

noncomputable section

/-- A227380: Doubling the first two of every four nonnegative numbers.

Offset 0, canonical program `A227380.P17588488786740241967`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227380 (n : ℕ) : ℤ :=
  A227380.P17588488786740241967.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227380.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228078.P11542837147799092951

`A099036(n)-1`
-/

namespace A228078.P11542837147799092951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099036 n - 1

end

end A228078.P11542837147799092951

noncomputable section

/-- A228078: a(n) = 2^n - Fibonacci(n) - 1.

Offset 0, canonical program `A228078.P11542837147799092951`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228078 (n : ℕ) : ℤ :=
  A228078.P11542837147799092951.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228078.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228192.P1282458228068176169

`A001850(n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A228192.P1282458228068176169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 (n ^ 2)

end

end A228192.P1282458228068176169

noncomputable section

/-- A228192: a(n) = A001850(n^2), where A001850 forms the central Delannoy numbers.

Offset 0, canonical program `A228192.P1282458228068176169`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228192 (n : ℕ) : ℤ :=
  A228192.P1282458228068176169.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228192.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228292.P17749480414567481058

`n*A053717(n)`
-/

namespace A228292.P17749480414567481058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A053717 n

end

end A228292.P17749480414567481058

noncomputable section

/-- A228292: a(n) = Sum_{k=1..8} n^k.

Offset 0, canonical program `A228292.P17749480414567481058`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228292 (n : ℕ) : ℤ :=
  A228292.P17749480414567481058.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228292.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228293.P3194510713492956610

`n*A102909(n)`
-/

namespace A228293.P3194510713492956610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A102909 n

end

end A228293.P3194510713492956610

noncomputable section

/-- A228293: a(n) = Sum_{k=1..9} n^k.

Offset 0, canonical program `A228293.P3194510713492956610`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228293 (n : ℕ) : ℤ :=
  A228293.P3194510713492956610.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228293.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228568.P10699281856534938319

`2^n*A056236(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A228568.P10699281856534938319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A056236 n

end

end A228568.P10699281856534938319

noncomputable section

/-- A228568: a(n) = 2^n*A056236(n).

Offset 0, canonical program `A228568.P10699281856534938319`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228568 (n : ℕ) : ℤ :=
  A228568.P10699281856534938319.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228568.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228748.P8566336891877325496

`A000129(n)-A000032(n)`
-/

namespace A228748.P8566336891877325496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n - A000032 n

end

end A228748.P8566336891877325496

noncomputable section

/-- A228748: Pell numbers (A000129) minus Lucas numbers beginning at 2 (A000032).

Offset 0, canonical program `A228748.P8566336891877325496`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228748 (n : ℕ) : ℤ :=
  A228748.P8566336891877325496.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228748.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228778.P331990380005633324

`A000301(n)+1`
-/

namespace A228778.P331990380005633324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000301 n + 1

end

end A228778.P331990380005633324

noncomputable section

/-- A228778: a(n) = 2^Fibonacci(n) + 1.

Offset 0, canonical program `A228778.P331990380005633324`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228778 (n : ℕ) : ℤ :=
  A228778.P331990380005633324.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228778.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228842.P15669196099016926791

`2*A098648(n)`
-/

namespace A228842.P15669196099016926791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098648 n

end

end A228842.P15669196099016926791

noncomputable section

/-- A228842: Binomial transform of A014448.

Offset 0, canonical program `A228842.P15669196099016926791`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228842 (n : ℕ) : ℤ :=
  A228842.P15669196099016926791.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228842.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228889.P16105252454713248771

`6*A228888(n+1)`
-/

namespace A228889.P16105252454713248771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A228888 (n + 1)

end

end A228889.P16105252454713248771

noncomputable section

/-- A228889: a(n) = 3*n*(3*n + 1)*(3*n + 2).

Offset 1, canonical program `A228889.P16105252454713248771`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228889 (n : ℕ) : ℤ :=
  A228889.P16105252454713248771.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228889.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A229198.P8206997386227467298

`A229194(n)-A000045(n)`
-/

namespace A229198.P8206997386227467298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229194 n - A000045 n

end

end A229198.P8206997386227467298

noncomputable section

/-- A229198: Difference between integers nearest to (2^((n-3)/2) + 3^((n-3)/2)) (A229194) and Fibonacci numbers (A000045).

Offset 0, canonical program `A229198.P8206997386227467298`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229198 (n : ℕ) : ℤ :=
  A229198.P8206997386227467298.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229198.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A229912.P4073503391704194822

`A000045(n)+2*A007598(n)`
-/

namespace A229912.P4073503391704194822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + 2 * A007598 n

end

end A229912.P4073503391704194822

noncomputable section

/-- A229912: a(n) = Fibonacci(n) * (2*Fibonacci(n) + 1).

Offset 0, canonical program `A229912.P4073503391704194822`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229912 (n : ℕ) : ℤ :=
  A229912.P4073503391704194822.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229912.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A230338.P7619131288764431844

`A004254(2^n)`
-/

namespace A230338.P7619131288764431844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 (2 ^ n)

end

end A230338.P7619131288764431844

noncomputable section

/-- A230338: Recurrence equation: a(0) = 1 and a(n) = a(n-1)*sqrt(21*a(n-1)^2 + 4) for n >= 1.

Offset 0, canonical program `A230338.P7619131288764431844`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230338 (n : ℕ) : ℤ :=
  A230338.P7619131288764431844.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230338.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A230600.P9476386221300362793

`A000032(2^n-1)`
-/

namespace A230600.P9476386221300362793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 ^ n - 1)

end

end A230600.P9476386221300362793

noncomputable section

/-- A230600: a(n) = Lucas(2^n - 1).

Offset 0, canonical program `A230600.P9476386221300362793`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230600 (n : ℕ) : ℤ :=
  A230600.P9476386221300362793.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230600.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A230601.P4868218983335923162

`A000032(2^n+2)`
-/

namespace A230601.P4868218983335923162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 ^ n + 2)

end

end A230601.P4868218983335923162

noncomputable section

/-- A230601: a(n) = Lucas(2^n + 2).

Offset 0, canonical program `A230601.P4868218983335923162`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230601 (n : ℕ) : ℤ :=
  A230601.P4868218983335923162.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230601.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A231303.P965024635069111883

`12*A000389(n+3)+A000292(n)`
-/

namespace A231303.P965024635069111883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A000389 (n + 3) + A000292 n

end

end A231303.P965024635069111883

noncomputable section

/-- A231303: Recurrence a(n) = a(n-2) + n^M for M=4, starting with a(0)=0, a(1)=1.

Offset 0, canonical program `A231303.P965024635069111883`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A231303 (n : ℕ) : ℤ :=
  A231303.P965024635069111883.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A231303.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A231601.P16049753195343794936

`A081123(n+1)*A110138(n)`
-/

namespace A231601.P16049753195343794936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (n + 1) * A110138 n

end

end A231601.P16049753195343794936

noncomputable section

/-- A231601: Number of permutations of [n] avoiding ascents from odd to even numbers.

Offset 0, canonical program `A231601.P16049753195343794936`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A231601 (n : ℕ) : ℤ :=
  A231601.P16049753195343794936.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A231601.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A232395.P11128109952145473131

`A068527(A053698(n))`
-/

namespace A232395.P11128109952145473131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A053698 n).toNat

end

end A232395.P11128109952145473131

noncomputable section

/-- A232395: (ceiling(sqrt(n^3 + n^2 + n + 1)))^2 - (n^3 + n^2 + n + 1).

Offset 0, canonical program `A232395.P11128109952145473131`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232395 (n : ℕ) : ℤ :=
  A232395.P11128109952145473131.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232395.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A232500.P15749173745370117261

`A056040(n)*(1-2/(floor(n/2)+1))`
-/

namespace A232500.P15749173745370117261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n : ℚ) * (1 - 2 / (⌊(n : ℚ) / 2⌋ + 1 : ℚ))

end

end A232500.P15749173745370117261

noncomputable section

/-- A232500: Oscillating orbitals over n sectors (nonpositive values indicating there exist none).

Offset 0, canonical program `A232500.P15749173745370117261`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232500 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A232500.P15749173745370117261.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232500.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A232600.P3720344291566753920

`2*(-1)^n*A045883(n)`
-/

namespace A232600.P3720344291566753920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (-1) ^ n * A045883 n

end

end A232600.P3720344291566753920

noncomputable section

/-- A232600: a(n) = Sum_{k=0..n} k^p*q^k, where p=1, q=-2.

Offset 0, canonical program `A232600.P3720344291566753920`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232600 (n : ℕ) : ℤ :=
  A232600.P3720344291566753920.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232600.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A232806.P16277909643424588756

`2*A002065(n)+1`
-/

namespace A232806.P16277909643424588756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002065 n + 1

end

end A232806.P16277909643424588756

noncomputable section

/-- A232806: a(n) = a(n-1)^2/2 + 5/2, a(0) = 1.

Offset 0, canonical program `A232806.P16277909643424588756`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232806 (n : ℕ) : ℤ :=
  A232806.P16277909643424588756.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232806.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A233247.P14585939361984691342

`A000930(n)²`
-/

namespace A233247.P14585939361984691342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n ^ 2

end

end A233247.P14585939361984691342

noncomputable section

/-- A233247: Expansion of ( 1-x^3-x^2 ) / ( (x^3-x^2-1)*(x^3+2*x^2+x-1) ).

Offset 0, canonical program `A233247.P14585939361984691342`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A233247 (n : ℕ) : ℤ :=
  A233247.P14585939361984691342.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A233247.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A233273.P5970304182537825218

`A233272(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A233273.P5970304182537825218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233272 (2 * n + 1)

end

end A233273.P5970304182537825218

noncomputable section

/-- A233273: Bisection of A233272: a(n) = A233272(2n+1).

Offset 0, canonical program `A233273.P5970304182537825218`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A233273 (n : ℕ) : ℤ :=
  A233273.P5970304182537825218.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A233273.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A234598.P11113428965064186318

`A234597(n+4)+A234576(n+4)`
-/

namespace A234598.P11113428965064186318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234597 (n + 4) + A234576 (n + 4)

end

end A234598.P11113428965064186318

noncomputable section

/-- A234598: Cardinality of the Weyl alternation set corresponding to the zero-weight in the adjoint representation of the Lie algebra of so(2n).

Offset 4, canonical program `A234598.P11113428965064186318`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234598 (n : ℕ) : ℤ :=
  A234598.P11113428965064186318.a (n - 4)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234598.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A235534.P3376776800515303205

`A001764(2*n)`
-/

namespace A235534.P3376776800515303205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 (2 * n)

end

end A235534.P3376776800515303205

noncomputable section

/-- A235534: a(n) = binomial(6*n, 2*n) / (4*n + 1).

Offset 0, canonical program `A235534.P3376776800515303205`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A235534 (n : ℕ) : ℤ :=
  A235534.P3376776800515303205.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A235534.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A235535.P10117489047087618360

`A001764(3*n)`
-/

namespace A235535.P10117489047087618360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 (3 * n)

end

end A235535.P10117489047087618360

noncomputable section

/-- A235535: a(n) = binomial(9*n, 3*n) / (6*n + 1).

Offset 0, canonical program `A235535.P10117489047087618360`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A235535 (n : ℕ) : ℤ :=
  A235535.P10117489047087618360.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A235535.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A235963.P8917601203416474347

`A180447(n)+A085141(n)`
-/

namespace A235963.P8917601203416474347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 n + A085141 n

end

end A235963.P8917601203416474347

noncomputable section

/-- A235963: n appears (n+1)/(1 + (n mod 2)) times.

Offset 0, canonical program `A235963.P8917601203416474347`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A235963 (n : ℕ) : ℤ :=
  A235963.P8917601203416474347.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A235963.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A236377.P339874370298689307

`A000330(n)+A127630(n)-A000035(n)`
-/

namespace A236377.P339874370298689307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n + A127630 n - A000035 n

end

end A236377.P339874370298689307

noncomputable section

/-- A236377: Real part of Sum_{k=0..n} (k + i^k)^2, where i=sqrt(-1).

Offset 0, canonical program `A236377.P339874370298689307`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236377 (n : ℕ) : ℤ :=
  A236377.P339874370298689307.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236377.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A237884.P1196767609388771144

`A056040(n)*floor(n/2)/(floor(n/2)+1)`
-/

namespace A237884.P1196767609388771144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n * ⌊(n : ℚ) / 2⌋ : ℚ) / (⌊(n : ℚ) / 2⌋ + 1 : ℚ)

end

end A237884.P1196767609388771144

noncomputable section

/-- A237884: a(n) = (n!*m)/(m!*(m+1)!) where m = floor(n/2).

Offset 0, canonical program `A237884.P1196767609388771144`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A237884 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A237884.P1196767609388771144.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A237884.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A238411.P18266438857986914602

`2*A093353(n)`
-/

namespace A238411.P18266438857986914602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093353 n

end

end A238411.P18266438857986914602

noncomputable section

/-- A238411: a(n) = 2*n*floor(n/2).

Offset 1, canonical program `A238411.P18266438857986914602`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A238411 (n : ℕ) : ℤ :=
  A238411.P18266438857986914602.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A238411.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A238846.P5560626772614435074

`3*a(n-1)-a(n-2)+A001519(n)` with `a(0)=1, a(1)=4`
-/

namespace A238846.P5560626772614435074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * a (n - 1) - a (n - 2) + A001519 n

end

end A238846.P5560626772614435074

noncomputable section

/-- A238846: Expansion of (1-2*x)/(1-3*x+x^2)^2.

Offset 0, canonical program `A238846.P5560626772614435074`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A238846 (n : ℕ) : ℤ :=
  A238846.P5560626772614435074.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A238846.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239342.P4179228539437932597

`a(n-1)+a(n-2)+A000045(n-2)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A239342.P4179228539437932597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3] fun n a =>
  a (n - 1) + a (n - 2) + A000045 (n - 2)

end

end A239342.P4179228539437932597

noncomputable section

/-- A239342: Number of 1's in all compositions of n into odd parts.

Offset 0, canonical program `A239342.P4179228539437932597`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239342 (n : ℕ) : ℤ :=
  A239342.P4179228539437932597.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239342.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239609.P13990594251603008149

`A144130(n)²`
-/

namespace A239609.P13990594251603008149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144130 n ^ 2

end

end A239609.P13990594251603008149

noncomputable section

/-- A239609: Sin(arcsin(n)- 3 arccos(n))^2.

Offset 0, canonical program `A239609.P13990594251603008149`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239609 (n : ℕ) : ℤ :=
  A239609.P13990594251603008149.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239609.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239840.P16672039693929608220

`n!*A000085(n)`
-/

namespace A239840.P16672039693929608220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000085 n

end

end A239840.P16672039693929608220

noncomputable section

/-- A239840: Number of ordered pairs of permutation functions (f,g) on n elements satisfying f(x) = f(g(g(x))).

Offset 0, canonical program `A239840.P16672039693929608220`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239840 (n : ℕ) : ℤ :=
  A239840.P16672039693929608220.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239840.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A240836.P5427845226329489471

`2*A081016(n)`
-/

namespace A240836.P5427845226329489471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081016 n

end

end A240836.P5427845226329489471

noncomputable section

/-- A240836: Numbers n such that n^3 = x*y*z where 2 <= x <= y <= z , n^3+1 = (x-1)*(y+1)*(z+1).

Offset 1, canonical program `A240836.P5427845226329489471`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240836 (n : ℕ) : ℤ :=
  A240836.P5427845226329489471.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240836.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A241527.P6609325551221532550

`A000578(n)+A007051(n)`
-/

namespace A241527.P6609325551221532550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + A007051 n

end

end A241527.P6609325551221532550

noncomputable section

/-- A241527: a(n) = n^3 + (3^n+1)/2.

Offset 0, canonical program `A241527.P6609325551221532550`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A241527 (n : ℕ) : ℤ :=
  A241527.P6609325551221532550.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A241527.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A241894.P17174019636187558007

`A000982(A005578(n+1))`
-/

namespace A241894.P17174019636187558007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A005578 (n + 1)).toNat

end

end A241894.P17174019636187558007

noncomputable section

/-- A241894: The total number of squares and rectangles appearing in the Thue-Morse sequence (1, 0 version) logical matrices after n stages.

Offset 0, canonical program `A241894.P17174019636187558007`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A241894 (n : ℕ) : ℤ :=
  A241894.P17174019636187558007.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A241894.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A242496.P2613612296024816382

`A001519(n+2)-A000032(n+2)+A059841(n)`
-/

namespace A242496.P2613612296024816382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 2) - A000032 (n + 2) + A059841 n

end

end A242496.P2613612296024816382

noncomputable section

/-- A242496: a(n)=sum_{j=0..n} sum_{i=0..j} F(i)*L(j), where F(n)=A000045(n) and L(n)=A000032(n).

Offset 0, canonical program `A242496.P2613612296024816382`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242496 (n : ℕ) : ℤ :=
  A242496.P2613612296024816382.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242496.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A242558.P7844537951495856975

`A001519(n+2)-A000045(n+2)-A059841(n)`
-/

namespace A242558.P7844537951495856975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 2) - A000045 (n + 2) - A059841 n

end

end A242558.P7844537951495856975

noncomputable section

/-- A242558: a(n) = Sum_{j=0..n} Sum_{i=0..j} L(i)*F(j) where L(i)=A000032(i) and F(j)=A000045(j).

Offset 0, canonical program `A242558.P7844537951495856975`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242558 (n : ℕ) : ℤ :=
  A242558.P7844537951495856975.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242558.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A242771.P18361279278039345201

`floor(A147874(n+1)/12)`
-/

namespace A242771.P18361279278039345201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A147874 (n + 1) : ℚ) / 12⌋

end

end A242771.P18361279278039345201

noncomputable section

/-- A242771: Number of integer points in a certain quadrilateral scaled by a factor of n (another version).

Offset 1, canonical program `A242771.P18361279278039345201`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242771 (n : ℕ) : ℤ :=
  A242771.P18361279278039345201.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242771.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A242954.P14541074742461546009

`4^A054893(n)`
-/

namespace A242954.P14541074742461546009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A054893 n : ℤ)

end

end A242954.P14541074742461546009

noncomputable section

/-- A242954: a(n) = Product_{i=1..n} A234957(i).

Offset 0, canonical program `A242954.P14541074742461546009`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242954 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A242954.P14541074742461546009.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242954.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A242986.P5456569272027339926

`6*(n+1)/(3+floor(n/2))*A056040(n)`
-/

namespace A242986.P5456569272027339926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((n + 1 : ℚ) / (3 + ⌊(n : ℚ) / 2⌋ : ℚ)) * (A056040 n : ℚ)

end

end A242986.P5456569272027339926

noncomputable section

/-- A242986: a(n) = 6*(n+1)!/((3+floor(n/2))*(floor(n/2)!)^2).

Offset 0, canonical program `A242986.P5456569272027339926`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242986 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A242986.P5456569272027339926.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242986.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A243201.P1770549597896343998

`A003215(n)*A002061(n+1)`
-/

namespace A243201.P1770549597896343998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n * A002061 (n + 1)

end

end A243201.P1770549597896343998

noncomputable section

/-- A243201: Odd octagonal numbers indexed by triangular numbers.

Offset 0, canonical program `A243201.P1770549597896343998`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243201 (n : ℕ) : ℤ :=
  A243201.P1770549597896343998.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243201.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A243757.P16530541461814582168

`5^A027868(n)`
-/

namespace A243757.P16530541461814582168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A027868 n : ℤ)

end

end A243757.P16530541461814582168

noncomputable section

/-- A243757: a(n) = Product_{i=1..n} A060904(i).

Offset 0, canonical program `A243757.P16530541461814582168`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243757 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A243757.P16530541461814582168.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243757.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A243758.P2844968170181459511

`6^A054895(n)`
-/

namespace A243758.P2844968170181459511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A054895 n : ℤ)

end

end A243758.P2844968170181459511

noncomputable section

/-- A243758: a(n) = Product_{i=1..n} A234959(i).

Offset 0, canonical program `A243758.P2844968170181459511`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243758 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A243758.P2844968170181459511.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243758.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A243949.P3811031201628958168

`A001850(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243949.P3811031201628958168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n ^ 2

end

end A243949.P3811031201628958168

noncomputable section

/-- A243949: Squares of the central Delannoy numbers: a(n) = A001850(n)^2.

Offset 0, canonical program `A243949.P3811031201628958168`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243949 (n : ℕ) : ℤ :=
  A243949.P3811031201628958168.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243949.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244213.P17304327699620158115

`(-1)^n*(A000032(n)-4)`
-/

namespace A244213.P17304327699620158115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (A000032 n - 4)

end

end A244213.P17304327699620158115

noncomputable section

/-- A244213: Inverse binomial transform of -2 followed by A000032(n+1).

Offset 0, canonical program `A244213.P17304327699620158115`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244213 (n : ℕ) : ℤ :=
  A244213.P17304327699620158115.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244213.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244309.P10908042367509660093

`A045991(A000045(n))`
-/

namespace A244309.P10908042367509660093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 (A000045 n).toNat

end

end A244309.P10908042367509660093

noncomputable section

/-- A244309: a(n) = F(n)^3 - F(n)^2, where F(n) is the n-th Fibonacci number (A000045).

Offset 0, canonical program `A244309.P10908042367509660093`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244309 (n : ℕ) : ℤ :=
  A244309.P10908042367509660093.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244309.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244310.P14646271545363683586

`A045991(A000032(n))`
-/

namespace A244310.P14646271545363683586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 (A000032 n).toNat

end

end A244310.P14646271545363683586

noncomputable section

/-- A244310: a(n) = L(n)^3 - L(n)^2, where L(n) is the n-th Lucas number (A000032).

Offset 0, canonical program `A244310.P14646271545363683586`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244310 (n : ℕ) : ℤ :=
  A244310.P14646271545363683586.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244310.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A245087.P13752011406387249506

`A011371(A000142(n))`
-/

namespace A245087.P13752011406387249506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A000142 n).toNat

end

end A245087.P13752011406387249506

noncomputable section

/-- A245087: Largest number such that 2^a(n) is a divisor of (n!)!.

Offset 0, canonical program `A245087.P13752011406387249506`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245087 (n : ℕ) : ℤ :=
  A245087.P13752011406387249506.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245087.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A245271.P106603522418744146

`A000196(A069921(n))`
-/

namespace A245271.P106603522418744146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A069921 n).toNat

end

end A245271.P106603522418744146

noncomputable section

/-- A245271: a(n) = floor(sqrt(F(n+2)^2 + F(n)^2)), where F(n) = A000045(n).

Offset 0, canonical program `A245271.P106603522418744146`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245271 (n : ℕ) : ℤ :=
  A245271.P106603522418744146.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245271.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A245306.P10234298044598893059

`A007598(n)+1`
-/

namespace A245306.P10234298044598893059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n + 1

end

end A245306.P10234298044598893059

noncomputable section

/-- A245306: a(n) = Fibonacci(n)^2+1.

Offset 0, canonical program `A245306.P10234298044598893059`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245306 (n : ℕ) : ℤ :=
  A245306.P10234298044598893059.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245306.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A245561.P7448291785816746591

`5^n-A020876(n)+1`
-/

namespace A245561.P7448291785816746591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) - A020876 n + 1

end

end A245561.P7448291785816746591

noncomputable section

/-- A245561: a(n) = 5^n - ( (sqrt(5)*phi)^n + (sqrt(5)/phi)^n ) + 1, where phi = golden ratio A001622.

Offset 0, canonical program `A245561.P7448291785816746591`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245561 (n : ℕ) : ℤ :=
  A245561.P7448291785816746591.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245561.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A246508.P5095176053694706839

`A010888(A007775(n+1))`
-/

namespace A246508.P5095176053694706839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A007775 (n + 1)).toNat

end

end A246508.P5095176053694706839

noncomputable section

/-- A246508: Digital root of numbers congruent to {1,7,11,13,17,19,23,29} modulo 30.

Offset 1, canonical program `A246508.P5095176053694706839`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246508 (n : ℕ) : ℤ :=
  A246508.P5095176053694706839.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246508.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A246961.P12274593761469156777

`3^n*A007798(n)+2*A134939(n)`
-/

namespace A246961.P12274593761469156777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A007798 n + 2 * A134939 n

end

end A246961.P12274593761469156777

noncomputable section

/-- A246961: Numerator of the expected number of random moves in Tower of Hanoi problem with n disks starting at a randomly chosen valid configuration and ending with all disks at peg 1.

Offset 0, canonical program `A246961.P12274593761469156777`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246961 (n : ℕ) : ℤ :=
  A246961.P12274593761469156777.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246961.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A247014.P13063591398842416797

`2^A000982(n)`
-/

namespace A247014.P13063591398842416797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000982 n : ℤ)

end

end A247014.P13063591398842416797

noncomputable section

/-- A247014: Number of binary centrosymmetric matrices of size n X n.

Offset 0, canonical program `A247014.P13063591398842416797`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247014 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A247014.P13063591398842416797.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247014.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A247194.P11839691143919852225

`A121381(n^3)`
-/

namespace A247194.P11839691143919852225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121381 (n ^ 3)

end

end A247194.P11839691143919852225

noncomputable section

/-- A247194: a(n) = ceiling(Pi*n^3).

Offset 0, canonical program `A247194.P11839691143919852225`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247194 (n : ℕ) : ℤ :=
  A247194.P11839691143919852225.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247194.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A247619.P7380383791181226722

`5*A027383(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A247619.P7380383791181226722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * A027383 (n - 1) + a (n - 1)

end

end A247619.P7380383791181226722

noncomputable section

/-- A247619: Start with a single pentagon; at n-th generation add a pentagon at each expandable vertex; a(n) is the sum of all label values at n-th generation. (See comment for construction rules.)

Offset 0, canonical program `A247619.P7380383791181226722`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247619 (n : ℕ) : ℤ :=
  A247619.P7380383791181226722.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247619.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A249348.P13311049649691406593

`(A001147(n+1)²-1)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249348.P13311049649691406593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001147 (n + 1) ^ 2 - 1 : ℚ) / 8

end

end A249348.P13311049649691406593

noncomputable section

/-- A249348: a(n) = (A001147(n+1)^2-1)/8, where A001147(n+1) = 3*5*...*(2n+1).

Offset 0, canonical program `A249348.P13311049649691406593`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249348 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A249348.P13311049649691406593.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249348.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A249349.P16621676827320448782

`(A001147(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249349.P16621676827320448782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001147 (n + 1) - 1 : ℚ) / 2

end

end A249349.P16621676827320448782

noncomputable section

/-- A249349: (A001147(n+1)-1)/2, equals the index of A249348(n) within the triangular numbers A000217.

Offset 0, canonical program `A249349.P16621676827320448782`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249349 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A249349.P16621676827320448782.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249349.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A249452.P2619371724854992228

`16*A029744(n+1)-1`
-/

namespace A249452.P2619371724854992228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A029744 (n + 1) - 1

end

end A249452.P2619371724854992228

noncomputable section

/-- A249452: Numbers k such that A249441(k) = 3.

Offset 1, canonical program `A249452.P2619371724854992228`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249452 (n : ℕ) : ℤ :=
  A249452.P2619371724854992228.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249452.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A251655.P6827696213836453210

`A000078(n+2)-A000078(n)`
-/

namespace A251655.P6827696213836453210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 2) - A000078 n

end

end A251655.P6827696213836453210

noncomputable section

/-- A251655: 4-step Fibonacci sequence starting with 0, 1, 1, 1.

Offset 0, canonical program `A251655.P6827696213836453210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251655 (n : ℕ) : ℤ :=
  A251655.P6827696213836453210.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251655.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A251656.P5740695371282096240

`A000078(n+3)-A000078(n+2)-2*A000078(n)`
-/

namespace A251656.P5740695371282096240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 3) - A000078 (n + 2) - 2 * A000078 n

end

end A251656.P5740695371282096240

noncomputable section

/-- A251656: 4-step Fibonacci sequence starting with 1,0,1,0.

Offset 0, canonical program `A251656.P5740695371282096240`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251656 (n : ℕ) : ℤ :=
  A251656.P5740695371282096240.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251656.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A251672.P9400077849588543496

`A079262(n+1)-A079262(n)`
-/

namespace A251672.P9400077849588543496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079262 (n + 1) - A079262 n

end

end A251672.P9400077849588543496

noncomputable section

/-- A251672: 8-step Fibonacci sequence starting with 0,0,0,0,0,0,1,0.

Offset 0, canonical program `A251672.P9400077849588543496`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251672 (n : ℕ) : ℤ :=
  A251672.P9400077849588543496.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251672.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A251703.P11193644302280101743

`A000078(n+3)-2*A000078(n+1)-2*A000078(n)`
-/

namespace A251703.P11193644302280101743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 3) - 2 * A000078 (n + 1) - 2 * A000078 n

end

end A251703.P11193644302280101743

noncomputable section

/-- A251703: 4-step Fibonacci sequence starting with 1,1,0,0.

Offset 0, canonical program `A251703.P11193644302280101743`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251703 (n : ℕ) : ℤ :=
  A251703.P11193644302280101743.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251703.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A251706.P10800495160873675911

`A001592(n+1)-A001592(n)`
-/

namespace A251706.P10800495160873675911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001592 (n + 1) - A001592 n

end

end A251706.P10800495160873675911

noncomputable section

/-- A251706: 6-step Fibonacci sequence starting with (0,0,0,0,1,0).

Offset 0, canonical program `A251706.P10800495160873675911`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251706 (n : ℕ) : ℤ :=
  A251706.P10800495160873675911.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251706.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A251740.P8481188142973137277

`A079262(n+2)-A079262(n+1)-A079262(n)`
-/

namespace A251740.P8481188142973137277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079262 (n + 2) - A079262 (n + 1) - A079262 n

end

end A251740.P8481188142973137277

noncomputable section

/-- A251740: 8-step Fibonacci sequence starting with 0,0,0,0,0,1,0,0.

Offset 0, canonical program `A251740.P8481188142973137277`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251740 (n : ℕ) : ℤ :=
  A251740.P8481188142973137277.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251740.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A251755.P8297826548140478426

`A010888(A002378(n))`
-/

namespace A251755.P8297826548140478426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A002378 n).toNat

end

end A251755.P8297826548140478426

noncomputable section

/-- A251755: Digital root of n + n^2.

Offset 0, canonical program `A251755.P8297826548140478426`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251755 (n : ℕ) : ℤ :=
  A251755.P8297826548140478426.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251755.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A251914.P6618389004869711842

`A046173(n+1)-1`
-/

namespace A251914.P6618389004869711842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046173 (n + 1) - 1

end

end A251914.P6618389004869711842

noncomputable section

/-- A251914: Numbers n such that the sum of the triangular numbers T(n) and T(n+1) is equal to the pentagonal number P(m) for some m.

Offset 1, canonical program `A251914.P6618389004869711842`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251914 (n : ℕ) : ℤ :=
  A251914.P6618389004869711842.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251914.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A253514.P4068282425341631059

`A157877(n+1)²`
-/

namespace A253514.P4068282425341631059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157877 (n + 1) ^ 2

end

end A253514.P4068282425341631059

noncomputable section

/-- A253514: Centered heptagonal numbers (A069099) which are also centered octagonal numbers (A016754).

Offset 1, canonical program `A253514.P4068282425341631059`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253514 (n : ℕ) : ℤ :=
  A253514.P4068282425341631059.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253514.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A253665.P10397001314440624253

`2^n*A056040(n)`
-/

namespace A253665.P10397001314440624253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A056040 n

end

end A253665.P10397001314440624253

noncomputable section

/-- A253665: a(n) = 2^n*n!/(floor(n/2)!)^2.

Offset 0, canonical program `A253665.P10397001314440624253`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253665 (n : ℕ) : ℤ :=
  A253665.P10397001314440624253.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253665.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A254286.P2241292018537070123

`32^n*A048779(n+1)`
-/

namespace A254286.P2241292018537070123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (32 ^ n : ℤ) * A048779 (n + 1)

end

end A254286.P2241292018537070123

noncomputable section

/-- A254286: Expansion of (1 - (1-256*x)^(1/4)) / (64*x).

Offset 0, canonical program `A254286.P2241292018537070123`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254286 (n : ℕ) : ℤ :=
  A254286.P2241292018537070123.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254286.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255139.P11105971386868030747

`A000142(n)-A000045(n)`
-/

namespace A255139.P11105971386868030747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A000045 n

end

end A255139.P11105971386868030747

noncomputable section

/-- A255139: a(n) = n! - Fibonacci(n).

Offset 0, canonical program `A255139.P11105971386868030747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255139 (n : ℕ) : ℤ :=
  A255139.P11105971386868030747.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255139.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255211.P1966564376133299868

`A000292(2*n)-A000292(n)`
-/

namespace A255211.P1966564376133299868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (2 * n) - A000292 n

end

end A255211.P1966564376133299868

noncomputable section

/-- A255211: a(n) = n*(n+1)*(7*n+2)/6.

Offset 0, canonical program `A255211.P1966564376133299868`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255211 (n : ℕ) : ℤ :=
  A255211.P1966564376133299868.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255211.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255680.P3449992732875684789

`n*A010872(n)*A010874(n)`
-/

namespace A255680.P3449992732875684789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010872 n * A010874 n

end

end A255680.P3449992732875684789

noncomputable section

/-- A255680: a(n) = n*(n mod 3)*(n mod 5).

Offset 0, canonical program `A255680.P3449992732875684789`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255680 (n : ℕ) : ℤ :=
  A255680.P3449992732875684789.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255680.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255875.P8052505566076897999

`A232896(n+2)-2`
-/

namespace A255875.P8052505566076897999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232896 (n + 2) - 2

end

end A255875.P8052505566076897999

noncomputable section

/-- A255875: a(n) = Fibonacci(n+2) + n - 2.

Offset 1, canonical program `A255875.P8052505566076897999`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255875 (n : ℕ) : ℤ :=
  A255875.P8052505566076897999.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255875.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255919.P10709878845704174550

`A003188(A000045(n))`
-/

namespace A255919.P10709878845704174550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A000045 n).toNat

end

end A255919.P10709878845704174550

noncomputable section

/-- A255919: Gray code of Fibonacci(n).

Offset 0, canonical program `A255919.P10709878845704174550`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255919 (n : ℕ) : ℤ :=
  A255919.P10709878845704174550.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255919.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256256.P16031076571279366178

`6*A006046(n)`
-/

namespace A256256.P16031076571279366178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A006046 n

end

end A256256.P16031076571279366178

noncomputable section

/-- A256256: Total number of ON cells after n generations of cellular automaton on triangular grid, starting from a node, in which every 60-degree wedge looks like the Sierpiński's triangle.

Offset 0, canonical program `A256256.P16031076571279366178`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256256 (n : ℕ) : ℤ :=
  A256256.P16031076571279366178.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256256.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256462.P1744097057234964275

`A056220(n+1)*A000108(2*n)`
-/

namespace A256462.P1744097057234964275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (n + 1) * A000108 (2 * n)

end

end A256462.P1744097057234964275

noncomputable section

/-- A256462: Double sum of the product of two binomials with even arguments.

Offset 0, canonical program `A256462.P1744097057234964275`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256462 (n : ℕ) : ℤ :=
  A256462.P1744097057234964275.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256462.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256524.P5463711437794067124

`A001400(3*n)`
-/

namespace A256524.P5463711437794067124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (3 * n)

end

end A256524.P5463711437794067124

noncomputable section

/-- A256524: Number of partitions of 3n into at most 4 parts.

Offset 0, canonical program `A256524.P5463711437794067124`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256524 (n : ℕ) : ℤ :=
  A256524.P5463711437794067124.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256524.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256960.P2865654414197589884

`a(n-2)+2*A055099(n-1)+2^(n-1)` with `a(0)=1, a(1)=4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256960.P2865654414197589884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + (2 * A055099 (n - 1) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A256960.P2865654414197589884

noncomputable section

/-- A256960: a(0)=1, a(1)=4; thereafter a(n) = a(n-2)+2*A055099(n-1)+2^(n-1).

Offset 0, canonical program `A256960.P2865654414197589884`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256960 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A256960.P2865654414197589884.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256960.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256994.P15075604067325130117

`A005187(a(n-1))` with `a(0)=2`
-/

namespace A256994.P15075604067325130117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A005187 (a (n - 1)).toNat

end

end A256994.P15075604067325130117

noncomputable section

/-- A256994: a(n) = n + 1 when n <= 3, otherwise a(n) = 2^(n-2) + 3; also iterates of A005187 starting from a(1) = 2.

Offset 1, canonical program `A256994.P15075604067325130117`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256994 (n : ℕ) : ℤ :=
  A256994.P15075604067325130117.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256994.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A257487.P13373168790465251330

`(5*A001353(n+1)-13*A001353(n)+3)/2`
-/

namespace A257487.P13373168790465251330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A001353 (n + 1) - 13 * A001353 n + 3 : ℚ) / 2

end

end A257487.P13373168790465251330

noncomputable section

/-- A257487: Expansion of ( -4+15*x-8*x^2 ) / ( (x-1)*(x^2-4*x+1) ).

Offset 0, canonical program `A257487.P13373168790465251330`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257487 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A257487.P13373168790465251330.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257487.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A257589.P13162561987208134929

`A016754(n)*A000108(n)`
-/

namespace A257589.P13162561987208134929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n * A000108 n

end

end A257589.P13162561987208134929

noncomputable section

/-- A257589: a(n) = (2n+1)^2*Catalan(n).

Offset 0, canonical program `A257589.P13162561987208134929`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257589 (n : ℕ) : ℤ :=
  A257589.P13162561987208134929.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257589.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A257890.P10874301987277146911

`A000292(n+1)+n+1+A000389(n+5)`
-/

namespace A257890.P10874301987277146911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + ((n + 1 : ℤ) + A000389 (n + 5))

end

end A257890.P10874301987277146911

noncomputable section

/-- A257890: Expansion of the g.f. (x^2-x+1)*(x^2-3*x+3)/(x-1)^6.

Offset 0, canonical program `A257890.P10874301987277146911`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257890 (n : ℕ) : ℤ :=
  A257890.P10874301987277146911.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257890.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A258684.P10413141013243438134

`A041105(4*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A258684.P10413141013243438134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041105 (4 * n + 1)

end

end A258684.P10413141013243438134

noncomputable section

/-- A258684: a(n) = A041105(4n+1).

Offset 0, canonical program `A258684.P10413141013243438134`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258684 (n : ℕ) : ℤ :=
  A258684.P10413141013243438134.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258684.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A258711.P7368065458491441993

`A001006(n)%7`
-/

namespace A258711.P7368065458491441993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001006 n) 7

end

end A258711.P7368065458491441993

noncomputable section

/-- A258711: Motzkin numbers A001006 read mod 7.

Offset 0, canonical program `A258711.P7368065458491441993`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258711 (n : ℕ) : ℤ :=
  A258711.P7368065458491441993.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258711.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A258712.P11139065725341983905

`A001006(n)%5`
-/

namespace A258712.P11139065725341983905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001006 n) 5

end

end A258712.P11139065725341983905

noncomputable section

/-- A258712: Motzkin numbers A001006 read mod 5.

Offset 0, canonical program `A258712.P11139065725341983905`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258712 (n : ℕ) : ℤ :=
  A258712.P11139065725341983905.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258712.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A258978.P2625331780401583892

`A053699(A000203(n+1))`
-/

namespace A258978.P2625331780401583892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 (A000203 (n + 1)).toNat

end

end A258978.P2625331780401583892

noncomputable section

/-- A258978: a(n) = 1 + sigma(n) + sigma(n)^2 + sigma(n)^3 + sigma(n)^4.

Offset 1, canonical program `A258978.P2625331780401583892`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258978 (n : ℕ) : ℤ :=
  A258978.P2625331780401583892.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258978.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259104.P10073909568628370232

`A000522(n+2)-A000522(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A259104.P10073909568628370232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (n + 2) - A000522 n

end

end A259104.P10073909568628370232

noncomputable section

/-- A259104: A000522(n+2)-A000522(n).

Offset 0, canonical program `A259104.P10073909568628370232`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259104 (n : ℕ) : ℤ :=
  A259104.P10073909568628370232.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259104.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259108.P15840702835331619672

`2*A000538(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A259108.P15840702835331619672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000538 n

end

end A259108.P15840702835331619672

noncomputable section

/-- A259108: a(n) = 2 * A000538(n).

Offset 0, canonical program `A259108.P15840702835331619672`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259108 (n : ℕ) : ℤ :=
  A259108.P15840702835331619672.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259108.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259110.P15097758536881816686

`2*A000447(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A259110.P15097758536881816686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000447 n

end

end A259110.P15097758536881816686

noncomputable section

/-- A259110: a(n) = 2*A000447(n).

Offset 0, canonical program `A259110.P15097758536881816686`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259110 (n : ℕ) : ℤ :=
  A259110.P15097758536881816686.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259110.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259264.P5732594436571755968

`A053699(n!)`
-/

namespace A259264.P5732594436571755968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 (Nat.factorial n)

end

end A259264.P5732594436571755968

noncomputable section

/-- A259264: Cyclotomic polynomial value Phi(5,n!).

Offset 0, canonical program `A259264.P5732594436571755968`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259264 (n : ℕ) : ℤ :=
  A259264.P5732594436571755968.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259264.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259361.P16495577185531896410

`A000194(n+1)-1`
-/

namespace A259361.P16495577185531896410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (n + 1) - 1

end

end A259361.P16495577185531896410

noncomputable section

/-- A259361: n occurs 2n+2 times.

Offset 0, canonical program `A259361.P16495577185531896410`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259361 (n : ℕ) : ℤ :=
  A259361.P16495577185531896410.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259361.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259369.P4055161217146310776

`A060883(A000203(n+1))`
-/

namespace A259369.P4055161217146310776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060883 (A000203 (n + 1)).toNat

end

end A259369.P4055161217146310776

noncomputable section

/-- A259369: a(n) = 1 + sigma(n)^3 + sigma(n)^6.

Offset 1, canonical program `A259369.P4055161217146310776`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259369 (n : ℕ) : ℤ :=
  A259369.P4055161217146310776.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259369.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259755.P12200300893411758390

`4*A007310(n+1)`
-/

namespace A259755.P12200300893411758390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007310 (n + 1)

end

end A259755.P12200300893411758390

noncomputable section

/-- A259755: Numbers that are congruent to {4, 20} mod 24.

Offset 1, canonical program `A259755.P12200300893411758390`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259755 (n : ℕ) : ℤ :=
  A259755.P12200300893411758390.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259755.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259925.P6372648146589951918

`A165900(n)^n`
-/

namespace A259925.P6372648146589951918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 n ^ n

end

end A259925.P6372648146589951918

noncomputable section

/-- A259925: a(n) = (n^2 - n - 1)^n.

Offset 0, canonical program `A259925.P6372648146589951918`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259925 (n : ℕ) : ℤ :=
  A259925.P6372648146589951918.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259925.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A260076.P13301301169531904052

`A060883(n!)`
-/

namespace A260076.P13301301169531904052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060883 (Nat.factorial n)

end

end A260076.P13301301169531904052

noncomputable section

/-- A260076: Cyclotomic polynomial value Phi(9,n!).

Offset 0, canonical program `A260076.P13301301169531904052`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260076 (n : ℕ) : ℤ :=
  A260076.P13301301169531904052.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260076.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A260655.P1454264924499781841

`9^n*A000108(n+1)`
-/

namespace A260655.P1454264924499781841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) * A000108 (n + 1)

end

end A260655.P1454264924499781841

noncomputable section

/-- A260655: a(n) = 4*36^n*Gamma(n+3/2)/(sqrt(Pi)*(n+2)!).

Offset 0, canonical program `A260655.P1454264924499781841`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260655 (n : ℕ) : ℤ :=
  A260655.P1454264924499781841.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260655.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A260657.P11255028026321949958

`A000142(n)-A005394(n)`
-/

namespace A260657.P11255028026321949958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A005394 n

end

end A260657.P11255028026321949958

noncomputable section

/-- A260657: Rounded error in Stirling's formula: a(n) = round(n! - exp(-n)*n^(n+1/2)*sqrt(2*Pi)).

Offset 0, canonical program `A260657.P11255028026321949958`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260657 (n : ℕ) : ℤ :=
  A260657.P11255028026321949958.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260657.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261231.P7877899022308213173

`1+a(2*A054861(n))` with `a(0)=0, a(1)=1`
-/

namespace A261231.P7877899022308213173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (2 * A054861 n).toNat

end

end A261231.P7877899022308213173

noncomputable section

/-- A261231: a(n) = number of steps to reach 0 when starting from k = n and repeatedly applying the map that replaces k with k - (sum of digits in base-3 representation of k).

Offset 0, canonical program `A261231.P7877899022308213173`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261231 (n : ℕ) : ℤ :=
  (A261231.P7877899022308213173.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261231.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261471.P3037058945594442936

`A002061(n!)`
-/

namespace A261471.P3037058945594442936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (Nat.factorial n)

end

end A261471.P3037058945594442936

noncomputable section

/-- A261471: Cyclotomic polynomial value Phi(6,n!).

Offset 0, canonical program `A261471.P3037058945594442936`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261471 (n : ℕ) : ℤ :=
  A261471.P3037058945594442936.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261471.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262035.P4175627166341111014

`A262033(2*n+1)-A262034(2*n+1)`
-/

namespace A262035.P4175627166341111014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262033 (2 * n + 1) - A262034 (2 * n + 1)

end

end A262035.P4175627166341111014

noncomputable section

/-- A262035: Number of permutations of [2n+1] beginning with exactly n ascents.

Offset 0, canonical program `A262035.P4175627166341111014`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262035 (n : ℕ) : ℤ :=
  A262035.P4175627166341111014.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262035.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262184.P505657882986553229

`A000045(n)²-A000045(n)+1`
-/

namespace A262184.P505657882986553229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2 - A000045 n + 1

end

end A262184.P505657882986553229

noncomputable section

/-- A262184: a(n) = Fibonacci(n)^2 - Fibonacci(n) + 1.

Offset 0, canonical program `A262184.P505657882986553229`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262184 (n : ℕ) : ℤ :=
  A262184.P505657882986553229.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262184.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262221.P9616285065150363173

`A034856(5*n+1)`
-/

namespace A262221.P9616285065150363173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (5 * n + 1)

end

end A262221.P9616285065150363173

noncomputable section

/-- A262221: a(n) = 25*n*(n + 1)/2 + 1.

Offset 0, canonical program `A262221.P9616285065150363173`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262221 (n : ℕ) : ℤ :=
  A262221.P9616285065150363173.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262221.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262376.P17778025391810916089

`A003422(n+1)-A000217(n)`
-/

namespace A262376.P17778025391810916089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (n + 1) - A000217 n

end

end A262376.P17778025391810916089

noncomputable section

/-- A262376: a(n) = Sum_{k=0..n} (k! - k).

Offset 0, canonical program `A262376.P17778025391810916089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262376 (n : ℕ) : ℤ :=
  A262376.P17778025391810916089.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262376.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262397.P3567034082387782464

`floor(A261327(n)/9)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262397.P3567034082387782464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A261327 n : ℚ) / 9⌋

end

end A262397.P3567034082387782464

noncomputable section

/-- A262397: a(n) = floor(A261327(n)/9).

Offset 0, canonical program `A262397.P3567034082387782464`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262397 (n : ℕ) : ℤ :=
  A262397.P3567034082387782464.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262397.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262600.P10697025682239794580

`A124302(n)-A001519(n)`
-/

namespace A262600.P10697025682239794580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n - A001519 n

end

end A262600.P10697025682239794580

noncomputable section

/-- A262600: Number of Dyck paths of semilength n and height exactly 4.

Offset 0, canonical program `A262600.P10697025682239794580`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262600 (n : ℕ) : ℤ :=
  A262600.P10697025682239794580.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262600.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263053.P1060349985249524718

`2*A052992(n)`
-/

namespace A263053.P1060349985249524718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052992 n

end

end A263053.P1060349985249524718

noncomputable section

/-- A263053: Number of (n+1) X 2 0..1 arrays with each row and column not divisible by 3, read as a binary number with top and left being the most significant bits.

Offset 1, canonical program `A263053.P1060349985249524718`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263053 (n : ℕ) : ℤ :=
  A263053.P1060349985249524718.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263053.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263418.P3906359032708304120

`a(n-1)+5*A001911(n)` with `a(0)=1`
-/

namespace A263418.P3906359032708304120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 5 * A001911 n

end

end A263418.P3906359032708304120

noncomputable section

/-- A263418: a(n) is the total number of pentagrams in a variant of pentagram fractal after n iterations.

Offset 0, canonical program `A263418.P3906359032708304120`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263418 (n : ℕ) : ℤ :=
  A263418.P3906359032708304120.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263418.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263986.P11008450882714767519

`A000108(n)-A000045(n)`
-/

namespace A263986.P11008450882714767519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A000045 n

end

end A263986.P11008450882714767519

noncomputable section

/-- A263986: Difference between Catalan numbers and Fibonacci numbers: a(n) = C(n) - F(n).

Offset 0, canonical program `A263986.P11008450882714767519`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263986 (n : ℕ) : ℤ :=
  A263986.P11008450882714767519.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263986.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A264038.P9507820309913421679

`A014551(n+1)-A000032(n+1)`
-/

namespace A264038.P9507820309913421679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (n + 1) - A000032 (n + 1)

end

end A264038.P9507820309913421679

noncomputable section

/-- A264038: Convolution of Lucas and Jacobsthal numbers.

Offset 0, canonical program `A264038.P9507820309913421679`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A264038 (n : ℕ) : ℤ :=
  A264038.P9507820309913421679.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A264038.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A264152.P11680780030930013707

`A001813(n)/A006882(n)`
-/

namespace A264152.P11680780030930013707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001813 n : ℚ) / (A006882 n : ℚ)

end

end A264152.P11680780030930013707

noncomputable section

/-- A264152: a(n) = (2^floor(n+n/2)/sqrt(Pi)^mod(n+1,2))*Gamma(n+1/2)/Gamma(n/2+1).

Offset 0, canonical program `A264152.P11680780030930013707`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A264152 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A264152.P11680780030930013707.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A264152.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A264891.P1113913307012413225

`A000566(A000566(n))`
-/

namespace A264891.P1113913307012413225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A000566 n).toNat

end

end A264891.P1113913307012413225

noncomputable section

/-- A264891: a(n) = n*(5*n - 3)*(25*n^2 - 15*n - 6)/8.

Offset 0, canonical program `A264891.P1113913307012413225`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A264891 (n : ℕ) : ℤ :=
  A264891.P1113913307012413225.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A264891.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A264894.P11466025763062126121

`A001106(A001106(n))`
-/

namespace A264894.P11466025763062126121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (A001106 n).toNat

end

end A264894.P11466025763062126121

noncomputable section

/-- A264894: a(n) = n*(7*n - 5)*(49*n^2 - 35*n - 10)/8.

Offset 0, canonical program `A264894.P11466025763062126121`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A264894 (n : ℕ) : ℤ :=
  A264894.P11466025763062126121.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A264894.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A265100.P11859098700391126980

`9*A005836(n+1)+5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265100.P11859098700391126980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A005836 (n + 1) + 5

end

end A265100.P11859098700391126980

noncomputable section

/-- A265100: a(n) = 9*A005836(n) + 5, n >= 1.

Offset 1, canonical program `A265100.P11859098700391126980`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265100 (n : ℕ) : ℤ :=
  A265100.P11859098700391126980.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265100.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A265185.P13911797425153417806

`2*A056236(n)`
-/

namespace A265185.P13911797425153417806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056236 n

end

end A265185.P13911797425153417806

noncomputable section

/-- A265185: Non-vanishing traces of the powers of the adjacency matrix for the simple Lie algebra B_4: 2 * ((2 + sqrt(2))^n + (2 - sqrt(2))^n).

Offset 0, canonical program `A265185.P13911797425153417806`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265185 (n : ℕ) : ℤ :=
  A265185.P13911797425153417806.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265185.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A265282.P786631912857751493

`A045947(floor(n/2))+A024206(n+1)`
-/

namespace A265282.P786631912857751493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045947 ⌊(n : ℚ) / 2⌋.toNat + A024206 (n + 1)

end

end A265282.P786631912857751493

noncomputable section

/-- A265282: Number of triangles in a certain geometric structure: see "Illustration of initial terms" link for precise definition.

Offset 0, canonical program `A265282.P786631912857751493`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265282 (n : ℕ) : ℤ :=
  A265282.P786631912857751493.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265282.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A265745.P10758348576253649364

`1+a(n-A001045(A130249(n)))` with `a(0)=0, a(1)=1`
-/

namespace A265745.P10758348576253649364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a ((n : ℤ) - A001045 (A130249 n).toNat).toNat

end

end A265745.P10758348576253649364

noncomputable section

/-- A265745: a(n) is the number of Jacobsthal numbers (A001045) needed to sum to n using the greedy algorithm.

Offset 0, canonical program `A265745.P10758348576253649364`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265745 (n : ℕ) : ℤ :=
  (A265745.P10758348576253649364.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265745.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A265746.P6041453824196199215

`3^(A130249(n)-2)+a(n-A001045(A130249(n)))` with `a(0)=0, a(1)=1`
-/

namespace A265746.P6041453824196199215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (3 : ℚ) ^ (A130249 n - 2 : ℤ) + a ((n : ℤ) - A001045 (A130249 n).toNat).toNat

end

end A265746.P6041453824196199215

noncomputable section

/-- A265746: Jacobsthal greedy base (A265747) interpreted as base-3 numbers, then shown in decimal.

Offset 0, canonical program `A265746.P6041453824196199215`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265746 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A265746.P6041453824196199215.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265746.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A265747.P7842850892364262606

`10^(A130249(n)-2)+a(n-A001045(A130249(n)))` with `a(0)=0, a(1)=1`
-/

namespace A265747.P7842850892364262606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (10 : ℚ) ^ (A130249 n - 2 : ℤ) + a ((n : ℤ) - A001045 (A130249 n).toNat).toNat

end

end A265747.P7842850892364262606

noncomputable section

/-- A265747: Numbers written in Jacobsthal greedy base.

Offset 0, canonical program `A265747.P7842850892364262606`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265747 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A265747.P7842850892364262606.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265747.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A266074.P13498364541412967355

`2*A135276(n)`
-/

namespace A266074.P13498364541412967355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135276 n

end

end A266074.P13498364541412967355

noncomputable section

/-- A266074: Total number of OFF (white) cells after n iterations of the "Rule 3" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266074.P13498364541412967355`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A266074 (n : ℕ) : ℤ :=
  A266074.P13498364541412967355.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A266074.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A266491.P10525690315640493419

`a(n-4)+4*A130658(n)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=6`
-/

namespace A266491.P10525690315640493419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 6] fun n a =>
  a (n - 4) + 4 * A130658 n

end

end A266491.P10525690315640493419

noncomputable section

/-- A266491: a(n) = n*A130658(n).

Offset 0, canonical program `A266491.P10525690315640493419`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A266491 (n : ℕ) : ℤ :=
  A266491.P10525690315640493419.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A266491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A266498.P14967402616786672958

`A002024(3^n+1)`
-/

namespace A266498.P14967402616786672958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (3 ^ n + 1)

end

end A266498.P14967402616786672958

noncomputable section

/-- A266498: Index of the smallest triangular number greater than 3^n.

Offset 0, canonical program `A266498.P14967402616786672958`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A266498 (n : ℕ) : ℤ :=
  A266498.P14967402616786672958.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A266498.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A267370.P17383826425187002967

`A002411(n)+A028895(n)`
-/

namespace A267370.P17383826425187002967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n + A028895 n

end

end A267370.P17383826425187002967

noncomputable section

/-- A267370: Partial sums of A140091.

Offset 0, canonical program `A267370.P17383826425187002967`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267370 (n : ℕ) : ℤ :=
  A267370.P17383826425187002967.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267370.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A267707.P16541266166220000650

`A000217(A000217(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A267707.P16541266166220000650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000217 n + 1).toNat

end

end A267707.P16541266166220000650

noncomputable section

/-- A267707: a(n) = A000217(A000217(n)+1).

Offset 0, canonical program `A267707.P16541266166220000650`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(A000217(n)+1)` (program `A267707.P16541266166220000650`, by `A267707.P16541266166220000650.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A267707 (n : ℕ) : ℤ :=
  A267707.P16541266166220000650.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(A000217(n)+1)` (program `A267707.P16541266166220000650`, by `A267707.P16541266166220000650.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A267707.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A267981.P2581473113123947097

`A000108(n)²*(4*n+2)`
-/

namespace A267981.P2581473113123947097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n ^ 2 * (4 * n + 2 : ℤ)

end

end A267981.P2581473113123947097

noncomputable section

/-- A267981: a(n) = Catalan(n)^2*(4n + 2).

Offset 0, canonical program `A267981.P2581473113123947097`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267981 (n : ℕ) : ℤ :=
  A267981.P2581473113123947097.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267981.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A269132.P17684020706954947188

`floor(A139570(n)/5)`
-/

namespace A269132.P17684020706954947188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139570 n : ℚ) / 5⌋

end

end A269132.P17684020706954947188

noncomputable section

/-- A269132: a(n) = n + floor(n*(2*n+1)/5).

Offset 0, canonical program `A269132.P17684020706954947188`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A269132 (n : ℕ) : ℤ :=
  A269132.P17684020706954947188.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A269132.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A269416.P16477501567053400882

`3*(-1)^n*A007494(n+1)`
-/

namespace A269416.P16477501567053400882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (-1) ^ n * A007494 (n + 1)

end

end A269416.P16477501567053400882

noncomputable section

/-- A269416: Expansion of 3*(2 - x)/((1 - x)*(1 + x)^2).

Offset 0, canonical program `A269416.P16477501567053400882`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A269416 (n : ℕ) : ℤ :=
  A269416.P16477501567053400882.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A269416.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A269796.P2463442920930624806

`4^n*A000108(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A269796.P2463442920930624806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A000108 (n + 1)

end

end A269796.P2463442920930624806

noncomputable section

/-- A269796: a(n) = 4^n * A000108(n+1).

Offset 0, canonical program `A269796.P2463442920930624806`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A269796 (n : ℕ) : ℤ :=
  A269796.P2463442920930624806.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A269796.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A270272.P15171023451898246884

`A000292(n+1)^3`
-/

namespace A270272.P15171023451898246884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) ^ 3

end

end A270272.P15171023451898246884

noncomputable section

/-- A270272: a(n) = binomial(n+3,n)^3.

Offset 0, canonical program `A270272.P15171023451898246884`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A270272 (n : ℕ) : ℤ :=
  A270272.P15171023451898246884.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A270272.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A270296.P17548243857982245723

`20*A001651(n+1)`
-/

namespace A270296.P17548243857982245723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * A001651 (n + 1)

end

end A270296.P17548243857982245723

noncomputable section

/-- A270296: Numbers which are representable as a sum of five but no fewer consecutive nonnegative integers.

Offset 1, canonical program `A270296.P17548243857982245723`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A270296 (n : ℕ) : ℤ :=
  A270296.P17548243857982245723.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A270296.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A270297.P13372243168542465082

`28*A229829(n+1)`
-/

namespace A270297.P13372243168542465082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  28 * A229829 (n + 1)

end

end A270297.P13372243168542465082

noncomputable section

/-- A270297: Numbers which are representable as a sum of seven but no fewer consecutive nonnegative integers.

Offset 1, canonical program `A270297.P13372243168542465082`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A270297 (n : ℕ) : ℤ :=
  A270297.P13372243168542465082.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A270297.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A270444.P3695728822751672526

`2*A107903(n)`
-/

namespace A270444.P3695728822751672526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107903 n

end

end A270444.P3695728822751672526

noncomputable section

/-- A270444: Expansion of g.f. 2*(1 + 2*x)/(1 - 8*x + 4*x^2).

Offset 1, canonical program `A270444.P3695728822751672526`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A270444 (n : ℕ) : ℤ :=
  A270444.P3695728822751672526.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A270444.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A233271.P6647705363235310695

`A233272(a(n-1))` with `a(0)=0`
-/

namespace A233271.P6647705363235310695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A233272 (a (n - 1)).toNat

end

end A233271.P6647705363235310695

noncomputable section

/-- A233271: a(0)=0; thereafter a(n+1) = a(n) + 1 + number of 0's in binary representation of a(n), counted with A080791.

Offset 0, canonical program `A233271.P6647705363235310695`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A233271 (n : ℕ) : ℤ :=
  A233271.P6647705363235310695.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A233271.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244842.P11551185186741496577

`9*A274766(n)`
-/

namespace A244842.P11551185186741496577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A274766 n

end

end A244842.P11551185186741496577

noncomputable section

/-- A244842: a(n) = (10^n - 1)*(10^n - 10)/90.

Offset 1, canonical program `A244842.P11551185186741496577`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244842 (n : ℕ) : ℤ :=
  A244842.P11551185186741496577.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244842.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A249457.P4380148840988544029

`5*(A249862(n)+3^n)`
-/

namespace A249457.P4380148840988544029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A249862 n + (3 ^ n : ℤ))

end

end A249457.P4380148840988544029

noncomputable section

/-- A249457: The numerator of curvatures of touching circles inscribed in a special way in the larger segment of a unit circle divided by a chord of length sqrt(84)/5.

Offset 0, canonical program `A249457.P4380148840988544029`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249457 (n : ℕ) : ℤ :=
  A249457.P4380148840988544029.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249457.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A249458.P10090392725250684682

`5*(A249864(n)+7^n)`
-/

namespace A249458.P10090392725250684682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A249864 n + (7 ^ n : ℤ))

end

end A249458.P10090392725250684682

noncomputable section

/-- A249458: The numerators of curvatures of touching circles inscribed in a special way in the smaller segment of unit circle divided by a chord of length sqrt(84)/5.

Offset 0, canonical program `A249458.P10090392725250684682`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249458 (n : ℕ) : ℤ :=
  A249458.P10090392725250684682.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249458.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A265423.P4937645635247328553

`2*A265424(n)+1`
-/

namespace A265423.P4937645635247328553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265424 n + 1

end

end A265423.P4937645635247328553

noncomputable section

/-- A265423: a(n) = (-1)^n + 50*floor(3*n/2) - 100*floor(n/4).

Offset 0, canonical program `A265423.P4937645635247328553`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265423 (n : ℕ) : ℤ :=
  A265423.P4937645635247328553.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265423.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A219191.P9095047944895296053

`2*A057570(n+1)`
-/

namespace A219191.P9095047944895296053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057570 (n + 1)

end

end A219191.P9095047944895296053

noncomputable section

/-- A219191: Numbers of the form k*(7*k+1), where k = 0,-1,1,-2,2,-3,3,...

Offset 1, canonical program `A219191.P9095047944895296053`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057570, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219191 (n : ℕ) : ℤ :=
  A219191.P9095047944895296053.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057570, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219191.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A219233.P4417271251867941425

`(A000035(n+1)-A000035(n))*A169986(2*n)`
-/

namespace A219233.P4417271251867941425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 (n + 1) - A000035 n) * A169986 (2 * n)

end

end A219233.P4417271251867941425

noncomputable section

/-- A219233: Alternating row sums of Riordan triangle A110162.

Offset 0, canonical program `A219233.P4417271251867941425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A219233 (n : ℕ) : ℤ :=
  A219233.P4417271251867941425.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A219233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219259.P9659759675578563573

`∑[3*n*A010689(n)-n]`
-/

namespace A219259.P9659759675578563573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) * A010689 n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219259.P9659759675578563573

noncomputable section

/-- A219259: Numbers k such that 25*k+1 is a square.

Offset 1, canonical program `A219259.P9659759675578563573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219259 (n : ℕ) : ℤ :=
  A219259.P9659759675578563573.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219391.P9876836619374613419

`∑[lcm(2, n)]+A057353(n+1)²`
-/

namespace A219391.P9876836619374613419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A057353 (n + 1) ^ 2

end

end A219391.P9876836619374613419

noncomputable section

/-- A219391: Numbers k such that 21*k + 1 is a square.

Offset 1, canonical program `A219391.P9876836619374613419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219391 (n : ℕ) : ℤ :=
  A219391.P9876836619374613419.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219393.P3373675219773431637

`n²+A244631(A110654(n))+n`
-/

namespace A219393.P3373675219773431637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A244631 (A110654 n).toNat + (n : ℤ))

end

end A219393.P3373675219773431637

noncomputable section

/-- A219393: Numbers k such that 23*k+1 is a square.

Offset 1, canonical program `A219393.P3373675219773431637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219393 (n : ℕ) : ℤ :=
  A219393.P3373675219773431637.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219394.P2433257764744241428

`A157716(n+1)+A110660(n)`
-/

namespace A219394.P2433257764744241428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157716 (n + 1) + A110660 n

end

end A219394.P2433257764744241428

noncomputable section

/-- A219394: Numbers k such that 17*k+1 is a square.

Offset 1, canonical program `A219394.P2433257764744241428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219394 (n : ℕ) : ℤ :=
  A219394.P2433257764744241428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219898.P16621012416536321040

`record[A214551(n)]`
-/

namespace A219898.P16621012416536321040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219898.P16621012416536321040

noncomputable section

/-- A219898: Record values in A214551.

Offset 1, canonical program `A219898.P16621012416536321040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 698 terms. -/
def A219898 (n : ℕ) : ℤ :=
  A219898.P16621012416536321040.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 698 terms. -/
def A219898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220250.P12762221728341940609

`A000302(n+1)-A002699(A027656(n))`
-/

namespace A220250.P12762221728341940609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (n + 1) - A002699 (A027656 n).toNat

end

end A220250.P12762221728341940609

noncomputable section

/-- A220250: Sum of neighbor maps: number of nX2 binary arrays indicating the locations of corresponding elements equal to the sum mod 3 of their king-move neighbors in a random 0..2 nX2 array.

Offset 1, canonical program `A220250.P12762221728341940609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A220250 (n : ℕ) : ℤ :=
  A220250.P12762221728341940609.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A220250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220659.P8935711005901037654

`n-A220657(A220658(n))`
-/

namespace A220659.P8935711005901037654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A220657 (A220658 n).toNat

end

end A220659.P8935711005901037654

noncomputable section

/-- A220659: Irregular table: row n (n >= 1) consists of numbers 0..A084558(n).

Offset 0, canonical program `A220659.P8935711005901037654`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A220657, A220658, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A220659 (n : ℕ) : ℤ :=
  A220659.P8935711005901037654.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A220657, A220658, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A220659.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A220673.P2691776191523207953

`A189334(n+1)+A189334(n)`
-/

namespace A220673.P2691776191523207953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189334 (n + 1) + A189334 n

end

end A220673.P2691776191523207953

noncomputable section

/-- A220673: Coefficients of formal series in powers of (tan(x))^2 for tan(5*x)/tan(x).

Offset 0, canonical program `A220673.P2691776191523207953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A220673 (n : ℕ) : ℤ :=
  A220673.P2691776191523207953.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A220673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220695.P15516287339646840077

`A084556(n+1)!+n`
-/

namespace A220695.P15516287339646840077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A084556 (n + 1)).toNat + n

end

end A220695.P15516287339646840077

noncomputable section

/-- A220695: Complement of A220655.

Offset 1, canonical program `A220695.P15516287339646840077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220695 (n : ℕ) : ℤ :=
  (A220695.P15516287339646840077.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220755.P2283112973598383957

`(A046182(n+1)+1)%A046181(n+1)`
-/

namespace A220755.P2283112973598383957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046182 (n + 1) + 1) (A046181 (n + 1))

end

end A220755.P2283112973598383957

noncomputable section

/-- A220755: Numbers n such that n^2 + n(n+1)/2 is an oblong number (A002378).

Offset 1, canonical program `A220755.P2283112973598383957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A220755 (n : ℕ) : ℤ :=
  A220755.P2283112973598383957.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A220755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220806.P11484627285642746905

`4^(n+1)-A135491(2*n+1)`
-/

namespace A220806.P11484627285642746905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) : ℤ) - A135491 (2 * n + 1)

end

end A220806.P11484627285642746905

noncomputable section

/-- A220806: Equals one maps: number of n X 2 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, vertical and antidiagonal neighbors in a random 0..2 n X 2 array.

Offset 1, canonical program `A220806.P11484627285642746905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A220806 (n : ℕ) : ℤ :=
  A220806.P11484627285642746905.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A220806.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A220854.P2644252176317831732

`∑[A065120(A081608(3*n+4))-1]`
-/

namespace A220854.P2644252176317831732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (A081608 (3 * n + 4)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220854.P2644252176317831732

noncomputable section

/-- A220854: Sum of exclusive heights of size-balanced 3-ary trees on n nodes.

Offset 1, canonical program `A220854.P2644252176317831732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A220854 (n : ℕ) : ℤ :=
  A220854.P2644252176317831732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A220854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220888.P5153867486153837338

`∑[A001891(n)]-A006003(n)`
-/

namespace A220888.P5153867486153837338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006003 n

end

end A220888.P5153867486153837338

noncomputable section

/-- A220888: a(n) = F(n+7) - (1/2)*(n^3+2*n^2+13*n+26) where F(i) is a Fibonacci number (A000045).

Offset 0, canonical program `A220888.P5153867486153837338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A220888 (n : ℕ) : ℤ :=
  A220888.P5153867486153837338.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A220888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220906.P5907792260730034554

`(A214210(n)+1+n)%3+1`
-/

namespace A220906.P5907792260730034554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214210 n + 1 + (n : ℤ)) 3 + 1

end

end A220906.P5907792260730034554

noncomputable section

/-- A220906: Thue-Morse sequence (A010060) with 0 replaced by 2 and 1 replaced by 3,1.

Offset 0, canonical program `A220906.P5907792260730034554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A220906 (n : ℕ) : ℤ :=
  A220906.P5907792260730034554.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A220906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221194.P317843733100634606

`A174502(n)%A001091(A004525(n+2))`
-/

namespace A221194.P317843733100634606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174502 n) (A001091 (A004525 (n + 2)).toNat)

end

end A221194.P317843733100634606

noncomputable section

/-- A221194: Simple continued fraction expansion of product {k >= 0} (1 - 2*(N - sqrt(N^2-1))^(4*k+3))/(1 - 2*(N - sqrt(N^2-1))^(4*k+1)) at N = 4.

Offset 0, canonical program `A221194.P317843733100634606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A221194 (n : ℕ) : ℤ :=
  A221194.P317843733100634606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A221194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221763.P1213117035241420343

`2*A041015(n)-A221762(n+1)`
-/

namespace A221763.P1213117035241420343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A041015 n - A221762 (n + 1)

end

end A221763.P1213117035241420343

noncomputable section

/-- A221763: Numbers m such that 11*m^2 - 7 is a square.

Offset 1, canonical program `A221763.P1213117035241420343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A221763 (n : ℕ) : ℤ :=
  A221763.P1213117035241420343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A221763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221875.P5591685866184943505

`2*A222390(n+1)+1`
-/

namespace A221875.P5591685866184943505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222390 (n + 1) + 1

end

end A221875.P5591685866184943505

noncomputable section

/-- A221875: Numbers m such that 10*m^2 - 6 is a square.

Offset 1, canonical program `A221875.P5591685866184943505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A221875 (n : ℕ) : ℤ :=
  A221875.P5591685866184943505.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A221875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221880.P8957834746733462325

`A059570(n+1)+∑[A045891(n)-1]`
-/

namespace A221880.P8957834746733462325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059570 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221880.P8957834746733462325

noncomputable section

/-- A221880: Number of order-preserving or order-reversing full contraction mappings (of an n-chain) with exactly 1 fixed point.

Offset 1, canonical program `A221880.P8957834746733462325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A221880 (n : ℕ) : ℤ :=
  A221880.P8957834746733462325.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A221880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221921.P17806043554145633544

`A060819(n+4)*A176895(A051724(n)+2)`
-/

namespace A221921.P17806043554145633544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (n + 4) * A176895 (A051724 n + 2).toNat

end

end A221921.P17806043554145633544

noncomputable section

/-- A221921: a(n) = 4*n/gcd(4*n,n+4), n >= 4.

Offset 4, canonical program `A221921.P17806043554145633544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A221921 (n : ℕ) : ℤ :=
  A221921.P17806043554145633544.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A221921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221949.P1173051274178585841

`a(n-2)+A089068(n)-2` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A221949.P1173051274178585841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 2) + (A089068 n - 2)

end

end A221949.P1173051274178585841

noncomputable section

/-- A221949: Expansion of (-x+2*x^2-x^3-x^4-2*x^5)/(-1+3*x-2*x^2-x^4+x^5).

Offset 0, canonical program `A221949.P1173051274178585841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A221949 (n : ℕ) : ℤ :=
  A221949.P1173051274178585841.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A221949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221968.P12096907961443077317

`(2*n+3)*A107731(n+1)`
-/

namespace A221968.P12096907961443077317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A107731 (n + 1)

end

end A221968.P12096907961443077317

noncomputable section

/-- A221968: Number of -n..n arrays of length 5 with the sum ahead of each element differing from the sum following that element by n or less.

Offset 1, canonical program `A221968.P12096907961443077317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A221968 (n : ℕ) : ℤ :=
  A221968.P12096907961443077317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A221968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222308.P9372387281242253620

`∑[A048395(n)+A001318(n)]`
-/

namespace A222308.P9372387281242253620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048395 n + A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222308.P9372387281242253620

noncomputable section

/-- A222308: Let P be a one-move "rider" with move set M={(1,2)}; a(n) is the number of non-attacking positions of two indistinguishable pieces P on an n X n board.

Offset 1, canonical program `A222308.P9372387281242253620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A222308 (n : ℕ) : ℤ :=
  A222308.P9372387281242253620.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A222308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222341.P3104510988022230488

`A216710(n+4)`
-/

namespace A222341.P3104510988022230488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216710 (n + 4)

end

end A222341.P3104510988022230488

noncomputable section

/-- A222341: Number of (n+4) X 1 arrays of occupancy after each element moves up to +-4 places including 0.

Offset 1, canonical program `A222341.P3104510988022230488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A222341 (n : ℕ) : ℤ :=
  A222341.P3104510988022230488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A222341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222382.P18149104342996100947

`(A000079(n)²-A142150(n+1))*A000079(n+3)`
-/

namespace A222382.P18149104342996100947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n ^ 2 - A142150 (n + 1)) * A000079 (n + 3)

end

end A222382.P18149104342996100947

noncomputable section

/-- A222382: Sum of neighbor maps: number of n X 3 binary arrays indicating the locations of corresponding elements equal to the sum mod 3 of their horizontal and antidiagonal neighbors in a random 0..2 n X 3 array.

Offset 1, canonical program `A222382.P18149104342996100947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A222382 (n : ℕ) : ℤ :=
  A222382.P18149104342996100947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A222382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222740.P1638837219687918471

`A014695(n)*A016754(n)`
-/

namespace A222740.P1638837219687918471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 n * A016754 n

end

end A222740.P1638837219687918471

noncomputable section

/-- A222740: Denominators of 1/16 - 1/(4 + 8*n)^2.

Offset 0, canonical program `A222740.P1638837219687918471`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A222740 (n : ℕ) : ℤ :=
  A222740.P1638837219687918471.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A222740.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A222939.P2381887297888790042

`A087440(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A222939.P2381887297888790042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A087440 (n - 2) + a (n - 1)

end

end A222939.P2381887297888790042

noncomputable section

/-- A222939: Number of n X 1 0..4 arrays with no element equal to another at a city block distance of exactly two, and new values 0..4 introduced in row major order.

Offset 1, canonical program `A222939.P2381887297888790042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A222939 (n : ℕ) : ℤ :=
  A222939.P2381887297888790042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A222939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A223173.P2124783821170189270

`A092880(n+1)-3^(n+1)`
-/

namespace A223173.P2124783821170189270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092880 (n + 1) - (3 ^ (n + 1) : ℤ)

end

end A223173.P2124783821170189270

noncomputable section

/-- A223173: Poly-Cauchy numbers c_3^(-n).

Offset 1, canonical program `A223173.P2124783821170189270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A223173 (n : ℕ) : ℤ :=
  A223173.P2124783821170189270.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A223173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A223659.P6840941151427606144

`abs(∑[∑[A223718(n)]]-n)`
-/

namespace A223659.P6840941151427606144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A223659.P6840941151427606144

noncomputable section

/-- A223659: Number of unimodal maps [1..n]->[0..3].

Offset 0, canonical program `A223659.P6840941151427606144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A223659 (n : ℕ) : ℤ :=
  A223659.P6840941151427606144.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A223659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A223906.P2202406658702429866

`A242985(n+1)+3^(n+2)`
-/

namespace A223906.P2202406658702429866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242985 (n + 1) + (3 ^ (n + 2) : ℤ)

end

end A223906.P2202406658702429866

noncomputable section

/-- A223906: Poly-Cauchy numbers of the second kind -hat c_3^(-n).

Offset 1, canonical program `A223906.P2202406658702429866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A223906 (n : ℕ) : ℤ :=
  A223906.P2202406658702429866.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A223906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A223962.P4845765778239203008

`A051880(n+1)+A006542(n+4)`
-/

namespace A223962.P4845765778239203008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051880 (n + 1) + A006542 (n + 4)

end

end A223962.P4845765778239203008

noncomputable section

/-- A223962: Number of 2 X n 0..3 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

Offset 1, canonical program `A223962.P4845765778239203008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A223962 (n : ℕ) : ℤ :=
  A223962.P4845765778239203008.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A223962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224227.P8919765967966025148

`1/50*((15*n²-20*n+4)*A000045(n)-(5*n²-6*n)*A000032(n))`
-/

namespace A224227.P8919765967966025148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 50 * (((15 * n ^ 2 : ℤ) - (20 * n : ℤ) + 4) * A000045 n - ((5 * n ^ 2 : ℤ) - (6 * n : ℤ)) * A000032 n : ℚ)

end

end A224227.P8919765967966025148

noncomputable section

/-- A224227: a(n) = (1/50)*((15*n^2-20*n+4)*Fibonacci(n) - (5*n^2-6*n)*A000032(n)).

Offset 0, canonical program `A224227.P8919765967966025148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 450 terms. -/
def A224227 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A224227.P8919765967966025148.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 450 terms. -/
def A224227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224274.P6160277368388020037

`A051036(4*n+3)`
-/

namespace A224274.P6160277368388020037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051036 (4 * n + 3)

end

end A224274.P6160277368388020037

noncomputable section

/-- A224274: a(n) = binomial(4*n,n)/4.

Offset 1, canonical program `A224274.P6160277368388020037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A224274 (n : ℕ) : ℤ :=
  A224274.P6160277368388020037.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A224274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224455.P7069833698074895533

`A028896(n+1)*A038764(n+1)`
-/

namespace A224455.P7069833698074895533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 (n + 1) * A038764 (n + 1)

end

end A224455.P7069833698074895533

noncomputable section

/-- A224455: The hyper-Wiener index of the linear phenylene with n hexagons.

Offset 1, canonical program `A224455.P7069833698074895533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A224455 (n : ℕ) : ℤ :=
  A224455.P7069833698074895533.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A224455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224456.P2489832083948497009

`9*(n+3)*A028884(n+2)`
-/

namespace A224456.P2489832083948497009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * ((n + 3 : ℤ) * A028884 (n + 2))

end

end A224456.P2489832083948497009

noncomputable section

/-- A224456: The Wiener index of the cyclic phenylene with n hexagons (n>=3).

Offset 3, canonical program `A224456.P2489832083948497009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A224456 (n : ℕ) : ℤ :=
  A224456.P2489832083948497009.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A224456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224459.P6194376106361247104

`A085789(n+3)+A081271(n)`
-/

namespace A224459.P6194376106361247104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085789 (n + 3) + A081271 n

end

end A224459.P6194376106361247104

noncomputable section

/-- A224459: The Wiener index of the straight pentachain of n pentagonal rings (see Fig. 2.1 in the A. A. Ali et al. reference).

Offset 2, canonical program `A224459.P6194376106361247104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A224459 (n : ℕ) : ℤ :=
  A224459.P6194376106361247104.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A224459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224508.P101396537568610900

`A104449(n)-2*a(n-1)` with `a(0)=0`
-/

namespace A224508.P101396537568610900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A104449 n - 2 * a (n - 1)

end

end A224508.P101396537568610900

noncomputable section

/-- A224508: a(n+2) = a(n+1) + a(n) + A*t^n, with A = 1 and t = -2.

Offset 0, canonical program `A224508.P101396537568610900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A224508 (n : ℕ) : ℤ :=
  A224508.P101396537568610900.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A224508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224544.P4555445662633383526

`A055998(n)+A022124(n+2)`
-/

namespace A224544.P4555445662633383526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n + A022124 (n + 2)

end

end A224544.P4555445662633383526

noncomputable section

/-- A224544: Number of (n+1) X 3 0..1 matrices with each 2 X 2 subblock idempotent.

Offset 1, canonical program `A224544.P4555445662633383526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A224544 (n : ℕ) : ℤ :=
  A224544.P4555445662633383526.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A224544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224710.P16961705520595192506

`A210469((2*n)%(n+2)+1)`
-/

namespace A224710.P16961705520595192506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210469 (2 * n % (n + 2) + 1)

end

end A224710.P16961705520595192506

noncomputable section

/-- A224710: The number of unordered partitions {a,b} of 2n-1 such that a and b are composite.

Offset 1, canonical program `A224710.P16961705520595192506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224710 (n : ℕ) : ℤ :=
  A224710.P16961705520595192506.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224731.P83435940744742189

`Δ[A095114(n+1)+∑[n]]`
-/

namespace A224731.P83435940744742189
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095114 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224731.P83435940744742189

noncomputable section

/-- A224731: b(n+1) - b(n) + n where b(n) = A095114(n).

Offset 1, canonical program `A224731.P83435940744742189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A224731 (n : ℕ) : ℤ :=
  A224731.P83435940744742189.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A224731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224738.P9135199709558797852

`abs(6*2^n-2)+A020695(n+1)²+3`
-/

namespace A224738.P9135199709558797852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(6 * 2 ^ n : ℤ) - 2| + (A020695 (n + 1) ^ 2 + 3)

end

end A224738.P9135199709558797852

noncomputable section

/-- A224738: Number of (n+1) X 2 0..1 matrices with each 2 X 2 permanent equal.

Offset 1, canonical program `A224738.P9135199709558797852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A224738 (n : ℕ) : ℤ :=
  A224738.P9135199709558797852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A224738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224808.P11417623861762669123

`A122522(n+1)*A122522(n+2)`
-/

namespace A224808.P11417623861762669123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122522 (n + 1) * A122522 (n + 2)

end

end A224808.P11417623861762669123

noncomputable section

/-- A224808: Number of permutations (p(1), p(2), ..., p(n)) satisfying -k <= p(i)-i <= r and p(i)-i not in the set I, i=1..n, with k=2, r=6, I={-1,1,2,3,4,5}.

Offset 0, canonical program `A224808.P11417623861762669123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 719 terms. -/
def A224808 (n : ℕ) : ℤ :=
  A224808.P11417623861762669123.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 719 terms. -/
def A224808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225012.P15978431968945880844

`1+∑[∑[A225011(n+1)]]`
-/

namespace A225012.P15978431968945880844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225011 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225012.P15978431968945880844

noncomputable section

/-- A225012: Number of 5 X n 0..1 arrays with rows unimodal and columns nondecreasing.

Offset 1, canonical program `A225012.P15978431968945880844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225012 (n : ℕ) : ℤ :=
  A225012.P15978431968945880844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225051.P9988902653333140305

`A000578(n)+A055012(n)`
-/

namespace A225051.P9988902653333140305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + A055012 n

end

end A225051.P9988902653333140305

noncomputable section

/-- A225051: Numbers of the form x^3 + SumOfCubedDigits(x).

Offset 0, canonical program `A225051.P9988902653333140305`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055012, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A225051 (n : ℕ) : ℤ :=
  A225051.P9988902653333140305.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055012, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A225051.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A225439.P2860573056763394502

`A025748(n)+(9-6/n)*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A225439.P2860573056763394502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (A025748 n : ℚ) + (9 - 6 / (n : ℚ)) * a (n - 1)

end

end A225439.P2860573056763394502

noncomputable section

/-- A225439: Expansion of 3*x/((1-(1-9*x)^(1/3))*(1-9*x)^(2/3)).

Offset 0, canonical program `A225439.P2860573056763394502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A225439 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A225439.P2860573056763394502.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A225439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225490.P13373856799285227428

`∑[A143438(n)]`
-/

namespace A225490.P13373856799285227428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225490.P13373856799285227428

noncomputable section

/-- A225490: Expansion of 1/(1 - x - x^2 + x^5 + x^6 - x^7).

Offset 0, canonical program `A225490.P13373856799285227428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 682 terms. -/
def A225490 (n : ℕ) : ℤ :=
  A225490.P13373856799285227428.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 682 terms. -/
def A225490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225525.P7624985902735853994

`∑{d}[n+1, lcm(2, #)*A000032(n+1)]`
-/

namespace A225525.P7624985902735853994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.lcm 2 d : ℤ) * A000032 (n + 1)

end

end A225525.P7624985902735853994

noncomputable section

/-- A225525: a(n) = (sigma(2*n) - sigma(n))*Lucas(n) where Lucas(n) = A000204(n) and sigma(n) = A000203(n) is the sum of divisors of n.

Offset 1, canonical program `A225525.P7624985902735853994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A225525 (n : ℕ) : ℤ :=
  A225525.P7624985902735853994.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A225525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225528.P3112333280416957281

`∑{d}[n+1, #*A000032(n+1)]`
-/

namespace A225528.P3112333280416957281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000032 (n + 1)

end

end A225528.P3112333280416957281

noncomputable section

/-- A225528: a(n) = sigma(n)*Lucas(n) where Lucas(n) = A000204(n) and sigma(n) = A000203(n) is the sum of divisors of n.

Offset 1, canonical program `A225528.P3112333280416957281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A225528 (n : ℕ) : ℤ :=
  A225528.P3112333280416957281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A225528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225545.P6608865961525872656

`A070984(C(2, n+2)+n)-1`
-/

namespace A225545.P6608865961525872656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070984 (Nat.choose 2 (n + 2) + n) - 1

end

end A225545.P6608865961525872656

noncomputable section

/-- A225545: Floor(exp(w(n))) where W is the Lambert W function.

Offset 0, canonical program `A225545.P6608865961525872656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225545 (n : ℕ) : ℤ :=
  A225545.P6608865961525872656.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225551.P10737030824268377223

`floor(∑[abs(1-9*n)]/A033627(n+1))`
-/

namespace A225551.P10737030824268377223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (9 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A033627 (n + 1) : ℚ)⌋

end

end A225551.P10737030824268377223

noncomputable section

/-- A225551: Longest checkmate in king and queen versus king endgame on an n X n chessboard.

Offset 3, canonical program `A225551.P10737030824268377223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225551 (n : ℕ) : ℤ :=
  A225551.P10737030824268377223.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225586.P1152551414626117652

`A129789(n+1)-1`
-/

namespace A225586.P1152551414626117652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129789 (n + 1) - 1

end

end A225586.P1152551414626117652

noncomputable section

/-- A225586: Floor((5^n-1)/n).

Offset 1, canonical program `A225586.P1152551414626117652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A225586 (n : ℕ) : ℤ :=
  A225586.P1152551414626117652.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A225586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225593.P14418808272021770619

`A184744(n+1)-(n+1)`
-/

namespace A225593.P14418808272021770619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184744 (n + 1) - (n + 1 : ℤ)

end

end A225593.P14418808272021770619

noncomputable section

/-- A225593: The integer closest to n/e.

Offset 1, canonical program `A225593.P14418808272021770619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225593 (n : ℕ) : ℤ :=
  A225593.P14418808272021770619.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225699.P15182149105449095167

`lcm(4*(n+1), A005880(n))/(4*(n+1))`
-/

namespace A225699.P15182149105449095167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (4 * (n + 1) : ℤ) (A005880 n) : ℚ) / (4 * (n + 1) : ℚ)

end

end A225699.P15182149105449095167

noncomputable section

/-- A225699: Numerators of coefficients arising from q-expansion of Integrate[eta[q^4]^8/eta[q^2]^4, q]/q where eta is the Dedekind eta function.

Offset 0, canonical program `A225699.P15182149105449095167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225699 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A225699.P15182149105449095167.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225804.P12475370260228491498

`ceil(∑[A000040(n+1)]/(n+1))`
-/

namespace A225804.P12475370260228491498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A225804.P12475370260228491498

noncomputable section

/-- A225804: Arithmetic mean of the first n primes, rounded up.

Offset 1, canonical program `A225804.P12475370260228491498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A225804 (n : ℕ) : ℤ :=
  A225804.P12475370260228491498.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A225804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225836.P17130056112689041821

`lt[1, A093178(A103391(n+1)-1)]`
-/

namespace A225836.P17130056112689041821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A103391 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225836.P17130056112689041821

noncomputable section

/-- A225836: Numbers of form 2^j*(4k+1), j >= 0, k >= 1.

Offset 1, canonical program `A225836.P17130056112689041821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225836 (n : ℕ) : ℤ :=
  (A225836.P17130056112689041821.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225836.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A226089.P12875362830006727066

`A160050(n+1)+A130658(n)`
-/

namespace A226089.P12875362830006727066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160050 (n + 1) + A130658 n

end

end A226089.P12875362830006727066

noncomputable section

/-- A226089: Denominators of the series b(n+1) = (b(n)+k)/(1+b(n)*k); where k = 1/(n+1), b(1) = 0.

Offset 1, canonical program `A226089.P12875362830006727066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226089 (n : ℕ) : ℤ :=
  A226089.P12875362830006727066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226162.P12871478300109874519

`Δ[xor(n, 2*n-1)]%2*A080891(n)`
-/

namespace A226162.P12871478300109874519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((2 * n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2 * A080891 n

end

end A226162.P12871478300109874519

noncomputable section

/-- A226162: a(n) = Kronecker Symbol (-5/n), n >= 0.

Offset 0, canonical program `A226162.P12871478300109874519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226162 (n : ℕ) : ℤ :=
  A226162.P12871478300109874519.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226249.P10040861807781910999

`∑[Δ[A005374(n)]+1]`
-/

namespace A226249.P10040861807781910999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226249.P10040861807781910999

noncomputable section

/-- A226249: Positions of nonpositive numbers in the ordering of the rational numbers at A226247.

Offset 1, canonical program `A226249.P10040861807781910999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226249 (n : ℕ) : ℤ :=
  A226249.P10040861807781910999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226265.P5738636558211271656

`7*A305065(n+1)`
-/

namespace A226265.P5738636558211271656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A305065 (n + 1)

end

end A226265.P5738636558211271656

noncomputable section

/-- A226265: Number of additive Z_2 Z_8 codes of a certain type (see Siap-Aydogdu for precise definition).

Offset 1, canonical program `A226265.P5738636558211271656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A226265 (n : ℕ) : ℤ :=
  A226265.P5738636558211271656.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A226265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226274.P10862740871054769072

`A038718(A103517(n)+1+n)`
-/

namespace A226274.P10862740871054769072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038718 (A103517 n + 1 + (n : ℤ)).toNat

end

end A226274.P10862740871054769072

noncomputable section

/-- A226274: Position of 1/n in the ordering of the rationals given by application of the map t -> (1+t,-1/t), cf. A226130.

Offset 1, canonical program `A226274.P10862740871054769072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A226274 (n : ℕ) : ℤ :=
  A226274.P10862740871054769072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A226274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226311.P12293019228853608447

`Δ[xor(2*a(n-1), A130782(n))]` with `a(0)=1`
-/

namespace A226311.P12293019228853608447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (2 * f1 (n - 1)) (A130782 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226311.P12293019228853608447

noncomputable section

/-- A226311: a(n+5) = a(n+4)+a(n+3)+a(n+2)+a(n+1)+2*a(n) with a(0)=2, a(1)=1, a(2)=5, a(3)=10, a(4)=20.

Offset 0, canonical program `A226311.P12293019228853608447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A226311 (n : ℕ) : ℤ :=
  A226311.P12293019228853608447.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A226311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226315.P10248922054205190761

`∑[∑[A086866(n)]]`
-/

namespace A226315.P10248922054205190761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086866 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226315.P10248922054205190761

noncomputable section

/-- A226315: a(n) = (n^2/8+3*n/8-2)*2^n + 3.

Offset 1, canonical program `A226315.P10248922054205190761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A226315 (n : ℕ) : ℤ :=
  A226315.P10248922054205190761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A226315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226328.P10409646375293161171

`A057078(n+1)+2*A212804(n)-1`
-/

namespace A226328.P10409646375293161171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (n + 1) + 2 * A212804 n - 1

end

end A226328.P10409646375293161171

noncomputable section

/-- A226328: a(0)=1, a(1)=-2; a(n+2) = a(n+1) + a(n) + (period 3: repeat 3, 1, -1).

Offset 0, canonical program `A226328.P10409646375293161171`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226328 (n : ℕ) : ℤ :=
  A226328.P10409646375293161171.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226328.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226433.P15475771026139554794

`A142586(n)+A054452(n)`
-/

namespace A226433.P15475771026139554794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142586 n + A054452 n

end

end A226433.P15475771026139554794

noncomputable section

/-- A226433: The number of permutations of length n in a particular geometric grid class.

Offset 1, canonical program `A226433.P15475771026139554794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A226433 (n : ℕ) : ℤ :=
  A226433.P15475771026139554794.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A226433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226600.P13950365899487578283

`A061201(n+1)+A003215(n)-A007425(n+1)`
-/

namespace A226600.P13950365899487578283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061201 (n + 1) + (A003215 n - A007425 (n + 1))

end

end A226600.P13950365899487578283

noncomputable section

/-- A226600: Number of ordered triples (i,j,k) with i*j*k <= n and i,j,k >= 0.

Offset 0, canonical program `A226600.P13950365899487578283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226600 (n : ℕ) : ℤ :=
  A226600.P13950365899487578283.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226649.P15664765570718738223

`A000045(floor((n-1)/2))+a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A226649.P15664765570718738223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A000045 ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + a (n - 2)

end

end A226649.P15664765570718738223

noncomputable section

/-- A226649: Fibonacci shuffles: a(2n) = A000071(n) and a(2n+1) = A001611(n+2).

Offset 0, canonical program `A226649.P15664765570718738223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 959 terms. -/
def A226649 (n : ℕ) : ℤ :=
  A226649.P15664765570718738223.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 959 terms. -/
def A226649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226783.P14284550368577187653

`(5*A008738(n+1)²)%(n+1)`
-/

namespace A226783.P14284550368577187653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * A008738 (n + 1) ^ 2) (n + 1 : ℤ)

end

end A226783.P14284550368577187653

noncomputable section

/-- A226783: If n=0 (mod 5) then a(n)=0, otherwise a(n)=5^(-1) in Z/nZ*.

Offset 1, canonical program `A226783.P14284550368577187653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A226783 (n : ℕ) : ℤ :=
  A226783.P14284550368577187653.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A226783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226801.P9544664218704710775

`(n+1)*(2*A226800(n+1)-A226800(n))`
-/

namespace A226801.P9544664218704710775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 * A226800 (n + 1) - A226800 n)

end

end A226801.P9544664218704710775

noncomputable section

/-- A226801: Column 6 of array in A226513.

Offset 0, canonical program `A226801.P9544664218704710775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A226801 (n : ℕ) : ℤ :=
  A226801.P9544664218704710775.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A226801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226896.P7215955466078964282

`A000027(A226190(n+1)+n)`
-/

namespace A226896.P7215955466078964282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A226190 (n + 1) + (n : ℤ)).toNat

end

end A226896.P7215955466078964282

noncomputable section

/-- A226896: Position of log n in the joint ranking of harmonic numbers H(k) and {log k}, for k >= 1; complement of A226894.

Offset 1, canonical program `A226896.P7215955466078964282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A226896 (n : ℕ) : ℤ :=
  A226896.P7215955466078964282.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A226896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226903.P2410088263399814882

`A001651(n+2)²*A110654(n+1)+n+1`
-/

namespace A226903.P2410088263399814882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 2) ^ 2 * A110654 (n + 1) + (n + 1 : ℤ)

end

end A226903.P2410088263399814882

noncomputable section

/-- A226903: Shiraishi numbers: a parametrized family of solutions c to the Diophantine equation a^3 + b^3 + c^3 = d^3 with d = c+1.

Offset 1, canonical program `A226903.P2410088263399814882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A226903 (n : ℕ) : ℤ :=
  A226903.P2410088263399814882.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A226903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226914.P2922214671756578108

`A299287(p?[xor(1, n)+1])%4`
-/

namespace A226914.P2922214671756578108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299287 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))) 4

end

end A226914.P2922214671756578108

noncomputable section

/-- A226914: Third column of A226518.

Offset 1, canonical program `A226914.P2922214671756578108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A226914 (n : ℕ) : ℤ :=
  A226914.P2922214671756578108.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A226914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226917.P7871451663691589680

`A106472(n)+2*a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A226917.P7871451663691589680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A106472 n + 2 * a (n - 2)

end

end A226917.P7871451663691589680

noncomputable section

/-- A226917: Number of non-sphere-homeomorphic crossing optimal 2-page book drawings of complete graph K_{2n+1}.

Offset 2, canonical program `A226917.P7871451663691589680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A226917 (n : ℕ) : ℤ :=
  A226917.P7871451663691589680.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A226917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226934.P2791961928592230860

`eq[0, A054025(2*(n+1))]+1`
-/

namespace A226934.P2791961928592230860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054025 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A226934.P2791961928592230860

noncomputable section

/-- A226934: Numbers k such that tau(2k) | sigma(2k).

Offset 1, canonical program `A226934.P2791961928592230860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A226934 (n : ℕ) : ℤ :=
  (A226934.P2791961928592230860.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A226934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227012.P1693384835396072612

`A065033(A004526(n))+A059270(n)`
-/

namespace A227012.P1693384835396072612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A004526 n).toNat + A059270 n

end

end A227012.P1693384835396072612

noncomputable section

/-- A227012: a(n) = floor(M(g(n-1)+1, ..., g(n))), where M = harmonic mean and g(n) = n^3.

Offset 1, canonical program `A227012.P1693384835396072612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227012 (n : ℕ) : ℤ :=
  A227012.P1693384835396072612.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227013.P4672770896026051974

`A107750(∑[n]+1)+∑[2*n]²`
-/

namespace A227013.P4672770896026051974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A227013.P4672770896026051974

noncomputable section

/-- A227013: a(n) = floor(M(g(n-1)+1,..,g(n))), where M is the harmonic mean and g(n) = n^4.

Offset 1, canonical program `A227013.P4672770896026051974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A227013 (n : ℕ) : ℤ :=
  A227013.P4672770896026051974.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A227013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227106.P15059650197525808097

`lcm(A008588(n), A017017(n))%A017005(n)`
-/

namespace A227106.P15059650197525808097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lcm (A008588 n) (A017017 n) : ℤ) (A017005 n)

end

end A227106.P15059650197525808097

noncomputable section

/-- A227106: Numerators of harmonic mean H(n,3), n >= 0.

Offset 0, canonical program `A227106.P15059650197525808097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227106 (n : ℕ) : ℤ :=
  A227106.P15059650197525808097.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227107.P3841865975492696678

`lcm(A008590(n), A017209(n))%A017197(n)`
-/

namespace A227107.P3841865975492696678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lcm (A008590 n) (A017209 n) : ℤ) (A017197 n)

end

end A227107.P3841865975492696678

noncomputable section

/-- A227107: Numerators of harmonic mean H(n,4), n >= 0.

Offset 0, canonical program `A227107.P3841865975492696678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227107 (n : ℕ) : ℤ :=
  A227107.P3841865975492696678.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227109.P6114768292136038590

`lcm(10*n, A017449(n))%A017437(n)`
-/

namespace A227109.P6114768292136038590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lcm (10 * n : ℤ) (A017449 n) : ℤ) (A017437 n)

end

end A227109.P6114768292136038590

noncomputable section

/-- A227109: Numerators of harmonic mean H(n, 5), n >= 0.

Offset 0, canonical program `A227109.P6114768292136038590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227109 (n : ℕ) : ℤ :=
  A227109.P6114768292136038590.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227181.P11061588089310331075

`n-A007290(∑[char[∑[(1-n)²+n]]])`
-/

namespace A227181.P11061588089310331075
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007290 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227181.P11061588089310331075

noncomputable section

/-- A227181: Irregular table: integers from n to n^2 followed by integers from (n+1) to (n+1)^2.

Offset 0, canonical program `A227181.P11061588089310331075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9952 terms. -/
def A227181 (n : ℕ) : ℤ :=
  A227181.P11061588089310331075.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9952 terms. -/
def A227181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227221.P5509064898243019962

`A000578(n+1)+A171973(n+1)+A071399(n+1)`
-/

namespace A227221.P5509064898243019962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) + (A171973 (n + 1) + A071399 (n + 1))

end

end A227221.P5509064898243019962

noncomputable section

/-- A227221: Volume of Johnson square pyramid placed upright on cube (rounded down) with edge lengths equal to n.

Offset 1, canonical program `A227221.P5509064898243019962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A227221 (n : ℕ) : ℤ :=
  A227221.P5509064898243019962.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A227221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227339.P10028289300210348685

`xor(1, Δ[A064437(A008619(n))])`
-/

namespace A227339.P10028289300210348685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064437 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (n + 1) - f1 n)

end

end A227339.P10028289300210348685

noncomputable section

/-- A227339: Fixed point of the morphism 1 -> 131, 2 -> 312, 3 -> 2.

Offset 1, canonical program `A227339.P10028289300210348685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227339 (n : ℕ) : ℤ :=
  A227339.P10028289300210348685.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227391.P2930647343791725049

`round(3*(3/4)^A001489(n))`
-/

namespace A227391.P2930647343791725049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * ((3 : ℚ) / 4) ^ (A001489 n : ℤ))

end

end A227391.P2930647343791725049

noncomputable section

/-- A227391: a(n) = round(3*(4/3)^n).

Offset 0, canonical program `A227391.P2930647343791725049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 797 terms. -/
def A227391 (n : ℕ) : ℤ :=
  A227391.P2930647343791725049.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 797 terms. -/
def A227391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227415.P15776540425176152285

`Δ[A006882(n)]%A006882(n)`
-/

namespace A227415.P15776540425176152285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A006882 n)

end

end A227415.P15776540425176152285

noncomputable section

/-- A227415: a(n) = (n+1)!! mod n!!.

Offset 0, canonical program `A227415.P15776540425176152285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A227415 (n : ℕ) : ℤ :=
  A227415.P15776540425176152285.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A227415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227430.P6256248290259494015

`A129339(n+1)-A119336(n)`
-/

namespace A227430.P6256248290259494015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129339 (n + 1) - A119336 n

end

end A227430.P6256248290259494015

noncomputable section

/-- A227430: Expansion of x^2*(1-x)^3/((1-2*x)*(1-x+x^2)*(1-3*x+3x^2)).

Offset 0, canonical program `A227430.P6256248290259494015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A227430 (n : ℕ) : ℤ :=
  A227430.P6256248290259494015.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A227430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227512.P3694287470399906387

`A047253(n+1)+∑[(6*n+3)²]`
-/

namespace A227512.P3694287470399906387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A227512.P3694287470399906387

noncomputable section

/-- A227512: Floor(-1/n + 1/log((2n+1)/(2n-1))).

Offset 1, canonical program `A227512.P3694287470399906387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227512 (n : ℕ) : ℤ :=
  A227512.P3694287470399906387.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227513.P18001232639528328912

`∑[A130782(n)+A016946(n)]`
-/

namespace A227513.P18001232639528328912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130782 n + A016946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227513.P18001232639528328912

noncomputable section

/-- A227513: Round(-1/n + 1/log((2n+1)/(2n-1))).

Offset 1, canonical program `A227513.P18001232639528328912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227513 (n : ℕ) : ℤ :=
  A227513.P18001232639528328912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227513.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A227704.P9124885557521854775

`(n+2)*(A166911(n+2)+2)`
-/

namespace A227704.P9124885557521854775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A166911 (n + 2) + 2)

end

end A227704.P9124885557521854775

noncomputable section

/-- A227704: The hyper-Wiener index of the zig-zag polyhex nanotube TUHC_6[2n,2] defined pictorially in Fig. 1 of the Eliasi et al. reference.

Offset 2, canonical program `A227704.P9124885557521854775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A227704 (n : ℕ) : ℤ :=
  A227704.P9124885557521854775.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A227704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227707.P2281933872678485494

`A007283(n)*A048474(n+1)`
-/

namespace A227707.P2281933872678485494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n * A048474 (n + 1)

end

end A227707.P2281933872678485494

noncomputable section

/-- A227707: The terminal Wiener index of the dendrimer D_n defined pictorially in Fig. 1 of the Heydari et al. reference.

Offset 0, canonical program `A227707.P2281933872678485494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A227707 (n : ℕ) : ℤ :=
  A227707.P2281933872678485494.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A227707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227758.P16747762443330362950

`A051027(n+1)-A155085(n+1)`
-/

namespace A227758.P16747762443330362950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) - A155085 (n + 1)

end

end A227758.P16747762443330362950

noncomputable section

/-- A227758: a(n) = sigma(sigma(n)) - sigma(n) - n, where sigma(n) = A000203(n) = sum of the divisors of n.

Offset 1, canonical program `A227758.P16747762443330362950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227758 (n : ℕ) : ℤ :=
  A227758.P16747762443330362950.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227792.P11349590859861916359

`record[∑[A126354(n+1)]%A221172(n)]`
-/

namespace A227792.P11349590859861916359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126354 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (A221172 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227792.P11349590859861916359

noncomputable section

/-- A227792: Expansion of (1 + 6*x + 17*x^2 - x^3 - 3*x^4)/(1 - 6*x^2 + x^4).

Offset 0, canonical program `A227792.P11349590859861916359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A227792 (n : ℕ) : ℤ :=
  A227792.P11349590859861916359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A227792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227804.P2616192900655170233

`A289692(n+6)`
-/

namespace A227804.P2616192900655170233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289692 (n + 6)

end

end A227804.P2616192900655170233

noncomputable section

/-- A227804: a(1) = greatest k such that H(k) - H(8) < H(8) - H(4); a(2) = greatest k such that H(k) - H(a(1)) < H(a(1)) - H(8), and for n > 2, a(n) = greatest k such that H(k) - H(a(n-1)) > H(a(n-1)) - H(a(n-2)), where H = harmonic number.

Offset 1, canonical program `A227804.P2616192900655170233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. -/
def A227804 (n : ℕ) : ℤ :=
  A227804.P2616192900655170233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. -/
def A227804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227834.P16691215398278504182

`val(A000930(n), 2)`
-/

namespace A227834.P16691215398278504182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000930 n).toNat 2

end

end A227834.P16691215398278504182

noncomputable section

/-- A227834: 2^a(n) is the highest power of 2 dividing A000930(n).

Offset 0, canonical program `A227834.P16691215398278504182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 604 terms. -/
def A227834 (n : ℕ) : ℤ :=
  (A227834.P16691215398278504182.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 604 terms. -/
def A227834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227835.P3967408715461086615

`val(A000930(n), 3)`
-/

namespace A227835.P3967408715461086615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000930 n).toNat 3

end

end A227835.P3967408715461086615

noncomputable section

/-- A227835: 3^a(n) is the highest power of 3 dividing A000930(n).

Offset 0, canonical program `A227835.P3967408715461086615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 604 terms. -/
def A227835 (n : ℕ) : ℤ :=
  (A227835.P3967408715461086615.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 604 terms. -/
def A227835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227836.P12041666106557242195

`val(A214551(n), 2)`
-/

namespace A227836.P12041666106557242195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A214551 n).toNat 2

end

end A227836.P12041666106557242195

noncomputable section

/-- A227836: 2^a(n) is the highest power of 2 dividing A214551(n).

Offset 0, canonical program `A227836.P12041666106557242195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1822 terms. -/
def A227836 (n : ℕ) : ℤ :=
  (A227836.P12041666106557242195.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1822 terms. -/
def A227836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227837.P3683269354223994012

`val(A214551(n), 3)`
-/

namespace A227837.P3683269354223994012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A214551 n).toNat 3

end

end A227837.P3683269354223994012

noncomputable section

/-- A227837: 3^a(n) is the highest power of 3 dividing A214551(n).

Offset 0, canonical program `A227837.P3683269354223994012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1822 terms. -/
def A227837 (n : ℕ) : ℤ :=
  (A227837.P3683269354223994012.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1822 terms. -/
def A227837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227849.P3798066996558267507

`A033439(n)-and(1, A033439(n)+n)`
-/

namespace A227849.P3798066996558267507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033439 n - Int.land 1 (A033439 n + (n : ℤ))

end

end A227849.P3798066996558267507

noncomputable section

/-- A227849: a(n) = 2 * floor( 3/14 * n^2) if n even, a(n) = 2 * round( 3/14 * n^2) -1 if n odd.

Offset 0, canonical program `A227849.P3798066996558267507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227849 (n : ℕ) : ℤ :=
  A227849.P3798066996558267507.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227896.P1502342098669639840

`A007887(A007775(n+1))`
-/

namespace A227896.P1502342098669639840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007887 (A007775 (n + 1)).toNat

end

end A227896.P1502342098669639840

noncomputable section

/-- A227896: 32-beat repeating palindromic sequence: digital roots of Fibonacci numbers indexed by the set of natural numbers not divisible by 2, 3 or 5 (A007775).

Offset 1, canonical program `A227896.P1502342098669639840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2666 terms. -/
def A227896 (n : ℕ) : ℤ :=
  A227896.P1502342098669639840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2666 terms. -/
def A227896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227919.P6822154070124904799

`p?[A032741(A002265(n))*A045572(n+1)]`
-/

namespace A227919.P6822154070124904799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A002265 n).toNat * A045572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227919.P6822154070124904799

noncomputable section

/-- A227919: Primes which remain prime when rightmost digit is removed.

Offset 1, canonical program `A227919.P6822154070124904799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 460 terms. -/
def A227919 (n : ℕ) : ℤ :=
  A227919.P6822154070124904799.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 460 terms. -/
def A227919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227983.P8800211659433414183

`lt[Δ[A000203(n+2)], A000203(n+1)]+2`
-/

namespace A227983.P8800211659433414183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 2

end

end A227983.P8800211659433414183

noncomputable section

/-- A227983: Numbers n such that sigma(n+1) - sigma(n-1) < sigma(n); where sigma(n) = A000203(n) = sum of the divisors of n.

Offset 1, canonical program `A227983.P8800211659433414183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9585 terms. -/
def A227983 (n : ℕ) : ℤ :=
  (A227983.P8800211659433414183.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9585 terms. -/
def A227983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228082.P10153708599017586567

`comp[A010061(n+1)]`
-/

namespace A228082.P10153708599017586567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A228082.P10153708599017586567

noncomputable section

/-- A228082: Numbers that are of the form k + sum of binary digits of k for some nonnegative integer k.

Offset 1, canonical program `A228082.P10153708599017586567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228082 (n : ℕ) : ℤ :=
  (A228082.P10153708599017586567.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228093.P7511362443758941122

`∩[A142643(n+1), A142892(n+1)]`
-/

namespace A228093.P7511362443758941122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228093.P7511362443758941122

noncomputable section

/-- A228093: Primes congruent to 5 (mod 504).

Offset 1, canonical program `A228093.P7511362443758941122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A228093 (n : ℕ) : ℤ :=
  (A228093.P7511362443758941122.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A228093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228124.P10272328557314210021

`floor(floor(C(A007310(n+1)+3, 3)/2)/2)`
-/

namespace A228124.P10272328557314210021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(Nat.choose (A007310 (n + 1) + 3).toNat 3 : ℚ) / 2⌋ : ℚ) / 2⌋

end

end A228124.P10272328557314210021

noncomputable section

/-- A228124: Number of blocks in a Steiner Quadruple System of order A047235(n+1).

Offset 1, canonical program `A228124.P10272328557314210021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228124 (n : ℕ) : ℤ :=
  A228124.P10272328557314210021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228132.P8737515044422985900

`Δ[A014311(n+1)]`
-/

namespace A228132.P8737515044422985900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228132.P8737515044422985900

noncomputable section

/-- A228132: First differences of A014311.

Offset 1, canonical program `A228132.P8737515044422985900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A228132 (n : ℕ) : ℤ :=
  A228132.P8737515044422985900.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A228132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228186.P9176151723657075923

`floor(A028552(n)/log(2))+4`
-/

namespace A228186.P9176151723657075923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A028552 n : ℝ) / Real.log (2 : ℝ)⌋ + 4

end

end A228186.P9176151723657075923

noncomputable section

/-- A228186: a(n) is the smallest natural number k such that (k+n+1)!*(k-n-2)! < 2*k!*(k-1)!.

Offset 0, canonical program `A228186.P9176151723657075923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A228186 (n : ℕ) : ℤ :=
  A228186.P9176151723657075923.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A228186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228220.P15864215752540009007

`A069131(n+1)+A068236(n)`
-/

namespace A228220.P15864215752540009007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069131 (n + 1) + A068236 n

end

end A228220.P15864215752540009007

noncomputable section

/-- A228220: Number of second differences of arrays of length 5 of numbers in 0..n.

Offset 1, canonical program `A228220.P15864215752540009007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228220 (n : ℕ) : ℤ :=
  A228220.P15864215752540009007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228228.P9666619117873136366

`p?[2*A047554(n+1)+1]`
-/

namespace A228228.P9666619117873136366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047554 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228228.P9666619117873136366

noncomputable section

/-- A228228: Primes congruent to {3, 5, 13, 15} mod 16.

Offset 1, canonical program `A228228.P9666619117873136366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2113 terms. -/
def A228228 (n : ℕ) : ℤ :=
  A228228.P9666619117873136366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2113 terms. -/
def A228228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228272.P7405499985049252267

`floor(A114378(n+1)/6)`
-/

namespace A228272.P7405499985049252267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A114378 (n + 1) : ℚ) / 6⌋

end

end A228272.P7405499985049252267

noncomputable section

/-- A228272: Volume of sphere (rounded down) with the diameter equal to n.

Offset 1, canonical program `A228272.P7405499985049252267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228272 (n : ℕ) : ℤ :=
  A228272.P7405499985049252267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228298.P13462693144235860007

`A145569(a(n-1))+a(n-a(n-1))` with `a(0)=1`
-/

namespace A228298.P13462693144235860007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A145569 (a (n - 1)).toNat + a ((n : ℤ) - a (n - 1)).toNat

end

end A228298.P13462693144235860007

noncomputable section

/-- A228298: Generalized meta-Fibonacci sequence a(n) with parameters s=0 and k=7.

Offset 1, canonical program `A228298.P13462693144235860007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228298 (n : ℕ) : ℤ :=
  A228298.P13462693144235860007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228306.P13802442463414817942

`3*A005582(n+3)`
-/

namespace A228306.P13802442463414817942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005582 (n + 3)

end

end A228306.P13802442463414817942

noncomputable section

/-- A228306: The Wiener index of the Kneser graph K(n,2) (n>=5).

Offset 5, canonical program `A228306.P13802442463414817942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A228306 (n : ℕ) : ℤ :=
  A228306.P13802442463414817942.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A228306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228307.P13990731731002142324

`3*A095661(n+2)`
-/

namespace A228307.P13990731731002142324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A095661 (n + 2)

end

end A228307.P13990731731002142324

noncomputable section

/-- A228307: The hyper-Wiener index of the Kneser graph K(n,2) (n>=5).

Offset 5, canonical program `A228307.P13990731731002142324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A228307 (n : ℕ) : ℤ :=
  A228307.P13990731731002142324.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A228307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228373.P17418446565799431339

`comp[A224467(n+1)]`
-/

namespace A228373.P17418446565799431339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A228373.P17418446565799431339

noncomputable section

/-- A228373: Numbers k such that 27*k + 1 is not prime.

Offset 1, canonical program `A228373.P17418446565799431339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228373 (n : ℕ) : ℤ :=
  (A228373.P17418446565799431339.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228409.P11464199639772634342

`or(1, A080847(n+1)²)`
-/

namespace A228409.P11464199639772634342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A080847 (n + 1) ^ 2)

end

end A228409.P11464199639772634342

noncomputable section

/-- A228409: a(n) = 4*mu(n) + 5, where mu is the Moebius function (A008683).

Offset 1, canonical program `A228409.P11464199639772634342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228409 (n : ℕ) : ℤ :=
  A228409.P11464199639772634342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228434.P4418632704616501950

`p?[A000203(n+1)+A000203(A000203(n+1))]`
-/

namespace A228434.P4418632704616501950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A000203 (A000203 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228434.P4418632704616501950

noncomputable section

/-- A228434: Primes expressible as sigma(n) + sigma(sigma(n)), in order of their occurrence.

Offset 1, canonical program `A228434.P4418632704616501950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A228434 (n : ℕ) : ℤ :=
  A228434.P4418632704616501950.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A228434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228443.P11248528158286629393

`abs(∑{d}[A009001(2*n+1), A009001(#)])`
-/

namespace A228443.P11248528158286629393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n).natAbs, A009001 d|

end

end A228443.P11248528158286629393

noncomputable section

/-- A228443: G.f.: Sum_{k>=0} (2*k + 1) * x^k / (1 + x^(2*k + 1)).

Offset 0, canonical program `A228443.P11248528158286629393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A228443 (n : ℕ) : ℤ :=
  A228443.P11248528158286629393.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A228443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228462.P17652966939301378118

`A225007(n+1)+∑[(n+1)²]`
-/

namespace A228462.P17652966939301378118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225007 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A228462.P17652966939301378118

noncomputable section

/-- A228462: Number of arrays of maxima of three adjacent elements of some length 7 0..n array.

Offset 1, canonical program `A228462.P17652966939301378118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A228462 (n : ℕ) : ℤ :=
  A228462.P17652966939301378118.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A228462.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A228567.P5446309147432854246

`p?[A000203(A000203(n+1))-A000203(n+1)]`
-/

namespace A228567.P5446309147432854246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (n + 1)).toNat - A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228567.P5446309147432854246

noncomputable section

/-- A228567: Primes expressible as sigma(sigma(n)) - sigma(n), in order of their occurrence.

Offset 1, canonical program `A228567.P5446309147432854246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A228567 (n : ℕ) : ℤ :=
  A228567.P5446309147432854246.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A228567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228600.P11144406626079470272

`(A081348(n+2)+n+2)*(n+3)`
-/

namespace A228600.P11144406626079470272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081348 (n + 2) + (n + 2 : ℤ)) * (n + 3 : ℤ)

end

end A228600.P11144406626079470272

noncomputable section

/-- A228600: The Szeged index of the n-sunlet graph (n>=3).

Offset 3, canonical program `A228600.P11144406626079470272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A228600 (n : ℕ) : ℤ :=
  A228600.P11144406626079470272.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A228600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228609.P4169035835724740144

`∑[∑[A001590(n)]^3]`
-/

namespace A228609.P4169035835724740144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228609.P4169035835724740144

noncomputable section

/-- A228609: Partial sums of the cubes of the tribonacci sequence A000073.

Offset 0, canonical program `A228609.P4169035835724740144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A228609 (n : ℕ) : ℤ :=
  A228609.P4169035835724740144.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A228609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228612.P17782648961987571171

`A001787(1-A070939(n)+n)`
-/

namespace A228612.P17782648961987571171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (1 - A070939 n + (n : ℤ)).toNat

end

end A228612.P17782648961987571171

noncomputable section

/-- A228612: Number of (possibly overlapping) occurrences of the subword given by the binary expansion of n in all binary words of length n.

Offset 0, canonical program `A228612.P17782648961987571171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A228612 (n : ℕ) : ℤ :=
  A228612.P17782648961987571171.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A228612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228706.P10265683823874069192

`∑[round(xor(2, n+1)/4)*A008619(n)]`
-/

namespace A228706.P10265683823874069192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 2 (n + 1) : ℚ) / 4) * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228706.P10265683823874069192

noncomputable section

/-- A228706: Expansion of (1 - 3*x + 5*x^2 - 3*x^3 + x^4)/((1-x)^4*(1+x^2)^2).

Offset 0, canonical program `A228706.P10265683823874069192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228706 (n : ℕ) : ℤ :=
  A228706.P10265683823874069192.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228750.P2960156150928213809

`A052970(2*n+3)+A052528(2*n)`
-/

namespace A228750.P2960156150928213809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052970 (2 * n + 3) + A052528 (2 * n)

end

end A228750.P2960156150928213809

noncomputable section

/-- A228750: Number of n X 4 binary arrays with top left element equal to 1 and no two ones adjacent horizontally or antidiagonally.

Offset 1, canonical program `A228750.P2960156150928213809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A228750 (n : ℕ) : ℤ :=
  A228750.P2960156150928213809.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A228750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228840.P12025076151166151305

`3^n*A228569(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A228840.P12025076151166151305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A228569 n

end

end A228840.P12025076151166151305

noncomputable section

/-- A228840: a(n) = 3^n*A228569(n).

Offset 0, canonical program `A228840.P12025076151166151305`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A228569, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228840 (n : ℕ) : ℤ :=
  A228840.P12025076151166151305.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A228569, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228840.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A228874.P11533461817188704702

`6*A247526(n+2)`
-/

namespace A228874.P11533461817188704702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A247526 (n + 2)

end

end A228874.P11533461817188704702

noncomputable section

/-- A228874: a(n) = L(n) * L(n+1) * L(n+2) * L(n+3), the product of four consecutive Lucas numbers, A000032.

Offset 0, canonical program `A228874.P11533461817188704702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A228874 (n : ℕ) : ℤ :=
  A228874.P11533461817188704702.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A228874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228920.P7829172958353520928

`2^(n+1)*A038503(n+1)`
-/

namespace A228920.P7829172958353520928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A038503 (n + 1)

end

end A228920.P7829172958353520928

noncomputable section

/-- A228920: Number of solutions to Sum_{i=1..n} x_i^2 == 0 (mod 4) with x_i in 0..3.

Offset 1, canonical program `A228920.P7829172958353520928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A228920 (n : ℕ) : ℤ :=
  A228920.P7829172958353520928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A228920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228947.P13759492892702121671

`A053158(n+1)-A033885(n+1)`
-/

namespace A228947.P13759492892702121671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (n + 1) - A033885 (n + 1)

end

end A228947.P13759492892702121671

noncomputable section

/-- A228947: a(n) = sigma(n) - phi(n) - n.

Offset 1, canonical program `A228947.P13759492892702121671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228947 (n : ℕ) : ℤ :=
  A228947.P13759492892702121671.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229022.P3469744477585422242

`A075653(n+1)-A010848(n+1)`
-/

namespace A229022.P3469744477585422242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075653 (n + 1) - A010848 (n + 1)

end

end A229022.P3469744477585422242

noncomputable section

/-- A229022: a(n) = sopf(n) + n/rad(n).

Offset 1, canonical program `A229022.P3469744477585422242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229022 (n : ℕ) : ℤ :=
  A229022.P3469744477585422242.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229025.P15258114464244423388

`A028115(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A229025.P15258114464244423388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028115 n + 2 * a (n - 1)

end

end A229025.P15258114464244423388

noncomputable section

/-- A229025: Expansion of 1/((1-2x)(1-4x)(1-5x)(1-7x)(1-8x)).

Offset 0, canonical program `A229025.P15258114464244423388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A229025 (n : ℕ) : ℤ :=
  A229025.P15258114464244423388.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A229025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229063.P1740680241374049437

`floor(A066023(n+1)/sqrt(18))`
-/

namespace A229063.P1740680241374049437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066023 (n + 1) : ℝ) / Real.sqrt (18 : ℝ)⌋

end

end A229063.P1740680241374049437

noncomputable section

/-- A229063: Volume of the Johnson square pyramid (rounded down) with all the edge lengths equal to n.

Offset 1, canonical program `A229063.P1740680241374049437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A229063 (n : ℕ) : ℤ :=
  A229063.P1740680241374049437.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A229063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229081.P3807567821886474592

`record[gcd(n+1, A022847(A022847(n+1)))]`
-/

namespace A229081.P3807567821886474592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A022847 (A022847 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229081.P3807567821886474592

noncomputable section

/-- A229081: Numbers n such that there exists a square m^2 with 3n^2 - n <= m^2 <= 3n^2 + n.

Offset 1, canonical program `A229081.P3807567821886474592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A229081 (n : ℕ) : ℤ :=
  (A229081.P3807567821886474592.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A229081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229136.P2439673927320875070

`2^n*A131885(n+1)`
-/

namespace A229136.P2439673927320875070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A131885 (n + 1)

end

end A229136.P2439673927320875070

noncomputable section

/-- A229136: Number of solutions to Sum_{i=1..n} x_i^2 == 1 (mod 4) with x_i in 0..3.

Offset 1, canonical program `A229136.P2439673927320875070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A229136 (n : ℕ) : ℤ :=
  A229136.P2439673927320875070.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A229136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229274.P5680792210633206878

`3*p?[A047370(3*n+5)]`
-/

namespace A229274.P5680792210633206878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047370 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229274.P5680792210633206878

noncomputable section

/-- A229274: Composite squarefree numbers n such that p+tau(n) divides n-sigma(n), where p are the prime factors of n, tau(n) = A000005(n) and sigma(n) = A000203(n).

Offset 1, canonical program `A229274.P5680792210633206878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. -/
def A229274 (n : ℕ) : ℤ :=
  A229274.P5680792210633206878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. -/
def A229274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229337.P13277258750618214647

`A020696(n+1)-1`
-/

namespace A229337.P13277258750618214647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020696 (n + 1) - 1

end

end A229337.P13277258750618214647

noncomputable section

/-- A229337: Sum of products of elements of nonempty subsets of divisors of n.

Offset 1, canonical program `A229337.P13277258750618214647`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020696, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A229337 (n : ℕ) : ℤ :=
  A229337.P13277258750618214647.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020696, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A229337.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A229339.P17445840520596043980

`gcd(3-A061084(n), ∑[A061084(n)])`
-/

namespace A229339.P17445840520596043980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 - A061084 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229339.P17445840520596043980

noncomputable section

/-- A229339: GCD of all sums of n consecutive Lucas numbers.

Offset 1, canonical program `A229339.P17445840520596043980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A229339 (n : ℕ) : ℤ :=
  (A229339.P17445840520596043980.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A229339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229506.P14398497466748086925

`(A008776(n+2)-A008776(n))*A229587(n+1)`
-/

namespace A229506.P14398497466748086925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008776 (n + 2) - A008776 n) * A229587 (n + 1)

end

end A229506.P14398497466748086925

noncomputable section

/-- A229506: Number of defective 3-colorings of an n X 4 0..2 array connected diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

Offset 1, canonical program `A229506.P14398497466748086925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A229506 (n : ℕ) : ℤ :=
  A229506.P14398497466748086925.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A229506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229572.P8736048714096368551

`abs((1-n-6*n)*A011782(n))`
-/

namespace A229572.P8736048714096368551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (n : ℤ) - (6 * n : ℤ)) * A011782 n|

end

end A229572.P8736048714096368551

noncomputable section

/-- A229572: Number of defective 4-colorings of an n X 2 0..3 array connected horizontally, vertically, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..3 order.

Offset 1, canonical program `A229572.P8736048714096368551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A229572 (n : ℕ) : ℤ :=
  A229572.P8736048714096368551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A229572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229582.P17646191819240093177

`A229587(2*(n+1))`
-/

namespace A229582.P17646191819240093177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229587 (2 * (n + 1))

end

end A229582.P17646191819240093177

noncomputable section

/-- A229582: Number of defective 3-colorings of an n X 4 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

Offset 1, canonical program `A229582.P17646191819240093177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A229582 (n : ℕ) : ℤ :=
  A229582.P17646191819240093177.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A229582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229679.P202136642927744127

`record[A280370(n)]*A000384(n)`
-/

namespace A229679.P202136642927744127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000384 n

end

end A229679.P202136642927744127

noncomputable section

/-- A229679: Number of defective 3-colorings of an n X 2 0..2 array connected diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

Offset 1, canonical program `A229679.P202136642927744127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A229679 (n : ℕ) : ℤ :=
  A229679.P202136642927744127.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A229679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229786.P9575253401389881351

`A000040(n+1)%23`
-/

namespace A229786.P9575253401389881351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 23

end

end A229786.P9575253401389881351

noncomputable section

/-- A229786: a(n) = n-th prime modulo 23.

Offset 1, canonical program `A229786.P9575253401389881351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229786 (n : ℕ) : ℤ :=
  A229786.P9575253401389881351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229787.P9072737370582349556

`A000040(n+1)%24`
-/

namespace A229787.P9072737370582349556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 24

end

end A229787.P9072737370582349556

noncomputable section

/-- A229787: a(n) = n-th prime modulo 24.

Offset 1, canonical program `A229787.P9072737370582349556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229787 (n : ℕ) : ℤ :=
  A229787.P9072737370582349556.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229947.P4592846590888887576

`p?[A230462(n+1)]`
-/

namespace A229947.P4592846590888887576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229947.P4592846590888887576

noncomputable section

/-- A229947: Primes congruent to {1, 11, 13, 17, 19, 29} mod 30.

Offset 1, canonical program `A229947.P4592846590888887576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3842 terms. -/
def A229947 (n : ℕ) : ℤ :=
  A229947.P4592846590888887576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3842 terms. -/
def A229947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230024.P6081935907338950513

`((n+1)^A010873(n+1))%16`
-/

namespace A230024.P6081935907338950513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A010873 (n + 1) : ℤ))) 16

end

end A230024.P6081935907338950513

noncomputable section

/-- A230024: Final nonzero digit of n^n in base 16.

Offset 1, canonical program `A230024.P6081935907338950513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4157 terms. -/
def A230024 (n : ℕ) : ℤ :=
  A230024.P6081935907338950513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4157 terms. -/
def A230024.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A230076.P12907884634970271226

`(A007521(n+1)-1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A230076.P12907884634970271226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007521 (n + 1) - 1 : ℚ) / 4

end

end A230076.P12907884634970271226

noncomputable section

/-- A230076: a(n) = (A007521(n)-1)/4.

Offset 1, canonical program `A230076.P12907884634970271226`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230076 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A230076.P12907884634970271226.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230076.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230113.P115488730651242556

`A211253(A007775(n+1))%9`
-/

namespace A230113.P115488730651242556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211253 (A007775 (n + 1)).toNat) 9

end

end A230113.P115488730651242556

noncomputable section

/-- A230113: Digital root of summed Fibonacci and Lucas digital roots indexed by numbers not divisible by 2, 3 or 5.

Offset 1, canonical program `A230113.P115488730651242556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A230113 (n : ℕ) : ℤ :=
  A230113.P115488730651242556.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A230113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230196.P2469351753429117259

`A011960(n+1)-A178146(n+1)`
-/

namespace A230196.P2469351753429117259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011960 (n + 1) - A178146 (n + 1)

end

end A230196.P2469351753429117259

noncomputable section

/-- A230196: Number of pairs (p,q) such that 2*p + 3*q = n and p != q.

Offset 1, canonical program `A230196.P2469351753429117259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230196 (n : ℕ) : ℤ :=
  A230196.P2469351753429117259.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230198.P16723933166865168125

`A004777(n+1)+char[A004777(n+1)]-(n+1)`
-/

namespace A230198.P16723933166865168125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004777 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004777 (n + 1) + (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (n + 1 : ℤ))

end

end A230198.P16723933166865168125

noncomputable section

/-- A230198: The number of multinomial coefficients over partitions with value equal to 8.

Offset 1, canonical program `A230198.P16723933166865168125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230198 (n : ℕ) : ℤ :=
  A230198.P16723933166865168125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230276.P8189018374968012443

`n²-3*A069905(n+1)`
-/

namespace A230276.P8189018374968012443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 3 * A069905 (n + 1)

end

end A230276.P8189018374968012443

noncomputable section

/-- A230276: Voids left after packing 5-curves coins patterns into fountain of coins with base n.

Offset 1, canonical program `A230276.P8189018374968012443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230276 (n : ℕ) : ℤ :=
  A230276.P8189018374968012443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230301.P11949614508306179088

`A010061(n+1)+1`
-/

namespace A230301.P11949614508306179088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010061 (n + 1) + 1

end

end A230301.P11949614508306179088

noncomputable section

/-- A230301: Positive numbers not of the form m + wt(m-1), m >= 1.

Offset 1, canonical program `A230301.P11949614508306179088`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230301 (n : ℕ) : ℤ :=
  A230301.P11949614508306179088.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230301.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230369.P7741936576236999319

`gcd(1-A099456(n+1), A099456(n))`
-/

namespace A230369.P7741936576236999319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A099456 (n + 1)) (A099456 n)

end

end A230369.P7741936576236999319

noncomputable section

/-- A230369: A strong divisibility sequence associated with the algebraic integer 2 + i.

Offset 1, canonical program `A230369.P7741936576236999319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. -/
def A230369 (n : ℕ) : ℤ :=
  (A230369.P7741936576236999319.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. -/
def A230369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230547.P3099821869513345214

`3/(n+3)*A004321(n+3)`
-/

namespace A230547.P3099821869513345214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 3 : ℚ) * (A004321 (n + 3) : ℚ)

end

end A230547.P3099821869513345214

noncomputable section

/-- A230547: a(n) = 3*binomial(3*n+9, n)/(n+3).

Offset 0, canonical program `A230547.P3099821869513345214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A230547 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A230547.P3099821869513345214.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A230547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230548.P5656994079022896520

`A010762(n+2)+Δ[A004523(A004526(n))]`
-/

namespace A230548.P5656994079022896520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010762 (n + 2) + (f1 (n + 1) - f1 n)

end

end A230548.P5656994079022896520

noncomputable section

/-- A230548: Twin hearts patterns packing into n X n coins.

Offset 2, canonical program `A230548.P5656994079022896520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A230548 (n : ℕ) : ℤ :=
  A230548.P5656994079022896520.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A230548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230577.P4839669968900257948

`eq[5, A069283(n)]`
-/

namespace A230577.P4839669968900257948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230577.P4839669968900257948

noncomputable section

/-- A230577: Positive integers that have exactly 6 odd divisors.

Offset 1, canonical program `A230577.P4839669968900257948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 811 terms. -/
def A230577 (n : ℕ) : ℤ :=
  (A230577.P4839669968900257948.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 811 terms. -/
def A230577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230594.P14479731149764464359

`∑{d}[n+1, A080339(#)*A080339((n+1)/#)]`
-/

namespace A230594.P14479731149764464359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A080339 d * A080339 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A230594.P14479731149764464359

noncomputable section

/-- A230594: Number of ways to write n as n = x*y, where x, y = noncomposite numbers (A008578), 1 <= x <= n, 1 <= y <= n.

Offset 1, canonical program `A230594.P14479731149764464359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230594 (n : ℕ) : ℤ :=
  A230594.P14479731149764464359.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230664.P13451737202012867136

`ceil((A092763(n+1)-n)/(n+1))`
-/

namespace A230664.P13451737202012867136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092763 (n + 1) - (n : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A230664.P13451737202012867136

noncomputable section

/-- A230664: a(n) = floor(3^n/n^2).

Offset 1, canonical program `A230664.P13451737202012867136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A230664 (n : ℕ) : ℤ :=
  A230664.P13451737202012867136.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A230664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230774.P14716185316073664911

`a(n-1)+val(n, A000040(a(n-1))²)` with `a(0)=1`
-/

namespace A230774.P14716185316073664911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation n (A000040 (a (n - 1)) ^ 2).toNat

end

end A230774.P14716185316073664911

noncomputable section

/-- A230774: Number of primes less than first prime above square root of n.

Offset 1, canonical program `A230774.P14716185316073664911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230774 (n : ℕ) : ℤ :=
  (A230774.P14716185316073664911.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230918.P10922405315956518655

`record[gcd(n+1, A002378(A009195(n+1)-1))]`
-/

namespace A230918.P10922405315956518655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A002378 (A009195 (n + 1) - 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230918.P10922405315956518655

noncomputable section

/-- A230918: Numbers k such that phi(k)^phi(k) == gcd(k, phi(k)) (mod k), where phi is the Euler totient function.

Offset 1, canonical program `A230918.P10922405315956518655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3146 terms. -/
def A230918 (n : ℕ) : ℤ :=
  (A230918.P10922405315956518655.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3146 terms. -/
def A230918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231003.P8402459544255823097

`comp[A231000(n)]`
-/

namespace A231003.P8402459544255823097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231000 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231003.P8402459544255823097

noncomputable section

/-- A231003: Number of years after which it is not possible to have a date falling on the same day of the week, in the Julian calendar.

Offset 1, canonical program `A231003.P8402459544255823097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231003 (n : ℕ) : ℤ :=
  (A231003.P8402459544255823097.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231151.P17080161268396402534

`A231149(n+2)+1`
-/

namespace A231151.P17080161268396402534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231149 (n + 2) + 1

end

end A231151.P17080161268396402534

noncomputable section

/-- A231151: Least integer k such that n+1 + ... + n+k > 1 + ... + n.

Offset 2, canonical program `A231151.P17080161268396402534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A231151 (n : ℕ) : ℤ :=
  A231151.P17080161268396402534.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A231151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231190.P13245264947981112389

`A106617(abs(7-n))`
-/

namespace A231190.P13245264947981112389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 |7 - (n : ℤ)|.toNat

end

end A231190.P13245264947981112389

noncomputable section

/-- A231190: Numerator of abs(n-8)/(2*n), n >= 1.

Offset 1, canonical program `A231190.P13245264947981112389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231190 (n : ℕ) : ℤ :=
  A231190.P13245264947981112389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231367.P1796647954828476227

`floor(sqrt(A231366(n)))`
-/

namespace A231367.P1796647954828476227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A231366 n)

end

end A231367.P1796647954828476227

noncomputable section

/-- A231367: a(n) = 1 if A024816(m) = n has a solution for some m, where A024816(m) = sums of non-divisors of m = antisigma(m), otherwise 0.

Offset 0, canonical program `A231367.P1796647954828476227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231367 (n : ℕ) : ℤ :=
  A231367.P1796647954828476227.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231444.P13244204290273250743

`A199142(2*(n+2))`
-/

namespace A231444.P13244204290273250743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199142 (2 * (n + 2))

end

end A231444.P13244204290273250743

noncomputable section

/-- A231444: Number of (n+1) X (1+1) 0..3 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..3 introduced in row major order.

Offset 1, canonical program `A231444.P13244204290273250743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A231444 (n : ℕ) : ℤ :=
  A231444.P13244204290273250743.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A231444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231547.P1957663487271201341

`lt[A039653(A014681(n))+n, A039653(n)]`
-/

namespace A231547.P1957663487271201341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A014681 n).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A231547.P1957663487271201341

noncomputable section

/-- A231547: Numbers n such that n < sigma(n) - sigma(n-1).

Offset 1, canonical program `A231547.P1957663487271201341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1785 terms. -/
def A231547 (n : ℕ) : ℤ :=
  (A231547.P1957663487271201341.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1785 terms. -/
def A231547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232017.P13088024248350548098

`A202882(2*(n+1))`
-/

namespace A232017.P13088024248350548098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202882 (2 * (n + 1))

end

end A232017.P13088024248350548098

noncomputable section

/-- A232017: Number of n X 2 0..2 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

Offset 1, canonical program `A232017.P13088024248350548098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A232017 (n : ℕ) : ℤ :=
  A232017.P13088024248350548098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A232017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232091.P4560155968691293298

`A008238(A027709(n))`
-/

namespace A232091.P4560155968691293298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 (A027709 n).toNat

end

end A232091.P4560155968691293298

noncomputable section

/-- A232091: Smallest square or promic (oblong) number greater than or equal to n.

Offset 0, canonical program `A232091.P4560155968691293298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232091 (n : ℕ) : ℤ :=
  A232091.P4560155968691293298.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232324.P14003359635588126761

`∑[A061579(A061579(n+1))]%A000203(n+1)`
-/

namespace A232324.P14003359635588126761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A061579 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000203 (n + 1))

end

end A232324.P14003359635588126761

noncomputable section

/-- A232324: n(n+1)/2 modulo sigma(n).

Offset 1, canonical program `A232324.P14003359635588126761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9869 terms. -/
def A232324 (n : ℕ) : ℤ :=
  A232324.P14003359635588126761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9869 terms. -/
def A232324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232493.P17536983822345669617

`(A254006(n)+A122007(n+1))*A000079(n)`
-/

namespace A232493.P17536983822345669617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254006 n + A122007 (n + 1)) * A000079 n

end

end A232493.P17536983822345669617

noncomputable section

/-- A232493: If n mod 2 = 0 then 2^n*3^(n-1)+2^(n+1)*3^(n/2-1) otherwise 2^n*3^(n-1)+2^n*3^((n-1)/2).

Offset 0, canonical program `A232493.P17536983822345669617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A232493 (n : ℕ) : ℤ :=
  A232493.P17536983822345669617.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A232493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232590.P5068963047489497062

`abs(Δ[A078042(n)+(n+1)²])`
-/

namespace A232590.P5068963047489497062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078042 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A232590.P5068963047489497062

noncomputable section

/-- A232590: Number of (1+1)X(n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally, with no adjacent elements equal.

Offset 1, canonical program `A232590.P5068963047489497062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A232590 (n : ℕ) : ℤ :=
  A232590.P5068963047489497062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A232590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232622.P7750197207995084292

`(A259592(n)+A101265(n+1))/2`
-/

namespace A232622.P7750197207995084292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259592 n + A101265 (n + 1) : ℚ) / 2

end

end A232622.P7750197207995084292

noncomputable section

/-- A232622: Number of incongruent domino tilings of the 3 X (2n) board.

Offset 0, canonical program `A232622.P7750197207995084292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A232622 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A232622.P7750197207995084292.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A232622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232965.P2069084235875847880

`A000032(A051176(n+1))^A109007(n+1)`
-/

namespace A232965.P2069084235875847880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (A051176 (n + 1)).toNat : ℚ) ^ (A109007 (n + 1) : ℤ)

end

end A232965.P2069084235875847880

noncomputable section

/-- A232965: Number of circular n-bit strings that, when circularly shifted by 3 bits, do not have coincident 1's in any position.

Offset 1, canonical program `A232965.P2069084235875847880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A232965 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A232965.P2069084235875847880.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A232965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233000.P9625870352812873065

`A000211(A109043(n))^gcd(2, n)`
-/

namespace A233000.P9625870352812873065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 (A109043 n).toNat ^ Nat.gcd 2 n

end

end A233000.P9625870352812873065

noncomputable section

/-- A233000: Let L(n) = Fibonacci(n-1)+Fibonacci(n+1) (cf. A000045, A000032); if n is even then a(n) = (L(n)+2)^2 otherwise a(n) = L(2*n)+2.

Offset 0, canonical program `A233000.P9625870352812873065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A233000 (n : ℕ) : ℤ :=
  A233000.P9625870352812873065.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A233000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233036.P569561181648300758

`and(A182531(n+1)+1, A182531(n+1))`
-/

namespace A233036.P569561181648300758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A182531 (n + 1) + 1) (A182531 (n + 1))

end

end A233036.P569561181648300758

noncomputable section

/-- A233036: The maximum number of I-tetrominoes that can be packed into an n X n array of squares when rotation is allowed.

Offset 1, canonical program `A233036.P569561181648300758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233036 (n : ℕ) : ℤ :=
  A233036.P569561181648300758.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233106.P1113010470957198917

`A081186(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A233106.P1113010470957198917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081186 (n - 1) + a (n - 1)

end

end A233106.P1113010470957198917

noncomputable section

/-- A233106: Number of n X 1 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally or vertically, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

Offset 1, canonical program `A233106.P1113010470957198917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A233106 (n : ℕ) : ℤ :=
  A233106.P1113010470957198917.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A233106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233314.P11642887588606614742

`p?[A005843(A191558(n+2))-A191558(n+8)]`
-/

namespace A233314.P11642887588606614742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A191558 (n + 2)).toNat - A191558 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A233314.P11642887588606614742

noncomputable section

/-- A233314: Primes p such that p+6 and p+12 are composite.

Offset 1, canonical program `A233314.P11642887588606614742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 532 terms. -/
def A233314 (n : ℕ) : ℤ :=
  A233314.P11642887588606614742.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 532 terms. -/
def A233314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233388.P9376784371074079915

`4*A091785(n+1)-1`
-/

namespace A233388.P9376784371074079915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A091785 (n + 1) - 1

end

end A233388.P9376784371074079915

noncomputable section

/-- A233388: Odious numbers that are the sum of 2 consecutive odious numbers.

Offset 1, canonical program `A233388.P9376784371074079915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233388 (n : ℕ) : ℤ :=
  A233388.P9376784371074079915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233468.P18238673532543275021

`A010888(A000040(n+2))-A010888(A000040(n+1))`
-/

namespace A233468.P18238673532543275021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A000040 (n + 2)).toNat - A010888 (A000040 (n + 1)).toNat

end

end A233468.P18238673532543275021

noncomputable section

/-- A233468: The digital root of prime(n+1) minus the digital root of prime(n).

Offset 1, canonical program `A233468.P18238673532543275021`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233468 (n : ℕ) : ℤ :=
  A233468.P18238673532543275021.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A233471.P18118599579489131886

`A066607(n+1)%(n+1)²`
-/

namespace A233471.P18118599579489131886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066607 (n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A233471.P18118599579489131886

noncomputable section

/-- A233471: a(n) = 3^n mod n^2.

Offset 1, canonical program `A233471.P18118599579489131886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233471 (n : ℕ) : ℤ :=
  A233471.P18118599579489131886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233592.P7488321416657803819

`eq[1, floor(lcm(2*n, A053186(n))/(n+1))]`
-/

namespace A233592.P7488321416657803819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lcm (2 * n : ℤ) (A053186 n) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A233592.P7488321416657803819

noncomputable section

/-- A233592: Positive integers k such that the continued fraction expansion sqrt(k) = c(1) + c(1)/(c(2) + c(2)/(c(3) + c(3)/...)) is periodic.

Offset 1, canonical program `A233592.P7488321416657803819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A233592 (n : ℕ) : ℤ :=
  (A233592.P7488321416657803819.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A233592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233809.P14943293429112306030

`∑[A000040(n+1)*A087960(n)]`
-/

namespace A233809.P14943293429112306030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A087960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233809.P14943293429112306030

noncomputable section

/-- A233809: a(n) = Sum_{k=1..n} prime(k) * s(k), where s(k) = (-1)^(floor(k/2)).

Offset 1, canonical program `A233809.P14943293429112306030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233809 (n : ℕ) : ℤ :=
  A233809.P14943293429112306030.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234040.P6629158530363296472

`A028303(A042964(n+1))`
-/

namespace A234040.P6629158530363296472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (A042964 (n + 1)).toNat

end

end A234040.P6629158530363296472

noncomputable section

/-- A234040: a(n) = binomial(2*(n+1),n) * gcd(n,2)/(2*(n+1)).

Offset 0, canonical program `A234040.P6629158530363296472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A234040 (n : ℕ) : ℤ :=
  A234040.P6629158530363296472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A234040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234431.P6979625768694921759

`A001969(n+1)+A001969(n+2)`
-/

namespace A234431.P6979625768694921759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1) + A001969 (n + 2)

end

end A234431.P6979625768694921759

noncomputable section

/-- A234431: Numbers that are the sum of 2 successive evil numbers (A001969).

Offset 1, canonical program `A234431.P6979625768694921759`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001969, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A234431 (n : ℕ) : ℤ :=
  A234431.P6979625768694921759.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001969, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A234431.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A234587.P3112918179012221040

`A098181(n-a(A004526(n+1)))` with `a(0)=1, a(1)=1`
-/

namespace A234587.P3112918179012221040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A098181 ((n : ℤ) - a (A004526 (n + 1)).toNat).toNat

end

end A234587.P3112918179012221040

noncomputable section

/-- A234587: Odd-indexed terms of A234586.

Offset 1, canonical program `A234587.P3112918179012221040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A234587 (n : ℕ) : ℤ :=
  A234587.P3112918179012221040.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A234587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234617.P3165534080521675487

`A000295(2*(n+1))+A000337(n+2)+A000295(n)`
-/

namespace A234617.P3165534080521675487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (2 * (n + 1)) + (A000337 (n + 2) + A000295 n)

end

end A234617.P3165534080521675487

noncomputable section

/-- A234617: Numbers of undirected cycles in the 2n-crossed prism graph.

Offset 1, canonical program `A234617.P3165534080521675487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A234617 (n : ℕ) : ℤ :=
  A234617.P3165534080521675487.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A234617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234639.P10335545487523328048

`record[(n+1)*A000203(A000203(A000203(n+1)))%2]`
-/

namespace A234639.P10335545487523328048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A000203 (A000203 (A000203 (n + 1)).toNat).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234639.P10335545487523328048

noncomputable section

/-- A234639: Numbers n for which sigma(sigma(sigma(n))) is odd.

Offset 1, canonical program `A234639.P10335545487523328048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A234639 (n : ℕ) : ℤ :=
  A234639.P10335545487523328048.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A234639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234850.P3773910976127958889

`p?[A014692(n+1)]`
-/

namespace A234850.P3773910976127958889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234850.P3773910976127958889

noncomputable section

/-- A234850: Primes in A014692, i.e., of the form prime(k)-k+1, for some k.

Offset 1, canonical program `A234850.P3773910976127958889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 974 terms. -/
def A234850 (n : ℕ) : ℤ :=
  A234850.P3773910976127958889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 974 terms. -/
def A234850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234851.P8996763833196832844

`lt[(1-∑{e}[A014692(n+1), #])², 1]+1`
-/

namespace A234851.P8996763833196832844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A234851.P8996763833196832844

noncomputable section

/-- A234851: Indices of primes in A014692, i.e., numbers k such that prime(k)-k+1 is prime.

Offset 1, canonical program `A234851.P8996763833196832844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 974 terms. -/
def A234851 (n : ℕ) : ℤ :=
  (A234851.P8996763833196832844.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 974 terms. -/
def A234851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234875.P10616451242970156290

`xor(2*(a(n-1)+n%2)-1, A153643(n+2))` with `a(0)=32`
-/

namespace A234875.P10616451242970156290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [32] fun n a =>
  Int.xor (2 * (a (n - 1) + ((n % 2 : ℕ) : ℤ)) - 1) (A153643 (n + 2))

end

end A234875.P10616451242970156290

noncomputable section

/-- A234875: Number of (n+1) X (1+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

Offset 1, canonical program `A234875.P10616451242970156290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A234875 (n : ℕ) : ℤ :=
  A234875.P10616451242970156290.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A234875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234914.P9419333935807630534

`4*(A061534(n+2)+1)`
-/

namespace A234914.P9419333935807630534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A061534 (n + 2) + 1)

end

end A234914.P9419333935807630534

noncomputable section

/-- A234914: Number of (n+1) X (1+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

Offset 1, canonical program `A234914.P9419333935807630534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A234914 (n : ℕ) : ℤ :=
  A234914.P9419333935807630534.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A234914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234959.P12234400082203346417

`6^A122841(n+1)`
-/

namespace A234959.P12234400082203346417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A122841 (n + 1) : ℤ)

end

end A234959.P12234400082203346417

noncomputable section

/-- A234959: Highest power of 6 dividing n.

Offset 1, canonical program `A234959.P12234400082203346417`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122841, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A234959 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A234959.P12234400082203346417.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122841, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A234959.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A235226.P5349840113162180698

`∩[A227793(n+1), A017233(n)]`
-/

namespace A235226.P5349840113162180698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235226.P5349840113162180698

noncomputable section

/-- A235226: Numbers whose sum of digits is 15.

Offset 1, canonical program `A235226.P5349840113162180698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2375 terms. -/
def A235226 (n : ℕ) : ℤ :=
  (A235226.P5349840113162180698.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2375 terms. -/
def A235226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235229.P14870552725123267920

`∩[A227793(n+1), A017185(n)]`
-/

namespace A235229.P14870552725123267920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235229.P14870552725123267920

noncomputable section

/-- A235229: Numbers whose sum of digits is 20.

Offset 1, canonical program `A235229.P14870552725123267920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3256 terms. -/
def A235229 (n : ℕ) : ℤ :=
  (A235229.P14870552725123267920.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3256 terms. -/
def A235229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235282.P12075057285622094097

`4*(A038754(n+2)+A029744(2*(n+1)))`
-/

namespace A235282.P12075057285622094097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A038754 (n + 2) + A029744 (2 * (n + 1)))

end

end A235282.P12075057285622094097

noncomputable section

/-- A235282: Number of (n+1) X (1+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

Offset 1, canonical program `A235282.P12075057285622094097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A235282 (n : ℕ) : ℤ :=
  A235282.P12075057285622094097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A235282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235337.P13547820392319958820

`A001844(A049472(n+1))`
-/

namespace A235337.P13547820392319958820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (A049472 (n + 1)).toNat

end

end A235337.P13547820392319958820

noncomputable section

/-- A235337: Number of integer lattice points inside the square ABCD with side length n>0 with A(-n*sqrt(2)/2| 0), B(n*sqrt(2)/2| 0), C(0| n*sqrt(2)/2) and D(-n*sqrt(2)/2| 0).

Offset 1, canonical program `A235337.P13547820392319958820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A235337 (n : ℕ) : ℤ :=
  A235337.P13547820392319958820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A235337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235467.P16967607584721991000

`p?[A023717(A000040(n+1))]`
-/

namespace A235467.P16967607584721991000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235467.P16967607584721991000

noncomputable section

/-- A235467: Primes whose base-4 representation also is the base-3 representation of a prime.

Offset 1, canonical program `A235467.P16967607584721991000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A235467 (n : ℕ) : ℤ :=
  A235467.P16967607584721991000.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A235467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235468.P5946997078443756873

`p?[A037453(A000040(n+1))]`
-/

namespace A235468.P5946997078443756873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235468.P5946997078443756873

noncomputable section

/-- A235468: Primes whose base-5 representation also is the base-3 representation of a prime.

Offset 1, canonical program `A235468.P5946997078443756873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A235468 (n : ℕ) : ℤ :=
  A235468.P5946997078443756873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A235468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235878.P2398778198100713250

`A245023(n+2)+A081808(n+3)`
-/

namespace A235878.P2398778198100713250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245023 (n + 2) + A081808 (n + 3)

end

end A235878.P2398778198100713250

noncomputable section

/-- A235878: Number of (n+1) X (2+1) 0..2 arrays with the minimum plus the upper median equal to the lower median plus the maximum in every 2 X 2 subblock.

Offset 1, canonical program `A235878.P2398778198100713250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A235878 (n : ℕ) : ℤ :=
  A235878.P2398778198100713250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A235878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235887.P16124909060824276538

`A159741(n+1)*A168614(n)+64`
-/

namespace A235887.P16124909060824276538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159741 (n + 1) * A168614 n + 64

end

end A235887.P16124909060824276538

noncomputable section

/-- A235887: Number of (n+1) X (2+1) 0..3 arrays with the minimum plus the upper median equal to the lower median plus the maximum in every 2 X 2 subblock.

Offset 1, canonical program `A235887.P16124909060824276538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A235887 (n : ℕ) : ℤ :=
  A235887.P16124909060824276538.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A235887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235895.P2333483615985084343

`A007483(n+2)+A000079(n+2)²`
-/

namespace A235895.P2333483615985084343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007483 (n + 2) + A000079 (n + 2) ^ 2

end

end A235895.P2333483615985084343

noncomputable section

/-- A235895: Number of (n+1) X (1+1) 0..2 arrays with the minimum plus the maximum equal to the lower median plus the upper median in every 2 X 2 subblock.

Offset 1, canonical program `A235895.P2333483615985084343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A235895 (n : ℕ) : ℤ :=
  A235895.P2333483615985084343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A235895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235944.P3001479549671488632

`dr(A030133(n)²)`
-/

namespace A235944.P3001479549671488632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030133 n ^ 2)

end

end A235944.P3001479549671488632

noncomputable section

/-- A235944: Digital roots of squares of Lucas numbers.

Offset 0, canonical program `A235944.P3001479549671488632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235944 (n : ℕ) : ℤ :=
  (A235944.P3001479549671488632.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236185.P4307672231705502787

`Δ[A070884(n)]`
-/

namespace A236185.P4307672231705502787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236185.P4307672231705502787

noncomputable section

/-- A236185: Differences between terms of compacting Eratosthenes sieve for prime(4) = 7.

Offset 1, canonical program `A236185.P4307672231705502787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A236185 (n : ℕ) : ℤ :=
  A236185.P4307672231705502787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A236185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236191.P6410617248716895503

`A000045(n)*A033999(A004482(n))`
-/

namespace A236191.P6410617248716895503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A033999 (A004482 n).toNat

end

end A236191.P6410617248716895503

noncomputable section

/-- A236191: a(n) = (-1)^floor( (n-1) / 3 ) * F(n), where F = Fibonacci.

Offset 0, canonical program `A236191.P6410617248716895503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A236191 (n : ℕ) : ℤ :=
  A236191.P6410617248716895503.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A236191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236194.P10384179772190661145

`A048016(3*n+4)+1`
-/

namespace A236194.P10384179772190661145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048016 (3 * n + 4) + 1

end

end A236194.P10384179772190661145

noncomputable section

/-- A236194: a(n) = binomial(3n+1, n-1).

Offset 1, canonical program `A236194.P10384179772190661145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A236194 (n : ℕ) : ℤ :=
  A236194.P10384179772190661145.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A236194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236291.P10993209874262571537

`A011782(n)+C(n, A347558(n+2))`
-/

namespace A236291.P10993209874262571537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (Nat.choose n (A347558 (n + 2)).toNat : ℤ)

end

end A236291.P10993209874262571537

noncomputable section

/-- A236291: Number of length n binary words that contain an even number of 0's or exactly two 1's.

Offset 0, canonical program `A236291.P10993209874262571537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A236291 (n : ℕ) : ℤ :=
  A236291.P10993209874262571537.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A236291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236332.P12068679823046649745

`A056107(n)+a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A236332.P12068679823046649745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  A056107 n + a (n - 2)

end

end A236332.P12068679823046649745

noncomputable section

/-- A236332: The number of orbits of 4-tuples of the dihedral group of order 2n acting on {1,2,...,n}.

Offset 1, canonical program `A236332.P12068679823046649745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236332 (n : ℕ) : ℤ :=
  A236332.P12068679823046649745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236370.P9565244450043832367

`∑[A026381(n+2)]+n*(n+1)²`
-/

namespace A236370.P9565244450043832367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026381 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n * (n + 1) ^ 2 : ℤ)

end

end A236370.P9565244450043832367

noncomputable section

/-- A236370: Sum of the largest parts in the partitions of 3n into 3 parts.

Offset 1, canonical program `A236370.P9565244450043832367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236370 (n : ℕ) : ℤ :=
  A236370.P9565244450043832367.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236387.P11788203029548530517

`eq[1, A196199(A039653(n)+2)]`
-/

namespace A236387.P11788203029548530517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (A039653 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236387.P11788203029548530517

noncomputable section

/-- A236387: Numbers n such that sigma(n) is an oblong number.

Offset 1, canonical program `A236387.P11788203029548530517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A236387 (n : ℕ) : ℤ :=
  (A236387.P11788203029548530517.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A236387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236758.P18436612115019287046

`∑[A230980(n)+A082460(n+1)]`
-/

namespace A236758.P18436612115019287046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n + A082460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236758.P18436612115019287046

noncomputable section

/-- A236758: Number of partitions of 3*n into 3 parts with smallest part prime.

Offset 1, canonical program `A236758.P18436612115019287046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236758 (n : ℕ) : ℤ :=
  A236758.P18436612115019287046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236773.P6835659052425793981

`A272915(n)+A051925(n)`
-/

namespace A236773.P6835659052425793981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272915 n + A051925 n

end

end A236773.P6835659052425793981

noncomputable section

/-- A236773: a(n) = n + floor( n^2/2 + n^3/3 ).

Offset 0, canonical program `A236773.P6835659052425793981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236773 (n : ℕ) : ℤ :=
  A236773.P6835659052425793981.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236856.P12242245037929288109

`A173185(n)-1`
-/

namespace A236856.P12242245037929288109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n - 1

end

end A236856.P12242245037929288109

noncomputable section

/-- A236856: Partial sums of A003418 starting summing from A003418(1), with a(0) = 0.

Offset 0, canonical program `A236856.P12242245037929288109`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173185, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236856 (n : ℕ) : ℤ :=
  A236856.P12242245037929288109.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173185, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236856.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A236866.P17788189984368847866

`eq[1, ∑{e}[A007775(n+2), #]]+2`
-/

namespace A236866.P17788189984368847866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A236866.P17788189984368847866

noncomputable section

/-- A236866: Positions of primes in A007775 (numbers not divisible by 2, 3 or 5).

Offset 1, canonical program `A236866.P17788189984368847866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3965 terms. -/
def A236866 (n : ℕ) : ℤ :=
  (A236866.P17788189984368847866.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3965 terms. -/
def A236866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236916.P14910980737374846545

`ceil((A046978(n)+n)/2)`
-/

namespace A236916.P14910980737374846545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046978 n + (n : ℤ) : ℚ) / 2⌉

end

end A236916.P14910980737374846545

noncomputable section

/-- A236916: The first "octad" is 0, 1, 2, 2, 2, 2, 3, 3; thereafter add 4 to get the next octad.

Offset 0, canonical program `A236916.P14910980737374846545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236916 (n : ℕ) : ℤ :=
  A236916.P14910980737374846545.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236967.P12101104675129617930

`3^n*A008574(n)`
-/

namespace A236967.P12101104675129617930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A008574 n

end

end A236967.P12101104675129617930

noncomputable section

/-- A236967: Expansion of (1+3*x)^2/(1-3*x)^2.

Offset 0, canonical program `A236967.P12101104675129617930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. -/
def A236967 (n : ℕ) : ℤ :=
  A236967.P12101104675129617930.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. -/
def A236967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237450.P8932681088444985649

`a(n-1)+A003056(n-1)!` with `a(0)=1`
-/

namespace A237450.P8932681088444985649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.factorial (A003056 (n - 1)).toNat

end

end A237450.P8932681088444985649

noncomputable section

/-- A237450: Triangle read by rows, T(n,k) = !n + (k-1)*(n-1)!, with n>=1, 1<=k<=n; Position of the first n-letter permutation beginning with number k in the list of lexicographically sorted permutations A030299.

Offset 1, canonical program `A237450.P8932681088444985649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1035 terms. -/
def A237450 (n : ℕ) : ℤ :=
  (A237450.P8932681088444985649.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1035 terms. -/
def A237450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237514.P3967440001977244503

`A020914(comp[floor((n+1)/(log2(3)-1))])`
-/

namespace A237514.P3967440001977244503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (Real.logb 2 (3 : ℝ) - 1)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A237514.P3967440001977244503

noncomputable section

/-- A237514: Numbers k such that 2^(k-1) < 3^(m-1) < 2^k < 3^m < 2^(k+1), for some m > 2, a(1) = 1.

Offset 1, canonical program `A237514.P3967440001977244503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8302 terms. -/
def A237514 (n : ℕ) : ℤ :=
  A237514.P3967440001977244503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8302 terms. -/
def A237514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237588.P7919289499905681947

`1+A033880(n+1)`
-/

namespace A237588.P7919289499905681947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A033880 (n + 1)

end

end A237588.P7919289499905681947

noncomputable section

/-- A237588: a(n) = sigma(n) - 2n + 1.

Offset 1, canonical program `A237588.P7919289499905681947`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033880, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A237588 (n : ℕ) : ℤ :=
  A237588.P7919289499905681947.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033880, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A237588.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A237670.P18018902008574357370

`∑{d}[n+1, A000108(#)]`
-/

namespace A237670.P18018902008574357370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000108 d

end

end A237670.P18018902008574357370

noncomputable section

/-- A237670: Inverse Moebius transform of Catalan numbers.

Offset 1, canonical program `A237670.P18018902008574357370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A237670 (n : ℕ) : ℤ :=
  A237670.P18018902008574357370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A237670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238005.P18247132531721363031

`A003056(n+1)-(A069283(n+1)+1)`
-/

namespace A238005.P18247132531721363031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1) - (A069283 (n + 1) + 1)

end

end A238005.P18247132531721363031

noncomputable section

/-- A238005: Number of partitions of n into distinct parts such that (greatest part) - (least part) = (number of parts).

Offset 1, canonical program `A238005.P18247132531721363031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238005 (n : ℕ) : ℤ :=
  A238005.P18247132531721363031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238187.P12208281190577049950

`A133209(n)+A077860(n)`
-/

namespace A238187.P12208281190577049950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133209 n + A077860 n

end

end A238187.P12208281190577049950

noncomputable section

/-- A238187: Gaussian norm of 1+(1+i)^n.

Offset 0, canonical program `A238187.P12208281190577049950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A238187 (n : ℕ) : ℤ :=
  A238187.P12208281190577049950.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A238187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238454.P15360698902153665303

`A056008(Δ[n²])`
-/

namespace A238454.P15360698902153665303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056008 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A238454.P15360698902153665303

noncomputable section

/-- A238454: Difference between 2^(2*n-1) and the next larger square.

Offset 1, canonical program `A238454.P15360698902153665303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A238454 (n : ℕ) : ℤ :=
  A238454.P15360698902153665303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A238454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238468.P4933202717561499868

`∑[-A234044(abs(4-n))]`
-/

namespace A238468.P4933202717561499868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A234044 |4 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238468.P4933202717561499868

noncomputable section

/-- A238468: Period 7: repeat [0, 0, -1, 1, -1, 1, 0].

Offset 0, canonical program `A238468.P4933202717561499868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238468 (n : ℕ) : ℤ :=
  A238468.P4933202717561499868.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238471.P7680531597729402233

`A234042(5*n+2)`
-/

namespace A238471.P7680531597729402233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234042 (5 * n + 2)

end

end A238471.P7680531597729402233

noncomputable section

/-- A238471: a(n) = binomial(5n+6, 4)/5 for n >= 0.

Offset 0, canonical program `A238471.P7680531597729402233`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A234042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A238471 (n : ℕ) : ℤ :=
  A238471.P7680531597729402233.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A234042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A238471.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A238472.P11742707975439042983

`A234042(5*n+3)`
-/

namespace A238472.P11742707975439042983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234042 (5 * n + 3)

end

end A238472.P11742707975439042983

noncomputable section

/-- A238472: a(n) = binomial(5*n+7, 4)/5 for n >= 0.

Offset 0, canonical program `A238472.P11742707975439042983`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A234042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A238472 (n : ℕ) : ℤ :=
  A238472.P11742707975439042983.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A234042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A238472.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A238525.P9528007354923680125

`(n+2)%A001414(n+2)`
-/

namespace A238525.P9528007354923680125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A001414 (n + 2))

end

end A238525.P9528007354923680125

noncomputable section

/-- A238525: n modulo sopfr(n), where sopfr(n) is the sum of the prime factors of n, with multiplicity.

Offset 2, canonical program `A238525.P9528007354923680125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238525 (n : ℕ) : ℤ :=
  A238525.P9528007354923680125.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238527.P10086126541978314139

`p?[(n+2)%A001414(n+2)]`
-/

namespace A238527.P10086126541978314139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A001414 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238527.P10086126541978314139

noncomputable section

/-- A238527: Prime values of A238525.

Offset 1, canonical program `A238527.P10086126541978314139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238527 (n : ℕ) : ℤ :=
  A238527.P10086126541978314139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238706.P10107481637763201362

`A238702(n+1)-ceil((n+1)*(4*n+2)/3)`
-/

namespace A238706.P10107481637763201362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238702 (n + 1) - ⌈((n + 1) * (4 * n + 2) : ℚ) / 3⌉

end

end A238706.P10107481637763201362

noncomputable section

/-- A238706: Sum of the smallest parts of the partitions of 4n into 4 parts with smallest part greater than 1.

Offset 1, canonical program `A238706.P10107481637763201362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238706 (n : ℕ) : ℤ :=
  A238706.P10107481637763201362.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238777.P14366859163161172993

`floor(A015531(n+1)/3^n)`
-/

namespace A238777.P14366859163161172993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A015531 (n + 1) : ℚ) / (3 ^ n : ℚ)⌋

end

end A238777.P14366859163161172993

noncomputable section

/-- A238777: a(n) = floor((5^n+1)/(2*3^n)).

Offset 1, canonical program `A238777.P14366859163161172993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A238777 (n : ℕ) : ℤ :=
  A238777.P14366859163161172993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A238777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238845.P1323273595676224108

`abs(val(n+1, 2)+1-A070939(n))`
-/

namespace A238845.P1323273595676224108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) - A070939 n|

end

end A238845.P1323273595676224108

noncomputable section

/-- A238845: Prefix overlap between binary expansions of n and n+1.

Offset 0, canonical program `A238845.P1323273595676224108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238845 (n : ℕ) : ℤ :=
  A238845.P1323273595676224108.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239057.P3481581294101736723

`A239056(n+1)-A238705(n+1)`
-/

namespace A239057.P3481581294101736723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239056 (n + 1) - A238705 (n + 1)

end

end A239057.P3481581294101736723

noncomputable section

/-- A239057: Sum of the parts in the partitions of 4n into 4 parts with smallest part equal to 1 minus the number of these partitions.

Offset 1, canonical program `A239057.P3481581294101736723`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A239056, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239057 (n : ℕ) : ℤ :=
  A239057.P3481581294101736723.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A239056, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239057.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239122.P1802817852681079658

`∑[A061019(n+1)]`
-/

namespace A239122.P1802817852681079658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239122.P1802817852681079658

noncomputable section

/-- A239122: Partial sums of A061019.

Offset 1, canonical program `A239122.P1802817852681079658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239122 (n : ℕ) : ℤ :=
  A239122.P1802817852681079658.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239195.P10978294607467254277

`∑[A004773(n+1)*(A004773(n)+1)]`
-/

namespace A239195.P10978294607467254277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (n + 1) * (A004773 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239195.P10978294607467254277

noncomputable section

/-- A239195: Sum of the next to smallest parts in the partitions of 4n into 4 parts with smallest part = 1.

Offset 1, canonical program `A239195.P10978294607467254277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239195 (n : ℕ) : ℤ :=
  A239195.P10978294607467254277.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239288.P17022959094659211950

`A253062(n+2)-1`
-/

namespace A239288.P17022959094659211950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253062 (n + 2) - 1

end

end A239288.P17022959094659211950

noncomputable section

/-- A239288: Maximal sum of x0 + x0*x1 + ... + x0*x1*...*xk over all compositions x0 + ... + xk = n.

Offset 0, canonical program `A239288.P17022959094659211950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 628 terms. -/
def A239288 (n : ℕ) : ℤ :=
  A239288.P17022959094659211950.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 628 terms. -/
def A239288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239438.P9771006155411572266

`A008750(n)+A107750(n)-A274616(n)`
-/

namespace A239438.P9771006155411572266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008750 n + (A107750 n - A274616 n)

end

end A239438.P9771006155411572266

noncomputable section

/-- A239438: Maximal number of points that can be placed on a triangular grid of side n so that there is no pair of adjacent points.

Offset 1, canonical program `A239438.P9771006155411572266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239438 (n : ℕ) : ℤ :=
  A239438.P9771006155411572266.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239464.P9482972523603461155

`A053061(n+1)-n*(n+2)`
-/

namespace A239464.P9482972523603461155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053061 (n + 1) - (n * (n + 2) : ℤ)

end

end A239464.P9482972523603461155

noncomputable section

/-- A239464: A239461(n) / n^2.

Offset 1, canonical program `A239464.P9482972523603461155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239464 (n : ℕ) : ℤ :=
  A239464.P9482972523603461155.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239532.P15803227667658989209

`6*A239530(n+1)²`
-/

namespace A239532.P15803227667658989209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A239530 (n + 1) ^ 2

end

end A239532.P15803227667658989209

noncomputable section

/-- A239532: Number of (n+1) X (3+1) 0..2 arrays with no element equal to all horizontal neighbors or unequal to all vertical neighbors, and new values 0..2 introduced in row major order.

Offset 1, canonical program `A239532.P15803227667658989209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A239532 (n : ℕ) : ℤ :=
  A239532.P15803227667658989209.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A239532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239700.P18371025009612969375

`gcd(A004273(n²), A013984(n))`
-/

namespace A239700.P18371025009612969375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004273 (n ^ 2)) (A013984 n)

end

end A239700.P18371025009612969375

noncomputable section

/-- A239700: Given: 1. alphabet of 3 elements {x1,x2,x3}; 2. vector V of size L(V) = 10; Let w(x1) = number of failed trials before the last event x1. For all the possible configurations {w(x1),w(x2),w(x3)} admitted in vectors of L(V)=10, the sequence gives the number of vectors having the same configuration {w(x1),w(x2),w(x3)}.

Offset 1, canonical program `A239700.P18371025009612969375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A239700 (n : ℕ) : ℤ :=
  (A239700.P18371025009612969375.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A239700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239876.P14147958566961035666

`∑[A229110(n+1)]`
-/

namespace A239876.P14147958566961035666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239876.P14147958566961035666

noncomputable section

/-- A239876: Partial sums of A229110, where A229110(n) = antisigma(n) mod n = A024816(n) mod n.

Offset 1, canonical program `A239876.P14147958566961035666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239876 (n : ℕ) : ℤ :=
  A239876.P14147958566961035666.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239913.P4380444898094988284

`1-A005185(n+1)+n`
-/

namespace A239913.P4380444898094988284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005185 (n + 1) + (n : ℤ)

end

end A239913.P4380444898094988284

noncomputable section

/-- A239913: a(n) = n - Q(n), where Q(n) is Hofstadter's Q-sequence A005185.

Offset 1, canonical program `A239913.P4380444898094988284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239913 (n : ℕ) : ℤ :=
  A239913.P4380444898094988284.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239935.P844760797483781974

`lt[Δ[A004166(n)], 0]`
-/

namespace A239935.P844760797483781974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004166 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A239935.P844760797483781974

noncomputable section

/-- A239935: Numbers k such that DigitSum(3^k) > DigitSum(3^(k+1)).

Offset 1, canonical program `A239935.P844760797483781974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4840 terms. -/
def A239935 (n : ℕ) : ℤ :=
  (A239935.P844760797483781974.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4840 terms. -/
def A239935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240022.P9851182340327463633

`(n+1)*A070252(n+1)`
-/

namespace A240022.P9851182340327463633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A070252 (n + 1)

end

end A240022.P9851182340327463633

noncomputable section

/-- A240022: Total number of digits in palindromes with n digits.

Offset 1, canonical program `A240022.P9851182340327463633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 194 terms. -/
def A240022 (n : ℕ) : ℤ :=
  A240022.P9851182340327463633.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 194 terms. -/
def A240022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240025.P6086676864116806394

`A000007(A055087(n))`
-/

namespace A240025.P6086676864116806394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A055087 n).toNat

end

end A240025.P6086676864116806394

noncomputable section

/-- A240025: Characteristic function of quarter squares, cf. A002620.

Offset 0, canonical program `A240025.P6086676864116806394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240025 (n : ℕ) : ℤ :=
  A240025.P6086676864116806394.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240115.P16130959247340848464

`ceil(A229593(n+5)/4)`
-/

namespace A240115.P16130959247340848464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A229593 (n + 5) : ℚ) / 4⌉

end

end A240115.P16130959247340848464

noncomputable section

/-- A240115: Schoenheim lower bound L(n,4,2).

Offset 4, canonical program `A240115.P16130959247340848464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A240115 (n : ℕ) : ℤ :=
  A240115.P16130959247340848464.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A240115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240351.P973440033418318766

`A056594(lcm(16, n)/16)`
-/

namespace A240351.P973440033418318766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (SequenceMachineLib.roundAway ((Nat.lcm 16 n : ℚ) / 16)).toNat

end

end A240351.P973440033418318766

noncomputable section

/-- A240351: Inverse of 64th cyclotomic polynomial.

Offset 0, canonical program `A240351.P973440033418318766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240351 (n : ℕ) : ℤ :=
  A240351.P973440033418318766.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240437.P2912258154257467061

`A056451(2*(n+1))-∏[6-a(n-1)]` with `a(0)=5`
-/

namespace A240437.P2912258154257467061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056451 (2 * (n + 1)) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A240437.P2912258154257467061

noncomputable section

/-- A240437: Number of non-palindromic n-tuples of 5 distinct elements.

Offset 1, canonical program `A240437.P2912258154257467061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A240437 (n : ℕ) : ℤ :=
  A240437.P2912258154257467061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A240437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240597.P7116661834484253592

`eq[1, dr(A000203(n+1)-n)]+1`
-/

namespace A240597.P7116661834484253592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000203 (n + 1) - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A240597.P7116661834484253592

noncomputable section

/-- A240597: Numbers k such that sigma(k) == k (mod 9).

Offset 1, canonical program `A240597.P7116661834484253592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4952 terms. -/
def A240597 (n : ℕ) : ℤ :=
  (A240597.P7116661834484253592.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4952 terms. -/
def A240597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241205.P15385239283493477032

`∑[∑[C(A002522(n), 3)/10]]`
-/

namespace A241205.P15385239283493477032
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A002522 n).toNat 3 : ℚ) / 10

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241205.P15385239283493477032

noncomputable section

/-- A241205: Sum of x*y^2*z^3 for positive integers x,y,z with x + y + z = n.

Offset 1, canonical program `A241205.P15385239283493477032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241205 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A241205.P15385239283493477032.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241264.P6428799366880575153

`lt[∑{p}[A155769(n), #], A002620(n)]`
-/

namespace A241264.P6428799366880575153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155769 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A241264.P6428799366880575153

noncomputable section

/-- A241264: Numbers k such that 2*k^2 + 2*k - 41 is not a prime.

Offset 1, canonical program `A241264.P6428799366880575153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A241264 (n : ℕ) : ℤ :=
  (A241264.P6428799366880575153.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A241264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241620.P14664840407874116712

`A114239(n+1)+∑[A006542(n+4)]`
-/

namespace A241620.P14664840407874116712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006542 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114239 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241620.P14664840407874116712

noncomputable section

/-- A241620: Number of length 5+2 0..n arrays with no consecutive three elements summing to more than n.

Offset 1, canonical program `A241620.P14664840407874116712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241620 (n : ℕ) : ℤ :=
  A241620.P14664840407874116712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241683.P1819739658731117607

`A001045(floor(n²/(n+1)))*A167030(n)`
-/

namespace A241683.P1819739658731117607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat * A167030 n

end

end A241683.P1819739658731117607

noncomputable section

/-- A241683: Total number of 2 X 2 squares appearing in the Thue-Morse sequence logical matrices after n stages.

Offset 0, canonical program `A241683.P1819739658731117607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A241683 (n : ℕ) : ℤ :=
  A241683.P1819739658731117607.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A241683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241684.P6345737068075447725

`4*round((A005578(n+1)/4)²)`
-/

namespace A241684.P6345737068075447725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.roundAway (((A005578 (n + 1) : ℚ) / 4) ^ 2)

end

end A241684.P6345737068075447725

noncomputable section

/-- A241684: The total number of rectangles appearing in the Thue-Morse sequence logical matrices after n stages.

Offset 0, canonical program `A241684.P6345737068075447725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A241684 (n : ℕ) : ℤ :=
  A241684.P6345737068075447725.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A241684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241688.P16119182718281067787

`∑[2*A213494(n)]`
-/

namespace A241688.P16119182718281067787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241688.P16119182718281067787

noncomputable section

/-- A241688: Number of Sidon subsets of {1,...,n} of size 4.

Offset 1, canonical program `A241688.P16119182718281067787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241688 (n : ℕ) : ℤ :=
  A241688.P16119182718281067787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241759.P1551437819905614216

`1-A189820(A074940(n+1))`
-/

namespace A241759.P1551437819905614216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A189820 (A074940 (n + 1)).toNat

end

end A241759.P1551437819905614216

noncomputable section

/-- A241759: Number of partitions of n into distinct parts of the form 3^k - 2^k, cf. A001047.

Offset 0, canonical program `A241759.P1551437819905614216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241759 (n : ℕ) : ℤ :=
  A241759.P1551437819905614216.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241892.P12101613970399667759

`A005578(n)+A084152(n)-A011782(n)`
-/

namespace A241892.P12101613970399667759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n + (A084152 n - A011782 n)

end

end A241892.P12101613970399667759

noncomputable section

/-- A241892: Total number of 2 X 2 squares appearing in the Thue-Morse sequence logical matrices (1, 0 version) after n stages.

Offset 0, canonical program `A241892.P12101613970399667759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A241892 (n : ℕ) : ℤ :=
  A241892.P12101613970399667759.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A241892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241893.P363522728590733482

`4*floor((A005578(n+1)/4)²)`
-/

namespace A241893.P363522728590733482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌊((A005578 (n + 1) : ℚ) / 4) ^ 2⌋

end

end A241893.P363522728590733482

noncomputable section

/-- A241893: The total number of rectangles appearing in the Thue-Morse sequence logical matrices (1, 0 version) after n stages.

Offset 0, canonical program `A241893.P363522728590733482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A241893 (n : ℕ) : ℤ :=
  A241893.P363522728590733482.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A241893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241937.P14061841482093411935

`A108674(n+1)+A051877(n)`
-/

namespace A241937.P14061841482093411935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108674 (n + 1) + A051877 n

end

end A241937.P14061841482093411935

noncomputable section

/-- A241937: Number of length 1+4 0..n arrays with no consecutive five elements summing to more than 2*n.

Offset 1, canonical program `A241937.P14061841482093411935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241937 (n : ℕ) : ℤ :=
  A241937.P14061841482093411935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242083.P11427903032979900103

`abs(A083321(A000040(n+1)))`
-/

namespace A242083.P11427903032979900103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083321 (A000040 (n + 1)).toNat|

end

end A242083.P11427903032979900103

noncomputable section

/-- A242083: a(n) = 3^p - 2^p - 1, where p is prime(n).

Offset 1, canonical program `A242083.P11427903032979900103`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A242083 (n : ℕ) : ℤ :=
  A242083.P11427903032979900103.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A242083.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A242094.P3645573167155968656

`comp[A004957(comp[A003233(n+1)])]`
-/

namespace A242094.P3645573167155968656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003233 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A242094.P3645573167155968656

noncomputable section

/-- A242094: Complement of A003249.

Offset 1, canonical program `A242094.P3645573167155968656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242094 (n : ℕ) : ℤ :=
  (A242094.P3645573167155968656.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242096.P10773511550970548791

`A230980(A057979(n))`
-/

namespace A242096.P10773511550970548791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A057979 n).toNat

end

end A242096.P10773511550970548791

noncomputable section

/-- A242096: a(n) = (n mod 2) * pi( ceiling(n/2)-1 ), where pi is the prime counting function (A000720).

Offset 0, canonical program `A242096.P10773511550970548791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242096 (n : ℕ) : ℤ :=
  A242096.P10773511550970548791.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242098.P10308857904202637910

`eq[1, A105700((n+1)%floor(sqrt(n+1)))]+1`
-/

namespace A242098.P10308857904202637910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 ((n + 1) % Nat.sqrt (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242098.P10308857904202637910

noncomputable section

/-- A242098: Numbers n such that the residue of n modulo floor(sqrt(n)) is prime.

Offset 1, canonical program `A242098.P10308857904202637910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242098 (n : ℕ) : ℤ :=
  (A242098.P10308857904202637910.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242119.P14714208386071255234

`A000040(n+1)%18`
-/

namespace A242119.P14714208386071255234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 18

end

end A242119.P14714208386071255234

noncomputable section

/-- A242119: Primes modulo 18.

Offset 1, canonical program `A242119.P14714208386071255234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242119 (n : ℕ) : ℤ :=
  A242119.P14714208386071255234.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242121.P4021894191771558325

`A000040(n+1)%21`
-/

namespace A242121.P4021894191771558325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 21

end

end A242121.P4021894191771558325

noncomputable section

/-- A242121: a(n) = n-th prime modulo 21.

Offset 1, canonical program `A242121.P4021894191771558325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242121 (n : ℕ) : ℤ :=
  A242121.P4021894191771558325.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242122.P16237057767984609906

`A000040(n+1)%22`
-/

namespace A242122.P16237057767984609906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 22

end

end A242122.P16237057767984609906

noncomputable section

/-- A242122: a(n) = n-th prime modulo 22.

Offset 1, canonical program `A242122.P16237057767984609906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242122 (n : ℕ) : ℤ :=
  A242122.P16237057767984609906.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242123.P4777588080624664964

`A000040(n+1)%25`
-/

namespace A242123.P4777588080624664964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 25

end

end A242123.P4777588080624664964

noncomputable section

/-- A242123: a(n) = n-th prime modulo 25.

Offset 1, canonical program `A242123.P4777588080624664964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242123 (n : ℕ) : ℤ :=
  A242123.P4777588080624664964.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242124.P12660772852566305349

`A000040(n+1)%26`
-/

namespace A242124.P12660772852566305349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 26

end

end A242124.P12660772852566305349

noncomputable section

/-- A242124: a(n) = n-th prime modulo 26.

Offset 1, canonical program `A242124.P12660772852566305349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242124 (n : ℕ) : ℤ :=
  A242124.P12660772852566305349.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242125.P4403768967938311355

`A000040(n+1)%27`
-/

namespace A242125.P4403768967938311355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 27

end

end A242125.P4403768967938311355

noncomputable section

/-- A242125: a(n) = n-th prime modulo 27.

Offset 1, canonical program `A242125.P4403768967938311355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242125 (n : ℕ) : ℤ :=
  A242125.P4403768967938311355.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242126.P7023242085800595695

`A000040(n+1)%28`
-/

namespace A242126.P7023242085800595695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 28

end

end A242126.P7023242085800595695

noncomputable section

/-- A242126: a(n) = n-th prime modulo 28.

Offset 1, canonical program `A242126.P7023242085800595695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242126 (n : ℕ) : ℤ :=
  A242126.P7023242085800595695.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242127.P18416423254723093719

`A000040(n+1)%29`
-/

namespace A242127.P18416423254723093719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 29

end

end A242127.P18416423254723093719

noncomputable section

/-- A242127: a(n) = n-th prime modulo 29.

Offset 1, canonical program `A242127.P18416423254723093719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242127 (n : ℕ) : ℤ :=
  A242127.P18416423254723093719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242191.P6053039216167152241

`6^(n+2)-A001552(n+1)`
-/

namespace A242191.P6053039216167152241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ (n + 2) : ℤ) - A001552 (n + 1)

end

end A242191.P6053039216167152241

noncomputable section

/-- A242191: Expected value of the highest die when n six-sided dice are rolled, multiplied by 6^n.

Offset 1, canonical program `A242191.P6053039216167152241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A242191 (n : ℕ) : ℤ :=
  A242191.P6053039216167152241.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A242191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242429.P13944063349304539094

`A079583(n)+A010763(n)`
-/

namespace A242429.P13944063349304539094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079583 n + A010763 n

end

end A242429.P13944063349304539094

noncomputable section

/-- A242429: Length of longest chain of nonempty proper subsemigroups of the monoid of partial injective order-preserving functions of a chain with n elements.

Offset 1, canonical program `A242429.P13944063349304539094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A242429 (n : ℕ) : ℤ :=
  A242429.P13944063349304539094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A242429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242454.P17030880495983827344

`∩[A085802(n+1), A000217(n)]`
-/

namespace A242454.P17030880495983827344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242454.P17030880495983827344

noncomputable section

/-- A242454: Triangular numbers T such that sum of digits of T is semiprime.

Offset 1, canonical program `A242454.P17030880495983827344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A242454 (n : ℕ) : ℤ :=
  (A242454.P17030880495983827344.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A242454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242480.P17981703928569012068

`A054024(n+1)+A229110(n+1)+A142150(n+1)`
-/

namespace A242480.P17981703928569012068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1) + (A229110 (n + 1) + A142150 (n + 1))

end

end A242480.P17981703928569012068

noncomputable section

/-- A242480: a(n) = (n*(n+1)/2) mod n + sigma(n) mod n + antisigma(n) mod n.

Offset 1, canonical program `A242480.P17981703928569012068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A242480 (n : ℕ) : ℤ :=
  A242480.P17981703928569012068.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A242480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242643.P954385137842474462

`∑{d}[n+1, #*A101272(#)]`
-/

namespace A242643.P954385137842474462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A101272 d

end

end A242643.P954385137842474462

noncomputable section

/-- A242643: a(n) = Sum_{d|n, d <= 6} d^2 + 6*Sum_{d|n, d>6} d.

Offset 1, canonical program `A242643.P954385137842474462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242643 (n : ℕ) : ℤ :=
  A242643.P954385137842474462.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242709.P9346738360422744419

`∑[n²*A008619(n)]+∑[n]`
-/

namespace A242709.P9346738360422744419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A008619 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A242709.P9346738360422744419

noncomputable section

/-- A242709: Nonequivalent ways to place two different markers (e.g., a pair of Go stones, black and white) on an n X n grid.

Offset 1, canonical program `A242709.P9346738360422744419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242709 (n : ℕ) : ℤ :=
  A242709.P9346738360422744419.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242818.P12293616583883546733

`A000898(n)/2^ceil(n/2)`
-/

namespace A242818.P12293616583883546733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000898 n : ℚ) / (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)

end

end A242818.P12293616583883546733

noncomputable section

/-- A242818: a(n) = 2^floor(n/2) n! [x^n] exp(x+x^2/4), where [x^n] f(x) denotes the coefficient of x^n in the expansion of f(x).

Offset 0, canonical program `A242818.P12293616583883546733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A242818 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A242818.P12293616583883546733.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A242818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242854.P18083849071613528463

`A005843(n)*A242853(n)-A242852(n)`
-/

namespace A242854.P18083849071613528463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n * A242853 n - A242852 n

end

end A242854.P18083849071613528463

noncomputable section

/-- A242854: a(n) = 512*n^9 - 1024*n^7 + 672*n^5 - 160*n^3 + 10*n.

Offset 0, canonical program `A242854.P18083849071613528463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242854 (n : ℕ) : ℤ :=
  A242854.P18083849071613528463.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242856.P17178093393388344635

`∑[2*n*A078371(n)]+2`
-/

namespace A242856.P17178093393388344635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A078371 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A242856.P17178093393388344635

noncomputable section

/-- A242856: Number of 2-matchings of the n X n grid graph.

Offset 2, canonical program `A242856.P17178093393388344635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242856 (n : ℕ) : ℤ :=
  A242856.P17178093393388344635.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242930.P12542841034490309898

`p?[4*A219257(n+1)+1]`
-/

namespace A242930.P12542841034490309898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A219257 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242930.P12542841034490309898

noncomputable section

/-- A242930: Primes of the form (k^2+7)/11.

Offset 1, canonical program `A242930.P12542841034490309898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A242930 (n : ℕ) : ℤ :=
  A242930.P12542841034490309898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A242930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243130.P9855249893936968093

`A242850(n)²-A144139(n)²`
-/

namespace A243130.P9855249893936968093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242850 n ^ 2 - A144139 n ^ 2

end

end A243130.P9855249893936968093

noncomputable section

/-- A243130: a(n) = 1024*n^10 - 2304*n^8 + 1792*n^6 - 560*n^4 + 60*n^2 - 1.

Offset 0, canonical program `A243130.P9855249893936968093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243130 (n : ℕ) : ℤ :=
  A243130.P9855249893936968093.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243174.P13861354254685975125

`eq[char[A005752(n)], A061347(n+1)]`
-/

namespace A243174.P13861354254685975125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A243174.P13861354254685975125

noncomputable section

/-- A243174: Nonnegative integers of the form x^2 + 5*x*y - 5*y^2 (discriminant 45).

Offset 1, canonical program `A243174.P13861354254685975125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1040 terms. -/
def A243174 (n : ℕ) : ℤ :=
  (A243174.P13861354254685975125.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1040 terms. -/
def A243174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243212.P5840329087631673674

`A234250(n+2)-A019298(n)`
-/

namespace A243212.P5840329087631673674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234250 (n + 2) - A019298 n

end

end A243212.P5840329087631673674

noncomputable section

/-- A243212: Number of ways to place 3 points on a triangular grid of side n so that no three of them are vertices of an equilateral triangle with sides parallel to the grid.

Offset 2, canonical program `A243212.P5840329087631673674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243212 (n : ℕ) : ℤ :=
  A243212.P5840329087631673674.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243351.P11292323269344523392

`2*n+1-eq[1, A005361(n+1)]`
-/

namespace A243351.P11292323269344523392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A243351.P11292323269344523392

noncomputable section

/-- A243351: Difference between 2n and the n-th squarefree number: a(n) = 2n - A005117(n).

Offset 1, canonical program `A243351.P11292323269344523392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243351 (n : ℕ) : ℤ :=
  A243351.P11292323269344523392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243514.P14265399690407988405

`∑[A007582(n-1)+a(n-1)]` with `a(0)=3, a(1)=2`
-/

namespace A243514.P14265399690407988405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  A007582 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243514.P14265399690407988405

noncomputable section

/-- A243514: Number of length n+2 0..5 arrays with no three elements in a row with pattern aba or abb (with a!=b) and new values 0..5 introduced in 0..5 order.

Offset 1, canonical program `A243514.P14265399690407988405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A243514 (n : ℕ) : ℤ :=
  A243514.P14265399690407988405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A243514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243588.P9950600176943645000

`p?[gcd(A033583(n+1), A160942(n+1))]`
-/

namespace A243588.P9950600176943645000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033583 (n + 1)) (A160942 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A243588.P9950600176943645000

noncomputable section

/-- A243588: Primes p such that sum of digits + 9 is prime.

Offset 1, canonical program `A243588.P9950600176943645000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. -/
def A243588 (n : ℕ) : ℤ :=
  (A243588.P9950600176943645000.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. -/
def A243588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243589.P10297874337052836463

`xor(A006257(n+1), A038572(n+1))`
-/

namespace A243589.P10297874337052836463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006257 (n + 1)) (A038572 (n + 1))

end

end A243589.P10297874337052836463

noncomputable section

/-- A243589: Numbers returned when each binary digit of n is replaced by the sum modulo 2 of the digits to its (wrapped) left and (wrapped) right.

Offset 1, canonical program `A243589.P10297874337052836463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243589 (n : ℕ) : ℤ :=
  A243589.P10297874337052836463.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243890.P4692966572407633764

`p?[A212428(2*n+3)+n]`
-/

namespace A243890.P4692966572407633764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212428 (2 * n + 3) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243890.P4692966572407633764

noncomputable section

/-- A243890: Primes of the form 2*n^2+38*n+17.

Offset 1, canonical program `A243890.P4692966572407633764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A243890 (n : ℕ) : ℤ :=
  A243890.P4692966572407633764.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A243890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243891.P305816657358226771

`p?[A132763(2*(n+4))-A056220(n)]`
-/

namespace A243891.P305816657358226771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132763 (2 * (n + 4)) - A056220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243891.P305816657358226771

noncomputable section

/-- A243891: Primes of the form 2*n^2 + 62*n + 29.

Offset 1, canonical program `A243891.P305816657358226771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A243891 (n : ℕ) : ℤ :=
  A243891.P305816657358226771.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A243891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243895.P9736630362790892113

`A001749(n*(n+4)+3)/4`
-/

namespace A243895.P9736630362790892113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n * (n + 4) + 3) : ℚ) / 4

end

end A243895.P9736630362790892113

noncomputable section

/-- A243895: a(n) = prime(n^2-1).

Offset 2, canonical program `A243895.P9736630362790892113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A243895 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A243895.P9736630362790892113.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A243895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243915.P1408806068792064357

`A000203(Δ[A013939(n+1)])`
-/

namespace A243915.P1408806068792064357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (n + 1) - f1 n).toNat

end

end A243915.P1408806068792064357

noncomputable section

/-- A243915: a(n) = sigma(omega(n)).

Offset 2, canonical program `A243915.P1408806068792064357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A243915 (n : ℕ) : ℤ :=
  A243915.P1408806068792064357.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A243915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244098.P17071830825429301538

`∑{d}[n+1, A168324(#)]+1`
-/

namespace A244098.P17071830825429301538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A168324 d + 1

end

end A244098.P17071830825429301538

noncomputable section

/-- A244098: Total number of divisors of all the ordered prime factorizations of an integer.

Offset 1, canonical program `A244098.P17071830825429301538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244098 (n : ℕ) : ℤ :=
  A244098.P17071830825429301538.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244307.P4582279451583344782

`∑[∑[∑[A080513(n)²-(n+1)]]]`
-/

namespace A244307.P4582279451583344782
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n ^ 2 - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244307.P4582279451583344782

noncomputable section

/-- A244307: Sum over each antidiagonal of A244306.

Offset 1, canonical program `A244307.P4582279451583344782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244307 (n : ℕ) : ℤ :=
  A244307.P4582279451583344782.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244307.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A244326.P16585438140887289108

`lt[5*(n+1)/2, A000203(n+1)]+1`
-/

namespace A244326.P16585438140887289108
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((n + 1 : ℚ) / 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A244326.P16585438140887289108

noncomputable section

/-- A244326: Numbers k such that floor(antisigma(k)/k) < floor(antisigma(k - 1)/(k - 1)).

Offset 1, canonical program `A244326.P16585438140887289108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4408 terms. -/
def A244326 (n : ℕ) : ℤ :=
  (A244326.P16585438140887289108.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4408 terms. -/
def A244326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244497.P10835936318056941169

`A085463(n+1)-A011888(n)`
-/

namespace A244497.P10835936318056941169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085463 (n + 1) - A011888 n

end

end A244497.P10835936318056941169

noncomputable section

/-- A244497: Number of magic labelings of the prism graph I X C_5 with magic sum n.

Offset 0, canonical program `A244497.P10835936318056941169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244497 (n : ℕ) : ℤ :=
  A244497.P10835936318056941169.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244713.P3135267856663616854

`∪[∑[A040073(n+2)], A016777(n)]`
-/

namespace A244713.P3135267856663616854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040073 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A244713.P3135267856663616854

noncomputable section

/-- A244713: Positive numbers primitively represented by the binary quadratic form (1, 1, -2).

Offset 1, canonical program `A244713.P3135267856663616854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244713 (n : ℕ) : ℤ :=
  (A244713.P3135267856663616854.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244763.P5327502581973112065

`∩[A141885(n+1), A141937(n+1)]`
-/

namespace A244763.P5327502581973112065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244763.P5327502581973112065

noncomputable section

/-- A244763: Prime numbers ending in the prime number 13.

Offset 1, canonical program `A244763.P5327502581973112065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1995 terms. -/
def A244763 (n : ℕ) : ℤ :=
  (A244763.P5327502581973112065.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1995 terms. -/
def A244763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244765.P13638012274075522273

`∩[A141887(n+1), A141942(n+1)]`
-/

namespace A244765.P13638012274075522273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244765.P13638012274075522273

noncomputable section

/-- A244765: Prime numbers ending in the prime number 19.

Offset 1, canonical program `A244765.P13638012274075522273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2007 terms. -/
def A244765 (n : ℕ) : ℤ :=
  (A244765.P13638012274075522273.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2007 terms. -/
def A244765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244768.P4568832735318401239

`∩[A141886(n+1), A141936(n+1)]`
-/

namespace A244768.P4568832735318401239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244768.P4568832735318401239

noncomputable section

/-- A244768: Prime numbers ending in the prime number 37.

Offset 1, canonical program `A244768.P4568832735318401239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2011 terms. -/
def A244768 (n : ℕ) : ℤ :=
  (A244768.P4568832735318401239.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2011 terms. -/
def A244768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244769.P9226794016113281846

`∩[A105854(n+1), A141941(n+1)]`
-/

namespace A244769.P9226794016113281846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244769.P9226794016113281846

noncomputable section

/-- A244769: Prime numbers ending in the prime number 43.

Offset 1, canonical program `A244769.P9226794016113281846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1991 terms. -/
def A244769 (n : ℕ) : ℤ :=
  (A244769.P9226794016113281846.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1991 terms. -/
def A244769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244776.P17075600255975937437

`∩[A105854(n+1), A141933(n+1)]`
-/

namespace A244776.P17075600255975937437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244776.P17075600255975937437

noncomputable section

/-- A244776: Prime numbers ending in the prime number 83.

Offset 1, canonical program `A244776.P17075600255975937437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1995 terms. -/
def A244776 (n : ℕ) : ℤ :=
  (A244776.P17075600255975937437.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1995 terms. -/
def A244776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244798.P1024524685187747021

`A072527(A000040(n+1))`
-/

namespace A244798.P1024524685187747021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072527 (A000040 (n + 1)).toNat

end

end A244798.P1024524685187747021

noncomputable section

/-- A244798: Number of moduli m such that (prime(n) mod m) = 3.

Offset 1, canonical program `A244798.P1024524685187747021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A244798 (n : ℕ) : ℤ :=
  A244798.P1024524685187747021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A244798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244869.P6429433672219191574

`A244864(n)-A011888(n)`
-/

namespace A244869.P6429433672219191574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244864 n - A011888 n

end

end A244869.P6429433672219191574

noncomputable section

/-- A244869: Number of magic labelings with magic sum n of first graph shown in link.

Offset 0, canonical program `A244869.P6429433672219191574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244869 (n : ℕ) : ℤ :=
  A244869.P6429433672219191574.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244870.P12300476770002142081

`∑[∑[∑[A008253(n)+n²]]]`
-/

namespace A244870.P12300476770002142081
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008253 n + (n ^ 2 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244870.P12300476770002142081

noncomputable section

/-- A244870: Number of magic labelings with magic sum n of 2nd graph shown in link.

Offset 0, canonical program `A244870.P12300476770002142081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244870 (n : ℕ) : ℤ :=
  A244870.P12300476770002142081.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244904.P15426718486549657250

`A100795(Δ[A070333(n)])`
-/

namespace A244904.P15426718486549657250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (f1 (n + 1) - f1 n).toNat

end

end A244904.P15426718486549657250

noncomputable section

/-- A244904: Number of length 1 0..n arrays with each partial sum starting from the beginning no more than sqrt(2) standard deviations from its mean.

Offset 1, canonical program `A244904.P15426718486549657250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A244904 (n : ℕ) : ℤ :=
  A244904.P15426718486549657250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A244904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245001.P3349015915289072323

`A001405(n+1)+A001006(n)`
-/

namespace A245001.P3349015915289072323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) + A001006 n

end

end A245001.P3349015915289072323

noncomputable section

/-- A245001: Number of standard Young tableaux with n cells and 3 as last value in the first row.

Offset 3, canonical program `A245001.P3349015915289072323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A245001 (n : ℕ) : ℤ :=
  A245001.P3349015915289072323.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A245001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245031.P8285924998747403516

`∑[gcd(2, n)*A004189(n)]`
-/

namespace A245031.P8285924998747403516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A004189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245031.P8285924998747403516

noncomputable section

/-- A245031: Numbers m such that 3*m+1 and 8*m+1 are both squares.

Offset 1, canonical program `A245031.P8285924998747403516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A245031 (n : ℕ) : ℤ :=
  A245031.P8285924998747403516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A245031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245092.P5629512681857718136

`A033880(A152271(n))+n+1`
-/

namespace A245092.P5629512681857718136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A152271 n).toNat + (n + 1 : ℤ)

end

end A245092.P5629512681857718136

noncomputable section

/-- A245092: The even numbers (A005843) and the values of sigma function (A000203) interleaved.

Offset 0, canonical program `A245092.P5629512681857718136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245092 (n : ℕ) : ℤ :=
  A245092.P5629512681857718136.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245135.P16030247341081708525

`Δ[∑[n+1]*A131941(n+1)]`
-/

namespace A245135.P16030247341081708525
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A131941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245135.P16030247341081708525

noncomputable section

/-- A245135: Number of length 5 0..n arrays least squares fitting to a zero slope straight line, with a single point taken as having zero slope.

Offset 1, canonical program `A245135.P16030247341081708525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A245135 (n : ℕ) : ℤ :=
  A245135.P16030247341081708525.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A245135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245191.P17795432851198493125

`and(A062878(n+1), A266873(n))`
-/

namespace A245191.P17795432851198493125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062878 (n + 1)) (A266873 n)

end

end A245191.P17795432851198493125

noncomputable section

/-- A245191: Successive states of one-sided one-dimensional cellular automaton using Rule 90, starting with a single ON cell, converted to decimal.

Offset 0, canonical program `A245191.P17795432851198493125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A245191 (n : ℕ) : ℤ :=
  A245191.P17795432851198493125.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A245191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245222.P5497392532380044089

`gcd(Δ[A198081(n)], A215781(n))`
-/

namespace A245222.P5497392532380044089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A215781 n)

end

end A245222.P5497392532380044089

noncomputable section

/-- A245222: Continued fraction expansion of the constant c in A245221; c = sup{f(n,1)}, where f(1,x) = x + 1 and thereafter f(n,x) = x + 1 if n is in A022838, else f(n,x) = 1/x.

Offset 0, canonical program `A245222.P5497392532380044089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245222 (n : ℕ) : ℤ :=
  (A245222.P5497392532380044089.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245231.P11366617668053575801

`A047203(n+1)+Δ[A132292(n+1)]`
-/

namespace A245231.P11366617668053575801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (n + 1) + (f1 (n + 1) - f1 n)

end

end A245231.P11366617668053575801

noncomputable section

/-- A245231: Maximum frustration of complete bipartite graph K(n,4).

Offset 1, canonical program `A245231.P11366617668053575801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A245231 (n : ℕ) : ℤ :=
  A245231.P11366617668053575801.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A245231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245282.P6452615831386113322

`∑{d}[n+1, A000045(#+1)]`
-/

namespace A245282.P6452615831386113322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000045 (d + 1)

end

end A245282.P6452615831386113322

noncomputable section

/-- A245282: G.f.: Sum_{n>=1} Fibonacci(n+1) * x^n / (1 - x^n).

Offset 1, canonical program `A245282.P6452615831386113322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A245282 (n : ℕ) : ℤ :=
  A245282.P6452615831386113322.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A245282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245356.P3604867257649377348

`4*A072493(n+1)`
-/

namespace A245356.P3604867257649377348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A072493 (n + 1)

end

end A245356.P3604867257649377348

noncomputable section

/-- A245356: Number of numbers whose base-4/3 expansion (see A024631) has n digits.

Offset 1, canonical program `A245356.P3604867257649377348`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072493, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245356 (n : ℕ) : ℤ :=
  A245356.P3604867257649377348.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072493, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245356.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245357.P4416678491672085733

`5*A120160(n+1)`
-/

namespace A245357.P4416678491672085733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A120160 (n + 1)

end

end A245357.P4416678491672085733

noncomputable section

/-- A245357: Number of numbers whose base 5/4 expansion (see A024634) has n digits.

Offset 1, canonical program `A245357.P4416678491672085733`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120160, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245357 (n : ℕ) : ℤ :=
  A245357.P4416678491672085733.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120160, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245357.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245383.P11295058152896661121

`eq[2, A105700(abs(A187844(n)))]`
-/

namespace A245383.P11295058152896661121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 |A187844 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245383.P11295058152896661121

noncomputable section

/-- A245383: Numbers n whose product of decimal digits is a semiprime.

Offset 1, canonical program `A245383.P11295058152896661121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 312 terms. -/
def A245383 (n : ℕ) : ℤ :=
  (A245383.P11295058152896661121.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 312 terms. -/
def A245383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245399.P8496903241108357948

`6*A120170(n+1)`
-/

namespace A245399.P8496903241108357948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A120170 (n + 1)

end

end A245399.P8496903241108357948

noncomputable section

/-- A245399: Number of nonnegative integers with property that their base 6/5 expansion (see A024638) has n digits.

Offset 1, canonical program `A245399.P8496903241108357948`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120170, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245399 (n : ℕ) : ℤ :=
  A245399.P8496903241108357948.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120170, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245399.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245400.P14935792558701192917

`9*A120194(n+1)`
-/

namespace A245400.P14935792558701192917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A120194 (n + 1)

end

end A245400.P14935792558701192917

noncomputable section

/-- A245400: Number of nonnegative integers with property that their base 9/8 expansion (see A024656) has n digits.

Offset 1, canonical program `A245400.P14935792558701192917`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120194, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245400 (n : ℕ) : ℤ :=
  A245400.P14935792558701192917.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120194, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245400.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245401.P11796803760799320921

`8*A120186(n+1)`
-/

namespace A245401.P11796803760799320921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A120186 (n + 1)

end

end A245401.P11796803760799320921

noncomputable section

/-- A245401: Number of nonnegative integers with property that their base 8/7 expansion (see A024649) has n digits.

Offset 1, canonical program `A245401.P11796803760799320921`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120186, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245401 (n : ℕ) : ℤ :=
  A245401.P11796803760799320921.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120186, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245401.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245402.P7550969198272451745

`7*A120178(n+1)`
-/

namespace A245402.P7550969198272451745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A120178 (n + 1)

end

end A245402.P7550969198272451745

noncomputable section

/-- A245402: Number of nonnegative integers with property that their base 7/6 expansion (see A024643) has n digits.

Offset 1, canonical program `A245402.P7550969198272451745`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120178, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245402 (n : ℕ) : ℤ :=
  A245402.P7550969198272451745.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120178, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245402.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245403.P11721745227114113463

`10*A120202(n+1)`
-/

namespace A245403.P11721745227114113463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A120202 (n + 1)

end

end A245403.P11721745227114113463

noncomputable section

/-- A245403: Number of nonnegative integers with property that their base 10/9 expansion (see A024664) has n digits.

Offset 1, canonical program `A245403.P11721745227114113463`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120202, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245403 (n : ℕ) : ℤ :=
  A245403.P11721745227114113463.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120202, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245403.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245471.P2587707209557720129

`xor(lcm(2, n+1), xor(n+1, A152271(n)))`
-/

namespace A245471.P2587707209557720129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.lcm 2 (n + 1) : ℤ) (Int.xor (n + 1 : ℤ) (A152271 n))

end

end A245471.P2587707209557720129

noncomputable section

/-- A245471: If n is odd, then a(n) = A065621(n+1). If n is even, then a(n) = n/2.

Offset 1, canonical program `A245471.P2587707209557720129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245471 (n : ℕ) : ℤ :=
  A245471.P2587707209557720129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245552.P13288612625142451457

`Δ[A123578(floor(n/2))²]`
-/

namespace A245552.P13288612625142451457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 ⌊(n : ℚ) / 2⌋.toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245552.P13288612625142451457

noncomputable section

/-- A245552: G.f.: Sum_{n>=0} (2*n+1)*x^(n^2+n+1).

Offset 0, canonical program `A245552.P13288612625142451457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245552 (n : ℕ) : ℤ :=
  A245552.P13288612625142451457.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245573.P8574744713059270409

`A090223(n+1)-(A059995(n)+A057355(n))`
-/

namespace A245573.P8574744713059270409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (n + 1) - (A059995 n + A057355 n)

end

end A245573.P8574744713059270409

noncomputable section

/-- A245573: Minimal coin changing sequence for denominations 1, 2, 5 and 10 cents.

Offset 0, canonical program `A245573.P8574744713059270409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245573 (n : ℕ) : ℤ :=
  A245573.P8574744713059270409.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245656.P15725278773398703278

`A000007(A054025(n+1))`
-/

namespace A245656.P15725278773398703278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A054025 (n + 1)).toNat

end

end A245656.P15725278773398703278

noncomputable section

/-- A245656: Characteristic function of arithmetic numbers, cf. A003601.

Offset 1, canonical program `A245656.P15725278773398703278`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245656 (n : ℕ) : ℤ :=
  A245656.P15725278773398703278.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245656.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245679.P15014101552485976953

`C(n, n²)-1+A006325(n)`
-/

namespace A245679.P15014101552485976953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (n ^ 2) : ℤ) - 1 + A006325 n

end

end A245679.P15014101552485976953

noncomputable section

/-- A245679: a(n) = pg(n, 3) + pg(n, 4) + ... + pg(n, n) where pg(n, m) is the m-th n-th-order polygonal number.

Offset 0, canonical program `A245679.P15014101552485976953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245679 (n : ℕ) : ℤ :=
  A245679.P15014101552485976953.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245783.P3831324765394607800

`A080806(A042963(n+1))-A098297(n)`
-/

namespace A245783.P3831324765394607800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080806 (A042963 (n + 1)).toNat - A098297 n

end

end A245783.P3831324765394607800

noncomputable section

/-- A245783: Numbers n such that the hexagonal number H(n) is equal to the sum of the pentagonal numbers P(m) and P(m+1) for some m.

Offset 1, canonical program `A245783.P3831324765394607800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A245783 (n : ℕ) : ℤ :=
  A245783.P3831324765394607800.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A245783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245789.P13312650202951324483

`A000203(2^(n-C(∑[char[∑[n]]], 2)))^(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A245789.P13312650202951324483
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ)

end

end A245789.P13312650202951324483

noncomputable section

/-- A245789: Rectangular array A read by upward antidiagonals: A(k,n) = (2^k-1)^n, n,k >= 1.

Offset 1, canonical program `A245789.P13312650202951324483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A245789 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A245789.P13312650202951324483.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A245789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245799.P3433551107463058925

`A014448(n)-A000045(n)`
-/

namespace A245799.P3433551107463058925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014448 n - A000045 n

end

end A245799.P3433551107463058925

noncomputable section

/-- A245799: a(n) = Lucas(3*n) - Fibonacci(n).

Offset 0, canonical program `A245799.P3433551107463058925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A245799 (n : ℕ) : ℤ :=
  A245799.P3433551107463058925.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A245799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245828.P12832047680720893930

`4*A208954(n+1)`
-/

namespace A245828.P12832047680720893930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A208954 (n + 1)

end

end A245828.P12832047680720893930

noncomputable section

/-- A245828: Szeged index of the grid graph P_n X P_n.

Offset 1, canonical program `A245828.P12832047680720893930`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A208954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245828 (n : ℕ) : ℤ :=
  A245828.P12832047680720893930.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A208954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245828.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245830.P10524095830578772674

`A050441(2*n+3)+4*(n+1)`
-/

namespace A245830.P10524095830578772674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050441 (2 * n + 3) + (4 * (n + 1) : ℤ)

end

end A245830.P10524095830578772674

noncomputable section

/-- A245830: The Szeged index of a benzenoid consisting of a linear chain of n hexagons.

Offset 1, canonical program `A245830.P10524095830578772674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A245830 (n : ℕ) : ℤ :=
  A245830.P10524095830578772674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A245830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245833.P4410231204776485318

`∑[∑[9*(n+1)]]*A005286(n+1)`
-/

namespace A245833.P4410231204776485318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A005286 (n + 1)

end

end A245833.P4410231204776485318

noncomputable section

/-- A245833: The Szeged index of the triangle-shaped benzenoid T_n (see Fig. 5.7 of the Diudea et al. reference).

Offset 1, canonical program `A245833.P4410231204776485318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A245833 (n : ℕ) : ℤ :=
  A245833.P4410231204776485318.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A245833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245909.P3732275511422578405

`A240975(A000040(n+1))`
-/

namespace A245909.P3732275511422578405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240975 (A000040 (n + 1)).toNat

end

end A245909.P3732275511422578405

noncomputable section

/-- A245909: The number of distinct prime factors of prime(n)^3-1.

Offset 1, canonical program `A245909.P3732275511422578405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A245909 (n : ℕ) : ℤ :=
  A245909.P3732275511422578405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A245909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245920.P3971738519078735846

`2-A241422(n)`
-/

namespace A245920.P3971738519078735846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A241422 n

end

end A245920.P3971738519078735846

noncomputable section

/-- A245920: Limit-reverse of the (2,1)-version of the infinite Fibonacci word A014675 with first term as initial block.

Offset 0, canonical program `A245920.P3971738519078735846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A245920 (n : ℕ) : ℤ :=
  A245920.P3971738519078735846.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A245920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245969.P12329623590168413401

`A143938(n+3)-A130809(n+3)`
-/

namespace A245969.P12329623590168413401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143938 (n + 3) - A130809 (n + 3)

end

end A245969.P12329623590168413401

noncomputable section

/-- A245969: The average Wiener index of the set of all fibonacenes with n hexagons.

Offset 3, canonical program `A245969.P12329623590168413401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A245969 (n : ℕ) : ℤ :=
  A245969.P12329623590168413401.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A245969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245977.P8645664375542382364

`A059426(n+1)`
-/

namespace A245977.P8645664375542382364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059426 (n + 1)

end

end A245977.P8645664375542382364

noncomputable section

/-- A245977: Limit-reverse of the infinite Fibonacci word A014675 = (s(0),s(1),...) = (2,1,2,2,1,2,1,2, ...) using initial block (s(2),s(3)) = (2,2).

Offset 0, canonical program `A245977.P8645664375542382364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A245977 (n : ℕ) : ℤ :=
  A245977.P8645664375542382364.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A245977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245994.P6895593453724742497

`8*A015451(n+3)`
-/

namespace A245994.P6895593453724742497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A015451 (n + 3)

end

end A245994.P6895593453724742497

noncomputable section

/-- A245994: Number of length n+2 0..7 arrays with no pair in any consecutive three terms totalling exactly 7.

Offset 1, canonical program `A245994.P6895593453724742497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A245994 (n : ℕ) : ℤ :=
  A245994.P6895593453724742497.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A245994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246010.P11055632082061828004

`A032527(A000040(n+1))`
-/

namespace A246010.P11055632082061828004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 (A000040 (n + 1)).toNat

end

end A246010.P11055632082061828004

noncomputable section

/-- A246010: a(n) = floor(5*prime(n)^2 / 4).

Offset 1, canonical program `A246010.P11055632082061828004`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246010 (n : ℕ) : ℤ :=
  A246010.P11055632082061828004.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246010.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246074.P4921777873160455435

`∑[A011782(floor(n/6))]`
-/

namespace A246074.P4921777873160455435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 ⌊(n : ℚ) / 6⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246074.P4921777873160455435

noncomputable section

/-- A246074: Paradigm Shift Sequence for a (-4,5) production scheme with replacement.

Offset 1, canonical program `A246074.P4921777873160455435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1983 terms. -/
def A246074 (n : ℕ) : ℤ :=
  A246074.P4921777873160455435.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1983 terms. -/
def A246074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246075.P3779961468004013155

`∑[A011782(floor(n/7))]`
-/

namespace A246075.P3779961468004013155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 ⌊(n : ℚ) / 7⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246075.P3779961468004013155

noncomputable section

/-- A246075: Paradigm shift sequence for a (-3,5) production scheme with replacement.

Offset 1, canonical program `A246075.P3779961468004013155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2312 terms. -/
def A246075 (n : ℕ) : ℤ :=
  A246075.P3779961468004013155.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2312 terms. -/
def A246075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246081.P9953062268493866683

`∑[A182522(A131737(floor(n/3)))]`
-/

namespace A246081.P9953062268493866683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (A131737 ⌊(n : ℚ) / 3⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246081.P9953062268493866683

noncomputable section

/-- A246081: Paradigm shift sequence for (0,3) production scheme with replacement.

Offset 1, canonical program `A246081.P9953062268493866683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1877 terms. -/
def A246081 (n : ℕ) : ℤ :=
  A246081.P9953062268493866683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1877 terms. -/
def A246081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246082.P3848407960839280997

`∑[A182522(A131737(floor(n/4)))]`
-/

namespace A246082.P3848407960839280997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (A131737 ⌊(n : ℚ) / 4⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246082.P3848407960839280997

noncomputable section

/-- A246082: Paradigm shift sequence for (0,4) production scheme with replacement.

Offset 1, canonical program `A246082.P3848407960839280997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A246082 (n : ℕ) : ℤ :=
  A246082.P3848407960839280997.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A246082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246083.P14460450737891075093

`∑[A182522(A131737(floor(n/5)))]`
-/

namespace A246083.P14460450737891075093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (A131737 ⌊(n : ℚ) / 5⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246083.P14460450737891075093

noncomputable section

/-- A246083: Paradigm shift sequence for (0,5) production scheme with replacement.

Offset 1, canonical program `A246083.P14460450737891075093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3122 terms. -/
def A246083 (n : ℕ) : ℤ :=
  A246083.P14460450737891075093.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3122 terms. -/
def A246083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246170.P10932543148951173462

`floor(sqrt(A158485(n+1)))%(A055999(n)+4)`
-/

namespace A246170.P10932543148951173462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A158485 (n + 1))) (A055999 n + 4)

end

end A246170.P10932543148951173462

noncomputable section

/-- A246170: Beatty sequence for sqrt(14).

Offset 1, canonical program `A246170.P10932543148951173462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246170 (n : ℕ) : ℤ :=
  A246170.P10932543148951173462.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246302.P4390895032775024967

`abs(1-A246301(n+1))`
-/

namespace A246302.P4390895032775024967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A246301 (n + 1)|

end

end A246302.P4390895032775024967

noncomputable section

/-- A246302: Numbers k such that cos(k) < cos(k+1) < cos(k+2) < cos(k+3) > cos(k+4).

Offset 1, canonical program `A246302.P4390895032775024967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246302 (n : ℕ) : ℤ :=
  A246302.P4390895032775024967.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246305.P8271741949091332252

`abs(1-A246304(n+1))`
-/

namespace A246305.P8271741949091332252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A246304 (n + 1)|

end

end A246305.P8271741949091332252

noncomputable section

/-- A246305: Numbers k such that cos(k) > cos(k+1) > cos(k+2) < cos(k+3).

Offset 1, canonical program `A246305.P8271741949091332252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246305 (n : ℕ) : ℤ :=
  A246305.P8271741949091332252.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246389.P893148227588508086

`eq[n*A000493(n+1), A000493(n)]`
-/

namespace A246389.P893148227588508086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000493 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246389.P893148227588508086

noncomputable section

/-- A246389: Nonnegative integers k satisfying sin(k) >= 0 and sin(k+1) >= 0.

Offset 0, canonical program `A246389.P893148227588508086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A246389 (n : ℕ) : ℤ :=
  (A246389.P893148227588508086.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A246389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246394.P5096704532663512882

`A004083(n+1)-1`
-/

namespace A246394.P5096704532663512882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004083 (n + 1) - 1

end

end A246394.P5096704532663512882

noncomputable section

/-- A246394: Nonnegative integers k satisfying cos(k) <= 0 and cos(k+1) >= 0.

Offset 0, canonical program `A246394.P5096704532663512882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246394 (n : ℕ) : ℤ :=
  A246394.P5096704532663512882.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246407.P13205545743441053020

`comp[A246404(n+1)]`
-/

namespace A246407.P13205545743441053020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A246407.P13205545743441053020

noncomputable section

/-- A246407: Nonnegative integers k satisfying sec(k) > sec(k+1).

Offset 1, canonical program `A246407.P13205545743441053020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246407 (n : ℕ) : ℤ :=
  (A246407.P13205545743441053020.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246410.P11643950596936545398

`A246404(n+7)-11`
-/

namespace A246410.P11643950596936545398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246404 (n + 7) - 11

end

end A246410.P11643950596936545398

noncomputable section

/-- A246410: Positive integers k satisfying csc(k) < csc(k+1).

Offset 1, canonical program `A246410.P11643950596936545398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. -/
def A246410 (n : ℕ) : ℤ :=
  A246410.P11643950596936545398.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. -/
def A246410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246416.P13972767773548800976

`A212831(lcm(2, n)/2)`
-/

namespace A246416.P13972767773548800976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212831 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat

end

end A246416.P13972767773548800976

noncomputable section

/-- A246416: A permutation of essentially the duplicate nonnegative numbers: a(4n) = n + 1/2 - (-1)^n/2, a(2n+1) = a(4n+2) = 2n+1.

Offset 0, canonical program `A246416.P13972767773548800976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246416 (n : ℕ) : ℤ :=
  A246416.P13972767773548800976.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246444.P16006796968537660622

`eq[0, A344858(n)]`
-/

namespace A246444.P16006796968537660622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344858 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246444.P16006796968537660622

noncomputable section

/-- A246444: Nonnegative integers k satisfying sin(k) > sec(k).

Offset 1, canonical program `A246444.P16006796968537660622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A246444 (n : ℕ) : ℤ :=
  (A246444.P16006796968537660622.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A246444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246604.P5603396420743086449

`A000108(n)-n`
-/

namespace A246604.P5603396420743086449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - (n : ℤ)

end

end A246604.P5603396420743086449

noncomputable section

/-- A246604: a(n) = Catalan(n) - n.

Offset 0, canonical program `A246604.P5603396420743086449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A246604 (n : ℕ) : ℤ :=
  A246604.P5603396420743086449.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A246604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246831.P9729897708689004359

`n*(A062383(3*n)+3)`
-/

namespace A246831.P9729897708689004359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A062383 (3 * n) + 3)

end

end A246831.P9729897708689004359

noncomputable section

/-- A246831: a(n) is the concatenation of n and 3n in binary.

Offset 0, canonical program `A246831.P9729897708689004359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A246831 (n : ℕ) : ℤ :=
  A246831.P9729897708689004359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A246831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246864.P17921176171896131481

`((n+1)^4+1)%A000040(n+1)`
-/

namespace A246864.P17921176171896131481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 4 + 1 : ℤ) (A000040 (n + 1))

end

end A246864.P17921176171896131481

noncomputable section

/-- A246864: (n^4+1) mod prime(n).

Offset 1, canonical program `A246864.P17921176171896131481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246864 (n : ℕ) : ℤ :=
  A246864.P17921176171896131481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246887.P10401687073052114988

`A135492(n+5)²`
-/

namespace A246887.P10401687073052114988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135492 (n + 5) ^ 2

end

end A246887.P10401687073052114988

noncomputable section

/-- A246887: Number of length n+4 0..3 arrays with some pair in every consecutive five terms totalling exactly 3.

Offset 1, canonical program `A246887.P10401687073052114988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A246887 (n : ℕ) : ℤ :=
  A246887.P10401687073052114988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A246887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246908.P14110516356856020014

`A246456(n+1)-A000203(n+1)`
-/

namespace A246908.P14110516356856020014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246456 (n + 1) - A000203 (n + 1)

end

end A246908.P14110516356856020014

noncomputable section

/-- A246908: a(n) = sigma(n + sigma(n)) - sigma(n).

Offset 1, canonical program `A246908.P14110516356856020014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246908 (n : ℕ) : ℤ :=
  A246908.P14110516356856020014.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246943.P6195568637743775906

`A010685(n)*A283971(n)`
-/

namespace A246943.P6195568637743775906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n * A283971 n

end

end A246943.P6195568637743775906

noncomputable section

/-- A246943: a(4n) = 4*n , a(2n+1) = 8*n+4 , a(4n+2) = 2*n+1.

Offset 0, canonical program `A246943.P6195568637743775906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246943 (n : ℕ) : ℤ :=
  A246943.P6195568637743775906.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246965.P5539066629223825607

`A138918(n+1)+1`
-/

namespace A246965.P5539066629223825607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138918 (n + 1) + 1

end

end A246965.P5539066629223825607

noncomputable section

/-- A246965: Numbers n such that 19*n-(n+19) is a prime.

Offset 1, canonical program `A246965.P5539066629223825607`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246965 (n : ℕ) : ℤ :=
  A246965.P5539066629223825607.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246965.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247051.P1256998068142214065

`A247049(n)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A247051.P1256998068142214065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A247049 n - a (n - 3)

end

end A247051.P1256998068142214065

noncomputable section

/-- A247051: Rectangular array read upwards by columns: T = T(n,k) = number of paths from (0,2) to (n,k), where 0 <= k <= 2, consisting of segments given by the vectors (1,1), (1,2), (1,-1).

Offset 0, canonical program `A247051.P1256998068142214065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A247051 (n : ℕ) : ℤ :=
  A247051.P1256998068142214065.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A247051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247161.P15914949594973905819

`∪[A047610(n+1), A247062(n+1)]`
-/

namespace A247161.P15914949594973905819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247161.P15914949594973905819

noncomputable section

/-- A247161: Dynamic Betting Game D(n,4,2).

Offset 1, canonical program `A247161.P15914949594973905819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247161 (n : ℕ) : ℤ :=
  (A247161.P15914949594973905819.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247168.P7857655219200190337

`abs(Δ[A001672(n+1)])`
-/

namespace A247168.P7857655219200190337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A247168.P7857655219200190337

noncomputable section

/-- A247168: Number of times n occurs in the sequence floor(log_Pi(i)) with i=1,2,3,... .

Offset 1, canonical program `A247168.P7857655219200190337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A247168 (n : ℕ) : ℤ :=
  A247168.P7857655219200190337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A247168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247223.P5447369034591034024

`xor(n, A186741(n))-n`
-/

namespace A247223.P5447369034591034024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A186741 n) - (n : ℤ)

end

end A247223.P5447369034591034024

noncomputable section

/-- A247223: Expansion of f(-x^5, -x^7) in powers of x where f() is a Ramanujan theta function.

Offset 0, canonical program `A247223.P5447369034591034024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247223 (n : ℕ) : ℤ :=
  A247223.P5447369034591034024.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247309.P2599378051457868025

`A212804(round(2*n/3))`
-/

namespace A247309.P2599378051457868025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

end

end A247309.P2599378051457868025

noncomputable section

/-- A247309: Rectangular array read upwards by columns: T = T(n,k) = number of paths from (0,1) to (n,k), where 0 <= k <= 2, consisting of segments given by the vectors (1,1), (1,0), (1,-1), (1,-2).

Offset 0, canonical program `A247309.P2599378051457868025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 723 terms. -/
def A247309 (n : ℕ) : ℤ :=
  A247309.P2599378051457868025.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 723 terms. -/
def A247309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247310.P1069587211851915091

`A000045(or(1, n)²%3*A008611(n))`
-/

namespace A247310.P1069587211851915091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((Nat.lor 1 n ^ 2 % 3 : ℕ) : ℤ) * A008611 n).toNat

end

end A247310.P1069587211851915091

noncomputable section

/-- A247310: Rectangular array read upwards by columns: T = T(n,k) = number of paths from (0,1) to (n,k), where 0 <= k <= 2, consisting of segments given by the vectors (1,1), (1,2), (1,-1), (1,-2), where no segment is followed by a segment in the same direction.

Offset 0, canonical program `A247310.P1069587211851915091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A247310 (n : ℕ) : ℤ :=
  A247310.P1069587211851915091.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A247310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247343.P16054937885260863727

`∑{d}[n+1, A007427(#)*A007427((n+1)/#)]`
-/

namespace A247343.P16054937885260863727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A247343.P16054937885260863727

noncomputable section

/-- A247343: Moebius transform applied four times to sequence 1,0,0,0,....

Offset 1, canonical program `A247343.P16054937885260863727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247343 (n : ℕ) : ℤ :=
  A247343.P16054937885260863727.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247380.P8040246546011606999

`A117495(n+2)-A117495(n+1)`
-/

namespace A247380.P8040246546011606999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117495 (n + 2) - A117495 (n + 1)

end

end A247380.P8040246546011606999

noncomputable section

/-- A247380: First differences of A117495.

Offset 1, canonical program `A247380.P8040246546011606999`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117495, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247380 (n : ℕ) : ℤ :=
  A247380.P8040246546011606999.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117495, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247380.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247396.P2802040727128324426

`floor(Δ[A247395(n)/2])`
-/

namespace A247396.P2802040727128324426
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247395 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A247396.P2802040727128324426

noncomputable section

/-- A247396: Number of even numbers in classes of classification of the positive numbers defined in comment in A247395.

Offset 0, canonical program `A247396.P2802040727128324426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A247396 (n : ℕ) : ℤ :=
  A247396.P2802040727128324426.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A247396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247534.P210613567024888419

`A168388(3*(n+1))+∑[A168329(n+1)]`
-/

namespace A247534.P210613567024888419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168388 (3 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247534.P210613567024888419

noncomputable section

/-- A247534: Number of length 2+3 0..n arrays with some disjoint pairs in every consecutive four terms having the same sum.

Offset 1, canonical program `A247534.P210613567024888419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A247534 (n : ℕ) : ℤ :=
  A247534.P210613567024888419.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A247534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247907.P10131411900898785144

`∑[∑[A017899(n)]-a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A247907.P10131411900898785144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247907.P10131411900898785144

noncomputable section

/-- A247907: Expansion of (1 + x) / ((1 - x^4) * (1 - x - x^5)) in powers of x.

Offset 0, canonical program `A247907.P10131411900898785144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 818 terms. -/
def A247907 (n : ℕ) : ℤ :=
  A247907.P10131411900898785144.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 818 terms. -/
def A247907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247918.P958938976408860390

`A257543(abs(1-n))+A257543(n)`
-/

namespace A247918.P958938976408860390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257543 |1 - (n : ℤ)|.toNat + A257543 n

end

end A247918.P958938976408860390

noncomputable section

/-- A247918: Expansion of (1 + x) / ((1 - x^4) * (1 + x^4 - x^5)) in powers of x.

Offset 0, canonical program `A247918.P958938976408860390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1637 terms. -/
def A247918 (n : ℕ) : ℤ :=
  A247918.P958938976408860390.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1637 terms. -/
def A247918.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A247954.P11123436793123845115`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051027, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247954 (n : ℕ) : ℤ :=
  A247954.P11123436793123845115.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051027, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247954.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247971.P7265328738669470030

`A002265(A022853(n+1))+1`
-/

namespace A247971.P7265328738669470030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A022853 (n + 1)).toNat + 1

end

end A247971.P7265328738669470030

noncomputable section

/-- A247971: Least k such that 4*k/v(2*k)^2 - Pi < 1/n, where the sequence v is defined in Comments.

Offset 1, canonical program `A247971.P7265328738669470030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A247971 (n : ℕ) : ℤ :=
  A247971.P7265328738669470030.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A247971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247985.P168603640335283338

`A002264(A121384(3*(n+1))+4)`
-/

namespace A247985.P168603640335283338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A121384 (3 * (n + 1)) + 4).toNat

end

end A247985.P168603640335283338

noncomputable section

/-- A247985: Least number k such that product{(k^2 + h)/(k^2 - h), h = 1..k} - e < 1/n.

Offset 1, canonical program `A247985.P168603640335283338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A247985 (n : ℕ) : ℤ :=
  A247985.P168603640335283338.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A247985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247986.P10895639339843770612

`floor(A098005(3*n+2)/3)`
-/

namespace A247986.P10895639339843770612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A098005 (3 * n + 2) : ℚ) / 3⌋

end

end A247986.P10895639339843770612

noncomputable section

/-- A247986: Numbers k such that A247985(k+1) - A247985(k) = 2.

Offset 1, canonical program `A247986.P10895639339843770612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 400 terms. -/
def A247986 (n : ℕ) : ℤ :=
  A247986.P10895639339843770612.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 400 terms. -/
def A247986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248056.P11690070156917874997

`2*A091785(n+1)`
-/

namespace A248056.P11690070156917874997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091785 (n + 1)

end

end A248056.P11690070156917874997

noncomputable section

/-- A248056: Positions of 0,0 in the Thue-Morse sequence (A010060).

Offset 1, canonical program `A248056.P11690070156917874997`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091785, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248056 (n : ℕ) : ℤ :=
  A248056.P11690070156917874997.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091785, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248056.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A248086.P7756710170363644050

`A130472(n)+A023607(n)`
-/

namespace A248086.P7756710170363644050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 n + A023607 n

end

end A248086.P7756710170363644050

noncomputable section

/-- A248086: Sum of the eccentricities of all vertices in the Lucas cube Lambda(n).

Offset 0, canonical program `A248086.P7756710170363644050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A248086 (n : ℕ) : ℤ :=
  A248086.P7756710170363644050.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A248086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248104.P800852553454407909

`A081706(2*n+1)+gcd(2, n)`
-/

namespace A248104.P800852553454407909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081706 (2 * n + 1) + (Nat.gcd 2 n : ℤ)

end

end A248104.P800852553454407909

noncomputable section

/-- A248104: Positions of 0,1,0 in the Thue-Morse sequence (A010060).

Offset 1, canonical program `A248104.P800852553454407909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A248104 (n : ℕ) : ℤ :=
  A248104.P800852553454407909.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A248104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248111.P13117839986049929942

`A278814(A100775(n))`
-/

namespace A248111.P13117839986049929942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278814 (A100775 n).toNat

end

end A248111.P13117839986049929942

noncomputable section

/-- A248111: Least k such that ((k+2)/(k-2))^k - e^4 < 1/n.

Offset 1, canonical program `A248111.P13117839986049929942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A248111 (n : ℕ) : ℤ :=
  A248111.P13117839986049929942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A248111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248161.P1728053776115232359

`Δ[A129905(n)]`
-/

namespace A248161.P1728053776115232359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A248161.P1728053776115232359

noncomputable section

/-- A248161: Expansion of (2-x+x^2)/((1+x)*(1-3*x+x^2)).

Offset 0, canonical program `A248161.P1728053776115232359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A248161 (n : ℕ) : ℤ :=
  A248161.P1728053776115232359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A248161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248174.P9960539759282266398

`val(A089068(n)+1, 2)`
-/

namespace A248174.P9960539759282266398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A089068 n + 1).toNat 2

end

end A248174.P9960539759282266398

noncomputable section

/-- A248174: 2-adic order of the tribonacci sequence.

Offset 1, canonical program `A248174.P9960539759282266398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A248174 (n : ℕ) : ℤ :=
  (A248174.P9960539759282266398.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A248174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248221.P13614101816324531720

`(A142508(n+1)-1)/52`
-/

namespace A248221.P13614101816324531720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142508 (n + 1) - 1 : ℚ) / 52

end

end A248221.P13614101816324531720

noncomputable section

/-- A248221: Numbers m such that 52*m + 1 is prime.

Offset 1, canonical program `A248221.P13614101816324531720`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142508, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248221 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A248221.P13614101816324531720.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142508, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248221.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A248228.P7528585357857807524

`A248227(a(n-1)+4)+n` with `a(0)=1`
-/

namespace A248228.P7528585357857807524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A248227 (a (n - 1) + 4).toNat + (n : ℤ)

end

end A248228.P7528585357857807524

noncomputable section

/-- A248228: Numbers k such that A248227(k+1) = A248227(k).

Offset 1, canonical program `A248228.P7528585357857807524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A248228 (n : ℕ) : ℤ :=
  A248228.P7528585357857807524.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A248228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248229.P17492069791970711960

`record[Δ[2*A248227(n+2)]+n]`
-/

namespace A248229.P17492069791970711960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A248227 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248229.P17492069791970711960

noncomputable section

/-- A248229: Numbers k such that A248227(k+1) = A248227(k) + 1.

Offset 1, canonical program `A248229.P17492069791970711960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 713 terms. -/
def A248229 (n : ℕ) : ℤ :=
  A248229.P17492069791970711960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 713 terms. -/
def A248229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248230.P9224601394266845668

`floor(A027602(2*(n+1))/8)`
-/

namespace A248230.P9224601394266845668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027602 (2 * (n + 1)) : ℚ) / 8⌋

end

end A248230.P9224601394266845668

noncomputable section

/-- A248230: a(n) = floor(1/(zeta(4) - Sum_{h=1..n} 1/h^4)).

Offset 1, canonical program `A248230.P9224601394266845668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A248230 (n : ℕ) : ℤ :=
  A248230.P9224601394266845668.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A248230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248232.P4856940846005422243

`A248231(A001954(n))+n`
-/

namespace A248232.P4856940846005422243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A001954 n).toNat + (n : ℤ)

end

end A248232.P4856940846005422243

noncomputable section

/-- A248232: Numbers k such that A248231(k+1) = A248231(k).

Offset 1, canonical program `A248232.P4856940846005422243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A248232 (n : ℕ) : ℤ :=
  A248232.P4856940846005422243.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A248232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248336.P3979322780880307297

`∪[A178501(2*n), A178501(2*n)+A002276(n)]`
-/

namespace A248336.P3979322780880307297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 (2 * n) + A002276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A248336.P3979322780880307297

noncomputable section

/-- A248336: Smallest number m such that the Levenshtein distance of m and its reversal equals n.

Offset 0, canonical program `A248336.P3979322780880307297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A248336 (n : ℕ) : ℤ :=
  (A248336.P3979322780880307297.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A248336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248429.P13996543522747922926

`A072944(n+7)+5`
-/

namespace A248429.P13996543522747922926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072944 (n + 7) + 5

end

end A248429.P13996543522747922926

noncomputable section

/-- A248429: Number of length n+2 0..4 arrays with every three consecutive terms having the sum of some two elements equal to twice the third.

Offset 1, canonical program `A248429.P13996543522747922926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 492 terms. -/
def A248429 (n : ℕ) : ℤ :=
  A248429.P13996543522747922926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 492 terms. -/
def A248429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248499.P16177502757618689065

`eq[1, gcd(n, A059995(n))]`
-/

namespace A248499.P16177502757618689065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A059995 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248499.P16177502757618689065

noncomputable section

/-- A248499: Numbers m that are coprime to A059995(m): floor(m/10).

Offset 1, canonical program `A248499.P16177502757618689065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5823 terms. -/
def A248499 (n : ℕ) : ℤ :=
  (A248499.P16177502757618689065.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5823 terms. -/
def A248499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248501.P6617891412935947150

`eq[1, gcd(n, A002265(A002265(n)))]`
-/

namespace A248501.P6617891412935947150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A002265 (A002265 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248501.P6617891412935947150

noncomputable section

/-- A248501: Numbers m that are coprime to floor(m/16).

Offset 1, canonical program `A248501.P6617891412935947150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5839 terms. -/
def A248501 (n : ℕ) : ℤ :=
  (A248501.P6617891412935947150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5839 terms. -/
def A248501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248522.P5285374385251950593

`A097992(A097992(n)+A008589(3*n+2))`
-/

namespace A248522.P5285374385251950593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A097992 n + A008589 (3 * n + 2)).toNat

end

end A248522.P5285374385251950593

noncomputable section

/-- A248522: Beatty sequence for 1/(1-exp(-1/3)): a(n) = floor(n/(1-exp(-1/3))).

Offset 1, canonical program `A248522.P5285374385251950593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A248522 (n : ℕ) : ℤ :=
  A248522.P5285374385251950593.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A248522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248527.P3361420579525358352

`∩[A155086(n+1), A298784(n)]`
-/

namespace A248527.P3361420579525358352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298784 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248527.P3361420579525358352

noncomputable section

/-- A248527: Numbers k such that the smallest prime divisor of k^2+1 is 13.

Offset 1, canonical program `A248527.P3361420579525358352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1538 terms. -/
def A248527 (n : ℕ) : ℤ :=
  (A248527.P3361420579525358352.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1538 terms. -/
def A248527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248533.P12172224158410862603

`6*A288732(n)+89`
-/

namespace A248533.P12172224158410862603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A288732 n + 89

end

end A248533.P12172224158410862603

noncomputable section

/-- A248533: Number of length n+3 0..4 arrays with every four consecutive terms having the sum of some three elements equal to three times the fourth.

Offset 1, canonical program `A248533.P12172224158410862603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1307 terms. -/
def A248533 (n : ℕ) : ℤ :=
  A248533.P12172224158410862603.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1307 terms. -/
def A248533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248740.P10624449381643573524

`A000045(n)%1000`
-/

namespace A248740.P10624449381643573524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 n) 1000

end

end A248740.P10624449381643573524

noncomputable section

/-- A248740: a(n) = Fibonacci(n) mod 1000.

Offset 0, canonical program `A248740.P10624449381643573524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A248740 (n : ℕ) : ℤ :=
  A248740.P10624449381643573524.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A248740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248793.P8733704059332624800

`p?[A000203(n+1)-1]`
-/

namespace A248793.P8733704059332624800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248793.P8733704059332624800

noncomputable section

/-- A248793: Sigma(n) - 1 for n such that sigma(n) - 1 is prime.

Offset 1, canonical program `A248793.P8733704059332624800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248793 (n : ℕ) : ℤ :=
  A248793.P8733704059332624800.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248875.P14786987382872610295

`gcd(2, A156253(n))+3*a(n-1)` with `a(0)=0`
-/

namespace A248875.P14786987382872610295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.gcd 2 (A156253 n) + 3 * a (n - 1)

end

end A248875.P14786987382872610295

noncomputable section

/-- A248875: First n elements of the Kolakoski sequence read as a ternary number.

Offset 0, canonical program `A248875.P14786987382872610295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A248875 (n : ℕ) : ℤ :=
  (A248875.P14786987382872610295.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A248875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248911.P12540125950108847035

`floor(A000040(n+1)-(n+2)*log(n+1))`
-/

namespace A248911.P12540125950108847035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℝ) - (n + 2 : ℝ) * Real.log (n + 1 : ℝ)⌋

end

end A248911.P12540125950108847035

noncomputable section

/-- A248911: a(n) = floor( prime(n) - (n+1)*log(n) ).

Offset 1, canonical program `A248911.P12540125950108847035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248911 (n : ℕ) : ℤ :=
  A248911.P12540125950108847035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248924.P3410400950287672989

`abs(A061084(n+1)-n)`
-/

namespace A248924.P3410400950287672989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A061084 (n + 1) - (n : ℤ)|

end

end A248924.P3410400950287672989

noncomputable section

/-- A248924: Sequence derived from arithmetic relations between powers of phi (A001622): a(n) = phi^n - (-1)^n * (n - phi^-n).

Offset 0, canonical program `A248924.P3410400950287672989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A248924 (n : ℕ) : ℤ :=
  A248924.P3410400950287672989.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A248924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249073.P7124989258507197905

`∪[2*(n+1)^6, ∑[A022522(n)]]`
-/

namespace A249073.P7124989258507197905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249073.P7124989258507197905

noncomputable section

/-- A249073: Ordered union of the sets {h^6, h >=1} and {2*k^6, k >=1}.

Offset 1, canonical program `A249073.P7124989258507197905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249073 (n : ℕ) : ℤ :=
  (A249073.P7124989258507197905.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249097.P355184434680390509

`∪[3*(n+1)^6, Δ[A000540(n)]]`
-/

namespace A249097.P355184434680390509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1) ^ 6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000540 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249097.P355184434680390509

noncomputable section

/-- A249097: Ordered union of the sets {h^6, h >=1} and {3*k^6, k >=1}.

Offset 1, canonical program `A249097.P355184434680390509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249097 (n : ℕ) : ℤ :=
  (A249097.P355184434680390509.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249115.P7089744513325153682

`∑[2-A114986(n)]`
-/

namespace A249115.P7089744513325153682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A114986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249115.P7089744513325153682

noncomputable section

/-- A249115: Floor(r*n), where r = (5 - sqrt(5))/2; the Beatty complement of A003231.

Offset 1, canonical program `A249115.P7089744513325153682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249115 (n : ℕ) : ℤ :=
  A249115.P7089744513325153682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249116.P1219359969636568688

`∪[32*A001014(n+1), A001014(n+1)]`
-/

namespace A249116.P1219359969636568688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A001014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249116.P1219359969636568688

noncomputable section

/-- A249116: Ordered union of the sets {h^6, h >=1} and {32*k^6, k >=1}.

Offset 1, canonical program `A249116.P1219359969636568688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249116 (n : ℕ) : ℤ :=
  (A249116.P1219359969636568688.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249190.P4298636297508026740

`2*A001592(n+12)`
-/

namespace A249190.P4298636297508026740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001592 (n + 12)

end

end A249190.P4298636297508026740

noncomputable section

/-- A249190: Number of length n+6 0..1 arrays with no seven consecutive terms having four times the sum of any three elements equal to three times the sum of the remaining four.

Offset 1, canonical program `A249190.P4298636297508026740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A249190 (n : ℕ) : ℤ :=
  A249190.P4298636297508026740.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A249190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249291.P11440317869399723647

`(n+2)^4-A248538(n+1)`
-/

namespace A249291.P11440317869399723647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 4 : ℤ) - A248538 (n + 1)

end

end A249291.P11440317869399723647

noncomputable section

/-- A249291: Number of length 1+3 0..n arrays with no four consecutive terms having the sum of any three elements equal to three times the fourth.

Offset 1, canonical program `A249291.P11440317869399723647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249291 (n : ℕ) : ℤ :=
  A249291.P11440317869399723647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249310.P1398101675667847965

`∪[A190978(n+1), Δ[A190978(n)]]`
-/

namespace A249310.P1398101675667847965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190978 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190978 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249310.P1398101675667847965

noncomputable section

/-- A249310: Expansion of x*(1+7*x-6*x^3)/(1-8*x^2+6*x^4).

Offset 1, canonical program `A249310.P1398101675667847965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A249310 (n : ℕ) : ℤ :=
  (A249310.P1398101675667847965.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A249310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249311.P16437388116820410257

`∪[A190990(n+1), Δ[A190990(n)]]`
-/

namespace A249311.P16437388116820410257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190990 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190990 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249311.P16437388116820410257

noncomputable section

/-- A249311: Expansion of x*(1+9*x-8*x^3)/(1-10*x^2+8*x^4).

Offset 1, canonical program `A249311.P16437388116820410257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A249311 (n : ℕ) : ℤ :=
  (A249311.P16437388116820410257.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A249311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249577.P2238030843788059114

`∑[A033999(n)*A092550(n+4)]`
-/

namespace A249577.P2238030843788059114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A092550 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249577.P2238030843788059114

noncomputable section

/-- A249577: List of triples (r,s,t): the matrix M = [[1,4,4][1,3,2][1,2,1]] is raised to successive negative powers, then (r,s,t) are the square roots of M[3,1], M[1,1], M[1,3] respectively.

Offset 0, canonical program `A249577.P2238030843788059114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 783 terms. -/
def A249577 (n : ℕ) : ℤ :=
  A249577.P2238030843788059114.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 783 terms. -/
def A249577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249669.P11307284954815266354

`floor(A000040(n+1)^ratio[n+1])`
-/

namespace A249669.P11307284954815266354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)⌋

end

end A249669.P11307284954815266354

noncomputable section

/-- A249669: a(n) = floor(prime(n)^(1+1/n)).

Offset 1, canonical program `A249669.P11307284954815266354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249669 (n : ℕ) : ℤ :=
  A249669.P11307284954815266354.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249691.P11950307438969305594

`(5*n+2)*A001764(n)`
-/

namespace A249691.P11950307438969305594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 2 : ℤ) * A001764 n

end

end A249691.P11950307438969305594

noncomputable section

/-- A249691: a(n) = binomial(3*n,n)*(5*n+2)/(2*n+1).

Offset 0, canonical program `A249691.P11950307438969305594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A249691 (n : ℕ) : ℤ :=
  A249691.P11950307438969305594.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A249691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249908.P11149735627571001488

`Δ[A098331(n)/(2*(-1)^n)]`
-/

namespace A249908.P11149735627571001488
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098331 n : ℚ) / (2 * (-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249908.P11149735627571001488

noncomputable section

/-- A249908: G.f. (1-x)/(2*sqrt(5*x^2 + 2*x + 1)) - 1/2.

Offset 1, canonical program `A249908.P11149735627571001488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A249908 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A249908.P11149735627571001488.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A249908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250015.P17769400620421974705

`20*A085465(n+1)`
-/

namespace A250015.P17769400620421974705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * A085465 (n + 1)

end

end A250015.P17769400620421974705

noncomputable section

/-- A250015: Number of length 1+5 0..n arrays with no six consecutive terms having the maximum of any three terms equal to the minimum of the remaining three terms.

Offset 1, canonical program `A250015.P17769400620421974705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250015 (n : ℕ) : ℤ :=
  A250015.P17769400620421974705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250060.P12003600613952037620

`∑[∑[21*A008515(n)]]`
-/

namespace A250060.P12003600613952037620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * A008515 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250060.P12003600613952037620

noncomputable section

/-- A250060: Number of length 1+6 0..n arrays with no seven consecutive terms having the maximum of any two terms equal to the minimum of the remaining five terms.

Offset 1, canonical program `A250060.P12003600613952037620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250060 (n : ℕ) : ℤ :=
  A250060.P12003600613952037620.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250082.P16682441175446692055

`(n+2)^6-A249961(n+1)`
-/

namespace A250082.P16682441175446692055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 6 : ℤ) - A249961 (n + 1)

end

end A250082.P16682441175446692055

noncomputable section

/-- A250082: Number of length 1+5 0..n arrays with every six consecutive terms having the maximum of some two terms equal to the minimum of the remaining four terms.

Offset 1, canonical program `A250082.P16682441175446692055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250082 (n : ℕ) : ℤ :=
  A250082.P16682441175446692055.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250092.P12769020912072488549

`C(A000040(n+5), A000040(n+1))`
-/

namespace A250092.P12769020912072488549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 5)).toNat (A000040 (n + 1)).toNat

end

end A250092.P12769020912072488549

noncomputable section

/-- A250092: a(n) = binomial( prime(n+4), prime(n) ).

Offset 1, canonical program `A250092.P12769020912072488549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 279 terms. -/
def A250092 (n : ℕ) : ℤ :=
  (A250092.P12769020912072488549.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 279 terms. -/
def A250092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250102.P1601023286299333687

`Δ[A006495(n)]²`
-/

namespace A250102.P1601023286299333687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A250102.P1601023286299333687

noncomputable section

/-- A250102: a(n) = 2*5^n - (1+2i)^(2n) - (1-2i)^(2n) where i = sqrt(-1).

Offset 0, canonical program `A250102.P1601023286299333687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A250102 (n : ℕ) : ℤ :=
  A250102.P1601023286299333687.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A250102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250120.P17005803601232239086

`A022144(n)-2*A047486(n+1)-A244895(n)`
-/

namespace A250120.P17005803601232239086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - 2 * A047486 (n + 1) - A244895 n

end

end A250120.P17005803601232239086

noncomputable section

/-- A250120: Coordination sequence for planar net 3.3.3.3.6 (also called the fsz net).

Offset 0, canonical program `A250120.P17005803601232239086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250120 (n : ℕ) : ℤ :=
  A250120.P17005803601232239086.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250313.P1908437795509211882

`A093178(n+4)+∑[A132732(n)]`
-/

namespace A250313.P1908437795509211882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250313.P1908437795509211882

noncomputable section

/-- A250313: Number of length n+2 0..1 arrays with the sum of second differences squared multiplied by some arrangement of +-1 equal to zero.

Offset 1, canonical program `A250313.P1908437795509211882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A250313 (n : ℕ) : ℤ :=
  A250313.P1908437795509211882.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A250313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250426.P3029081105641093597

`A008805(n+2)*A008805(n+3)*A002620(n+4)`
-/

namespace A250426.P3029081105641093597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (n + 2) * A008805 (n + 3) * A002620 (n + 4)

end

end A250426.P3029081105641093597

noncomputable section

/-- A250426: Number of (n+1)X(2+1) 0..1 arrays with nondecreasing sum of every two consecutive values in every row and column.

Offset 1, canonical program `A250426.P3029081105641093597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A250426 (n : ℕ) : ℤ :=
  A250426.P3029081105641093597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A250426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250431.P15289641073879805333

`(A189976(n+10)*A189976(n+11))²`
-/

namespace A250431.P15289641073879805333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A189976 (n + 10) * A189976 (n + 11)) ^ 2

end

end A250431.P15289641073879805333

noncomputable section

/-- A250431: Number of (n+1)X(7+1) 0..1 arrays with nondecreasing sum of every two consecutive values in every row and column.

Offset 1, canonical program `A250431.P15289641073879805333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A250431 (n : ℕ) : ℤ :=
  A250431.P15289641073879805333.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A250431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250605.P9853643777940156950

`A308579(n+3)+(n+2)²`
-/

namespace A250605.P9853643777940156950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308579 (n + 3) + ((n + 2) ^ 2 : ℤ)

end

end A250605.P9853643777940156950

noncomputable section

/-- A250605: Number of (n+1) X (2+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)-x(i-1,j) in the j direction.

Offset 1, canonical program `A250605.P9853643777940156950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A250605 (n : ℕ) : ℤ :=
  A250605.P9853643777940156950.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A250605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250613.P2999142405487198393

`(∑[A094687(n+4)]+3)²`
-/

namespace A250613.P2999142405487198393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094687 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 3) ^ 2

end

end A250613.P2999142405487198393

noncomputable section

/-- A250613: Number of (n+1)X(1+1) 0..2 arrays with nondecreasing maximum of every two consecutive values in every row and column.

Offset 1, canonical program `A250613.P2999142405487198393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A250613 (n : ℕ) : ℤ :=
  A250613.P2999142405487198393.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A250613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250621.P17073922274883011414

`floor((n+1)*log(A000040(n+1)))`
-/

namespace A250621.P17073922274883011414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.log (A000040 (n + 1) : ℝ)⌋

end

end A250621.P17073922274883011414

noncomputable section

/-- A250621: a(n) = floor(n*log(prime(n))).

Offset 1, canonical program `A250621.P17073922274883011414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250621 (n : ℕ) : ℤ :=
  A250621.P17073922274883011414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250652.P6248837234100144830

`(n+2)*A047859(n+1)+1`
-/

namespace A250652.P6248837234100144830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A047859 (n + 1) + 1

end

end A250652.P6248837234100144830

noncomputable section

/-- A250652: Number of (n+1)X(n+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

Offset 1, canonical program `A250652.P6248837234100144830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A250652 (n : ℕ) : ℤ :=
  A250652.P6248837234100144830.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A250652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250661.P10538100119579030217

`2*A250660(n+1)+1+n`
-/

namespace A250661.P10538100119579030217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A250660 (n + 1) + 1 + (n : ℤ)

end

end A250661.P10538100119579030217

noncomputable section

/-- A250661: Number of (7+1) X (n+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

Offset 1, canonical program `A250661.P10538100119579030217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250661 (n : ℕ) : ℤ :=
  A250661.P10538100119579030217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250749.P8795832410189814382

`A122695(n+5)+1`
-/

namespace A250749.P8795832410189814382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122695 (n + 5) + 1

end

end A250749.P8795832410189814382

noncomputable section

/-- A250749: Number of (n+1) X (2+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

Offset 1, canonical program `A250749.P8795832410189814382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A250749 (n : ℕ) : ℤ :=
  A250749.P8795832410189814382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A250749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250751.P8916526449828887815

`5*A056182(n+3)+13`
-/

namespace A250751.P8916526449828887815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A056182 (n + 3) + 13

end

end A250751.P8916526449828887815

noncomputable section

/-- A250751: Number of (n+1) X (4+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

Offset 1, canonical program `A250751.P8916526449828887815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A250751 (n : ℕ) : ℤ :=
  A250751.P8916526449828887815.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A250751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250758.P4367772301103409502

`A158493(2*(n+2))+∑[a(n-1)+13]` with `a(0)=11`
-/

namespace A250758.P4367772301103409502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f1 =>
  f1 (n - 1) + 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158493 (2 * (n + 2)) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A250758.P4367772301103409502

noncomputable section

/-- A250758: Number of (3+1) X (n+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

Offset 1, canonical program `A250758.P4367772301103409502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A250758 (n : ℕ) : ℤ :=
  A250758.P4367772301103409502.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A250758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250765.P1461984065457269994

`A017233(n+3)+A052996(n+4)+n`
-/

namespace A250765.P1461984065457269994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 (n + 3) + (A052996 (n + 4) + (n : ℤ))

end

end A250765.P1461984065457269994

noncomputable section

/-- A250765: Number of (n+1) X (4+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

Offset 1, canonical program `A250765.P1461984065457269994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A250765 (n : ℕ) : ℤ :=
  A250765.P1461984065457269994.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A250765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250767.P16041109430929980968

`A161714(2*n+7)+A161714(n)+A000079(n+6)`
-/

namespace A250767.P16041109430929980968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161714 (2 * n + 7) + (A161714 n + A000079 (n + 6))

end

end A250767.P16041109430929980968

noncomputable section

/-- A250767: Number of (n+1) X (6+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

Offset 1, canonical program `A250767.P16041109430929980968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A250767 (n : ℕ) : ℤ :=
  A250767.P16041109430929980968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A250767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250771.P17376614650437511443

`A131924(n+4)+4*n`
-/

namespace A250771.P17376614650437511443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131924 (n + 4) + (4 * n : ℤ)

end

end A250771.P17376614650437511443

noncomputable section

/-- A250771: Number of (3+1) X (n+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

Offset 1, canonical program `A250771.P17376614650437511443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A250771 (n : ℕ) : ℤ :=
  A250771.P17376614650437511443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A250771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250778.P5723308156067218095

`A247618(n+3)+1`
-/

namespace A250778.P5723308156067218095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247618 (n + 3) + 1

end

end A250778.P5723308156067218095

noncomputable section

/-- A250778: Number of (n+1) X (3+1) 0..1 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

Offset 1, canonical program `A250778.P5723308156067218095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A250778 (n : ℕ) : ℤ :=
  A250778.P5723308156067218095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A250778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250814.P15297801385963585773

`A016755(n+2)+A002378(n+1)²`
-/

namespace A250814.P15297801385963585773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 (n + 2) + A002378 (n + 1) ^ 2

end

end A250814.P15297801385963585773

noncomputable section

/-- A250814: Number of (2+1) X (n+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

Offset 1, canonical program `A250814.P15297801385963585773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A250814 (n : ℕ) : ℤ :=
  A250814.P15297801385963585773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A250814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250820.P13041496644950716169

`(2*A020732(n))^3`
-/

namespace A250820.P13041496644950716169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A020732 n) ^ 3

end

end A250820.P13041496644950716169

noncomputable section

/-- A250820: Number of (n+2) X (1+2) 0..1 arrays with nondecreasing maximum minus minimum of every three consecutive values in every row and column.

Offset 1, canonical program `A250820.P13041496644950716169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A250820 (n : ℕ) : ℤ :=
  A250820.P13041496644950716169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A250820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250870.P6673347047517117770

`2*A016208(n+2)`
-/

namespace A250870.P6673347047517117770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016208 (n + 2)

end

end A250870.P6673347047517117770

noncomputable section

/-- A250870: Number of (n+1) X (1+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

Offset 1, canonical program `A250870.P6673347047517117770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A250870 (n : ℕ) : ℤ :=
  A250870.P6673347047517117770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A250870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251122.P1468921088716064169

`∑[n]+3*A111314(n+3)`
-/

namespace A251122.P1468921088716064169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 3 * A111314 (n + 3)

end

end A251122.P1468921088716064169

noncomputable section

/-- A251122: Number of (n+1) X (2+1) 0..1 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

Offset 1, canonical program `A251122.P1468921088716064169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A251122 (n : ℕ) : ℤ :=
  A251122.P1468921088716064169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A251122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251203.P14081091797382294216

`(A069306(n+3)+A000079(n+3))*A000079(n+1)`
-/

namespace A251203.P14081091797382294216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A069306 (n + 3) + A000079 (n + 3)) * A000079 (n + 1)

end

end A251203.P14081091797382294216

noncomputable section

/-- A251203: Number of (n+1) X (1+1) 0..2 arrays with every 2 X 2 subblock summing to a nonzero multiple of 2.

Offset 1, canonical program `A251203.P14081091797382294216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A251203 (n : ℕ) : ℤ :=
  A251203.P14081091797382294216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A251203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251260.P11882481288067174509

`∑[A001399(gcd(n, ∑[n]))]`
-/

namespace A251260.P11882481288067174509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251260.P11882481288067174509

noncomputable section

/-- A251260: Expansion of (1 + 2*x + x^2 + x^3) / ((1 - x^2)^2 * (1 - x^3) * (1 - x^4)) in powers of x.

Offset 0, canonical program `A251260.P11882481288067174509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A251260 (n : ℕ) : ℤ :=
  A251260.P11882481288067174509.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A251260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251269.P18360454534757340632

`∑[A027180(n+2)]+8`
-/

namespace A251269.P18360454534757340632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027180 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8

end

end A251269.P18360454534757340632

noncomputable section

/-- A251269: Number of (2+1) X (n+1) 0..1 arrays with no 2 X 2 subblock having x11-x00 less than x10-x01.

Offset 1, canonical program `A251269.P18360454534757340632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A251269 (n : ℕ) : ℤ :=
  A251269.P18360454534757340632.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A251269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251421.P16186291301098778423

`2*Δ[A051437(n+1)]`
-/

namespace A251421.P16186291301098778423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A251421.P16186291301098778423

noncomputable section

/-- A251421: Number of length n+2 0..1 arrays with the sum of the maximum minus twice the median plus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

Offset 1, canonical program `A251421.P16186291301098778423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A251421 (n : ℕ) : ℤ :=
  A251421.P16186291301098778423.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A251421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251710.P11301060952533710946

`Δ[A122189(n)]`
-/

namespace A251710.P11301060952533710946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251710.P11301060952533710946

noncomputable section

/-- A251710: 7-step Fibonacci sequence starting with (0,0,0,0,0,1,0).

Offset 0, canonical program `A251710.P11301060952533710946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251710 (n : ℕ) : ℤ :=
  A251710.P11301060952533710946.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251793.P15173361847487606656

`2*A077288(A042948(n))`
-/

namespace A251793.P15173361847487606656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077288 (A042948 n).toNat

end

end A251793.P15173361847487606656

noncomputable section

/-- A251793: Numbers n such that the sum of the triangular numbers T(n) and T(n+1) is equal to the sum of the octagonal numbers N(m) and N(m+1) for some m.

Offset 1, canonical program `A251793.P15173361847487606656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A251793 (n : ℕ) : ℤ :=
  A251793.P15173361847487606656.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A251793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251853.P16956309281830742699

`2*eq[A010888(n), A092196(A092196(n))]`
-/

namespace A251853.P16956309281830742699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092196 (A092196 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A251853.P16956309281830742699

noncomputable section

/-- A251853: Nonnegative numbers n with all even digits such that the digital sum of the digits' sum is even.

Offset 1, canonical program `A251853.P16956309281830742699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A251853 (n : ℕ) : ℤ :=
  (A251853.P16956309281830742699.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A251853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251928.P15244553157165878968

`A077943(n)+2^(n+2)`
-/

namespace A251928.P15244553157165878968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077943 n + (2 ^ (n + 2) : ℤ)

end

end A251928.P15244553157165878968

noncomputable section

/-- A251928: Number of length n+2 0..1 arrays with the sum of the maximum minus the median of adjacent triples multiplied by some arrangement of +-1 equal to zero.

Offset 1, canonical program `A251928.P15244553157165878968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A251928 (n : ℕ) : ℤ :=
  A251928.P15244553157165878968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A251928.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A252698.P9922927271270455625

`5*a(n-1)-a(A065033(n))` with `a(0)=0, a(1)=5`
-/

namespace A252698.P9922927271270455625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  5 * a (n - 1) - a (A065033 n).toNat

end

end A252698.P9922927271270455625

noncomputable section

/-- A252698: Number of strings of length n over a 5-letter alphabet that do not begin with a palindrome.

Offset 0, canonical program `A252698.P9922927271270455625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A252698 (n : ℕ) : ℤ :=
  A252698.P9922927271270455625.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A252698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252815.P8172004683234130111

`A202752(n+2)+C(n, 2)`
-/

namespace A252815.P8172004683234130111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202752 (n + 2) + (Nat.choose n 2 : ℤ)

end

end A252815.P8172004683234130111

noncomputable section

/-- A252815: Number of n X 3 nonnegative integer arrays with upper left 0 and every value within 2 of its city block distance from the upper left and every value increasing by 0 or 1 with every step right or down.

Offset 1, canonical program `A252815.P8172004683234130111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A252815 (n : ℕ) : ℤ :=
  A252815.P8172004683234130111.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A252815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252822.P3302283567831736258

`∑[A056078(n+1)+∑[∑[n+1]]]+1`
-/

namespace A252822.P3302283567831736258
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056078 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A252822.P3302283567831736258

noncomputable section

/-- A252822: Number of n X 2 nonnegative integer arrays with upper left 0 and every value within 3 of its city block distance from the upper left and every value increasing by 0 or 1 with every step right or down.

Offset 1, canonical program `A252822.P3302283567831736258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252822 (n : ℕ) : ℤ :=
  A252822.P3302283567831736258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253012.P14186681981437331744

`A000933(n+5)`
-/

namespace A253012.P14186681981437331744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000933 (n + 5)

end

end A253012.P14186681981437331744

noncomputable section

/-- A253012: a(n) = ceiling( (n+1) * (n+2) / 12).

Offset 0, canonical program `A253012.P14186681981437331744`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253012 (n : ℕ) : ℤ :=
  A253012.P14186681981437331744.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253012.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253029.P15969757418448034900

`3*A180036(n+3)`
-/

namespace A253029.P15969757418448034900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A180036 (n + 3)

end

end A253029.P15969757418448034900

noncomputable section

/-- A253029: Number of (n+2) X (1+2) 0..2 arrays with every consecutive three elements in every row and column having exactly two distinct values, and new values 0 upwards introduced in row major order.

Offset 1, canonical program `A253029.P15969757418448034900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A253029 (n : ℕ) : ℤ :=
  A253029.P15969757418448034900.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A253029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253092.P13330975078839585840

`A047212(n+1)%A120514(n+1)`
-/

namespace A253092.P13330975078839585840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047212 (n + 1)) (A120514 (n + 1))

end

end A253092.P13330975078839585840

noncomputable section

/-- A253092: Log_3(A133579(n)).

Offset 0, canonical program `A253092.P13330975078839585840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3001 terms. -/
def A253092 (n : ℕ) : ℤ :=
  A253092.P13330975078839585840.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3001 terms. -/
def A253092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253122.P10577464860156726926

`4*A051437(n)`
-/

namespace A253122.P10577464860156726926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A051437 n

end

end A253122.P10577464860156726926

noncomputable section

/-- A253122: Number of length n+2 0..1 arrays with the sum of medians of adjacent triples multiplied by some arrangement of +-1 equal to zero.

Offset 1, canonical program `A253122.P10577464860156726926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A253122 (n : ℕ) : ℤ :=
  A253122.P10577464860156726926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A253122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253139.P10614688840805837751

`∏{e}[n+1, A003418(#+1)]`
-/

namespace A253139.P10614688840805837751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A003418 (Nat.factorization (f1 n) p + 1)

end

end A253139.P10614688840805837751

noncomputable section

/-- A253139: a(n) = lcm_{d|n} tau(d), where tau(d) represents the number of divisors of d (A000005(d)).

Offset 1, canonical program `A253139.P10614688840805837751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253139 (n : ℕ) : ℤ :=
  A253139.P10614688840805837751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253156.P13647116672860416168

`A253155(n+1)+72`
-/

namespace A253156.P13647116672860416168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253155 (n + 1) + 72

end

end A253156.P13647116672860416168

noncomputable section

/-- A253156: Number of (n+1) X (5+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally and vertically.

Offset 1, canonical program `A253156.P13647116672860416168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A253156 (n : ℕ) : ℤ :=
  A253156.P13647116672860416168.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A253156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253206.P16651869948344728529

`A117444(A007426(n+1))`
-/

namespace A253206.P16651869948344728529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117444 (A007426 (n + 1)).toNat

end

end A253206.P16651869948344728529

noncomputable section

/-- A253206: Coefficients of the Dirichlet series for zeta(5*s)/zeta(s).

Offset 1, canonical program `A253206.P16651869948344728529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253206 (n : ℕ) : ℤ :=
  A253206.P16651869948344728529.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253304.P17523641261589992296

`∑[A010684(n)*A070997(n)]`
-/

namespace A253304.P17523641261589992296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A070997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253304.P17523641261589992296

noncomputable section

/-- A253304: Numbers n such that the sum of the heptagonal numbers H(n) and H(n+1) is equal to the octagonal number O(m) for some m.

Offset 1, canonical program `A253304.P17523641261589992296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A253304 (n : ℕ) : ℤ :=
  A253304.P17523641261589992296.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A253304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253432.P3197369354590611943

`A253431(n+1)+72`
-/

namespace A253432.P3197369354590611943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253431 (n + 1) + 72

end

end A253432.P3197369354590611943

noncomputable section

/-- A253432: Number of (n+1) X (5+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

Offset 1, canonical program `A253432.P3197369354590611943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A253432 (n : ℕ) : ℤ :=
  A253432.P3197369354590611943.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A253432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253439.P15114041342093129535

`A253438(n+1)+72`
-/

namespace A253439.P15114041342093129535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253438 (n + 1) + 72

end

end A253439.P15114041342093129535

noncomputable section

/-- A253439: Number of (5+1) X (n+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

Offset 1, canonical program `A253439.P15114041342093129535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A253439 (n : ℕ) : ℤ :=
  A253439.P15114041342093129535.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A253439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253445.P12022600650281215413

`(n+1)*(A053061(n+1)-(n²+n))`
-/

namespace A253445.P12022600650281215413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A053061 (n + 1) - (n ^ 2 + n : ℤ))

end

end A253445.P12022600650281215413

noncomputable section

/-- A253445: a(n) = concatenation of n^2 with itself.

Offset 1, canonical program `A253445.P12022600650281215413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253445 (n : ℕ) : ℤ :=
  A253445.P12022600650281215413.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253610.P11264072332491747725

`record[A000040(n+1)-dr(5*A000040(n+1))]`
-/

namespace A253610.P11264072332491747725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (SequenceMachineLib.digitalRoot (5 * A000040 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253610.P11264072332491747725

noncomputable section

/-- A253610: Numbers n with property that the sum of n and the digital root of n is prime.

Offset 1, canonical program `A253610.P11264072332491747725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A253610 (n : ℕ) : ℤ :=
  A253610.P11264072332491747725.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A253610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253638.P15682283703354979589

`∑{digits}[A000351(n), A000007(#)]`
-/

namespace A253638.P15682283703354979589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000007 x).sum

end

end A253638.P15682283703354979589

noncomputable section

/-- A253638: Number of zeros in the decimal expansion of 5^n.

Offset 0, canonical program `A253638.P15682283703354979589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A253638 (n : ℕ) : ℤ :=
  A253638.P15682283703354979589.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A253638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253671.P901294555430686072

`ceil(or(3, 7*n²)/A017461(n))`
-/

namespace A253671.P901294555430686072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 3 (7 * n ^ 2) : ℚ) / (A017461 n : ℚ)⌉

end

end A253671.P901294555430686072

noncomputable section

/-- A253671: a(n) = floor(A000111(n)/A000111(n-1)).

Offset 1, canonical program `A253671.P901294555430686072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253671 (n : ℕ) : ℤ :=
  A253671.P901294555430686072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253673.P9010123248997009526

`A129444(A042963(n+2))`
-/

namespace A253673.P9010123248997009526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129444 (A042963 (n + 2)).toNat

end

end A253673.P9010123248997009526

noncomputable section

/-- A253673: Indices of centered triangular numbers (A005448) that are also centered octagonal numbers (A016754).

Offset 1, canonical program `A253673.P9010123248997009526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A253673 (n : ℕ) : ℤ :=
  A253673.P9010123248997009526.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A253673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253674.P14966502823909885052

`round(Δ[A004189(n)/A000034(n)])`
-/

namespace A253674.P14966502823909885052
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004189 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A253674.P14966502823909885052

noncomputable section

/-- A253674: Indices of centered octagonal numbers (A016754) which are also centered triangular numbers (A005448).

Offset 1, canonical program `A253674.P14966502823909885052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A253674 (n : ℕ) : ℤ :=
  A253674.P14966502823909885052.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A253674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253680.P4101959214351850574

`(A001844(n+1)-1)*A193250(n+2)`
-/

namespace A253680.P4101959214351850574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001844 (n + 1) - 1) * A193250 (n + 2)

end

end A253680.P4101959214351850574

noncomputable section

/-- A253680: Numbers c(n) whose square are equal to the sum of an odd number M of consecutive cubed integers b^3 + (b+1)^3 + ... + (b+M-1)^3 = c(n)^2, starting at b(n) (A253679).

Offset 1, canonical program `A253680.P4101959214351850574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A253680 (n : ℕ) : ℤ :=
  A253680.P4101959214351850574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A253680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253718.P7304962258111176939

`a(A002264(n))+n²%3+2` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A253718.P7304962258111176939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (A002264 n).toNat + (n ^ 2 % 3 + 2)

end

end A253718.P7304962258111176939

noncomputable section

/-- A253718: Number h such that (h,0) is n steps from (0,0), where steps are as follows: (x,y)->(x-r, y) if r > 0, and (x,y)->(y, r/3) otherwise, where r = x mod 3.

Offset 0, canonical program `A253718.P7304962258111176939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A253718 (n : ℕ) : ℤ :=
  (A253718.P7304962258111176939.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A253718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253779.P12743486929630698630

`A027480(A032766(n))*A257083(n)`
-/

namespace A253779.P12743486929630698630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 (A032766 n).toNat * A257083 n

end

end A253779.P12743486929630698630

noncomputable section

/-- A253779: Numbers c whose cubes are equal to the sum of m^3 consecutive cubes for m^3 not divisible by 3 (A118719).

Offset 1, canonical program `A253779.P12743486929630698630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A253779 (n : ℕ) : ℤ :=
  A253779.P12743486929630698630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A253779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253900.P3316093139165672320

`A129296(2*(n+1))`
-/

namespace A253900.P3316093139165672320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129296 (2 * (n + 1))

end

end A253900.P3316093139165672320

noncomputable section

/-- A253900: a(n) is the number of squares of the form x^2 + x + n^2 for 0 <= x <= n^2.

Offset 1, canonical program `A253900.P3316093139165672320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A253900 (n : ℕ) : ℤ :=
  A253900.P3316093139165672320.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A253900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253944.P18219818549142345844

`3*A000580(n+7)`
-/

namespace A253944.P18219818549142345844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000580 (n + 7)

end

end A253944.P18219818549142345844

noncomputable section

/-- A253944: a(n) = 3*binomial(n+1,7).

Offset 6, canonical program `A253944.P18219818549142345844`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000580, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253944 (n : ℕ) : ℤ :=
  A253944.P18219818549142345844.a (n - 6)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000580, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253944.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253947.P18190009878537455231

`6*A000580(n+7)`
-/

namespace A253947.P18190009878537455231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000580 (n + 7)

end

end A253947.P18190009878537455231

noncomputable section

/-- A253947: a(n) = 6*binomial(n+1,7).

Offset 6, canonical program `A253947.P18190009878537455231`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000580, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253947 (n : ℕ) : ℤ :=
  A253947.P18190009878537455231.a (n - 6)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000580, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253947.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A254010.P11034487668733509155

`floor(p?[A002313(n+2)-4]/4)`
-/

namespace A254010.P11034487668733509155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 4⌋

end

end A254010.P11034487668733509155

noncomputable section

/-- A254010: Numbers k such that 4k+1 and 4(k+1)+1 are primes.

Offset 1, canonical program `A254010.P11034487668733509155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1156 terms. -/
def A254010 (n : ℕ) : ℤ :=
  A254010.P11034487668733509155.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1156 terms. -/
def A254010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254011.P1162402624068683902

`A008676(n)-A079998(n+2)`
-/

namespace A254011.P1162402624068683902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 n - A079998 (n + 2)

end

end A254011.P1162402624068683902

noncomputable section

/-- A254011: Expansion of (1 - x^18) / ((1 - x^5) * (1 - x^6) * (1 - x^9)) in powers of x.

Offset 0, canonical program `A254011.P1162402624068683902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254011 (n : ℕ) : ℤ :=
  A254011.P1162402624068683902.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254056.P15925411799378388036

`A185596(a(n-1))%15` with `a(0)=1`
-/

namespace A254056.P15925411799378388036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A185596 (a (n - 1)).toNat) 15

end

end A254056.P15925411799378388036

noncomputable section

/-- A254056: Sum two last digits of the sequence to get next term, starting with 1,2.

Offset 1, canonical program `A254056.P15925411799378388036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254056 (n : ℕ) : ℤ :=
  A254056.P15925411799378388036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254065.P1565246550795193810

`A036120(n)%10`
-/

namespace A254065.P1565246550795193810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036120 n) 10

end

end A254065.P1565246550795193810

noncomputable section

/-- A254065: Vulgar fractions whose denominators are numbers ending with nine, the case 1/19.

Offset 1, canonical program `A254065.P1565246550795193810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254065 (n : ℕ) : ℤ :=
  A254065.P1565246550795193810.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254110.P14785946217750073186

`A005187(A046699(n+2))-(n+1)`
-/

namespace A254110.P14785946217750073186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A046699 (n + 2)).toNat - (n + 1 : ℤ)

end

end A254110.P14785946217750073186

noncomputable section

/-- A254110: Zero-based column index of n in A254105: if A234017(n) = 0, then a(n) = 0, otherwise a(n) = 1 + a(A234017(n)).

Offset 1, canonical program `A254110.P14785946217750073186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A254110 (n : ℕ) : ℤ :=
  A254110.P14785946217750073186.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A254110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254145.P1687355752389577353

`A254144(n)+A001554(n)`
-/

namespace A254145.P1687355752389577353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254144 n + A001554 n

end

end A254145.P1687355752389577353

noncomputable section

/-- A254145: a(n) = 1*7^n + 2*6^n + 3*5^n + 4*4^n + 5*3^n + 6*2^n + 7*1^n.

Offset 0, canonical program `A254145.P1687355752389577353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A254145 (n : ℕ) : ℤ :=
  A254145.P1687355752389577353.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A254145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254282.P10242504731374827750

`3^n*A025748(n+1)`
-/

namespace A254282.P10242504731374827750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A025748 (n + 1)

end

end A254282.P10242504731374827750

noncomputable section

/-- A254282: Expansion of (1 - (1 - 27*x)^(1/3)) / (9*x).

Offset 0, canonical program `A254282.P10242504731374827750`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025748, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A254282 (n : ℕ) : ℤ :=
  A254282.P10242504731374827750.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025748, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A254282.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A254340.P9540291601562186238

`A075653(n+1)+1`
-/

namespace A254340.P9540291601562186238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075653 (n + 1) + 1

end

end A254340.P9540291601562186238

noncomputable section

/-- A254340: Sum of the distinct prime factors of n plus n+1: a(n) = A008472(n) + n + 1.

Offset 1, canonical program `A254340.P9540291601562186238`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075653, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A254340 (n : ℕ) : ℤ :=
  A254340.P9540291601562186238.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075653, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A254340.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A254399.P2182745436888946370

`A220362(n+1)-A164267(n)`
-/

namespace A254399.P2182745436888946370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220362 (n + 1) - A164267 n

end

end A254399.P2182745436888946370

noncomputable section

/-- A254399: A Fibonacci sum: a(n) = Sum_{j=0..n-1} F(j)^2*F(2*n-j), in which the F's are the Fibonacci numbers.

Offset 1, canonical program `A254399.P2182745436888946370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A254399 (n : ℕ) : ℤ :=
  A254399.P2182745436888946370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A254399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254443.P11446107568859895036

`2*A106521(n+1)-1`
-/

namespace A254443.P11446107568859895036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106521 (n + 1) - 1

end

end A254443.P11446107568859895036

noncomputable section

/-- A254443: Numbers n such that T(n) + T(n+1) + ... + T(n+21) is a square, where T(m) = A000217(m) is the m-th triangular number.

Offset 1, canonical program `A254443.P11446107568859895036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A254443 (n : ℕ) : ℤ :=
  A254443.P11446107568859895036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A254443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254522.P18432962942992038742

`A166920(n)/gcd(n+1, A166920(n))`
-/

namespace A254522.P18432962942992038742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166920 n : ℚ) / (Int.gcd (n + 1 : ℤ) (A166920 n) : ℚ)

end

end A254522.P18432962942992038742

noncomputable section

/-- A254522: Numerators of (2^n - 1 + (-1)^n)/(2*n), n > 0.

Offset 1, canonical program `A254522.P18432962942992038742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A254522 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A254522.P18432962942992038742.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A254522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254594.P5214450476323340904

`A001400(n)-a(n-1)` with `a(0)=1`
-/

namespace A254594.P5214450476323340904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001400 n - a (n - 1)

end

end A254594.P5214450476323340904

noncomputable section

/-- A254594: Expansion of 1 / ((1 - x^2)^2 * (1 - x^3) * (1 - x^4)) in powers of x.

Offset 0, canonical program `A254594.P5214450476323340904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254594 (n : ℕ) : ℤ :=
  A254594.P5214450476323340904.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254675.P15256847148252224553

`∑[A001091(n)*A010684(n)]`
-/

namespace A254675.P15256847148252224553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001091 n * A010684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254675.P15256847148252224553

noncomputable section

/-- A254675: Indices of centered triangular numbers (A005448) which are also heptagonal numbers (A000566).

Offset 1, canonical program `A254675.P15256847148252224553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A254675 (n : ℕ) : ℤ :=
  A254675.P15256847148252224553.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A254675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254699.P14264452968086791027

`(n+2)^5-A249845(n+1)`
-/

namespace A254699.P14264452968086791027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 5 : ℤ) - A249845 (n + 1)

end

end A254699.P14264452968086791027

noncomputable section

/-- A254699: Number of length 1+4 0..n arrays with every five consecutive terms having the maximum of some two terms equal to the minimum of the remaining three terms.

Offset 1, canonical program `A254699.P14264452968086791027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254699 (n : ℕ) : ℤ :=
  A254699.P14264452968086791027.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254865.P10766926795444542699

`A374647(n+2)/(n+2)`
-/

namespace A254865.P10766926795444542699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374647 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A254865.P10766926795444542699

noncomputable section

/-- A254865: a(n) = Product_{k = 1+n-floor(n/3) .. n} k.

Offset 1, canonical program `A254865.P10766926795444542699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A254865 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A254865.P10766926795444542699.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A254865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254884.P9225383241413135283

`(A099925(n)-1)*A000045(n)`
-/

namespace A254884.P9225383241413135283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099925 n - 1) * A000045 n

end

end A254884.P9225383241413135283

noncomputable section

/-- A254884: a(n) = Fibonacci(2*n) + ((-1)^n-1)*Fibonacci(n).

Offset 0, canonical program `A254884.P9225383241413135283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A254884 (n : ℕ) : ℤ :=
  A254884.P9225383241413135283.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A254884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255109.P13602261014294267061

`A000217(2*(n+2))+A000574(n+4)+A000217(n+1)`
-/

namespace A255109.P13602261014294267061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * (n + 2)) + (A000574 (n + 4) + A000217 (n + 1))

end

end A255109.P13602261014294267061

noncomputable section

/-- A255109: Number of length n+2 0..2 arrays with at most one downstep in every n consecutive neighbor pairs.

Offset 1, canonical program `A255109.P13602261014294267061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A255109 (n : ℕ) : ℤ :=
  A255109.P13602261014294267061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A255109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255179.P5015956987194778166

`Δ[record[Δ[A049472(n)^9]]]`
-/

namespace A255179.P5015956987194778166
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 n ^ 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255179.P5015956987194778166

noncomputable section

/-- A255179: Second differences of ninth powers (A001017).

Offset 0, canonical program `A255179.P5015956987194778166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7071 terms. -/
def A255179 (n : ℕ) : ℤ :=
  A255179.P5015956987194778166.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7071 terms. -/
def A255179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255223.P5524920262234694279

`A255222(n+1)+9`
-/

namespace A255223.P5524920262234694279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255222 (n + 1) + 9

end

end A255223.P5524920262234694279

noncomputable section

/-- A255223: Number of (n+2)X(3+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 2 and no column sum 2.

Offset 1, canonical program `A255223.P5524920262234694279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A255223 (n : ℕ) : ℤ :=
  A255223.P5524920262234694279.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A255223.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A255347.P15894743462553089016

`n-A127365(∑[n+1]²%(n+2))`
-/

namespace A255347.P15894743462553089016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A127365 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 % (n + 2))

end

end A255347.P15894743462553089016

noncomputable section

/-- A255347: a(n) = n * (1 - (-1)^(n/4) / 4) if n divisible by 4, a(n) = n otherwise.

Offset 0, canonical program `A255347.P15894743462553089016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255347 (n : ℕ) : ℤ :=
  A255347.P15894743462553089016.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255490.P13741243257840323374

`xor(A120462(n), A133190(n))`
-/

namespace A255490.P13741243257840323374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A120462 n) (A133190 n)

end

end A255490.P13741243257840323374

noncomputable section

/-- A255490: The subsequence A247649(2^n-1).

Offset 0, canonical program `A255490.P13741243257840323374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A255490 (n : ℕ) : ℤ :=
  A255490.P13741243257840323374.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A255490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255563.P4786817755465883835

`A316631(n)-A237420(n)`
-/

namespace A255563.P4786817755465883835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316631 n - A237420 n

end

end A255563.P4786817755465883835

noncomputable section

/-- A255563: a(n) = -3 * n/4 if n divisible by 4, a(n) = -(-1)^n * n otherwise.

Offset 0, canonical program `A255563.P4786817755465883835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255563 (n : ℕ) : ℤ :=
  A255563.P4786817755465883835.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255873.P6927099802111548466

`A000030(ceil(A017317(n)/7))`
-/

namespace A255873.P6927099802111548466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 ⌈(A017317 n : ℚ) / 7⌉.toNat

end

end A255873.P6927099802111548466

noncomputable section

/-- A255873: The first nonzero digit of n/7.

Offset 1, canonical program `A255873.P6927099802111548466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7000 terms. -/
def A255873 (n : ℕ) : ℤ :=
  A255873.P6927099802111548466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7000 terms. -/
def A255873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256007.P10036314069292314353

`record[A019274(floor(n/3)+1)+A010872(n)]`
-/

namespace A256007.P10036314069292314353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019274 (⌊(n : ℚ) / 3⌋ + 1).toNat + A010872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256007.P10036314069292314353

noncomputable section

/-- A256007: Numbers k satisfying |k + 1 - 2F| <= 1 for some positive Fibonacci number F.

Offset 0, canonical program `A256007.P10036314069292314353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A256007 (n : ℕ) : ℤ :=
  A256007.P10036314069292314353.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A256007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256162.P9949668565681264228

`A103456(∑[A000035(n)])-A000035(n)`
-/

namespace A256162.P9949668565681264228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103456 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A000035 n

end

end A256162.P9949668565681264228

noncomputable section

/-- A256162: Positive integers a(n) such that number of digits in decimal expansion of a(n)^a(n) is divisible by a(n).

Offset 1, canonical program `A256162.P9949668565681264228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A256162 (n : ℕ) : ℤ :=
  A256162.P9949668565681264228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A256162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256173.P6957340179493702245

`eq[0, A053186(ceil(sqrt(n))²-n)]`
-/

namespace A256173.P6957340179493702245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256173.P6957340179493702245

noncomputable section

/-- A256173: Numbers k such that ceiling(sqrt(k))^2 - k is a square.

Offset 1, canonical program `A256173.P6957340179493702245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3254 terms. -/
def A256173 (n : ℕ) : ℤ :=
  (A256173.P6957340179493702245.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3254 terms. -/
def A256173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256244.P4412789741258286194

`or(1, A028392(n+1))-n`
-/

namespace A256244.P4412789741258286194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A028392 (n + 1)) - (n : ℤ)

end

end A256244.P4412789741258286194

noncomputable section

/-- A256244: a(n) = sqrt(n + 2*A256243(n)).

Offset 1, canonical program `A256244.P4412789741258286194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256244 (n : ℕ) : ℤ :=
  A256244.P4412789741258286194.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256251.P8097163011885418650

`A008574(A006257(n))`
-/

namespace A256251.P8097163011885418650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A006257 n).toNat

end

end A256251.P8097163011885418650

noncomputable section

/-- A256251: First differences of A256250.

Offset 0, canonical program `A256251.P8097163011885418650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256251 (n : ℕ) : ℤ :=
  A256251.P8097163011885418650.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256258.P6821656048221745013

`2*A006257(n)+A006257(n+1)`
-/

namespace A256258.P6821656048221745013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006257 n + A006257 (n + 1)

end

end A256258.P6821656048221745013

noncomputable section

/-- A256258: Triangle read by rows in which the row lengths are the terms of A011782 and row n lists the terms of A016969 except for the right border which gives the positive terms of A000225.

Offset 1, canonical program `A256258.P6821656048221745013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A256258 (n : ℕ) : ℤ :=
  A256258.P6821656048221745013.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A256258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256272.P15422099176850393046

`∑{d}[n+1, A000129(#+1)]`
-/

namespace A256272.P15422099176850393046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000129 (d + 1)

end

end A256272.P15422099176850393046

noncomputable section

/-- A256272: G.f.: Sum_{n>=1} Pell(n+1) * x^n / (1 - x^n), where Pell(n) = A000129(n).

Offset 1, canonical program `A256272.P15422099176850393046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A256272 (n : ℕ) : ℤ :=
  A256272.P15422099176850393046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A256272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256281.P16115446406874101517

`∑{d}[n+1, A000129(#)]`
-/

namespace A256281.P16115446406874101517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000129 d

end

end A256281.P16115446406874101517

noncomputable section

/-- A256281: Inverse Moebius transform of Pell numbers.

Offset 1, canonical program `A256281.P16115446406874101517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A256281 (n : ℕ) : ℤ :=
  A256281.P16115446406874101517.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A256281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256327.P1381989048257015043

`A026810(5*n)`
-/

namespace A256327.P1381989048257015043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (5 * n)

end

end A256327.P1381989048257015043

noncomputable section

/-- A256327: Number of partitions of 5n into exactly 4 parts.

Offset 0, canonical program `A256327.P1381989048257015043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2001 terms. -/
def A256327 (n : ℕ) : ℤ :=
  A256327.P1381989048257015043.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2001 terms. -/
def A256327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256329.P16039791981313738038

`A026810(7*n)`
-/

namespace A256329.P16039791981313738038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (7 * n)

end

end A256329.P16039791981313738038

noncomputable section

/-- A256329: Number of partitions of 7n into exactly 4 parts.

Offset 0, canonical program `A256329.P16039791981313738038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A256329 (n : ℕ) : ℤ :=
  A256329.P16039791981313738038.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A256329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256455.P18138939821085766421

`eq[1, (A000203(2*n+1)-(n+4))%2]`
-/

namespace A256455.P18138939821085766421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (2 * n + 1) - (n + 4 : ℤ)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256455.P18138939821085766421

noncomputable section

/-- A256455: Numbers that appear at least once in a Pythagorean triple (a, b, b+1).

Offset 1, canonical program `A256455.P18138939821085766421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256455 (n : ℕ) : ℤ :=
  (A256455.P18138939821085766421.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256556.P6610952996468744969

`(n+1)*A059995(n)^A010879(n+1)`
-/

namespace A256556.P6610952996468744969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A059995 n : ℚ) ^ (A010879 (n + 1) : ℤ)

end

end A256556.P6610952996468744969

noncomputable section

/-- A256556: If n = 10k+m (0 <= m <= 9) then a(n) = n*k^m.

Offset 1, canonical program `A256556.P6610952996468744969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A256556 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A256556.P6610952996468744969.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A256556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256689.P3752054960592622050

`∏{e}[n+1, A067623(#)]`
-/

namespace A256689.P3752054960592622050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A067623 (Nat.factorization (f1 n) p)

end

end A256689.P3752054960592622050

noncomputable section

/-- A256689: From third root of Riemann zeta function: form Dirichlet series Sum b(n)/n^x whose cube is zeta function; sequence gives denominator of b(n).

Offset 1, canonical program `A256689.P3752054960592622050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256689 (n : ℕ) : ℤ :=
  A256689.P3752054960592622050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256691.P2977468991779873035

`∏{e}[n+1, A088802(#)]`
-/

namespace A256691.P2977468991779873035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A088802 (Nat.factorization (f1 n) p)

end

end A256691.P2977468991779873035

noncomputable section

/-- A256691: From fourth root of Riemann zeta function: form Dirichlet series Sum b(n)/n^x whose fourth power is zeta function; sequence gives denominator of b(n).

Offset 1, canonical program `A256691.P2977468991779873035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256691 (n : ℕ) : ℤ :=
  A256691.P2977468991779873035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257019.P1728863138039502506

`eq[3, a(A055087(n))+1]` with `a(0)=1`
-/

namespace A257019.P1728863138039502506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (A055087 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257019.P1728863138039502506

noncomputable section

/-- A257019: Numbers whose quarter-square representation consists of two terms.

Offset 1, canonical program `A257019.P1728863138039502506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A257019 (n : ℕ) : ℤ :=
  (A257019.P1728863138039502506.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A257019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257023.P5149314278277772350

`∏{e}[2*a(A055087(n)), #]` with `a(0)=1`
-/

namespace A257023.P5149314278277772350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (A055087 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A257023.P5149314278277772350

noncomputable section

/-- A257023: Number of terms in the quarter-sum representation of n.

Offset 0, canonical program `A257023.P5149314278277772350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A257023 (n : ℕ) : ℤ :=
  (A257023.P5149314278277772350.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A257023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257171.P14186307090277198213

`Δ[A000217(A267531(n)-A004275(n))]`
-/

namespace A257171.P14186307090277198213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A267531 n - A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257171.P14186307090277198213

noncomputable section

/-- A257171: Sum of numbers on n-th segment of Ulam's spiral.

Offset 0, canonical program `A257171.P14186307090277198213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A257171 (n : ℕ) : ℤ :=
  A257171.P14186307090277198213.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A257171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257241.P17121399944086540020

`C(A000267(n), A055087(n)+1)`
-/

namespace A257241.P17121399944086540020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000267 n).toNat (A055087 n + 1).toNat

end

end A257241.P17121399944086540020

noncomputable section

/-- A257241: Irregular triangle read by rows: Stifel's version of the arithmetical triangle.

Offset 1, canonical program `A257241.P17121399944086540020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5700 terms. -/
def A257241 (n : ℕ) : ℤ :=
  (A257241.P17121399944086540020.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5700 terms. -/
def A257241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257292.P7420582518654477351

`2*comp[∑[A000129(n)]]+1`
-/

namespace A257292.P7420582518654477351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A257292.P7420582518654477351

noncomputable section

/-- A257292: Numbers whose square can be written as the sum of two consecutive nonsquares.

Offset 1, canonical program `A257292.P7420582518654477351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257292 (n : ℕ) : ℤ :=
  (A257292.P7420582518654477351.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257600.P13255601733656627347

`abs(1-n)+A257601(n)+1-n`
-/

namespace A257600.P13255601733656627347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + (A257601 n + (1 - (n : ℤ)))

end

end A257600.P13255601733656627347

noncomputable section

/-- A257600: Expansion of (4 + 15*x - 35*x^2 + 20*x^3 - 2*x^5)/(1 - x)^5.

Offset 0, canonical program `A257600.P13255601733656627347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257600 (n : ℕ) : ℤ :=
  A257600.P13255601733656627347.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257633.P10780511691359819240

`A051036(4*n+2)`
-/

namespace A257633.P10780511691359819240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051036 (4 * n + 2)

end

end A257633.P10780511691359819240

noncomputable section

/-- A257633: a(n) = binomial(4*n + 2,n).

Offset 0, canonical program `A257633.P10780511691359819240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A257633 (n : ℕ) : ℤ :=
  A257633.P10780511691359819240.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A257633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257708.P17679834171026623728

`A154152(n+3)-12`
-/

namespace A257708.P17679834171026623728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154152 (n + 3) - 12

end

end A257708.P17679834171026623728

noncomputable section

/-- A257708: Numbers n such that T(n) + T(n+1) + ... + T(n+24) is a square, where T = A000217 (triangular numbers).

Offset 1, canonical program `A257708.P17679834171026623728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A257708 (n : ℕ) : ℤ :=
  A257708.P17679834171026623728.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A257708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257853.P2885019231209744431

`A033431(n)-A038129(n)^3`
-/

namespace A257853.P2885019231209744431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n - A038129 n ^ 3

end

end A257853.P2885019231209744431

noncomputable section

/-- A257853: a(n) = 2*n^3 - floor(2^(1/3)*n)^3.

Offset 0, canonical program `A257853.P2885019231209744431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257853 (n : ℕ) : ℤ :=
  A257853.P2885019231209744431.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257942.P16711899769373221867

`(n+1)*(n+2)/A014695(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257942.P16711899769373221867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 2 : ℚ) / (A014695 (n + 1) : ℚ))

end

end A257942.P16711899769373221867

noncomputable section

/-- A257942: a(n) = (n+1)*(n+2)/A014695(n+1), where A014695 is repeat (1, 2, 2, 1).

Offset 0, canonical program `A257942.P16711899769373221867`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257942 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A257942.P16711899769373221867.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257942.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258011.P1023716619731033103

`or(1, 3*A047368(n+1))`
-/

namespace A258011.P1023716619731033103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (3 * A047368 (n + 1))

end

end A258011.P1023716619731033103

noncomputable section

/-- A258011: Numbers remaining after the third stage of Lucky sieve.

Offset 1, canonical program `A258011.P1023716619731033103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258011 (n : ℕ) : ℤ :=
  A258011.P1023716619731033103.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258121.P8445638466543193396

`3*A000045(2*n+1)-C(n, n²)`
-/

namespace A258121.P8445638466543193396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000045 (2 * n + 1) - (Nat.choose n (n ^ 2) : ℤ)

end

end A258121.P8445638466543193396

noncomputable section

/-- A258121: Number of vertices of degree n in all Lucas cubes.

Offset 0, canonical program `A258121.P8445638466543193396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A258121 (n : ℕ) : ℤ :=
  A258121.P8445638466543193396.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A258121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258133.P10619347449612726997

`Δ[A025796(n+1)]`
-/

namespace A258133.P10619347449612726997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258133.P10619347449612726997

noncomputable section

/-- A258133: Expansion of tri-digit zeros interlaced with an arithmetic progression of positive and negative numbers.

Offset 0, canonical program `A258133.P10619347449612726997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A258133 (n : ℕ) : ℤ :=
  A258133.P10619347449612726997.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A258133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258376.P5397532955847838472

`∑[2*A005206(n+1)]-∑[n+1]`
-/

namespace A258376.P5397532955847838472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005206 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A258376.P5397532955847838472

noncomputable section

/-- A258376: Number of edges connecting the subgraph on {1, ..., n} with the complement in the minimal graph on positive natural numbers where degree(n) equals n.

Offset 1, canonical program `A258376.P5397532955847838472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258376 (n : ℕ) : ℤ :=
  A258376.P5397532955847838472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258390.P16916644505639236885

`∑[2^n]*A000108(n+2)`
-/

namespace A258390.P16916644505639236885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000108 (n + 2)

end

end A258390.P16916644505639236885

noncomputable section

/-- A258390: Number of 2n-length strings of balanced parentheses of exactly 2 different types that are introduced in ascending order.

Offset 2, canonical program `A258390.P16916644505639236885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A258390 (n : ℕ) : ℤ :=
  A258390.P16916644505639236885.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A258390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258430.P5870849844131350250

`p?[A000203(n+1)+1]`
-/

namespace A258430.P5870849844131350250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258430.P5870849844131350250

noncomputable section

/-- A258430: Primes in A088580.

Offset 1, canonical program `A258430.P5870849844131350250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258430 (n : ℕ) : ℤ :=
  A258430.P5870849844131350250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258434.P14606790759469898675

`A053158(n+1)-(1-n²)`
-/

namespace A258434.P14606790759469898675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (n + 1) - (1 - (n ^ 2 : ℤ))

end

end A258434.P14606790759469898675

noncomputable section

/-- A258434: n^2 - phi(n).

Offset 1, canonical program `A258434.P14606790759469898675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258434 (n : ℕ) : ℤ :=
  A258434.P14606790759469898675.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258663.P13409284266199840843

`A138918(n+1)*2`
-/

namespace A258663.P13409284266199840843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138918 (n + 1) * 2

end

end A258663.P13409284266199840843

noncomputable section

/-- A258663: Numbers n such that 9n-1 is prime.

Offset 1, canonical program `A258663.P13409284266199840843`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258663 (n : ℕ) : ℤ :=
  A258663.P13409284266199840843.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258710.P11088519439079196452

`A001006(n)%11`
-/

namespace A258710.P11088519439079196452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001006 n) 11

end

end A258710.P11088519439079196452

noncomputable section

/-- A258710: Motzkin numbers A001006 read mod 11.

Offset 0, canonical program `A258710.P11088519439079196452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A258710 (n : ℕ) : ℤ :=
  A258710.P11088519439079196452.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A258710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258731.P8474192831176115530

`A001919(n+3)+C(n+5, n+2)`
-/

namespace A258731.P8474192831176115530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001919 (n + 3) + (Nat.choose (n + 5) (n + 2) : ℤ)

end

end A258731.P8474192831176115530

noncomputable section

/-- A258731: Number of length n+1 0..3 arrays with at most one downstep in every n consecutive neighbor pairs.

Offset 1, canonical program `A258731.P8474192831176115530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258731 (n : ℕ) : ℤ :=
  A258731.P8474192831176115530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258774.P4371369452253390923

`1+A000203(n+1)+A072861(n+1)`
-/

namespace A258774.P4371369452253390923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000203 (n + 1) + A072861 (n + 1)

end

end A258774.P4371369452253390923

noncomputable section

/-- A258774: a(n) = 1 + sigma(n) + sigma(n)^2.

Offset 1, canonical program `A258774.P4371369452253390923`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072861, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258774 (n : ℕ) : ℤ :=
  A258774.P4371369452253390923.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072861, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258774.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258974.P9822892926536719651

`1+A072861(n+1)`
-/

namespace A258974.P9822892926536719651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A072861 (n + 1)

end

end A258974.P9822892926536719651

noncomputable section

/-- A258974: a(n) = 1 + sigma(n)^2.

Offset 1, canonical program `A258974.P9822892926536719651`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072861, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258974 (n : ℕ) : ℤ :=
  A258974.P9822892926536719651.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072861, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258974.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259042.P1048538119535149912

`A257179(n+4)`
-/

namespace A259042.P1048538119535149912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257179 (n + 4)

end

end A259042.P1048538119535149912

noncomputable section

/-- A259042: Period 8 sequence [0, 1, 1, 1, 2, 1, 1, 1, ...].

Offset 0, canonical program `A259042.P1048538119535149912`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257179, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259042 (n : ℕ) : ℤ :=
  A259042.P1048538119535149912.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257179, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259042.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259184.P10185442532548937171

`1-A000203(n+1)+A072861(n+1)`
-/

namespace A259184.P10185442532548937171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000203 (n + 1) + A072861 (n + 1)

end

end A259184.P10185442532548937171

noncomputable section

/-- A259184: a(n) = 1 - sigma(n) + sigma(n)^2.

Offset 1, canonical program `A259184.P10185442532548937171`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072861, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259184 (n : ℕ) : ℤ :=
  A259184.P10185442532548937171.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072861, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259184.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259190.P13101566552867550762

`p?[A028387(A039653(n))]`
-/

namespace A259190.P13101566552867550762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (A039653 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259190.P13101566552867550762

noncomputable section

/-- A259190: Primes of the form sigma(n) + sigma(n)^2 - 1.

Offset 1, canonical program `A259190.P13101566552867550762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A259190 (n : ℕ) : ℤ :=
  A259190.P13101566552867550762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A259190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259207.P8749124973789222655

`A235800(3*a(n-1))-a(n-1)` with `a(0)=5`
-/

namespace A259207.P8749124973789222655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A235800 (3 * a (n - 1)).toNat - a (n - 1)

end

end A259207.P8749124973789222655

noncomputable section

/-- A259207: 5x + 1 sequence beginning at 5.

Offset 0, canonical program `A259207.P8749124973789222655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259207 (n : ℕ) : ℤ :=
  A259207.P8749124973789222655.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259215.P17719300614074887301

`∑[A052956(n+1)]+4`
-/

namespace A259215.P17719300614074887301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A259215.P17719300614074887301

noncomputable section

/-- A259215: Number of (n+1) X (1+1) 0..1 arrays with each 2 X 2 subblock having clockwise pattern 0000 0011 or 0101.

Offset 1, canonical program `A259215.P17719300614074887301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A259215 (n : ℕ) : ℤ :=
  A259215.P17719300614074887301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A259215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259280.P5990415043731895464

`round((A075349(n+1)+n+1)/2)`
-/

namespace A259280.P5990415043731895464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A075349 (n + 1) + (n + 1 : ℤ) : ℚ) / 2)

end

end A259280.P5990415043731895464

noncomputable section

/-- A259280: a(n) is the minimal sum of a positive integer sequence of length n with no duplicate substrings of length greater than 1.

Offset 1, canonical program `A259280.P5990415043731895464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259280 (n : ℕ) : ℤ :=
  A259280.P5990415043731895464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259319.P1682613436391244870

`2*A002309(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A259319.P1682613436391244870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002309 (n + 1)

end

end A259319.P1682613436391244870

noncomputable section

/-- A259319: a(n) = 2*A002309(n).

Offset 1, canonical program `A259319.P1682613436391244870`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002309, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259319 (n : ℕ) : ℤ :=
  A259319.P1682613436391244870.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002309, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259319.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259320.P6688723723294012655

`16*16*A006858(n)`
-/

namespace A259320.P6688723723294012655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (16 * A006858 n)

end

end A259320.P6688723723294012655

noncomputable section

/-- A259320: a(n) = 2*n*A259319(n) - A259110(n)^2.

Offset 1, canonical program `A259320.P6688723723294012655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259320 (n : ℕ) : ℤ :=
  A259320.P6688723723294012655.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259323.P9882511957773447944

`2*A259322(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A259323.P9882511957773447944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259322 (n + 1)

end

end A259323.P9882511957773447944

noncomputable section

/-- A259323: a(n) = 2*A259322(n).

Offset 1, canonical program `A259323.P9882511957773447944`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A259322, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259323 (n : ℕ) : ℤ :=
  A259323.P9882511957773447944.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A259322, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259323.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259346.P9858574325233048270

`Δ[A003462(floor(log2(2*n+1)))]`
-/

namespace A259346.P9858574325233048270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (Nat.log 2 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259346.P9858574325233048270

noncomputable section

/-- A259346: If n = 2^k then a(n) = 3^k, otherwise a(n) = 0.

Offset 1, canonical program `A259346.P9858574325233048270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259346 (n : ℕ) : ℤ :=
  A259346.P9858574325233048270.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259368.P5780169063487026359

`xor(A036987(n), A061717(n+1))`
-/

namespace A259368.P5780169063487026359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036987 n) (A061717 (n + 1))

end

end A259368.P5780169063487026359

noncomputable section

/-- A259368: Number of digits in n^n when written in binary.

Offset 1, canonical program `A259368.P5780169063487026359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259368 (n : ℕ) : ℤ :=
  A259368.P5780169063487026359.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259410.P7580479100357844483

`A060884(A000203(n+1))`
-/

namespace A259410.P7580479100357844483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060884 (A000203 (n + 1)).toNat

end

end A259410.P7580479100357844483

noncomputable section

/-- A259410: a(n) = 1 - sigma(n) + sigma(n)^2 - sigma(n)^3 + sigma(n)^4.

Offset 1, canonical program `A259410.P7580479100357844483`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060884, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259410 (n : ℕ) : ℤ :=
  A259410.P7580479100357844483.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060884, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259410.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259546.P7294937690965014523

`n*A259451(n)`
-/

namespace A259546.P7294937690965014523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A259451 n

end

end A259546.P7294937690965014523

noncomputable section

/-- A259546: a(n) = n^3*Fibonacci(n).

Offset 0, canonical program `A259546.P7294937690965014523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 443 terms. -/
def A259546 (n : ℕ) : ℤ :=
  A259546.P7294937690965014523.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 443 terms. -/
def A259546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259566.P1447897168910659284

`A032924(2*n+1)`
-/

namespace A259566.P1447897168910659284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (2 * n + 1)

end

end A259566.P1447897168910659284

noncomputable section

/-- A259566: Numbers following gaps in the sequence of base-3 numbers that don't contain 0.

Offset 1, canonical program `A259566.P1447897168910659284`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032924, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259566 (n : ℕ) : ℤ :=
  A259566.P1447897168910659284.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032924, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259566.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259623.P8397012084829598686

`record[A321664(n)+1]`
-/

namespace A259623.P8397012084829598686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321664 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259623.P8397012084829598686

noncomputable section

/-- A259623: Strictly increasing list of F and F + 1, where F = A000045, the Fibonacci numbers.

Offset 1, canonical program `A259623.P8397012084829598686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 956 terms. -/
def A259623 (n : ℕ) : ℤ :=
  A259623.P8397012084829598686.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 956 terms. -/
def A259623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259625.P16118554221174948864

`record[A000035(n)+A000032(A008621(n))]-1`
-/

namespace A259625.P16118554221174948864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + A000032 (A008621 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A259625.P16118554221174948864

noncomputable section

/-- A259625: List of numbers L - 1 and L, where L = A000032, the Lucas numbers, sorted into increasing order and duplicates removed.

Offset 1, canonical program `A259625.P16118554221174948864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 955 terms. -/
def A259625 (n : ℕ) : ℤ :=
  A259625.P16118554221174948864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 955 terms. -/
def A259625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259653.P12601177065386633340

`∑[3*a(A083920(n))]` with `a(0)=0, a(1)=1`
-/

namespace A259653.P12601177065386633340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 * f1 (A083920 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259653.P12601177065386633340

noncomputable section

/-- A259653: a(0)=0, a(1)=1, a(n) = min{3 a(k) + (3^(n-k)-1)/2, k=0..(n-1)} for n>=2.

Offset 0, canonical program `A259653.P12601177065386633340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259653 (n : ℕ) : ℤ :=
  (A259653.P12601177065386633340.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259669.P10561607982313201112

`∑[floor(5^(A123578(n)-1))]`
-/

namespace A259669.P10561607982313201112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 : ℚ) ^ (A123578 n - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259669.P10561607982313201112

noncomputable section

/-- A259669: a(0)=0, a(1)=1, a(n) = min{5 a(k) + (5^(n-k)-1)/4, k=0..(n-1)} for n>=2.

Offset 0, canonical program `A259669.P10561607982313201112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A259669 (n : ℕ) : ℤ :=
  A259669.P10561607982313201112.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A259669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259709.P9823627250390288999

`A000129(n+2)-A045925(n+2)`
-/

namespace A259709.P9823627250390288999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 2) - A045925 (n + 2)

end

end A259709.P9823627250390288999

noncomputable section

/-- A259709: a(n) = A259708(n,n-1).

Offset 1, canonical program `A259709.P9823627250390288999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A259709 (n : ℕ) : ℤ :=
  A259709.P9823627250390288999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A259709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259852.P5187732436782759166

`A014477(n)/gcd(A000108(n), A014477(n))`
-/

namespace A259852.P5187732436782759166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014477 n : ℚ) / (Int.gcd (A000108 n) (A014477 n) : ℚ)

end

end A259852.P5187732436782759166

noncomputable section

/-- A259852: Numerators of the terms of Lehmer's series S_2(2), where S_k(x) = Sum_{n>=1} n^k*x^n/binomial(2*n, n).

Offset 1, canonical program `A259852.P5187732436782759166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A259852 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A259852.P5187732436782759166.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A259852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259969.P6346311147704205363

`n*Δ[A007307(2*n)]`
-/

namespace A259969.P6346311147704205363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A259969.P6346311147704205363

noncomputable section

/-- A259969: a(n) = n*A259968(n).

Offset 0, canonical program `A259969.P6346311147704205363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 400 terms. -/
def A259969 (n : ℕ) : ℤ :=
  A259969.P6346311147704205363.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 400 terms. -/
def A259969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260022.P9051072500523275687

`A006921(2*n)`
-/

namespace A260022.P9051072500523275687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006921 (2 * n)

end

end A260022.P9051072500523275687

noncomputable section

/-- A260022: A bisection of A006921.

Offset 0, canonical program `A260022.P9051072500523275687`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006921, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260022 (n : ℕ) : ℤ :=
  A260022.P9051072500523275687.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006921, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260022.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260077.P8889522141968118746

`A060884(n!)`
-/

namespace A260077.P8889522141968118746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060884 (Nat.factorial n)

end

end A260077.P8889522141968118746

noncomputable section

/-- A260077: Cyclotomic polynomial value Phi(10,n!).

Offset 0, canonical program `A260077.P8889522141968118746`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060884, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260077 (n : ℕ) : ℤ :=
  A260077.P8889522141968118746.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060884, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260077.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260217.P18320538759642150908

`2*A028243(n+1)`
-/

namespace A260217.P18320538759642150908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028243 (n + 1)

end

end A260217.P18320538759642150908

noncomputable section

/-- A260217: Number of base-3 n-digit pandigital numbers.

Offset 1, canonical program `A260217.P18320538759642150908`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028243, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260217 (n : ℕ) : ℤ :=
  A260217.P18320538759642150908.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028243, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260217.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260220.P2792250201049167754

`floor(A055524(n+3)/4)`
-/

namespace A260220.P2792250201049167754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055524 (n + 3) : ℚ) / 4⌋

end

end A260220.P2792250201049167754

noncomputable section

/-- A260220: Number of symmetry-allowed, linearly-independent terms at n-th order in the expansion of T1 x t1 rovibrational perturbation matrix H(Jx,Jy,Jz).

Offset 0, canonical program `A260220.P2792250201049167754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260220 (n : ℕ) : ℤ :=
  A260220.P2792250201049167754.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260222.P15551687746413107937

`gcd(n+1, A002752(n+1))`
-/

namespace A260222.P15551687746413107937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A002752 (n + 1))

end

end A260222.P15551687746413107937

noncomputable section

/-- A260222: a(n)=gcd(n,F(n-1)), where F(n) is the n-th Fibonacci number.

Offset 1, canonical program `A260222.P15551687746413107937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260222 (n : ℕ) : ℤ :=
  (A260222.P15551687746413107937.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260489.P15651954897891413003

`3*n-A260488(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A260489.P15651954897891413003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A260488 n

end

end A260489.P15651954897891413003

noncomputable section

/-- A260489: a(n) = 3n - A260488(n).

Offset 0, canonical program `A260489.P15651954897891413003`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260488, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260489 (n : ℕ) : ℤ :=
  A260489.P15651954897891413003.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260488, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260489.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260577.P8221833800038063480

`lt[A032741(A032741(n)+1+n), A032741(n)]`
-/

namespace A260577.P8221833800038063480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A032741 n + 1 + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260577.P8221833800038063480

noncomputable section

/-- A260577: Numbers n for which d(n+d(n)) < d(n), where d(n) is the number of divisors of n.

Offset 1, canonical program `A260577.P8221833800038063480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A260577 (n : ℕ) : ℤ :=
  (A260577.P8221833800038063480.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A260577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260581.P3815776299478991622

`lt[A032741(n), A032741(A032741(n)+1+n)]`
-/

namespace A260581.P3815776299478991622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A032741 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260581.P3815776299478991622

noncomputable section

/-- A260581: Numbers n for which d(n+d(n)) > d(n), where d(n) is the number of divisors of n.

Offset 1, canonical program `A260581.P3815776299478991622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A260581 (n : ℕ) : ℤ :=
  (A260581.P3815776299478991622.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A260581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260611.P9673076266905370187

`A126868(A000040(n+1))`
-/

namespace A260611.P9673076266905370187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126868 (A000040 (n + 1)).toNat

end

end A260611.P9673076266905370187

noncomputable section

/-- A260611: a(n) = superfactorial(prime(n)-1) mod prime(n).

Offset 1, canonical program `A260611.P9673076266905370187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A260611 (n : ℕ) : ℤ :=
  A260611.P9673076266905370187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A260611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260636.P14027546887178104078

`A001764(n+1)%(n+1)`
-/

namespace A260636.P14027546887178104078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001764 (n + 1)) (n + 1 : ℤ)

end

end A260636.P14027546887178104078

noncomputable section

/-- A260636: a(n) = binomial(3n, n) mod n.

Offset 1, canonical program `A260636.P14027546887178104078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A260636 (n : ℕ) : ℤ :=
  A260636.P14027546887178104078.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A260636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260708.P12299164918959634229

`A260699(n)+A008615(n)`
-/

namespace A260708.P12299164918959634229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260699 n + A008615 n

end

end A260708.P12299164918959634229

noncomputable section

/-- A260708: a(2n) = n*(2*n+1), a(2n+7) = a(2n+1) + 12*n + 28, with a(1)=1, a(3)=6, a(5)=16.

Offset 0, canonical program `A260708.P12299164918959634229`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260699, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260708 (n : ℕ) : ℤ :=
  A260708.P12299164918959634229.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260699, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260708.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260715.P15318488099808226296

`A260714(A047306(n+2))`
-/

namespace A260715.P15318488099808226296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260714 (A047306 (n + 2)).toNat

end

end A260715.P15318488099808226296

noncomputable section

/-- A260715: Row 5 of A260717.

Offset 1, canonical program `A260715.P15318488099808226296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8571 terms. -/
def A260715 (n : ℕ) : ℤ :=
  A260715.P15318488099808226296.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8571 terms. -/
def A260715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260816.P15090440881368013545

`floor(log(A000108(n)))`
-/

namespace A260816.P15090440881368013545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A000108 n : ℝ)⌋

end

end A260816.P15090440881368013545

noncomputable section

/-- A260816: a(n) = floor(log(Catalan(n))).

Offset 0, canonical program `A260816.P15090440881368013545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A260816 (n : ℕ) : ℤ :=
  A260816.P15090440881368013545.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A260816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260963.P9935285251690812100

`eq[1, A129514(n+1)]+1`
-/

namespace A260963.P9935285251690812100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129514 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A260963.P9935285251690812100

noncomputable section

/-- A260963: Numbers k such that gcd(sigma(k), k*(k+1)/2 - sigma(k)) = 1, where sigma(k) is sum of positive divisors of k.

Offset 1, canonical program `A260963.P9935285251690812100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1368 terms. -/
def A260963 (n : ℕ) : ℤ :=
  (A260963.P9935285251690812100.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1368 terms. -/
def A260963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261011.P14013190716216031043

`record[(1-A000330(A074279(n+1)-1)+n)*A074279(n+1)]`
-/

namespace A261011.P14013190716216031043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000330 (A074279 (n + 1) - 1).toNat + (n : ℤ)) * A074279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261011.P14013190716216031043

noncomputable section

/-- A261011: Positive integers n such that ceiling(n^(1/3)) divides n.

Offset 1, canonical program `A261011.P14013190716216031043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A261011 (n : ℕ) : ℤ :=
  A261011.P14013190716216031043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A261011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261441.P385757714479173947

`∑[A054405(2*n)-A000930(n+2)]`
-/

namespace A261441.P385757714479173947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054405 (2 * n) - A000930 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261441.P385757714479173947

noncomputable section

/-- A261441: Number of binary strings of length n+3 such that the smallest number whose binary representation is not visible in the string is 5.

Offset 0, canonical program `A261441.P385757714479173947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. -/
def A261441 (n : ℕ) : ℤ :=
  A261441.P385757714479173947.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. -/
def A261441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261469.P1821801578246138474

`A140461(n+1)%A000040(n+1)`
-/

namespace A261469.P1821801578246138474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140461 (n + 1)) (A000040 (n + 1))

end

end A261469.P1821801578246138474

noncomputable section

/-- A261469: a(n) = prime(n+3) mod prime(n).

Offset 1, canonical program `A261469.P1821801578246138474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261469 (n : ℕ) : ℤ :=
  A261469.P1821801578246138474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261694.P3062138607290146688

`A167129(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A261694.P3062138607290146688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A167129 (a (n - 1) + a (n - 2)).toNat

end

end A261694.P3062138607290146688

noncomputable section

/-- A261694: a(n) = Fibonacci(n) mod 21.

Offset 0, canonical program `A261694.P3062138607290146688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261694 (n : ℕ) : ℤ :=
  A261694.P3062138607290146688.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261694.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A261869.P11309295285550165440

`Δ[A055615(n+1)]`
-/

namespace A261869.P11309295285550165440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261869.P11309295285550165440

noncomputable section

/-- A261869: First differences of A055615.

Offset 1, canonical program `A261869.P11309295285550165440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261869 (n : ℕ) : ℤ :=
  A261869.P11309295285550165440.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261890.P4080102561957379191

`A055615(n+3)-2*A055615(n+2)+A055615(n+1)`
-/

namespace A261890.P4080102561957379191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 3) - 2 * A055615 (n + 2) + A055615 (n + 1)

end

end A261890.P4080102561957379191

noncomputable section

/-- A261890: Second differences of A055615, first differences of A261869.

Offset 1, canonical program `A261890.P4080102561957379191`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261890 (n : ℕ) : ℤ :=
  A261890.P4080102561957379191.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261890.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262084.P5243540133609715139

`eq[A016035(n+2), A016035(n+8)]+2`
-/

namespace A262084.P5243540133609715139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A262084.P5243540133609715139

noncomputable section

/-- A262084: Numbers m that satisfy the equation phi(m + 6) = phi(m) + 6 where phi(m) = A000010(m) is Euler's totient function.

Offset 1, canonical program `A262084.P5243540133609715139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A262084 (n : ℕ) : ℤ :=
  (A262084.P5243540133609715139.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A262084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262247.P16416893810568802159

`A000330(A000040(n+1))`
-/

namespace A262247.P16416893810568802159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A000040 (n + 1)).toNat

end

end A262247.P16416893810568802159

noncomputable section

/-- A262247: Number of squares formed from a square composed of p^2 unit squares where p is n-th prime.

Offset 1, canonical program `A262247.P16416893810568802159`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262247 (n : ℕ) : ℤ :=
  A262247.P16416893810568802159.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262247.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262248.P1542444240578944566

`C(A000040(n+1), 4)`
-/

namespace A262248.P1542444240578944566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 1)).toNat 4

end

end A262248.P1542444240578944566

noncomputable section

/-- A262248: Number of intersections of diagonals in the interior of a regular p-gon where p is the n-th prime.

Offset 1, canonical program `A262248.P1542444240578944566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262248 (n : ℕ) : ℤ :=
  (A262248.P1542444240578944566.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262334.P8980470518424327943

`A262333(n+1)²`
-/

namespace A262334.P8980470518424327943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262333 (n + 1) ^ 2

end

end A262334.P8980470518424327943

noncomputable section

/-- A262334: Number of (n+3)X(2+3) 0..1 arrays with each row and column divisible by 9, read as a binary number with top and left being the most significant bits.

Offset 1, canonical program `A262334.P8980470518424327943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A262334 (n : ℕ) : ℤ :=
  A262334.P8980470518424327943.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A262334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262335.P10862925138812688300

`A262333(n+1)^3`
-/

namespace A262335.P10862925138812688300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262333 (n + 1) ^ 3

end

end A262335.P10862925138812688300

noncomputable section

/-- A262335: Number of (n+3)X(3+3) 0..1 arrays with each row and column divisible by 9, read as a binary number with top and left being the most significant bits.

Offset 1, canonical program `A262335.P10862925138812688300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A262335 (n : ℕ) : ℤ :=
  A262335.P10862925138812688300.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A262335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262438.P5441968165087064476

`A110591(floor(sqrt(n)))`
-/

namespace A262438.P5441968165087064476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (Nat.sqrt n)

end

end A262438.P5441968165087064476

noncomputable section

/-- A262438: Number of digits of hexadecimal representation of n.

Offset 0, canonical program `A262438.P5441968165087064476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262438 (n : ℕ) : ℤ :=
  A262438.P5441968165087064476.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262617.P10379441659377153766

`6*and(-n, A003817(n))`
-/

namespace A262617.P10379441659377153766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * Int.land (-(n : ℤ)) (A003817 n)

end

end A262617.P10379441659377153766

noncomputable section

/-- A262617: First differences of A256266.

Offset 0, canonical program `A262617.P10379441659377153766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262617 (n : ℕ) : ℤ :=
  A262617.P10379441659377153766.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262744.P6698205093612242273

`∑[A000040(n+1)]%∑[n+1]`
-/

namespace A262744.P6698205093612242273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A262744.P6698205093612242273

noncomputable section

/-- A262744: Remainder when sum of first n primes is divided by n-th triangular number.

Offset 1, canonical program `A262744.P6698205093612242273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262744 (n : ℕ) : ℤ :=
  A262744.P6698205093612242273.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262777.P1344275269352665406

`10^(n+1)-A000040(n+1)`
-/

namespace A262777.P1344275269352665406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℤ) - A000040 (n + 1)

end

end A262777.P1344275269352665406

noncomputable section

/-- A262777: a(n) = 10^n - prime(n).

Offset 1, canonical program `A262777.P1344275269352665406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A262777 (n : ℕ) : ℤ :=
  A262777.P1344275269352665406.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A262777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262778.P8229883454937034113

`A000040(n+1)+10^(n+1)`
-/

namespace A262778.P8229883454937034113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (10 ^ (n + 1) : ℤ)

end

end A262778.P8229883454937034113

noncomputable section

/-- A262778: a(n) = 10^n + prime(n).

Offset 1, canonical program `A262778.P8229883454937034113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A262778 (n : ℕ) : ℤ :=
  A262778.P8229883454937034113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A262778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262804.P8094052880299619454

`C(A231821(n+1), 2)-A231821(n+1)`
-/

namespace A262804.P8094052880299619454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A231821 (n + 1)).toNat 2 : ℤ) - A231821 (n + 1)

end

end A262804.P8094052880299619454

noncomputable section

/-- A262804: a(n) = 2*b(n), where b(n) is defined by the condition that Product_{d|n} (b(d) + 1) = 1, n > 1 and b(1) = 1.

Offset 1, canonical program `A262804.P8094052880299619454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262804 (n : ℕ) : ℤ :=
  A262804.P8094052880299619454.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262863.P6679284059625653501

`A267623(n)-a(n-2)` with `a(0)=1, a(1)=10`
-/

namespace A262863.P6679284059625653501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  A267623 n - a (n - 2)

end

end A262863.P6679284059625653501

noncomputable section

/-- A262863: Binary representation of the middle column of the "Rule 147" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A262863.P6679284059625653501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A262863 (n : ℕ) : ℤ :=
  A262863.P6679284059625653501.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A262863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262925.P5492214890831276794

`record[∑[A309336(n)]*A000035(n)]`
-/

namespace A262925.P5492214890831276794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309336 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262925.P5492214890831276794

noncomputable section

/-- A262925: Sum of n consecutive fourth powers starting with n^4.

Offset 0, canonical program `A262925.P5492214890831276794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A262925 (n : ℕ) : ℤ :=
  A262925.P5492214890831276794.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A262925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263013.P2235530556352225671

`(-1)^n*A130716(n)`
-/

namespace A263013.P2235530556352225671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A130716 n

end

end A263013.P2235530556352225671

noncomputable section

/-- A263013: a(0) = -a(1) = a(2) = 1, a(n) = 0 for n>2.

Offset 0, canonical program `A263013.P2235530556352225671`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A263013 (n : ℕ) : ℤ :=
  A263013.P2235530556352225671.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A263013.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A263101.P4527818961469983192

`A000045(A000045(n+1)%(4*(n+1)))%A000045(n+1)`
-/

namespace A263101.P4527818961469983192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (Int.tmod (A000045 (n + 1)) (4 * (n + 1) : ℤ)).toNat) (A000045 (n + 1))

end

end A263101.P4527818961469983192

noncomputable section

/-- A263101: a(n) = F(F(n)) mod F(n), where F = Fibonacci = A000045.

Offset 1, canonical program `A263101.P4527818961469983192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A263101 (n : ℕ) : ℤ :=
  A263101.P4527818961469983192.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A263101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263309.P14419132455627372225

`floor(p?[floor(A142102(n+1)/6)]/6)`
-/

namespace A263309.P14419132455627372225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142102 (n + 1) : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 6⌋

end

end A263309.P14419132455627372225

noncomputable section

/-- A263309: Numbers k such that p=6k+1 and q=6k+1 are primes.

Offset 1, canonical program `A263309.P14419132455627372225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2327 terms. -/
def A263309 (n : ℕ) : ℤ :=
  A263309.P14419132455627372225.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2327 terms. -/
def A263309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263366.P7366423946879105829

`A131532(n)+A077947(n)`
-/

namespace A263366.P7366423946879105829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131532 n + A077947 n

end

end A263366.P7366423946879105829

noncomputable section

/-- A263366: Number of (n+1) X (1+1) 0..2 arrays with each row and column divisible by 7, read as a base-3 number with top and left being the most significant digits.

Offset 1, canonical program `A263366.P7366423946879105829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A263366 (n : ℕ) : ℤ :=
  A263366.P7366423946879105829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A263366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263385.P7923351982636310389

`record[A033305(n)²]`
-/

namespace A263385.P7923351982636310389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033305 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263385.P7923351982636310389

noncomputable section

/-- A263385: Number of (n+1)X(1+1) arrays of permutations of 0..n*1-1 with each element moved a city block distance of exactly 2.

Offset 1, canonical program `A263385.P7923351982636310389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A263385 (n : ℕ) : ℤ :=
  A263385.P7923351982636310389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A263385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263420.P4549048011631068532

`Δ[A002525(n+1)]²`
-/

namespace A263420.P4549048011631068532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A263420.P4549048011631068532

noncomputable section

/-- A263420: Number of n X 2 arrays of permutations of 0..n*2-1 with each element moved a city block distance of 0 or 2.

Offset 1, canonical program `A263420.P4549048011631068532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A263420 (n : ℕ) : ℤ :=
  A263420.P4549048011631068532.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A263420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263615.P3791299394751044341

`∑[A263614(n+3)]`
-/

namespace A263615.P3791299394751044341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263614 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263615.P3791299394751044341

noncomputable section

/-- A263615: Partial sums of A263614 starting at n=2.

Offset 2, canonical program `A263615.P3791299394751044341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A263615 (n : ℕ) : ℤ :=
  A263615.P3791299394751044341.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A263615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263651.P5656912629918934760

`eq[2, A000122(n-floor(sqrt(n))²)]`
-/

namespace A263651.P5656912629918934760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n - Nat.sqrt n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263651.P5656912629918934760

noncomputable section

/-- A263651: Numbers n such that the difference between n and the largest square less than n is a nonzero square.

Offset 1, canonical program `A263651.P5656912629918934760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3038 terms. -/
def A263651 (n : ℕ) : ℤ :=
  (A263651.P5656912629918934760.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3038 terms. -/
def A263651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263794.P2113053867351144171

`A004006(floor(n/2)+2)`
-/

namespace A263794.P2113053867351144171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 (⌊(n : ℚ) / 2⌋ + 2).toNat

end

end A263794.P2113053867351144171

noncomputable section

/-- A263794: Number of (n+1) X (3+1) 0..1 arrays with each row and column divisible by 3, read as a binary number with top and left being the most significant bits, and rows and columns lexicographically nonincreasing.

Offset 1, canonical program `A263794.P2113053867351144171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263794 (n : ℕ) : ℤ :=
  A263794.P2113053867351144171.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263826.P15511005818763180610

`∑{d}[n+1, A000203(#)*A236283((n+1)/#)]`
-/

namespace A263826.P15511005818763180610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A236283 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A263826.P15511005818763180610

noncomputable section

/-- A263826: The number c_{Z3 pi_1(B_1)}(2n) of 3-torus 2n-coverings over the first amphicosm.

Offset 1, canonical program `A263826.P15511005818763180610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263826 (n : ℕ) : ℤ :=
  A263826.P15511005818763180610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263826.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A263837.P8739801485308913635

`lt[A082551(n+1), 1]+1`
-/

namespace A263837.P8739801485308913635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A263837.P8739801485308913635

noncomputable section

/-- A263837: Non-abundant numbers (or nonabundant numbers): complement of A005101; numbers k for which sigma(k) <= 2*k.

Offset 1, canonical program `A263837.P8739801485308913635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263837 (n : ℕ) : ℤ :=
  (A263837.P8739801485308913635.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263878.P15627308141221611043

`(n+1)*A119282(n)-∑[A119282(n)]`
-/

namespace A263878.P15627308141221611043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A119282 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263878.P15627308141221611043

noncomputable section

/-- A263878: a(n) = Sum_{k=0..n} (-1)^k*k*Fibonacci(k), where Fibonacci(k) = A000045(k).

Offset 0, canonical program `A263878.P15627308141221611043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A263878 (n : ℕ) : ℤ :=
  A263878.P15627308141221611043.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A263878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263999.P9182187807932857106

`A020695(n)*A189179(n+2)`
-/

namespace A263999.P9182187807932857106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n * A189179 (n + 2)

end

end A263999.P9182187807932857106

noncomputable section

/-- A263999: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having index change (+-,+-) 0,0 1,2 or 1,0.

Offset 1, canonical program `A263999.P9182187807932857106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A263999 (n : ℕ) : ℤ :=
  A263999.P9182187807932857106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A263999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264004.P5864894677595507346

`A006253(A008619(n+1))*A006253(A008619(n))`
-/

namespace A264004.P5864894677595507346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 (A008619 (n + 1)).toNat * A006253 (A008619 n).toNat

end

end A264004.P5864894677595507346

noncomputable section

/-- A264004: Number of (1+1) X (n+1) arrays of permutations of 0..n*2+1 with each element having index change (+-,+-) 0,0 1,2 or 1,0.

Offset 1, canonical program `A264004.P5864894677595507346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A264004 (n : ℕ) : ℤ :=
  A264004.P5864894677595507346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A264004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264060.P9620023887964227685

`A006498(n+2)^3`
-/

namespace A264060.P9620023887964227685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (n + 2) ^ 3

end

end A264060.P9620023887964227685

noncomputable section

/-- A264060: Number of (2+1) X (n+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 1,2 or 2,-2.

Offset 1, canonical program `A264060.P9620023887964227685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A264060 (n : ℕ) : ℤ :=
  A264060.P9620023887964227685.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A264060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264119.P17883340675905039687

`gcd(∑[n], A001468(A174571(n)))`
-/

namespace A264119.P17883340675905039687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A001468 (A174571 n).toNat)

end

end A264119.P17883340675905039687

noncomputable section

/-- A264119: Look and say for Fibonacci word A003842.

Offset 0, canonical program `A264119.P17883340675905039687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A264119 (n : ℕ) : ℤ :=
  (A264119.P17883340675905039687.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A264119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264251.P10869739419922565177

`A005178(n+3)*A020695(n)`
-/

namespace A264251.P10869739419922565177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005178 (n + 3) * A020695 n

end

end A264251.P10869739419922565177

noncomputable section

/-- A264251: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having directed index change 0,1 0,-1 0,2 1,0 or -1,0.

Offset 1, canonical program `A264251.P10869739419922565177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A264251 (n : ℕ) : ℤ :=
  A264251.P10869739419922565177.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A264251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264266.P12471914560901101682

`A020695(n)*A189450(n+2)`
-/

namespace A264266.P12471914560901101682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n * A189450 (n + 2)

end

end A264266.P12471914560901101682

noncomputable section

/-- A264266: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 1,0 or 1,2.

Offset 1, canonical program `A264266.P12471914560901101682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A264266 (n : ℕ) : ℤ :=
  A264266.P12471914560901101682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A264266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264294.P2902851958335365985

`A000045(n+3)*A116201(n+3)`
-/

namespace A264294.P2902851958335365985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) * A116201 (n + 3)

end

end A264294.P2902851958335365985

noncomputable section

/-- A264294: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having directed index change 0,1 0,-2 1,0 or -1,0.

Offset 1, canonical program `A264294.P2902851958335365985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. -/
def A264294 (n : ℕ) : ℤ :=
  A264294.P2902851958335365985.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. -/
def A264294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264360.P7618988838713890390

`A002478(n+2)*A189604(n+2)`
-/

namespace A264360.P7618988838713890390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002478 (n + 2) * A189604 (n + 2)

end

end A264360.P7618988838713890390

noncomputable section

/-- A264360: Number of (n+1) X (4+1) arrays of permutations of 0..n*5+4 with each element having directed index change 0,0 0,2 1,0 or -1,-2.

Offset 1, canonical program `A264360.P7618988838713890390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A264360 (n : ℕ) : ℤ :=
  A264360.P7618988838713890390.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A264360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264365.P12216020434359489775

`A068921(or(1, n+1))*A068921(or(1, n))`
-/

namespace A264365.P12216020434359489775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (Nat.lor 1 (n + 1)) * A068921 (Nat.lor 1 n)

end

end A264365.P12216020434359489775

noncomputable section

/-- A264365: Number of (1+1) X (n+1) arrays of permutations of 0..n*2+1 with each element having directed index change 0,0 0,2 1,0 or -1,-2.

Offset 1, canonical program `A264365.P12216020434359489775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A264365 (n : ℕ) : ℤ :=
  A264365.P12216020434359489775.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A264365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264388.P1449055974794390158

`lcm(n+1, A208950(n))/(n+1)`
-/

namespace A264388.P1449055974794390158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A208950 n) : ℚ) / (n + 1 : ℚ)

end

end A264388.P1449055974794390158

noncomputable section

/-- A264388: Numerators of binomial(n-1, 2)/(6*n), for n >= 1. Numerators of Dedekind sum s(1, n).

Offset 1, canonical program `A264388.P1449055974794390158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264388 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A264388.P1449055974794390158.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264390.P14092206613407572109

`∑[8*A046897((n+1)²)]`
-/

namespace A264390.P14092206613407572109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A046897 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264390.P14092206613407572109

noncomputable section

/-- A264390: Partial sums of A267326.

Offset 1, canonical program `A264390.P14092206613407572109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A264390 (n : ℕ) : ℤ :=
  A264390.P14092206613407572109.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A264390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264507.P12627177098187913317

`A080013(2*(n+2))`
-/

namespace A264507.P12627177098187913317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080013 (2 * (n + 2))

end

end A264507.P12627177098187913317

noncomputable section

/-- A264507: Number of (1+1) X (n+1) arrays of permutations of 0..n*2+1 with each element having directed index change -1,1 0,-1 0,1 or 1,0.

Offset 1, canonical program `A264507.P12627177098187913317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A264507 (n : ℕ) : ℤ :=
  A264507.P12627177098187913317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A264507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264735.P6566408728403550329

`A000040(A014480(n))`
-/

namespace A264735.P6566408728403550329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A014480 n).toNat

end

end A264735.P6566408728403550329

noncomputable section

/-- A264735: a(n) = prime(2^(n-1)*(2*n-1)), n >= 1.

Offset 1, canonical program `A264735.P6566408728403550329`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A264735 (n : ℕ) : ℤ :=
  A264735.P6566408728403550329.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A264735.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A264740.P9929393964355727410

`∑{d}[n+1, #*A088705((n+1)/#)]`
-/

namespace A264740.P9929393964355727410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A088705 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A264740.P9929393964355727410

noncomputable section

/-- A264740: Sum of odd parts of divisors of n.

Offset 1, canonical program `A264740.P9929393964355727410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264740 (n : ℕ) : ℤ :=
  A264740.P9929393964355727410.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264823.P5478907989442003670

`∩[A256917(n+1), a(n-1)+16*n]` with `a(0)=1`
-/

namespace A264823.P5478907989442003670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 16 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A264823.P5478907989442003670

noncomputable section

/-- A264823: Centered 16-gonal (or hexadecagonal) primes.

Offset 1, canonical program `A264823.P5478907989442003670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2028 terms. -/
def A264823 (n : ℕ) : ℤ :=
  (A264823.P5478907989442003670.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2028 terms. -/
def A264823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264981.P17778946798948097186

`A001019(val(n+1, 9))`
-/

namespace A264981.P17778946798948097186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 (SequenceMachineLib.valuation (n + 1) 9)

end

end A264981.P17778946798948097186

noncomputable section

/-- A264981: Highest power of 9 dividing n.

Offset 1, canonical program `A264981.P17778946798948097186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264981 (n : ℕ) : ℤ :=
  A264981.P17778946798948097186.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264981.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265035.P10344988030138921737

`A311101(n)-n`
-/

namespace A265035.P10344988030138921737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311101 n - (n : ℤ)

end

end A265035.P10344988030138921737

noncomputable section

/-- A265035: Coordination sequence of 2-uniform tiling {3.4.6.4, 4.6.12} with respect to a point of type 4.6.12.

Offset 0, canonical program `A265035.P10344988030138921737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265035 (n : ℕ) : ℤ :=
  A265035.P10344988030138921737.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265081.P5445107378262976962

`A123865(n+1)+A015246(n)`
-/

namespace A265081.P5445107378262976962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123865 (n + 1) + A015246 n

end

end A265081.P5445107378262976962

noncomputable section

/-- A265081: Row 4 of array in A265080.

Offset 0, canonical program `A265081.P5445107378262976962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A265081 (n : ℕ) : ℤ :=
  A265081.P5445107378262976962.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A265081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265133.P341175718013203174

`∑[A022933(n)]`
-/

namespace A265133.P341175718013203174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265133.P341175718013203174

noncomputable section

/-- A265133: Beatty sequence for log(2).

Offset 1, canonical program `A265133.P341175718013203174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265133 (n : ℕ) : ℤ :=
  A265133.P341175718013203174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265263.P13560857298709796040

`and(n, A066194(n+1)-1)`
-/

namespace A265263.P13560857298709796040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A066194 (n + 1) - 1)

end

end A265263.P13560857298709796040

noncomputable section

/-- A265263: Change every other 1 bit in binary expansion of n to 0.

Offset 0, canonical program `A265263.P13560857298709796040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A265263 (n : ℕ) : ℤ :=
  A265263.P13560857298709796040.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A265263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265316.P6661828198078736164

`A261691(2*n)`
-/

namespace A265316.P6661828198078736164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261691 (2 * n)

end

end A265316.P6661828198078736164

noncomputable section

/-- A265316: First row of A262057.

Offset 1, canonical program `A265316.P6661828198078736164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1065 terms. -/
def A265316 (n : ℕ) : ℤ :=
  A265316.P6661828198078736164.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1065 terms. -/
def A265316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265334.P10828477990969834378

`eq[A038712(A038712(n+1)), A099563(n)]`
-/

namespace A265334.P10828477990969834378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A038712 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A265334.P10828477990969834378

noncomputable section

/-- A265334: Numbers that are >= k! but < 2*k! for some k; numbers whose factorial base representation (A007623) begins with digit "1".

Offset 1, canonical program `A265334.P10828477990969834378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4024 terms. -/
def A265334 (n : ℕ) : ℤ :=
  (A265334.P10828477990969834378.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4024 terms. -/
def A265334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265380.P382037928076372946

`or(10*a(n-1), A010121(n+1))` with `a(0)=1`
-/

namespace A265380.P382037928076372946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A010121 (n + 1))

end

end A265380.P382037928076372946

noncomputable section

/-- A265380: Binary representation of the middle column of the "Rule 158" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A265380.P382037928076372946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A265380 (n : ℕ) : ℤ :=
  A265380.P382037928076372946.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A265380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265400.P16005783905109969964

`A083479(Δ[C(A083479(n), 2)])`
-/

namespace A265400.P16005783905109969964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A083479 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A265400.P16005783905109969964

noncomputable section

/-- A265400: a(n) = one-based index to the nearest horizontally or vertically adjacent inner neighbor in square-grid spirals, or 0 if n is one of the corner cases A033638.

Offset 1, canonical program `A265400.P16005783905109969964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265400 (n : ℕ) : ℤ :=
  A265400.P16005783905109969964.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265574.P12659384579340783874

`gcd(∑[n+1], A020500(n+2))`
-/

namespace A265574.P12659384579340783874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A020500 (n + 2))

end

end A265574.P12659384579340783874

noncomputable section

/-- A265574: LCM-transform of triangular numbers.

Offset 1, canonical program `A265574.P12659384579340783874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A265574 (n : ℕ) : ℤ :=
  (A265574.P12659384579340783874.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A265574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265716.P13096751202015572622

`or(n, A261693(n))+n`
-/

namespace A265716.P13096751202015572622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A261693 n) + (n : ℤ)

end

end A265716.P13096751202015572622

noncomputable section

/-- A265716: a(n) = n IMPL (2*n), where IMPL is the bitwise logical implication.

Offset 0, canonical program `A265716.P13096751202015572622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A265716 (n : ℕ) : ℤ :=
  A265716.P13096751202015572622.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A265716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265725.P12424624890549814316

`2^n-A135491(n)`
-/

namespace A265725.P12424624890549814316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A135491 n

end

end A265725.P12424624890549814316

noncomputable section

/-- A265725: Number of binary strings of length n having at least one run of length at least 4.

Offset 0, canonical program `A265725.P12424624890549814316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A265725 (n : ℕ) : ℤ :=
  A265725.P12424624890549814316.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A265725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265805.P10099621625771147693

`A265804(n)-Δ[A265804(n+1)]`
-/

namespace A265805.P10099621625771147693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265804 n - (f1 (n + 1) - f1 n)

end

end A265805.P10099621625771147693

noncomputable section

/-- A265805: Coefficient of x in minimal polynomial of the continued fraction [1^n,5,1,1,1,...], where 1^n means n ones.

Offset 0, canonical program `A265805.P10099621625771147693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A265805 (n : ℕ) : ℤ :=
  A265805.P10099621625771147693.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A265805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266008.P4738884288798729973

`Δ[A180046(2*n+3)]`
-/

namespace A266008.P4738884288798729973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180046 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266008.P4738884288798729973

noncomputable section

/-- A266008: Number of n X 4 integer arrays with each element equal to the number of horizontal and antidiagonal neighbors equal to itself.

Offset 1, canonical program `A266008.P4738884288798729973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 449 terms. -/
def A266008 (n : ℕ) : ℤ :=
  A266008.P4738884288798729973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 449 terms. -/
def A266008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266088.P3253608602650890234

`∑[(-1)^n*A051624(n)]`
-/

namespace A266088.P3253608602650890234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A051624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266088.P3253608602650890234

noncomputable section

/-- A266088: Alternating sum of 12-gonal (or dodecagonal) numbers.

Offset 0, canonical program `A266088.P3253608602650890234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266088 (n : ℕ) : ℤ :=
  A266088.P3253608602650890234.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266227.P13814129457012190154

`floor(∑{d}[n+1, 1/A000203(#)])`
-/

namespace A266227.P13814129457012190154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), 1 / (A000203 d : ℚ)⌋

end

end A266227.P13814129457012190154

noncomputable section

/-- A266227: a(n) = floor(Sum_{d|n} 1/sigma(d)).

Offset 1, canonical program `A266227.P13814129457012190154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266227 (n : ℕ) : ℤ :=
  A266227.P13814129457012190154.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266229.P14711780449339868904

`A002061(n)+A059839(n)*A085537(n)`
-/

namespace A266229.P14711780449339868904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n + A059839 n * A085537 n

end

end A266229.P14711780449339868904

noncomputable section

/-- A266229: a(n) = Sum_{j=0..12} (-n)^j.

Offset 0, canonical program `A266229.P14711780449339868904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266229 (n : ℕ) : ℤ :=
  A266229.P14711780449339868904.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266242.P14036727876500094086

`eq[exp(floor(3*π*n)%3), A327298(n+4)]`
-/

namespace A266242.P14036727876500094086
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (Int.tmod ⌊3 * (Real.pi * (n : ℝ))⌋ 3 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327298 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A266242.P14036727876500094086

noncomputable section

/-- A266242: Numbers n such that the initial digit of the fractional part of n*Pi is 0.

Offset 1, canonical program `A266242.P14036727876500094086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 972 terms. -/
def A266242 (n : ℕ) : ℤ :=
  (A266242.P14036727876500094086.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 972 terms. -/
def A266242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266247.P9589200688830506341

`A266246(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A266247.P9589200688830506341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266246 n + 10 * a (n - 1)

end

end A266247.P9589200688830506341

noncomputable section

/-- A266247: Binary representation of the middle column of the "Rule 9" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266247.P9589200688830506341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A266247 (n : ℕ) : ℤ :=
  A266247.P9589200688830506341.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A266247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266265.P18011338418643426227

`(n+1)^(A007425(n+1)/3)`
-/

namespace A266265.P18011338418643426227
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A007425 (n + 1) : ℚ) / 3 : ℝ)

end

end A266265.P18011338418643426227

noncomputable section

/-- A266265: Product of products of divisors of divisors of n.

Offset 1, canonical program `A266265.P18011338418643426227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A266265 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A266265.P18011338418643426227.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A266265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266324.P10953631783085328331

`A166977(A266220(n))`
-/

namespace A266324.P10953631783085328331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166977 (A266220 n).toNat

end

end A266324.P10953631783085328331

noncomputable section

/-- A266324: Decimal representation of the n-th iteration of the "Rule 19" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266324.P10953631783085328331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266324 (n : ℕ) : ℤ :=
  A266324.P10953631783085328331.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266326.P7232477752521616832

`A267006(A351782(n+1))`
-/

namespace A266326.P7232477752521616832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267006 (A351782 (n + 1)).toNat

end

end A266326.P7232477752521616832

noncomputable section

/-- A266326: Triangle read by rows giving successive states of cellular automaton generated by "Rule 20" initiated with a single ON (black) cell.

Offset 0, canonical program `A266326.P7232477752521616832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266326 (n : ℕ) : ℤ :=
  A266326.P7232477752521616832.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266339.P169478171867598227

`A094103(2*n+5)+A000007(n)-4`
-/

namespace A266339.P169478171867598227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094103 (2 * n + 5) + (A000007 n - 4)

end

end A266339.P169478171867598227

noncomputable section

/-- A266339: G.f. = b(2)^2*b(4)/(x^5+x^4-x^3-x^2-x+1), where b(k) = (1-x^k)/(1-x).

Offset 0, canonical program `A266339.P169478171867598227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A266339 (n : ℕ) : ℤ :=
  A266339.P169478171867598227.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A266339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266377.P3840532297308021321

`A266253((2*n)%(n+2))`
-/

namespace A266377.P3840532297308021321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266253 (2 * n % (n + 2))

end

end A266377.P3840532297308021321

noncomputable section

/-- A266377: Triangle read by rows giving successive states of cellular automaton generated by "Rule 21" initiated with a single ON (black) cell.

Offset 0, canonical program `A266377.P3840532297308021321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266377 (n : ℕ) : ℤ :=
  A266377.P3840532297308021321.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266380.P3725399076029942942

`A000225(A266220(n))`
-/

namespace A266380.P3725399076029942942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A266220 n).toNat

end

end A266380.P3725399076029942942

noncomputable section

/-- A266380: Decimal representation of the n-th iteration of the "Rule 21" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266380.P3725399076029942942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266380 (n : ℕ) : ℤ :=
  A266380.P3725399076029942942.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266429.P8553441658832143791

`∑[A081282(n+1)+n+2]+1`
-/

namespace A266429.P8553441658832143791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081282 (n + 1) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A266429.P8553441658832143791

noncomputable section

/-- A266429: Number of 3 X n binary arrays with rows and columns lexicographically nondecreasing and column sums nondecreasing.

Offset 1, canonical program `A266429.P8553441658832143791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A266429 (n : ℕ) : ℤ :=
  A266429.P8553441658832143791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A266429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266461.P3076525258767983135

`xor(A016116(n+1), A279872(A266303(n)))`
-/

namespace A266461.P3076525258767983135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A016116 (n + 1)) (A279872 (A266303 n).toNat)

end

end A266461.P3076525258767983135

noncomputable section

/-- A266461: Decimal representation of the n-th iteration of the "Rule 27" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266461.P3076525258767983135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266461 (n : ℕ) : ℤ :=
  A266461.P3076525258767983135.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266471.P2881579580253821296

`4*(n+1)+A271567(n)-A056118(n)+A006331(n)+1`
-/

namespace A266471.P2881579580253821296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) + (A271567 n - A056118 n + (A006331 n + 1))

end

end A266471.P2881579580253821296

noncomputable section

/-- A266471: Number of 4 X n binary arrays with rows and columns lexicographically nondecreasing and column sums nonincreasing.

Offset 1, canonical program `A266471.P2881579580253821296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266471 (n : ℕ) : ℤ :=
  A266471.P2881579580253821296.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266502.P4655632228616341608

`and(A009191(n+1), A118175(n))`
-/

namespace A266502.P4655632228616341608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A009191 (n + 1)) (A118175 n)

end

end A266502.P4655632228616341608

noncomputable section

/-- A266502: Triangle read by rows giving successive states of cellular automaton generated by "Rule 28" initiated with a single ON (black) cell.

Offset 0, canonical program `A266502.P4655632228616341608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266502 (n : ℕ) : ℤ :=
  A266502.P4655632228616341608.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266607.P6288959086002507873

`xor(A131572(n), A266436(n))`
-/

namespace A266607.P6288959086002507873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A131572 n) (A266436 n)

end

end A266607.P6288959086002507873

noncomputable section

/-- A266607: Decimal representation of the n-th iteration of the "Rule 39" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266607.P6288959086002507873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266607 (n : ℕ) : ℤ :=
  A266607.P6288959086002507873.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266661.P16932731646310684798

`or(A130713(n), A266255(n))`
-/

namespace A266661.P16932731646310684798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130713 n) (A266255 n)

end

end A266661.P16932731646310684798

noncomputable section

/-- A266661: Decimal representation of the n-th iteration of the "Rule 47" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266661.P16932731646310684798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266661 (n : ℕ) : ℤ :=
  A266661.P16932731646310684798.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266668.P13642406373938606405

`A266302(n)-A225883(n)`
-/

namespace A266668.P13642406373938606405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266302 n - A225883 n

end

end A266668.P13642406373938606405

noncomputable section

/-- A266668: Decimal representation of the n-th iteration of the "Rule 51" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266668.P13642406373938606405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266668 (n : ℕ) : ℤ :=
  A266668.P13642406373938606405.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266671.P5923110452531764722

`A094015(n)*A094024(n)-n%2`
-/

namespace A266671.P5923110452531764722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094015 n * A094024 n - ((n % 2 : ℕ) : ℤ)

end

end A266671.P5923110452531764722

noncomputable section

/-- A266671: Decimal representation of the n-th iteration of the "Rule 53" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266671.P5923110452531764722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266671 (n : ℕ) : ℤ :=
  A266671.P5923110452531764722.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266706.P18198737857138760335

`A266705(n)-Δ[A266705(n+1)]`
-/

namespace A266706.P18198737857138760335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266705 n - (f1 (n + 1) - f1 n)

end

end A266706.P18198737857138760335

noncomputable section

/-- A266706: Coefficient of x in minimal polynomial of the continued fraction [1^n,sqrt(5),1,1,1,...], where 1^n means n ones.

Offset 1, canonical program `A266706.P18198737857138760335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A266706 (n : ℕ) : ℤ :=
  A266706.P18198737857138760335.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A266706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266708.P14678480856737926102

`-2*A192914(n+1)`
-/

namespace A266708.P14678480856737926102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * A192914 (n + 1))

end

end A266708.P14678480856737926102

noncomputable section

/-- A266708: Coefficient of x in minimal polynomial of the continued fraction [1^n,phi,1,1,1,...], where 1^n means n ones and phi = golden ratio = (1 + sqrt(5))/2.

Offset 0, canonical program `A266708.P14678480856737926102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A266708 (n : ℕ) : ℤ :=
  A266708.P14678480856737926102.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A266708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266709.P11812194294470715169

`1-2*A192872(n+3)`
-/

namespace A266709.P11812194294470715169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A192872 (n + 3)

end

end A266709.P11812194294470715169

noncomputable section

/-- A266709: Coefficient of x in minimal polynomial of the continued fraction [2,1^n,2,1,1,...], where 1^n means n ones.

Offset 0, canonical program `A266709.P11812194294470715169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A266709 (n : ℕ) : ℤ :=
  A266709.P11812194294470715169.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A266709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266850.P1810142981917257223

`xor(A131572(n)², A266436(n))`
-/

namespace A266850.P1810142981917257223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A131572 n ^ 2) (A266436 n)

end

end A266850.P1810142981917257223

noncomputable section

/-- A266850: Decimal representation of the n-th iteration of the "Rule 71" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266850.P1810142981917257223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266850 (n : ℕ) : ℤ :=
  A266850.P1810142981917257223.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266956.P5863885163544571678

`A218864(n+1)+1`
-/

namespace A266956.P5863885163544571678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218864 (n + 1) + 1

end

end A266956.P5863885163544571678

noncomputable section

/-- A266956: Numbers m such that 9*m+7 is a square.

Offset 1, canonical program `A266956.P5863885163544571678`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A218864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A266956 (n : ℕ) : ℤ :=
  A266956.P5863885163544571678.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A218864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A266956.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A266957.P15569453136747662054

`A132355(n+1)-1`
-/

namespace A266957.P15569453136747662054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132355 (n + 1) - 1

end

end A266957.P15569453136747662054

noncomputable section

/-- A266957: Numbers m such that 9*m+10 is a square.

Offset 1, canonical program `A266957.P15569453136747662054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266957 (n : ℕ) : ℤ :=
  A266957.P15569453136747662054.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266982.P8719041524889349912

`a(a(A083479(n)))` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A266982.P8719041524889349912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (a (A083479 n).toNat)

end

end A266982.P8719041524889349912

noncomputable section

/-- A266982: Triangle read by rows giving successive states of cellular automaton generated by "Rule 81" initiated with a single ON (black) cell.

Offset 0, canonical program `A266982.P8719041524889349912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266982 (n : ℕ) : ℤ :=
  (A266982.P8719041524889349912.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267003.P11558593261054300473

`xor(A131572(3*n), A266436(n))`
-/

namespace A267003.P11558593261054300473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A131572 (3 * n)) (A266436 n)

end

end A267003.P11558593261054300473

noncomputable section

/-- A267003: Decimal representation of the n-th iteration of the "Rule 83" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267003.P11558593261054300473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A267003 (n : ℕ) : ℤ :=
  A267003.P11558593261054300473.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A267003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267042.P17709165627841809251

`or(A000079(n)*A279961(n), A279962(n))`
-/

namespace A267042.P17709165627841809251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n * A279961 n) (A279962 n)

end

end A267042.P17709165627841809251

noncomputable section

/-- A267042: Decimal representation of the n-th iteration of the "Rule 91" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267042.P17709165627841809251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A267042 (n : ℕ) : ℤ :=
  A267042.P17709165627841809251.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A267042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267144.P16510657683815295351

`A000567(A000040(n+1))`
-/

namespace A267144.P16510657683815295351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (A000040 (n + 1)).toNat

end

end A267144.P16510657683815295351

noncomputable section

/-- A267144: Octagonal numbers with prime indices.

Offset 1, canonical program `A267144.P16510657683815295351`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267144 (n : ℕ) : ℤ :=
  A267144.P16510657683815295351.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267144.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A267156.P1314108514053458750

`A267155(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A267156.P1314108514053458750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267155 n + 10 * a (n - 1)

end

end A267156.P1314108514053458750

noncomputable section

/-- A267156: Binary representation of the middle column of the "Rule 107" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267156.P1314108514053458750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267156 (n : ℕ) : ℤ :=
  A267156.P1314108514053458750.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267157.P5346846531904863656

`a(n-1)+A267155(n)+a(n-1)` with `a(0)=1`
-/

namespace A267157.P5346846531904863656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A267155 n + a (n - 1))

end

end A267157.P5346846531904863656

noncomputable section

/-- A267157: Decimal representation of the middle column of the "Rule 107" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267157.P5346846531904863656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A267157 (n : ℕ) : ℤ :=
  A267157.P5346846531904863656.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A267157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267217.P10913398264968307580

`A001107(A000040(n+1))`
-/

namespace A267217.P10913398264968307580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 (A000040 (n + 1)).toNat

end

end A267217.P10913398264968307580

noncomputable section

/-- A267217: 10-gonal (or decagonal) numbers with prime indices.

Offset 1, canonical program `A267217.P10913398264968307580`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267217 (n : ℕ) : ℤ :=
  A267217.P10913398264968307580.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267217.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A267226.P11849902975923826706

`2*A111297(n+1)-1`
-/

namespace A267226.P11849902975923826706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111297 (n + 1) - 1

end

end A267226.P11849902975923826706

noncomputable section

/-- A267226: Number of length-n 0..2 arrays with no following elements greater than or equal to the first repeated value.

Offset 1, canonical program `A267226.P11849902975923826706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A267226 (n : ℕ) : ℤ :=
  A267226.P11849902975923826706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A267226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267258.P5534093032175889116

`xor(2*a(n-1), A267256(n))` with `a(0)=1`
-/

namespace A267258.P5534093032175889116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (2 * a (n - 1)) (A267256 n)

end

end A267258.P5534093032175889116

noncomputable section

/-- A267258: Decimal representation of the middle column of the "Rule 111" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267258.P5534093032175889116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A267258 (n : ℕ) : ℤ :=
  A267258.P5534093032175889116.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A267258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267260.P17358005146578031685

`(n+1)²-A267262(n)`
-/

namespace A267260.P17358005146578031685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A267262 n

end

end A267260.P17358005146578031685

noncomputable section

/-- A267260: Total number of ON (black) cells after n iterations of the "Rule 111" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267260.P17358005146578031685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267260 (n : ℕ) : ℤ :=
  A267260.P17358005146578031685.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267261.P3387360367513525929

`A267262(n)-A267262((2*n)%(n+1))`
-/

namespace A267261.P3387360367513525929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267262 n - A267262 (2 * n % (n + 1))

end

end A267261.P3387360367513525929

noncomputable section

/-- A267261: Number of OFF (white) cells in the n-th iteration of the "Rule 111" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267261.P3387360367513525929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267261 (n : ℕ) : ℤ :=
  A267261.P3387360367513525929.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267366.P16052078199144211889

`A036987(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A267366.P16052078199144211889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A036987 n + 10 * a (n - 1)

end

end A267366.P16052078199144211889

noncomputable section

/-- A267366: Binary representation of the middle column of the "Rule 126" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267366.P16052078199144211889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267366 (n : ℕ) : ℤ :=
  A267366.P16052078199144211889.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267367.P459713566228756321

`a(n-1)+A036987(n)+a(n-1)` with `a(0)=1`
-/

namespace A267367.P459713566228756321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A036987 n + a (n - 1))

end

end A267367.P459713566228756321

noncomputable section

/-- A267367: Decimal representation of the middle column of the "Rule 126" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267367.P459713566228756321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A267367 (n : ℕ) : ℤ :=
  A267367.P459713566228756321.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A267367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267444.P12052206994114013281

`xor(1, A036987(n)+2*a(n-1))` with `a(0)=1`
-/

namespace A267444.P12052206994114013281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (A036987 n + 2 * a (n - 1))

end

end A267444.P12052206994114013281

noncomputable section

/-- A267444: Decimal representation of the middle column of the "Rule 129" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267444.P12052206994114013281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A267444 (n : ℕ) : ℤ :=
  A267444.P12052206994114013281.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A267444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267465.P1220757453675441093

`3^n+A047860(n)+1`
-/

namespace A267465.P1220757453675441093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) + (A047860 n + 1)

end

end A267465.P1220757453675441093

noncomputable section

/-- A267465: Number of length-n 0..2 arrays with no following elements larger than the first repeated value.

Offset 1, canonical program `A267465.P1220757453675441093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A267465 (n : ℕ) : ℤ :=
  A267465.P1220757453675441093.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A267465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267472.P15438356879264679338

`A072025(n+1)+∑[A005891(n)]`
-/

namespace A267472.P15438356879264679338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072025 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267472.P15438356879264679338

noncomputable section

/-- A267472: Number of length-4 0..n arrays with no following elements larger than the first repeated value.

Offset 1, canonical program `A267472.P15438356879264679338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267472 (n : ℕ) : ℤ :=
  A267472.P15438356879264679338.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267520.P11008997712786491170

`1-Δ[A265186(n)]²`
-/

namespace A267520.P11008997712786491170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) ^ 2

end

end A267520.P11008997712786491170

noncomputable section

/-- A267520: Triangle read by rows giving successive states of cellular automaton generated by "Rule 139" initiated with a single ON (black) cell.

Offset 0, canonical program `A267520.P11008997712786491170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267520 (n : ℕ) : ℤ :=
  A267520.P11008997712786491170.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267580.P12480041897936984409

`xor(10*a(n-1), A267579(n))` with `a(0)=1`
-/

namespace A267580.P12480041897936984409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (10 * a (n - 1)) (A267579 n)

end

end A267580.P12480041897936984409

noncomputable section

/-- A267580: Binary representation of the middle column of the "Rule 167" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267580.P12480041897936984409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267580 (n : ℕ) : ℤ :=
  A267580.P12480041897936984409.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267581.P10230663619374770058

`A267579(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A267581.P10230663619374770058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267579 n + 2 * a (n - 1)

end

end A267581.P10230663619374770058

noncomputable section

/-- A267581: Decimal representation of the middle column of the "Rule 167" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267581.P10230663619374770058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A267581 (n : ℕ) : ℤ :=
  A267581.P10230663619374770058.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A267581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267588.P10329583865328879434

`xor(10*a(n-1), A267587(n))` with `a(0)=1`
-/

namespace A267588.P10329583865328879434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (10 * a (n - 1)) (A267587 n)

end

end A267588.P10329583865328879434

noncomputable section

/-- A267588: Binary representation of the middle column of the "Rule 169" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267588.P10329583865328879434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267588 (n : ℕ) : ℤ :=
  A267588.P10329583865328879434.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267598.P7161317194914824698

`and(1, A266253(n)+n)`
-/

namespace A267598.P7161317194914824698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A266253 n + (n : ℤ))

end

end A267598.P7161317194914824698

noncomputable section

/-- A267598: Triangle read by rows giving successive states of cellular automaton generated by "Rule 177" initiated with a single ON (black) cell.

Offset 0, canonical program `A267598.P7161317194914824698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267598 (n : ℕ) : ℤ :=
  A267598.P7161317194914824698.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267610.P16878864533377162923

`∑[A071055(n)]`
-/

namespace A267610.P16878864533377162923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267610.P16878864533377162923

noncomputable section

/-- A267610: Total number of OFF (white) cells after n iterations of the "Rule 182" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267610.P16878864533377162923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267610 (n : ℕ) : ℤ :=
  A267610.P16878864533377162923.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267654.P574558163347297838

`2*A086520(n+2)`
-/

namespace A267654.P574558163347297838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086520 (n + 2)

end

end A267654.P574558163347297838

noncomputable section

/-- A267654: Irregular triangle of palindromic subsequences. Every row has 2*n+1 terms. From the second row, there are only two alternated numbers: 2*n+4 and 2*n+2.

Offset 0, canonical program `A267654.P574558163347297838`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086520, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267654 (n : ℕ) : ℤ :=
  A267654.P574558163347297838.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086520, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267654.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A267668.P2568313771538344104

`4*A052955(n)^3`
-/

namespace A267668.P2568313771538344104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A052955 n ^ 3

end

end A267668.P2568313771538344104

noncomputable section

/-- A267668: Number of 3Xn 0..1 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

Offset 1, canonical program `A267668.P2568313771538344104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A267668 (n : ℕ) : ℤ :=
  A267668.P2568313771538344104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A267668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267678.P10509858284579671114

`4*xor(a(n-1), A289098(n))` with `a(0)=1, a(1)=2`
-/

namespace A267678.P10509858284579671114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * Int.xor (a (n - 1)) (A289098 n)

end

end A267678.P10509858284579671114

noncomputable section

/-- A267678: Decimal representation of the n-th iteration of the "Rule 197" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267678.P10509858284579671114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A267678 (n : ℕ) : ℤ :=
  A267678.P10509858284579671114.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A267678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267683.P13874331238885299583

`A267621(A028391(n+1))`
-/

namespace A267683.P13874331238885299583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267621 (A028391 (n + 1)).toNat

end

end A267683.P13874331238885299583

noncomputable section

/-- A267683: Triangle read by rows giving successive states of cellular automaton generated by "Rule 203" initiated with a single ON (black) cell.

Offset 0, canonical program `A267683.P13874331238885299583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267683 (n : ℕ) : ℤ :=
  A267683.P13874331238885299583.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267708.P17716609350446797913

`C(2, A023969(n)+2)`
-/

namespace A267708.P17716609350446797913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A023969 n + 2).toNat

end

end A267708.P17716609350446797913

noncomputable section

/-- A267708: Triangle read by rows giving successive states of cellular automaton generated by "Rule 206" initiated with a single ON (black) cell.

Offset 0, canonical program `A267708.P17716609350446797913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267708 (n : ℕ) : ℤ :=
  (A267708.P17716609350446797913.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267776.P12574266559993545674

`1-A267006(n+1)`
-/

namespace A267776.P12574266559993545674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A267006 (n + 1)

end

end A267776.P12574266559993545674

noncomputable section

/-- A267776: Triangle read by rows giving successive states of cellular automaton generated by "Rule 209" initiated with a single ON (black) cell.

Offset 0, canonical program `A267776.P12574266559993545674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267776 (n : ℕ) : ℤ :=
  A267776.P12574266559993545674.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267855.P8637090076544028619

`2^n*A006977(n)`
-/

namespace A267855.P8637090076544028619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A006977 n

end

end A267855.P8637090076544028619

noncomputable section

/-- A267855: Decimal representation of the n-th iteration of the "Rule 230" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267855.P8637090076544028619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A267855 (n : ℕ) : ℤ :=
  A267855.P8637090076544028619.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A267855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267860.P6730845852356039141

`n%2*A214211(n)`
-/

namespace A267860.P6730845852356039141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A214211 n

end

end A267860.P6730845852356039141

noncomputable section

/-- A267860: An infinite ternary 3-Fibonacci sequence (replace each 00 factor of the Fibonacci word with 020).

Offset 0, canonical program `A267860.P6730845852356039141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267860 (n : ℕ) : ℤ :=
  A267860.P6730845852356039141.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267866.P12751727066872604543

`Δ[A028391(n)]^n`
-/

namespace A267866.P12751727066872604543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ n

end

end A267866.P12751727066872604543

noncomputable section

/-- A267866: Triangle read by rows giving successive states of cellular automaton generated by "Rule 231" initiated with a single ON (black) cell.

Offset 0, canonical program `A267866.P12751727066872604543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267866 (n : ℕ) : ℤ :=
  A267866.P12751727066872604543.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267897.P8071461726051862786

`A005096(A000040(n+1))`
-/

namespace A267897.P8071461726051862786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005096 (A000040 (n + 1)).toNat

end

end A267897.P8071461726051862786

noncomputable section

/-- A267897: a(n) = prime(n)! - prime(n).

Offset 1, canonical program `A267897.P8071461726051862786`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267897 (n : ℕ) : ℤ :=
  A267897.P8071461726051862786.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267897.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A267898.P17565478472134533887

`A005095(A000040(n+1))`
-/

namespace A267898.P17565478472134533887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005095 (A000040 (n + 1)).toNat

end

end A267898.P17565478472134533887

noncomputable section

/-- A267898: a(n) = prime(n)! + prime(n).

Offset 1, canonical program `A267898.P17565478472134533887`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267898 (n : ℕ) : ℤ :=
  A267898.P17565478472134533887.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267898.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A267922.P1262934083183129406

`A267919(n+1)`
-/

namespace A267922.P1262934083183129406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267919 (n + 1)

end

end A267922.P1262934083183129406

noncomputable section

/-- A267922: Triangle read by rows giving successive states of cellular automaton generated by "Rule 245" initiated with a single ON (black) cell.

Offset 0, canonical program `A267922.P1262934083183129406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267922 (n : ℕ) : ℤ :=
  A267922.P1262934083183129406.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267947.P17630565095503735786

`3*A267946(n+1)²`
-/

namespace A267947.P17630565095503735786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A267946 (n + 1) ^ 2

end

end A267947.P17630565095503735786

noncomputable section

/-- A267947: Number of n X 2 0..2 arrays with every repeated value in every row and column one larger mod 3 than the previous repeated value, and upper left element zero.

Offset 1, canonical program `A267947.P17630565095503735786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A267947 (n : ℕ) : ℤ :=
  A267947.P17630565095503735786.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A267947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268094.P12267973900043072189

`3*A268093(n+1)²`
-/

namespace A268094.P12267973900043072189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A268093 (n + 1) ^ 2

end

end A268094.P12267973900043072189

noncomputable section

/-- A268094: Number of 2 X n 0..2 arrays with every repeated value in every row not one larger and in every column one larger mod 3 than the previous repeated value, and upper left element zero.

Offset 1, canonical program `A268094.P12267973900043072189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A268094 (n : ℕ) : ℤ :=
  A268094.P12267973900043072189.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A268094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268127.P12853289484081754662

`(A005704(n)-A006047(n))/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268127.P12853289484081754662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005704 n - A006047 n : ℚ) / 3

end

end A268127.P12853289484081754662

noncomputable section

/-- A268127: a(n) = (A005704(n)-A006047(n))/3.

Offset 0, canonical program `A268127.P12853289484081754662`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268127 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268127.P12853289484081754662.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268127.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268263.P16239416357249793199

`A269657(n+1)+A269658(n)+1`
-/

namespace A268263.P16239416357249793199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269657 (n + 1) + (A269658 n + 1)

end

end A268263.P16239416357249793199

noncomputable section

/-- A268263: Number of length-(4+1) 0..n arrays with new repeated values introduced in sequential order starting with zero.

Offset 1, canonical program `A268263.P16239416357249793199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A268263 (n : ℕ) : ℤ :=
  A268263.P16239416357249793199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A268263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268306.P10121998623319840244

`A008937(n)+1-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A268306.P10121998623319840244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A008937 n + 1 - a (n - 2)

end

end A268306.P10121998623319840244

noncomputable section

/-- A268306: The number of even permutations p of 1,2,...,n such that -1<=p(i)-i<=2 for i=1,2,...,n.

Offset 1, canonical program `A268306.P10121998623319840244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A268306 (n : ℕ) : ℤ :=
  A268306.P10121998623319840244.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A268306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268318.P17043639645401286693

`ceil(A005379(n+1)/A005378(n))`
-/

namespace A268318.P17043639645401286693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005379 (n + 1) : ℚ) / (A005378 n : ℚ)⌉

end

end A268318.P17043639645401286693

noncomputable section

/-- A268318: Irregular triangle read by rows: T(n,k) gives the row sums in the table Fib(n+1) X Fib(n), where k = 1..Fib(n+1), and 1's are assigned to cells on the longest diagonal path.

Offset 0, canonical program `A268318.P17043639645401286693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A268318 (n : ℕ) : ℤ :=
  A268318.P17043639645401286693.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A268318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268354.P8951824794683086161

`7^A214411(n+1)`
-/

namespace A268354.P8951824794683086161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A214411 (n + 1) : ℤ)

end

end A268354.P8951824794683086161

noncomputable section

/-- A268354: Highest power of 7 dividing n.

Offset 1, canonical program `A268354.P8951824794683086161`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214411, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268354 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268354.P8951824794683086161.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214411, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268354.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268375.P3303508265173202101

`record[(n+1)*A091862(n+1)]`
-/

namespace A268375.P3303508265173202101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A091862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268375.P3303508265173202101

noncomputable section

/-- A268375: Numbers k for which A001222(k) = A267116(k).

Offset 1, canonical program `A268375.P3303508265173202101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268375 (n : ℕ) : ℤ :=
  A268375.P3303508265173202101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268376.P14208294688663200019

`lt[A091862(n+1), 1]+1`
-/

namespace A268376.P14208294688663200019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091862 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A268376.P14208294688663200019

noncomputable section

/-- A268376: Numbers n for which A001222(n) > A267116(n).

Offset 1, canonical program `A268376.P14208294688663200019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268376 (n : ℕ) : ℤ :=
  (A268376.P14208294688663200019.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268412.P9227455982311292905

`comp[C(n, A264596(n)%2)]`
-/

namespace A268412.P9227455982311292905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Int.tmod (A264596 n) 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A268412.P9227455982311292905

noncomputable section

/-- A268412: Balanced evil numbers: numbers with an even number of runs of 1's in their binary expansion.

Offset 0, canonical program `A268412.P9227455982311292905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268412 (n : ℕ) : ℤ :=
  (A268412.P9227455982311292905.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268459.P1944635422954414379

`(n+1)*(A061222(n)-(n+1))`
-/

namespace A268459.P1944635422954414379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A061222 n - (n + 1 : ℤ))

end

end A268459.P1944635422954414379

noncomputable section

/-- A268459: Number of length-5 0..n arrays with no adjacent pair x,x+1 followed at any distance by x+1,x.

Offset 1, canonical program `A268459.P1944635422954414379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268459 (n : ℕ) : ℤ :=
  A268459.P1944635422954414379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268514.P15426293074144232651

`(A064194(n+1)-1)/2`
-/

namespace A268514.P15426293074144232651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064194 (n + 1) - 1 : ℚ) / 2

end

end A268514.P15426293074144232651

noncomputable section

/-- A268514: a(0)=0; thereafter a(2n+1)=3*a(n)+1, a(2n)=2*a(n)+a(n-1)+1.

Offset 0, canonical program `A268514.P15426293074144232651`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064194, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268514 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268514.P15426293074144232651.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064194, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268514.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268615.P10925931779231542023

`A000032(n)%40`
-/

namespace A268615.P10925931779231542023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 n) 40

end

end A268615.P10925931779231542023

noncomputable section

/-- A268615: Lucas numbers mod 40.

Offset 0, canonical program `A268615.P10925931779231542023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A268615 (n : ℕ) : ℤ :=
  A268615.P10925931779231542023.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A268615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268622.P2595254194921998262

`A113071(n+1)+A025192(n)`
-/

namespace A268622.P2595254194921998262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113071 (n + 1) + A025192 n

end

end A268622.P2595254194921998262

noncomputable section

/-- A268622: Number of n X 2 0..2 arrays with some element plus some horizontally or vertically adjacent neighbor totalling two no more than once.

Offset 1, canonical program `A268622.P2595254194921998262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. -/
def A268622 (n : ℕ) : ℤ :=
  A268622.P2595254194921998262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. -/
def A268622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268634.P11431430832775227814

`6*A229454(n+1)`
-/

namespace A268634.P11431430832775227814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229454 (n + 1)

end

end A268634.P11431430832775227814

noncomputable section

/-- A268634: Number of n X 3 0..2 arrays with some element plus some horizontally or vertically adjacent neighbor totalling two exactly once.

Offset 1, canonical program `A268634.P11431430832775227814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A268634 (n : ℕ) : ℤ :=
  A268634.P11431430832775227814.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A268634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268753.P6049220722085266056

`∪[A142159(n+1), A142167(n+1)]`
-/

namespace A268753.P6049220722085266056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A268753.P6049220722085266056

noncomputable section

/-- A268753: Primes congruent to 1 mod 13.

Offset 1, canonical program `A268753.P6049220722085266056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268753 (n : ℕ) : ℤ :=
  (A268753.P6049220722085266056.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268816.P14001663166469489172

`xor(n, 2*(A130481(n)-and(1, n)))`
-/

namespace A268816.P14001663166469489172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (2 * (A130481 n - (Nat.land 1 n : ℤ)))

end

end A268816.P14001663166469489172

noncomputable section

/-- A268816: Row 6 of A269158.

Offset 1, canonical program `A268816.P14001663166469489172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268816 (n : ℕ) : ℤ :=
  A268816.P14001663166469489172.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268836.P2302670208971616926

`∑[2*(A066194(n+1)-1)]`
-/

namespace A268836.P2302670208971616926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A066194 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268836.P2302670208971616926

noncomputable section

/-- A268836: Antidiagonal sums of array A268714: a(n) = Sum_{k=0..n} A006068(n)+A006068(n-k).

Offset 0, canonical program `A268836.P2302670208971616926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268836 (n : ℕ) : ℤ :=
  A268836.P2302670208971616926.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268878.P15478637018507468976

`a(floor((n-1)/2))*A000040(n)` with `a(0)=1`
-/

namespace A268878.P15478637018507468976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat * A000040 n

end

end A268878.P15478637018507468976

noncomputable section

/-- A268878: Breadth-first traversal of a binary tree in which the value at the n-th node is equal to ParentNode()*prime(n-1).

Offset 1, canonical program `A268878.P15478637018507468976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A268878 (n : ℕ) : ℤ :=
  A268878.P15478637018507468976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A268878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268896.P5599468407950783501

`A083575(A002264(n))-A130794(n+1)`
-/

namespace A268896.P5599468407950783501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083575 (A002264 n).toNat - A130794 (n + 1)

end

end A268896.P5599468407950783501

noncomputable section

/-- A268896: Start at a(0)=1. a(n) = a(n-1)+2 if n == 1,2 (mod 3) and a(n)=a(n-1)+a(n-3) if n == 0 (mod 3).

Offset 0, canonical program `A268896.P5599468407950783501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 990 terms. -/
def A268896 (n : ℕ) : ℤ :=
  A268896.P5599468407950783501.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 990 terms. -/
def A268896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268935.P18120066355436414076

`A001414(a(n-1)+a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A268935.P18120066355436414076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A001414 (a (n - 1) + a (n - 2)).toNat

end

end A268935.P18120066355436414076

noncomputable section

/-- A268935: a(1)=2, a(2)=3. For n>2 a(n) is the sum of the prime factors (with repetition) of a(n-1) + a(n-2).

Offset 1, canonical program `A268935.P18120066355436414076`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268935 (n : ℕ) : ℤ :=
  A268935.P18120066355436414076.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268935.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268967.P6279919360814936462

`Δ[4*A229277(2*n)]`
-/

namespace A268967.P6279919360814936462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A229277 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268967.P6279919360814936462

noncomputable section

/-- A268967: Number of n X 4 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

Offset 1, canonical program `A268967.P6279919360814936462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A268967 (n : ℕ) : ℤ :=
  A268967.P6279919360814936462.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A268967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269020.P2018992849811172209

`A059921(n+1)+(n+2)%(n+1)`
-/

namespace A269020.P2018992849811172209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059921 (n + 1) + (((n + 2) % (n + 1) : ℕ) : ℤ)

end

end A269020.P2018992849811172209

noncomputable section

/-- A269020: a(n) = ceiling(n^(1+1/n)).

Offset 1, canonical program `A269020.P2018992849811172209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269020 (n : ℕ) : ℤ :=
  A269020.P2018992849811172209.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269059.P2094528503455587302

`A069229(n)+A068156(n)`
-/

namespace A269059.P2094528503455587302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069229 n + A068156 n

end

end A269059.P2094528503455587302

noncomputable section

/-- A269059: Construct a hollow square of 1's of side n and fill its interior with 0's to create a stack of n binary numbers. Express the sum of the stack in decimal.

Offset 1, canonical program `A269059.P2094528503455587302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A269059 (n : ℕ) : ℤ :=
  A269059.P2094528503455587302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A269059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269169.P15341259716807644386

`∑[char[A269164(n+1)-1]]`
-/

namespace A269169.P15341259716807644386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269164 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269169.P15341259716807644386

noncomputable section

/-- A269169: The least monotonic left inverse for A269164.

Offset 1, canonical program `A269169.P15341259716807644386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A269169 (n : ℕ) : ℤ :=
  (A269169.P15341259716807644386.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A269169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269242.P14846144689689619762

`∑{digits}[A000578(n), A003982(#+2)]`
-/

namespace A269242.P14846144689689619762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A003982 (x + 2)).sum

end

end A269242.P14846144689689619762

noncomputable section

/-- A269242: Number of times the digit 2 appears in the decimal expansion of n^3.

Offset 0, canonical program `A269242.P14846144689689619762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269242 (n : ℕ) : ℤ :=
  A269242.P14846144689689619762.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269327.P12691883733270740652

`7^A000040(n+1)`
-/

namespace A269327.P12691883733270740652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A269327.P12691883733270740652

noncomputable section

/-- A269327: a(n) = 7^prime(n).

Offset 1, canonical program `A269327.P12691883733270740652`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269327 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A269327.P12691883733270740652.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269327.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A269411.P13893209665645532640

`(n+1)*∑[A258618(n+1)]-∑[n+1]`
-/

namespace A269411.P13893209665645532640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258618 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A269411.P13893209665645532640

noncomputable section

/-- A269411: Number of length-5 0..n arrays with no repeated value greater than or equal to the previous repeated value.

Offset 1, canonical program `A269411.P13893209665645532640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A269411 (n : ℕ) : ℤ :=
  A269411.P13893209665645532640.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A269411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269437.P2153338991453722051

`(n+2)*(A269436(n+1)-(n+1)²)`
-/

namespace A269437.P2153338991453722051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A269436 (n + 1) - ((n + 1) ^ 2 : ℤ))

end

end A269437.P2153338991453722051

noncomputable section

/-- A269437: Number of length-5 0..n arrays with no repeated value greater than the previous repeated value.

Offset 1, canonical program `A269437.P2153338991453722051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269437 (n : ℕ) : ℤ :=
  A269437.P2153338991453722051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269469.P2578020114568236256

`(n+1)*(A061222(n)-3)`
-/

namespace A269469.P2578020114568236256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A061222 n - 3)

end

end A269469.P2578020114568236256

noncomputable section

/-- A269469: Number of length-5 0..n arrays with no repeated value equal to the previous repeated value.

Offset 1, canonical program `A269469.P2578020114568236256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269469 (n : ℕ) : ℤ :=
  A269469.P2578020114568236256.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269486.P3485669575558773072

`ceil((A008455(n)+1)/(n+1))`
-/

namespace A269486.P3485669575558773072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008455 n + 1 : ℚ) / (n + 1 : ℚ)⌉

end

end A269486.P3485669575558773072

noncomputable section

/-- A269486: a(n) = Sum_{j=0..10} (-n)^j.

Offset 0, canonical program `A269486.P3485669575558773072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269486 (n : ℕ) : ℤ :=
  A269486.P3485669575558773072.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269488.P3891815757881610493

`A028859(n+1)+A078057(n+1)-A003945(n+1)`
-/

namespace A269488.P3891815757881610493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 (n + 1) + (A078057 (n + 1) - A003945 (n + 1))

end

end A269488.P3891815757881610493

noncomputable section

/-- A269488: Number of length-n 0..2 arrays with no repeated value differing from the previous repeated value by one.

Offset 1, canonical program `A269488.P3891815757881610493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A269488 (n : ℕ) : ℤ :=
  A269488.P3891815757881610493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A269488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269501.P849220256039381575

`floor(log2(A078446(n+1)))+1`
-/

namespace A269501.P849220256039381575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A078446 (n + 1)).toNat + 1

end

end A269501.P849220256039381575

noncomputable section

/-- A269501: Subsequence immediately following the instances of n in the sequence is n, n-1, ..., 1, n+1, n+2, ....

Offset 0, canonical program `A269501.P849220256039381575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269501 (n : ℕ) : ℤ :=
  (A269501.P849220256039381575.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269511.P16338175856752422456

`∑[A004526(n)+or(1, A110344(n+1))]`
-/

namespace A269511.P16338175856752422456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + Int.lor 1 (A110344 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269511.P16338175856752422456

noncomputable section

/-- A269511: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 342", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A269511.P16338175856752422456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3859 terms. -/
def A269511 (n : ℕ) : ℤ :=
  A269511.P16338175856752422456.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3859 terms. -/
def A269511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269512.P10670499889363108988

`Δ[A264797(n)]`
-/

namespace A269512.P10670499889363108988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264797 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269512.P10670499889363108988

noncomputable section

/-- A269512: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 342", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A269512.P10670499889363108988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3798 terms. -/
def A269512 (n : ℕ) : ℤ :=
  A269512.P10670499889363108988.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3798 terms. -/
def A269512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269621.P6094540291929403223

`A269585(n+1)-(3*n+4)`
-/

namespace A269621.P6094540291929403223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269585 (n + 1) - (3 * n + 4 : ℤ)

end

end A269621.P6094540291929403223

noncomputable section

/-- A269621: Number of length-5 0..n arrays with no repeated value differing from the previous repeated value by other than plus two, zero or minus 1.

Offset 1, canonical program `A269621.P6094540291929403223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269621 (n : ℕ) : ℤ :=
  A269621.P6094540291929403223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269679.P12521275085894758293

`A269538(n+1)+2%(n+2)`
-/

namespace A269679.P12521275085894758293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269538 (n + 1) + ((2 % (n + 2) : ℕ) : ℤ)

end

end A269679.P12521275085894758293

noncomputable section

/-- A269679: Number of length-4 0..n arrays with no repeated value differing from the previous repeated value by other than plus or minus one modulo n+1.

Offset 1, canonical program `A269679.P12521275085894758293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269679 (n : ℕ) : ℤ :=
  A269679.P12521275085894758293.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269725.P1750023856874493420

`A173027(n+1)-1`
-/

namespace A269725.P1750023856874493420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173027 (n + 1) - 1

end

end A269725.P1750023856874493420

noncomputable section

/-- A269725: a(n) = row number of extended Wythoff array (see A035513) which contains the sequence n times the Fibonacci numbers 1,2,3,5,8,13,21,... .

Offset 1, canonical program `A269725.P1750023856874493420`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173027, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269725 (n : ℕ) : ℤ :=
  A269725.P1750023856874493420.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173027, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269725.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A269778.P6970879223391902717

`Δ[∑[n+1]²]²-A011199(n+1)`
-/

namespace A269778.P6970879223391902717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - A011199 (n + 1)

end

end A269778.P6970879223391902717

noncomputable section

/-- A269778: Number of length-6 0..n arrays with every repeated value unequal to the previous repeated value plus one mod n+1.

Offset 1, canonical program `A269778.P6970879223391902717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A269778 (n : ℕ) : ℤ :=
  A269778.P6970879223391902717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A269778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269878.P13728270469944996308

`∑[A269876(n)]`
-/

namespace A269878.P13728270469944996308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269878.P13728270469944996308

noncomputable section

/-- A269878: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 43", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A269878.P13728270469944996308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3156 terms. -/
def A269878 (n : ℕ) : ℤ :=
  A269878.P13728270469944996308.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3156 terms. -/
def A269878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269879.P11216592577254974492

`Δ[A269876(n)]`
-/

namespace A269879.P11216592577254974492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269879.P11216592577254974492

noncomputable section

/-- A269879: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 43", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A269879.P11216592577254974492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3257 terms. -/
def A269879 (n : ℕ) : ℤ :=
  A269879.P11216592577254974492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3257 terms. -/
def A269879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269962.P8111660266029043890

`∑[A339124(n)]`
-/

namespace A269962.P8111660266029043890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269962.P8111660266029043890

noncomputable section

/-- A269962: Start with a square; at each stage add a square at each expandable vertex so that the ratio of the side of the squares at stage n+1 and at stage n is the golden ratio phi=0.618...; a(n) is the number of squares at n-th stage.

Offset 1, canonical program `A269962.P8111660266029043890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 276 terms. -/
def A269962 (n : ℕ) : ℤ :=
  A269962.P8111660266029043890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 276 terms. -/
def A269962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270003.P10437175995415337876

`A143545(n+1)%2+2`
-/

namespace A270003.P10437175995415337876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143545 (n + 1)) 2 + 2

end

end A270003.P10437175995415337876

noncomputable section

/-- A270003: Least prime p such that n = p + q - r for some primes q and r with q > p.

Offset 1, canonical program `A270003.P10437175995415337876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270003 (n : ℕ) : ℤ :=
  A270003.P10437175995415337876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270049.P13182036086160240146

`Δ[A186739(n+1)]`
-/

namespace A270049.P13182036086160240146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270049.P13182036086160240146

noncomputable section

/-- A270049: Number of 123 avoiding set partitions of [n].

Offset 0, canonical program `A270049.P13182036086160240146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A270049 (n : ℕ) : ℤ :=
  A270049.P13182036086160240146.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A270049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270089.P2691324095961846394

`∑[A270087(n)]`
-/

namespace A270089.P2691324095961846394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270089.P2691324095961846394

noncomputable section

/-- A270089: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 73", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270089.P2691324095961846394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3251 terms. -/
def A270089 (n : ℕ) : ℤ :=
  A270089.P2691324095961846394.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3251 terms. -/
def A270089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270090.P15445530473766138656

`Δ[A270087(n)]`
-/

namespace A270090.P15445530473766138656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270090.P15445530473766138656

noncomputable section

/-- A270090: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 73", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270090.P15445530473766138656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3128 terms. -/
def A270090 (n : ℕ) : ℤ :=
  A270090.P15445530473766138656.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3128 terms. -/
def A270090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270125.P6127676006264779078

`or(A189007(or(1, n)), A189007(n+1))`
-/

namespace A270125.P6127676006264779078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A189007 (Nat.lor 1 n)) (A189007 (n + 1))

end

end A270125.P6127676006264779078

noncomputable section

/-- A270125: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 86", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270125.P6127676006264779078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4382 terms. -/
def A270125 (n : ℕ) : ℤ :=
  A270125.P6127676006264779078.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4382 terms. -/
def A270125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270128.P12155844267239874096

`Δ[A159075(n)+A062383(n)*A071044(n)]`
-/

namespace A270128.P12155844267239874096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A062383 n * A071044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270128.P12155844267239874096

noncomputable section

/-- A270128: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 86", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270128.P12155844267239874096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4616 terms. -/
def A270128 (n : ℕ) : ℤ :=
  A270128.P12155844267239874096.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4616 terms. -/
def A270128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270198.P9972644514235492210

`comp[A089263(n)+a(n-1)+1]+1` with `a(0)=0`
-/

namespace A270198.P9972644514235492210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A089263 n + f1 (n - 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A270198.P9972644514235492210

noncomputable section

/-- A270198: a(n) = A054429(A055938(A054429(n))).

Offset 1, canonical program `A270198.P9972644514235492210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A270198 (n : ℕ) : ℤ :=
  (A270198.P9972644514235492210.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A270198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270307.P12800223895494073135

`A191697(n+1)+A033999(n)`
-/

namespace A270307.P12800223895494073135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191697 (n + 1) + A033999 n

end

end A270307.P12800223895494073135

noncomputable section

/-- A270307: Expansion of -(4*x^3+8*x^2+4*x+1)/(2*x^4+4*x^3+2*x^2-x-1).

Offset 0, canonical program `A270307.P12800223895494073135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 403 terms. -/
def A270307 (n : ℕ) : ℤ :=
  A270307.P12800223895494073135.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 403 terms. -/
def A270307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270312.P1147650262403678755

`A000045(n+1)/gcd(A000045(n+1), A131738(n))`
-/

namespace A270312.P1147650262403678755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (Int.gcd (A000045 (n + 1)) (A131738 n) : ℚ)

end

end A270312.P1147650262403678755

noncomputable section

/-- A270312: Numerator of Fibonacci(n)/n.

Offset 1, canonical program `A270312.P1147650262403678755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A270312 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A270312.P1147650262403678755.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A270312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270383.P3503871390573539058

`A016861(n)+∑[A042948(A032741(n))]`
-/

namespace A270383.P3503871390573539058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A032741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270383.P3503871390573539058

noncomputable section

/-- A270383: Number of ordered pairs (i,j) with i >= j, |i|, |j| <= n, and |i * j| <= n.

Offset 0, canonical program `A270383.P3503871390573539058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270383 (n : ℕ) : ℤ :=
  A270383.P3503871390573539058.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270384.P1537396231614344993

`p?[ceil(A001749(n+1)/3)]`
-/

namespace A270384.P1537396231614344993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001749 (n + 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A270384.P1537396231614344993

noncomputable section

/-- A270384: Primes p such that (3/4)(p + 1) - 1 is also prime.

Offset 1, canonical program `A270384.P1537396231614344993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A270384 (n : ℕ) : ℤ :=
  A270384.P1537396231614344993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A270384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270388.P15396497455566567402

`A048739(n)%(n+2)`
-/

namespace A270388.P15396497455566567402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048739 n) (n + 2 : ℤ)

end

end A270388.P15396497455566567402

noncomputable section

/-- A270388: a(n) = A048739(n-2) mod n.

Offset 2, canonical program `A270388.P15396497455566567402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A270388 (n : ℕ) : ℤ :=
  A270388.P15396497455566567402.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A270388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270683.P14854626860996153548

`∑[n²+A266662(n)+A130824(n)]`
-/

namespace A270683.P14854626860996153548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A266662 n + A130824 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270683.P14854626860996153548

noncomputable section

/-- A270683: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 190", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270683.P14854626860996153548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3831 terms. -/
def A270683 (n : ℕ) : ℤ :=
  A270683.P14854626860996153548.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3831 terms. -/
def A270683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270693.P9336319168465847501

`∑[A010015(n)*A033999(n)]+a(n-1)` with `a(0)=1`
-/

namespace A270693.P9336319168465847501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010015 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A270693.P9336319168465847501

noncomputable section

/-- A270693: Alternating sum of centered 25-gonal numbers.

Offset 0, canonical program `A270693.P9336319168465847501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270693 (n : ℕ) : ℤ :=
  A270693.P9336319168465847501.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270708.P6114464564147849864

`A001108(A008619(n+1))%A135153(n+2)`
-/

namespace A270708.P6114464564147849864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001108 (A008619 (n + 1)).toNat) (A135153 (n + 2))

end

end A270708.P6114464564147849864

noncomputable section

/-- A270708: a(n) = A048739(n-1) mod A000129(floor(n/2)).

Offset 2, canonical program `A270708.P6114464564147849864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A270708 (n : ℕ) : ℤ :=
  A270708.P6114464564147849864.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A270708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270741.P16031643782964406430

`(∑[a(n-1)-(1-a(n-2))]-n)%A103609(n+2)` with `a(0)=2, a(1)=3`
-/

namespace A270741.P16031643782964406430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) (A103609 (n + 2))

end

end A270741.P16031643782964406430

noncomputable section

/-- A270741: a(n) = (Fibonacci(n+2)-1) mod Fibonacci(floor(n/2)).

Offset 2, canonical program `A270741.P16031643782964406430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A270741 (n : ℕ) : ℤ :=
  A270741.P16031643782964406430.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A270741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270936.P3178014193832231101

`∑[A270934(n)]`
-/

namespace A270936.P3178014193832231101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270936.P3178014193832231101

noncomputable section

/-- A270936: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 221", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270936.P3178014193832231101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3276 terms. -/
def A270936 (n : ℕ) : ℤ :=
  A270936.P3178014193832231101.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3276 terms. -/
def A270936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270937.P10195959060991265635

`Δ[A270934(n)]`
-/

namespace A270937.P10195959060991265635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270937.P10195959060991265635

noncomputable section

/-- A270937: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 221", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270937.P10195959060991265635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3275 terms. -/
def A270937 (n : ℕ) : ℤ :=
  A270937.P10195959060991265635.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3275 terms. -/
def A270937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271052.P14403474327606414088

`∑[A271051(n)]`
-/

namespace A271052.P14403474327606414088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271052.P14403474327606414088

noncomputable section

/-- A271052: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 253", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A271052.P14403474327606414088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3246 terms. -/
def A271052 (n : ℕ) : ℤ :=
  A271052.P14403474327606414088.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3246 terms. -/
def A271052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271053.P15240213741698535027

`Δ[or(4*A157928(n), A270934(n))]`
-/

namespace A271053.P15240213741698535027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 * A157928 n) (A270934 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271053.P15240213741698535027

noncomputable section

/-- A271053: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 253", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A271053.P15240213741698535027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3275 terms. -/
def A271053 (n : ℕ) : ℤ :=
  A271053.P15240213741698535027.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3275 terms. -/
def A271053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271054.P8315320022391231333

`xor(2, A271091(n)-1)-1`
-/

namespace A271054.P8315320022391231333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A271091 n - 1) - 1

end

end A271054.P8315320022391231333

noncomputable section

/-- A271054: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 259", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A271054.P8315320022391231333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3300 terms. -/
def A271054 (n : ℕ) : ℤ :=
  A271054.P8315320022391231333.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3300 terms. -/
def A271054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271057.P8574904356528062839

`Δ[xor(2, A271091(n)-1)]`
-/

namespace A271057.P8574904356528062839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A271091 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271057.P8574904356528062839

noncomputable section

/-- A271057: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 259", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A271057.P8574904356528062839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3338 terms. -/
def A271057 (n : ℕ) : ℤ :=
  A271057.P8574904356528062839.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3338 terms. -/
def A271057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271079.P8440359517774934335

`∑[A000045(n+2)]%32`
-/

namespace A271079.P8440359517774934335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 32

end

end A271079.P8440359517774934335

noncomputable section

/-- A271079: Residues (mod 32) of partial sums of Fibonacci numbers starting with F(2).

Offset 0, canonical program `A271079.P8440359517774934335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A271079 (n : ℕ) : ℤ :=
  A271079.P8440359517774934335.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A271079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271093.P9797536221965603651

`∑[A271091(n)]`
-/

namespace A271093.P9797536221965603651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271093.P9797536221965603651

noncomputable section

/-- A271093: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 275", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A271093.P9797536221965603651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3370 terms. -/
def A271093 (n : ℕ) : ℤ :=
  A271093.P9797536221965603651.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3370 terms. -/
def A271093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271094.P8045953210772745392

`Δ[A271091(n)]`
-/

namespace A271094.P8045953210772745392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271094.P8045953210772745392

noncomputable section

/-- A271094: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 275", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A271094.P8045953210772745392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3269 terms. -/
def A271094 (n : ℕ) : ℤ :=
  A271094.P8045953210772745392.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3269 terms. -/
def A271094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271116.P1861879371827849531

`eq[A019426(n), A062174(n+1)]+1`
-/

namespace A271116.P1861879371827849531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062174 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A271116.P1861879371827849531

noncomputable section

/-- A271116: Integers n such that round(3^n/12) is divisible by n.

Offset 1, canonical program `A271116.P1861879371827849531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. -/
def A271116 (n : ℕ) : ℤ :=
  (A271116.P1861879371827849531.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. -/
def A271116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271367.P3663241717021435183

`∪[A140506(n+1), A140533(n+1)]`
-/

namespace A271367.P3663241717021435183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A271367.P3663241717021435183

noncomputable section

/-- A271367: Primes congruent to 11, 13, 17 or 19 (mod 30).

Offset 1, canonical program `A271367.P3663241717021435183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271367 (n : ℕ) : ℤ :=
  (A271367.P3663241717021435183.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271422.P17494143731461512201

`A053061(eq[1, ∑{d}[n+1, #]-(n+1)]+1)`
-/

namespace A271422.P17494143731461512201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A271422.P17494143731461512201

noncomputable section

/-- A271422: Concatenation of prime(n) and its square.

Offset 1, canonical program `A271422.P17494143731461512201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A271422 (n : ℕ) : ℤ :=
  A271422.P17494143731461512201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A271422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271511.P3918627091132883084

`C(A052147(n+1), 2)`
-/

namespace A271511.P3918627091132883084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A052147 (n + 1)).toNat 2

end

end A271511.P3918627091132883084

noncomputable section

/-- A271511: a(n) = (p+1)*(p+2)/2 where p is the n-th prime.

Offset 1, canonical program `A271511.P3918627091132883084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271511 (n : ℕ) : ℤ :=
  (A271511.P3918627091132883084.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271512.P2900871764372876767

`A000292(A000040(n+1)+1)`
-/

namespace A271512.P2900871764372876767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A000040 (n + 1) + 1).toNat

end

end A271512.P2900871764372876767

noncomputable section

/-- A271512: a(n) = (p+1)*(p+2)*(p+3)/6 where p is the n-th prime.

Offset 1, canonical program `A271512.P2900871764372876767`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A271512 (n : ℕ) : ℤ :=
  A271512.P2900871764372876767.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A271512.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A219754.P4288202868112969805

`ceil(A280399(n+1-2%(n+1))/2)`
-/

namespace A219754.P4288202868112969805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A280399 (n + 1 - 2 % (n + 1)) : ℚ) / 2⌉

end

end A219754.P4288202868112969805

noncomputable section

/-- A219754: Expansion of x^4*(1-x-x^2)/((1+x)*(1-2*x)*(1-x-2*x^2)).

Offset 0, canonical program `A219754.P4288202868112969805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A219754 (n : ℕ) : ℤ :=
  A219754.P4288202868112969805.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A219754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221948.P16531155145963023501

`A057703(A289207(n))+A050407(n)`
-/

namespace A221948.P16531155145963023501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057703 (A289207 n).toNat + A050407 n

end

end A221948.P16531155145963023501

noncomputable section

/-- A221948: Expansion of (x-5*x^2+11*x^3-12*x^4+7*x^5-2*x^6+x^7) / (1-6*x+15*x^2-20*x^3+15*x^4-6*x^5+x^6).

Offset 0, canonical program `A221948.P16531155145963023501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221948 (n : ℕ) : ℤ :=
  A221948.P16531155145963023501.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222642.P4256283084777248805

`floor(A103128(∑[A319951(n+2)])/2)+1`
-/

namespace A222642.P4256283084777248805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A103128 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2⌋ + 1

end

end A222642.P4256283084777248805

noncomputable section

/-- A222642: Integer nearest to (Li(n) - Li(sqrt(n))), where Li(x) = integral(0..x, dt/log(t)).

Offset 2, canonical program `A222642.P4256283084777248805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A222642 (n : ℕ) : ℤ :=
  A222642.P4256283084777248805.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A222642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225700.P11846201848307707302

`2*(n+1)/A339964(Δ[n²])`
-/

namespace A225700.P11846201848307707302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (A339964 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A225700.P11846201848307707302

noncomputable section

/-- A225700: Denominators of coefficients arising from q-expansion of Integrate[eta[q^4]^8/eta[q^2]^4, q]/q where eta is the Dedekind eta function.

Offset 0, canonical program `A225700.P11846201848307707302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225700 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A225700.P11846201848307707302.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227370.P2849202211286057301

`n-Δ[A266434(n*a(n-1))]` with `a(0)=1`
-/

namespace A227370.P2849202211286057301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A266434 ((n : ℤ) * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A227370.P2849202211286057301

noncomputable section

/-- A227370: Permutation which maps between A227368 and A227369.

Offset 0, canonical program `A227370.P2849202211286057301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A227370 (n : ℕ) : ℤ :=
  A227370.P2849202211286057301.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A227370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227981.P14584001994796265052

`A323048(n+1)+A255270(A008621(n))`
-/

namespace A227981.P14584001994796265052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (n + 1) + A255270 (A008621 n).toNat

end

end A227981.P14584001994796265052

noncomputable section

/-- A227981: Numbers n such that sigma(n-1) - sigma(n+1) < sigma(n); where sigma(n) = A000203(n) = sum of the divisors of n.

Offset 1, canonical program `A227981.P14584001994796265052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A227981 (n : ℕ) : ℤ :=
  A227981.P14584001994796265052.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A227981.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229087.P10345629012060209210

`A054024(n+1)-A229110(n+1)`
-/

namespace A229087.P10345629012060209210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1) - A229110 (n + 1)

end

end A229087.P10345629012060209210

noncomputable section

/-- A229087: a(n) = sigma(n) mod n - antisigma(n) mod n, where sigma(n) = A000203(n) = sum of divisor of n, antisigma(n) = A024816(n) = sum of non-divisors of n.

Offset 1, canonical program `A229087.P10345629012060209210`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054024, A229110, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A229087 (n : ℕ) : ℤ :=
  A229087.P10345629012060209210.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054024, A229110, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A229087.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230606.P12267848131961719917

`record[A339964(n+2)-1]`
-/

namespace A230606.P12267848131961719917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339964 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230606.P12267848131961719917

noncomputable section

/-- A230606: Numbers n such that sigma(n) = k*(n+1) for some integer k.

Offset 1, canonical program `A230606.P12267848131961719917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A230606 (n : ℕ) : ℤ :=
  A230606.P12267848131961719917.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A230606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230772.P15398795437404776816

`A230980(comp[3*n])-A230980(n)`
-/

namespace A230772.P15398795437404776816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A230980 n

end

end A230772.P15398795437404776816

noncomputable section

/-- A230772: Number of primes in the half-open interval [n, 3*n/2).

Offset 1, canonical program `A230772.P15398795437404776816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A230772 (n : ℕ) : ℤ :=
  A230772.P15398795437404776816.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A230772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230983.P6375785716789403721

`A231067(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A230983.P6375785716789403721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A231067 n + a (n - 2)

end

end A230983.P6375785716789403721

noncomputable section

/-- A230983: Number of white square subarrays of (n+1) X (2+1) binary arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with upper left element zero.

Offset 1, canonical program `A230983.P6375785716789403721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. -/
def A230983 (n : ℕ) : ℤ :=
  A230983.P6375785716789403721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. -/
def A230983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235801.P9986508740970972437

`2*n-n%A329494(n)`
-/

namespace A235801.P9986508740970972437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.tmod (n : ℤ) (A329494 n)

end

end A235801.P9986508740970972437

noncomputable section

/-- A235801: Length of n-th horizontal line segment in a diagram of a two-dimensional version of the 3x+1 (or Collatz) problem.

Offset 0, canonical program `A235801.P9986508740970972437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235801 (n : ℕ) : ℤ :=
  A235801.P9986508740970972437.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238328.P4978842566083543573

`4*(n+1)*A238340(n+1)`
-/

namespace A238328.P4978842566083543573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1 : ℤ) * A238340 (n + 1))

end

end A238328.P4978842566083543573

noncomputable section

/-- A238328: Sum of all the parts in the partitions of 4n into 4 parts.

Offset 1, canonical program `A238328.P4978842566083543573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238328 (n : ℕ) : ℤ :=
  A238328.P4978842566083543573.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240226.P5965855895015904533

`4^A244415(n+1)`
-/

namespace A240226.P5965855895015904533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A244415 (n + 1) : ℤ)

end

end A240226.P5965855895015904533

noncomputable section

/-- A240226: 4-adic value of 1/n, n >= 1.

Offset 1, canonical program `A240226.P5965855895015904533`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240226 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A240226.P5965855895015904533.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240226.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240707.P11826631267229493597

`∑[A001844(2*n)]-A307559(2*(n+1))`
-/

namespace A240707.P11826631267229493597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A307559 (2 * (n + 1))

end

end A240707.P11826631267229493597

noncomputable section

/-- A240707: Sum of the middle parts in the partitions of 4n-1 into 3 parts.

Offset 1, canonical program `A240707.P11826631267229493597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A240707 (n : ℕ) : ℤ :=
  A240707.P11826631267229493597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A240707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241158.P8261177875093873134

`eq[A000030(n), A000030(A351868(n))]`
-/

namespace A241158.P8261177875093873134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A351868 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A241158.P8261177875093873134

noncomputable section

/-- A241158: Numbers in which the two leading (most significant) digits are distinct.

Offset 1, canonical program `A241158.P8261177875093873134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9002 terms. -/
def A241158 (n : ℕ) : ℤ :=
  (A241158.P8261177875093873134.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9002 terms. -/
def A241158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241494.P7781457169918403058

`A363038(n)%10`
-/

namespace A241494.P7781457169918403058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363038 n) 10

end

end A241494.P7781457169918403058

noncomputable section

/-- A241494: Pyramid Top Numbers: write the decimal digits of 'n' (a nonnegative integer) and take successive absolute differences ("pyramidalization"). The number at the top of the pyramid is 'a(n)'.

Offset 0, canonical program `A241494.P7781457169918403058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241494 (n : ℕ) : ℤ :=
  A241494.P7781457169918403058.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244871.P32635472439923416

`∑[A080827(n+1)*A246695(n)]`
-/

namespace A244871.P32635472439923416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080827 (n + 1) * A246695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244871.P32635472439923416

noncomputable section

/-- A244871: Number of magic labelings with magic sum n of 3rd graph shown in link.

Offset 0, canonical program `A244871.P32635472439923416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244871 (n : ℕ) : ℤ :=
  A244871.P32635472439923416.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245622.P1983515710837540982

`p?[lt[A316864(n), A268643(n)]]`
-/

namespace A245622.P1983515710837540982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A245622.P1983515710837540982

noncomputable section

/-- A245622: Primes having more 1's digits than 3's.

Offset 1, canonical program `A245622.P1983515710837540982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 403 terms. -/
def A245622 (n : ℕ) : ℤ :=
  (A245622.P1983515710837540982.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 403 terms. -/
def A245622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245623.P8231242896739331566

`p?[lt[A268643(n), A316864(n)]]`
-/

namespace A245623.P8231242896739331566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A245623.P8231242896739331566

noncomputable section

/-- A245623: Primes having more digits 3's than 1's.

Offset 1, canonical program `A245623.P8231242896739331566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 392 terms. -/
def A245623 (n : ℕ) : ℤ :=
  (A245623.P8231242896739331566.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 392 terms. -/
def A245623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245868.P1432892422557192650

`8*A264238(n+2)`
-/

namespace A245868.P1432892422557192650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A264238 (n + 2)

end

end A245868.P1432892422557192650

noncomputable section

/-- A245868: Number of length n+2 0..7 arrays with some pair in every consecutive three terms totalling exactly 7.

Offset 1, canonical program `A245868.P1432892422557192650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A245868 (n : ℕ) : ℤ :=
  A245868.P1432892422557192650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A245868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245997.P11952589961384981586

`A296063(n+1)+A072025(n)+A034262(n)`
-/

namespace A245997.P11952589961384981586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296063 (n + 1) + (A072025 n + A034262 n)

end

end A245997.P11952589961384981586

noncomputable section

/-- A245997: Number of length 2+2 0..n arrays with no pair in any consecutive three terms totalling exactly n.

Offset 1, canonical program `A245997.P11952589961384981586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245997 (n : ℕ) : ℤ :=
  A245997.P11952589961384981586.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246390.P11775606840383392850

`∪[A277096(n+1)+1, A277096(n+1)]`
-/

namespace A246390.P11775606840383392850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277096 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246390.P11775606840383392850

noncomputable section

/-- A246390: Nonnegative integers k satisfying sin(k) <= 0 and sin(k+1) <= 0.

Offset 0, canonical program `A246390.P11775606840383392850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246390 (n : ℕ) : ℤ :=
  (A246390.P11775606840383392850.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246396.P8897349307038480004

`∪[A277139(n+1)+1, A277139(n+1)]`
-/

namespace A246396.P8897349307038480004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277139 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246396.P8897349307038480004

noncomputable section

/-- A246396: Nonnegative integers k satisfying cos(k) <= 0 and cos(k+1) <= 0.

Offset 0, canonical program `A246396.P8897349307038480004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246396 (n : ℕ) : ℤ :=
  (A246396.P8897349307038480004.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247322.P11556022761336588647

`A247323(n)+A247323(n+1)+A247325(n)+A247326(n)`
-/

namespace A247322.P11556022761336588647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247323 n + A247323 (n + 1) + A247325 n + A247326 n

end

end A247322.P11556022761336588647

noncomputable section

/-- A247322: Number of paths from (0,0) to the line x = n, each consisting of segments given by the vectors (1,1), (1,2), (1,-1), with vertices (i,k) satisfying 0 <= k <= 3.

Offset 0, canonical program `A247322.P11556022761336588647`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A247323, A247325, A247326, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A247322 (n : ℕ) : ℤ :=
  A247322.P11556022761336588647.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A247323, A247325, A247326, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A247322.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249031.P16270301347754154022

`∑[gcd(2-∑[n+1], A324468(n+1))]`
-/

namespace A249031.P16270301347754154022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) (A324468 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249031.P16270301347754154022

noncomputable section

/-- A249031: The non-anti-Fibonacci numbers: numbers not in A075326.

Offset 1, canonical program `A249031.P16270301347754154022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249031 (n : ℕ) : ℤ :=
  (A249031.P16270301347754154022.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249040.P13332248197705166820

`1-A249041(n+1)+n`
-/

namespace A249040.P13332248197705166820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A249041 (n + 1) + (n : ℤ)

end

end A249040.P13332248197705166820

noncomputable section

/-- A249040: Number of even terms in first n terms of A249039.

Offset 1, canonical program `A249040.P13332248197705166820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249040 (n : ℕ) : ℤ :=
  A249040.P13332248197705166820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249117.P15291165750782053411

`A008619(A249124(n+1)+n-1)`
-/

namespace A249117.P15291165750782053411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A249124 (n + 1) + ((n : ℤ) - 1)).toNat

end

end A249117.P15291165750782053411

noncomputable section

/-- A249117: Position of n^6 in the ordered union of {h^6, h >= 1} and {32*k^6, k >= 1}.

Offset 1, canonical program `A249117.P15291165750782053411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3203 terms. -/
def A249117 (n : ℕ) : ℤ :=
  A249117.P15291165750782053411.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3203 terms. -/
def A249117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249118.P3927749679208195

`A249123(2*(n+1))-(n+1)`
-/

namespace A249118.P3927749679208195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249123 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A249118.P3927749679208195

noncomputable section

/-- A249118: Position of 32n^6 in the ordered union of {h^6, h >=1} and {32*k^6, k >=1}.

Offset 1, canonical program `A249118.P3927749679208195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A249118 (n : ℕ) : ℤ :=
  A249118.P3927749679208195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A249118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250353.P8147615363387882437

`A250362(n+1)-A002943(n)`
-/

namespace A250353.P8147615363387882437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250362 (n + 1) - A002943 n

end

end A250353.P8147615363387882437

noncomputable section

/-- A250353: Number of length 4 arrays x(i), i=1..4 with x(i) in i..i+n and no value appearing more than 2 times.

Offset 1, canonical program `A250353.P8147615363387882437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250353 (n : ℕ) : ℤ :=
  A250353.P8147615363387882437.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255175.P6042656914842276599

`A339265(n)+a(n-1)` with `a(0)=1`
-/

namespace A255175.P6042656914842276599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A339265 n + a (n - 1)

end

end A255175.P6042656914842276599

noncomputable section

/-- A255175: Expansion of phi(-x) / (1 - x)^2 in powers of x where phi() is a Ramanujan theta function.

Offset 0, canonical program `A255175.P6042656914842276599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255175 (n : ℕ) : ℤ :=
  A255175.P6042656914842276599.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255181.P14353804197790131909

`Δ[Δ[Δ[A289207(n)^7]]]`
-/

namespace A255181.P14353804197790131909
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n ^ 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255181.P14353804197790131909

noncomputable section

/-- A255181: Third differences of seventh powers (A001015).

Offset 0, canonical program `A255181.P14353804197790131909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A255181 (n : ℕ) : ℤ :=
  A255181.P14353804197790131909.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A255181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255182.P7714813183367637456

`Δ[Δ[Δ[A289207(n)^8]]]`
-/

namespace A255182.P7714813183367637456
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n ^ 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255182.P7714813183367637456

noncomputable section

/-- A255182: Third differences of eighth powers (A001016).

Offset 0, canonical program `A255182.P7714813183367637456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A255182 (n : ℕ) : ℤ :=
  A255182.P7714813183367637456.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A255182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255932.P1020379480356809158

`2^A292608(n+1)`
-/

namespace A255932.P1020379480356809158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A292608 (n + 1) : ℤ)

end

end A255932.P1020379480356809158

noncomputable section

/-- A255932: a(n) is the denominator of Gamma(n+1/2)^2/(2*n*Pi), the value of an integral with sinh in the denominator.

Offset 1, canonical program `A255932.P1020379480356809158`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292608, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255932 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A255932.P1020379480356809158.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292608, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255932.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256693.P12800536853273981062

`5^A257091(n+1)`
-/

namespace A256693.P12800536853273981062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A257091 (n + 1) : ℤ)

end

end A256693.P12800536853273981062

noncomputable section

/-- A256693: From fifth root of Riemann zeta function: form Dirichlet series Sum b(n)/n^x whose fifth power is zeta function; sequence gives denominator of b(n).

Offset 1, canonical program `A256693.P12800536853273981062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256693 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A256693.P12800536853273981062.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258998.P12736834426368686172

`Δ[A266253(abs(3-n))]`
-/

namespace A258998.P12736834426368686172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266253 |3 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258998.P12736834426368686172

noncomputable section

/-- A258998: a(n) = -(-1)^n if n = k^2 for positive integer k, otherwise 0.

Offset 0, canonical program `A258998.P12736834426368686172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258998 (n : ℕ) : ℤ :=
  A258998.P12736834426368686172.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260684.P9944264110032864462

`p?[A322832(n)+1]`
-/

namespace A260684.P9944264110032864462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322832 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260684.P9944264110032864462

noncomputable section

/-- A260684: Irregular triangular array read by rows. Row n gives the primes in the prime factorization of n! that have exponent of 1.

Offset 2, canonical program `A260684.P9944264110032864462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2135 terms. -/
def A260684 (n : ℕ) : ℤ :=
  A260684.P9944264110032864462.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2135 terms. -/
def A260684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262202.P13375608111952426789

`∑{d}[n+1, A353669(#)]`
-/

namespace A262202.P13375608111952426789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353669 d

end

end A262202.P13375608111952426789

noncomputable section

/-- A262202: Number of divisors d | n such that d^2 < n and d^2 does not divide n.

Offset 1, canonical program `A262202.P13375608111952426789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262202 (n : ℕ) : ℤ :=
  A262202.P13375608111952426789.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265411.P7044820118345598143

`Δ[A265413(n)]`
-/

namespace A265411.P7044820118345598143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265411.P7044820118345598143

noncomputable section

/-- A265411: a(0) = 1, a(1) = 7, otherwise, if A240025(n-1) = 1 [when n is in A033638] a(n) = 3, otherwise a(n) = 1.

Offset 0, canonical program `A265411.P7044820118345598143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265411 (n : ℕ) : ℤ :=
  A265411.P7044820118345598143.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266535.P9952877068317235546

`A266540(Δ[n²])`
-/

namespace A266535.P9952877068317235546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266540 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A266535.P9952877068317235546

noncomputable section

/-- A266535: Sums of two successive terms of A256249, with a(0) = 0.

Offset 0, canonical program `A266535.P9952877068317235546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A266535 (n : ℕ) : ℤ :=
  A266535.P9952877068317235546.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A266535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267289.P12094867785970251216

`p?[A338623(A004139(n+3))]`
-/

namespace A267289.P12094867785970251216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338623 (A004139 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267289.P12094867785970251216

noncomputable section

/-- A267289: Primes p such that (2^k)+p+(2^(k+1)) is also prime, where 2^k is the largest power of 2 smaller than p.

Offset 1, canonical program `A267289.P12094867785970251216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A267289 (n : ℕ) : ℤ :=
  A267289.P12094867785970251216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A267289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267524.P17716842328789921782

`10*a(n-1)+A326178(n)-n` with `a(0)=1`
-/

namespace A267524.P17716842328789921782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + (A326178 n - (n : ℤ))

end

end A267524.P17716842328789921782

noncomputable section

/-- A267524: Binary representation of the middle column of the "Rule 139" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267524.P17716842328789921782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267524 (n : ℕ) : ℤ :=
  A267524.P17716842328789921782.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267906.P2201547106562469108

`ceil(A269684(n+1)²/6)`
-/

namespace A267906.P2201547106562469108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A269684 (n + 1) ^ 2 : ℚ) / 6⌉

end

end A267906.P2201547106562469108

noncomputable section

/-- A267906: Number of n X 2 0..2 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

Offset 1, canonical program `A267906.P2201547106562469108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A267906 (n : ℕ) : ℤ :=
  A267906.P2201547106562469108.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A267906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267913.P11790783515534333936

`ceil(A269461(n+1)²/6)`
-/

namespace A267913.P11790783515534333936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A269461 (n + 1) ^ 2 : ℚ) / 6⌉

end

end A267913.P11790783515534333936

noncomputable section

/-- A267913: Number of 2 X n 0..2 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

Offset 1, canonical program `A267913.P11790783515534333936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A267913 (n : ℕ) : ℤ :=
  A267913.P11790783515534333936.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A267913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268335.P2949356212945410865

`eq[1, A295316(n+1)]+1`
-/

namespace A268335.P2949356212945410865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295316 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A268335.P2949356212945410865

noncomputable section

/-- A268335: Exponentially odd numbers.

Offset 1, canonical program `A268335.P2949356212945410865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268335 (n : ℕ) : ℤ :=
  (A268335.P2949356212945410865.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269496.P9846723581653806368

`A269777(n+1)-A140676(n)`
-/

namespace A269496.P9846723581653806368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269777 (n + 1) - A140676 n

end

end A269496.P9846723581653806368

noncomputable section

/-- A269496: Number of length-5 0..n arrays with no repeated value differing from the previous repeated value by one.

Offset 1, canonical program `A269496.P9846723581653806368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269496 (n : ℕ) : ℤ :=
  A269496.P9846723581653806368.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219187.P5831013217263437135

`A008472(A000032(n))`
-/

namespace A219187.P5831013217263437135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A000032 n).toNat

end

end A219187.P5831013217263437135

noncomputable section

/-- A219187: Sum of distinct prime divisors of Lucas(n).

Offset 0, canonical program `A219187.P5831013217263437135`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219187 (n : ℕ) : ℤ :=
  A219187.P5831013217263437135.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219187.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A220218.P17141423938851254412

`eq[A001221(n+1), A058061(n+1)]+1`
-/

namespace A220218.P17141423938851254412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058061 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A220218.P17141423938851254412

noncomputable section

/-- A220218: Numbers where all exponents in its prime factorization are one less than a prime.

Offset 1, canonical program `A220218.P17141423938851254412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8796 terms. -/
def A220218 (n : ℕ) : ℤ :=
  (A220218.P17141423938851254412.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8796 terms. -/
def A220218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220655.P18008336423105943605

`∑[(n+1)*char[A033312(n)]+1]`
-/

namespace A220655.P18008336423105943605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033312 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220655.P18008336423105943605

noncomputable section

/-- A220655: For n with a unique factorial base representation n = du*u! + ... + d2*2! + d1*1! (each di in range 0..i, cf. A007623), a(n) = (du+1)*u! + ... + (d2+1)*2! + (d1+1)*1!; a(n) = n + A007489(A084558(n)).

Offset 1, canonical program `A220655.P18008336423105943605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220655 (n : ℕ) : ℤ :=
  (A220655.P18008336423105943605.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220655.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A227092.P470339664613846370

`eq[7, A053828(n)]`
-/

namespace A227092.P470339664613846370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227092.P470339664613846370

noncomputable section

/-- A227092: Numbers whose base-7 sum of digits is 7.

Offset 1, canonical program `A227092.P470339664613846370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 305 terms. -/
def A227092 (n : ℕ) : ℤ :=
  (A227092.P470339664613846370.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 305 terms. -/
def A227092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227238.P3472653641428813910

`eq[9, A053830(n)]`
-/

namespace A227238.P3472653641428813910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227238.P3472653641428813910

noncomputable section

/-- A227238: Numbers whose base-9 sum of digits is 9.

Offset 1, canonical program `A227238.P3472653641428813910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 706 terms. -/
def A227238 (n : ℕ) : ℤ :=
  (A227238.P3472653641428813910.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 706 terms. -/
def A227238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230780.P4087628453053372881

`lt[gcd(3, A023900(n+1)), 2]+1`
-/

namespace A230780.P4087628453053372881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A023900 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A230780.P4087628453053372881

noncomputable section

/-- A230780: Positive numbers without a prime factor congruent to 1 (mod 6).

Offset 1, canonical program `A230780.P4087628453053372881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7431 terms. -/
def A230780 (n : ℕ) : ℤ :=
  (A230780.P4087628453053372881.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7431 terms. -/
def A230780.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A235323.P2646876308871874381

`A008472(n+1)²`
-/

namespace A235323.P2646876308871874381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) ^ 2

end

end A235323.P2646876308871874381

noncomputable section

/-- A235323: Squared sum of the distinct prime factors of n, i.e., sopf(n)^2.

Offset 1, canonical program `A235323.P2646876308871874381`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A235323 (n : ℕ) : ℤ :=
  A235323.P2646876308871874381.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A235323.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A235799.P2518108065630090782`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A235799 (n : ℕ) : ℤ :=
  A235799.P2518108065630090782.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A235799.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A238367.P4066745215504090495

`A103517(lt[A337923(3*(n+1)), A001221(n+1)])`
-/

namespace A238367.P4066745215504090495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337923 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A238367.P4066745215504090495

noncomputable section

/-- A238367: Even numbers n such that n is not divisible by 2^d where d is the number of distinct odd prime factors of n.

Offset 1, canonical program `A238367.P4066745215504090495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1288 terms. -/
def A238367 (n : ℕ) : ℤ :=
  A238367.P4066745215504090495.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1288 terms. -/
def A238367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238526.P8534158535877198451

`record[abs(abs(A008472(n+1)-n)-n)]`
-/

namespace A238526.P8534158535877198451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|A008472 (n + 1) - (n : ℤ)| - (n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238526.P8534158535877198451

noncomputable section

/-- A238526: Record values of A238525.

Offset 1, canonical program `A238526.P8534158535877198451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9594 terms. -/
def A238526 (n : ℕ) : ℤ :=
  A238526.P8534158535877198451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9594 terms. -/
def A238526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239693.P6595797453947118428

`A053828(A000040(n+1))`
-/

namespace A239693.P6595797453947118428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A000040 (n + 1)).toNat

end

end A239693.P6595797453947118428

noncomputable section

/-- A239693: Base 7 sum of digits of prime(n).

Offset 1, canonical program `A239693.P6595797453947118428`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A053828, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A239693 (n : ℕ) : ℤ :=
  A239693.P6595797453947118428.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A053828, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A239693.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239695.P12338492364467656266

`A053830(A000040(n+1))`
-/

namespace A239695.P12338492364467656266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A000040 (n + 1)).toNat

end

end A239695.P12338492364467656266

noncomputable section

/-- A239695: Base 9 sum of digits of prime(n).

Offset 1, canonical program `A239695.P12338492364467656266`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A053830, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A239695 (n : ℕ) : ℤ :=
  A239695.P12338492364467656266.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A053830, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A239695.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239885.P1896518761553761145

`A110295(n+1)/2`
-/

namespace A239885.P1896518761553761145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110295 (n + 1) : ℚ) / 2

end

end A239885.P1896518761553761145

noncomputable section

/-- A239885: a(n) = 2^(n-2) * prime(n).

Offset 1, canonical program `A239885.P1896518761553761145`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110295, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239885 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A239885.P1896518761553761145.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110295, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239885.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240471.P16559691401638773445

`(A038040(n+1)-A106315(n+1))/A000203(n+1)`
-/

namespace A240471.P16559691401638773445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) - A106315 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)

end

end A240471.P16559691401638773445

noncomputable section

/-- A240471: Integer part of (n * A000005(n) / A000203(n)).

Offset 1, canonical program `A240471.P16559691401638773445`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, A106315, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A240471 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A240471.P16559691401638773445.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, A106315, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A240471.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A242073.P9092403306791038777

`A023900(gcd(A016742(n), A110654(n)+1))`
-/

namespace A242073.P9092403306791038777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (Int.gcd (A016742 n) (A110654 n + 1))

end

end A242073.P9092403306791038777

noncomputable section

/-- A242073: a(n) = - (a(n-1)*a(n-4) + a(n-2)*a(n-3)) / a(n-5) with a(0)=1, a(1)=a(2)=-1, a(3)=-2, a(4)=1.

Offset 0, canonical program `A242073.P9092403306791038777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242073 (n : ℕ) : ℤ :=
  A242073.P9092403306791038777.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242089.P8380178476598683607

`floor((3-A000040(n+1))²/6)`
-/

namespace A242089.P8380178476598683607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 - A000040 (n + 1)) ^ 2 : ℚ) / 6⌋

end

end A242089.P8380178476598683607

noncomputable section

/-- A242089: Number of triples (a,b,c) with 0 < a < b < c < p and a + b + c == 0 mod p, where p = prime(n).

Offset 1, canonical program `A242089.P8380178476598683607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A242089 (n : ℕ) : ℤ :=
  A242089.P8380178476598683607.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A242089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243980.P11138556836325931032

`4*A024916(n+1)`
-/

namespace A243980.P11138556836325931032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A024916 (n + 1)

end

end A243980.P11138556836325931032

noncomputable section

/-- A243980: Four times the sum of all divisors of all positive integers <= n.

Offset 1, canonical program `A243980.P11138556836325931032`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024916, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243980 (n : ℕ) : ℤ :=
  A243980.P11138556836325931032.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024916, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243980.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A244048.P6865276920681536651`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, A024816, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A244048 (n : ℕ) : ℤ :=
  A244048.P6865276920681536651.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, A024816, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A244048.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A244329.P12240149953231840397`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244329 (n : ℕ) : ℤ :=
  A244329.P12240149953231840397.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244329.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244824.P13510409849128085719

`A024916(A000079(n))`
-/

namespace A244824.P13510409849128085719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (A000079 n).toNat

end

end A244824.P13510409849128085719

noncomputable section

/-- A244824: Sum of all divisors of all positive integers <= 2^n.

Offset 0, canonical program `A244824.P13510409849128085719`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024916, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244824 (n : ℕ) : ℤ :=
  A244824.P13510409849128085719.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024916, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244824.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246839.P11173813437660088004

`A246817(floor(n/5)+1)`
-/

namespace A246839.P11173813437660088004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246817 (⌊(n : ℚ) / 5⌋ + 1).toNat

end

end A246839.P11173813437660088004

noncomputable section

/-- A246839: Number of trailing zeros in A002109(n).

Offset 0, canonical program `A246839.P11173813437660088004`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246817, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246839 (n : ℕ) : ℤ :=
  A246839.P11173813437660088004.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246817, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246839.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246960.P15453301905405972098

`A105500(n)-1`
-/

namespace A246960.P15453301905405972098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105500 n - 1

end

end A246960.P15453301905405972098

noncomputable section

/-- A246960: Directions of the lines in the (Heighway) Dragon Curve.

Offset 0, canonical program `A246960.P15453301905405972098`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105500, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246960 (n : ℕ) : ℤ :=
  A246960.P15453301905405972098.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105500, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246960.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A249356.P6798267095439788159

`8*A200975(n+1)-7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249356.P6798267095439788159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A200975 (n + 1) - 7

end

end A249356.P6798267095439788159

noncomputable section

/-- A249356: 8*A200975(n)-7 where A200975 are the numbers on the diagonals in Ulam's spiral.

Offset 1, canonical program `A249356.P6798267095439788159`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A200975, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249356 (n : ℕ) : ℤ :=
  A249356.P6798267095439788159.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A200975, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249356.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253769.P2452333697715072660

`A006218(A000040(n+1))`
-/

namespace A253769.P2452333697715072660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A000040 (n + 1)).toNat

end

end A253769.P2452333697715072660

noncomputable section

/-- A253769: Sum of number of divisors of all positive integers <= prime(n).

Offset 1, canonical program `A253769.P2452333697715072660`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006218, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253769 (n : ℕ) : ℤ :=
  A253769.P2452333697715072660.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006218, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253769.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256250.P13481025996559427497

`1+4*A256249(n)`
-/

namespace A256250.P13481025996559427497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 4 * A256249 n

end

end A256250.P13481025996559427497

noncomputable section

/-- A256250: Total number of ON states after n generations of a cellular automaton on the square grid.

Offset 1, canonical program `A256250.P13481025996559427497`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256249, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256250 (n : ℕ) : ℤ :=
  A256250.P13481025996559427497.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256249, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256250.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256956.P5934166374789852245

`A000720(n+1)*A000720(n+2)`
-/

namespace A256956.P5934166374789852245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A000720 (n + 2)

end

end A256956.P5934166374789852245

noncomputable section

/-- A256956: a(n) = pi(n) * pi(n+1), where pi(n) is the number of primes <= n.

Offset 1, canonical program `A256956.P5934166374789852245`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256956 (n : ℕ) : ℤ :=
  A256956.P5934166374789852245.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256956.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259651.P9843944183330808365

`∑{p}[∑[3*n+1], A001221(#)]`
-/

namespace A259651.P9843944183330808365
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001221 p

end

end A259651.P9843944183330808365

noncomputable section

/-- A259651: Number of distinct prime factors of the n-th pentagonal number (A000326).

Offset 1, canonical program `A259651.P9843944183330808365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 816 terms. -/
def A259651 (n : ℕ) : ℤ :=
  A259651.P9843944183330808365.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 816 terms. -/
def A259651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259923.P16057684249123722244

`A000040(n+1)^A000720(n+1)`
-/

namespace A259923.P16057684249123722244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A000720 (n + 1) : ℤ)

end

end A259923.P16057684249123722244

noncomputable section

/-- A259923: a(n) = prime(n)^pi(n).

Offset 1, canonical program `A259923.P16057684249123722244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A259923 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A259923.P16057684249123722244.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A259923.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260235.P18388397593500590011

`A001221(2*n+3)+A001221(n+2)`
-/

namespace A260235.P18388397593500590011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * n + 3) + A001221 (n + 2)

end

end A260235.P18388397593500590011

noncomputable section

/-- A260235: Number of distinct prime factors of the n-th hexagonal number (A000384).

Offset 2, canonical program `A260235.P18388397593500590011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260235 (n : ℕ) : ℤ :=
  A260235.P18388397593500590011.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261447.P7472334825121703840

`A001221(∏{e}[n+2, #+1]-1)`
-/

namespace A261447.P7472334825121703840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) - 1)

end

end A261447.P7472334825121703840

noncomputable section

/-- A261447: The number of distinct prime factors of the number of proper divisors of n.

Offset 2, canonical program `A261447.P7472334825121703840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261447 (n : ℕ) : ℤ :=
  A261447.P7472334825121703840.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262439.P16832177270364139549

`A000720(∑[n+1]+1)`
-/

namespace A262439.P16832177270364139549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A262439.P16832177270364139549

noncomputable section

/-- A262439: Number of primes not exceeding 1+n*(n+1)/2.

Offset 1, canonical program `A262439.P16832177270364139549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A262439 (n : ℕ) : ℤ :=
  A262439.P16832177270364139549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A262439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262683.P10399658197744916863

`1-a(A325765(n))` with `a(0)=1, a(1)=1`
-/

namespace A262683.P10399658197744916863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - a (A325765 n).toNat

end

end A262683.P10399658197744916863

noncomputable section

/-- A262683: Characteristic function for A182859.

Offset 1, canonical program `A262683.P10399658197744916863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262683 (n : ℕ) : ℤ :=
  A262683.P10399658197744916863.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262683.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A266538.P9526590751429487404

`2*A256249(n)`
-/

namespace A266538.P9526590751429487404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256249 n

end

end A266538.P9526590751429487404

noncomputable section

/-- A266538: Twice the partial sums of A006257 (Josephus problem).

Offset 0, canonical program `A266538.P9526590751429487404`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256249, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A266538 (n : ℕ) : ℤ :=
  A266538.P9526590751429487404.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256249, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A266538.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A269701.P8912005130756508373

`A053828(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A269701.P8912005130756508373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A053828 (a (n - 1) + a (n - 2)).toNat

end

end A269701.P8912005130756508373

noncomputable section

/-- A269701: Cyclic Fibonacci sequence, restricted to maximum=6.

Offset 0, canonical program `A269701.P8912005130756508373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269701 (n : ℕ) : ℤ :=
  A269701.P8912005130756508373.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244042.P9314766524248185345

`n-2*A005836(A289814(n)+1)`
-/

namespace A244042.P9314766524248185345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A005836 (A289814 n + 1).toNat

end

end A244042.P9314766524248185345

noncomputable section

/-- A244042: In ternary representation of n, replace 2's with 0's.

Offset 0, canonical program `A244042.P9314766524248185345`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244042 (n : ℕ) : ℤ :=
  A244042.P9314766524248185345.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244042.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268382.P15340571739554303395

`A268411(n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A268382.P15340571739554303395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A268411 n + a (n - 1)

end

end A268382.P15340571739554303395

noncomputable section

/-- A268382: Partial sums of A268411; the least monotonic left inverse of A268415.

Offset 0, canonical program `A268382.P15340571739554303395`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268411, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268382 (n : ℕ) : ℤ :=
  A268382.P15340571739554303395.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268411, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268382.provenance : SequenceMachineLib.Provenance := .conditional

