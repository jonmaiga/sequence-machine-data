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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A256993.P4133820312878921263

`1+a(A256992(n+1)-1)` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256993.P4133820312878921263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A256992 (n + 1) - 1).toNat

end

end A256993.P4133820312878921263

noncomputable section

/-- A256993: a(1) = 0; for n > 1, a(n) = 1 + a(A256992(n)).

Offset 1, canonical program `A256993.P4133820312878921263`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256993 (n : ℕ) : ℤ :=
  (A256993.P4133820312878921263.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256993.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A346633.P1782636682428832130

`A029837(n+1)-A209281(n+1)`
-/

namespace A346633.P1782636682428832130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) - A209281 (n + 1)

end

end A346633.P1782636682428832130

noncomputable section

/-- A346633: Sum of even-indexed parts (even bisection) of the n-th composition in standard order.

Offset 0, canonical program `A346633.P1782636682428832130`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346633 (n : ℕ) : ℤ :=
  A346633.P1782636682428832130.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346633.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350331.P13927814064560633855

`A001221(n+1)+A086971(n+1)`
-/

namespace A350331.P13927814064560633855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + A086971 (n + 1)

end

end A350331.P13927814064560633855

noncomputable section

/-- A350331: Number of divisors of n that are prime or the product of 2 (not necessarily distinct) primes.

Offset 1, canonical program `A350331.P13927814064560633855`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350331 (n : ℕ) : ℤ :=
  A350331.P13927814064560633855.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350331.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A359152.P7216444529102150674`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359152 (n : ℕ) : ℤ :=
  A359152.P7216444529102150674.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359152.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367452.P7767134623481376132

`A086971(A005117(n+1))`
-/

namespace A367452.P7767134623481376132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A005117 (n + 1)).toNat

end

end A367452.P7767134623481376132

noncomputable section

/-- A367452: Number of semiprime divisors of the n-th squarefree number (A005117).

Offset 1, canonical program `A367452.P7767134623481376132`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367452 (n : ℕ) : ℤ :=
  A367452.P7767134623481376132.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367452.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375020.P9231730803761729613

`A068773(10^n)`
-/

namespace A375020.P9231730803761729613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068773 (10 ^ n)

end

end A375020.P9231730803761729613

noncomputable section

/-- A375020: Alternating sum phi(1) - phi(2) + phi(3) - phi(4) + ... + ((-1)^(10^n+1))*phi(10^n).

Offset 0, canonical program `A375020.P9231730803761729613`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375020 (n : ℕ) : ℤ :=
  A375020.P9231730803761729613.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375020.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A378549.P13326407963315648607`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378549 (n : ℕ) : ℤ :=
  A378549.P13326407963315648607.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378549.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255071.P3876478389989175484

`A255061(n+2)-A255061(n+1)`
-/

namespace A255071.P3876478389989175484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255061 (n + 2) - A255061 (n + 1)

end

end A255071.P3876478389989175484

noncomputable section

/-- A255071: Number of steps required to reach (2^n)-2 from 2^(n+1)-2 by iterating the map x -> x - (number of runs in binary representation of x).

Offset 1, canonical program `A255071.P3876478389989175484`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255071 (n : ℕ) : ℤ :=
  A255071.P3876478389989175484.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255071.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256991.P15627668895340715446

`A256992(n+1)-A079559(n+1)`
-/

namespace A256991.P15627668895340715446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256992 (n + 1) - A079559 (n + 1)

end

end A256991.P15627668895340715446

noncomputable section

/-- A256991: If A079559(n) = 1, a(n) = A213714(n) - 1, otherwise a(n) = A234017(n).

Offset 1, canonical program `A256991.P15627668895340715446`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256991 (n : ℕ) : ℤ :=
  A256991.P15627668895340715446.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256991.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A336563.P9984757365447373313`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336563 (n : ℕ) : ℤ :=
  A336563.P9984757365447373313.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336563.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A342919.P5264942135803517066

`A342001(n+1)/A342459(n+1)`
-/

namespace A342919.P5264942135803517066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342001 (n + 1) : ℚ) / (A342459 (n + 1) : ℚ)

end

end A342919.P5264942135803517066

noncomputable section

/-- A342919: a(n) = A003415(n) / gcd(A001615(n), A003415(n)), where A001615 is Dedekind psi, and A003415 is the arithmetic derivative of n.

Offset 1, canonical program `A342919.P5264942135803517066`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342919 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342919.P5264942135803517066.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342919.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348279.P5185958183614754633

`∑{d}[n+1, A190116(#)]`
-/

namespace A348279.P5185958183614754633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A190116 d

end

end A348279.P5185958183614754633

noncomputable section

/-- A348279: a(n) = Sum_{d|n} d*d', where d' is the arithmetic derivative of d (A003415).

Offset 1, canonical program `A348279.P5185958183614754633`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348279 (n : ℕ) : ℤ :=
  A348279.P5185958183614754633.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348279.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348496.P16814638509883304779

`A348495(n+1)/A003557(n+1)`
-/

namespace A348496.P16814638509883304779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348495 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A348496.P16814638509883304779

noncomputable section

/-- A348496: a(n) = gcd(A018804(n), A347130(n)) / A003557(n).

Offset 1, canonical program `A348496.P16814638509883304779`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348496 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348496.P16814638509883304779.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348496.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349124.P9173573936416537419

`A349123(n+1)/A003557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349124.P9173573936416537419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349123 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A349124.P9173573936416537419

noncomputable section

/-- A349124: a(n) = A349123(n) / A003557(n), where A349123 is the Dirichlet convolution of the arithmetic derivative with n*tau(n).

Offset 1, canonical program `A349124.P9173573936416537419`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349124 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349124.P9173573936416537419.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349124.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353556.P11551021480269532198

`A066829(n+1)-A353558(n+1)`
-/

namespace A353556.P11551021480269532198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1) - A353558 (n + 1)

end

end A353556.P11551021480269532198

noncomputable section

/-- A353556: a(n) = 1 if n is an even number with an odd number of prime factors (counted with multiplicity), otherwise 0.

Offset 1, canonical program `A353556.P11551021480269532198`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353556 (n : ℕ) : ℤ :=
  A353556.P11551021480269532198.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353556.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A368922.P14212543227731437935

`A368921(n)-A068346(n)`
-/

namespace A368922.P14212543227731437935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368921 n - A068346 n

end

end A368922.P14212543227731437935

noncomputable section

/-- A368922: a(n) = n' - n''*2, where n' is the arithmetic derivative of n, A003415(n) and n'' is the second arithmetic derivative, A068346(n).

Offset 0, canonical program `A368922.P14212543227731437935`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368922 (n : ℕ) : ℤ :=
  A368922.P14212543227731437935.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368922.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370118.P17328300749575721600

`A079978(A369669(n))`
-/

namespace A370118.P17328300749575721600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A369669 n).toNat

end

end A370118.P17328300749575721600

noncomputable section

/-- A370118: a(n) = 1 if the arithmetic derivative of n is a multiple of 9, otherwise 0.

Offset 0, canonical program `A370118.P17328300749575721600`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370118 (n : ℕ) : ℤ :=
  A370118.P17328300749575721600.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370118.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380667.P7577621012878425073

`(A020985(n+1)-A020985(n))/2`
-/

namespace A380667.P7577621012878425073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020985 (n + 1) - A020985 n : ℚ) / 2

end

end A380667.P7577621012878425073

noncomputable section

/-- A380667: First differences of the Golay-Rudin-Shapiro sequence (A020985), divided by 2.

Offset 0, canonical program `A380667.P7577621012878425073`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380667 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380667.P7577621012878425073.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380667.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268355.P15495533362919716179

`8^A244413(n+1)`
-/

namespace A268355.P15495533362919716179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A244413 (n + 1) : ℤ)

end

end A268355.P15495533362919716179

noncomputable section

/-- A268355: Highest power of 8 dividing n.

Offset 1, canonical program `A268355.P15495533362919716179`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268355 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268355.P15495533362919716179.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268355.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A286572.P16582161449152449290`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286572 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286572.P16582161449152449290.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286572.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A309873.P5021135503689677303

`1-2*A096268(n)`
-/

namespace A309873.P5021135503689677303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A096268 n

end

end A309873.P5021135503689677303

noncomputable section

/-- A309873: Period-doubling turn sequence, +1 when the 2-adic valuation of n is even or -1 when odd.

Offset 1, canonical program `A309873.P5021135503689677303`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309873 (n : ℕ) : ℤ :=
  A309873.P5021135503689677303.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309873.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A324904.P9223201305748335672

`A324902(n+1)+A324903(n+1)`
-/

namespace A324904.P9223201305748335672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324902 (n + 1) + A324903 (n + 1)

end

end A324904.P9223201305748335672

noncomputable section

/-- A324904: The 2-adic valuation of A318466(n), where A318466(n) = 2*n OR sigma(n).

Offset 1, canonical program `A324904.P9223201305748335672`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324904 (n : ℕ) : ℤ :=
  A324904.P9223201305748335672.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324904.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A331410.P1765792121065572382

`a(A336467(n+1)-1)+A087436(n+1)` with `a(0)=0`
-/

namespace A331410.P1765792121065572382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (A336467 (n + 1) - 1).toNat + A087436 (n + 1)

end

end A331410.P1765792121065572382

noncomputable section

/-- A331410: a(n) is the number of iterations needed to reach a power of 2 starting at n and using the map k -> k + k/p, where p is the largest prime factor of k.

Offset 1, canonical program `A331410.P1765792121065572382`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A331410 (n : ℕ) : ℤ :=
  A331410.P1765792121065572382.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A331410.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A342414.P18241024431258092632

`A342001(n+1)/A342416(n+1)`
-/

namespace A342414.P18241024431258092632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342001 (n + 1) : ℚ) / (A342416 (n + 1) : ℚ)

end

end A342414.P18241024431258092632

noncomputable section

/-- A342414: a(n) = A003415(n) / gcd(phi(n),A003415(n)), where A003415(n) is the arithmetic derivative of n, and phi is Euler totient function.

Offset 1, canonical program `A342414.P18241024431258092632`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342414 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342414.P18241024431258092632.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342414.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348498.P5884788677903140983

`gcd(A342001(n+1), A347129(n+1))`
-/

namespace A348498.P5884788677903140983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A342001 (n + 1)) (A347129 (n + 1))

end

end A348498.P5884788677903140983

noncomputable section

/-- A348498: a(n) = gcd(A003415(n), A347130(n)) / A003557(n), where A003415 is the arithmetic derivative and A347130 is its Dirichlet convolution with the identity function.

Offset 1, canonical program `A348498.P5884788677903140983`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348498 (n : ℕ) : ℤ :=
  (A348498.P5884788677903140983.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348498.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353376.P17395599227026768174

`∑{d}[n+1, A353374(#)]`
-/

namespace A353376.P17395599227026768174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353374 d

end

end A353376.P17395599227026768174

noncomputable section

/-- A353376: Inverse Möbius transform of A353374.

Offset 1, canonical program `A353376.P17395599227026768174`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353376 (n : ℕ) : ℤ :=
  A353376.P17395599227026768174.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353376.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A357872.P17060854756529812207

`(n+1)*(3/2)^(A096268(n)-A182581(n+1))`
-/

namespace A357872.P17060854756529812207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((3 : ℚ) / 2) ^ (A096268 n - A182581 (n + 1) : ℤ)

end

end A357872.P17060854756529812207

noncomputable section

/-- A357872: a(n) = n * (3/2)^(v(n, 2) - v(n, 3)) where v(n, k) = valuation(n, k) mod 2 for n > 0.

Offset 1, canonical program `A357872.P17060854756529812207`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357872 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A357872.P17060854756529812207.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357872.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A358775.P186316073311137484

`A065043(n+1)-A353374(n+1)`
-/

namespace A358775.P186316073311137484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) - A353374 (n + 1)

end

end A358775.P186316073311137484

noncomputable section

/-- A358775: a(n) = 1 if the prime factorization of n has an even number of prime factors that sum to an odd number, otherwise 0.

Offset 1, canonical program `A358775.P186316073311137484`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358775 (n : ℕ) : ℤ :=
  A358775.P186316073311137484.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358775.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A363228.P8730947747563985722

`floor(A090739(n+1)/2)`
-/

namespace A363228.P8730947747563985722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A090739 (n + 1) : ℚ) / 2⌋

end

end A363228.P8730947747563985722

noncomputable section

/-- A363228: Exponent of 4 in 9^n - 1.

Offset 1, canonical program `A363228.P8730947747563985722`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363228 (n : ℕ) : ℤ :=
  A363228.P8730947747563985722.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363228.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A370122.P7977747716848007061`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370122 (n : ℕ) : ℤ :=
  A370122.P7977747716848007061.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370122.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A373371.P4434712578752274140`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373371 (n : ℕ) : ℤ :=
  A373371.P4434712578752274140.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373371.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375961.P871565758720273220

`A371093(n)+1`
-/

namespace A375961.P871565758720273220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371093 n + 1

end

end A375961.P871565758720273220

noncomputable section

/-- A375961: 2-adic valuation of 6*n + 2.

Offset 0, canonical program `A375961.P871565758720273220`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375961 (n : ℕ) : ℤ :=
  A375961.P871565758720273220.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375961.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378535.P2163637067217421247

`∑{d}[n+1, A008683(#)*A378542((n+1)/#)]`
-/

namespace A378535.P2163637067217421247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A378542 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378535.P2163637067217421247

noncomputable section

/-- A378535: Möbius transform of A378542, where A378542 is the sum of divisors d of n such that n/d has an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A378535.P2163637067217421247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378535 (n : ℕ) : ℤ :=
  A378535.P2163637067217421247.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378535.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378999.P10244368131065604543

`A378998(A000290(n+1))`
-/

namespace A378999.P10244368131065604543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378998 (A000290 (n + 1)).toNat

end

end A378999.P10244368131065604543

noncomputable section

/-- A378999: Number of trailing 1-bits in the binary representation of sigma(n^2).

Offset 1, canonical program `A378999.P10244368131065604543`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378999 (n : ℕ) : ℤ :=
  A378999.P10244368131065604543.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378999.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379007.P14069209523982296756

`A000225(A037227(n+1))`
-/

namespace A379007.P14069209523982296756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A037227 (n + 1)).toNat

end

end A379007.P14069209523982296756

noncomputable section

/-- A379007: a(n) = (n^2) XOR ((n^2)-1).

Offset 1, canonical program `A379007.P14069209523982296756`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379007 (n : ℕ) : ℤ :=
  A379007.P14069209523982296756.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379007.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382487.P7296272307731951991

`A072078(n+1)-A001511(n+1)`
-/

namespace A382487.P7296272307731951991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (n + 1) - A001511 (n + 1)

end

end A382487.P7296272307731951991

noncomputable section

/-- A382487: The number of divisors of n whose largest prime factor is 3.

Offset 1, canonical program `A382487.P7296272307731951991`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382487 (n : ℕ) : ℤ :=
  A382487.P7296272307731951991.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382487.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387377.P768530691220600906

`A181351(A064614(n+1))`
-/

namespace A387377.P768530691220600906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181351 (A064614 (n + 1)).toNat

end

end A387377.P768530691220600906

noncomputable section

/-- A387377: In the prime factorization of n, replace 2's with 3's, replace 3's with 5's and replace 5's with 2's.

Offset 1, canonical program `A387377.P768530691220600906`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387377 (n : ℕ) : ℤ :=
  A387377.P768530691220600906.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387377.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389072.P9493856441358522576

`n+1-A388286(n+1)`
-/

namespace A389072.P9493856441358522576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A388286 (n + 1)

end

end A389072.P9493856441358522576

noncomputable section

/-- A389072: Möbius transform of A325974, where A325974 is the arithmetic mean of {sum of non-unitary divisors} and {sum of nonsquarefree divisors}.

Offset 1, canonical program `A389072.P9493856441358522576`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389072 (n : ℕ) : ℤ :=
  A389072.P9493856441358522576.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389072.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390299.P4751859419815564239

`A002472(n+1)*A100063(n+1)`
-/

namespace A390299.P4751859419815564239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (n + 1) * A100063 (n + 1)

end

end A390299.P4751859419815564239

noncomputable section

/-- A390299: Number of positive z <= n such that z^2 - 9^g is relatively prime to n (for any particular positive integer g).

Offset 1, canonical program `A390299.P4751859419815564239`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390299 (n : ℕ) : ℤ :=
  A390299.P4751859419815564239.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390299.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A285388.P13702077894044627960

`(n+1)*A201555(n+1)/2^A285717(n+1)`
-/

namespace A285388.P13702077894044627960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A201555 (n + 1) : ℚ) / (2 : ℚ) ^ (A285717 (n + 1) : ℤ)

end

end A285388.P13702077894044627960

noncomputable section

/-- A285388: a(n) = numerator of ((1/n) * Sum_{k=0..n^2-1} binomial(2k,k)/4^k).

Offset 1, canonical program `A285388.P13702077894044627960`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285388 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A285388.P13702077894044627960.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285388.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A285406.P13392758496350615043

`A056220(n+1)-A285717(n+1)`
-/

namespace A285406.P13392758496350615043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (n + 1) - A285717 (n + 1)

end

end A285406.P13392758496350615043

noncomputable section

/-- A285406: Base-2 logarithm of denominator of Sum_{k=0..n^2-1} (-1)^k*sqrt(Pi)/(Gamma(1/2-k)*Gamma(1+k)*n).

Offset 1, canonical program `A285406.P13392758496350615043`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285406 (n : ℕ) : ℤ :=
  A285406.P13392758496350615043.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285406.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353811.P62770870440473012

`A053866(n+1)*A353810(n+1)`
-/

namespace A353811.P62770870440473012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (n + 1) * A353810 (n + 1)

end

end A353811.P62770870440473012

noncomputable section

/-- A353811: a(n) = 1 if sigma(n) is odd, and has an odd number of prime factors (with multiplicity), otherwise 0. Here sigma is the sum of divisors function.

Offset 1, canonical program `A353811.P62770870440473012`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353811 (n : ℕ) : ℤ :=
  A353811.P62770870440473012.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353811.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A369257.P15625440583035575775`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369257 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369257.P15625440583035575775.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369257.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255121.P16313667486751775912

`∑[char[A255062(n+1)]]`
-/

namespace A255121.P16313667486751775912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255062 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255121.P16313667486751775912

noncomputable section

/-- A255121: After zero, each n occurs A255071(n) times.

Offset 0, canonical program `A255121.P16313667486751775912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 722 terms. -/
def A255121 (n : ℕ) : ℤ :=
  (A255121.P16313667486751775912.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 722 terms. -/
def A255121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257508.P829939405799321122

`record[A257507(A152271(n))]`
-/

namespace A257508.P829939405799321122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257507 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257508.P829939405799321122

noncomputable section

/-- A257508: Next-to-leaf vertices in binary beanstalk; Numbers n for which A257265(n) = 1.

Offset 1, canonical program `A257508.P829939405799321122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3752 terms. -/
def A257508 (n : ℕ) : ℤ :=
  A257508.P829939405799321122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3752 terms. -/
def A257508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257512.P6741828352315066934

`A257507(A055938(2*(n+1)))`
-/

namespace A257512.P6741828352315066934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257507 (A055938 (2 * (n + 1))).toNat

end

end A257512.P6741828352315066934

noncomputable section

/-- A257512: Those vertices of the binary beanstalk whose children are both leaves.

Offset 1, canonical program `A257512.P6741828352315066934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A257512 (n : ℕ) : ℤ :=
  A257512.P6741828352315066934.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A257512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258645.P7075663669890801924

`A258644(A003415(n))`
-/

namespace A258645.P7075663669890801924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258644 (A003415 n).toNat

end

end A258645.P7075663669890801924

noncomputable section

/-- A258645: Fifth arithmetic derivative of n.

Offset 0, canonical program `A258645.P7075663669890801924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A258645 (n : ℕ) : ℤ :=
  A258645.P7075663669890801924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A258645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258867.P13721071682918196558

`eq[0, A113407(n)]`
-/

namespace A258867.P13721071682918196558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113407 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258867.P13721071682918196558

noncomputable section

/-- A258867: Positions n where A185653(n) = 0.

Offset 1, canonical program `A258867.P13721071682918196558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2580 terms. -/
def A258867 (n : ℕ) : ℤ :=
  (A258867.P13721071682918196558.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2580 terms. -/
def A258867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259030.P661161244229555766

`A080891(A259445(n+1)+A065883(3*(n+1)))`
-/

namespace A259030.P661161244229555766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (A259445 (n + 1) + A065883 (3 * (n + 1))).toNat

end

end A259030.P661161244229555766

noncomputable section

/-- A259030: a(n) is multiplicative with a(2^e) = -(1 - (-1)^e) / 2 if e > 0, a(p^e) = Kronecker(5, p)^e if p > 2.

Offset 1, canonical program `A259030.P661161244229555766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A259030 (n : ℕ) : ℤ :=
  A259030.P661161244229555766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A259030.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A260518.P2775929053660389639

`A260114(2*n+1)/6`
-/

namespace A260518.P2775929053660389639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260114 (2 * n + 1) : ℚ) / 6

end

end A260518.P2775929053660389639

noncomputable section

/-- A260518: Expansion of psi(x)^2 * f(-x^3)^3 / f(-x) in powers of x where psi(), f() are Ramanujan theta functions.

Offset 0, canonical program `A260518.P2775929053660389639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A260518 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A260518.P2775929053660389639.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A260518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261445.P1983018921288395960

`A260109(2*n)`
-/

namespace A261445.P1983018921288395960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260109 (2 * n)

end

end A261445.P1983018921288395960

noncomputable section

/-- A261445: Expansion of f(x, x^3) * f(x, x^2)^3 in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A261445.P1983018921288395960`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261445 (n : ℕ) : ℤ :=
  A261445.P1983018921288395960.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261445.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A263021.P16204132987011673581

`A260109(Δ[n²])/3`
-/

namespace A263021.P16204132987011673581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260109 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A263021.P16204132987011673581

noncomputable section

/-- A263021: Expansion of f(-x^3)^6 / (phi(-x) * phi(-x^3)) in powers of x where phi(), f() are Ramanujan theta functions.

Offset 0, canonical program `A263021.P16204132987011673581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A263021 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A263021.P16204132987011673581.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A263021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265675.P13042418229366076231

`A073311(record[A083346(n+1)])%(n+1)`
-/

namespace A265675.P13042418229366076231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073311 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (n + 1 : ℤ)

end

end A265675.P13042418229366076231

noncomputable section

/-- A265675: Number of smaller squarefree numbers that are coprime to the n-th squarefree number.

Offset 1, canonical program `A265675.P13042418229366076231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. -/
def A265675 (n : ℕ) : ℤ :=
  A265675.P13042418229366076231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. -/
def A265675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268384.P16231980144868817348

`a(A246159(n))` with `a(0)=0, a(1)=1`
-/

namespace A268384.P16231980144868817348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A246159 n).toNat

end

end A268384.P16231980144868817348

noncomputable section

/-- A268384: Characteristic function of A001317.

Offset 0, canonical program `A268384.P16231980144868817348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268384 (n : ℕ) : ℤ :=
  (A268384.P16231980144868817348.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268477.P4055541825993668443

`p?[A268415(n+1)]`
-/

namespace A268477.P4055541825993668443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268477.P4055541825993668443

noncomputable section

/-- A268477: Balanced odious primes: primes with an odd number of runs of 1's in their binary expansion.

Offset 1, canonical program `A268477.P4055541825993668443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1158 terms. -/
def A268477 (n : ℕ) : ℤ :=
  A268477.P4055541825993668443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1158 terms. -/
def A268477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269529.P254350868632863170

`A020985(A005351(n))`
-/

namespace A269529.P254350868632863170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A005351 n).toNat

end

end A269529.P254350868632863170

noncomputable section

/-- A269529: An analog of the Golay-Rudin-Shapiro sequence (A020985) in base -2 (see comments).

Offset 0, canonical program `A269529.P254350868632863170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A269529 (n : ℕ) : ℤ :=
  A269529.P254350868632863170.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A269529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269845.P12932834634170086123

`A181118(n+1)²`
-/

namespace A269845.P12932834634170086123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181118 (n + 1) ^ 2

end

end A269845.P12932834634170086123

noncomputable section

/-- A269845: Irregular triangle read by rows: T(n,k) = (k/2+1/2)^2 if odd-k otherwise T(n,k) = (n-k/2)^2 where n >= 1, k = 0..2*n-1.

Offset 1, canonical program `A269845.P12932834634170086123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A269845 (n : ℕ) : ℤ :=
  A269845.P12932834634170086123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A269845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274079.P11049046374545540560

`A000096(A056556(n))+A056560(n)+2`
-/

namespace A274079.P11049046374545540560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A056556 n).toNat + (A056560 n + 2)

end

end A274079.P11049046374545540560

noncomputable section

/-- A274079: Table read by rows: the n-th row is the list of numbers diagonally up and to the right of n in the natural numbers read by antidiagonals.

Offset 1, canonical program `A274079.P11049046374545540560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274079 (n : ℕ) : ℤ :=
  A274079.P11049046374545540560.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274505.P2443972878676266277

`∩[A023211(n+1), A230227(n+1)]`
-/

namespace A274505.P2443972878676266277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274505.P2443972878676266277

noncomputable section

/-- A274505: Primes p such that 3*p-10 and 3*p+10 are prime numbers.

Offset 1, canonical program `A274505.P2443972878676266277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2514 terms. -/
def A274505 (n : ℕ) : ℤ :=
  (A274505.P2443972878676266277.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2514 terms. -/
def A274505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277822.P8229571769565338857

`A268726(and(A001969(n+1), A006257(n)))`
-/

namespace A277822.P8229571769565338857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268726 (Int.land (A001969 (n + 1)) (A006257 n)).toNat

end

end A277822.P8229571769565338857

noncomputable section

/-- A277822: a(n) = index of the column where n is located in array A277880.

Offset 0, canonical program `A277822.P8229571769565338857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277822 (n : ℕ) : ℤ :=
  A277822.P8229571769565338857.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279064.P15784993445143598710

`eq[A010052(2*n)+A010052(n), A050605(n+1)]`
-/

namespace A279064.P15784993445143598710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n) + A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279064.P15784993445143598710

noncomputable section

/-- A279064: Numbers n such that the sum of numbers less than n that do not divide n is even.

Offset 1, canonical program `A279064.P15784993445143598710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A279064 (n : ℕ) : ℤ :=
  (A279064.P15784993445143598710.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A279064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279211.P6609687660226102696

`A002260(n+1)+A204002(n+1)-4`
-/

namespace A279211.P6609687660226102696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A204002 (n + 1) - 4)

end

end A279211.P6609687660226102696

noncomputable section

/-- A279211: Fill an array by antidiagonals upwards; in the n-th cell, enter the number of earlier cells that can be seen from that cell.

Offset 0, canonical program `A279211.P6609687660226102696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A279211 (n : ℕ) : ℤ :=
  A279211.P6609687660226102696.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A279211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280008.P10938950252498374127

`A002375(n+2)-A002375(n+1)`
-/

namespace A280008.P10938950252498374127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 2) - A002375 (n + 1)

end

end A280008.P10938950252498374127

noncomputable section

/-- A280008: First differences of A002375.

Offset 1, canonical program `A280008.P10938950252498374127`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280008 (n : ℕ) : ℤ :=
  A280008.P10938950252498374127.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280008.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280799.P17483720520370020034

`A049502(A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280799.P17483720520370020034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (A000010 (n + 1)).toNat

end

end A280799.P17483720520370020034

noncomputable section

/-- A280799: a(n) = A049502(phi(n)).

Offset 1, canonical program `A280799.P17483720520370020034`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049502, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280799 (n : ℕ) : ℤ :=
  A280799.P17483720520370020034.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049502, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280799.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280815.P16401283528998720651

`A049502(A051953(n+1))`
-/

namespace A280815.P16401283528998720651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (A051953 (n + 1)).toNat

end

end A280815.P16401283528998720651

noncomputable section

/-- A280815: a(n) = A049502(cototient(n)).

Offset 1, canonical program `A280815.P16401283528998720651`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049502, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280815 (n : ℕ) : ℤ :=
  A280815.P16401283528998720651.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049502, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280815.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280843.P6908964579885282676

`A049502(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280843.P6908964579885282676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (A000203 (n + 1)).toNat

end

end A280843.P6908964579885282676

noncomputable section

/-- A280843: a(n) = A049502(sigma(n)).

Offset 1, canonical program `A280843.P6908964579885282676`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049502, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280843 (n : ℕ) : ℤ :=
  A280843.P6908964579885282676.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049502, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280843.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A281379.P7269018797134553829

`lt[A178226(A003188(n)), 1]`
-/

namespace A281379.P7269018797134553829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 (A003188 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A281379.P7269018797134553829

noncomputable section

/-- A281379: Numbers which are palindromic in their binary reflected Gray code representation.

Offset 1, canonical program `A281379.P7269018797134553829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. -/
def A281379 (n : ℕ) : ℤ :=
  (A281379.P7269018797134553829.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. -/
def A281379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281497.P13334527158016198165

`A049502(A003188(n+1))`
-/

namespace A281497.P13334527158016198165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (A003188 (n + 1)).toNat

end

end A281497.P13334527158016198165

noncomputable section

/-- A281497: Write n in binary reflected Gray code and sum the positions where there is a '1' followed immediately to the left by a '0', counting the rightmost digit as position 1.

Offset 1, canonical program `A281497.P13334527158016198165`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049502, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281497 (n : ℕ) : ℤ :=
  A281497.P13334527158016198165.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049502, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281497.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A283427.P12910337542420709598

`record[A054272(n+1)%(A033046(n)+1)]`
-/

namespace A283427.P12910337542420709598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054272 (n + 1)) (A033046 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283427.P12910337542420709598

noncomputable section

/-- A283427: a(n) is the number of consecutive smallest prime totatives of primorial A002110(n).

Offset 1, canonical program `A283427.P12910337542420709598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A283427 (n : ℕ) : ℤ :=
  A283427.P12910337542420709598.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A283427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284004.P4142446306002711801

`A002110(A209281(n+1))`
-/

namespace A284004.P4142446306002711801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A209281 (n + 1)).toNat

end

end A284004.P4142446306002711801

noncomputable section

/-- A284004: a(n) = A046523(A284003(n)).

Offset 0, canonical program `A284004.P4142446306002711801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284004 (n : ℕ) : ℤ :=
  A284004.P4142446306002711801.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285962.P11120950042759192256

`∑[A036578(abs(1-n))!]`
-/

namespace A285962.P11120950042759192256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A036578 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285962.P11120950042759192256

noncomputable section

/-- A285962: Positions of 1 in A285960; complement of A285961.

Offset 1, canonical program `A285962.P11120950042759192256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285962 (n : ℕ) : ℤ :=
  (A285962.P11120950042759192256.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285962.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A290450.P10399462195155768375

`p?[A076368(n+2)%5*A000040(n+1)]`
-/

namespace A290450.P10399462195155768375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076368 (n + 2)) 5 * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290450.P10399462195155768375

noncomputable section

/-- A290450: Primes with property that the next prime has the same last digit.

Offset 1, canonical program `A290450.P10399462195155768375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1391 terms. -/
def A290450 (n : ℕ) : ℤ :=
  A290450.P10399462195155768375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1391 terms. -/
def A290450.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A294211.P15030019526972708739

`(n+1)*A294100(n+1)`
-/

namespace A294211.P15030019526972708739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A294100 (n + 1)

end

end A294211.P15030019526972708739

noncomputable section

/-- A294211: Sum of the parts in the partitions of n into two squarefree parts or two nonsquarefree parts.

Offset 1, canonical program `A294211.P15030019526972708739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294211 (n : ℕ) : ℤ :=
  A294211.P15030019526972708739.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298612.P5426295925633337968

`A262232(n+3)-1`
-/

namespace A298612.P5426295925633337968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262232 (n + 3) - 1

end

end A298612.P5426295925633337968

noncomputable section

/-- A298612: The number of concave polygon classes.

Offset 3, canonical program `A298612.P5426295925633337968`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262232, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A298612 (n : ℕ) : ℤ :=
  A298612.P5426295925633337968.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262232, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A298612.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A299763.P9872008477996207838

`1+A182986(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A299763.P9872008477996207838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A182986 (n + 1)

end

end A299763.P9872008477996207838

noncomputable section

/-- A299763: a(n) = 1 + A182986(n).

Offset 1, canonical program `A299763.P9872008477996207838`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A182986, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A299763 (n : ℕ) : ℤ :=
  A299763.P9872008477996207838.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A182986, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A299763.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A303809.P15019410293216701756

`∏{e}[n+1, 2^2^A238949(#)]`
-/

namespace A303809.P15019410293216701756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (2 : ℝ) ^ ((2 : ℚ) ^ (A238949 (Nat.factorization (f1 n) p) : ℤ) : ℝ)

end

end A303809.P15019410293216701756

noncomputable section

/-- A303809: Multiplicative with a(p^k) = 2^a(k).

Offset 1, canonical program `A303809.P15019410293216701756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303809 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A303809.P15019410293216701756.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303809.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A305125.P744897622277755931

`A002375((n+1)²)`
-/

namespace A305125.P744897622277755931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 ((n + 1) ^ 2)

end

end A305125.P744897622277755931

noncomputable section

/-- A305125: Number of ways to express n^2 as average of two primes p1 < p2.

Offset 1, canonical program `A305125.P744897622277755931`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305125 (n : ℕ) : ℤ :=
  A305125.P744897622277755931.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305125.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305126.P14197391301717155152

`A002375((n+1)^3)`
-/

namespace A305126.P14197391301717155152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 ((n + 1) ^ 3)

end

end A305126.P14197391301717155152

noncomputable section

/-- A305126: Number of ways to express n^3 as average of two primes p1 < p2.

Offset 1, canonical program `A305126.P14197391301717155152`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305126 (n : ℕ) : ℤ :=
  A305126.P14197391301717155152.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305126.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306546.P4171820241899143861

`A006370(A259445(n+1))`
-/

namespace A306546.P4171820241899143861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A259445 (n + 1)).toNat

end

end A306546.P4171820241899143861

noncomputable section

/-- A306546: Modified Collatz Map such that odd numbers are treated the same, but even numbers have all factors of 2 removed.

Offset 1, canonical program `A306546.P4171820241899143861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306546 (n : ℕ) : ℤ :=
  A306546.P4171820241899143861.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306546.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A307562.P10947954791019149991

`record[gcd(A153218(n+1)+1, A153218(n+2))]`
-/

namespace A307562.P10947954791019149991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A153218 (n + 1) + 1) (A153218 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307562.P10947954791019149991

noncomputable section

/-- A307562: Numbers k such that both 6*k + 1 and 6*k + 7 are prime.

Offset 1, canonical program `A307562.P10947954791019149991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A307562 (n : ℕ) : ℤ :=
  (A307562.P10947954791019149991.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A307562.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A313595.P182879092079943348

`2*A313575(n)-A313565(n)`
-/

namespace A313595.P182879092079943348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313575 n - A313565 n

end

end A313595.P182879092079943348

noncomputable section

/-- A313595: Coordination sequence Gal.6.464.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313595.P182879092079943348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A313595 (n : ℕ) : ℤ :=
  A313595.P182879092079943348.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A313595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313739.P2057595720554128706

`A004525(n)+A313698(n)-A004396(A004525(n))`
-/

namespace A313739.P2057595720554128706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313698 n - A004396 (A004525 n).toNat)

end

end A313739.P2057595720554128706

noncomputable section

/-- A313739: Coordination sequence Gal.6.159.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313739.P2057595720554128706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2311 terms. -/
def A313739 (n : ℕ) : ℤ :=
  A313739.P2057595720554128706.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2311 terms. -/
def A313739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313928.P15528941747193858582

`2*A313916(n)-A313905(n)`
-/

namespace A313928.P15528941747193858582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313916 n - A313905 n

end

end A313928.P15528941747193858582

noncomputable section

/-- A313928: Coordination sequence Gal.5.302.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313928.P15528941747193858582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A313928 (n : ℕ) : ℤ :=
  A313928.P15528941747193858582.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A313928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314959.P7859421504801099217

`A004525(n)+A314899(n)-A004396(A004525(n))`
-/

namespace A314959.P7859421504801099217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314899 n - A004396 (A004525 n).toNat)

end

end A314959.P7859421504801099217

noncomputable section

/-- A314959: Coordination sequence Gal.6.340.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314959.P7859421504801099217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. -/
def A314959 (n : ℕ) : ℤ :=
  A314959.P7859421504801099217.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. -/
def A314959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315053.P5459368638815230742

`A004396(n)+A314899(n)-A004525(n)`
-/

namespace A315053.P5459368638815230742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314899 n - A004525 n)

end

end A315053.P5459368638815230742

noncomputable section

/-- A315053: Coordination sequence Gal.6.345.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315053.P5459368638815230742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A315053 (n : ℕ) : ℤ :=
  A315053.P5459368638815230742.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A315053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315333.P16393821972172640477

`A315275(n)+A008676(A016777(n))`
-/

namespace A315333.P16393821972172640477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315275 n + A008676 (A016777 n).toNat

end

end A315333.P16393821972172640477

noncomputable section

/-- A315333: Coordination sequence Gal.5.292.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315333.P16393821972172640477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2278 terms. -/
def A315333 (n : ℕ) : ℤ :=
  A315333.P16393821972172640477.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2278 terms. -/
def A315333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315335.P12030960458542249

`A314899(n)+A004396(n)`
-/

namespace A315335.P12030960458542249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314899 n + A004396 n

end

end A315335.P12030960458542249

noncomputable section

/-- A315335: Coordination sequence Gal.6.624.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315335.P12030960458542249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2244 terms. -/
def A315335 (n : ℕ) : ℤ :=
  A315335.P12030960458542249.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2244 terms. -/
def A315335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315479.P4180751109111946087

`A313698(n)+A004525(n)`
-/

namespace A315479.P4180751109111946087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313698 n + A004525 n

end

end A315479.P4180751109111946087

noncomputable section

/-- A315479: Coordination sequence Gal.6.210.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315479.P4180751109111946087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2260 terms. -/
def A315479 (n : ℕ) : ℤ :=
  A315479.P4180751109111946087.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2260 terms. -/
def A315479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315489.P10835335937589495706

`A330025(n)+A313801(n)`
-/

namespace A315489.P10835335937589495706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A313801 n

end

end A315489.P10835335937589495706

noncomputable section

/-- A315489: Coordination sequence Gal.5.292.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315489.P10835335937589495706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2259 terms. -/
def A315489 (n : ℕ) : ℤ :=
  A315489.P10835335937589495706.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2259 terms. -/
def A315489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315508.P17212227273649796777

`A315069(n)+A253262(n)`
-/

namespace A315508.P17212227273649796777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315069 n + A253262 n

end

end A315508.P17212227273649796777

noncomputable section

/-- A315508: Coordination sequence Gal.6.325.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315508.P17212227273649796777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. -/
def A315508 (n : ℕ) : ℤ :=
  A315508.P17212227273649796777.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. -/
def A315508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315518.P4860043378548832056

`A315468(n)+A110654(A057354(n))`
-/

namespace A315518.P4860043378548832056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315468 n + A110654 (A057354 n).toNat

end

end A315518.P4860043378548832056

noncomputable section

/-- A315518: Coordination sequence Gal.5.291.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315518.P4860043378548832056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A315518 (n : ℕ) : ℤ :=
  A315518.P4860043378548832056.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A315518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315549.P12001438916279019003

`A314899(n)+n`
-/

namespace A315549.P12001438916279019003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314899 n + (n : ℤ)

end

end A315549.P12001438916279019003

noncomputable section

/-- A315549: Coordination sequence Gal.6.628.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315549.P12001438916279019003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A315549 (n : ℕ) : ℤ :=
  A315549.P12001438916279019003.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A315549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315739.P13129759353165828185

`A315680(n)+Δ[A011862(n)]`
-/

namespace A315739.P13129759353165828185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315680 n + (f1 (n + 1) - f1 n)

end

end A315739.P13129759353165828185

noncomputable section

/-- A315739: Coordination sequence Gal.5.135.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315739.P13129759353165828185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2259 terms. -/
def A315739 (n : ℕ) : ℤ :=
  A315739.P13129759353165828185.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2259 terms. -/
def A315739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316272.P3024077072028453439

`A073846(A304337(n+1))`
-/

namespace A316272.P3024077072028453439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A304337 (n + 1)).toNat

end

end A316272.P3024077072028453439

noncomputable section

/-- A316272: A fractal-like sequence: erasing all pairs of consecutive terms that include a prime and a composite number (in any order) leaves the sequence unchanged.

Offset 1, canonical program `A316272.P3024077072028453439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A316272 (n : ℕ) : ℤ :=
  A316272.P3024077072028453439.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A316272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316345.P14622171126567751218

`1-A151666(A246159(n))`
-/

namespace A316345.P14622171126567751218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A151666 (A246159 n).toNat

end

end A316345.P14622171126567751218

noncomputable section

/-- A316345: An example of a word that is uniform morphic and recurrent, but neither pure morphic nor primitive morphic.

Offset 0, canonical program `A316345.P14622171126567751218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A316345 (n : ℕ) : ℤ :=
  A316345.P14622171126567751218.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A316345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316715.P11769109710965712386

`A107782(2*A003726(n+1))+1`
-/

namespace A316715.P11769109710965712386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 (2 * A003726 (n + 1)).toNat + 1

end

end A316715.P11769109710965712386

noncomputable section

/-- A316715: a(n) is the number of 1s in A316713(n). That is, a(n) is the number of B-sequences (A278039) used in the tribonacci ABC-representation of n >= 0.

Offset 0, canonical program `A316715.P11769109710965712386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A316715 (n : ℕ) : ℤ :=
  A316715.P11769109710965712386.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A316715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316851.P8837201044806511717

`A070770(lt[A056559(n), A056558(n)])`
-/

namespace A316851.P8837201044806511717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070770 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A316851.P8837201044806511717

noncomputable section

/-- A316851: Consider integer triangles as listed in rows of table A316841. Sequence gives perimeters of these triangles in the same order.

Offset 1, canonical program `A316851.P8837201044806511717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A316851 (n : ℕ) : ℤ :=
  A316851.P8837201044806511717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A316851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322921.P17338696888102081217

`A002375(3*(n+1))`
-/

namespace A322921.P17338696888102081217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (3 * (n + 1))

end

end A322921.P17338696888102081217

noncomputable section

/-- A322921: From Goldbach's conjecture: a(n) is the number of decompositions of 6n into a sum of two primes.

Offset 1, canonical program `A322921.P17338696888102081217`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322921 (n : ℕ) : ℤ :=
  A322921.P17338696888102081217.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322921.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A323159.P15063359225251792079`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323159 (n : ℕ) : ℤ :=
  (A323159.P15063359225251792079.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

Offset 1, canonical program `A323163.P4975270130842201010`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323163 (n : ℕ) : ℤ :=
  (A323163.P4975270130842201010.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323163.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A323309.P11860908349838440325`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323309 (n : ℕ) : ℤ :=
  A323309.P11860908349838440325.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323309.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A323406.P6021964609825623962`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323406 (n : ℕ) : ℤ :=
  (A323406.P6021964609825623962.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323406.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324472.P9683868638575580254

`A038459(A059126(3*n+1))%(n+1)`
-/

namespace A324472.P9683868638575580254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038459 (A059126 (3 * n + 1)).toNat) (n + 1 : ℤ)

end

end A324472.P9683868638575580254

noncomputable section

/-- A324472: a(n) = 1000 mod n.

Offset 1, canonical program `A324472.P9683868638575580254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A324472 (n : ℕ) : ℤ :=
  A324472.P9683868638575580254.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A324472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324652.P15448140147024622737

`eq[1, A324658(n+1)+1]+1`
-/

namespace A324652.P15448140147024622737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324658 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324652.P15448140147024622737

noncomputable section

/-- A324652: Numbers k such that A318468(k) (bitwise-AND of 2*k and sigma(k)) is equal to 2*k.

Offset 1, canonical program `A324652.P15448140147024622737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A324652 (n : ℕ) : ℤ :=
  (A324652.P15448140147024622737.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A324652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324718.P17421159723006763235

`A324639(eq[1, A324639(n+1)%2]+1)`
-/

namespace A324718.P17421159723006763235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324639 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A324718.P17421159723006763235

noncomputable section

/-- A324718: Odd numbers n for which bitand(2n,sigma(n)) = 2*bitand(n,sigma(n)-n), where bitand is bitwise-AND, A004198.

Offset 1, canonical program `A324718.P17421159723006763235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5879 terms. -/
def A324718 (n : ℕ) : ℤ :=
  A324718.P17421159723006763235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5879 terms. -/
def A324718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325003.P6363565412475937123

`A198321(n+2)`
-/

namespace A325003.P6363565412475937123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198321 (n + 2)

end

end A325003.P6363565412475937123

noncomputable section

/-- A325003: Triangle read by rows: T(n,k) is the number of achiral colorings of the facets (or vertices) of a regular n-dimensional simplex using exactly k colors.

Offset 1, canonical program `A325003.P6363565412475937123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1325 terms. -/
def A325003 (n : ℕ) : ℤ :=
  A325003.P6363565412475937123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1325 terms. -/
def A325003.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A325973.P1592013717773654083`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325973 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A325973.P1592013717773654083.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325973.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327251.P13631091954083186129

`∑{d}[n+1, A322577(#)]`
-/

namespace A327251.P13631091954083186129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322577 d

end

end A327251.P13631091954083186129

noncomputable section

/-- A327251: Expansion of Sum_{k>=1} psi(k) * x^k / (1 - x^k)^2, where psi = A001615.

Offset 1, canonical program `A327251.P13631091954083186129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327251 (n : ℕ) : ℤ :=
  A327251.P13631091954083186129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327861.P7578778145524314536

`char[Δ[A190117(n+1)]-1]`
-/

namespace A327861.P7578778145524314536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190117 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A327861.P7578778145524314536

noncomputable section

/-- A327861: Number of divisors d of n for which A003415(d)*d is equal to n, where A003415(x) gives the arithmetic derivative of x.

Offset 1, canonical program `A327861.P7578778145524314536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A327861 (n : ℕ) : ℤ :=
  (A327861.P7578778145524314536.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A327861.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A328320.P11647473449184802512

`eq[0, A328311(n+1)]+1`
-/

namespace A328320.P11647473449184802512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328311 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A328320.P11647473449184802512

noncomputable section

/-- A328320: Numbers for which A328311(n) = 1 + A051903(A003415(n)) - A051903(n) is zero (including 1 as the initial term).

Offset 1, canonical program `A328320.P11647473449184802512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328320 (n : ℕ) : ℤ :=
  (A328320.P11647473449184802512.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328321.P3480130997520919797

`lt[0, A328311(n+1)]+1`
-/

namespace A328321.P3480130997520919797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328311 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A328321.P3480130997520919797

noncomputable section

/-- A328321: Numbers n for which A328311(n) = 1 + A051903(A003415(n)) - A051903(n) is strictly positive.

Offset 1, canonical program `A328321.P3480130997520919797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328321 (n : ℕ) : ℤ :=
  (A328321.P3480130997520919797.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328485.P15892047175691278866

`∑{d}[n+1, A034448(#)]`
-/

namespace A328485.P15892047175691278866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034448 d

end

end A328485.P15892047175691278866

noncomputable section

/-- A328485: Dirichlet g.f.: zeta(s)^2 * zeta(s-1) / zeta(2*s-1).

Offset 1, canonical program `A328485.P15892047175691278866`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328485 (n : ℕ) : ℤ :=
  A328485.P15892047175691278866.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328485.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333363.P17407315961805387594

`A059126(record[xor(3, n)])`
-/

namespace A333363.P17407315961805387594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A333363.P17407315961805387594

noncomputable section

/-- A333363: Horizontal visibility sequence at the onset of chaos in the 3-period cascade.

Offset 1, canonical program `A333363.P17407315961805387594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3072 terms. -/
def A333363 (n : ℕ) : ℤ :=
  A333363.P17407315961805387594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3072 terms. -/
def A333363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333428.P1752145011509704751

`∩[A333427(n+1)-1, A333427(n+1)]`
-/

namespace A333428.P1752145011509704751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333427 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333428.P1752145011509704751

noncomputable section

/-- A333428: Starts of runs of 3 consecutive primorial base Niven numbers (A333426).

Offset 1, canonical program `A333428.P1752145011509704751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A333428 (n : ℕ) : ℤ :=
  (A333428.P1752145011509704751.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A333428.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A339026.P11730030012353626513

`(A338894(n+1)-(n+1)²)/2`
-/

namespace A339026.P11730030012353626513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338894 (n + 1) - ((n + 1) ^ 2 : ℤ) : ℚ) / 2

end

end A339026.P11730030012353626513

noncomputable section

/-- A339026: Number of pairs (x,y): 1 <= x < y <= n*n, such that x*y is a square.

Offset 1, canonical program `A339026.P11730030012353626513`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338894, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339026 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A339026.P11730030012353626513.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338894, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339026.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340372.P5948154074390075712

`∑{d}[n+1, A053866(#)*A080545((n+1)/#)]`
-/

namespace A340372.P5948154074390075712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053866 d * A080545 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340372.P5948154074390075712

noncomputable section

/-- A340372: a(n) = 1 if n has no more than one odd prime factor to an odd power in its prime factorization, 0 otherwise.

Offset 1, canonical program `A340372.P5948154074390075712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340372 (n : ℕ) : ℤ :=
  A340372.P5948154074390075712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340503.P1192746617364733996

`and(3, 2*(n+4)-A020987(n))`
-/

namespace A340503.P1192746617364733996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ((2 * (n + 4) : ℤ) - A020987 n)

end

end A340503.P1192746617364733996

noncomputable section

/-- A340503: Fixed under 0 -> 02, 1 -> 32, 2 -> 01, 3 -> 31.

Offset 1, canonical program `A340503.P1192746617364733996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340503 (n : ℕ) : ℤ :=
  A340503.P1192746617364733996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342004.P9799116110550622350

`C(2, A328311(n+1)+2)`
-/

namespace A342004.P9799116110550622350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A328311 (n + 1) + 2).toNat

end

end A342004.P9799116110550622350

noncomputable section

/-- A342004: a(n) = 1 if the maximal exponent in the prime factorization of the arithmetic derivative of n (A003415) is less than the maximal exponent in n, otherwise 0. a(1) = 1 by convention.

Offset 1, canonical program `A342004.P9799116110550622350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342004 (n : ℕ) : ℤ :=
  (A342004.P9799116110550622350.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342004.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A343569.P1783949158837083171

`A034448(n+1)*2^A001221(n+1)`
-/

namespace A343569.P1783949158837083171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) * (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A343569.P1783949158837083171

noncomputable section

/-- A343569: If n = Product (p_j^k_j) then a(n) = Product (2*(p_j^k_j + 1)), with a(1) = 1.

Offset 1, canonical program `A343569.P1783949158837083171`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343569 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A343569.P1783949158837083171.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343569.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343912.P17867153873116999387

`A053470(n+1)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A343912.P17867153873116999387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053470 (n + 1) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A343912.P17867153873116999387

noncomputable section

/-- A343912: a(n) = n - phi(n - phi(n)), where phi is the Euler totient function.

Offset 1, canonical program `A343912.P17867153873116999387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343912 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A343912.P17867153873116999387.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344344.P11501963061493860304

`∩[A344343(n+1)-1, A344343(n+1)]`
-/

namespace A344344.P11501963061493860304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344343 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344344.P11501963061493860304

noncomputable section

/-- A344344: Starts of runs of 4 consecutive Gray-code Niven numbers (A344341).

Offset 1, canonical program `A344344.P11501963061493860304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 557 terms. -/
def A344344 (n : ℕ) : ℤ :=
  (A344344.P11501963061493860304.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 557 terms. -/
def A344344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344586.P11857581262602511769

`comp[A344585(n+1)-1]+1`
-/

namespace A344586.P11857581262602511769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344585 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A344586.P11857581262602511769

noncomputable section

/-- A344586: Numbers k for which A003415(k) >= A001065(k), where A003415 gives the arithmetic derivative, and A001065 is the sum of proper divisors.

Offset 1, canonical program `A344586.P11857581262602511769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344586 (n : ℕ) : ℤ :=
  (A344586.P11857581262602511769.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344877.P6074659472045598504

`gcd(n+1, A344875(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344877.P6074659472045598504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A344875 (n + 1))

end

end A344877.P6074659472045598504

noncomputable section

/-- A344877: a(n) = gcd(n, A344875(n)), where A344875 is multiplicative with a(2^e) = 2^(1+e) - 1, and a(p^e) = p^e -1 for odd primes p.

Offset 1, canonical program `A344877.P6074659472045598504`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344875, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344877 (n : ℕ) : ℤ :=
  (A344877.P6074659472045598504.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344875, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344877.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345049.P10676505459348622812

`A173557(n+1)*A345001(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345049.P10676505459348622812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) * A345001 (n + 1)

end

end A345049.P10676505459348622812

noncomputable section

/-- A345049: a(n) = A173557(n) * A345001(n).

Offset 1, canonical program `A345049.P10676505459348622812`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A345001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345049 (n : ℕ) : ℤ :=
  A345049.P10676505459348622812.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A345001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345049.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345212.P17671319425580127952

`eq[A001221(n+1), A086971(n+1)]+1`
-/

namespace A345212.P17671319425580127952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A345212.P17671319425580127952

noncomputable section

/-- A345212: Numbers with equal numbers of prime and semiprime divisors.

Offset 1, canonical program `A345212.P17671319425580127952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A345212 (n : ℕ) : ℤ :=
  (A345212.P17671319425580127952.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A345212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345446.P4602347465364053125

`A086971(n+1)-A086971(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A345446.P4602347465364053125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1) - A086971 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A345446.P4602347465364053125

noncomputable section

/-- A345446: Number of semiprime divisors of n whose square does not divide n.

Offset 1, canonical program `A345446.P4602347465364053125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345446 (n : ℕ) : ℤ :=
  A345446.P4602347465364053125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345446.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A345947.P5146707115355177484

`gcd(A153151(n+1), A344875(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345947.P5146707115355177484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A153151 (n + 1)) (A344875 (n + 1))

end

end A345947.P5146707115355177484

noncomputable section

/-- A345947: a(n) = gcd(A153151(n), A344875(n)).

Offset 1, canonical program `A345947.P5146707115355177484`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153151, A344875, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345947 (n : ℕ) : ℤ :=
  (A345947.P5146707115355177484.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153151, A344875, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345947.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347093.P13905324333595350754

`A322577(n+1)+A347092(n+1)`
-/

namespace A347093.P13905324333595350754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322577 (n + 1) + A347092 (n + 1)

end

end A347093.P13905324333595350754

noncomputable section

/-- A347093: Sum of A322577 (convolution of Dedekind psi with Euler phi) and its Dirichlet inverse.

Offset 1, canonical program `A347093.P13905324333595350754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322577, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347093 (n : ℕ) : ℤ :=
  A347093.P13905324333595350754.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322577, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347093.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347826.P4007210214706860931

`lt[n+2, A378548(n+1)]+1`
-/

namespace A347826.P4007210214706860931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378548 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A347826.P4007210214706860931

noncomputable section

/-- A347826: Numbers k with at least one odd semiprime divisor < k.

Offset 1, canonical program `A347826.P4007210214706860931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347826 (n : ℕ) : ℤ :=
  (A347826.P4007210214706860931.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348098.P9969083464390464746

`A348097(eq[1, A348097(n+2)-A348097(n+1)]+1)`
-/

namespace A348098.P9969083464390464746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348097 (n + 2) - A348097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A348098.P9969083464390464746

noncomputable section

/-- A348098: Number k such that k and k+1 both have an equal number of unitary and nonunitary prime divisors (A348097).

Offset 1, canonical program `A348098.P9969083464390464746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. -/
def A348098 (n : ℕ) : ℤ :=
  A348098.P9969083464390464746.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. -/
def A348098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348122.P4903118865110952081

`∩[A348121(n+1)-1, A348121(n+1)]`
-/

namespace A348122.P4903118865110952081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348121 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348122.P4903118865110952081

noncomputable section

/-- A348122: Numbers k such that k and k+1 both have more nonunitary than unitary prime divisors (A348121).

Offset 1, canonical program `A348122.P4903118865110952081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A348122 (n : ℕ) : ℤ :=
  (A348122.P4903118865110952081.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A348122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348503.P1074527465490067139

`gcd(A000203(n+1), A034448(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
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

/-! ## A348962.P1767311607257798879

`filter[A348961(n+1), A353626(#)]`
-/

namespace A348962.P1767311607257798879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353626 (f1 j).toNat = 1) n)

end

end A348962.P1767311607257798879

noncomputable section

/-- A348962: Exponential harmonic numbers of type 1 (A348961) that are not squarefree.

Offset 1, canonical program `A348962.P1767311607257798879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A348962 (n : ℕ) : ℤ :=
  A348962.P1767311607257798879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A348962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349609.P5905954280759614194

`∑{#}[n², A290081(#)]`
-/

namespace A349609.P5905954280759614194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A290081 k

end

end A349609.P5905954280759614194

noncomputable section

/-- A349609: Number of solutions to x^2 + y^2 <= n^2, where x, y are positive odd integers.

Offset 0, canonical program `A349609.P5905954280759614194`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A290081, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349609 (n : ℕ) : ℤ :=
  A349609.P5905954280759614194.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A290081, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349609.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349770.P12946265739044333858

`∑{d}[n+1, A034448(#)*A034448((n+1)/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
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

Offset 1, canonical program `A349770.P12946265739044333858`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349770 (n : ℕ) : ℤ :=
  A349770.P12946265739044333858.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349770.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350373.P14960891234703651044

`eq[6, A086971(A028310(n))]`
-/

namespace A350373.P14960891234703651044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350373.P14960891234703651044

noncomputable section

/-- A350373: Numbers with exactly 6 semiprime divisors.

Offset 1, canonical program `A350373.P14960891234703651044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A350373 (n : ℕ) : ℤ :=
  (A350373.P14960891234703651044.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A350373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350782.P17469437455933357608

`A002375((n+3)!)`
-/

namespace A350782.P17469437455933357608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (Nat.factorial (n + 3))

end

end A350782.P17469437455933357608

noncomputable section

/-- A350782: a(n) is the number of pairs of primes (p,q), p < q, such that (p + q)/2 = n!.

Offset 3, canonical program `A350782.P17469437455933357608`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350782 (n : ℕ) : ℤ :=
  A350782.P17469437455933357608.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350782.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351115.P9694729978401219806

`∑[A351114(n+1)]`
-/

namespace A351115.P9694729978401219806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351115.P9694729978401219806

noncomputable section

/-- A351115: Number of balanced numbers <= n.

Offset 1, canonical program `A351115.P9694729978401219806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351115 (n : ℕ) : ℤ :=
  A351115.P9694729978401219806.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351116.P16264301309237612569

`∑[(n+1)*A351114(n+1)]`
-/

namespace A351116.P16264301309237612569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A351114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351116.P16264301309237612569

noncomputable section

/-- A351116: Sum of the balanced numbers <= n.

Offset 1, canonical program `A351116.P16264301309237612569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351116 (n : ℕ) : ℤ :=
  A351116.P16264301309237612569.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353499.P10127813509975770335

`A008966(n+1)*A353498(n+1)`
-/

namespace A353499.P10127813509975770335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A353498 (n + 1)

end

end A353499.P10127813509975770335

noncomputable section

/-- A353499: a(n) = 1 if n is a squarefree number for which the 2-adic valuation of phi(n) does not exceed the 2-adic valuation of n-1, otherwise 0.

Offset 1, canonical program `A353499.P10127813509975770335`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353498, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353499 (n : ℕ) : ℤ :=
  A353499.P10127813509975770335.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353498, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353499.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354199.P14179796124610273351

`A053866(n+1)*(1-A353814(n+1))`
-/

namespace A354199.P14179796124610273351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (n + 1) * (1 - A353814 (n + 1))

end

end A354199.P14179796124610273351

noncomputable section

/-- A354199: a(n) = 1 if in the prime factorization of n there is no prime factor of form 4k+1 and any prime factor of form 4k+3 occurs with an even multiplicity, otherwise 0.

Offset 1, canonical program `A354199.P14179796124610273351`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354199 (n : ℕ) : ℤ :=
  A354199.P14179796124610273351.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354199.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355709.P10371335287816262552

`eq[A169611(n+1)+1, A169611(A004277(n))]`
-/

namespace A355709.P10371335287816262552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A355709.P10371335287816262552

noncomputable section

/-- A355709: Numbers k such that k and k+1 have the same number of 3-smooth divisors.

Offset 1, canonical program `A355709.P10371335287816262552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A355709 (n : ℕ) : ℤ :=
  (A355709.P10371335287816262552.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A355709.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A358683.P7275486205791898650

`∑{#}[A182986(n+2)-(1+A182986(n+1)), A000203(#+1+A182986(n+1))]`
-/

namespace A358683.P7275486205791898650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) - (1 + A182986 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A000203 ((k : ℤ) + (1 + A182986 (n + 1))).toNat

end

end A358683.P7275486205791898650

noncomputable section

/-- A358683: a(n) is the sum of all divisors of all positive integers k where A182986(n) < k <= prime(n), n >= 1.

Offset 1, canonical program `A358683.P7275486205791898650`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A182986, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358683 (n : ℕ) : ℤ :=
  A358683.P7275486205791898650.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A182986, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358683.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A359833.P15086300142529714947

`A000045(∏{e}[n+1, #])*A355689(n+1)`
-/

namespace A359833.P15086300142529714947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A355689 (n + 1)

end

end A359833.P15086300142529714947

noncomputable section

/-- A359833: Dirichlet inverse of A359832, where A359832(n) = 1 if the 2-adic valuation of n is either 0 or odd, otherwise 0.

Offset 1, canonical program `A359833.P15086300142529714947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359833 (n : ℕ) : ℤ :=
  A359833.P15086300142529714947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360110.P1200029964072972346

`record[(n+1)*A360109(n+1)]`
-/

namespace A360110.P1200029964072972346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A360109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360110.P1200029964072972346

noncomputable section

/-- A360110: Nonmultiples of 4 whose arithmetic derivative is a multiple of 4.

Offset 1, canonical program `A360110.P1200029964072972346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360110 (n : ℕ) : ℤ :=
  A360110.P1200029964072972346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360122.P9404621498929135355

`A347963(n+1)%2`
-/

namespace A360122.P9404621498929135355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347963 (n + 1)) 2

end

end A360122.P9404621498929135355

noncomputable section

/-- A360122: Parity of A360121, where A360121 is Dirichlet convolution of A342001 with A342002.

Offset 1, canonical program `A360122.P9404621498929135355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360122 (n : ℕ) : ℤ :=
  A360122.P9404621498929135355.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360122.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A360282.P12012788412935324034

`A092392(n)*A198321(n)`
-/

namespace A360282.P12012788412935324034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n * A198321 n

end

end A360282.P12012788412935324034

noncomputable section

/-- A360282: Triangle read by rows. T(n, k) = (1/2) * binomial(2*(n - k + 1), n - k + 1) * binomial(2*n - k, k - 1) for n > 0, T(0, 0) = 1.

Offset 0, canonical program `A360282.P12012788412935324034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A360282 (n : ℕ) : ℤ :=
  A360282.P12012788412935324034.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A360282.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A360720.P1092030022091777669`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360720 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A360720.P1092030022091777669.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360720.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A365403.P12086530719845818001`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365403 (n : ℕ) : ℤ :=
  A365403.P12086530719845818001.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365403.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A365404.P8504261663982695233`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365404 (n : ℕ) : ℤ :=
  A365404.P8504261663982695233.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365404.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A365479.P18110182428755733630`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365479 (n : ℕ) : ℤ :=
  A365479.P18110182428755733630.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

Offset 1, canonical program `A365480.P17885018013018802404`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365480 (n : ℕ) : ℤ :=
  A365480.P17885018013018802404.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

Offset 1, canonical program `A365481.P15972736645775399503`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365481 (n : ℕ) : ℤ :=
  A365481.P15972736645775399503.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365481.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365632.P6636790932743859901

`∑{d}[n+1, A359552(#)]`
-/

namespace A365632.P6636790932743859901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359552 d

end

end A365632.P6636790932743859901

noncomputable section

/-- A365632: The number of divisors of n that are terms of A072873.

Offset 1, canonical program `A365632.P6636790932743859901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365632 (n : ℕ) : ℤ :=
  A365632.P6636790932743859901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365632.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A368997.P2323535588264354679

`A035263(n+1)*A358680(n+1)`
-/

namespace A368997.P2323535588264354679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) * A358680 (n + 1)

end

end A368997.P2323535588264354679

noncomputable section

/-- A368997: a(n) = 1 if A342001(n) is even, otherwise 0.

Offset 1, canonical program `A368997.P2323535588264354679`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368997 (n : ℕ) : ℤ :=
  A368997.P2323535588264354679.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368997.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A369718.P3306263792337587207`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369718 (n : ℕ) : ℤ :=
  A369718.P3306263792337587207.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369718.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369759.P9544556233329631005

`A034448(A356192(n+1))`
-/

namespace A369759.P9544556233329631005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A356192 (n + 1)).toNat

end

end A369759.P9544556233329631005

noncomputable section

/-- A369759: The sum of unitary divisors of the smallest cubefull exponentially odd number that is divisible by n.

Offset 1, canonical program `A369759.P9544556233329631005`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A356192, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369759 (n : ℕ) : ℤ :=
  A369759.P9544556233329631005.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A356192, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369759.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A372054.P363222448260310864

`(n+1)*A182986(n+1)+1`
-/

namespace A372054.P363222448260310864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A182986 (n + 1) + 1

end

end A372054.P363222448260310864

noncomputable section

/-- A372054: a(0)=1; thereafter a(n) = (n+1)*prime(n)+1.

Offset 0, canonical program `A372054.P363222448260310864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372054 (n : ℕ) : ℤ :=
  A372054.P363222448260310864.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372054.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A373143.P15888518406424866869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373143 (n : ℕ) : ℤ :=
  A373143.P15888518406424866869.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373143.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373263.P11936545737331509118

`1-(A372573(n+1)+A373260(n+1))`
-/

namespace A373263.P11936545737331509118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A372573 (n + 1) + A373260 (n + 1))

end

end A373263.P11936545737331509118

noncomputable section

/-- A373263: a(n) = 1 if A276085(n) == -1 (mod 3), otherwise 0, where A276085 is the primorial base log-function.

Offset 1, canonical program `A373263.P11936545737331509118`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, A373260, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373263 (n : ℕ) : ℤ :=
  A373263.P11936545737331509118.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, A373260, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373263.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373376.P10229871634249009273

`∪[A335657(n+1), A016825(n)]`
-/

namespace A373376.P10229871634249009273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A373376.P10229871634249009273

noncomputable section

/-- A373376: Numbers k such that gcd(A001414(k), A003415(k)) is odd, where A001414 is the sum of prime factors with repetition, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373376.P10229871634249009273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373376 (n : ℕ) : ℤ :=
  (A373376.P10229871634249009273.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373474.P9005453665869377393

`char[A369659(n+1)-1]`
-/

namespace A373474.P9005453665869377393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369659 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373474.P9005453665869377393

noncomputable section

/-- A373474: a(n) = 1 if A001414(n) and A083345(n) are both multiples of 3, otherwise 0, where A001414 is fully additive with a(p) = p, and A083345 is the numerator of the fully additive function with a(p) = 1/p.

Offset 1, canonical program `A373474.P9005453665869377393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373474 (n : ℕ) : ℤ :=
  (A373474.P9005453665869377393.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373478.P4147642878322058632

`record[(n+1)*A373477(n+1)]`
-/

namespace A373478.P4147642878322058632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A373477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373478.P4147642878322058632

noncomputable section

/-- A373478: Numbers k such that A001414(k) and A003415(k) are both multiples of 3, where A001414 is the sum of prime factors with repetition, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373478.P4147642878322058632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373478 (n : ℕ) : ℤ :=
  A373478.P4147642878322058632.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373482.P4247517866636361981

`eq[1, A373481(n+1)]+1`
-/

namespace A373482.P4247517866636361981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373482.P4247517866636361981

noncomputable section

/-- A373482: Numbers k for which A003415(k) is a multiple of A001414(k), where A003415 is the arithmetic derivative, and A001414 is the sum of prime factors with multiplicity.

Offset 1, canonical program `A373482.P4247517866636361981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373482 (n : ℕ) : ℤ :=
  (A373482.P4247517866636361981.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373494.P12895813285925351519

`record[(n+1)*A373493(n+1)]`
-/

namespace A373494.P12895813285925351519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A373493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373494.P12895813285925351519

noncomputable section

/-- A373494: Numbers k for which A059975(k) and A003415(k) are both multiples of 3, where A059975 is fully additive with a(p) = p-1, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373494.P12895813285925351519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9891 terms. -/
def A373494 (n : ℕ) : ℤ :=
  A373494.P12895813285925351519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9891 terms. -/
def A373494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373839.P9268052509882335273

`eq[n, n*A373838(n)]`
-/

namespace A373839.P9268052509882335273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A373838 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A373839.P9268052509882335273

noncomputable section

/-- A373839: Numbers k such that k and A276150(k) are both multiples of 3, where A276150 is the digit sum in the primorial base.

Offset 1, canonical program `A373839.P9268052509882335273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5556 terms. -/
def A373839 (n : ℕ) : ℤ :=
  (A373839.P9268052509882335273.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5556 terms. -/
def A373839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374044.P3510454366840386907

`filter[A374042(n+1), A187074(#)]`
-/

namespace A374044.P3510454366840386907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A374044.P3510454366840386907

noncomputable section

/-- A374044: Non-multiples of 3 whose 2-adic valuation is a multiple of 3.

Offset 1, canonical program `A374044.P3510454366840386907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374044 (n : ℕ) : ℤ :=
  A374044.P3510454366840386907.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374044.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A382729.P18152922907771322413

`∑[A382723(n)]`
-/

namespace A382729.P18152922907771322413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382729.P18152922907771322413

noncomputable section

/-- A382729: Total number of entries in rows 0,1,...,n of Pascal's triangle not divisible by 4.

Offset 0, canonical program `A382729.P18152922907771322413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7154 terms. -/
def A382729 (n : ℕ) : ℤ :=
  A382729.P18152922907771322413.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7154 terms. -/
def A382729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382813.P3009257435350173440

`A002805(n+1)*A027611(n+2)/A120263(n+2)`
-/

namespace A382813.P3009257435350173440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002805 (n + 1) * A027611 (n + 2) : ℚ) / (A120263 (n + 2) : ℚ)

end

end A382813.P3009257435350173440

noncomputable section

/-- A382813: Denominator of the n-th partial sum of the squares of the harmonic numbers.

Offset 1, canonical program `A382813.P3009257435350173440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A382813 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382813.P3009257435350173440.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A382813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384040.P5722598086975707309

`∑{d}[n+1, A130107(#)*A365550((n+1)/#)]`
-/

namespace A384040.P5722598086975707309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130107 d * A365550 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384040.P5722598086975707309

noncomputable section

/-- A384040: The number of integers k from 1 to n such that gcd(n,k) is a cubefull number.

Offset 1, canonical program `A384040.P5722598086975707309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384040 (n : ℕ) : ℤ :=
  A384040.P5722598086975707309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385049.P4314546345996774465

`A034448(A385007(n+1))`
-/

namespace A385049.P4314546345996774465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A385007 (n + 1)).toNat

end

end A385049.P4314546345996774465

noncomputable section

/-- A385049: The sum of the unitary divisors of n that are biquadratefree numbers (A046100).

Offset 1, canonical program `A385049.P4314546345996774465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385049 (n : ℕ) : ℤ :=
  A385049.P4314546345996774465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385109.P2569086919831927014

`n%A259445(3*n+1)`
-/

namespace A385109.P2569086919831927014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A259445 (3 * n + 1))

end

end A385109.P2569086919831927014

noncomputable section

/-- A385109: If n is 5 (mod 8) then apply n = (n-1)/4 until the result is not equivalent 5 (mod 8); otherwise a(n) = n.

Offset 0, canonical program `A385109.P2569086919831927014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A385109 (n : ℕ) : ℤ :=
  A385109.P2569086919831927014.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A385109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386468.P12637838022396373735

`A051903(A365683(n+1))`
-/

namespace A386468.P12637838022396373735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A365683 (n + 1)).toNat

end

end A386468.P12637838022396373735

noncomputable section

/-- A386468: The maximum exponent in the prime factorization of the largest exponentially squarefree divisor of n.

Offset 1, canonical program `A386468.P12637838022396373735`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A365683, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A386468 (n : ℕ) : ℤ :=
  A386468.P12637838022396373735.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A365683, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A386468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386594.P15827319157028247676

`∑{d}[n+1, #*A351114((n+1)/#)]`
-/

namespace A386594.P15827319157028247676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A351114 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A386594.P15827319157028247676

noncomputable section

/-- A386594: a(n) = Sum_{d|n} d * c(n/d), where c = A351114.

Offset 1, canonical program `A386594.P15827319157028247676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386594 (n : ℕ) : ℤ :=
  A386594.P15827319157028247676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386594.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A389162.P5482749429256733056`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389162 (n : ℕ) : ℤ :=
  A389162.P5482749429256733056.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389162.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390329.P16154196424399310055

`lt[A067434(n+1)%2, 1]+1`
-/

namespace A390329.P16154196424399310055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067434 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A390329.P16154196424399310055

noncomputable section

/-- A390329: Numbers k such that the number of distinct prime divisors of binomial(2k, k) is even.

Offset 1, canonical program `A390329.P16154196424399310055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A390329 (n : ℕ) : ℤ :=
  (A390329.P16154196424399310055.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A390329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390554.P5277183224943981996

`A000203((n+1)/A007947(n+1))*A034448((n+1)*A007947(n+1))`
-/

namespace A390554.P5277183224943981996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat * A034448 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A390554.P5277183224943981996

noncomputable section

/-- A390554: a(n) is the sum of the bi-unitary divisors of n^2.

Offset 1, canonical program `A390554.P5277183224943981996`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390554 (n : ℕ) : ℤ :=
  A390554.P5277183224943981996.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390554.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390694.P8682946174690617644

`(n+1)*A390692(n+1)`
-/

namespace A390694.P8682946174690617644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A390692 (n + 1)

end

end A390694.P8682946174690617644

noncomputable section

/-- A390694: The smallest multiple of n that is a Loeschian number (A003136).

Offset 1, canonical program `A390694.P8682946174690617644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A390692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390694 (n : ℕ) : ℤ :=
  A390694.P8682946174690617644.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A390692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390694.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390800.P11464708806357456531

`(n+1+A010055(n+1))*A131233(n+1)/2`
-/

namespace A390800.P11464708806357456531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℤ) + A010055 (n + 1)) * A131233 (n + 1) : ℚ) / 2

end

end A390800.P11464708806357456531

noncomputable section

/-- A390800: The sum of the integers k from 1 to n such that gcd(n, k) is a power of a prime (A000961).

Offset 1, canonical program `A390800.P11464708806357456531`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010055, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390800 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390800.P11464708806357456531.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010055, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390800.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391747.P12893955322545124689

`∏{p}[A195017(n+1), A056674(#)]`
-/

namespace A391747.P12893955322545124689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A056674 p

end

end A391747.P12893955322545124689

noncomputable section

/-- A391747: a(n) = 1 if -1 <= A195017(n) <= 1, otherwise 0, where A195017(n) = Sum_{k >= 1} c_k*((-1)^(k-1)), when n = Product_{k >= 1} (p_k)^(c_k), with p_k the k-th prime.

Offset 1, canonical program `A391747.P12893955322545124689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391747 (n : ℕ) : ℤ :=
  A391747.P12893955322545124689.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393211.P1663722993318290328

`n+1-A176965(A087230(n+1))`
-/

namespace A393211.P1663722993318290328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A176965 (A087230 (n + 1)).toNat

end

end A393211.P1663722993318290328

noncomputable section

/-- A393211: Number computed by Wolfram's 2-state 2-symbol Turing machine 773 when started with n on the tape.

Offset 1, canonical program `A393211.P1663722993318290328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393211 (n : ℕ) : ℤ :=
  A393211.P1663722993318290328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393232.P14261252287719027146

`A047241(A087230(n+1))`
-/

namespace A393232.P14261252287719027146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (A087230 (n + 1)).toNat

end

end A393232.P14261252287719027146

noncomputable section

/-- A393232: Halting time for Wolfram's 2-state 2-symbol Turing machine 897 when started with n on the tape.

Offset 1, canonical program `A393232.P14261252287719027146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393232 (n : ℕ) : ℤ :=
  A393232.P14261252287719027146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393233.P12718541263085678576

`A163980(A087230(n+1))`
-/

namespace A393233.P12718541263085678576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163980 (A087230 (n + 1)).toNat

end

end A393233.P12718541263085678576

noncomputable section

/-- A393233: Halting time for Wolfram's 2-state 2-symbol Turing machine 919 when started with n on the tape.

Offset 1, canonical program `A393233.P12718541263085678576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393233 (n : ℕ) : ℤ :=
  A393233.P12718541263085678576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397518.P10071459291646654644

`2*A133827(n)`
-/

namespace A397518.P10071459291646654644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133827 n

end

end A397518.P10071459291646654644

noncomputable section

/-- A397518: a(n) is the number of integer solutions of x^2 + 7*y^2 = 2*n + 1.

Offset 0, canonical program `A397518.P10071459291646654644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397518 (n : ℕ) : ℤ :=
  A397518.P10071459291646654644.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399227.P5856305221868028917

`(2*(n+2)-1)*2^(val(A034448(2*(n+2)-1), 2)-1)`
-/

namespace A399227.P5856305221868028917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 2) : ℤ) - 1 : ℚ) * (2 : ℚ) ^ ((SequenceMachineLib.valuation (A034448 (2 * (n + 2) - 1)).toNat 2 : ℤ) - 1 : ℤ)

end

end A399227.P5856305221868028917

noncomputable section

/-- A399227: a(n) = (2*n-1)*2^(w(2*n-1)-1) where w(m) = v_2(usigma(m)) = A007814(A034448(m)) for odd m.

Offset 2, canonical program `A399227.P5856305221868028917`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399227 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399227.P5856305221868028917.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399227.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399733.P11103501656133543636

`(n+1)*A034448(n+1)/A363289(n+1)`
-/

namespace A399733.P11103501656133543636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A034448 (n + 1) : ℚ) / (A363289 (n + 1) : ℚ)

end

end A399733.P11103501656133543636

noncomputable section

/-- A399733: The sum of the unitary divisors d of n such that n/d is a powerful number (A001694).

Offset 1, canonical program `A399733.P11103501656133543636`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A363289, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399733 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399733.P11103501656133543636.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A363289, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399733.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257477.P17128871858641603141

`∑{d}[n+1, A008683(#)*A257403((n+1)/#)]`
-/

namespace A257477.P17128871858641603141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A257403 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A257477.P17128871858641603141

noncomputable section

/-- A257477: Multiplicative with a(2) = 0, a(4) = -1, a(2^e) = 0 if e>2, a(3) = -1, a(3^e) = 0^e if e>1, a(p^e) = 1 if p == 1, 3 (mod 8), a(p^e) = (-1)^e if p == 5, 7 (mod 8).

Offset 1, canonical program `A257477.P17128871858641603141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257477 (n : ℕ) : ℤ :=
  A257477.P17128871858641603141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258116.P9165757537041833098

`filter[A066208(n+1), A008966(#)]`
-/

namespace A258116.P9165757537041833098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A258116.P9165757537041833098

noncomputable section

/-- A258116: The Heinz numbers in increasing order of the partitions into distinct odd parts.

Offset 1, canonical program `A258116.P9165757537041833098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6754 terms. -/
def A258116 (n : ℕ) : ℤ :=
  A258116.P9165757537041833098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6754 terms. -/
def A258116.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A259548.P18234213199835216627

`record[A000265(A004612(n+1)*A006519(n+1))]`
-/

namespace A259548.P18234213199835216627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A004612 (n + 1) * A006519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259548.P18234213199835216627

noncomputable section

/-- A259548: Numbers divisible only by primes of the form 6*m-1.

Offset 1, canonical program `A259548.P18234213199835216627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A259548 (n : ℕ) : ℤ :=
  A259548.P18234213199835216627.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A259548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262095.P10827467733905052003

`A000005(n+1)-A086971(n+1)`
-/

namespace A262095.P10827467733905052003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A086971 (n + 1)

end

end A262095.P10827467733905052003

noncomputable section

/-- A262095: Number of non-semiprime divisors of n.

Offset 1, canonical program `A262095.P10827467733905052003`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262095 (n : ℕ) : ℤ :=
  A262095.P10827467733905052003.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262095.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A264619.P7879630429741435189

`xor(A062383(n), A264618(n))`
-/

namespace A264619.P7879630429741435189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A062383 n) (A264618 n)

end

end A264619.P7879630429741435189

noncomputable section

/-- A264619: a(0) = 1; for n>0, working in binary, write n followed by 1 then n-reversed (including leading zeros); show result in base 10.

Offset 0, canonical program `A264619.P7879630429741435189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264619 (n : ℕ) : ℤ :=
  A264619.P7879630429741435189.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265027.P2893098001650246285

`A265026(n+2)/6`
-/

namespace A265027.P2893098001650246285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265026 (n + 2) : ℚ) / 6

end

end A265027.P2893098001650246285

noncomputable section

/-- A265027: First differences of A048701 divided by 6.

Offset 2, canonical program `A265027.P2893098001650246285`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265026, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265027 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A265027.P2893098001650246285.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265026, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265027.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A265028.P3632854501498841608

`Δ[A264618(n)]`
-/

namespace A265028.P3632854501498841608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265028.P3632854501498841608

noncomputable section

/-- A265028: First differences of A264618.

Offset 1, canonical program `A265028.P3632854501498841608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265028 (n : ℕ) : ℤ :=
  A265028.P3632854501498841608.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266640.P4776473646735869985

`A265754(A054429(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266640.P4776473646735869985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265754 (A054429 (n + 1)).toNat

end

end A266640.P4776473646735869985

noncomputable section

/-- A266640: Reversed reduced frequency counts for A004001: a(n) = A265754(A054429(n)).

Offset 1, canonical program `A266640.P4776473646735869985`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, A265754, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A266640 (n : ℕ) : ℤ :=
  A266640.P4776473646735869985.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, A265754, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A266640.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268412.P6473001848089326556

`comp[A268415(n+1)]`
-/

namespace A268412.P6473001848089326556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A268412.P6473001848089326556

noncomputable section

/-- A268412: Balanced evil numbers: numbers with an even number of runs of 1's in their binary expansion.

Offset 0, canonical program `A268412.P6473001848089326556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268412 (n : ℕ) : ℤ :=
  (A268412.P6473001848089326556.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270301.P17533543848909741744

`8*A008366(n+2)`
-/

namespace A270301.P17533543848909741744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A008366 (n + 2)

end

end A270301.P17533543848909741744

noncomputable section

/-- A270301: Numbers which are representable as a sum of sixteen but no fewer consecutive nonnegative integers.

Offset 1, canonical program `A270301.P17533543848909741744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A270301 (n : ℕ) : ℤ :=
  A270301.P17533543848909741744.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A270301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271329.P13346107551120019866

`A000203(A007304(n+1))`
-/

namespace A271329.P13346107551120019866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007304 (n + 1)).toNat

end

end A271329.P13346107551120019866

noncomputable section

/-- A271329: a(n) is the sum of the divisors of the n-th sphenic number (A007304).

Offset 1, canonical program `A271329.P13346107551120019866`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007304, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A271329 (n : ℕ) : ℤ :=
  A271329.P13346107551120019866.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007304, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A271329.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A272700.P8290029814233016297

`∑[A169699(n)]`
-/

namespace A272700.P8290029814233016297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272700.P8290029814233016297

noncomputable section

/-- A272700: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 510", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A272700.P8290029814233016297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4463 terms. -/
def A272700 (n : ℕ) : ℤ :=
  A272700.P8290029814233016297.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4463 terms. -/
def A272700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272702.P13388874115026706064

`A000007(n)+A016754(n)-A169699(n)`
-/

namespace A272702.P13388874115026706064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A016754 n - A169699 n)

end

end A272702.P13388874115026706064

noncomputable section

/-- A272702: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 513", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A272702.P13388874115026706064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2839 terms. -/
def A272702 (n : ℕ) : ℤ :=
  A272702.P13388874115026706064.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2839 terms. -/
def A272702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272704.P6526107480624225321

`Δ[A000007(n)+A016754(n)-A169699(n)]`
-/

namespace A272704.P6526107480624225321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A016754 n - A169699 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272704.P6526107480624225321

noncomputable section

/-- A272704: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 513", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A272704.P6526107480624225321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2882 terms. -/
def A272704 (n : ℕ) : ℤ :=
  A272704.P6526107480624225321.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2882 terms. -/
def A272704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275340.P3805728007378759890

`A113502(n+1)+1`
-/

namespace A275340.P3805728007378759890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113502 (n + 1) + 1

end

end A275340.P3805728007378759890

noncomputable section

/-- A275340: Nontrivial centered polygonal numbers: numbers of the form A101321(n,k) where n >= 1 and k >= 2.

Offset 1, canonical program `A275340.P3805728007378759890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275340 (n : ℕ) : ℤ :=
  A275340.P3805728007378759890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275387.P16073463027195064393

`A066446(n+1)-A063647(n+1)`
-/

namespace A275387.P16073463027195064393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (n + 1) - A063647 (n + 1)

end

end A275387.P16073463027195064393

noncomputable section

/-- A275387: Numbers of ordered pairs of divisors d < e of n such that gcd(d, e) > 1.

Offset 1, canonical program `A275387.P16073463027195064393`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063647, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275387 (n : ℕ) : ℤ :=
  A275387.P16073463027195064393.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063647, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275387.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275953.P16174222313952605767

`A265906(n+2)-A265906(n+1)`
-/

namespace A275953.P16174222313952605767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265906 (n + 2) - A265906 (n + 1)

end

end A275953.P16174222313952605767

noncomputable section

/-- A275953: First differences of A265906; second differences of A265905.

Offset 1, canonical program `A275953.P16174222313952605767`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265906, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275953 (n : ℕ) : ℤ :=
  A275953.P16174222313952605767.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265906, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275953.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276792.P14653190003130318019

`A276788(n+1)+A276789(n+1)+1`
-/

namespace A276792.P14653190003130318019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276788 (n + 1) + A276789 (n + 1) + 1

end

end A276792.P14653190003130318019

noncomputable section

/-- A276792: First differences of A003146.

Offset 1, canonical program `A276792.P14653190003130318019`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276788, A276789, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276792 (n : ℕ) : ℤ :=
  A276792.P14653190003130318019.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276788, A276789, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276792.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276934.P15106644444833656235

`A276933(n)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276934.P15106644444833656235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276933 n : ℚ) / 6

end

end A276934.P15106644444833656235

noncomputable section

/-- A276934: Row 3 of A276616: a(n) = A276933(n) / 6.

Offset 0, canonical program `A276934.P15106644444833656235`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276934 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A276934.P15106644444833656235.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276934.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276952.P13654825874652364893

`A276950(n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A276952.P13654825874652364893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A276950 n + a (n - 1)

end

end A276952.P13654825874652364893

noncomputable section

/-- A276952: Partial sums of A276950.

Offset 0, canonical program `A276952.P13654825874652364893`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276952 (n : ℕ) : ℤ :=
  A276952.P13654825874652364893.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276952.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A278569.P10528025825887119479

`∩[A033992(n+1), A098903(n+1)]`
-/

namespace A278569.P10528025825887119479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278569.P10528025825887119479

noncomputable section

/-- A278569: Numbers of the form p^i*q^j*r^k where p,q,r are distinct odd primes and i,j,k >= 1.

Offset 1, canonical program `A278569.P10528025825887119479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3463 terms. -/
def A278569 (n : ℕ) : ℤ :=
  (A278569.P10528025825887119479.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3463 terms. -/
def A278569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279563.P2925378631213152026

`1-n+n*A166588(2*n)-A000225(n)`
-/

namespace A279563.P2925378631213152026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) + ((n : ℤ) * A166588 (2 * n) - A000225 n)

end

end A279563.P2925378631213152026

noncomputable section

/-- A279563: Number of length n inversion sequences avoiding the patterns 102, 201, and 210.

Offset 0, canonical program `A279563.P2925378631213152026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A279563 (n : ℕ) : ℤ :=
  A279563.P2925378631213152026.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A279563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280509.P5809525915846432635

`A051064(A246200(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280509.P5809525915846432635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A246200 (n + 1)).toNat

end

end A280509.P5809525915846432635

noncomputable section

/-- A280509: a(n) = A051064(A246200(n)); 3-adic valuation of A057889(3*n).

Offset 1, canonical program `A280509.P5809525915846432635`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280509 (n : ℕ) : ℤ :=
  A280509.P5809525915846432635.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280509.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A282234.P11292878467166924070

`A007932(A000045(n+1))`
-/

namespace A282234.P11292878467166924070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (A000045 (n + 1)).toNat

end

end A282234.P11292878467166924070

noncomputable section

/-- A282234: a(n) = Fibonacci(n) represented in bijective base-3 numeration.

Offset 1, canonical program `A282234.P11292878467166924070`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A282234 (n : ℕ) : ℤ :=
  A282234.P11292878467166924070.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A282234.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A282252.P10656512343650803153

`A001405(A025581(n))*A109187(n)`
-/

namespace A282252.P10656512343650803153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A025581 n).toNat * A109187 n

end

end A282252.P10656512343650803153

noncomputable section

/-- A282252: Exponential Riordan array [Bessel_I(0,2*x)^2, x].

Offset 0, canonical program `A282252.P10656512343650803153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A282252 (n : ℕ) : ℤ :=
  A282252.P10656512343650803153.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A282252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285805.P3259867179575910996

`p?[A171696(n+1)]`
-/

namespace A285805.P3259867179575910996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285805.P3259867179575910996

noncomputable section

/-- A285805: Prime numbers p such that 6*p-1 and 6*p+1 are composite numbers.

Offset 1, canonical program `A285805.P3259867179575910996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1216 terms. -/
def A285805 (n : ℕ) : ℤ :=
  A285805.P3259867179575910996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1216 terms. -/
def A285805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292618.P456009917632285157

`A022891(eq[1, A022890(n+2)-A022890(n+1)]+1)`
-/

namespace A292618.P456009917632285157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022890 (n + 2) - A022890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A292618.P456009917632285157

noncomputable section

/-- A292618: The first prime of 8 consecutive primes a, b, c, d, e, f, g, h such that a + g = c + e and b + h = d + f.

Offset 1, canonical program `A292618.P456009917632285157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. -/
def A292618 (n : ℕ) : ℤ :=
  A292618.P456009917632285157.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. -/
def A292618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293959.P4536624460785763287

`A265754(n+1)-1`
-/

namespace A293959.P4536624460785763287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265754 (n + 1) - 1

end

end A293959.P4536624460785763287

noncomputable section

/-- A293959: Construct a triangle T(n,k) (0 <= k <= n) of strings of integers, where T(0,0) = {0}, T(n,n) = {n}, and otherwise T(n,k) is the concatenation of T(n-1,k-1) and T(n-1,k). The sequence is obtained by reading across the rows of the triangle, concatenating the successive strings.

Offset 0, canonical program `A293959.P4536624460785763287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A293959 (n : ℕ) : ℤ :=
  A293959.P4536624460785763287.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A293959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294097.P8571347012206133823

`A294100(2*(n+1))`
-/

namespace A294097.P8571347012206133823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294100 (2 * (n + 1))

end

end A294097.P8571347012206133823

noncomputable section

/-- A294097: Number of partitions of 2n into two parts such that both parts are either squarefree or nonsquarefree.

Offset 1, canonical program `A294097.P8571347012206133823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A294097 (n : ℕ) : ℤ :=
  A294097.P8571347012206133823.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A294097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294576.P1869408469664451945

`∩[A294575(n+1), A005408(n)]`
-/

namespace A294576.P1869408469664451945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294576.P1869408469664451945

noncomputable section

/-- A294576: Odd numbers n such that 2 * A243823(n) > n.

Offset 1, canonical program `A294576.P1869408469664451945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A294576 (n : ℕ) : ℤ :=
  (A294576.P1869408469664451945.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A294576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296205.P15058458735531004256

`A000196(A296204(n+1))`
-/

namespace A296205.P15058458735531004256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A296204 (n + 1)).toNat

end

end A296205.P15058458735531004256

noncomputable section

/-- A296205: Numbers k such that Product_{d|k^2, gcd(d,k^2/d) is prime} gcd(d,k^2/d) = k^2.

Offset 1, canonical program `A296205.P15058458735531004256`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A296204, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296205 (n : ℕ) : ℤ :=
  A296205.P15058458735531004256.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A296204, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296205.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300272.P3847471746672957455

`filter[A066208(n+1), A066829(#)]`
-/

namespace A300272.P3847471746672957455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A300272.P3847471746672957455

noncomputable section

/-- A300272: Sorted list of Heinz numbers of odd partitions.

Offset 1, canonical program `A300272.P3847471746672957455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5311 terms. -/
def A300272 (n : ℕ) : ℤ :=
  A300272.P3847471746672957455.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5311 terms. -/
def A300272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300861.P7350183992813062012

`record[A300858(n+1)]`
-/

namespace A300861.P7350183992813062012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300861.P7350183992813062012

noncomputable section

/-- A300861: Records in A300858.

Offset 1, canonical program `A300861.P7350183992813062012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A300861 (n : ℕ) : ℤ :=
  A300861.P7350183992813062012.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A300861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304817.P8075664180131459050

`A183096(n+1)+1`
-/

namespace A304817.P8075664180131459050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183096 (n + 1) + 1

end

end A304817.P8075664180131459050

noncomputable section

/-- A304817: Number of divisors of n that are either 1 or not a perfect power.

Offset 1, canonical program `A304817.P8075664180131459050`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183096, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304817 (n : ℕ) : ℤ :=
  A304817.P8075664180131459050.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183096, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304817.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A307414.P5147274626846036237

`eq[A014285(n+1), A306834(n+1)]+1`
-/

namespace A307414.P5147274626846036237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306834 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A307414.P5147274626846036237

noncomputable section

/-- A307414: Numbers k such that A014285(k) and A007504(k) are coprime.

Offset 1, canonical program `A307414.P5147274626846036237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6095 terms. -/
def A307414 (n : ℕ) : ℤ :=
  (A307414.P5147274626846036237.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6095 terms. -/
def A307414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308199.P4084788755827198599

`A278040(n)-1`
-/

namespace A308199.P4084788755827198599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n - 1

end

end A308199.P4084788755827198599

noncomputable section

/-- A308199: The tribonacci representation of a(n) is obtained by appending 0,0 to the tribonacci representation of n (cf. A278038).

Offset 0, canonical program `A308199.P4084788755827198599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308199 (n : ℕ) : ℤ :=
  A308199.P4084788755827198599.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308199.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A311691.P15690846151857527722

`A313698(n)-A057354(2*n+1)`
-/

namespace A311691.P15690846151857527722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313698 n - A057354 (2 * n + 1)

end

end A311691.P15690846151857527722

noncomputable section

/-- A311691: Coordination sequence Gal.5.60.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311691.P15690846151857527722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A311691 (n : ℕ) : ℤ :=
  A311691.P15690846151857527722.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A311691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312194.P11075138989351160431

`A314899(n)-A134667(A004525(n))`
-/

namespace A312194.P11075138989351160431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314899 n - A134667 (A004525 n).toNat

end

end A312194.P11075138989351160431

noncomputable section

/-- A312194: Coordination sequence Gal.6.156.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312194.P11075138989351160431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A312194 (n : ℕ) : ℤ :=
  A312194.P11075138989351160431.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A312194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312210.P10071697695240117449

`A311196(n)+A312206(n)-A008574(n)`
-/

namespace A312210.P10071697695240117449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311196 n + (A312206 n - A008574 n)

end

end A312210.P10071697695240117449

noncomputable section

/-- A312210: Coordination sequence Gal.6.159.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312210.P10071697695240117449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2326 terms. -/
def A312210 (n : ℕ) : ℤ :=
  A312210.P10071697695240117449.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2326 terms. -/
def A312210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313592.P2623346939342566519

`abs(A008592(n)-A313853(n))`
-/

namespace A313592.P2623346939342566519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313853 n|

end

end A313592.P2623346939342566519

noncomputable section

/-- A313592: Coordination sequence Gal.6.347.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313592.P2623346939342566519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A313592 (n : ℕ) : ℤ :=
  A313592.P2623346939342566519.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A313592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313927.P15646847580110018084

`A313125(n)+A004396(n)`
-/

namespace A313927.P15646847580110018084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313125 n + A004396 n

end

end A313927.P15646847580110018084

noncomputable section

/-- A313927: Coordination sequence Gal.5.135.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313927.P15646847580110018084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2229 terms. -/
def A313927 (n : ℕ) : ℤ :=
  A313927.P15646847580110018084.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2229 terms. -/
def A313927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314201.P5631130414281267533

`A004396(n)+A314085(n)-A004525(A004396(n))`
-/

namespace A314201.P5631130414281267533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314085 n - A004525 (A004396 n).toNat)

end

end A314201.P5631130414281267533

noncomputable section

/-- A314201: Coordination sequence Gal.6.157.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314201.P5631130414281267533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. -/
def A314201 (n : ℕ) : ℤ :=
  A314201.P5631130414281267533.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. -/
def A314201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314225.P10774632468107869878

`A008458(n)+A310501(n)-A314210(n)`
-/

namespace A314225.P10774632468107869878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A310501 n - A314210 n)

end

end A314225.P10774632468107869878

noncomputable section

/-- A314225: Coordination sequence Gal.5.316.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314225.P10774632468107869878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A314225 (n : ℕ) : ℤ :=
  A314225.P10774632468107869878.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A314225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314720.P2366857365604543786

`abs(A008592(n)-A314210(n))`
-/

namespace A314720.P2366857365604543786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314210 n|

end

end A314720.P2366857365604543786

noncomputable section

/-- A314720: Coordination sequence Gal.6.245.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314720.P2366857365604543786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2250 terms. -/
def A314720 (n : ℕ) : ℤ :=
  A314720.P2366857365604543786.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2250 terms. -/
def A314720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315024.P11300834451067595507

`A314885(n)+Δ[A011864(n)]`
-/

namespace A315024.P11300834451067595507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314885 n + (f1 (n + 1) - f1 n)

end

end A315024.P11300834451067595507

noncomputable section

/-- A315024: Coordination sequence Gal.6.196.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315024.P11300834451067595507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A315024 (n : ℕ) : ℤ :=
  A315024.P11300834451067595507.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A315024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315060.P16370269308654090789

`A313855(n)-A330025(n-A330025(n))`
-/

namespace A315060.P16370269308654090789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313855 n - A330025 ((n : ℤ) - A330025 n).toNat

end

end A315060.P16370269308654090789

noncomputable section

/-- A315060: Coordination sequence Gal.5.141.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315060.P16370269308654090789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2360 terms. -/
def A315060 (n : ℕ) : ℤ :=
  A315060.P16370269308654090789.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2360 terms. -/
def A315060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315326.P6667046397507400523

`2*A314885(n)-A008574(n)`
-/

namespace A315326.P6667046397507400523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314885 n - A008574 n

end

end A315326.P6667046397507400523

noncomputable section

/-- A315326: Coordination sequence Gal.6.204.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315326.P6667046397507400523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A315326 (n : ℕ) : ℤ :=
  A315326.P6667046397507400523.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A315326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315402.P15354869192594561044

`A314740(n)+A253262(n)`
-/

namespace A315402.P15354869192594561044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314740 n + A253262 n

end

end A315402.P15354869192594561044

noncomputable section

/-- A315402: Coordination sequence Gal.5.116.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315402.P15354869192594561044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2411 terms. -/
def A315402 (n : ℕ) : ℤ :=
  A315402.P15354869192594561044.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2411 terms. -/
def A315402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315459.P17608540704289415769

`A315681(n)-∑[A022003(n)]`
-/

namespace A315459.P17608540704289415769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315681 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315459.P17608540704289415769

noncomputable section

/-- A315459: Coordination sequence Gal.6.134.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315459.P17608540704289415769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A315459 (n : ℕ) : ℤ :=
  A315459.P17608540704289415769.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A315459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315635.P8833083240830505052

`A315172(n)+A008612(A016813(n))`
-/

namespace A315635.P8833083240830505052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315172 n + A008612 (A016813 n).toNat

end

end A315635.P8833083240830505052

noncomputable section

/-- A315635: Coordination sequence Gal.5.138.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315635.P8833083240830505052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2338 terms. -/
def A315635 (n : ℕ) : ℤ :=
  A315635.P8833083240830505052.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2338 terms. -/
def A315635.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A319972.P7349616405294569184

`7*A278040(n)+6*A278039(n)+4*(n+1)+13`
-/

namespace A319972.P7349616405294569184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A278040 n + 6 * A278039 n + (4 * (n + 1) : ℤ) + 13

end

end A319972.P7349616405294569184

noncomputable section

/-- A319972: a(n) = A003146(A003146(n)).

Offset 1, canonical program `A319972.P7349616405294569184`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278039, A278040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319972 (n : ℕ) : ℤ :=
  A319972.P7349616405294569184.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278039, A278040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319972.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A321519.P724523528517111217

`A089233((n+1)²+1)`
-/

namespace A321519.P724523528517111217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089233 ((n + 1) ^ 2 + 1)

end

end A321519.P724523528517111217

noncomputable section

/-- A321519: Let d(n,i), i = 1..k be the k divisors of n^2 + 1 (the number 1 is not counted). a(n) is the number of ordered pairs d(n,i) < d(n,j) such that gcd(d(n,i), d(n,j)) = 1.

Offset 1, canonical program `A321519.P724523528517111217`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A321519 (n : ℕ) : ℤ :=
  A321519.P724523528517111217.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A321519.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322409.P9722259027104702857

`A278040(A278040(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322409.P9722259027104702857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 (A278040 n).toNat

end

end A322409.P9722259027104702857

noncomputable section

/-- A322409: Compound tribonacci sequence with a(n) = A278040(A278040(n)), for n >= 0.

Offset 0, canonical program `A322409.P9722259027104702857`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322409 (n : ℕ) : ℤ :=
  A322409.P9722259027104702857.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322409.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322410.P10476249854560897128

`A278040(A278039(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322410.P10476249854560897128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 (A278039 n).toNat

end

end A322410.P10476249854560897128

noncomputable section

/-- A322410: Compound tribonacci sequence with a(n) = A278040(A278039(n)), for n >= 0.

Offset 0, canonical program `A322410.P10476249854560897128`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278039, A278040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322410 (n : ℕ) : ℤ :=
  A322410.P10476249854560897128.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278039, A278040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322410.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A326398.P10411674836388057102

`ceil(2/A111742(n+1))`
-/

namespace A326398.P10411674836388057102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A111742 (n + 1) : ℚ)⌉

end

end A326398.P10411674836388057102

noncomputable section

/-- A326398: a(n) is the smallest k > 0 such that the concatenation prime(n)k is composite.

Offset 1, canonical program `A326398.P10411674836388057102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326398 (n : ℕ) : ℤ :=
  A326398.P10411674836388057102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326660.P15065931834303715620

`A056288(n+1)-A056349(n+1)`
-/

namespace A326660.P15065931834303715620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056288 (n + 1) - A056349 (n + 1)

end

end A326660.P15065931834303715620

noncomputable section

/-- A326660: Number of n-bead asymmetric bracelets with exactly 3 different colored beads.

Offset 1, canonical program `A326660.P15065931834303715620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A326660 (n : ℕ) : ℤ :=
  A326660.P15065931834303715620.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A326660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327222.P12522913140232998755

`char[A327224(n+1)]`
-/

namespace A327222.P12522913140232998755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A327222.P12522913140232998755

noncomputable section

/-- A327222: a(n) = [(2n+4)r] - [nr+4r] - [nr], where [ ] = floor and r = sqrt(2).

Offset 0, canonical program `A327222.P12522913140232998755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327222 (n : ℕ) : ℤ :=
  (A327222.P12522913140232998755.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327471.P11969612927539878657

`A000051(n)-A133670(n)`
-/

namespace A327471.P11969612927539878657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A133670 n

end

end A327471.P11969612927539878657

noncomputable section

/-- A327471: Number of subsets of {1..n} not containing their mean.

Offset 0, canonical program `A327471.P11969612927539878657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A327471 (n : ℕ) : ℤ :=
  A327471.P11969612927539878657.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A327471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327475.P394140087772944545

`2*A133670(n)-(n+1)`
-/

namespace A327475.P394140087772944545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133670 n - (n + 1 : ℤ)

end

end A327475.P394140087772944545

noncomputable section

/-- A327475: Number of subsets of {1..n} whose mean is an integer, where {} has mean 0.

Offset 0, canonical program `A327475.P394140087772944545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A327475 (n : ℕ) : ℤ :=
  A327475.P394140087772944545.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A327475.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A329273.P5366949048814216937

`A008347(A166597(n))%A014076(A013632(n))`
-/

namespace A329273.P5366949048814216937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008347 (A166597 n).toNat) (A014076 (A013632 n).toNat)

end

end A329273.P5366949048814216937

noncomputable section

/-- A329273: a(1)=1. If n is prime, a(n)=0; if not, a(n) = (the smallest prime number greater than n) minus (the largest prime number smaller than n) minus 1.

Offset 1, canonical program `A329273.P5366949048814216937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A329273 (n : ℕ) : ℤ :=
  A329273.P5366949048814216937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A329273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330558.P13107326556388055266

`A330557(n)-A330556(n)`
-/

namespace A330558.P13107326556388055266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330557 n - A330556 n

end

end A330558.P13107326556388055266

noncomputable section

/-- A330558: a(n) = number of primes p <= 2*n+1 with Delta(p) == 0 mod 4, where Delta(p) = nextprime(p) - p.

Offset 0, canonical program `A330558.P13107326556388055266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330558 (n : ℕ) : ℤ :=
  A330558.P13107326556388055266.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331893.P3755749678923990802

`∩[A331891(n+1), A331892(n+1)]`
-/

namespace A331893.P3755749678923990802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331893.P3755749678923990802

noncomputable section

/-- A331893: Positive numbers k such that both k and -k are a palindromes in negabinary representation.

Offset 1, canonical program `A331893.P3755749678923990802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 930 terms. -/
def A331893 (n : ℕ) : ℤ :=
  (A331893.P3755749678923990802.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 930 terms. -/
def A331893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331894.P10099918075872049775

`∩[A180204(n+1), A331891(n+1)]`
-/

namespace A331894.P10099918075872049775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331894.P10099918075872049775

noncomputable section

/-- A331894: Positive numbers such that both their binary and negabinary representations are palindromic.

Offset 1, canonical program `A331894.P10099918075872049775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. -/
def A331894 (n : ℕ) : ℤ :=
  (A331894.P10099918075872049775.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. -/
def A331894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332799.P4620929770745415607

`17*A008366(n+1)`
-/

namespace A332799.P4620929770745415607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A008366 (n + 1)

end

end A332799.P4620929770745415607

noncomputable section

/-- A332799: Numbers whose smallest prime factor is 17.

Offset 1, canonical program `A332799.P4620929770745415607`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008366, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332799 (n : ℕ) : ℤ :=
  A332799.P4620929770745415607.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008366, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332799.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A339817.P13850766974360266592

`record[A007947(n+2)*A353498(n+2)]`
-/

namespace A339817.P13850766974360266592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2) * A353498 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339817.P13850766974360266592

noncomputable section

/-- A339817: Squarefree numbers k > 1 for which the 2-adic valuation of phi(k) does not exceed the 2-adic valuation of k-1.

Offset 1, canonical program `A339817.P13850766974360266592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339817 (n : ℕ) : ℤ :=
  A339817.P13850766974360266592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339871.P15676400501281653132

`A001221(A160595(n+1))`
-/

namespace A339871.P15676400501281653132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A160595 (n + 1)).toNat

end

end A339871.P15676400501281653132

noncomputable section

/-- A339871: Number of primes p for which the p-adic valuation of phi(n) exceeds the p-adic valuation of n-1, with a(1) = 0 by convention.

Offset 1, canonical program `A339871.P15676400501281653132`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160595, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339871 (n : ℕ) : ℤ :=
  A339871.P15676400501281653132.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160595, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339871.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339879.P17833683181860755581

`record[(n+1)/A000265(A160595(n+1))]`
-/

namespace A339879.P17833683181860755581
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000265 (A160595 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339879.P17833683181860755581

noncomputable section

/-- A339879: Numbers k for which k-1 is a multiple of A053575(k) [the odd part of phi(k)].

Offset 1, canonical program `A339879.P17833683181860755581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7020 terms. -/
def A339879 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A339879.P17833683181860755581.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7020 terms. -/
def A339879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340143.P8205766012284906924

`∑{d}[n+1, A008683((n+1)/#)*A160595(#)]`
-/

namespace A340143.P8205766012284906924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A160595 d

end

end A340143.P8205766012284906924

noncomputable section

/-- A340143: Möbius transform of A160595, where A160595(x) = phi(x)/gcd(phi(x), x-1).

Offset 1, canonical program `A340143.P8205766012284906924`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160595, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340143 (n : ℕ) : ℤ :=
  A340143.P8205766012284906924.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160595, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340143.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A341994.P3917476089229171294

`char[A328234(n+1)]`
-/

namespace A341994.P3917476089229171294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A341994.P3917476089229171294

noncomputable section

/-- A341994: a(n) = 1 if the arithmetic derivative (A003415) of n is a squarefree number (A005117) > 1, otherwise 0.

Offset 0, canonical program `A341994.P3917476089229171294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341994 (n : ℕ) : ℤ :=
  (A341994.P3917476089229171294.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344999.P2387045970330033826

`A048250(n+1)*A345001(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344999.P2387045970330033826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) * A345001 (n + 1)

end

end A344999.P2387045970330033826

noncomputable section

/-- A344999: a(n) = A048250(n) * A345001(n).

Offset 1, canonical program `A344999.P2387045970330033826`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A345001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344999 (n : ℕ) : ℤ :=
  A344999.P2387045970330033826.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A345001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344999.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345315.P17248214990085666330

`A076290(n+1)+A000005(n+1)-A086971(n+1)`
-/

namespace A345315.P17248214990085666330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (n + 1) + A000005 (n + 1) - A086971 (n + 1)

end

end A345315.P17248214990085666330

noncomputable section

/-- A345315: a(n) = Sum_{d|n} d^[Omega(d) = 2], where [ ] is the Iverson bracket.

Offset 1, canonical program `A345315.P17248214990085666330`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076290, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345315 (n : ℕ) : ℤ :=
  A345315.P17248214990085666330.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076290, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345315.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347880.P396111995697444498

`eq[0, A347883(n+1)]+1`
-/

namespace A347880.P396111995697444498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347883 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347880.P396111995697444498

noncomputable section

/-- A347880: Numbers k such that A342926(k) is a multiple of 3.

Offset 1, canonical program `A347880.P396111995697444498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347880 (n : ℕ) : ℤ :=
  (A347880.P396111995697444498.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347880.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A349191.P3807840381629456878`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348907, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349191 (n : ℕ) : ℤ :=
  A349191.P3807840381629456878.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348907, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349191.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349574.P16826535088259942307

`A001222(A078722(n))*A348018(A003557(n+1))`
-/

namespace A349574.P16826535088259942307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A078722 n).toNat * A348018 (A003557 (n + 1)).toNat

end

end A349574.P16826535088259942307

noncomputable section

/-- A349574: Lexicographically earliest infinite sequence such that a(i) = a(j) => A344696(i) = A344696(j) and A344697(i) = A344697(j), for all i, j >= 1.

Offset 1, canonical program `A349574.P16826535088259942307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A349574 (n : ℕ) : ℤ :=
  A349574.P16826535088259942307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A349574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351112.P18121164159424966537

`∑{d}[n+1, A351114(#)]`
-/

namespace A351112.P18121164159424966537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A351114 d

end

end A351112.P18121164159424966537

noncomputable section

/-- A351112: Number of balanced numbers dividing n.

Offset 1, canonical program `A351112.P18121164159424966537`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351114, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351112 (n : ℕ) : ℤ :=
  A351112.P18121164159424966537.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351114, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351112.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351113.P14871538275720612314

`∑{d}[n+1, #*A351114(#)]`
-/

namespace A351113.P14871538275720612314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A351114 d

end

end A351113.P14871538275720612314

noncomputable section

/-- A351113: Sum of the balanced numbers dividing n.

Offset 1, canonical program `A351113.P14871538275720612314`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351114, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351113 (n : ℕ) : ℤ :=
  A351113.P14871538275720612314.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351114, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351113.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351979.P14330846022404580825

`A066208(n+1)²`
-/

namespace A351979.P14330846022404580825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1) ^ 2

end

end A351979.P14330846022404580825

noncomputable section

/-- A351979: Numbers whose prime factorization has all odd prime indices and all even prime exponents.

Offset 1, canonical program `A351979.P14330846022404580825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351979 (n : ℕ) : ℤ :=
  A351979.P14330846022404580825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352142.P6668695384311402358

`filter[A066208(n+1), A295316(#)]`
-/

namespace A352142.P6668695384311402358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A352142.P6668695384311402358

noncomputable section

/-- A352142: Numbers whose prime factorization has all odd indices and all odd exponents.

Offset 1, canonical program `A352142.P6668695384311402358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7692 terms. -/
def A352142 (n : ℕ) : ℤ :=
  A352142.P6668695384311402358.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7692 terms. -/
def A352142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357504.P15693127765286449296

`(A339952(n+1)-1)/4`
-/

namespace A357504.P15693127765286449296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339952 (n + 1) - 1 : ℚ) / 4

end

end A357504.P15693127765286449296

noncomputable section

/-- A357504: Numbers that are the sum of two distinct triangular numbers.

Offset 1, canonical program `A357504.P15693127765286449296`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339952, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357504 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A357504.P15693127765286449296.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339952, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357504.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358988.P13199037608609698996

`record[lcm(2, A128896(n+3))]`
-/

namespace A358988.P13199037608609698996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A128896 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358988.P13199037608609698996

noncomputable section

/-- A358988: Oblong numbers which are products of four distinct primes.

Offset 1, canonical program `A358988.P13199037608609698996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 878 terms. -/
def A358988 (n : ℕ) : ℤ :=
  (A358988.P13199037608609698996.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 878 terms. -/
def A358988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359818.P149401970276973754

`∑{d}[n+1, A219009(#)*A359592((n+1)/#)]`
-/

namespace A359818.P149401970276973754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A219009 d * A359592 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359818.P149401970276973754

noncomputable section

/-- A359818: Dirichlet inverse of A359549, where A359549 is the characteristic function for numbers that are either an odd squarefree number squared or twice such a number.

Offset 1, canonical program `A359818.P149401970276973754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359818 (n : ℕ) : ℤ :=
  A359818.P149401970276973754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362160.P8719433231678747217

`A003188(A281589(n+1)-1)`
-/

namespace A362160.P8719433231678747217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A281589 (n + 1) - 1).toNat

end

end A362160.P8719433231678747217

noncomputable section

/-- A362160: Irregular triangle read by rows: The n-th row contains 2^n integers corresponding to the words of the n-bit Gray code with the most significant bits changing fastest.

Offset 0, canonical program `A362160.P8719433231678747217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362160 (n : ℕ) : ℤ :=
  A362160.P8719433231678747217.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365171.P15755108315260376590

`∑{d}[n+1, A353519(#)]`
-/

namespace A365171.P15755108315260376590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353519 d

end

end A365171.P15755108315260376590

noncomputable section

/-- A365171: The number of divisors d of n such that gcd(d, n/d) is a square.

Offset 1, canonical program `A365171.P15755108315260376590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365171 (n : ℕ) : ℤ :=
  A365171.P15755108315260376590.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365171.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A366444.P3140154605378599213

`A054523(n+1)*A231425(n+1)`
-/

namespace A366444.P3140154605378599213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A231425 (n + 1)

end

end A366444.P3140154605378599213

noncomputable section

/-- A366444: Triangle read by rows: T(n,k) = phi(n/k)*A023900(k) if k divides n, T(n,k) = 0 otherwise (n >= 1, 1 <= k <= n).

Offset 1, canonical program `A366444.P3140154605378599213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366444 (n : ℕ) : ℤ :=
  A366444.P3140154605378599213.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366444.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A369224.P3114141223153576824

`∑[val(A105560(n+1), 3)]-A086971(n+1)`
-/

namespace A369224.P3114141223153576824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A105560 (n + 1)).toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A086971 (n + 1)

end

end A369224.P3114141223153576824

noncomputable section

/-- A369224: Number of semiprimes less than n that do not divide n.

Offset 1, canonical program `A369224.P3114141223153576824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369224 (n : ℕ) : ℤ :=
  A369224.P3114141223153576824.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369256.P13230337286755965464

`filter[A028260(n+1), A353519(#)]`
-/

namespace A369256.P13230337286755965464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A369256.P13230337286755965464

noncomputable section

/-- A369256: Positions of odd terms in A140773.

Offset 1, canonical program `A369256.P13230337286755965464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6607 terms. -/
def A369256 (n : ℕ) : ℤ :=
  A369256.P13230337286755965464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6607 terms. -/
def A369256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369969.P5250580287867848151

`filter[A327865(n+1), A011558(#)]`
-/

namespace A369969.P5250580287867848151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A369969.P5250580287867848151

noncomputable section

/-- A369969: Numbers that are not multiples of 5, but their arithmetic derivative is.

Offset 1, canonical program `A369969.P5250580287867848151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7884 terms. -/
def A369969 (n : ℕ) : ℤ :=
  A369969.P5250580287867848151.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7884 terms. -/
def A369969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373586.P5907604992002336986

`record[gcd(n+1, A374206(2*(n+1)))]`
-/

namespace A373586.P5907604992002336986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A374206 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373586.P5907604992002336986

noncomputable section

/-- A373586: Numbers k for which A373149(k) is even, where A373149 is fully additive with a(2) = 1 and a(p) = prevprime(p) for odd primes p.

Offset 1, canonical program `A373586.P5907604992002336986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373586 (n : ℕ) : ℤ :=
  (A373586.P5907604992002336986.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373992.P2594044471646967012

`∪[A374042(n+1), A008591(n)]`
-/

namespace A373992.P2594044471646967012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A373992.P2594044471646967012

noncomputable section

/-- A373992: Numbers k such that A328768(k) is a multiple of 3, where A328768 is the first primorial based variant of arithmetic derivative.

Offset 1, canonical program `A373992.P2594044471646967012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373992 (n : ℕ) : ℤ :=
  (A373992.P2594044471646967012.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374120.P17872071964718822810

`record[(n+1)*A374119(n+1)]`
-/

namespace A374120.P17872071964718822810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A374119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374120.P17872071964718822810

noncomputable section

/-- A374120: Numbers k such that A113177(k) and A276085(k) are both multiples of 3, where A113177 and A276085 are fully additive with a(p) = Fibonacci(p) and a(p) = p#/p, respectively.

Offset 1, canonical program `A374120.P17872071964718822810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374120 (n : ℕ) : ℤ :=
  A374120.P17872071964718822810.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376599.P86518609693394274

`Δ[A375735(n+1)]`
-/

namespace A376599.P86518609693394274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376599.P86518609693394274

noncomputable section

/-- A376599: Second differences of consecutive non-prime-powers inclusive (A024619). First differences of A375735.

Offset 1, canonical program `A376599.P86518609693394274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A376599 (n : ℕ) : ℤ :=
  A376599.P86518609693394274.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A376599.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A380007.P11055340700919016870

`∩[A128896(n+1), A000384(n)]`
-/

namespace A380007.P11055340700919016870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380007.P11055340700919016870

noncomputable section

/-- A380007: Hexagonal numbers that are sphenic numbers.

Offset 1, canonical program `A380007.P11055340700919016870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 502 terms. -/
def A380007 (n : ℕ) : ℤ :=
  (A380007.P11055340700919016870.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 502 terms. -/
def A380007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380413.P10440904803708736813

`A378086(A068361(n+1))`
-/

namespace A380413.P10440904803708736813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378086 (A068361 (n + 1)).toNat

end

end A380413.P10440904803708736813

noncomputable section

/-- A380413: Terms appearing twice in A378086 (number of nonsquarefree numbers < prime(n)).

Offset 1, canonical program `A380413.P10440904803708736813`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380413 (n : ℕ) : ℤ :=
  A380413.P10440904803708736813.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380413.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381588.P6316090729294100752

`A005361(n+1)*A083346(n+1)`
-/

namespace A381588.P6316090729294100752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A083346 (n + 1)

end

end A381588.P6316090729294100752

noncomputable section

/-- A381588: If n = Product (p_j^k_j) then a(n) = Product (lcm(p_j, k_j)), with a(1) = 1.

Offset 1, canonical program `A381588.P6316090729294100752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381588 (n : ℕ) : ℤ :=
  A381588.P6316090729294100752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385076.P9368700758001390996

`A000005(n+1)+n*A086971(n+1)`
-/

namespace A385076.P9368700758001390996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ) * A086971 (n + 1)

end

end A385076.P9368700758001390996

noncomputable section

/-- A385076: a(n) = Sum_{d|n} n^[Omega(d) = 2], where [ ] is the Iverson bracket.

Offset 1, canonical program `A385076.P9368700758001390996`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385076 (n : ℕ) : ℤ :=
  A385076.P9368700758001390996.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385076.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385406.P6181901928708286412

`A056023(A057028(n+1))`
-/

namespace A385406.P6181901928708286412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A057028 (n + 1)).toNat

end

end A385406.P6181901928708286412

noncomputable section

/-- A385406: Triangle read by rows: T(n, k) = n*(n+1)/2 - floor((n-1)/2) - (-1)^k * floor(k/2).

Offset 1, canonical program `A385406.P6181901928708286412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A385406 (n : ℕ) : ℤ :=
  A385406.P6181901928708286412.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A385406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385614.P9354234976025821991

`A066846(lt[1, A173075(n)])`
-/

namespace A385614.P9354234976025821991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066846 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A385614.P9354234976025821991

noncomputable section

/-- A385614: Numbers of the form x^x + y^y, 1 < x < y.

Offset 1, canonical program `A385614.P9354234976025821991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. -/
def A385614 (n : ℕ) : ℤ :=
  A385614.P9354234976025821991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. -/
def A385614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386822.P5436816925973816835

`A362227(A023758(n+1))`
-/

namespace A386822.P5436816925973816835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362227 (A023758 (n + 1)).toNat

end

end A386822.P5436816925973816835

noncomputable section

/-- A386822: Irregular table T(n,k) = Product_{j = 1..k} prime(j)^(n-j+1), n >= 0, k = 1..n.

Offset 0, canonical program `A386822.P5436816925973816835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A386822 (n : ℕ) : ℤ :=
  A386822.P5436816925973816835.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A386822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388261.P13160057128574407376

`∩[A066039(n+1), A237589(n+1)]`
-/

namespace A388261.P13160057128574407376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388261.P13160057128574407376

noncomputable section

/-- A388261: Primes that are the sum of some first primes minus one.

Offset 1, canonical program `A388261.P13160057128574407376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 575 terms. -/
def A388261 (n : ℕ) : ℤ :=
  (A388261.P13160057128574407376.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 575 terms. -/
def A388261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390379.P7564342032490603690

`∪[A389947(n+1), A392564(n+1)]`
-/

namespace A390379.P7564342032490603690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390379.P7564342032490603690

noncomputable section

/-- A390379: Powers k^m, 2 <= m <= 3, with k neither squarefree nor squareful.

Offset 1, canonical program `A390379.P7564342032490603690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390379 (n : ℕ) : ℤ :=
  (A390379.P7564342032490603690.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390691.P14711029984836863784

`(n+1)/A390692(n+1)`
-/

namespace A390691.P14711029984836863784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A390692 (n + 1) : ℚ)

end

end A390691.P14711029984836863784

noncomputable section

/-- A390691: The largest divisor of n that is a Loeschian number (A003136).

Offset 1, canonical program `A390691.P14711029984836863784`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A390692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390691 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390691.P14711029984836863784.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A390692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390691.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A390958.P3512256824104388828`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072587, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390958 (n : ℕ) : ℤ :=
  A390958.P3512256824104388828.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072587, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390958.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394481.P10475431677930788014

`A034448(n+1)+A000005(n+1)-A000005(A007947(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394481.P10475431677930788014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + A000005 (n + 1) - A000005 (A007947 (n + 1)).toNat

end

end A394481.P10475431677930788014

noncomputable section

/-- A394481: a(n) = usigma(n) + tau(n) - tau(rad(n)).

Offset 1, canonical program `A394481.P10475431677930788014`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394481 (n : ℕ) : ℤ :=
  A394481.P10475431677930788014.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394481.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394997.P14454066831357329865

`A337524(n+1)-A063647(n+1)`
-/

namespace A394997.P14454066831357329865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337524 (n + 1) - A063647 (n + 1)

end

end A394997.P14454066831357329865

noncomputable section

/-- A394997: Wiener index of the divisor prime graph of n.

Offset 1, canonical program `A394997.P14454066831357329865`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063647, A337524, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394997 (n : ℕ) : ℤ :=
  A394997.P14454066831357329865.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063647, A337524, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394997.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395435.P18346761836883339857

`A000203(n+1)-A034448(n+1)+A000005(A007947(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395435.P18346761836883339857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A034448 (n + 1) + A000005 (A007947 (n + 1)).toNat

end

end A395435.P18346761836883339857

noncomputable section

/-- A395435: a(n) = sigma(n) - usigma(n) + tau(rad(n)).

Offset 1, canonical program `A395435.P18346761836883339857`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395435 (n : ℕ) : ℤ :=
  A395435.P18346761836883339857.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395435.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A397450.P7401832557812972848

`A102548(n+1)-A398671(floor(sqrt(n+1)))`
-/

namespace A397450.P7401832557812972848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102548 (n + 1) - A398671 (Nat.sqrt (n + 1))

end

end A397450.P7401832557812972848

noncomputable section

/-- A397450: a(n) is the number of positive integers <= n that are the sum of 2 nonzero squares.

Offset 1, canonical program `A397450.P7401832557812972848`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102548, A398671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A397450 (n : ℕ) : ℤ :=
  A397450.P7401832557812972848.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102548, A398671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A397450.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401106.P552550023882447853

`a(n-1)+A141100(2^(n-1))` with `a(0)=0`
-/

namespace A401106.P552550023882447853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A141100 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A401106.P552550023882447853

noncomputable section

/-- A401106: Number of unordered representations of 2^n as a sum of two distinct positive integers, each an odd composite number multiplied by a power of 2.

Offset 0, canonical program `A401106.P552550023882447853`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401106 (n : ℕ) : ℤ :=
  A401106.P552550023882447853.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401106.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A255264.P17478786461012927538

`A147562(A048645(n+1))`
-/

namespace A255264.P17478786461012927538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 (A048645 (n + 1)).toNat

end

end A255264.P17478786461012927538

noncomputable section

/-- A255264: Total number of ON cells in the "Ulam-Warburton" two-dimensional cellular automaton of A147562 after A048645(n) generations.

Offset 1, canonical program `A255264.P17478786461012927538`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048645, A147562, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A255264 (n : ℕ) : ℤ :=
  A255264.P17478786461012927538.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048645, A147562, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A255264.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A256673.P18348728144748040292

`A157037(eq[1, A157037(n+1)%2]+1)`
-/

namespace A256673.P18348728144748040292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157037 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A256673.P18348728144748040292

noncomputable section

/-- A256673: Odd numbers with prime arithmetic derivative A003415.

Offset 1, canonical program `A256673.P18348728144748040292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4322 terms. -/
def A256673 (n : ℕ) : ℤ :=
  A256673.P18348728144748040292.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4322 terms. -/
def A256673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258599.P9587233461388836766

`A348018(A000040(n+1))`
-/

namespace A258599.P9587233461388836766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348018 (A000040 (n + 1)).toNat

end

end A258599.P9587233461388836766

noncomputable section

/-- A258599: a(n) is the index m such that A001694(m) = prime(n)^2.

Offset 1, canonical program `A258599.P9587233461388836766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A258599 (n : ℕ) : ℤ :=
  A258599.P9587233461388836766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A258599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265281.P1605826112881666306

`A269161(a(n-1))` with `a(0)=1`
-/

namespace A265281.P1605826112881666306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269161 (a (n - 1)).toNat

end

end A265281.P1605826112881666306

noncomputable section

/-- A265281: Decimal representation of the n-th iteration of the "Rule 86" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A265281.P1605826112881666306`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269161, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265281 (n : ℕ) : ℤ :=
  A265281.P1605826112881666306.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269161, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265281.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A266459.P6080024581555885958

`A267001(A020703(n+1)-1)`
-/

namespace A266459.P6080024581555885958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267001 (A020703 (n + 1) - 1).toNat

end

end A266459.P6080024581555885958

noncomputable section

/-- A266459: Triangle read by rows giving successive states of cellular automaton generated by "Rule 27" initiated with a single ON (black) cell.

Offset 0, canonical program `A266459.P6080024581555885958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266459 (n : ℕ) : ℤ :=
  A266459.P6080024581555885958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266669.P16161379745779361122

`A266605(A020703(n+1)-1)`
-/

namespace A266669.P16161379745779361122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266605 (A020703 (n + 1) - 1).toNat

end

end A266669.P16161379745779361122

noncomputable section

/-- A266669: Triangle read by rows giving successive states of cellular automaton generated by "Rule 53" initiated with a single ON (black) cell.

Offset 0, canonical program `A266669.P16161379745779361122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266669 (n : ℕ) : ℤ :=
  A266669.P16161379745779361122.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267679.P2639550459389939186

`(1-(A267349(n)+A266174(n)))²`
-/

namespace A267679.P2639550459389939186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (A267349 n + A266174 n)) ^ 2

end

end A267679.P2639550459389939186

noncomputable section

/-- A267679: Triangle read by rows giving successive states of cellular automaton generated by "Rule 201" initiated with a single ON (black) cell.

Offset 0, canonical program `A267679.P2639550459389939186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267679 (n : ℕ) : ℤ :=
  A267679.P2639550459389939186.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268588.P11598390377590245523

`A124057(eq[1, A124057(n+2)%A124057(n+1)]+1)`
-/

namespace A268588.P11598390377590245523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124057 (n + 2)) (A124057 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124057 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A268588.P11598390377590245523

noncomputable section

/-- A268588: Numbers n such that n, n + 1, n + 2, n + 3 and n + 4 are products of exactly three primes.

Offset 1, canonical program `A268588.P11598390377590245523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1892 terms. -/
def A268588 (n : ℕ) : ℤ :=
  A268588.P11598390377590245523.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1892 terms. -/
def A268588.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A272190.P4499530173300394129

`A030513(n+1)²`
-/

namespace A272190.P4499530173300394129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1) ^ 2

end

end A272190.P4499530173300394129

noncomputable section

/-- A272190: Either 6th power of a prime, or product of the square of two different primes.

Offset 1, canonical program `A272190.P4499530173300394129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272190 (n : ℕ) : ℤ :=
  A272190.P4499530173300394129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273409.P13603559143851020891

`∑[A147562(n+1)+1-a(n-1)]` with `a(0)=1`
-/

namespace A273409.P13603559143851020891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A147562 (n + 1) + 1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273409.P13603559143851020891

noncomputable section

/-- A273409: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 678", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273409.P13603559143851020891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4490 terms. -/
def A273409 (n : ℕ) : ℤ :=
  A273409.P13603559143851020891.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4490 terms. -/
def A273409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273711.P5353043427219471615

`A001221(n+1)*A007875(n+1)`
-/

namespace A273711.P5353043427219471615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A007875 (n + 1)

end

end A273711.P5353043427219471615

noncomputable section

/-- A273711: The Hadamard product of omega(n) and A007875(n).

Offset 1, canonical program `A273711.P5353043427219471615`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007875, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A273711 (n : ℕ) : ℤ :=
  A273711.P5353043427219471615.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007875, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A273711.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276931.P10992499058279843691

`A276932(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276931.P10992499058279843691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276932 n : ℚ) / 2

end

end A276931.P10992499058279843691

noncomputable section

/-- A276931: Row 2 of A276616: a(n) = A276932(n)/2.

Offset 0, canonical program `A276931.P10992499058279843691`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276931 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A276931.P10992499058279843691.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276931.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277521.P5832681459461376919

`filter[A145551(n+1), A245656(#)]`
-/

namespace A277521.P5832681459461376919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A277521.P5832681459461376919

noncomputable section

/-- A277521: Numbers k such that number of divisors of k and sum of divisors of k divides product of divisors of k and the average of the divisors of k is an integer.

Offset 1, canonical program `A277521.P5832681459461376919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A277521 (n : ℕ) : ℤ :=
  A277521.P5832681459461376919.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A277521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278998.P826195583929111342

`lt[0, A109091(n+1)]`
-/

namespace A278998.P826195583929111342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109091 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A278998.P826195583929111342

noncomputable section

/-- A278998: Numbers of the form (5h+1)*5^k-1 or (5h+4)*5^k-1 for h,k in N.

Offset 1, canonical program `A278998.P826195583929111342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A278998 (n : ℕ) : ℤ :=
  (A278998.P826195583929111342.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A278998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278999.P7909097224008119104

`lt[A109091(n+1), 0]`
-/

namespace A278999.P7909097224008119104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109091 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A278999.P7909097224008119104

noncomputable section

/-- A278999: Numbers of the form (5h+2)*5^k-1 or (5h+3)*5^k-1 for h,k in N.

Offset 1, canonical program `A278999.P7909097224008119104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A278999 (n : ℕ) : ℤ :=
  (A278999.P7909097224008119104.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A278999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284777.P2957116488474719438

`xor(1, A284776(n+2))`
-/

namespace A284777.P2957116488474719438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A284776 (n + 2))

end

end A284777.P2957116488474719438

noncomputable section

/-- A284777: Positions of 1 in A284775; complement of A284776.

Offset 1, canonical program `A284777.P2957116488474719438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A284777 (n : ℕ) : ℤ :=
  A284777.P2957116488474719438.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A284777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284795.P7559142428192758508

`lt[3, and(6, A284775(A065033(n+1))+3)]+n+1`
-/

namespace A284795.P7559142428192758508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A284775 (A065033 (n + 1)).toNat + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + (n + 1)

end

end A284795.P7559142428192758508

noncomputable section

/-- A284795: Positions of 0's in A284793.

Offset 1, canonical program `A284795.P7559142428192758508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A284795 (n : ℕ) : ℤ :=
  (A284795.P7559142428192758508.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A284795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284817.P1561688684894145384

`2*(n+1)-1-A284776(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284817.P1561688684894145384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - 1 - A284776 (n + 1)

end

end A284817.P1561688684894145384

noncomputable section

/-- A284817: a(n) = 2n - 1 - A284776(n).

Offset 1, canonical program `A284817.P1561688684894145384`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284776, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284817 (n : ℕ) : ℤ :=
  A284817.P1561688684894145384.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284776, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284817.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286046.P6614005406053025473

`A286044(n+1)+A286049(n+2)-A286044(n+2)`
-/

namespace A286046.P6614005406053025473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286044 (n + 1) + (A286049 (n + 2) - A286044 (n + 2))

end

end A286046.P6614005406053025473

noncomputable section

/-- A286046: {011->1}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A286046.P6614005406053025473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A286046 (n : ℕ) : ℤ :=
  A286046.P6614005406053025473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A286046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286064.P11784658490324997277

`char[A286066(n+1)-1]`
-/

namespace A286064.P11784658490324997277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286066 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286064.P11784658490324997277

noncomputable section

/-- A286064: {0110->1}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A286064.P11784658490324997277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286064 (n : ℕ) : ℤ :=
  (A286064.P11784658490324997277.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286609.P10170324973133728481

`eq[char[A286608(n+1)], A000007(n)]`
-/

namespace A286609.P10170324973133728481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286608 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A286609.P10170324973133728481

noncomputable section

/-- A286609: Numbers k for which the binary representation of the primes that divide k (A087207) is more than k.

Offset 1, canonical program `A286609.P10170324973133728481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8070 terms. -/
def A286609 (n : ℕ) : ℤ :=
  (A286609.P10170324973133728481.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8070 terms. -/
def A286609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286691.P8678306413782919878

`1-A286801((n+1)%3+n)`
-/

namespace A286691.P8678306413782919878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286801 ((n + 1) % 3 + n)

end

end A286691.P8678306413782919878

noncomputable section

/-- A286691: {0->010, 1->110}-transform of the Pell word, A171588.

Offset 1, canonical program `A286691.P8678306413782919878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286691 (n : ℕ) : ℤ :=
  A286691.P8678306413782919878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287105.P8825308527181193328

`A287075(n+1)-n`
-/

namespace A287105.P8825308527181193328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287075 (n + 1) - (n : ℤ)

end

end A287105.P8825308527181193328

noncomputable section

/-- A287105: Positions of 0 in A287104.

Offset 1, canonical program `A287105.P8825308527181193328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287105 (n : ℕ) : ℤ :=
  A287105.P8825308527181193328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294278.P17650262410649944853

`lt[A007875(n+1), A007875(A028310(n))]`
-/

namespace A294278.P17650262410649944853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294278.P17650262410649944853

noncomputable section

/-- A294278: Numbers k such that omega(k) > omega(k+1) (where omega(m) = A001221(m), the number of distinct primes dividing m).

Offset 1, canonical program `A294278.P17650262410649944853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3645 terms. -/
def A294278 (n : ℕ) : ℤ :=
  (A294278.P17650262410649944853.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3645 terms. -/
def A294278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295663.P17834831274286769221

`A295664(n+1)-A056169(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295663.P17834831274286769221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295664 (n + 1) - A056169 (n + 1)

end

end A295663.P17834831274286769221

noncomputable section

/-- A295663: a(n) = A295664(n) - A056169(n); 2-adic valuation of tau(n) minus the number of unitary prime divisors of n.

Offset 1, canonical program `A295663.P17834831274286769221`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295663 (n : ℕ) : ℤ :=
  A295663.P17834831274286769221.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295663.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295666.P10284647198696941857

`∏{d}[A058035(n+1), A014963(A003557(#))]`
-/

namespace A295666.P10284647198696941857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 (A003557 d).toNat

end

end A295666.P10284647198696941857

noncomputable section

/-- A295666: a(n) = Product_{d|n, gcd(d,n/d) is prime} gcd(d,n/d).

Offset 1, canonical program `A295666.P10284647198696941857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295666 (n : ℕ) : ℤ :=
  A295666.P10284647198696941857.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300951.P16227161527495429065

`lcm(a(n-2), A014963(floor(n/2)))` with `a(0)=1, a(1)=1`
-/

namespace A300951.P16227161527495429065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lcm (a (n - 2) : ℤ) (A014963 ⌊(n : ℚ) / 2⌋.toNat)

end

end A300951.P16227161527495429065

noncomputable section

/-- A300951: a(n) = Product_{j=1..floor(n/2)} p(j) where p(j) = j if j is prime else 1.

Offset 0, canonical program `A300951.P16227161527495429065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 502 terms. -/
def A300951 (n : ℕ) : ℤ :=
  (A300951.P16227161527495429065.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 502 terms. -/
def A300951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303952.P9236870532199443884

`∑{#}[n-1, C(n, #+1)*A014300(#+1)]+1`
-/

namespace A303952.P9236870532199443884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose n (k + 1) : ℤ) * A014300 (k + 1) + 1

end

end A303952.P9236870532199443884

noncomputable section

/-- A303952: a(n) is the number of monic polynomials P(z) of degree n over the complex numbers such that P(z) divides P(z^2).

Offset 0, canonical program `A303952.P9236870532199443884`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014300, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A303952 (n : ℕ) : ℤ :=
  A303952.P9236870532199443884.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014300, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A303952.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A304326.P14717502684146888168

`A034444(n+1)-A304327(n+1)`
-/

namespace A304326.P14717502684146888168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A304327 (n + 1)

end

end A304326.P14717502684146888168

noncomputable section

/-- A304326: Number of ways to write n as a product of a number that is not a perfect power and a squarefree number.

Offset 1, canonical program `A304326.P14717502684146888168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304326 (n : ℕ) : ℤ :=
  A304326.P14717502684146888168.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307100.P11035796224426084874

`∑{d}[n+1, A394346(#)]`
-/

namespace A307100.P11035796224426084874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A394346 d

end

end A307100.P11035796224426084874

noncomputable section

/-- A307100: a(n) = Sum_{d|n} (tau(d)*pod(d)) where tau(k) = the number of divisors of k (A000005) and pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A307100.P11035796224426084874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A307100 (n : ℕ) : ℤ :=
  A307100.P11035796224426084874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A307100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307641.P8431992554252271675

`A014963(A307662(n+1))`
-/

namespace A307641.P8431992554252271675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A307662 (n + 1)).toNat

end

end A307641.P8431992554252271675

noncomputable section

/-- A307641: Triangle T(i,j=1..i) read by rows which contain the naturally ordered prime-or-one factorization of the row number i.

Offset 1, canonical program `A307641.P8431992554252271675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8646 terms. -/
def A307641 (n : ℕ) : ℤ :=
  A307641.P8431992554252271675.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8646 terms. -/
def A307641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309760.P6501201679857975216

`∩[2*n, A138026(n+1)]`
-/

namespace A309760.P6501201679857975216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309760.P6501201679857975216

noncomputable section

/-- A309760: Even numbers k such that k-p is composite where p is the largest prime <= k.

Offset 1, canonical program `A309760.P6501201679857975216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5580 terms. -/
def A309760 (n : ℕ) : ℤ :=
  (A309760.P6501201679857975216.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5580 terms. -/
def A309760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310367.P12244695363259660047

`A014963(A001316(n))*A004525(A312927(n))`
-/

namespace A310367.P12244695363259660047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A004525 (A312927 n).toNat

end

end A310367.P12244695363259660047

noncomputable section

/-- A310367: Coordination sequence Gal.6.129.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310367.P12244695363259660047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A310367 (n : ℕ) : ℤ :=
  A310367.P12244695363259660047.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A310367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311181.P11413614855013295294

`2*A312143(n)-A312682(n)`
-/

namespace A311181.P11413614855013295294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312143 n - A312682 n

end

end A311181.P11413614855013295294

noncomputable section

/-- A311181: Coordination sequence Gal.5.107.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311181.P11413614855013295294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A311181 (n : ℕ) : ℤ :=
  A311181.P11413614855013295294.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A311181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311261.P2737762260615231918

`4*n+A028310(n)+A313480(n)-A315680(n)`
-/

namespace A311261.P2737762260615231918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A028310 n + (A313480 n - A315680 n))

end

end A311261.P2737762260615231918

noncomputable section

/-- A311261: Coordination sequence Gal.5.97.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311261.P2737762260615231918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A311261 (n : ℕ) : ℤ :=
  A311261.P2737762260615231918.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A311261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311548.P8775752580352239183

`A314971(n)-A004396(n)`
-/

namespace A311548.P8775752580352239183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314971 n - A004396 n

end

end A311548.P8775752580352239183

noncomputable section

/-- A311548: Coordination sequence Gal.5.54.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311548.P8775752580352239183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A311548 (n : ℕ) : ℤ :=
  A311548.P8775752580352239183.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A311548.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A313153.P1548300830717326996

`abs(A008592(n)-A315446(n))`
-/

namespace A313153.P1548300830717326996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315446 n|

end

end A313153.P1548300830717326996

noncomputable section

/-- A313153: Coordination sequence Gal.5.113.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313153.P1548300830717326996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A313153 (n : ℕ) : ℤ :=
  A313153.P1548300830717326996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A313153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313589.P17445481109569787276

`abs(A008592(n)-A313855(n))`
-/

namespace A313589.P17445481109569787276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313855 n|

end

end A313589.P17445481109569787276

noncomputable section

/-- A313589: Coordination sequence Gal.5.141.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313589.P17445481109569787276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. -/
def A313589 (n : ℕ) : ℤ :=
  A313589.P17445481109569787276.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. -/
def A313589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313696.P9738400648610204729

`A313543(n)+Δ[A011864(n)]`
-/

namespace A313696.P9738400648610204729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313543 n + (f1 (n + 1) - f1 n)

end

end A313696.P9738400648610204729

noncomputable section

/-- A313696: Coordination sequence Gal.6.327.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313696.P9738400648610204729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. -/
def A313696 (n : ℕ) : ℤ :=
  A313696.P9738400648610204729.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. -/
def A313696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313887.P5397836189599980398

`abs(A008592(n)-A313543(n))`
-/

namespace A313887.P5397836189599980398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313543 n|

end

end A313887.P5397836189599980398

noncomputable section

/-- A313887: Coordination sequence Gal.6.331.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313887.P5397836189599980398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2185 terms. -/
def A313887 (n : ℕ) : ℤ :=
  A313887.P5397836189599980398.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2185 terms. -/
def A313887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314072.P13997368567095779612

`A314129(n)-A238470(3*n)`
-/

namespace A314072.P13997368567095779612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314129 n - A238470 (3 * n)

end

end A314072.P13997368567095779612

noncomputable section

/-- A314072: Coordination sequence Gal.5.312.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314072.P13997368567095779612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A314072 (n : ℕ) : ℤ :=
  A314072.P13997368567095779612.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A314072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314706.P17212367775506694373

`A008458(n)+A008576(n)-A311861(n)`
-/

namespace A314706.P17212367775506694373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008576 n - A311861 n)

end

end A314706.P17212367775506694373

noncomputable section

/-- A314706: Coordination sequence Gal.6.130.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314706.P17212367775506694373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A314706 (n : ℕ) : ℤ :=
  A314706.P17212367775506694373.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A314706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314736.P3794098761063289759

`A314428(n)+A004396(A006369(n)-A004396(n))`
-/

namespace A314736.P3794098761063289759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314428 n + A004396 (A006369 n - A004396 n).toNat

end

end A314736.P3794098761063289759

noncomputable section

/-- A314736: Coordination sequence Gal.5.115.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314736.P3794098761063289759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A314736 (n : ℕ) : ℤ :=
  A314736.P3794098761063289759.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A314736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314974.P14920294554282777166

`A004396(n)+A314742(n)-A004525(A004396(n))`
-/

namespace A314974.P14920294554282777166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314742 n - A004525 (A004396 n).toNat)

end

end A314974.P14920294554282777166

noncomputable section

/-- A314974: Coordination sequence Gal.6.343.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314974.P14920294554282777166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. -/
def A314974 (n : ℕ) : ℤ :=
  A314974.P14920294554282777166.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. -/
def A314974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315264.P7587987662611308662

`abs(10*n-A310455(n))`
-/

namespace A315264.P7587987662611308662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A310455 n|

end

end A315264.P7587987662611308662

noncomputable section

/-- A315264: Coordination sequence Gal.6.328.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315264.P7587987662611308662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2336 terms. -/
def A315264 (n : ℕ) : ℤ :=
  A315264.P7587987662611308662.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2336 terms. -/
def A315264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315743.P14010390675010090140

`A315695(n)+Δ[A011864(n)]`
-/

namespace A315743.P14010390675010090140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315695 n + (f1 (n + 1) - f1 n)

end

end A315743.P14010390675010090140

noncomputable section

/-- A315743: Coordination sequence Gal.6.334.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315743.P14010390675010090140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A315743 (n : ℕ) : ℤ :=
  A315743.P14010390675010090140.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A315743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317594.P6397274018169493983

`A038459(A013598(n+1))+A023443(n)`
-/

namespace A317594.P6397274018169493983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (A013598 (n + 1)).toNat + A023443 n

end

end A317594.P6397274018169493983

noncomputable section

/-- A317594: Lexicographically first sequence of different terms such that erasing the last three digits of a(n+1) and adding this new reshaped integer to a(n) gives back a(n+1).

Offset 1, canonical program `A317594.P6397274018169493983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A317594 (n : ℕ) : ℤ :=
  A317594.P6397274018169493983.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A317594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318509.P16676407723879251455

`∏{d}[n+1, A002487(A014963(#))]`
-/

namespace A318509.P16676407723879251455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A002487 (A014963 d).toNat

end

end A318509.P16676407723879251455

noncomputable section

/-- A318509: Completely multiplicative with a(p) = A002487(p).

Offset 1, canonical program `A318509.P16676407723879251455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318509 (n : ℕ) : ℤ :=
  A318509.P16676407723879251455.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318509.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A319690.P7951034641680093575

`∏{d}[n+1, A014963(#)%3]`
-/

namespace A319690.P7951034641680093575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Int.tmod (A014963 d) 3

end

end A319690.P7951034641680093575

noncomputable section

/-- A319690: Fully multiplicative with a(p^e) = (p mod 3)^e.

Offset 1, canonical program `A319690.P7951034641680093575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319690 (n : ℕ) : ℤ :=
  A319690.P7951034641680093575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321297.P13434869643224449041

`A060866(n+1)-(A117004(n+1)+A028310(n))`
-/

namespace A321297.P13434869643224449041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060866 (n + 1) - (A117004 (n + 1) + A028310 n)

end

end A321297.P13434869643224449041

noncomputable section

/-- A321297: a(n) is the sum of proper divisors of n that are >= sqrt(n) minus the sum of the divisors that are greater than 1 and less than sqrt(n).

Offset 1, canonical program `A321297.P13434869643224449041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321297 (n : ℕ) : ℤ :=
  A321297.P13434869643224449041.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321297.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A324391.P7291233321166429413

`∏{d}[n+1, A070939(A014963(#))]`
-/

namespace A324391.P7291233321166429413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A070939 (A014963 d).toNat

end

end A324391.P7291233321166429413

noncomputable section

/-- A324391: Fully multiplicative with a(p^e) = A070939(p)^e, where A070939(p) gives the length of the binary representation of p.

Offset 1, canonical program `A324391.P7291233321166429413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324391 (n : ℕ) : ℤ :=
  A324391.P7291233321166429413.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324507.P9101657935171306601

`A211776(n+1)/A007955(n+1)*A324506(n+1)`
-/

namespace A324507.P9101657935171306601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211776 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ) * (A324506 (n + 1) : ℚ)

end

end A324507.P9101657935171306601

noncomputable section

/-- A324507: a(n) = denominator of Product_{d|n} (d/tau(d)) where tau(k) = the number of divisors of k (A000005).

Offset 1, canonical program `A324507.P9101657935171306601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A324507 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A324507.P9101657935171306601.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A324507.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A329835.P4757636539096207399

`comp[A329836(n+1)-1]+1`
-/

namespace A329835.P4757636539096207399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329836 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A329835.P4757636539096207399

noncomputable section

/-- A329835: Beatty sequence for (9+sqrt(101))/10.

Offset 1, canonical program `A329835.P4757636539096207399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329835 (n : ℕ) : ℤ :=
  (A329835.P4757636539096207399.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329835.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A333326.P2975719134818226365

`lt[3, A325937(n+1)]+1`
-/

namespace A333326.P2975719134818226365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A333326.P2975719134818226365

noncomputable section

/-- A333326: Odd numbers k such that k is the product of 2 numbers greater than one, in two or more ways.

Offset 1, canonical program `A333326.P2975719134818226365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333326 (n : ℕ) : ℤ :=
  (A333326.P2975719134818226365.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335021.P18155568080400955392

`A325937(A028310(n)+1)-1`
-/

namespace A335021.P18155568080400955392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (A028310 n + 1).toNat - 1

end

end A335021.P18155568080400955392

noncomputable section

/-- A335021: a(n) = Sum_{d|n, 1 < d < n} (-1)^(d + 1).

Offset 1, canonical program `A335021.P18155568080400955392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335021 (n : ℕ) : ℤ :=
  A335021.P18155568080400955392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335969.P8452878406880024569

`∩[A034961(n+1), A046389(n+1)]`
-/

namespace A335969.P8452878406880024569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335969.P8452878406880024569

noncomputable section

/-- A335969: Sphenic numbers that are also the sum of three consecutive primes.

Offset 1, canonical program `A335969.P8452878406880024569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 538 terms. -/
def A335969 (n : ℕ) : ℤ :=
  (A335969.P8452878406880024569.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 538 terms. -/
def A335969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338395.P13114426695192953794

`∩[A120736(n+1), A145551(n+1)]`
-/

namespace A338395.P13114426695192953794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338395.P13114426695192953794

noncomputable section

/-- A338395: Numbers m such that lcm(tau(m), sigma(m), pod(m)) = pod(m).

Offset 1, canonical program `A338395.P13114426695192953794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. -/
def A338395 (n : ℕ) : ℤ :=
  (A338395.P13114426695192953794.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. -/
def A338395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340679.P327405937723677062

`A007947(n+1)/A014963(n+1)`
-/

namespace A340679.P327405937723677062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A014963 (n + 1) : ℚ)

end

end A340679.P327405937723677062

noncomputable section

/-- A340679: If n is a power of prime then a(n) = 1, otherwise a(n) = product of the distinct prime factors of n.

Offset 1, canonical program `A340679.P327405937723677062`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340679 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340679.P327405937723677062.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340679.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342007.P5181248813472136976

`∏{d}[n+1, gcd(A001222(#), A014963(#))]`
-/

namespace A342007.P5181248813472136976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Int.gcd (A001222 d) (A014963 d)

end

end A342007.P5181248813472136976

noncomputable section

/-- A342007: Multiplicative with a(p^e) = p^floor(e/p).

Offset 1, canonical program `A342007.P5181248813472136976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342007 (n : ℕ) : ℤ :=
  (A342007.P5181248813472136976.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347101.P16544199152805482784

`∏{d}[n+1, A013632(A014963(#))]`
-/

namespace A347101.P16544199152805482784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A013632 (A014963 d).toNat

end

end A347101.P16544199152805482784

noncomputable section

/-- A347101: Fully multiplicative with a(prime(k)) = A001223(k), where A001223 gives the distance from the k-th prime to the (k+1)-th prime.

Offset 1, canonical program `A347101.P16544199152805482784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347101 (n : ℕ) : ℤ :=
  A347101.P16544199152805482784.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347101.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A348969.P3434171516532769019

`(n+1)/A348968(n+1)`
-/

namespace A348969.P3434171516532769019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A348968 (n + 1) : ℚ)

end

end A348969.P3434171516532769019

noncomputable section

/-- A348969: a(n) = n / gcd(n, A099377(n)).

Offset 1, canonical program `A348969.P3434171516532769019`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348969 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348969.P3434171516532769019.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348969.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350345.P6937258205701611125

`A350344(n+1)²`
-/

namespace A350345.P6937258205701611125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350344 (n + 1) ^ 2

end

end A350345.P6937258205701611125

noncomputable section

/-- A350345: Squares of composite numbers k that are abelian orders.

Offset 1, canonical program `A350345.P6937258205701611125`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350344, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350345 (n : ℕ) : ℤ :=
  A350345.P6937258205701611125.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350344, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350345.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352735.P7182467444972131953

`∩[A011538(n+1), A052406(n+1)]`
-/

namespace A352735.P7182467444972131953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352735.P7182467444972131953

noncomputable section

/-- A352735: Lucky numbers in Chinese: Numbers whose decimal expansion contains 8 but not 4.

Offset 1, canonical program `A352735.P7182467444972131953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A352735 (n : ℕ) : ℤ :=
  (A352735.P7182467444972131953.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A352735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353381.P1479749927883815012

`∑{d}[n+1, 1-A353380(#)]`
-/

namespace A353381.P1479749927883815012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - A353380 d)

end

end A353381.P1479749927883815012

noncomputable section

/-- A353381: Number of divisors of n not in A353355.

Offset 1, canonical program `A353381.P1479749927883815012`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353380, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353381 (n : ℕ) : ℤ :=
  A353381.P1479749927883815012.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353380, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353381.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353446.P1225759683580056269

`A008486(A353352(n+1))-Δ[A006218(n)]`
-/

namespace A353446.P1225759683580056269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A353352 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A353446.P1225759683580056269

noncomputable section

/-- A353446: Let g be the inverse Möbius transform of the Eisenstein integer-valued function f defined in A353445. a(n) is twice the real part of g(n).

Offset 1, canonical program `A353446.P1225759683580056269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353446 (n : ℕ) : ℤ :=
  A353446.P1225759683580056269.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356229.P13870738333208729634

`A287170(2*(n+1))`
-/

namespace A356229.P13870738333208729634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (2 * (n + 1))

end

end A356229.P13870738333208729634

noncomputable section

/-- A356229: Number of maximal gapless submultisets of the prime indices of 2n.

Offset 1, canonical program `A356229.P13870738333208729634`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287170, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356229 (n : ℕ) : ℤ :=
  A356229.P13870738333208729634.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287170, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356229.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356254.P9287810350702920024

`(n+1)*n/2-A181132(n)+∑{#}[A000523(n+1), A080791(floor((n+1)/2^#)-1)]`
-/

namespace A356254.P9287810350702920024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * n : ℚ) / 2 - (A181132 n : ℚ) + ((∑ k ∈ Finset.range (f1 n + 1).toNat, A080791 (⌊(n + 1 : ℚ) / (2 ^ k : ℚ)⌋ - 1).toNat : ℤ) : ℚ)

end

end A356254.P9287810350702920024

noncomputable section

/-- A356254: Given n balls, all of which are initially in the first of n numbered boxes, a(n) is the number of steps required to get one ball in each box when a step consists of moving to the next box every second ball from the highest-numbered box that has more than one ball.

Offset 1, canonical program `A356254.P9287810350702920024`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356254 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A356254.P9287810350702920024.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356254.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360395.P2153048624438428772

`floor(3*(A285973(n+1)-n)/2)`
-/

namespace A360395.P2153048624438428772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * (A285973 (n + 1) - (n : ℤ)) : ℚ) / 2⌋

end

end A360395.P2153048624438428772

noncomputable section

/-- A360395: Intersection of A026430 and A360393.

Offset 1, canonical program `A360395.P2153048624438428772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360395 (n : ℕ) : ℤ :=
  A360395.P2153048624438428772.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363155.P8045732877436553929

`A363928(5*n+4)`
-/

namespace A363155.P8045732877436553929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (5 * n + 4)

end

end A363155.P8045732877436553929

noncomputable section

/-- A363155: Expansion of Sum_{k>0} k * x^(3*k-1) / (1 - x^(5*k-2)).

Offset 1, canonical program `A363155.P8045732877436553929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363155 (n : ℕ) : ℤ :=
  A363155.P8045732877436553929.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363156.P4260273011259054206

`A363928(A016885(n))`
-/

namespace A363156.P4260273011259054206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (A016885 n).toNat

end

end A363156.P4260273011259054206

noncomputable section

/-- A363156: Expansion of Sum_{k>0} k * x^k / (1 - x^(5*k-2)).

Offset 1, canonical program `A363156.P4260273011259054206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363156 (n : ℕ) : ℤ :=
  A363156.P4260273011259054206.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363157.P11495080749246290306

`A363928(5*n+2)`
-/

namespace A363157.P11495080749246290306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (5 * n + 2)

end

end A363157.P11495080749246290306

noncomputable section

/-- A363157: Expansion of Sum_{k>0} k * x^(4*k-1) / (1 - x^(5*k-2)).

Offset 1, canonical program `A363157.P11495080749246290306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363157 (n : ℕ) : ℤ :=
  A363157.P11495080749246290306.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363158.P2370107232160215343

`A363928(5*n+1)`
-/

namespace A363158.P2370107232160215343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (5 * n + 1)

end

end A363158.P2370107232160215343

noncomputable section

/-- A363158: Expansion of Sum_{k>0} k * x^(2*k) / (1 - x^(5*k-2)).

Offset 1, canonical program `A363158.P2370107232160215343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363158 (n : ℕ) : ℤ :=
  A363158.P2370107232160215343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363158.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A367418.P8234545043169317715

`A268335(n+1)/A367417(n+1)`
-/

namespace A367418.P8234545043169317715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268335 (n + 1) : ℚ) / (A367417 (n + 1) : ℚ)

end

end A367418.P8234545043169317715

noncomputable section

/-- A367418: The exponentially odd numbers (A268335) divided by their squarefree kernels (A007947).

Offset 1, canonical program `A367418.P8234545043169317715`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, A367417, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A367418 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367418.P8234545043169317715.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, A367417, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A367418.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368580.P502628075243894648

`A004277(A117004(n+1))-A000005(n+1)`
-/

namespace A368580.P502628075243894648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A117004 (n + 1)).toNat - A000005 (n + 1)

end

end A368580.P502628075243894648

noncomputable section

/-- A368580: a(n) = Sum_{d|n and d^2 <= n} (1 + [d^2 < n]) * (2*d - 1), where [.] denote the Iverson brackets.

Offset 1, canonical program `A368580.P502628075243894648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368580 (n : ℕ) : ℤ :=
  A368580.P502628075243894648.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369028.P15444832986516875941

`A014963(A253563(n))`
-/

namespace A369028.P15444832986516875941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A253563 n).toNat

end

end A369028.P15444832986516875941

noncomputable section

/-- A369028: Exponential of Mangoldt function permuted by A253563.

Offset 0, canonical program `A369028.P15444832986516875941`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369028 (n : ℕ) : ℤ :=
  A369028.P15444832986516875941.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369028.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369041.P3784839183294288014

`A014963(A003188(n+1))`
-/

namespace A369041.P3784839183294288014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A003188 (n + 1)).toNat

end

end A369041.P3784839183294288014

noncomputable section

/-- A369041: LCM-transform of binary Gray code (A003188).

Offset 1, canonical program `A369041.P3784839183294288014`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369041 (n : ℕ) : ℤ :=
  A369041.P3784839183294288014.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369041.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369042.P6821454009278547206

`A014963(A006068(n+1))`
-/

namespace A369042.P6821454009278547206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A006068 (n + 1)).toNat

end

end A369042.P6821454009278547206

noncomputable section

/-- A369042: LCM-transform of the inverse of binary Gray code (A006068).

Offset 1, canonical program `A369042.P6821454009278547206`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369042 (n : ℕ) : ℤ :=
  A369042.P6821454009278547206.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369042.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369044.P13609679750357652968

`A014963(A057889(n+1))`
-/

namespace A369044.P13609679750357652968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A057889 (n + 1)).toNat

end

end A369044.P13609679750357652968

noncomputable section

/-- A369044: LCM-transform of bijective bit reverse (A057889).

Offset 1, canonical program `A369044.P13609679750357652968`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A057889, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369044 (n : ℕ) : ℤ :=
  A369044.P13609679750357652968.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A057889, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369044.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369045.P17836253703744898429

`A014963(A054429(n+1))`
-/

namespace A369045.P17836253703744898429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A054429 (n + 1)).toNat

end

end A369045.P17836253703744898429

noncomputable section

/-- A369045: LCM-transform of binary invert permutation (A054429).

Offset 1, canonical program `A369045.P17836253703744898429`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A054429, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369045 (n : ℕ) : ℤ :=
  A369045.P17836253703744898429.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A054429, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369045.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370598.P3615362313586893228

`abs(A166234(n+1))`
-/

namespace A370598.P3615362313586893228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166234 (n + 1)|

end

end A370598.P3615362313586893228

noncomputable section

/-- A370598: Characteristic function of exponentially squarefree numbers (A209061).

Offset 1, canonical program `A370598.P3615362313586893228`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166234, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370598 (n : ℕ) : ℤ :=
  A370598.P3615362313586893228.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166234, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370598.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371907.P13863929953614005785

`A357215(n+1)-A371906(n+1)`
-/

namespace A371907.P13863929953614005785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357215 (n + 1) - A371906 (n + 1)

end

end A371907.P13863929953614005785

noncomputable section

/-- A371907: a(n) = sum of 2^(k-1) such that floor(n/prime(k)) is even.

Offset 1, canonical program `A371907.P13863929953614005785`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A371906, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371907 (n : ℕ) : ℤ :=
  A371907.P13863929953614005785.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A371906, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371907.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372112.P1502568326743945115

`A014963(record[∏{p}[n, #]])`
-/

namespace A372112.P1502568326743945115
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A372112.P1502568326743945115

noncomputable section

/-- A372112: Rad-transform of the squarefree numbers A005117 (see Comments).

Offset 1, canonical program `A372112.P1502568326743945115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. -/
def A372112 (n : ℕ) : ℤ :=
  A372112.P1502568326743945115.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. -/
def A372112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373470.P8197949945481650246

`A043555(n+1)-A043555(n)`
-/

namespace A373470.P8197949945481650246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043555 (n + 1) - A043555 n

end

end A373470.P8197949945481650246

noncomputable section

/-- A373470: First differences of A043555 = number of runs in base-3 representation of n.

Offset 0, canonical program `A373470.P8197949945481650246`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A043555, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373470 (n : ℕ) : ℤ :=
  A373470.P8197949945481650246.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A043555, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373470.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374460.P17083838947933679680

`lt[1, A368711(n+1)]+1`
-/

namespace A374460.P17083838947933679680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368711 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A374460.P17083838947933679680

noncomputable section

/-- A374460: Indices of the nonsquarefree terms in the sequence of exponentially odd numbers (A268335).

Offset 1, canonical program `A374460.P17083838947933679680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1380 terms. -/
def A374460 (n : ℕ) : ℤ :=
  (A374460.P17083838947933679680.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1380 terms. -/
def A374460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375930.P7525023561221465794

`∑[A120992(n+1)]`
-/

namespace A375930.P7525023561221465794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375930.P7525023561221465794

noncomputable section

/-- A375930: Numbers k such that A005117(k+1) - A005117(k) > 1. In other words, the k-th squarefree number is more than 1 less than the next.

Offset 1, canonical program `A375930.P7525023561221465794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375930 (n : ℕ) : ℤ :=
  A375930.P7525023561221465794.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378458.P204532322274590323

`∪[A073248(n+1), A228649(n+1)]`
-/

namespace A378458.P204532322274590323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A378458.P204532322274590323

noncomputable section

/-- A378458: Squarefree numbers k such that k + 1 is squarefree but k + 2 is not.

Offset 1, canonical program `A378458.P204532322274590323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378458 (n : ℕ) : ℤ :=
  (A378458.P204532322274590323.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379916.P8861778669536379572

`A033879(A046389(n+1))/2`
-/

namespace A379916.P8861778669536379572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033879 (A046389 (n + 1)).toNat : ℚ) / 2

end

end A379916.P8861778669536379572

noncomputable section

/-- A379916: a(n) is the deficiency of A046389(n), divided by 2.

Offset 1, canonical program `A379916.P8861778669536379572`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379916 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A379916.P8861778669536379572.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379916.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A382509.P1592332629180381026

`filter[A390789(n+1), A353670(#)]`
-/

namespace A382509.P1592332629180381026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A382509.P1592332629180381026

noncomputable section

/-- A382509: Integers s = (p1+p2)/4 such that p1 and p2 are consecutive primes and s can be written in the form p*2^k with k>=0 and p>2 prime.

Offset 1, canonical program `A382509.P1592332629180381026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 911 terms. -/
def A382509 (n : ℕ) : ℤ :=
  A382509.P1592332629180381026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 911 terms. -/
def A382509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383031.P8911448093977400013

`eq[1, A368472(n+1)]+1`
-/

namespace A383031.P8911448093977400013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368472 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A383031.P8911448093977400013

noncomputable section

/-- A383031: Indices of the squarefree terms in the sequence of exponentially odd numbers.

Offset 1, canonical program `A383031.P8911448093977400013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8620 terms. -/
def A383031 (n : ℕ) : ℤ :=
  (A383031.P8911448093977400013.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8620 terms. -/
def A383031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386024.P17777215466388512273

`∩[A160337(n+1), A329760(n+1)]`
-/

namespace A386024.P17777215466388512273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386024.P17777215466388512273

noncomputable section

/-- A386024: Primes having only {0, 1, 3, 5} as digits.

Offset 1, canonical program `A386024.P17777215466388512273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 535 terms. -/
def A386024 (n : ℕ) : ℤ :=
  (A386024.P17777215466388512273.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 535 terms. -/
def A386024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386107.P9360061858123555193

`∩[A001729(n+1), A361822(n+1)]`
-/

namespace A386107.P9360061858123555193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386107.P9360061858123555193

noncomputable section

/-- A386107: Primes having only {1, 3, 4, 7} as digits.

Offset 1, canonical program `A386107.P9360061858123555193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 290 terms. -/
def A386107 (n : ℕ) : ℤ :=
  (A386107.P9360061858123555193.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 290 terms. -/
def A386107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386113.P5229020975382995121

`∩[A030096(n+1), A329760(n+1)]`
-/

namespace A386113.P5229020975382995121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386113.P5229020975382995121

noncomputable section

/-- A386113: Primes having only {1, 3, 5, 9} as digits.

Offset 1, canonical program `A386113.P5229020975382995121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 881 terms. -/
def A386113 (n : ℕ) : ℤ :=
  (A386113.P5229020975382995121.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 881 terms. -/
def A386113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386125.P13342514555091089234

`∩[A038616(n+1), A152313(n+1)]`
-/

namespace A386125.P13342514555091089234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386125.P13342514555091089234

noncomputable section

/-- A386125: Primes having only {1, 4, 6, 9} as digits.

Offset 1, canonical program `A386125.P13342514555091089234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 573 terms. -/
def A386125 (n : ℕ) : ℤ :=
  (A386125.P13342514555091089234.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 573 terms. -/
def A386125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388980.P12589077229273322427

`∪[A004171(n), A388984(n+1)]`
-/

namespace A388980.P12589077229273322427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A388980.P12589077229273322427

noncomputable section

/-- A388980: Even numbers of the form p * m^2, where p is prime and m > 0.

Offset 1, canonical program `A388980.P12589077229273322427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A388980 (n : ℕ) : ℤ :=
  (A388980.P12589077229273322427.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A388980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391319.P17833975388560488226

`filter[A362148(n+1), A389905(#)]`
-/

namespace A391319.P17833975388560488226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391319.P17833975388560488226

noncomputable section

/-- A391319: Numbers that are neither cubefree nor powerful.

Offset 1, canonical program `A391319.P17833975388560488226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9779 terms. -/
def A391319 (n : ℕ) : ℤ :=
  A391319.P17833975388560488226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9779 terms. -/
def A391319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391497.P15735606706962389679

`∩[A362148(n+1), A375072(n+1)]`
-/

namespace A391497.P15735606706962389679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P15735606706962389679

noncomputable section

/-- A391497: Biquadratefree numbers that are neither cubefree nor cubefull.

Offset 1, canonical program `A391497.P15735606706962389679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5507 terms. -/
def A391497 (n : ℕ) : ℤ :=
  (A391497.P15735606706962389679.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5507 terms. -/
def A391497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393564.P18420932766056836635

`A273190(n)-A025435(n)`
-/

namespace A393564.P18420932766056836635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 n - A025435 n

end

end A393564.P18420932766056836635

noncomputable section

/-- A393564: a(n) is the number of unit squares in the square lattice, divided by 8, that have 2 vertices strictly inside and 2 vertices strictly outside the circle x^2 + y^2 = n.

Offset 0, canonical program `A393564.P18420932766056836635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393564 (n : ℕ) : ℤ :=
  A393564.P18420932766056836635.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399093.P13952728189661185523

`A051903(A367695(n+1))`
-/

namespace A399093.P13952728189661185523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A367695 (n + 1)).toNat

end

end A399093.P13952728189661185523

noncomputable section

/-- A399093: The maximum exponent in the prime factorization of the exponentially odd numbers k such that k+1 is also exponentially odd.

Offset 1, canonical program `A399093.P13952728189661185523`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A367695, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399093 (n : ℕ) : ℤ :=
  A399093.P13952728189661185523.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A367695, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399093.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400452.P2876507164572676616

`A007875(n+1)*A046660(n+1)`
-/

namespace A400452.P2876507164572676616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (n + 1) * A046660 (n + 1)

end

end A400452.P2876507164572676616

noncomputable section

/-- A400452: The number of divisors d of n such that gcd(d, n/d) is a prime power (A246655).

Offset 1, canonical program `A400452.P2876507164572676616`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007875, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400452 (n : ℕ) : ℤ :=
  A400452.P2876507164572676616.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007875, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400452.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A255763.P6358197639438820287

`record[(2*n+1)*A283265(2*n+1)]`
-/

namespace A255763.P6358197639438820287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A283265 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255763.P6358197639438820287

noncomputable section

/-- A255763: Odd numbers that are not twin primes.

Offset 1, canonical program `A255763.P6358197639438820287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255763 (n : ℕ) : ℤ :=
  A255763.P6358197639438820287.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257541.P8288380593275451200

`A061395(n+2)-∑{e}[n+2, #]`
-/

namespace A257541.P8288380593275451200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 2) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A257541.P8288380593275451200

noncomputable section

/-- A257541: The rank of the partition with Heinz number n.

Offset 2, canonical program `A257541.P8288380593275451200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A257541 (n : ℕ) : ℤ :=
  A257541.P8288380593275451200.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A257541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259936.P5139569933053793896

`A305150(∏{p}[n+1, #])`
-/

namespace A259936.P5139569933053793896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305150 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A259936.P5139569933053793896

noncomputable section

/-- A259936: Number of ways to express the integer n as a product of its unitary divisors (A034444).

Offset 1, canonical program `A259936.P5139569933053793896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259936 (n : ℕ) : ℤ :=
  A259936.P5139569933053793896.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260943.P13799869845502598163

`A246838(2*n)`
-/

namespace A260943.P13799869845502598163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246838 (2 * n)

end

end A260943.P13799869845502598163

noncomputable section

/-- A260943: Expansion of psi(-x^2) * chi(x^3) * f(x^6) in powers of x where psi(), chi(), f() are Ramanujan theta functions.

Offset 0, canonical program `A260943.P13799869845502598163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A260943 (n : ℕ) : ℤ :=
  A260943.P13799869845502598163.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A260943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260944.P7625123260759502148

`A112609(n)*A131713(n)`
-/

namespace A260944.P7625123260759502148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112609 n * A131713 n

end

end A260944.P7625123260759502148

noncomputable section

/-- A260944: Expansion of phi(-x^4) * psi(-x^6) / chi(-x^3) in powers of q where phi(), psi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A260944.P7625123260759502148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260944 (n : ℕ) : ℤ :=
  A260944.P7625123260759502148.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260944.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A267423.P14088695122642526854

`A267525(n)*A267676(n)`
-/

namespace A267423.P14088695122642526854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267525 n * A267676 n

end

end A267423.P14088695122642526854

noncomputable section

/-- A267423: Triangle read by rows giving successive states of cellular automaton generated by "Rule 133" initiated with a single ON (black) cell.

Offset 0, canonical program `A267423.P14088695122642526854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267423 (n : ℕ) : ℤ :=
  A267423.P14088695122642526854.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277321.P16767251046932141454

`A048675(A277319(n+1))`
-/

namespace A277321.P16767251046932141454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A277319 (n + 1)).toNat

end

end A277321.P16767251046932141454

noncomputable section

/-- A277321: Primes in A048675, in the order of appearance and with duplicates.

Offset 1, canonical program `A277321.P16767251046932141454`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, A277319, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277321 (n : ℕ) : ℤ :=
  A277321.P16767251046932141454.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, A277319, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277321.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277855.P13714581098425057374

`A055881(eq[A099563(n+1), A265893(n)])`
-/

namespace A277855.P13714581098425057374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A277855.P13714581098425057374

noncomputable section

/-- A277855: Irregular triangle read by rows: T(n,k) is the maximum length of the longest common subsequence of k distinct permutations of n items with n>=1 and 1<=k<=n!

Offset 1, canonical program `A277855.P13714581098425057374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A277855 (n : ℕ) : ℤ :=
  A277855.P13714581098425057374.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A277855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279622.P1478079407013024484

`lt[2, A004396(A061395(n+1))]+1`
-/

namespace A279622.P1478079407013024484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A061395 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A279622.P1478079407013024484

noncomputable section

/-- A279622: Numbers with a prime factor greater than 5.

Offset 1, canonical program `A279622.P1478079407013024484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279622 (n : ℕ) : ℤ :=
  (A279622.P1478079407013024484.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285725.P10187750537591551827

`A061395(n+1)-((n-1)%2+1)`
-/

namespace A285725.P10187750537591551827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - (Int.tmod ((n : ℤ) - 1) 2 + 1)

end

end A285725.P10187750537591551827

noncomputable section

/-- A285725: a(1) = 0; for n > 1, a(n) = A252735(n) - A000035(n).

Offset 1, canonical program `A285725.P10187750537591551827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285725 (n : ℕ) : ℤ :=
  A285725.P10187750537591551827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285725.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A297113.P441289280190658386

`A046660(n+1)+A061395(n+1)`
-/

namespace A297113.P441289280190658386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1) + A061395 (n + 1)

end

end A297113.P441289280190658386

noncomputable section

/-- A297113: a(1) = 0, a(2) = 1, after which, a(n) = a(n/2) if n is of the form 4k+2, and otherwise a(n) = 1+a(A252463(n)).

Offset 1, canonical program `A297113.P441289280190658386`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297113 (n : ℕ) : ℤ :=
  A297113.P441289280190658386.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297113.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A310520.P9429967964652236068

`abs(A008592(n)-A315186(n))`
-/

namespace A310520.P9429967964652236068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315186 n|

end

end A310520.P9429967964652236068

noncomputable section

/-- A310520: Coordination sequence Gal.6.331.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310520.P9429967964652236068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A310520 (n : ℕ) : ℤ :=
  A310520.P9429967964652236068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A310520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311165.P16138864998668461834

`A008574(n)+A313803(n)-A313799(n)`
-/

namespace A311165.P16138864998668461834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A313803 n - A313799 n)

end

end A311165.P16138864998668461834

noncomputable section

/-- A311165: Coordination sequence Gal.5.78.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311165.P16138864998668461834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A311165 (n : ℕ) : ℤ :=
  A311165.P16138864998668461834.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A311165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311549.P16203180800236196570

`A314742(n)-A004525(A004396(n))`
-/

namespace A311549.P16203180800236196570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314742 n - A004525 (A004396 n).toNat

end

end A311549.P16203180800236196570

noncomputable section

/-- A311549: Coordination sequence Gal.6.132.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311549.P16203180800236196570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. -/
def A311549 (n : ℕ) : ℤ :=
  A311549.P16203180800236196570.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. -/
def A311549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311907.P15737395164403453455

`A313894(n)-(A313803(n)-A313799(n)+n)`
-/

namespace A311907.P15737395164403453455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n - (A313803 n - A313799 n + (n : ℤ))

end

end A311907.P15737395164403453455

noncomputable section

/-- A311907: Coordination sequence Gal.5.78.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311907.P15737395164403453455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A311907 (n : ℕ) : ℤ :=
  A311907.P15737395164403453455.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A311907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314140.P15451870942694101110

`A315695(n)-A004525(A315695(n)-A313772(n))`
-/

namespace A314140.P15451870942694101110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315695 n - A004525 (A315695 n - A313772 n).toNat

end

end A314140.P15451870942694101110

noncomputable section

/-- A314140: Coordination sequence Gal.6.633.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314140.P15451870942694101110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A314140 (n : ℕ) : ℤ :=
  A314140.P15451870942694101110.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A314140.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A317989.P12307513283101322343

`2^A317991(n+2)`
-/

namespace A317989.P12307513283101322343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A317991 (n + 2) : ℤ)

end

end A317989.P12307513283101322343

noncomputable section

/-- A317989: Number of genera of the real quadratic field with discriminant A003658(n), n >= 2.

Offset 2, canonical program `A317989.P12307513283101322343`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317991, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317989 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A317989.P12307513283101322343.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317991, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317989.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323701.P14769873866229796665

`Δ[A061395(2*A076873(n+1))]`
-/

namespace A323701.P14769873866229796665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A076873 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323701.P14769873866229796665

noncomputable section

/-- A323701: a(n) is the number of primes p such that A007504(n) <= p < A007504(n+1).

Offset 1, canonical program `A323701.P14769873866229796665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A323701 (n : ℕ) : ℤ :=
  A323701.P14769873866229796665.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A323701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326846.P13366840871095764170

`A001222(n+1)*A061395(n+1)`
-/

namespace A326846.P13366840871095764170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A061395 (n + 1)

end

end A326846.P13366840871095764170

noncomputable section

/-- A326846: Length times maximum of the integer partition with Heinz number n.

Offset 1, canonical program `A326846.P13366840871095764170`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326846 (n : ℕ) : ℤ :=
  A326846.P13366840871095764170.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326846.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331281.P996979535116224856

`A057427(C(A086436(n+1), A061395(n+1)))`
-/

namespace A331281.P996979535116224856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Nat.choose (A086436 (n + 1)).toNat (A061395 (n + 1)).toNat)

end

end A331281.P996979535116224856

noncomputable section

/-- A331281: If A061395(n) <= A001222(n), then a(n) = 1, otherwise a(n) = 0.

Offset 1, canonical program `A331281.P996979535116224856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331281 (n : ℕ) : ℤ :=
  A331281.P996979535116224856.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331282.P7456881985685693272

`char[lt[A061395(n+1), ∑{e}[n+1, #]]]`
-/

namespace A331282.P7456881985685693272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A331282.P7456881985685693272

noncomputable section

/-- A331282: If A061395(n) < A001222(n), then a(n) = 1, otherwise a(n) = 0.

Offset 1, canonical program `A331282.P7456881985685693272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331282 (n : ℕ) : ℤ :=
  (A331282.P7456881985685693272.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333751.P276282366171106930

`A060866(n+1)-(A097974(n+1)+A070038(n+1))`
-/

namespace A333751.P276282366171106930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060866 (n + 1) - (A097974 (n + 1) + A070038 (n + 1))

end

end A333751.P276282366171106930

noncomputable section

/-- A333751: Sum of nonprime divisors of n that are <= sqrt(n).

Offset 1, canonical program `A333751.P276282366171106930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333751 (n : ℕ) : ℤ :=
  A333751.P276282366171106930.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334469.P12018164679622748302

`record[3-A000040(A061395(n+2))+n]`
-/

namespace A334469.P12018164679622748302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000040 (A061395 (n + 2)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334469.P12018164679622748302

noncomputable section

/-- A334469: Indices of zero or positive first differences in A217287.

Offset 1, canonical program `A334469.P12018164679622748302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5504 terms. -/
def A334469 (n : ℕ) : ℤ :=
  A334469.P12018164679622748302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5504 terms. -/
def A334469.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A353351.P1500515307686791628

`A000005(n+1)-A353352(n+1)`
-/

namespace A353351.P1500515307686791628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A353352 (n + 1)

end

end A353351.P1500515307686791628

noncomputable section

/-- A353351: Number of divisors d of n for which A048675(d) is not a multiple of 3.

Offset 1, canonical program `A353351.P1500515307686791628`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353352, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353351 (n : ℕ) : ℤ :=
  A353351.P1500515307686791628.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353352, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353351.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362594.P5891847164442960394

`filter[A378767(n+1), A295316(#)]`
-/

namespace A362594.P5891847164442960394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A362594.P5891847164442960394

noncomputable section

/-- A362594: Exponentially odd numbers that are neither squarefree nor prime powers.

Offset 1, canonical program `A362594.P5891847164442960394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5751 terms. -/
def A362594 (n : ℕ) : ℤ :=
  A362594.P5891847164442960394.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5751 terms. -/
def A362594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365174.P1377516069112288599

`∑{d}[n+1, A254503(#)*A365336((n+1)/#)]`
-/

namespace A365174.P1377516069112288599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254503 d * A365336 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365174.P1377516069112288599

noncomputable section

/-- A365174: The sum of divisors d of n such that gcd(d, n/d) is an exponentially odd number (A268335).

Offset 1, canonical program `A365174.P1377516069112288599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365174 (n : ℕ) : ℤ :=
  A365174.P1377516069112288599.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366562.P1526609418940830950

`∏{p}[n+1, 1-#]*A229297((n+1)²/∏{p}[n+1, #])`
-/

namespace A366562.P1526609418940830950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ))) * A229297 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A366562.P1526609418940830950

noncomputable section

/-- A366562: a(n) = Sum_{k=1..n} A366561(n,k)*A023900(k)/n.

Offset 1, canonical program `A366562.P1526609418940830950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A366562 (n : ℕ) : ℤ :=
  A366562.P1526609418940830950.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A366562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366605.P16691471640151617697

`A046799(2*n)`
-/

namespace A366605.P16691471640151617697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 (2 * n)

end

end A366605.P16691471640151617697

noncomputable section

/-- A366605: Number of distinct prime divisors of 4^n + 1.

Offset 0, canonical program `A366605.P16691471640151617697`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366605 (n : ℕ) : ℤ :=
  A366605.P16691471640151617697.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366605.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366655.P3595836475585718572

`A046799(3*n)`
-/

namespace A366655.P3595836475585718572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 (3 * n)

end

end A366655.P3595836475585718572

noncomputable section

/-- A366655: Number of distinct prime divisors of 8^n + 1.

Offset 0, canonical program `A366655.P3595836475585718572`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366655 (n : ℕ) : ℤ :=
  A366655.P3595836475585718572.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366655.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366785.P721477122274016102

`gcd(A001222(n+1), A061395(n+1))`
-/

namespace A366785.P721477122274016102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (n + 1)) (A061395 (n + 1))

end

end A366785.P721477122274016102

noncomputable section

/-- A366785: Greatest common divisor of the number of prime factors (counted with multiplicity, A001222) and the greatest prime index (A061395) of n.

Offset 1, canonical program `A366785.P721477122274016102`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366785 (n : ℕ) : ℤ :=
  (A366785.P721477122274016102.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366785.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367406.P6026648702494217252

`A268335(n+1)*A367417(n+1)`
-/

namespace A367406.P6026648702494217252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1) * A367417 (n + 1)

end

end A367406.P6026648702494217252

noncomputable section

/-- A367406: The exponentially odd numbers (A268335) multiplied by their squarefree kernels (A007947).

Offset 1, canonical program `A367406.P6026648702494217252`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, A367417, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A367406 (n : ℕ) : ℤ :=
  A367406.P6026648702494217252.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, A367417, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A367406.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370082.P6772525730967909071

`7*A004613(n+1)-3`
-/

namespace A370082.P6772525730967909071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A004613 (n + 1) - 3

end

end A370082.P6772525730967909071

noncomputable section

/-- A370082: The number of square lattice nodes inside the n-th largest octagon with angles 3*Pi/4, along the perimeter of which there are only 8 lattice nodes - at the vertices of the octagon.

Offset 1, canonical program `A370082.P6772525730967909071`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004613, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370082 (n : ℕ) : ℤ :=
  A370082.P6772525730967909071.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004613, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370082.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372442.P7915193120500991903

`A070939(n+2)-A061395(n+2)`
-/

namespace A372442.P7915193120500991903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 2) - A061395 (n + 2)

end

end A372442.P7915193120500991903

noncomputable section

/-- A372442: (Greatest binary index of n) minus (greatest prime index of n).

Offset 2, canonical program `A372442.P7915193120500991903`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372442 (n : ℕ) : ℤ :=
  A372442.P7915193120500991903.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372442.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372771.P4411749344407229713

`comp[A004273(comp[A004613(n+1)])]`
-/

namespace A372771.P4411749344407229713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A372771.P4411749344407229713

noncomputable section

/-- A372771: Numbers m such that the congruence x^(m+1) == m (mod m+1) is solvable.

Offset 1, canonical program `A372771.P4411749344407229713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372771 (n : ℕ) : ℤ :=
  (A372771.P4411749344407229713.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381542.P14309629720636309362

`eq[A051903(n+1), A061395(2*(n+1))]+1`
-/

namespace A381542.P14309629720636309362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A381542.P14309629720636309362

noncomputable section

/-- A381542: Numbers > 1 whose greatest prime index equals their greatest prime multiplicity.

Offset 1, canonical program `A381542.P14309629720636309362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A381542 (n : ℕ) : ℤ :=
  (A381542.P14309629720636309362.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A381542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386018.P6227341428964575611

`∩[A160337(n+1), A386342(n+1)]`
-/

namespace A386018.P6227341428964575611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386018.P6227341428964575611

noncomputable section

/-- A386018: Primes having only {0, 1, 2, 5} as digits.

Offset 1, canonical program `A386018.P6227341428964575611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A386018 (n : ℕ) : ℤ :=
  (A386018.P6227341428964575611.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A386018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391183.P5927529628571283999

`char[A002479(n+1)]`
-/

namespace A391183.P5927529628571283999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A391183.P5927529628571283999

noncomputable section

/-- A391183: a(n) = 1 if n is a number of the form x^2 + 2*y^2, and otherwise 0.

Offset 0, canonical program `A391183.P5927529628571283999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391183 (n : ℕ) : ℤ :=
  (A391183.P5927529628571283999.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395545.P10009443539781568918

`A035317(A007401(n+1))`
-/

namespace A395545.P10009443539781568918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (A007401 (n + 1)).toNat

end

end A395545.P10009443539781568918

noncomputable section

/-- A395545: Square array A(n,k), n>=1, k>=1, read by descending antidiagonals A(n,k) = Sum_{i=0..k} binomial(n-i, i)*binomial(k+i, 2*i+1).

Offset 1, canonical program `A395545.P10009443539781568918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A395545 (n : ℕ) : ℤ :=
  A395545.P10009443539781568918.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A395545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265892.P3280630500737208173

`A265893(A265609(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265892.P3280630500737208173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265893 (A265609 n).toNat

end

end A265892.P3280630500737208173

noncomputable section

/-- A265892: Array read by ascending antidiagonals: A(n,k) = A265893(A265609(n,k)), with n as row >= 0, k as column >= 0; the number of significant digits counted without trailing zeros in the factorial base representation of rising factorial n^(k) = (n+k-1)!/(n-1)!.

Offset 0, canonical program `A265892.P3280630500737208173`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265609, A265893, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A265892 (n : ℕ) : ℤ :=
  A265892.P3280630500737208173.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265609, A265893, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A265892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A313023.P12828604169227298714

`A004525(A004396(n))+A313228(n)-A004396(n)`
-/

namespace A313023.P12828604169227298714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A313228 n - A004396 n)

end

end A313023.P12828604169227298714

noncomputable section

/-- A313023: Coordination sequence Gal.6.130.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313023.P12828604169227298714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2468 terms. -/
def A313023 (n : ℕ) : ℤ :=
  A313023.P12828604169227298714.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2468 terms. -/
def A313023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315410.P5887304458522211187

`abs(A008592(n)-A313259(n))`
-/

namespace A315410.P5887304458522211187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313259 n|

end

end A315410.P5887304458522211187

noncomputable section

/-- A315410: Coordination sequence Gal.6.322.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315410.P5887304458522211187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A315410 (n : ℕ) : ℤ :=
  A315410.P5887304458522211187.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A315410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314165.P12623348579880038257

`A310465(n)+A004525(A008458(n)-A310465(n))`
-/

namespace A314165.P12623348579880038257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310465 n + A004525 (A008458 n - A310465 n).toNat

end

end A314165.P12623348579880038257

noncomputable section

/-- A314165: Coordination sequence Gal.5.307.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314165.P12623348579880038257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A314165 (n : ℕ) : ℤ :=
  A314165.P12623348579880038257.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A314165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315254.P4856332562113004887

`abs(A008592(n)-A310465(n))`
-/

namespace A315254.P4856332562113004887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310465 n|

end

end A315254.P4856332562113004887

noncomputable section

/-- A315254: Coordination sequence Gal.6.232.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315254.P4856332562113004887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. -/
def A315254 (n : ℕ) : ℤ :=
  A315254.P4856332562113004887.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. -/
def A315254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256449.P3394376339508603245

`A256447(n+1)-A256448(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256449.P3394376339508603245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256447 (n + 1) - A256448 (n + 1)

end

end A256449.P3394376339508603245

noncomputable section

/-- A256449: a(n) = A256447(n) - A256448(n).

Offset 1, canonical program `A256449.P3394376339508603245`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256447, A256448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A256449 (n : ℕ) : ℤ :=
  A256449.P3394376339508603245.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256447, A256448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A256449.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256468.P15833489412511418299

`A256447(n+1)-1`
-/

namespace A256468.P15833489412511418299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256447 (n + 1) - 1

end

end A256468.P15833489412511418299

noncomputable section

/-- A256468: Number of primes between prime(n)^2 and prime(n)*prime(n+1).

Offset 1, canonical program `A256468.P15833489412511418299`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256447, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256468 (n : ℕ) : ℤ :=
  A256468.P15833489412511418299.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256447, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256469.P956244140118081997

`A256448(n+1)+2`
-/

namespace A256469.P956244140118081997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256448 (n + 1) + 2

end

end A256469.P956244140118081997

noncomputable section

/-- A256469: Number of primes between prime(n)*prime(n+1) and prime(n+1)^2.

Offset 1, canonical program `A256469.P956244140118081997`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256469 (n : ℕ) : ℤ :=
  A256469.P956244140118081997.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256469.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257991.P9003885035180655311

`∑{d}[n+1, and(1, A000720(A014963(#)))]`
-/

namespace A257991.P9003885035180655311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land 1 (A000720 (A014963 d).toNat)

end

end A257991.P9003885035180655311

noncomputable section

/-- A257991: Number of odd parts in the partition having Heinz number n.

Offset 1, canonical program `A257991.P9003885035180655311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257991 (n : ℕ) : ℤ :=
  A257991.P9003885035180655311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258996.P1766384816688748904

`A059893(A258746(A059893(n+1)))`
-/

namespace A258996.P1766384816688748904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A258746 (A059893 (n + 1)).toNat).toNat

end

end A258996.P1766384816688748904

noncomputable section

/-- A258996: Permutation of the positive integers: this permutation transforms the enumeration system of positive irreducible fractions A002487/A002487' (Calkin-Wilf) into the enumeration system A162911/A162912 (Drib), and vice versa.

Offset 1, canonical program `A258996.P1766384816688748904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A258996 (n : ℕ) : ℤ :=
  A258996.P1766384816688748904.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A258996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260379.P15405294900718504998

`∩[A091633(n+1), A386025(n+1)]`
-/

namespace A260379.P15405294900718504998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260379.P15405294900718504998

noncomputable section

/-- A260379: Primes having only {1, 3, 7} as digits.

Offset 1, canonical program `A260379.P15405294900718504998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1552 terms. -/
def A260379 (n : ℕ) : ℤ :=
  (A260379.P15405294900718504998.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1552 terms. -/
def A260379.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A291564.P8545347326158695171

`A224713(n+1)+A101264(n)`
-/

namespace A291564.P8545347326158695171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224713 (n + 1) + A101264 n

end

end A291564.P8545347326158695171

noncomputable section

/-- A291564: Number of partitions of 2n into two parts such that one part is prime and the other is nonprime.

Offset 1, canonical program `A291564.P8545347326158695171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A291564 (n : ℕ) : ℤ :=
  A291564.P8545347326158695171.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A291564.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A324909.P7075313633679390802

`sqrt(A324899(n+1))`
-/

namespace A324909.P7075313633679390802
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A324899 (n + 1) : ℝ)

end

end A324909.P7075313633679390802

noncomputable section

/-- A324909: Odd numbers k for which sigma(k^2) == 3 (mod 4).

Offset 1, canonical program `A324909.P7075313633679390802`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324899, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324909 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A324909.P7075313633679390802.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324899, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324909.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A333046.P18395749149837300678

`(n+1)*A325446(n+1)`
-/

namespace A333046.P18395749149837300678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A325446 (n + 1)

end

end A333046.P18395749149837300678

noncomputable section

/-- A333046: a(1) = 1; a(n) = n * Sum_{d|n, d < n, gcd(d, n/d) = 1} a(d) / d.

Offset 1, canonical program `A333046.P18395749149837300678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333046 (n : ℕ) : ℤ :=
  A333046.P18395749149837300678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333100.P598868710935215718

`A005277(eq[2, A005277(n+2)-A005277(n+1)]+1)`
-/

namespace A333100.P598868710935215718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 2) - A005277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A333100.P598868710935215718

noncomputable section

/-- A333100: Even numbers k such that both k and k + 2 are nontotients (A005277).

Offset 1, canonical program `A333100.P598868710935215718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333100 (n : ℕ) : ℤ :=
  A333100.P598868710935215718.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340323.P12139202470426285331

`A048250(n+1)*A326297(n+1)`
-/

namespace A340323.P12139202470426285331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) * A326297 (n + 1)

end

end A340323.P12139202470426285331

noncomputable section

/-- A340323: Multiplicative with a(p^e) = (p + 1) * (p - 1)^(e - 1).

Offset 1, canonical program `A340323.P12139202470426285331`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326297, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340323 (n : ℕ) : ℤ :=
  A340323.P12139202470426285331.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326297, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340323.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340346.P2733100525772459955

`A183091(n+1)/A183091(A111701(n+1))`
-/

namespace A340346.P2733100525772459955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183091 (n + 1) : ℚ) / (A183091 (A111701 (n + 1)).toNat : ℚ)

end

end A340346.P2733100525772459955

noncomputable section

/-- A340346: The largest divisor of n that is a term of A055932 (numbers divisible by all primes smaller than their largest prime factor).

Offset 1, canonical program `A340346.P2733100525772459955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A340346 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340346.P2733100525772459955.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A340346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343303.P7519863497709517625

`A231089(n+1)+A033999(p?[A016777(n)])`
-/

namespace A343303.P7519863497709517625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231089 (n + 1) + A033999 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A343303.P7519863497709517625

noncomputable section

/-- A343303: Numbers in A231626 but not in A343302; first of 5 consecutive deficient numbers in arithmetic progression with common difference > 1.

Offset 1, canonical program `A343303.P7519863497709517625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 611 terms. -/
def A343303 (n : ℕ) : ℤ :=
  A343303.P7519863497709517625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 611 terms. -/
def A343303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343504.P12989595719974363290

`lcm(a(A257687(n)), A099563(n))` with `a(0)=1`
-/

namespace A343504.P12989595719974363290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (A257687 n).toNat : ℤ) (A099563 n)

end

end A343504.P12989595719974363290

noncomputable section

/-- A343504: a(n) is the least common multiple of the nonzero digits in factorial base expansion of n.

Offset 0, canonical program `A343504.P12989595719974363290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343504 (n : ℕ) : ℤ :=
  (A343504.P12989595719974363290.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349340.P12937323301373999494

`A076479(n+1)*A326297(n+1)`
-/

namespace A349340.P12937323301373999494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (n + 1) * A326297 (n + 1)

end

end A349340.P12937323301373999494

noncomputable section

/-- A349340: Dirichlet inverse of A003557, where A003557 is multiplicative with a(p^e) = p^(e-1).

Offset 1, canonical program `A349340.P12937323301373999494`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326297, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349340 (n : ℕ) : ℤ :=
  A349340.P12937323301373999494.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326297, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349340.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350389.P11774881852585828410

`(n+1)/A350388(n+1)`
-/

namespace A350389.P11774881852585828410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A350388 (n + 1) : ℚ)

end

end A350389.P11774881852585828410

noncomputable section

/-- A350389: a(n) is the largest unitary divisor of n that is an exponentially odd number (A268335).

Offset 1, canonical program `A350389.P11774881852585828410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350389 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A350389.P11774881852585828410.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350389.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351434.P7270461859985996856

`∏{p}[n+1, 1-#]²*A326297(n+1)`
-/

namespace A351434.P7270461859985996856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ))) ^ 2 * A326297 (n + 1)

end

end A351434.P7270461859985996856

noncomputable section

/-- A351434: If n = Product (p_j^k_j) then a(n) = Product ((p_j - 1)^(k_j + 1)).

Offset 1, canonical program `A351434.P7270461859985996856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351434 (n : ℕ) : ℤ :=
  A351434.P7270461859985996856.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351568.P13453391376652961444

`A000203(A350388(n+1))`
-/

namespace A351568.P13453391376652961444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A350388 (n + 1)).toNat

end

end A351568.P13453391376652961444

noncomputable section

/-- A351568: Sum of the divisors of the largest unitary divisor of n that is a square.

Offset 1, canonical program `A351568.P13453391376652961444`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351568 (n : ℕ) : ℤ :=
  A351568.P13453391376652961444.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351568.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351572.P4940805872886659141

`A003415(A350388(n+1))`
-/

namespace A351572.P4940805872886659141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A350388 (n + 1)).toNat

end

end A351572.P4940805872886659141

noncomputable section

/-- A351572: Arithmetic derivative of the largest unitary divisor of n that is a square.

Offset 1, canonical program `A351572.P4940805872886659141`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351572 (n : ℕ) : ℤ :=
  A351572.P4940805872886659141.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351572.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352824.P9497561774546337623

`A001222(gcd(A087436(n+1), A130727(n)))`
-/

namespace A352824.P9497561774546337623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A087436 (n + 1)) (A130727 n))

end

end A352824.P9497561774546337623

noncomputable section

/-- A352824: Number of fixed points y(i) = i, where y is the integer partition with Heinz number n.

Offset 1, canonical program `A352824.P9497561774546337623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A352824 (n : ℕ) : ℤ :=
  A352824.P9497561774546337623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A352824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353680.P13504511753846744607

`A000035(n+1)*A353637(n+1)`
-/

namespace A353680.P13504511753846744607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A353637 (n + 1)

end

end A353680.P13504511753846744607

noncomputable section

/-- A353680: a(n) = 1 if n is odd and phi(sigma(n)) is equal to phi(n), otherwise 0.

Offset 1, canonical program `A353680.P13504511753846744607`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353637, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353680 (n : ℕ) : ℤ :=
  A353680.P13504511753846744607.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353637, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353680.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353682.P1510457161453438165

`A353637(n+1)+A353681(n+1)`
-/

namespace A353682.P1510457161453438165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353637 (n + 1) + A353681 (n + 1)

end

end A353682.P1510457161453438165

noncomputable section

/-- A353682: a(n) = 1 if phi(sigma(n)) >= phi(n), otherwise 0.

Offset 1, canonical program `A353682.P1510457161453438165`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353637, A353681, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353682 (n : ℕ) : ℤ :=
  A353682.P1510457161453438165.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353637, A353681, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353682.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353683.P12717263372713688347

`lt[0, A353681(n+1)]+1`
-/

namespace A353683.P12717263372713688347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353681 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A353683.P12717263372713688347

noncomputable section

/-- A353683: Numbers k for which phi(sigma(k)) > phi(k).

Offset 1, canonical program `A353683.P12717263372713688347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353683 (n : ℕ) : ℤ :=
  (A353683.P12717263372713688347.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353683.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A356448.P2647750679895605834

`eq[n%2, A074465(n+1)]+1`
-/

namespace A356448.P2647750679895605834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074465 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A356448.P2647750679895605834

noncomputable section

/-- A356448: Even numbers k such that k^2 is in A014567.

Offset 1, canonical program `A356448.P2647750679895605834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356448 (n : ℕ) : ℤ :=
  (A356448.P2647750679895605834.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356452.P6260513560774199967

`2*(lt[1, A074465(2*(n+1))]+1)`
-/

namespace A356452.P6260513560774199967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074465 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A356452.P6260513560774199967

noncomputable section

/-- A356452: Even numbers k such that k^2 is not in A014567; complement of A356448 in the even numbers.

Offset 1, canonical program `A356452.P6260513560774199967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9961 terms. -/
def A356452 (n : ℕ) : ℤ :=
  (A356452.P6260513560774199967.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9961 terms. -/
def A356452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359042.P13411366105931231401

`A230877(n)+A080791(n)`
-/

namespace A359042.P13411366105931231401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 n + A080791 n

end

end A359042.P13411366105931231401

noncomputable section

/-- A359042: Sum of partial sums of the n-th composition in standard order (A066099).

Offset 0, canonical program `A359042.P13411366105931231401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A359042 (n : ℕ) : ℤ :=
  A359042.P13411366105931231401.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A359042.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A360540.P10431117392450693366

`(n+1)/A360539(n+1)`
-/

namespace A360540.P10431117392450693366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A360539 (n + 1) : ℚ)

end

end A360540.P10431117392450693366

noncomputable section

/-- A360540: a(n) is the cubefull part of n: the largest divisor of n that is a cubefull number (A036966).

Offset 1, canonical program `A360540.P10431117392450693366`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360539, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360540 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A360540.P10431117392450693366.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360539, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360540.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365859.P7072414971746195033

`2*A365857(n+1)-A032198(n+1)`
-/

namespace A365859.P7072414971746195033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A365857 (n + 1) - A032198 (n + 1)

end

end A365859.P7072414971746195033

noncomputable section

/-- A365859: Number of self-dual cyclic n-color compositions.

Offset 1, canonical program `A365859.P7072414971746195033`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032198, A365857, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365859 (n : ℕ) : ℤ :=
  A365859.P7072414971746195033.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032198, A365857, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365859.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366147.P10283015225632227018

`A000005(A360539(n+1))`
-/

namespace A366147.P10283015225632227018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A360539 (n + 1)).toNat

end

end A366147.P10283015225632227018

noncomputable section

/-- A366147: The number of divisors of the cubefree part of n (A360539).

Offset 1, canonical program `A366147.P10283015225632227018`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360539, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366147 (n : ℕ) : ℤ :=
  A366147.P10283015225632227018.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360539, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366147.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367989.P10767245961528974005

`A035316(A350388(n+1))`
-/

namespace A367989.P10767245961528974005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (A350388 (n + 1)).toNat

end

end A367989.P10767245961528974005

noncomputable section

/-- A367989: The sum of square divisors of the largest unitary divisor of n that is a square.

Offset 1, canonical program `A367989.P10767245961528974005`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, A350388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A367989 (n : ℕ) : ℤ :=
  A367989.P10767245961528974005.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, A350388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A367989.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A368884.P4906600944682773301

`A360539(A057521(n+1))`
-/

namespace A368884.P4906600944682773301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (A057521 (n + 1)).toNat

end

end A368884.P4906600944682773301

noncomputable section

/-- A368884: The largest unitary divisor of n that is the square of a squarefree number (A062503).

Offset 1, canonical program `A368884.P4906600944682773301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368884 (n : ℕ) : ℤ :=
  A368884.P4906600944682773301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368884.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A375033.P7202399145950353671

`A051903(A350388(n+1))`
-/

namespace A375033.P7202399145950353671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A350388 (n + 1)).toNat

end

end A375033.P7202399145950353671

noncomputable section

/-- A375033: The maximum even exponent in the prime factorization of n, or 0 if no such exponent exists.

Offset 1, canonical program `A375033.P7202399145950353671`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A350388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375033 (n : ℕ) : ℤ :=
  A375033.P7202399145950353671.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A350388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375033.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375847.P17445799609961011630

`A051903(A360539(n+1))`
-/

namespace A375847.P17445799609961011630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A360539 (n + 1)).toNat

end

end A375847.P17445799609961011630

noncomputable section

/-- A375847: The maximum exponent in the prime factorization of the largest unitary cubefree divisor of n.

Offset 1, canonical program `A375847.P17445799609961011630`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A360539, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375847 (n : ℕ) : ℤ :=
  A375847.P17445799609961011630.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A360539, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375847.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A380164.P6797350675087028144

`A000010(A350388(n+1))`
-/

namespace A380164.P6797350675087028144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A350388 (n + 1)).toNat

end

end A380164.P6797350675087028144

noncomputable section

/-- A380164: a(n) is the value of the Euler totient function when applied to the largest unitary divisor of n that is a square.

Offset 1, canonical program `A380164.P6797350675087028144`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380164 (n : ℕ) : ℤ :=
  A380164.P6797350675087028144.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380164.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380549.P9090149559368070588

`lt[A172187(n+2), A172187(A364085(n+1))]`
-/

namespace A380549.P9090149559368070588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172187 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172187 (A364085 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380549.P9090149559368070588

noncomputable section

/-- A380549: List of numbers of the form i + 3*j + 4*i*j for i, j >= 1.

Offset 1, canonical program `A380549.P9090149559368070588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4672 terms. -/
def A380549 (n : ℕ) : ℤ :=
  (A380549.P9090149559368070588.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4672 terms. -/
def A380549.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A382903.P2846374962855123125

`A360539(A046100(n+1))`
-/

namespace A382903.P2846374962855123125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (A046100 (n + 1)).toNat

end

end A382903.P2846374962855123125

noncomputable section

/-- A382903: The largest cubefree unitary divisor of the n-th biquadratefree number.

Offset 1, canonical program `A382903.P2846374962855123125`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A360539, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382903 (n : ℕ) : ℤ :=
  A382903.P2846374962855123125.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A360539, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382903.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383764.P4000777454404002987

`A071974((n+1)*A365683(n+1))`
-/

namespace A383764.P4000777454404002987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 ((n + 1 : ℤ) * A365683 (n + 1)).toNat

end

end A383764.P4000777454404002987

noncomputable section

/-- A383764: The largest unitary divisor of n that is an exponentially squarefree number.

Offset 1, canonical program `A383764.P4000777454404002987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A383764 (n : ℕ) : ℤ :=
  A383764.P4000777454404002987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A383764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385045.P3641014629195364561

`A034448(A065330(n+1))`
-/

namespace A385045.P3641014629195364561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A065330 (n + 1)).toNat

end

end A385045.P3641014629195364561

noncomputable section

/-- A385045: The sum of the unitary divisors of n that are 5-rough numbers (A007310).

Offset 1, canonical program `A385045.P3641014629195364561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385045 (n : ℕ) : ℤ :=
  A385045.P3641014629195364561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392055.P15206338133621600335

`A014963(A354031(n+1)+n+1)`
-/

namespace A392055.P15206338133621600335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A354031 (n + 1) + (n + 1 : ℤ)).toNat

end

end A392055.P15206338133621600335

noncomputable section

/-- A392055: a(n) = p if n = p^k is a perfect power of either a ramified or inert prime in the Gaussian integers and 1 otherwise.

Offset 1, canonical program `A392055.P15206338133621600335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392055 (n : ℕ) : ℤ :=
  A392055.P15206338133621600335.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395792.P15440842927184700187

`∩[A087695(n+1), A392199(n+1)]`
-/

namespace A395792.P15440842927184700187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395792.P15440842927184700187

noncomputable section

/-- A395792: Numbers k such that k-3 and k+3 are prime and gcd(k, sigma(k)) is prime.

Offset 1, canonical program `A395792.P15440842927184700187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 522 terms. -/
def A395792 (n : ℕ) : ℤ :=
  (A395792.P15440842927184700187.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 522 terms. -/
def A395792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399714.P16102988508626292463

`A000225(n+1)-A178841(n+2)`
-/

namespace A399714.P16102988508626292463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A178841 (n + 2)

end

end A399714.P16102988508626292463

noncomputable section

/-- A399714: a(n) = -1 - A010815(n-1) - Sum_{k=1..n-2} A010815(k)*2^(n-2-k) for n >= 3.

Offset 3, canonical program `A399714.P16102988508626292463`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A178841, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399714 (n : ℕ) : ℤ :=
  A399714.P16102988508626292463.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A178841, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399714.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400143.P16016371540924763515

`A000005(n+1)*A037445(n+1)/A400142(n+1)`
-/

namespace A400143.P16016371540924763515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A037445 (n + 1) : ℚ) / (A400142 (n + 1) : ℚ)

end

end A400143.P16016371540924763515

noncomputable section

/-- A400143: The number of divisors d of n such that gcid(d, n/d) is a power of 2, where gcid is the greatest common infinitary divisor.

Offset 1, canonical program `A400143.P16016371540924763515`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037445, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400143 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A400143.P16016371540924763515.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037445, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400143.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257511.P4810453012359406512

`A265333(n)+a(A257687(n))` with `a(0)=0, a(1)=1`
-/

namespace A257511.P4810453012359406512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A265333 n + a (A257687 n).toNat

end

end A257511.P4810453012359406512

noncomputable section

/-- A257511: Number of 1's in factorial base representation of n (A007623).

Offset 0, canonical program `A257511.P4810453012359406512`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257687, A265333, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A257511 (n : ℕ) : ℤ :=
  A257511.P4810453012359406512.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257687, A265333, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A257511.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257686.P2460600263462736737

`n-A257687(n)`
-/

namespace A257686.P2460600263462736737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A257687 n

end

end A257686.P2460600263462736737

noncomputable section

/-- A257686: a(0) = 0, for n >= 1: a(n) = A099563(n) * A048764(n).

Offset 0, canonical program `A257686.P2460600263462736737`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257687, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257686 (n : ℕ) : ℤ :=
  A257686.P2460600263462736737.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257687, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257686.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259067.P7320704414048657284

`A007953(A033549(n+1))`
-/

namespace A259067.P7320704414048657284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A033549 (n + 1)).toNat

end

end A259067.P7320704414048657284

noncomputable section

/-- A259067: Sum of digits of Honaker primes (A033548).

Offset 1, canonical program `A259067.P7320704414048657284`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A033549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A259067 (n : ℕ) : ℤ :=
  A259067.P7320704414048657284.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A033549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A259067.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261081.P15491907119103926316

`A219642(A000045(n+2)-1)`
-/

namespace A261081.P15491907119103926316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219642 (A000045 (n + 2) - 1).toNat

end

end A261081.P15491907119103926316

noncomputable section

/-- A261081: a(n) = number of steps required to reach 0 from F(n+2)-1 by repeatedly subtracting from a natural number the number of ones in its Zeckendorf representation. Here F(n) = the n-th Fibonacci number, F(0) = 0, F(1) = 1, F(2) = 1, F(3) = 2, ...

Offset 0, canonical program `A261081.P15491907119103926316`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261081 (n : ℕ) : ℤ :=
  A261081.P15491907119103926316.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261081.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261091.P14200442498164629939

`A219642(A000045(n+2))-A219642(A000045(n+1))`
-/

namespace A261091.P14200442498164629939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219642 (A000045 (n + 2)).toNat - A219642 (A000045 (n + 1)).toNat

end

end A261091.P14200442498164629939

noncomputable section

/-- A261091: a(n) = number of steps required to reach F(n+1)-1 from F(n+2)-1 by repeatedly subtracting from a natural number the number of ones in its Zeckendorf representation. Here F(n) = the n-th Fibonacci number, F(0) = 0, F(1) = 1, F(2) = 1, F(3) = 2, ...

Offset 0, canonical program `A261091.P14200442498164629939`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261091 (n : ℕ) : ℤ :=
  A261091.P14200442498164629939.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261091.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A265510.P3655784241704673795

`A007088(A265509(n))`
-/

namespace A265510.P3655784241704673795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A265509 n).toNat

end

end A265510.P3655784241704673795

noncomputable section

/-- A265510: a(n) = largest base-2 palindrome m <= 2n+1 such that every base-2 digit of m is <= the corresponding digit of 2n+1; m is written in base 2.

Offset 0, canonical program `A265510.P3655784241704673795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A265510 (n : ℕ) : ℤ :=
  A265510.P3655784241704673795.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A265510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267357.P14963580651497646829

`A269174(a(n-1))` with `a(0)=1`
-/

namespace A267357.P14963580651497646829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269174 (a (n - 1)).toNat

end

end A267357.P14963580651497646829

noncomputable section

/-- A267357: Decimal representation of the n-th iteration of the "Rule 124" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267357.P14963580651497646829`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269174, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267357 (n : ℕ) : ℤ :=
  A267357.P14963580651497646829.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269174, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267357.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277780.P4452864541001446991

`A050985(n+1)*A000578(1+A048766(A008834(n+1)))`
-/

namespace A277780.P4452864541001446991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1) * A000578 (1 + A048766 (A008834 (n + 1)).toNat).toNat

end

end A277780.P4452864541001446991

noncomputable section

/-- A277780: a(n) is the least k > n such that n*k^2 is a cube.

Offset 1, canonical program `A277780.P4452864541001446991`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008834, A050985, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277780 (n : ℕ) : ℤ :=
  A277780.P4452864541001446991.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008834, A050985, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277780.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277802.P17096893089026203100

`A048798(A004709(n+1))`
-/

namespace A277802.P17096893089026203100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (A004709 (n + 1)).toNat

end

end A277802.P17096893089026203100

noncomputable section

/-- A277802: The least k > 0 such that k*A004709(n) is a cube.

Offset 1, canonical program `A277802.P17096893089026203100`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A048798, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277802 (n : ℕ) : ℤ :=
  A277802.P17096893089026203100.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A048798, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277802.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284288.P13047089995370413038

`eq[1, A296084(n+2)]+2`
-/

namespace A284288.P13047089995370413038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296084 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A284288.P13047089995370413038

noncomputable section

/-- A284288: Numbers n such that the average of the strong divisors of n is an integer.

Offset 1, canonical program `A284288.P13047089995370413038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9513 terms. -/
def A284288 (n : ℕ) : ℤ :=
  (A284288.P13047089995370413038.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9513 terms. -/
def A284288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288931.P14639471004149022968

`eq[1, A288929(n+1)]+1`
-/

namespace A288931.P14639471004149022968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288931.P14639471004149022968

noncomputable section

/-- A288931: Positions of 1 in A288929; complement of A288930.

Offset 1, canonical program `A288931.P14639471004149022968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6662 terms. -/
def A288931 (n : ℕ) : ℤ :=
  (A288931.P14639471004149022968.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6662 terms. -/
def A288931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291711.P15975325620196948492

`A007953(A381579(n+1))`
-/

namespace A291711.P15975325620196948492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A381579 (n + 1)).toNat

end

end A291711.P15975325620196948492

noncomputable section

/-- A291711: The minimum number of coins needed to pay for n units in the currency system of values 1, 3, 8, 21, 55, 144, ..., Fibonacci(2k), ...

Offset 1, canonical program `A291711.P15975325620196948492`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A381579, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A291711 (n : ℕ) : ℤ :=
  A291711.P15975325620196948492.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A381579, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A291711.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A329376.P15315639946828072060

`gcd(A010848(n+1), A360539(n+1))`
-/

namespace A329376.P15315639946828072060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010848 (n + 1)) (A360539 (n + 1))

end

end A329376.P15315639946828072060

noncomputable section

/-- A329376: Multiplicative with a(p^e) = p when e = 2, otherwise a(p^e) = 1.

Offset 1, canonical program `A329376.P15315639946828072060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329376 (n : ℕ) : ℤ :=
  (A329376.P15315639946828072060.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330393.P4639006219673885269

`A003602(n+1)+A007814(n+1)`
-/

namespace A330393.P4639006219673885269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) + A007814 (n + 1)

end

end A330393.P4639006219673885269

noncomputable section

/-- A330393: A 2-regular sequence whose reciprocal is not 2-regular.

Offset 0, canonical program `A330393.P4639006219673885269`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330393 (n : ℕ) : ℤ :=
  A330393.P4639006219673885269.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330393.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333762.P7290999518784833415

`eq[A004526(A145341(n+1)), A333777(n)]`
-/

namespace A333762.P7290999518784833415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A145341 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333777 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333762.P7290999518784833415

noncomputable section

/-- A333762: Fixed points of A333692.

Offset 1, canonical program `A333762.P7290999518784833415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A333762 (n : ℕ) : ℤ :=
  (A333762.P7290999518784833415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A333762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336468.P2819815668049022995

`A336466(A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336468.P2819815668049022995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (A000010 (n + 1)).toNat

end

end A336468.P2819815668049022995

noncomputable section

/-- A336468: a(n) = A336466(phi(n)), where A336466 is fully multiplicative with a(p) = A000265(p-1) for prime p, with A000265(k) giving the odd part of k.

Offset 1, canonical program `A336468.P2819815668049022995`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336466, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336468 (n : ℕ) : ℤ :=
  A336468.P2819815668049022995.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336466, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338245.P9307757376313236030

`A117966(record[A330740(n)])`
-/

namespace A338245.P9307757376313236030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338245.P9307757376313236030

noncomputable section

/-- A338245: Nonnegative values in A117966, in order of appearance.

Offset 0, canonical program `A338245.P9307757376313236030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A338245 (n : ℕ) : ℤ :=
  A338245.P9307757376313236030.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A338245.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A340083.P188478940144942709`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340081, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340083 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340083.P188478940144942709.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340081, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340083.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340084.P17512865495283900918

`gcd(n, A336466(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340084.P17512865495283900918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A336466 (n + 1))

end

end A340084.P17512865495283900918

noncomputable section

/-- A340084: a(n) = gcd(n-1, A336466(n)); Odd part of A340081(n).

Offset 1, canonical program `A340084.P17512865495283900918`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336466, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340084 (n : ℕ) : ℤ :=
  (A340084.P17512865495283900918.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336466, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340084.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342466.P7220102274856455647

`A336466(1+A000265(A000203(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342466.P7220102274856455647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (1 + A000265 (A000203 (n + 1)).toNat).toNat

end

end A342466.P7220102274856455647

noncomputable section

/-- A342466: a(n) = A336466(1+A000265(sigma(n))), where A336466 is fully multiplicative with a(p) = A000265(p-1) for p prime, and A000265(k) is the odd part of k.

Offset 1, canonical program `A342466.P7220102274856455647`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336466, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342466 (n : ℕ) : ℤ :=
  A342466.P7220102274856455647.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336466, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342466.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A347954.P10515140487385531382`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347954 (n : ℕ) : ℤ :=
  A347954.P10515140487385531382.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347954.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347955.P1517535332026612869

`∑{d}[n+1, A003415((n+1)/#)*A003602(#)]`
-/

namespace A347955.P1517535332026612869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A003602 d

end

end A347955.P1517535332026612869

noncomputable section

/-- A347955: Dirichlet convolution of A003415 (arithmetic derivative) with A003602 (a Kimberling paraphrase).

Offset 1, canonical program `A347955.P1517535332026612869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347955 (n : ℕ) : ℤ :=
  A347955.P1517535332026612869.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347955.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347956.P10805470840089187957

`∑{d}[n+1, A003602(#)*A069359((n+1)/#)]`
-/

namespace A347956.P10805470840089187957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003602 d * A069359 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347956.P10805470840089187957

noncomputable section

/-- A347956: Dirichlet convolution of A003602 with A069359.

Offset 1, canonical program `A347956.P10805470840089187957`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347956 (n : ℕ) : ℤ :=
  A347956.P10805470840089187957.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347956.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347957.P14578081410733980616

`∑{d}[n+1, A001221((n+1)/#)*A003602(#)]`
-/

namespace A347957.P14578081410733980616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A003602 d

end

end A347957.P14578081410733980616

noncomputable section

/-- A347957: Dirichlet convolution of A001221 (omega) with A003602 (a Kimberling paraphrase).

Offset 1, canonical program `A347957.P14578081410733980616`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347957 (n : ℕ) : ℤ :=
  A347957.P14578081410733980616.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347957.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348980.P7651113664669267661

`∑{d}[n+1, #*A322582((n+1)/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
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

Offset 1, canonical program `A348980.P7651113664669267661`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322582, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348980 (n : ℕ) : ℤ :=
  A348980.P7651113664669267661.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322582, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348980.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348981.P6979830065070060988

`∑{d}[n+1, A000010((n+1)/#)*A322582(#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348981.P6979830065070060988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A322582 d

end

end A348981.P6979830065070060988

noncomputable section

/-- A348981: a(n) = Sum_{d|n} phi(n/d) * A322582(d), where A322582(n) = n - A003958(n), and A003958 is fully multiplicative with a(p) = (p-1).

Offset 1, canonical program `A348981.P6979830065070060988`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322582, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348981 (n : ℕ) : ℤ :=
  A348981.P6979830065070060988.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322582, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348981.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348982.P3645871020152581300

`∑{d}[n+1, A001615((n+1)/#)*A322582(#)]`
-/

namespace A348982.P3645871020152581300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A322582 d

end

end A348982.P3645871020152581300

noncomputable section

/-- A348982: a(n) = Sum_{d|n} psi(n/d) * A322582(d), where psi is Dedekind psi (A001615), A322582(n) = n - A003958(n), and A003958 is fully multiplicative with a(p) = (p-1).

Offset 1, canonical program `A348982.P3645871020152581300`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322582, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348982 (n : ℕ) : ℤ :=
  A348982.P3645871020152581300.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322582, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348982.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348983.P369901415120582114

`∑{d}[n+1, A038040(#)*A322582((n+1)/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348983.P369901415120582114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d * A322582 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348983.P369901415120582114

noncomputable section

/-- A348983: a(n) = Sum_{d|n} A038040(d) * A322582(n/d), where A038040(n) = n*d(n), A322582(n) = n - A003958(n), and A003958 is fully multiplicative with a(p) = (p-1).

Offset 1, canonical program `A348983.P369901415120582114`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322582, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348983 (n : ℕ) : ℤ :=
  A348983.P369901415120582114.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322582, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348983.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349136.P665510647861232205

`∑{d}[n+1, A008683(#)*A003602((n+1)/#)]`
-/

namespace A349136.P665510647861232205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A003602 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349136.P665510647861232205

noncomputable section

/-- A349136: Möbius transform of Kimberling's paraphrase, A003602.

Offset 1, canonical program `A349136.P665510647861232205`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349136 (n : ℕ) : ℤ :=
  A349136.P665510647861232205.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349136.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349137.P16019714478779195286

`A000010(A003602(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349137.P16019714478779195286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003602 (n + 1)).toNat

end

end A349137.P16019714478779195286

noncomputable section

/-- A349137: a(n) = phi(A003602(n)), where A003602 is Kimberling's paraphrase of the binary number system, and phi is Euler totient function.

Offset 1, canonical program `A349137.P16019714478779195286`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349137 (n : ℕ) : ℤ :=
  A349137.P16019714478779195286.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349137.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349370.P3715128073866339006

`∑{d}[n+1, A003602((n+1)/#)*A003602(#)]`
-/

namespace A349370.P3715128073866339006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003602 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A003602 d

end

end A349370.P3715128073866339006

noncomputable section

/-- A349370: Dirichlet convolution of Kimberling's paraphrase, A003602, with itself.

Offset 1, canonical program `A349370.P3715128073866339006`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349370 (n : ℕ) : ℤ :=
  A349370.P3715128073866339006.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349370.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349372.P14848062689867288165

`∑{d}[n+1, A003602((n+1)/#)*A000005(#)]`
-/

namespace A349372.P14848062689867288165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003602 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000005 d

end

end A349372.P14848062689867288165

noncomputable section

/-- A349372: Dirichlet convolution of Kimberling's paraphrase, A003602, with tau (number of divisors, A000005).

Offset 1, canonical program `A349372.P14848062689867288165`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349372 (n : ℕ) : ℤ :=
  A349372.P14848062689867288165.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349372.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349373.P3033255077173848072

`∑{d}[n+1, A003602((n+1)/#)*A023900(#)]`
-/

namespace A349373.P3033255077173848072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003602 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A023900 d

end

end A349373.P3033255077173848072

noncomputable section

/-- A349373: Dirichlet convolution of Kimberling's paraphrase, A003602, with Dirichlet inverse of Euler phi (A023900).

Offset 1, canonical program `A349373.P3033255077173848072`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349373 (n : ℕ) : ℤ :=
  A349373.P3033255077173848072.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349373.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349374.P17318568420837249468

`∑{d}[n+1, A003602((n+1)/#)*A007913(#)]`
-/

namespace A349374.P17318568420837249468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003602 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A007913 d

end

end A349374.P17318568420837249468

noncomputable section

/-- A349374: Dirichlet convolution of Kimberling's paraphrase, A003602, with squarefree part of n (A007913).

Offset 1, canonical program `A349374.P17318568420837249468`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349374 (n : ℕ) : ℤ :=
  A349374.P17318568420837249468.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349374.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349375.P16530140978248740836

`∑{d}[n+1, A003602((n+1)/#)*A008836(#)]`
-/

namespace A349375.P16530140978248740836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003602 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A008836 d

end

end A349375.P16530140978248740836

noncomputable section

/-- A349375: Dirichlet convolution of Kimberling's paraphrase, A003602, with Liouville's lambda.

Offset 1, canonical program `A349375.P16530140978248740836`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349375 (n : ℕ) : ℤ :=
  A349375.P16530140978248740836.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349375.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349447.P7418192524961600307

`∑{d}[n+1, A003602(#)*A326937((n+1)/#)]`
-/

namespace A349447.P7418192524961600307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003602 d * A326937 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349447.P7418192524961600307

noncomputable section

/-- A349447: Dirichlet convolution of A003602 (a Kimberling paraphrase) with A326937 (Dirichlet inverse of A000265).

Offset 1, canonical program `A349447.P7418192524961600307`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349447 (n : ℕ) : ℤ :=
  A349447.P7418192524961600307.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349447.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349912.P4753964918180752042

`A336466(n+1)+A349911(n+1)`
-/

namespace A349912.P4753964918180752042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (n + 1) + A349911 (n + 1)

end

end A349912.P4753964918180752042

noncomputable section

/-- A349912: Sum of A336466 and its Dirichlet inverse, where A336466 is fully multiplicative with a(p) = oddpart(p-1).

Offset 1, canonical program `A349912.P4753964918180752042`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336466, A349911, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349912 (n : ℕ) : ℤ :=
  A349912.P4753964918180752042.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336466, A349911, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349912.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350386.P2488942611361023290

`A001222(A350388(n+1))`
-/

namespace A350386.P2488942611361023290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A350388 (n + 1)).toNat

end

end A350386.P2488942611361023290

noncomputable section

/-- A350386: a(n) is the sum of the even exponents in the prime factorization of n.

Offset 1, canonical program `A350386.P2488942611361023290`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350386 (n : ℕ) : ℤ :=
  A350386.P2488942611361023290.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350386.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351446.P16027380456626133253

`lt[abs(A351445(n+1)), 1]+1`
-/

namespace A351446.P16027380456626133253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A351445 (n + 1)|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A351446.P16027380456626133253

noncomputable section

/-- A351446: Numbers k for which A003958(sigma(k)) = A003958(k), where A003958 is multiplicative with a(p^e) = (p-1)^e and sigma is the sum of divisors function.

Offset 1, canonical program `A351446.P16027380456626133253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A351446 (n : ℕ) : ℤ :=
  (A351446.P16027380456626133253.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A351446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351460.P8243129244187876021

`A003602(n+1)+A001065(A008578(3*n+1))`
-/

namespace A351460.P8243129244187876021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) + A001065 (A008578 (3 * n + 1)).toNat

end

end A351460.P8243129244187876021

noncomputable section

/-- A351460: Lexicographically earliest infinite sequence such that a(i) = a(j) => A006530(i) = A006530(j), A206787(i) = A206787(j) and A336651(i) = A336651(j) for all i, j >= 1.

Offset 1, canonical program `A351460.P8243129244187876021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 410 terms. -/
def A351460 (n : ℕ) : ℤ :=
  A351460.P8243129244187876021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 410 terms. -/
def A351460.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A351565.P4204189420348850380`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351565 (n : ℕ) : ℤ :=
  A351565.P4204189420348850380.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351565.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358654.P4638968349516908894

`A003602(eq[A001511(n+1), A023416(n)]+1)-1`
-/

namespace A358654.P4638968349516908894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) - 1

end

end A358654.P4638968349516908894

noncomputable section

/-- A358654: a(n) = A025480(A353654(n+1) - 1).

Offset 0, canonical program `A358654.P4638968349516908894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 403 terms. -/
def A358654 (n : ℕ) : ℤ :=
  A358654.P4638968349516908894.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 403 terms. -/
def A358654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364013.P10793024115163397505

`2*A364017(n+1)-A364012(n+1)`
-/

namespace A364013.P10793024115163397505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A364017 (n + 1) - A364012 (n + 1)

end

end A364013.P10793024115163397505

noncomputable section

/-- A364013: Expansion of Sum_{k>0} k^2 * x^k / (1 + x^(3*k)).

Offset 1, canonical program `A364013.P10793024115163397505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364013 (n : ℕ) : ℤ :=
  A364013.P10793024115163397505.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364016.P4474703174552157399

`2*A364018(n+1)-A364015(n+1)`
-/

namespace A364016.P4474703174552157399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A364018 (n + 1) - A364015 (n + 1)

end

end A364016.P4474703174552157399

noncomputable section

/-- A364016: Expansion of Sum_{k>0} k^2 * x^(2*k) / (1 + x^(3*k)).

Offset 1, canonical program `A364016.P4474703174552157399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364016 (n : ℕ) : ℤ :=
  A364016.P4474703174552157399.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365487.P17055502377782531562

`A000005(A008834(n+1))`
-/

namespace A365487.P17055502377782531562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008834 (n + 1)).toNat

end

end A365487.P17055502377782531562

noncomputable section

/-- A365487: The number of divisors of the largest cube dividing n.

Offset 1, canonical program `A365487.P17055502377782531562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008834, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365487 (n : ℕ) : ℤ :=
  A365487.P17055502377782531562.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008834, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365487.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A365498.P11326829355514865455`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368172, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365498 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A365498.P11326829355514865455.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368172, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365498.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366893.P9479425675284615300

`A003602(A000007(n²)+n)`
-/

namespace A366893.P9479425675284615300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A000007 (n ^ 2) + (n : ℤ)).toNat

end

end A366893.P9479425675284615300

noncomputable section

/-- A366893: Lexicographically earliest infinite sequence such that a(i) = a(j) => A366892(i) = A366892(j) for all i, j >= 0.

Offset 0, canonical program `A366893.P9479425675284615300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A366893 (n : ℕ) : ℤ :=
  A366893.P9479425675284615300.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A366893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368748.P2060391924120103936

`A001223(n+1)-A080101(n+1)-1`
-/

namespace A368748.P2060391924120103936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - A080101 (n + 1) - 1

end

end A368748.P2060391924120103936

noncomputable section

/-- A368748: a(n) is the number of numbers between prime(n) and prime(n+1) that are not prime powers.

Offset 1, canonical program `A368748.P2060391924120103936`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368748 (n : ℕ) : ℤ :=
  A368748.P2060391924120103936.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368748.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369667.P13821816702914872275

`char[A369668(n+1)]`
-/

namespace A369667.P13821816702914872275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A369667.P13821816702914872275

noncomputable section

/-- A369667: a(n) = 1 if n' == 3 (mod 4) and n has an even number of prime factors with multiplicity, otherwise 0. Here n' stands for the arithmetic derivative of n, A003415(n).

Offset 0, canonical program `A369667.P13821816702914872275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369667 (n : ℕ) : ℤ :=
  (A369667.P13821816702914872275.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373643.P3675062936320699717

`A001223(n+1)-A061398(n+1)-A080101(n+1)-1`
-/

namespace A373643.P3675062936320699717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - A061398 (n + 1) - A080101 (n + 1) - 1

end

end A373643.P3675062936320699717

noncomputable section

/-- A373643: Number of k between consecutive primes such that k is neither squarefree nor prime powers.

Offset 1, canonical program `A373643.P3675062936320699717`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373643 (n : ℕ) : ℤ :=
  A373643.P3675062936320699717.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373643.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377170.P17835521171478167915

`1/2*∑{#}[2^n-1, abs(A384868(#+2^n-1))]`
-/

namespace A377170.P17835521171478167915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((∑ k ∈ Finset.range (f1 n + 1).toNat, |A384868 (k + 2 ^ n - 1)| : ℤ) : ℚ)

end

end A377170.P17835521171478167915

noncomputable section

/-- A377170: Sum of the nonnegative terms in the n-th row of A365968.

Offset 0, canonical program `A377170.P17835521171478167915`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A384868, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377170 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A377170.P17835521171478167915.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A384868, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378684.P885690523636202921

`A378200(A378200(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378684.P885690523636202921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A378200 (n + 1)).toNat

end

end A378684.P885690523636202921

noncomputable section

/-- A378684: a(n) = A378200(A378200(n)).

Offset 1, canonical program `A378684.P885690523636202921`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378684 (n : ℕ) : ℤ :=
  A378684.P885690523636202921.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378684.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378762.P3404448250858099609

`A378200(A378200(A378200(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378762.P3404448250858099609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A378200 (A378200 (n + 1)).toNat).toNat

end

end A378762.P3404448250858099609

noncomputable section

/-- A378762: a(n) = A378200(A378200(A378200(n))).

Offset 1, canonical program `A378762.P3404448250858099609`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378762 (n : ℕ) : ℤ :=
  A378762.P3404448250858099609.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378762.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382129.P11262417196826873827

`A000040(A003602(n+1))`
-/

namespace A382129.P11262417196826873827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A003602 (n + 1)).toNat

end

end A382129.P11262417196826873827

noncomputable section

/-- A382129: Fractalization of the prime numbers.

Offset 1, canonical program `A382129.P11262417196826873827`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382129 (n : ℕ) : ℤ :=
  A382129.P11262417196826873827.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382129.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A387351.P5126227165797472721

`A387350(n+1)+A005652(n+1)`
-/

namespace A387351.P5126227165797472721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387350 (n + 1) + A005652 (n + 1)

end

end A387351.P5126227165797472721

noncomputable section

/-- A387351: Positions of -1's in A387348.

Offset 1, canonical program `A387351.P5126227165797472721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387351 (n : ℕ) : ℤ :=
  A387351.P5126227165797472721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261092.P3361888197169044314

`char[A219640(n)]`
-/

namespace A261092.P3361888197169044314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219640 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A261092.P3361888197169044314

noncomputable section

/-- A261092: First differences of A261093; characteristic function for A219640.

Offset 0, canonical program `A261092.P3361888197169044314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6766 terms. -/
def A261092 (n : ℕ) : ℤ :=
  (A261092.P3361888197169044314.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6766 terms. -/
def A261092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261095.P11813985126909535147

`A219640(n+1)-A219640(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261095.P11813985126909535147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219640 (n + 1) - A219640 n

end

end A261095.P11813985126909535147

noncomputable section

/-- A261095: First differences of A219640: a(n) = A219640(n+1) - A219640(n).

Offset 0, canonical program `A261095.P11813985126909535147`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219640, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261095 (n : ℕ) : ℤ :=
  A261095.P11813985126909535147.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219640, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261095.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277331.P10020327164330900423

`A253563(A003714(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277331.P10020327164330900423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 (A003714 n).toNat

end

end A277331.P10020327164330900423

noncomputable section

/-- A277331: a(n) = A253563(A003714(n)).

Offset 0, canonical program `A277331.P10020327164330900423`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277331 (n : ℕ) : ℤ :=
  A277331.P10020327164330900423.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277331.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277335.P13601565206693033398

`3*A003714(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277335.P13601565206693033398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003714 n

end

end A277335.P13601565206693033398

noncomputable section

/-- A277335: Fibbinary numbers multiplied by three: a(n) = 3*A003714(n); Numbers where all 1-bits occur in runs of even length.

Offset 0, canonical program `A277335.P13601565206693033398`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277335 (n : ℕ) : ℤ :=
  A277335.P13601565206693033398.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277335.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A297250.P2128841080923313740

`lt[A257075(A330740(n)), 0]`
-/

namespace A297250.P2128841080923313740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 (A330740 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A297250.P2128841080923313740

noncomputable section

/-- A297250: Numbers whose base-3 digits having equal up-variation and down-variation; see Comments.

Offset 1, canonical program `A297250.P2128841080923313740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A297250 (n : ℕ) : ℤ :=
  (A297250.P2128841080923313740.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A297250.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A307342.P15063499458322460120

`eq[4, A318473(n+1)]+1`
-/

namespace A307342.P15063499458322460120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318473 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A307342.P15063499458322460120

noncomputable section

/-- A307342: Products of four primes, except fourth powers of primes.

Offset 1, canonical program `A307342.P15063499458322460120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9186 terms. -/
def A307342 (n : ℕ) : ℤ :=
  (A307342.P15063499458322460120.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9186 terms. -/
def A307342.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A321070.P3795502805426479328

`A048108(n+1)²`
-/

namespace A321070.P3795502805426479328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1) ^ 2

end

end A321070.P3795502805426479328

noncomputable section

/-- A321070: Squares divisible by more than one cube > 1.

Offset 1, canonical program `A321070.P3795502805426479328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321070 (n : ℕ) : ℤ :=
  A321070.P3795502805426479328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329935.P4917152360086528643

`∩[A019506(n+1)-1, A019506(n+1)]`
-/

namespace A329935.P4917152360086528643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019506 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329935.P4917152360086528643

noncomputable section

/-- A329935: Numbers k such that k and k+1 are both hoax numbers (A019506).

Offset 1, canonical program `A329935.P4917152360086528643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. -/
def A329935 (n : ℕ) : ℤ :=
  (A329935.P4917152360086528643.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. -/
def A329935.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A333618.P6178487430166416808`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112310, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333618 (n : ℕ) : ℤ :=
  A333618.P6178487430166416808.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112310, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333618.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335915.P17327428473756616044

`A336466(n+1)*A336467(n+1)`
-/

namespace A335915.P17327428473756616044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (n + 1) * A336467 (n + 1)

end

end A335915.P17327428473756616044

noncomputable section

/-- A335915: Fully multiplicative with a(2) = 1, and a(p) = A000265(p-1)*A000265(p+1) = A000265(p^2 - 1), for odd primes p.

Offset 1, canonical program `A335915.P17327428473756616044`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336466, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335915 (n : ℕ) : ℤ :=
  A335915.P17327428473756616044.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336466, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335915.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343228.P395779845011442952

`A289831(A060372(n))`
-/

namespace A343228.P395779845011442952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A060372 n).toNat

end

end A343228.P395779845011442952

noncomputable section

/-- A343228: A binary encoding of the digits "+1" in balanced ternary representation of n.

Offset 0, canonical program `A343228.P395779845011442952`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060372, A289831, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A343228 (n : ℕ) : ℤ :=
  A343228.P395779845011442952.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060372, A289831, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A343228.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A351714.P12398140737547645289

`lt[lcm(n, A116543(n))-n, n]`
-/

namespace A351714.P12398140737547645289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (A116543 n) : ℤ) - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A351714.P12398140737547645289

noncomputable section

/-- A351714: Lucas-Niven numbers: numbers that are divisible by the number of terms in their minimal (or greedy) representation in terms of the Lucas numbers (A130310).

Offset 1, canonical program `A351714.P12398140737547645289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1993 terms. -/
def A351714 (n : ℕ) : ℤ :=
  (A351714.P12398140737547645289.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1993 terms. -/
def A351714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353830.P1157779251727351386

`-A338241(A140263(2*n))`
-/

namespace A353830.P1157779251727351386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A338241 (A140263 (2 * n)).toNat

end

end A353830.P1157779251727351386

noncomputable section

/-- A353830: The positions of nonzero digits in the balanced ternary expansions of n and a(n) are the same, and the k-th rightmost nonzero digit in a(n) equals the product of the k rightmost nonzero digits in n.

Offset 0, canonical program `A353830.P1157779251727351386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1094 terms. -/
def A353830 (n : ℕ) : ℤ :=
  A353830.P1157779251727351386.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1094 terms. -/
def A353830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357073.P15388237282562208061

`A003714(n+1)%(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A357073.P15388237282562208061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003714 (n + 1)) (n + 1 : ℤ)

end

end A357073.P15388237282562208061

noncomputable section

/-- A357073: For n >= 1, a(n) = A003714(n) mod n.

Offset 1, canonical program `A357073.P15388237282562208061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357073 (n : ℕ) : ℤ :=
  A357073.P15388237282562208061.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357073.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357316.P2864619349203397894

`A356874(floor(A003714(col(n))*2^(row(n)-col(n)-1)))`
-/

namespace A357316.P2864619349203397894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356874 ⌊(A003714 (SequenceMachineLib.triCol n) : ℚ) * (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) - 1 : ℤ)⌋.toNat

end

end A357316.P2864619349203397894

noncomputable section

/-- A357316: A distension of the Wythoff array by inclusion of intermediate rows. Square array A(n,k), n >= 0, k >= 0, read by descending antidiagonals. If S is the set such that Sum_{i in S} F_i is the Zeckendorf representation of n then A(n,k) = Sum_{i in S} F_{i+k-2}.

Offset 0, canonical program `A357316.P2864619349203397894`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A356874, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A357316 (n : ℕ) : ℤ :=
  A357316.P2864619349203397894.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A356874, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A357316.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375270.P13061720832720025766

`filter[A115975(n+1), A181183(#)]`
-/

namespace A375270.P13061720832720025766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A375270.P13061720832720025766

noncomputable section

/-- A375270: Numbers of the form p^Fibonacci(2*k), where p is a prime and k >= 0.

Offset 1, canonical program `A375270.P13061720832720025766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6558 terms. -/
def A375270 (n : ℕ) : ℤ :=
  A375270.P13061720832720025766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6558 terms. -/
def A375270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378878.P16615356718433646277

`filter[A048108(n+1), A355447(#)]`
-/

namespace A378878.P16615356718433646277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A378878.P16615356718433646277

noncomputable section

/-- A378878: Products m*k such that k is composite and squarefree and m is composite such that rad(m) | k, where rad = A007947.

Offset 1, canonical program `A378878.P16615356718433646277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9963 terms. -/
def A378878 (n : ℕ) : ℤ :=
  A378878.P16615356718433646277.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9963 terms. -/
def A378878.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A382113.P6513657586340795000`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A022290, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382113 (n : ℕ) : ℤ :=
  A382113.P6513657586340795000.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A022290, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382113.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391585.P14461622973833260868

`∪[A003714(n), A048717(n)]`
-/

namespace A391585.P14461622973833260868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391585.P14461622973833260868

noncomputable section

/-- A391585: Numbers k such that 3*k = A048720(m,k) for some m, where A048720 is carryless base-2 multiplication.

Offset 1, canonical program `A391585.P14461622973833260868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391585 (n : ℕ) : ℤ :=
  (A391585.P14461622973833260868.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337688.P213648959849896231

`lt[1, A337690(n+1)]+1`
-/

namespace A337688.P213648959849896231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337690 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A337688.P213648959849896231

noncomputable section

/-- A337688: Numbers divisible by 2 or more primitive nondeficient numbers.

Offset 1, canonical program `A337688.P213648959849896231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A337688 (n : ℕ) : ℤ :=
  (A337688.P213648959849896231.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A337688.provenance : SequenceMachineLib.Provenance := .conjectured

