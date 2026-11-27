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
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C053
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B001.C015
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
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B005.C003
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

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

/-! ## A353517.P15538557700193134453

`A353516(2*n)`
-/

namespace A353517.P15538557700193134453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353516 (2 * n)

end

end A353517.P15538557700193134453

noncomputable section

/-- A353517: The largest proper divisor of A276086(2*n) reduced modulo 4, where A276086(n) the primorial base exp-function.

Offset 0, canonical program `A353517.P15538557700193134453`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353517 (n : ℕ) : ℤ :=
  A353517.P15538557700193134453.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353517.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A392609.P5703285042212479298

`A001221(n+1)-A392608(n+1)`
-/

namespace A392609.P5703285042212479298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A392608 (n + 1)

end

end A392609.P5703285042212479298

noncomputable section

/-- A392609: Number of prime factors of n that do not divide A276086(n), where A276086 is the primorial base exp-function.

Offset 1, canonical program `A392609.P5703285042212479298`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392609 (n : ℕ) : ℤ :=
  A392609.P5703285042212479298.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392609.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A345930.P2374197204490005909

`A344756(A276086(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345930.P2374197204490005909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344756 (A276086 (n + 1)).toNat

end

end A345930.P2374197204490005909

noncomputable section

/-- A345930: a(n) = A344756(A276086(n)).

Offset 1, canonical program `A345930.P2374197204490005909`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345930 (n : ℕ) : ℤ :=
  A345930.P2374197204490005909.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345930.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347232.P13320072310435119837

`A346485(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347232.P13320072310435119837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346485 (A276086 n).toNat

end

end A347232.P13320072310435119837

noncomputable section

/-- A347232: a(n) = A346485(A276086(n)), where A346485 is Möbius transform of A342001.

Offset 0, canonical program `A347232.P13320072310435119837`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347232 (n : ℕ) : ℤ :=
  A347232.P13320072310435119837.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347232.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347396.P2540584939725656193

`A347395(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347396.P2540584939725656193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347395 (A276086 n).toNat

end

end A347396.P2540584939725656193

noncomputable section

/-- A347396: a(n) = A347395(A276086(n)), where A347395 is Dirichlet convolution of Liouville's lambda with A342001.

Offset 0, canonical program `A347396.P2540584939725656193`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347396 (n : ℕ) : ℤ :=
  A347396.P2540584939725656193.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347396.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347962.P15837986242953072970

`A347961(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347962.P15837986242953072970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347961 (A276086 n).toNat

end

end A347962.P15837986242953072970

noncomputable section

/-- A347962: a(n) = A347961(A276086(n)), where A347961 is Dirichlet convolution of A342001 with itself.

Offset 0, canonical program `A347962.P15837986242953072970`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347962 (n : ℕ) : ℤ :=
  A347962.P15837986242953072970.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347962.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A353330.P10388590718222571003

`A006047(A156552(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353330.P10388590718222571003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A156552 (n + 1)).toNat

end

end A353330.P10388590718222571003

noncomputable section

/-- A353330: a(n) = A006047(A156552(n)).

Offset 1, canonical program `A353330.P10388590718222571003`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353330 (n : ℕ) : ℤ :=
  A353330.P10388590718222571003.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353330.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A353572.P4310897015053724507

`A353571(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353572.P4310897015053724507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353571 (A276086 n).toNat

end

end A353572.P4310897015053724507

noncomputable section

/-- A353572: Shifted variant of A342002: a(n) = A353571(A276086(n)), where A353571(x) = A003415(A003961(x)) / A003557(A003961(x)) and A276086 is the primorial base exp-function.

Offset 0, canonical program `A353572.P4310897015053724507`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353572 (n : ℕ) : ℤ :=
  A353572.P4310897015053724507.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353572.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353631.P16052917783383333602

`A353630(2*n+1)`
-/

namespace A353631.P16052917783383333602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353630 (2 * n + 1)

end

end A353631.P16052917783383333602

noncomputable section

/-- A353631: Arithmetic derivative of primorial base exp-function, reduced modulo 4, computed for odd numbers.

Offset 0, canonical program `A353631.P16052917783383333602`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353631 (n : ℕ) : ℤ :=
  A353631.P16052917783383333602.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353631.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353632.P1942094796537579057

`A353630(2*n)`
-/

namespace A353632.P1942094796537579057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353630 (2 * n)

end

end A353632.P1942094796537579057

noncomputable section

/-- A353632: Even bisection of A353630: Arithmetic derivative of primorial base exp-function, reduced modulo 4, computed for even numbers.

Offset 0, canonical program `A353632.P1942094796537579057`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353632 (n : ℕ) : ℤ :=
  A353632.P1942094796537579057.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353632.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353640.P6882568474020267579

`A010873(A342002(n))`
-/

namespace A353640.P6882568474020267579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A342002 n).toNat

end

end A353640.P6882568474020267579

noncomputable section

/-- A353640: Čiurlionis sequence A342002, reduced modulo 4.

Offset 0, canonical program `A353640.P6882568474020267579`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353640 (n : ℕ) : ℤ :=
  A353640.P6882568474020267579.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353640.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359426.P3948860908790500283

`A342001(A358764(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359426.P3948860908790500283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A358764 (n + 1)).toNat

end

end A359426.P3948860908790500283

noncomputable section

/-- A359426: a(n) = A342001(A358764(n)).

Offset 1, canonical program `A359426.P3948860908790500283`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359426 (n : ℕ) : ℤ :=
  A359426.P3948860908790500283.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359426.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360121.P15626230855341706546

`∑{d}[n+1, A342001((n+1)/#)*A342002(#)]`
-/

namespace A360121.P15626230855341706546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A342001 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A342002 d

end

end A360121.P15626230855341706546

noncomputable section

/-- A360121: Dirichlet convolution of A342001 with A342002.

Offset 1, canonical program `A360121.P15626230855341706546`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360121 (n : ℕ) : ℤ :=
  A360121.P15626230855341706546.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360121.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360123.P7313243684464327551

`A347389(n+1)%2`
-/

namespace A360123.P7313243684464327551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347389 (n + 1)) 2

end

end A360123.P7313243684464327551

noncomputable section

/-- A360123: Parity of A347389, where A347389 is Dirichlet convolution of A003415(n) with A003415(A276086(n)).

Offset 1, canonical program `A360123.P7313243684464327551`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360123 (n : ℕ) : ℤ :=
  A360123.P7313243684464327551.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360123.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360125.P12291204855292744772

`A359425(n+1)%2`
-/

namespace A360125.P12291204855292744772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359425 (n + 1)) 2

end

end A360125.P12291204855292744772

noncomputable section

/-- A360125: Parity of A359425, where A359425 is Dirichlet convolution of the arithmetic derivative with the primorial base exp-function.

Offset 1, canonical program `A360125.P12291204855292744772`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360125 (n : ℕ) : ℤ :=
  A360125.P12291204855292744772.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360125.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365454.P3078564469572902487

`gcd(A000203(n+1), A156552(2*(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365454.P3078564469572902487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A156552 (2 * (n + 1)))

end

end A365454.P3078564469572902487

noncomputable section

/-- A365454: a(n) = gcd(sigma(n), A156552(2*n)).

Offset 1, canonical program `A365454.P3078564469572902487`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365454 (n : ℕ) : ℤ :=
  (A365454.P3078564469572902487.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365454.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A370130.P15560036417385504854

`A369669(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370130.P15560036417385504854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369669 (A276086 n).toNat

end

end A370130.P15560036417385504854

noncomputable section

/-- A370130: a(n) = A369669(A276086(n)), where A369669 is the greatest common divisor of the first and second arithmetic derivative of n, and A276086 is the primorial base exp-function.

Offset 0, canonical program `A370130.P15560036417385504854`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370130 (n : ℕ) : ℤ :=
  A370130.P15560036417385504854.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370130.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373598.P5045705287894281906

`A079978(n)*A369653(n)`
-/

namespace A373598.P5045705287894281906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n * A369653 n

end

end A373598.P5045705287894281906

noncomputable section

/-- A373598: a(n) = 1 if n and A327860(n) are both multiples of 3, where A327860 is the arithmetic derivative of the primorial base exp-function.

Offset 0, canonical program `A373598.P5045705287894281906`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373598 (n : ℕ) : ℤ :=
  A373598.P5045705287894281906.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373598.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A391449.P16072565990490432701

`A252489(n+1)-A059957(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391449.P16072565990490432701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252489 (n + 1) - A059957 (n + 1)

end

end A391449.P16072565990490432701

noncomputable section

/-- A391449: a(n) = A252489(n) - A059957(n).

Offset 1, canonical program `A391449.P16072565990490432701`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391449 (n : ℕ) : ℤ :=
  A391449.P16072565990490432701.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391449.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392610.P420670172486878094

`A267263(n)-A392608(n)`
-/

namespace A392610.P420670172486878094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 n - A392608 n

end

end A392610.P420670172486878094

noncomputable section

/-- A392610: Number of nonzero digits in the primorial base representation of n (A049345) such that their corresponding radix prime does not divide n.

Offset 0, canonical program `A392610.P420670172486878094`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392610 (n : ℕ) : ℤ :=
  A392610.P420670172486878094.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392610.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392866.P15497313350302913952

`A276086(n)%A000040(1+A235224(n))`
-/

namespace A392866.P15497313350302913952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276086 n) (A000040 (1 + A235224 n).toNat)

end

end A392866.P15497313350302913952

noncomputable section

/-- A392866: a(n) = A276086(n) mod A117366(A276086(n)), where A117366 gives the smallest prime greater than the largest prime dividing n, and A276086 is the primorial base exp-function.

Offset 0, canonical program `A392866.P15497313350302913952`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392866 (n : ℕ) : ℤ :=
  A392866.P15497313350302913952.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392866.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395047.P11957101943159865537

`A241917(A003415(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395047.P11957101943159865537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (A003415 (n + 2)).toNat

end

end A395047.P11957101943159865537

noncomputable section

/-- A395047: a(n) = A241917(A003415(n)).

Offset 2, canonical program `A395047.P11957101943159865537`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395047 (n : ℕ) : ℤ :=
  A395047.P11957101943159865537.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395047.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399377.P9660430220150976684

`A020639(A370117(n))`
-/

namespace A399377.P9660430220150976684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A370117 n).toNat

end

end A399377.P9660430220150976684

noncomputable section

/-- A399377: a(n) is the least prime p such that p^valuation(A327859(n),p) does not divide n, or 1 if no such p exists.

Offset 0, canonical program `A399377.P9660430220150976684`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399377 (n : ℕ) : ℤ :=
  A399377.P9660430220150976684.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399377.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400258.P3398933769381967192

`A267263(A003415(n))`
-/

namespace A400258.P3398933769381967192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (A003415 n).toNat

end

end A400258.P3398933769381967192

noncomputable section

/-- A400258: Number of nonzero digits in primorial base representation of n' [where n' stands for the arithmetic derivative of n, A003415].

Offset 0, canonical program `A400258.P3398933769381967192`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400258 (n : ℕ) : ℤ :=
  A400258.P3398933769381967192.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400258.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400262.P7712911240097354369

`A235224(A003415(n))`
-/

namespace A400262.P7712911240097354369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (A003415 n).toNat

end

end A400262.P7712911240097354369

noncomputable section

/-- A400262: The length of primorial base (A049345) representation of the arithmetic derivative of n; a(0) = a(1) = 0 by convention.

Offset 0, canonical program `A400262.P7712911240097354369`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400262 (n : ℕ) : ℤ :=
  A400262.P7712911240097354369.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400262.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401912.P12126294774194375001

`A401911(n+1)/A369008(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401912.P12126294774194375001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A401911 (n + 1) : ℚ) / (A369008 (n + 1) : ℚ)

end

end A401912.P12126294774194375001

noncomputable section

/-- A401912: a(n) = A401911(n) / A369008(n).

Offset 1, canonical program `A401912.P12126294774194375001`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401912 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A401912.P12126294774194375001.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401912.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401917.P10147892513690949782

`A059841(A347395(n+1))`
-/

namespace A401917.P10147892513690949782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A347395 (n + 1)).toNat

end

end A401917.P10147892513690949782

noncomputable section

/-- A401917: a(n) = 1 if A347395(n) is even, and 0 if it is odd, where A347395 is the Dirichlet convolution of Liouville's lambda (A008836) with A342001.

Offset 1, canonical program `A401917.P10147892513690949782`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401917 (n : ℕ) : ℤ :=
  A401917.P10147892513690949782.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401917.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348182.P6934266589233988519

`1+a(A057022(n+1)-1)` with `a(0)=1, a(1)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348182.P6934266589233988519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 + a (A057022 (n + 1) - 1).toNat

end

end A348182.P6934266589233988519

noncomputable section

/-- A348182: a(1) = 1; for n >= 2, a(n) = 1 + a(A057022(n)).

Offset 1, canonical program `A348182.P6934266589233988519`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348182 (n : ℕ) : ℤ :=
  (A348182.P6934266589233988519.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348182.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A348915.P13373623292540873174

`A000593(n+1)+A183063(n+1)`
-/

namespace A348915.P13373623292540873174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + A183063 (n + 1)

end

end A348915.P13373623292540873174

noncomputable section

/-- A348915: a(n) = Sum_{d|n} d^(d mod 2).

Offset 1, canonical program `A348915.P13373623292540873174`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348915 (n : ℕ) : ℤ :=
  A348915.P13373623292540873174.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348915.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A349360.P4810529674749984531

`A184389(n+1)+A335567(n+1)`
-/

namespace A349360.P4810529674749984531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1) + A335567 (n + 1)

end

end A349360.P4810529674749984531

noncomputable section

/-- A349360: Number of positive integer pairs (s,t), with s,t <= n and s <= t such that either both s and t divide n or both do not.

Offset 1, canonical program `A349360.P4810529674749984531`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349360 (n : ℕ) : ℤ :=
  A349360.P4810529674749984531.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349360.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A353351.P1500515307686791628`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353351 (n : ℕ) : ℤ :=
  A353351.P1500515307686791628.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353351.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A355683.P12256357000796435793`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355683 (n : ℕ) : ℤ :=
  A355683.P12256357000796435793.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355683.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A358345.P3459524119190626708`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358345 (n : ℕ) : ℤ :=
  A358345.P3459524119190626708.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358345.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A362625.P11895608257886230771

`A161680(n+1)-A094471(n+1)`
-/

namespace A362625.P11895608257886230771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 1) - A094471 (n + 1)

end

end A362625.P11895608257886230771

noncomputable section

/-- A362625: a(n) = Sum_{k not divides n - k, 0 <= k < n} k.

Offset 1, canonical program `A362625.P11895608257886230771`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362625 (n : ℕ) : ℤ :=
  A362625.P11895608257886230771.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362625.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A365333.P16754517503052846213

`A325837(A008833(n+1))`
-/

namespace A365333.P16754517503052846213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 (A008833 (n + 1)).toNat

end

end A365333.P16754517503052846213

noncomputable section

/-- A365333: The number of exponentially odd coreful divisors of the largest square dividing n.

Offset 1, canonical program `A365333.P16754517503052846213`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365333 (n : ℕ) : ℤ :=
  A365333.P16754517503052846213.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365333.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A365335.P17558981587538508230`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365335 (n : ℕ) : ℤ :=
  A365335.P17558981587538508230.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365335.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369255.P8598601348355343696

`A000035(A140773(n+1))`
-/

namespace A369255.P8598601348355343696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A140773 (n + 1)).toNat

end

end A369255.P8598601348355343696

noncomputable section

/-- A369255: Parity of A140773, where A140773 is the inverse Möbius transform of A038548.

Offset 1, canonical program `A369255.P8598601348355343696`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369255 (n : ℕ) : ℤ :=
  A369255.P8598601348355343696.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369255.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A378689.P1510602258272592055`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378689 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378689.P1510602258272592055.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378689.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A379012.P2257624155455655702`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379012 (n : ℕ) : ℤ :=
  A379012.P2257624155455655702.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379012.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A384039.P501374229282007697

`∑{d}[n+1, A112526(#)*A000010((n+1)/#)]`
-/

namespace A384039.P501374229282007697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112526 d * A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384039.P501374229282007697

noncomputable section

/-- A384039: The number of integers k from 1 to n such that gcd(n,k) is a powerful number.

Offset 1, canonical program `A384039.P501374229282007697`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384039 (n : ℕ) : ℤ :=
  A384039.P501374229282007697.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384039.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A389905.P14127833197963390982

`A107078(n+1)*(1-A112526(n+1))`
-/

namespace A389905.P14127833197963390982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (n + 1) * (1 - A112526 (n + 1))

end

end A389905.P14127833197963390982

noncomputable section

/-- A389905: a(n) = 1 if n is neither squarefree nor powerful, otherwise 0.

Offset 1, canonical program `A389905.P14127833197963390982`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389905 (n : ℕ) : ℤ :=
  A389905.P14127833197963390982.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389905.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390260.P12756077447559123677

`2*A063775(16*(n+1))-3*A063775(n+1)`
-/

namespace A390260.P12756077447559123677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063775 (16 * (n + 1)) - 3 * A063775 (n + 1)

end

end A390260.P12756077447559123677

noncomputable section

/-- A390260: Expansion of Sum_{k>=1} (-1)^(k+1)*x^(k^4)/(1-x^(k^4)).

Offset 1, canonical program `A390260.P12756077447559123677`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390260 (n : ℕ) : ℤ :=
  A390260.P12756077447559123677.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390260.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A391597.P14152947396835619235

`2*(A006218(n+1)+A061201(n+1))+A013936(n+1)-(n+1)`
-/

namespace A391597.P14152947396835619235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006218 (n + 1) + A061201 (n + 1)) + A013936 (n + 1) - (n + 1 : ℤ)

end

end A391597.P14152947396835619235

noncomputable section

/-- A391597: a(n) is the number of quadratic polynomials with coefficients in {-n, ..., n}, positive leading coefficient, and having two integer roots.

Offset 1, canonical program `A391597.P14152947396835619235`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391597 (n : ℕ) : ℤ :=
  A391597.P14152947396835619235.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391597.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398463.P753977206100688951

`A360969(n+1)*(n+1)`
-/

namespace A398463.P753977206100688951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360969 (n + 1) * (n + 1 : ℤ)

end

end A398463.P753977206100688951

noncomputable section

/-- A398463: Multiplicative with a(p^e) = e^2 * p^e.

Offset 1, canonical program `A398463.P753977206100688951`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398463 (n : ℕ) : ℤ :=
  A398463.P753977206100688951.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398463.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A343569.P1783949158837083171`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343569 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A343569.P1783949158837083171.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343569.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A345451.P7254326500789221208`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345451 (n : ℕ) : ℤ :=
  A345451.P7254326500789221208.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345451.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347126.P7898860636794347503

`A347129(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347126.P7898860636794347503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347129 (A276086 n).toNat

end

end A347126.P7898860636794347503

noncomputable section

/-- A347126: a(n) = A347129(A276086(n)).

Offset 0, canonical program `A347126.P7898860636794347503`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347126 (n : ℕ) : ℤ :=
  A347126.P7898860636794347503.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347126.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A348503.P1074527465490067139`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000203(n+1), A034448(n+1))` (program `A348503.P1074527465490067139`, by `A348503.P1074527465490067139.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A348503 (n : ℕ) : ℤ :=
  (A348503.P1074527465490067139.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000203(n+1), A034448(n+1))` (program `A348503.P1074527465490067139`, by `A348503.P1074527465490067139.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A348503.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A348996.P7613641597238718429

`A034448(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348996.P7613641597238718429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A276086 n).toNat

end

end A348996.P7613641597238718429

noncomputable section

/-- A348996: a(n) = usigma(A276086(n)), where usigma (A034448) is multiplicative with a(p^e) = (p^e)+1, and A276086 gives the prime product form of primorial base expansion of n.

Offset 0, canonical program `A348996.P7613641597238718429`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A034448(A276086(n))` (program `A348996.P7613641597238718429`, by `A348996.P7613641597238718429.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A348996 (n : ℕ) : ℤ :=
  A348996.P7613641597238718429.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A034448(A276086(n))` (program `A348996.P7613641597238718429`, by `A348996.P7613641597238718429.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A348996.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A349005.P15599194683630198262

`A060866(n+1)+A038548(n+1)`
-/

namespace A349005.P15599194683630198262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060866 (n + 1) + A038548 (n + 1)

end

end A349005.P15599194683630198262

noncomputable section

/-- A349005: a(n) = Sum_{d|n, d^2>=n} 1+d+n/d.

Offset 1, canonical program `A349005.P15599194683630198262`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349005 (n : ℕ) : ℤ :=
  A349005.P15599194683630198262.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349005.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349322.P9604466983710966675

`A335182(n+1)+A349658(n+1)`
-/

namespace A349322.P9604466983710966675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335182 (n + 1) + A349658 (n + 1)

end

end A349322.P9604466983710966675

noncomputable section

/-- A349322: a(n) = Sum_{d|n} d^c(d), where c is the characteristic function of refactorable numbers (A336040).

Offset 1, canonical program `A349322.P9604466983710966675`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349322 (n : ℕ) : ℤ :=
  A349322.P9604466983710966675.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349322.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A349770.P12946265739044333858`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A034448(#)*A034448((n+1)/#)]` (program `A349770.P12946265739044333858`, by `A349770.P12946265739044333858.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A349770 (n : ℕ) : ℤ :=
  A349770.P12946265739044333858.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A034448(#)*A034448((n+1)/#)]` (program `A349770.P12946265739044333858`, by `A349770.P12946265739044333858.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A349770.provenance : SequenceMachineLib.Provenance := .verified

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

Offset 1, canonical program `A360720.P1092030022091777669`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360720 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A360720.P1092030022091777669.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360720.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A365209.P13908009698300430813`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365209 (n : ℕ) : ℤ :=
  A365209.P13908009698300430813.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365209.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A365211.P17121976784440689824`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365211 (n : ℕ) : ℤ :=
  A365211.P17121976784440689824.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365211.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A365403.P12086530719845818001`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365403 (n : ℕ) : ℤ :=
  A365403.P12086530719845818001.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365403.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A365404.P8504261663982695233`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365404 (n : ℕ) : ℤ :=
  A365404.P8504261663982695233.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365404.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A365479.P18110182428755733630`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365479 (n : ℕ) : ℤ :=
  A365479.P18110182428755733630.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365479.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A365480.P17885018013018802404`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365480 (n : ℕ) : ℤ :=
  A365480.P17885018013018802404.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365480.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A365481.P15972736645775399503`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365481 (n : ℕ) : ℤ :=
  A365481.P15972736645775399503.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365481.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369253.P11097286628827511262

`A000035(A038548(n+1))`
-/

namespace A369253.P11097286628827511262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A038548 (n + 1)).toNat

end

end A369253.P11097286628827511262

noncomputable section

/-- A369253: Parity of A038548, where A038548(n) is the number of divisors of n that are at most sqrt(n).

Offset 1, canonical program `A369253.P11097286628827511262`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369253 (n : ℕ) : ℤ :=
  A369253.P11097286628827511262.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369253.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A369718.P3306263792337587207`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369718 (n : ℕ) : ℤ :=
  A369718.P3306263792337587207.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369718.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A389162.P5482749429256733056`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A034448(n+1)-A048250(n+1)` (program `A389162.P5482749429256733056`, by `A389162.P5482749429256733056.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389162 (n : ℕ) : ℤ :=
  A389162.P5482749429256733056.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A034448(n+1)-A048250(n+1)` (program `A389162.P5482749429256733056`, by `A389162.P5482749429256733056.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389162.provenance : SequenceMachineLib.Provenance := .verified

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

Offset 1, canonical program `A390554.P5277183224943981996`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390554 (n : ℕ) : ℤ :=
  A390554.P5277183224943981996.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390554.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A394481.P10475431677930788014`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A034448(n+1)+A000005(n+1)-A000005(A007947(n+1))` (program `A394481.P10475431677930788014`, by `A394481.P10475431677930788014.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A394481 (n : ℕ) : ℤ :=
  A394481.P10475431677930788014.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A034448(n+1)+A000005(n+1)-A000005(A007947(n+1))` (program `A394481.P10475431677930788014`, by `A394481.P10475431677930788014.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A394481.provenance : SequenceMachineLib.Provenance := .verified

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

Offset 1, canonical program `A395435.P18346761836883339857`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A034448(n+1)+A000005(A007947(n+1))` (program `A395435.P18346761836883339857`, by `A395435.P18346761836883339857.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A395435 (n : ℕ) : ℤ :=
  A395435.P18346761836883339857.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A034448(n+1)+A000005(A007947(n+1))` (program `A395435.P18346761836883339857`, by `A395435.P18346761836883339857.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A395435.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A398543.P3266382039981285700

`A008683(A000026(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398543.P3266382039981285700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000026 (n + 1)).toNat

end

end A398543.P3266382039981285700

noncomputable section

/-- A398543: a(n) = A008683(A000026(n)).

Offset 1, canonical program `A398543.P3266382039981285700`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398543 (n : ℕ) : ℤ :=
  A398543.P3266382039981285700.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398543.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398576.P17709678476820359098

`A008836(A000026(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398576.P17709678476820359098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A000026 (n + 1)).toNat

end

end A398576.P17709678476820359098

noncomputable section

/-- A398576: a(n) = A008836(A000026(n)).

Offset 1, canonical program `A398576.P17709678476820359098`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398576 (n : ℕ) : ℤ :=
  A398576.P17709678476820359098.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398576.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 2, canonical program `A399227.P5856305221868028917`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399227 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399227.P5856305221868028917.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399227.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A343045.P7291903579203974821

`A343044(C(a(n-1)+n+1, 2)+n)` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A343045.P7291903579203974821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A343044 (Nat.choose (a (n - 1) + (n : ℤ) + 1).toNat 2 + n)

end

end A343045.P7291903579203974821

noncomputable section

/-- A343045: a(0) = 0 and for any n > 0, a(n) = A343044(a(n-1), n).

Offset 0, canonical program `A343045.P7291903579203974821`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A343044, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343045 (n : ℕ) : ℤ :=
  A343045.P7291903579203974821.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A343044, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343045.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A344687.P2981961979872629797

`floor(∑[A038024(1+n)/2])`
-/

namespace A344687.P2981961979872629797
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038024 (1 + n) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A344687.P2981961979872629797

noncomputable section

/-- A344687: a(n) is the lowest nonnegative exponent k such that n!^k is the product of the divisors of n!.

Offset 1, canonical program `A344687.P2981961979872629797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. -/
def A344687 (n : ℕ) : ℤ :=
  A344687.P2981961979872629797.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. -/
def A344687.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A347826.P7116760757321628685

`lt[2+n, A378548(n+1)]+1`
-/

namespace A347826.P7116760757321628685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378548 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A347826.P7116760757321628685

noncomputable section

/-- A347826: Numbers k with at least one odd semiprime divisor < k.

Offset 1, canonical program `A347826.P7116760757321628685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347826 (n : ℕ) : ℤ :=
  (A347826.P7116760757321628685.a (n - 1) : ℤ)

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

/-! ## A349330.P17425887972492855764

`A035316(n+1)+A056595(n+1)`
-/

namespace A349330.P17425887972492855764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (n + 1) + A056595 (n + 1)

end

end A349330.P17425887972492855764

noncomputable section

/-- A349330: a(n) = Sum_{d|n} d^c(d), where c is the characteristic function of squares (A010052).

Offset 1, canonical program `A349330.P17425887972492855764`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349330 (n : ℕ) : ℤ :=
  A349330.P17425887972492855764.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349330.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A351115.P14193806657140644474

`∑[A351114(1+n)]`
-/

namespace A351115.P14193806657140644474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351114 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351115.P14193806657140644474

noncomputable section

/-- A351115: Number of balanced numbers <= n.

Offset 1, canonical program `A351115.P14193806657140644474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351115 (n : ℕ) : ℤ :=
  A351115.P14193806657140644474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351116.P12581958324914610121

`∑[(1+n)*A351114(1+n)]`
-/

namespace A351116.P12581958324914610121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A351114 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351116.P12581958324914610121

noncomputable section

/-- A351116: Sum of the balanced numbers <= n.

Offset 1, canonical program `A351116.P12581958324914610121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351116 (n : ℕ) : ℤ :=
  A351116.P12581958324914610121.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351544.P15377189541473253501

`gcd(A045967(n+1)²², A000203(n+1))`
-/

namespace A351544.P15377189541473253501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((A045967 (n + 1) ^ 2) ^ 2) (A000203 (n + 1))

end

end A351544.P15377189541473253501

noncomputable section

/-- A351544: a(n) is the largest unitary divisor of sigma(n) such that its every prime factor also divides A003961(n), where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

Offset 1, canonical program `A351544.P15377189541473253501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351544 (n : ℕ) : ℤ :=
  (A351544.P15377189541473253501.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351746.P13626312203566205031

`A351711(n+1)-A248577(n+1)`
-/

namespace A351746.P13626312203566205031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351711 (n + 1) - A248577 (n + 1)

end

end A351746.P13626312203566205031

noncomputable section

/-- A351746: a(n) = Sum_{p|n, p prime} (p-1) * tau(n/p).

Offset 1, canonical program `A351746.P13626312203566205031`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351746 (n : ℕ) : ℤ :=
  A351746.P13626312203566205031.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351746.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353282.P2459302831157781440

`A046951(A013929(n+1))-1`
-/

namespace A353282.P2459302831157781440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A013929 (n + 1)).toNat - 1

end

end A353282.P2459302831157781440

noncomputable section

/-- A353282: a(n) is the number of solutions (x,y) to the Diophantine equation S(x,y) = (x+y) + (x-y) + (x*y) + (x/y) = A013929(n) when x >= y > 1 and y | x.

Offset 1, canonical program `A353282.P2459302831157781440`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353282 (n : ℕ) : ℤ :=
  A353282.P2459302831157781440.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353282.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A353494.P1731275669607245434

`col(gcd(2, A369669(n)))`
-/

namespace A353494.P1731275669607245434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (Int.gcd 2 (A369669 n))

end

end A353494.P1731275669607245434

noncomputable section

/-- A353494: a(n) = 1 if the arithmetic derivative of n is a multiple of 4, otherwise 0.

Offset 0, canonical program `A353494.P1731275669607245434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353494 (n : ℕ) : ℤ :=
  (A353494.P1731275669607245434.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353494.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A353514.P13549504508042514821

`A353513(2*n)`
-/

namespace A353514.P13549504508042514821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353513 (2 * n)

end

end A353514.P13549504508042514821

noncomputable section

/-- A353514: a(n) = 1 if A328572(2*n) is of the form 4m+3, and 0 otherwise.

Offset 0, canonical program `A353514.P13549504508042514821`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353513, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353514 (n : ℕ) : ℤ :=
  A353514.P13549504508042514821.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353513, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353514.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353798.P2681432505353467180

`val(A000040(A034836(n+1)), 7)`
-/

namespace A353798.P2681432505353467180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (A034836 (n + 1)).toNat).toNat 7

end

end A353798.P2681432505353467180

noncomputable section

/-- A353798: a(n) = 1 if n is either 4th power of a prime (A030514), or product of a prime and the square of a different prime (A054753), otherwise 0.

Offset 1, canonical program `A353798.P2681432505353467180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353798 (n : ℕ) : ℤ :=
  (A353798.P2681432505353467180.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353798.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A354360.P5539066247432648070

`∪[A002110(n), A013929(n+1)]`
-/

namespace A354360.P5539066247432648070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354360.P5539066247432648070

noncomputable section

/-- A354360: Positions of 1's in A354366.

Offset 1, canonical program `A354360.P5539066247432648070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354360 (n : ℕ) : ℤ :=
  (A354360.P5539066247432648070.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354360.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A355816.P18014603131133608948

`A143731(n+1)*A325964(n+1)`
-/

namespace A355816.P18014603131133608948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (n + 1) * A325964 (n + 1)

end

end A355816.P18014603131133608948

noncomputable section

/-- A355816: a(n) = 1 if n and sigma(n) are relatively prime, and n has at least two distinct prime factors, otherwise 0.

Offset 1, canonical program `A355816.P18014603131133608948`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325964, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355816 (n : ℕ) : ℤ :=
  A355816.P18014603131133608948.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325964, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355816.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355821.P9042093219998858000

`eq[1, A355820(n+1)]+1`
-/

namespace A355821.P9042093219998858000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A355821.P9042093219998858000

noncomputable section

/-- A355821: Numbers k for which A003961(k) and A276086(k) are relatively prime, where A003961 is fully multiplicative with a(p) = nextprime(p), and A276086 is primorial base exp-function.

Offset 1, canonical program `A355821.P9042093219998858000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355821 (n : ℕ) : ℤ :=
  (A355821.P9042093219998858000.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355822.P11988757692825687997

`eq[0, A355820(n+1)]+1`
-/

namespace A355822.P11988757692825687997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A355822.P11988757692825687997

noncomputable section

/-- A355822: Numbers k such that A003961(k) and A276086(k) share a prime factor, where A003961 is fully multiplicative with a(p) = nextprime(p), and A276086 is primorial base exp-function.

Offset 1, canonical program `A355822.P11988757692825687997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355822 (n : ℕ) : ℤ :=
  (A355822.P11988757692825687997.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356162.P12679252350348268070

`C(A351250(n), n)`
-/

namespace A356162.P12679252350348268070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A351250 n).toNat n

end

end A356162.P12679252350348268070

noncomputable section

/-- A356162: a(n) = 1 if n and A276086(n) are coprime, otherwise 0, where A276086 is primorial base exp-function.

Offset 0, canonical program `A356162.P12679252350348268070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356162 (n : ℕ) : ℤ :=
  (A356162.P12679252350348268070.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356312.P8907654554951399357

`eq[0, A356310(n)]`
-/

namespace A356312.P8907654554951399357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356312.P8907654554951399357

noncomputable section

/-- A356312: Numbers k such that A003415(k) and A276086(k) are not relatively prime, where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

Offset 1, canonical program `A356312.P8907654554951399357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356312 (n : ℕ) : ℤ :=
  (A356312.P8907654554951399357.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356382.P3347831406250475257

`filter[A088827(n+1), A325964(#)]`
-/

namespace A356382.P3347831406250475257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A356382.P3347831406250475257

noncomputable section

/-- A356382: Even terms in A014567.

Offset 1, canonical program `A356382.P3347831406250475257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A356382 (n : ℕ) : ℤ :=
  A356382.P3347831406250475257.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A356382.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A358220.P18272262896928745162

`A002620(C(2, A351230(n)))`
-/

namespace A358220.P18272262896928745162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (Nat.choose 2 (A351230 n).toNat)

end

end A358220.P18272262896928745162

noncomputable section

/-- A358220: a(n) = 1 if A276086(n) is a multiple of A003415(n), with a(0) = a(1) = 0. Here A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

Offset 0, canonical program `A358220.P18272262896928745162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358220 (n : ℕ) : ℤ :=
  A358220.P18272262896928745162.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358221.P12805660686626898052

`eq[1, A351230(n)]`
-/

namespace A358221.P12805660686626898052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351230 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358221.P12805660686626898052

noncomputable section

/-- A358221: Numbers k such that A003415(k) divides A276086(k), where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

Offset 1, canonical program `A358221.P12805660686626898052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5678 terms. -/
def A358221 (n : ℕ) : ℤ :=
  (A358221.P12805660686626898052.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5678 terms. -/
def A358221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358225.P16243062930879085285

`lt[0, A358224(1+n)]+1`
-/

namespace A358225.P16243062930879085285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358224 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A358225.P16243062930879085285

noncomputable section

/-- A358225: Numbers k such that A276086(k) mod k is an odd number, where A276086 is the primorial base exp-function.

Offset 1, canonical program `A358225.P16243062930879085285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358225 (n : ℕ) : ℤ :=
  (A358225.P16243062930879085285.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358226.P5637825052783525906

`lt[A358224(n+1), A358224(n+2)]+1`
-/

namespace A358226.P5637825052783525906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358224 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A358226.P5637825052783525906

noncomputable section

/-- A358226: Numbers k such that A276086(k) mod k is an even number, where A276086 is the primorial base exp-function.

Offset 1, canonical program `A358226.P5637825052783525906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358226 (n : ℕ) : ℤ :=
  (A358226.P5637825052783525906.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358226.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A358749.P2402015268471629723

`lt[1, A214546(A358765(n))]`
-/

namespace A358749.P2402015268471629723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214546 (A358765 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A358749.P2402015268471629723

noncomputable section

/-- A358749: Numbers k such that A358669(k) == 3 (mod 4).

Offset 1, canonical program `A358749.P2402015268471629723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6222 terms. -/
def A358749 (n : ℕ) : ℤ :=
  (A358749.P2402015268471629723.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6222 terms. -/
def A358749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358845.P2695353637350341039

`A328632(n+1)/6`
-/

namespace A358845.P2695353637350341039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328632 (n + 1) : ℚ) / 6

end

end A358845.P2695353637350341039

noncomputable section

/-- A358845: Numbers k for which A276086(6*k) == 1 (mod 6), where A276086 is the primorial base exp-function.

Offset 1, canonical program `A358845.P2695353637350341039`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358845 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A358845.P2695353637350341039.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358845.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A361123.P365243363734205809

`1-A361122(1+n)`
-/

namespace A361123.P365243363734205809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A361122 (1 + n)

end

end A361123.P365243363734205809

noncomputable section

/-- A361123: 1 if n-th composite number A002808(n) is divisible by 3, otherwise 0.

Offset 1, canonical program `A361123.P365243363734205809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361123 (n : ℕ) : ℤ :=
  A361123.P365243363734205809.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361123.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A362852.P12848711782831357270

`∏{e}[1+n, A076984(#)]`
-/

namespace A362852.P12848711782831357270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A076984 (Nat.factorization (f1 n) p)

end

end A362852.P12848711782831357270

noncomputable section

/-- A362852: The number of divisors of n that are both bi-unitary and exponential.

Offset 1, canonical program `A362852.P12848711782831357270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362852 (n : ℕ) : ℤ :=
  A362852.P12848711782831357270.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362852.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A363828.P12994089248689846751

`A363827(A048671(1+n))`
-/

namespace A363828.P12994089248689846751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363827 (A048671 (1 + n)).toNat

end

end A363828.P12994089248689846751

noncomputable section

/-- A363828: Highest power of 2 dividing n which is < sqrt(n), for n >= 2; a(1) = 1.

Offset 1, canonical program `A363828.P12994089248689846751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A363828 (n : ℕ) : ℤ :=
  A363828.P12994089248689846751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A363828.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A365632.P17635822754508151501

`∑{d}[1+n, A359552(#)]`
-/

namespace A365632.P17635822754508151501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359552 d

end

end A365632.P17635822754508151501

noncomputable section

/-- A365632: The number of divisors of n that are terms of A072873.

Offset 1, canonical program `A365632.P17635822754508151501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365632 (n : ℕ) : ℤ :=
  A365632.P17635822754508151501.a (n - 1)

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

/-! ## A366092.P5607048064636038311

`A051699(A007504(n))`
-/

namespace A366092.P5607048064636038311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A007504 n).toNat

end

end A366092.P5607048064636038311

noncomputable section

/-- A366092: Distance from the sum of the first n primes to the nearest prime.

Offset 0, canonical program `A366092.P5607048064636038311`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051699, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366092 (n : ℕ) : ℤ :=
  A366092.P5607048064636038311.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051699, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366092.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366371.P15725241029858370905

`∑{d}[n+1, 1-A354108(#)]`
-/

namespace A366371.P15725241029858370905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - A354108 d)

end

end A366371.P15725241029858370905

noncomputable section

/-- A366371: Number of divisors of n that are either an odd prime power > 1 or twice such a number.

Offset 1, canonical program `A366371.P15725241029858370905`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A354108, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366371 (n : ℕ) : ℤ :=
  A366371.P15725241029858370905.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A354108, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366371.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A366537.P6054453668731544926`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366537 (n : ℕ) : ℤ :=
  A366537.P6054453668731544926.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366537.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A368039.P7754328615677109513`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368039 (n : ℕ) : ℤ :=
  A368039.P7754328615677109513.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368039.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A368040.P1470060828506314969`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368040 (n : ℕ) : ℤ :=
  A368040.P1470060828506314969.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368040.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368105.P6887596357651866009

`∑{d}[n+1, A227291(#)*A325837((n+1)/#)]`
-/

namespace A368105.P6887596357651866009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A227291 d * A325837 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368105.P6887596357651866009

noncomputable section

/-- A368105: The number of bi-unitary divisors of n that are powerful (A001694).

Offset 1, canonical program `A368105.P6887596357651866009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368105 (n : ℕ) : ℤ :=
  A368105.P6887596357651866009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368105.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A368572.P10220559046429390353

`A208251(1+n)-A336041(n+1)`
-/

namespace A368572.P10220559046429390353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208251 (1 + n) - A336041 (n + 1)

end

end A368572.P10220559046429390353

noncomputable section

/-- A368572: Number of refactorable numbers less than n that do not divide n.

Offset 1, canonical program `A368572.P10220559046429390353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368572 (n : ℕ) : ℤ :=
  A368572.P10220559046429390353.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368817.P14983781891502281939

`A209291(n+1)-A335182(n+1)`
-/

namespace A368817.P14983781891502281939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209291 (n + 1) - A335182 (n + 1)

end

end A368817.P14983781891502281939

noncomputable section

/-- A368817: Sum of the refactorable numbers less than n that do not divide n.

Offset 1, canonical program `A368817.P14983781891502281939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368817 (n : ℕ) : ℤ :=
  A368817.P14983781891502281939.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368980.P2793519092083098094

`∏{e}[1+n, A183063(#)]`
-/

namespace A368980.P2793519092083098094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A183063 (Nat.factorization (f1 n) p)

end

end A368980.P2793519092083098094

noncomputable section

/-- A368980: The number of exponential divisors of n that are squares (A000290).

Offset 1, canonical program `A368980.P2793519092083098094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368980 (n : ℕ) : ℤ :=
  A368980.P2793519092083098094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369070.P15963165301272738747

`A008379(n)%A369008(n+1)`
-/

namespace A369070.P15963165301272738747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008379 n) (A369008 (n + 1))

end

end A369070.P15963165301272738747

noncomputable section

/-- A369070: a(n) = 1 if there is at least one prime power p^e in the prime factorization of n such that p|e, otherwise 0.

Offset 1, canonical program `A369070.P15963165301272738747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369070 (n : ℕ) : ℤ :=
  A369070.P15963165301272738747.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369307.P4586267227378045470

`∑{d}[n+1, A295316(#)*A295316((n+1)/#)]`
-/

namespace A369307.P4586267227378045470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A295316 d * A295316 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369307.P4586267227378045470

noncomputable section

/-- A369307: The number of exponentially odd divisors d of n such that n/d is also exponentially odd.

Offset 1, canonical program `A369307.P4586267227378045470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369307 (n : ℕ) : ℤ :=
  A369307.P4586267227378045470.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369654.P2538742691615164765

`lt[0, A369653(n)]`
-/

namespace A369654.P2538742691615164765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A369654.P2538742691615164765

noncomputable section

/-- A369654: Positions of multiples of 3 in A327860.

Offset 1, canonical program `A369654.P2538742691615164765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369654 (n : ℕ) : ℤ :=
  (A369654.P2538742691615164765.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369654.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A369759.P9544556233329631005`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356192, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369759 (n : ℕ) : ℤ :=
  A369759.P9544556233329631005.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356192, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

/-! ## A370898.P11759526509877032911

`∑[A034448(n+1)*(-1)^n]`
-/

namespace A370898.P11759526509877032911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370898.P11759526509877032911

noncomputable section

/-- A370898: Partial alternating sums of the sum of unitary divisors function (A034448).

Offset 1, canonical program `A370898.P11759526509877032911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370898 (n : ℕ) : ℤ :=
  A370898.P11759526509877032911.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371087.P11975484603000500801

`A008966(A351250(1+n))`
-/

namespace A371087.P11975484603000500801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A351250 (1 + n)).toNat

end

end A371087.P11975484603000500801

noncomputable section

/-- A371087: a(n) = 1 if A003557(n) divides A276086(n), otherwise a(n) = 0, where A003557(k) is k divided by its largest squarefree divisor, and A276086 is the primorial base exp-function.

Offset 1, canonical program `A371087.P11975484603000500801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371087 (n : ℕ) : ℤ :=
  A371087.P11975484603000500801.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371089.P15191308244992065629

`lt[1, gcd(n, A351230(n))]`
-/

namespace A371089.P15191308244992065629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A351230 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371089.P15191308244992065629

noncomputable section

/-- A371089: Numbers k such that A003557(k) does not divide A276086(k), where A003557(k) is k divided by its largest squarefree divisor, and A276086 is the primorial base exp-function.

Offset 1, canonical program `A371089.P15191308244992065629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371089 (n : ℕ) : ℤ :=
  (A371089.P15191308244992065629.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371242.P5673265149387836009

`A034448(gcd(n+1, (lcm(n+1, ∏{p}[n+1, #^3])/(n+1))²))`
-/

namespace A371242.P5673265149387836009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (((Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), p ^ 3) : ℚ) / (n + 1 : ℚ)) ^ 2)))

end

end A371242.P5673265149387836009

noncomputable section

/-- A371242: The sum of the unitary divisors of n that are cubefree numbers (A004709).

Offset 1, canonical program `A371242.P5673265149387836009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371242 (n : ℕ) : ℤ :=
  A371242.P5673265149387836009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372054.P9703510452411439942

`1+A182986(1+n)*(n+1)`
-/

namespace A372054.P9703510452411439942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A182986 (1 + n) * (n + 1 : ℤ)

end

end A372054.P9703510452411439942

noncomputable section

/-- A372054: a(0)=1; thereafter a(n) = (n+1)*prime(n)+1.

Offset 0, canonical program `A372054.P9703510452411439942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372054 (n : ℕ) : ℤ :=
  A372054.P9703510452411439942.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372054.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A373138.P8055344566125608397

`eq[1, A373137(n+1)]+1`
-/

namespace A373138.P8055344566125608397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373137 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373138.P8055344566125608397

noncomputable section

/-- A373138: Numbers k such that A276085(k) is a multiple of 8, where A276085 is the primorial base log-function.

Offset 1, canonical program `A373138.P8055344566125608397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8266 terms. -/
def A373138 (n : ℕ) : ℤ :=
  (A373138.P8055344566125608397.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8266 terms. -/
def A373138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373140.P14225362461454571500

`eq[1, A373139(1+n)]+1`
-/

namespace A373140.P14225362461454571500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373139 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373140.P14225362461454571500

noncomputable section

/-- A373140: Numbers k such that A276085(k) is a multiple of 5, where A276085 is the primorial base log-function.

Offset 1, canonical program `A373140.P14225362461454571500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373140 (n : ℕ) : ℤ :=
  (A373140.P14225362461454571500.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373256.P2342284569645799798

`1-(A359430(n)+A373254(n))`
-/

namespace A373256.P2342284569645799798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A359430 n + A373254 n)

end

end A373256.P2342284569645799798

noncomputable section

/-- A373256: a(n) = 1 if A003415(n) == -1 (mod 3), otherwise 0, where A003415 is the arithmetic derivative.

Offset 0, canonical program `A373256.P2342284569645799798`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373256 (n : ℕ) : ℤ :=
  A373256.P2342284569645799798.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373256.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373375.P9836898267973793501

`lt[0, A373374(1+n)]+1`
-/

namespace A373375.P9836898267973793501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373374 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A373375.P9836898267973793501

noncomputable section

/-- A373375: Numbers whose sum of prime factors (with repetition, A001414) and arithmetic derivative (A003415) are both even.

Offset 1, canonical program `A373375.P9836898267973793501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373375 (n : ℕ) : ℤ :=
  (A373375.P9836898267973793501.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373376.P8516979292291650049

`eq[0, A373374(n+1)]+1`
-/

namespace A373376.P8516979292291650049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373374 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373376.P8516979292291650049

noncomputable section

/-- A373376: Numbers k such that gcd(A001414(k), A003415(k)) is odd, where A001414 is the sum of prime factors with repetition, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373376.P8516979292291650049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373376 (n : ℕ) : ℤ :=
  (A373376.P8516979292291650049.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373475.P946616257811291269

`eq[1, A373474(n+1)]+1`
-/

namespace A373475.P946616257811291269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373474 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373475.P946616257811291269

noncomputable section

/-- A373475: Numbers k such that A001414(k) and A083345(k) are both multiples of 3, where A001414 is fully additive with a(p) = p, and A083345 is the numerator of the fully additive function with a(p) = 1/p.

Offset 1, canonical program `A373475.P946616257811291269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373475 (n : ℕ) : ℤ :=
  (A373475.P946616257811291269.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373478.P7130587212845501649

`lt[0, A373477(n+1)]+1`
-/

namespace A373478.P7130587212845501649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373477 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A373478.P7130587212845501649

noncomputable section

/-- A373478: Numbers k such that A001414(k) and A003415(k) are both multiples of 3, where A001414 is the sum of prime factors with repetition, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373478.P7130587212845501649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373478 (n : ℕ) : ℤ :=
  (A373478.P7130587212845501649.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373482.P15624618598912592188

`lt[0, A373481(n+1)]+1`
-/

namespace A373482.P15624618598912592188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A373482.P15624618598912592188

noncomputable section

/-- A373482: Numbers k for which A003415(k) is a multiple of A001414(k), where A003415 is the arithmetic derivative, and A001414 is the sum of prime factors with multiplicity.

Offset 1, canonical program `A373482.P15624618598912592188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373482 (n : ℕ) : ℤ :=
  (A373482.P15624618598912592188.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373487.P12079239083756637001

`record[(n+1)*A373486(n+1)]`
-/

namespace A373487.P12079239083756637001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A373486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373487.P12079239083756637001

noncomputable section

/-- A373487: Numbers k such that A276085(k) is a multiple of A003415(k), where A003415 is the arithmetic derivative and A276085 is fully additive with a(p) = p#/p.

Offset 1, canonical program `A373487.P12079239083756637001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373487 (n : ℕ) : ℤ :=
  A373487.P12079239083756637001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373494.P14928241058208554903

`record[(1+n)*A373493(n+1)]`
-/

namespace A373494.P14928241058208554903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A373493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373494.P14928241058208554903

noncomputable section

/-- A373494: Numbers k for which A059975(k) and A003415(k) are both multiples of 3, where A059975 is fully additive with a(p) = p-1, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373494.P14928241058208554903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9891 terms. -/
def A373494 (n : ℕ) : ℤ :=
  A373494.P14928241058208554903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9891 terms. -/
def A373494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373596.P13306228333999822897

`A373474(n+1)*A373493(n+1)`
-/

namespace A373596.P13306228333999822897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373474 (n + 1) * A373493 (n + 1)

end

end A373596.P13306228333999822897

noncomputable section

/-- A373596: a(n) = 1 if n is a non-multiple of 3 whose multiplicities of prime factors of types 3m-1 and 3m+1 are both multiples of 3, otherwise 0.

Offset 1, canonical program `A373596.P13306228333999822897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373596 (n : ℕ) : ℤ :=
  A373596.P13306228333999822897.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373602.P1354447199892951728

`lt[0, A373601(n)]`
-/

namespace A373602.P1354447199892951728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373601 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A373602.P1354447199892951728

noncomputable section

/-- A373602: Numbers k such that the sum of prime factors (with multiplicity) of A276086(k) is a multiple of 3, where A276086 is the primorial base exp-function.

Offset 1, canonical program `A373602.P1354447199892951728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373602 (n : ℕ) : ℤ :=
  (A373602.P1354447199892951728.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373831.P8717618971290599942

`lt[0, A373830(n)]`
-/

namespace A373831.P8717618971290599942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A373831.P8717618971290599942

noncomputable section

/-- A373831: Numbers whose primorial base representation has alternating digit sum that is a multiple of 3.

Offset 1, canonical program `A373831.P8717618971290599942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373831 (n : ℕ) : ℤ :=
  (A373831.P8717618971290599942.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373837.P11600665445971385302

`filter[A305800(n+1), A373836(#)]`
-/

namespace A373837.P11600665445971385302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373836 (f1 j).toNat = 1) n)

end

end A373837.P11600665445971385302

noncomputable section

/-- A373837: Numbers k such that bigomega(k) and A276085(k) are both multiples of 3, where bigomega (A001222) and A276085 are fully additive with a(p) = 1 and a(p) = p#/p respectively.

Offset 1, canonical program `A373837.P11600665445971385302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A373837 (n : ℕ) : ℤ :=
  A373837.P11600665445971385302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A373837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373839.P11373235336172593456

`record[n*A373838(n)]`
-/

namespace A373839.P11373235336172593456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A373838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373839.P11373235336172593456

noncomputable section

/-- A373839: Numbers k such that k and A276150(k) are both multiples of 3, where A276150 is the digit sum in the primorial base.

Offset 1, canonical program `A373839.P11373235336172593456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373839 (n : ℕ) : ℤ :=
  A373839.P11373235336172593456.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373852.P1180649417601384956

`eq[1, A373851(1+n)]+1`
-/

namespace A373852.P1180649417601384956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373851 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373852.P1180649417601384956

noncomputable section

/-- A373852: Numbers k such that A276085(k) is a multiple of bigomega(k), where bigomega (A001222) and A276085 are fully additive with a(p) = 1 and a(p) = p#/p respectively.

Offset 1, canonical program `A373852.P1180649417601384956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373852 (n : ℕ) : ℤ :=
  (A373852.P1180649417601384956.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374130.P2366869073036935020

`A010052(2*A293442(n+1))`
-/

namespace A374130.P2366869073036935020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * A293442 (n + 1)).toNat

end

end A374130.P2366869073036935020

noncomputable section

/-- A374130: a(n) = 1 if bitwise-XOR of the exponents of primes in the prime factorization of n is equal to 1, otherwise 0.

Offset 1, canonical program `A374130.P2366869073036935020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374130 (n : ℕ) : ℤ :=
  A374130.P2366869073036935020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374176.P17733740990044206540

`A087117(A180201(n+1))`
-/

namespace A374176.P17733740990044206540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A180201 (n + 1)).toNat

end

end A374176.P17733740990044206540

noncomputable section

/-- A374176: a(n) is the maximum number of consecutive bit changes in the binary representation of n.

Offset 1, canonical program `A374176.P17733740990044206540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A374176 (n : ℕ) : ℤ :=
  A374176.P17733740990044206540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A374176.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A374904.P9238241195218232398

`lt[A238952(n+1)%A000005(n+1), 1]+1`
-/

namespace A374904.P9238241195218232398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238952 (n + 1)) (A000005 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A374904.P9238241195218232398

noncomputable section

/-- A374904: Numbers whose divisors have an integer mean number of divisors.

Offset 1, canonical program `A374904.P9238241195218232398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5077 terms. -/
def A374904 (n : ℕ) : ℤ :=
  (A374904.P9238241195218232398.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5077 terms. -/
def A374904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375146.P15868328872555913811

`eq[1, A295884(n+1)]+1`
-/

namespace A375146.P15868328872555913811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295884 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375146.P15868328872555913811

noncomputable section

/-- A375146: Numbers whose prime factorization has exactly one exponent that is larger than 3.

Offset 1, canonical program `A375146.P15868328872555913811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3758 terms. -/
def A375146 (n : ℕ) : ℤ :=
  (A375146.P15868328872555913811.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3758 terms. -/
def A375146.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A375960.P3119828855472581405

`∪[A211338(1+n), ∑[A003215(n)]]`
-/

namespace A375960.P3119828855472581405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211338 (1 + n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375960.P3119828855472581405

noncomputable section

/-- A375960: Numbers whose product of proper divisors is a cube.

Offset 1, canonical program `A375960.P3119828855472581405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375960 (n : ℕ) : ℤ :=
  (A375960.P3119828855472581405.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376218.P15466731229053673563

`filter[2*n+1, A295316(#)]`
-/

namespace A376218.P15466731229053673563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j) = 1) n)

end

end A376218.P15466731229053673563

noncomputable section

/-- A376218: Odd exponentially odd numbers.

Offset 1, canonical program `A376218.P15466731229053673563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376218 (n : ℕ) : ℤ :=
  (A376218.P15466731229053673563.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376593.P5649486467984421573

`Δ[Δ[A013929(1+n)]]`
-/

namespace A376593.P5649486467984421573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (1 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376593.P5649486467984421573

noncomputable section

/-- A376593: Second differences of consecutive nonsquarefree numbers (A013929). First differences of A078147.

Offset 1, canonical program `A376593.P5649486467984421573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376593 (n : ℕ) : ℤ :=
  A376593.P5649486467984421573.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376593.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A376886.P1891403199738971229

`∑{e}[1+n, A267263(#)]`
-/

namespace A376886.P1891403199738971229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A267263 (Nat.factorization (f1 n) p)

end

end A376886.P1891403199738971229

noncomputable section

/-- A376886: The number of distinct factors of n of the form p^(k!), where p is a prime and k >= 1, when the factorization is uniquely done using the factorial-base representation of the exponents in the prime factorization of n.

Offset 1, canonical program `A376886.P1891403199738971229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376886 (n : ℕ) : ℤ :=
  A376886.P1891403199738971229.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377049.P6557862379142308554

`∑{#}[n, (-1)^(n-#)*C(n, #)*A013929(#+1)]`
-/

namespace A377049.P6557862379142308554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A013929 (k + 1) : ℚ)

end

end A377049.P6557862379142308554

noncomputable section

/-- A377049: First term of the n-th differences of the nonsquarefree numbers. Inverse zero-based binomial transform of A013929.

Offset 0, canonical program `A377049.P6557862379142308554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A377049 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A377049.P6557862379142308554.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A377049.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A379208.P17735300703008624525

`A297113(∩[A000040(n+1), A228157(n+1)])`
-/

namespace A379208.P17735300703008624525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228157 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A379208.P17735300703008624525

noncomputable section

/-- A379208: Numbers k such that prime(k) and prime(k) + 9 are anagrams.

Offset 1, canonical program `A379208.P17735300703008624525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A379208 (n : ℕ) : ℤ :=
  A379208.P17735300703008624525.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A379208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379479.P310701363561203726

`eq[1, A379478(n+1)]+1`
-/

namespace A379479.P310701363561203726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379478 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379479.P310701363561203726

noncomputable section

/-- A379479: Numbers k such that the greatest common divisor of k, sigma(k) and A003961(k) is 1 and gcd(A003961(k)-2k, A003961(k)-sigma(k)) > 1.

Offset 1, canonical program `A379479.P310701363561203726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4816 terms. -/
def A379479 (n : ℕ) : ℤ :=
  (A379479.P310701363561203726.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4816 terms. -/
def A379479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379486.P15785401160869906491

`record[(n+1)*A379485(n+1)]`
-/

namespace A379486.P15785401160869906491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A379485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379486.P15785401160869906491

noncomputable section

/-- A379486: Numbers k for which gcd(k,A003961(k))*gcd(sigma(k),A276086(k)) is equal to gcd(k,A276086(k))*gcd(sigma(k),A003961(k)), where A003961(n) is fully multiplicative with a(prime(i)) = prime(i+1), and A276086 is the primorial base exp-function.

Offset 1, canonical program `A379486.P15785401160869906491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7747 terms. -/
def A379486 (n : ℕ) : ℤ :=
  A379486.P15785401160869906491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7747 terms. -/
def A379486.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A383009.P3130308538145900733

`lt[0, A383004(n+1)]+1`
-/

namespace A383009.P3130308538145900733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383004 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A383009.P3130308538145900733

noncomputable section

/-- A383009: Indices of the even terms in the sequence of cubefree numbers.

Offset 1, canonical program `A383009.P3130308538145900733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4286 terms. -/
def A383009 (n : ℕ) : ℤ :=
  (A383009.P3130308538145900733.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4286 terms. -/
def A383009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383300.P14409288630299661785

`A348283(1+n)-char[1]`
-/

namespace A383300.P14409288630299661785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (1 + n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A383300.P14409288630299661785

noncomputable section

/-- A383300: Numbers k such that primorial base expansion of k has the primorial base expansion of k' as its suffix, where k' stands for the arithmetic derivative of k (A003415).

Offset 1, canonical program `A383300.P14409288630299661785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383300 (n : ℕ) : ℤ :=
  A383300.P14409288630299661785.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383686.P5995980824527707033

`A151800(A383685(n+1))`
-/

namespace A383686.P5995980824527707033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A383685 (n + 1)).toNat

end

end A383686.P5995980824527707033

noncomputable section

/-- A383686: The greater of two consecutive primes whose gap equals the difference between their digital roots.

Offset 1, canonical program `A383686.P5995980824527707033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2283 terms. -/
def A383686 (n : ℕ) : ℤ :=
  A383686.P5995980824527707033.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2283 terms. -/
def A383686.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A384519.P13348821675057678145

`∩[A072587(n+1), A375142(n+1)]`
-/

namespace A384519.P13348821675057678145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384519.P13348821675057678145

noncomputable section

/-- A384519: Numbers whose powerful part (A057521) is greater than 1 and is equal to a squarefree number raised to an even power (A384517).

Offset 1, canonical program `A384519.P13348821675057678145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7347 terms. -/
def A384519 (n : ℕ) : ℤ :=
  (A384519.P13348821675057678145.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7347 terms. -/
def A384519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384520.P4473728622954603946

`filter[A375142(n+1), A295316(#)]`
-/

namespace A384520.P4473728622954603946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A384520.P4473728622954603946

noncomputable section

/-- A384520: Numbers whose powerful part (A057521) is greater than 1 and is equal to a squarefree number raised to an odd power (A384518).

Offset 1, canonical program `A384520.P4473728622954603946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2653 terms. -/
def A384520 (n : ℕ) : ℤ :=
  A384520.P4473728622954603946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2653 terms. -/
def A384520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384916.P9309222834282099284

`A056626(9*A000265(3*(n+1)))`
-/

namespace A384916.P9309222834282099284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056626 (9 * A000265 (3 * (n + 1))).toNat

end

end A384916.P9309222834282099284

noncomputable section

/-- A384916: The number of unordered factorizations of n into powers of primes of the form p^e where p is prime and 0 <= e < p.

Offset 1, canonical program `A384916.P9309222834282099284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 370 terms. -/
def A384916 (n : ℕ) : ℤ :=
  A384916.P9309222834282099284.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 370 terms. -/
def A384916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385049.P18029137429873017616

`A034448(A385007(1+n))`
-/

namespace A385049.P18029137429873017616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A385007 (1 + n)).toNat

end

end A385049.P18029137429873017616

noncomputable section

/-- A385049: The sum of the unitary divisors of n that are biquadratefree numbers (A046100).

Offset 1, canonical program `A385049.P18029137429873017616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385049 (n : ℕ) : ℤ :=
  A385049.P18029137429873017616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385135.P2610461928447885844

`∑{d}[n+1, #*A295316((n+1)/#)]`
-/

namespace A385135.P2610461928447885844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A295316 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385135.P2610461928447885844

noncomputable section

/-- A385135: The sum of divisors d of n such that n/d is an exponentially odd number (A268335).

Offset 1, canonical program `A385135.P2610461928447885844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385135 (n : ℕ) : ℤ :=
  A385135.P2610461928447885844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385350.P15169529232628226014

`filter[1+2*n, A354927(#)]`
-/

namespace A385350.P15169529232628226014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j) = 1) n)

end

end A385350.P15169529232628226014

noncomputable section

/-- A385350: Numbers j such that the product of odd proper divisors of j is j.

Offset 1, canonical program `A385350.P15169529232628226014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385350 (n : ℕ) : ℤ :=
  (A385350.P15169529232628226014.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385350.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A387097.P16679532422967816708

`lt[A001222(1+n), A235224(n)]+1`
-/

namespace A387097.P16679532422967816708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A387097.P16679532422967816708

noncomputable section

/-- A387097: Numbers k such that k > prime(bigomega(k))#, where prime(bigomega(k))# is the product of the first bigomega(k) primes and bigomega(k) is the number of prime divisors of k (counted multiplicity).

Offset 1, canonical program `A387097.P16679532422967816708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8872 terms. -/
def A387097 (n : ℕ) : ℤ :=
  (A387097.P16679532422967816708.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8872 terms. -/
def A387097.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A389532.P10753604552045848373

`eq[1-(val(n, 2)-a(n-1)), A087117(n)]` with `a(0)=2, a(1)=0`
-/

namespace A389532.P10753604552045848373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  1 - ((SequenceMachineLib.valuation n 2 : ℤ) - f1 (n - 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389532.P10753604552045848373

noncomputable section

/-- A389532: Standard composition numbers of integer compositions with maximum = length.

Offset 1, canonical program `A389532.P10753604552045848373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 843 terms. -/
def A389532 (n : ℕ) : ℤ :=
  (A389532.P10753604552045848373.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 843 terms. -/
def A389532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390329.P2105305109020500693

`lt[A067434(1+n)%2, 1]+1`
-/

namespace A390329.P2105305109020500693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067434 (1 + n)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A390329.P2105305109020500693

noncomputable section

/-- A390329: Numbers k such that the number of distinct prime divisors of binomial(2k, k) is even.

Offset 1, canonical program `A390329.P2105305109020500693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A390329 (n : ℕ) : ℤ :=
  (A390329.P2105305109020500693.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A390329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390330.P15860536857581709408

`lt[0, A067434(n+1)%2]+1`
-/

namespace A390330.P15860536857581709408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067434 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A390330.P15860536857581709408

noncomputable section

/-- A390330: Numbers k such that the number of distinct prime divisors of binomial(2k, k) is odd.

Offset 0, canonical program `A390330.P15860536857581709408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. -/
def A390330 (n : ℕ) : ℤ :=
  (A390330.P15860536857581709408.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. -/
def A390330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390430.P10162283032244462444

`A061395(n+1)+A061395(n+1)-A243055(n+1)`
-/

namespace A390430.P10162283032244462444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) + (A061395 (n + 1) - A243055 (n + 1))

end

end A390430.P10162283032244462444

noncomputable section

/-- A390430: Least prime index of n plus greatest prime index of n; a(1) = 0.

Offset 1, canonical program `A390430.P10162283032244462444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390430 (n : ℕ) : ℤ :=
  A390430.P10162283032244462444.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390613.P13768311840881029602

`∩[A034961(n+1), A166039(n+1)]`
-/

namespace A390613.P13768311840881029602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390613.P13768311840881029602

noncomputable section

/-- A390613: Numbers that are the sum of three consecutive primes and also the sum of three consecutive composites.

Offset 1, canonical program `A390613.P13768311840881029602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 507 terms. -/
def A390613 (n : ℕ) : ℤ :=
  (A390613.P13768311840881029602.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 507 terms. -/
def A390613.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A390988.P3283791810356928439

`eq[-19, 19*(-1)^A243055(n+1)]+1`
-/

namespace A390988.P3283791810356928439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -19

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  19 * (-1 : ℚ) ^ (A243055 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A390988.P3283791810356928439

noncomputable section

/-- A390988: Numbers k > 1 such that the least prime index of k plus the greatest prime index of k is odd.

Offset 1, canonical program `A390988.P3283791810356928439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4384 terms. -/
def A390988 (n : ℕ) : ℤ :=
  (A390988.P3283791810356928439.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4384 terms. -/
def A390988.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A393047.P10680938976883129171

`eq[7, A020639(A400151(n))]`
-/

namespace A393047.P10680938976883129171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A400151 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A393047.P10680938976883129171

noncomputable section

/-- A393047: Numbers such that the least prime not dividing their arithmetic derivative is 7.

Offset 1, canonical program `A393047.P10680938976883129171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A393047 (n : ℕ) : ℤ :=
  (A393047.P10680938976883129171.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A393047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393211.P7893023393097711899

`n-A176965(A087230(1+n))+1`
-/

namespace A393211.P7893023393097711899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A176965 (A087230 (1 + n)).toNat + 1

end

end A393211.P7893023393097711899

noncomputable section

/-- A393211: Number computed by Wolfram's 2-state 2-symbol Turing machine 773 when started with n on the tape.

Offset 1, canonical program `A393211.P7893023393097711899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393211 (n : ℕ) : ℤ :=
  A393211.P7893023393097711899.a (n - 1)

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

/-! ## A394619.P12031009564495718433

`A391713(A126706(n+1))`
-/

namespace A394619.P12031009564495718433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391713 (A126706 (n + 1)).toNat

end

end A394619.P12031009564495718433

noncomputable section

/-- A394619: Number of divisors d | k such that d is neither squarefree nor squareful (in A332785) and k = A126706(n).

Offset 1, canonical program `A394619.P12031009564495718433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3866 terms. -/
def A394619 (n : ℕ) : ℤ :=
  A394619.P12031009564495718433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3866 terms. -/
def A394619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395057.P10478793912773050899

`A241917(A276085(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395057.P10478793912773050899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (A276085 (n + 2)).toNat

end

end A395057.P10478793912773050899

noncomputable section

/-- A395057: a(n) = A241917(A276085(n)).

Offset 2, canonical program `A395057.P10478793912773050899`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395057 (n : ℕ) : ℤ :=
  A395057.P10478793912773050899.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395057.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395059.P13396661098549412481

`A328479(A276085(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395059.P13396661098549412481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (A276085 (n + 2)).toNat

end

end A395059.P13396661098549412481

noncomputable section

/-- A395059: a(n) = A328479(A276085(n)).

Offset 2, canonical program `A395059.P13396661098549412481`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, A328479, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A395059 (n : ℕ) : ℤ :=
  A395059.P13396661098549412481.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, A328479, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A395059.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396336.P13045972141286078433

`∑{d}[n+1, A055615(#)*A333645((n+1)/#)]`
-/

namespace A396336.P13045972141286078433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A333645 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396336.P13045972141286078433

noncomputable section

/-- A396336: Dirichlet convolution of A047994 with A023900.

Offset 1, canonical program `A396336.P13045972141286078433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396336 (n : ℕ) : ℤ :=
  A396336.P13045972141286078433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396336.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A398750.P8364193390251612125

`∩[A002378(n), A013929(n+1)]`
-/

namespace A398750.P8364193390251612125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398750.P8364193390251612125

noncomputable section

/-- A398750: Nonsquarefree oblong numbers.

Offset 1, canonical program `A398750.P8364193390251612125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A398750 (n : ℕ) : ℤ :=
  (A398750.P8364193390251612125.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A398750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398753.P7244774305929382009

`filter[A308874(n+1), A008966(#)]`
-/

namespace A398753.P7244774305929382009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A398753.P7244774305929382009

noncomputable section

/-- A398753: Squarefree composite numbers that are not also oblong.

Offset 1, canonical program `A398753.P7244774305929382009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5626 terms. -/
def A398753 (n : ℕ) : ℤ :=
  A398753.P7244774305929382009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5626 terms. -/
def A398753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398923.P3360523914965098453

`∑[A398922(1+n)]`
-/

namespace A398923.P3360523914965098453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398922 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398923.P3360523914965098453

noncomputable section

/-- A398923: Number of distinct acute lattice trapezia of area at most n/2 with horizontal base.

Offset 1, canonical program `A398923.P3360523914965098453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398923 (n : ℕ) : ℤ :=
  A398923.P3360523914965098453.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398923.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A399733.P11103501656133543636`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363289, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399733 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399733.P11103501656133543636.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363289, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399733.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399829.P142880181418372781

`∑{d}[n+1, A056671(#)*A112526((n+1)/#)]`
-/

namespace A399829.P142880181418372781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056671 d * A112526 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399829.P142880181418372781

noncomputable section

/-- A399829: The number of divisors d of n such that gcud(d, n/d) is a powerful number (A001694), where gcud is the greatest common unitary divisor.

Offset 1, canonical program `A399829.P142880181418372781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399829 (n : ℕ) : ℤ :=
  A399829.P142880181418372781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400251.P8247026051378105687

`lt[A400249(2*(n+1)), A400249(n+1)]+1`
-/

namespace A400251.P8247026051378105687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400249 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A400251.P8247026051378105687

noncomputable section

/-- A400251: Numbers k for which A400249(k) is not zero, where A400249 is Möbius transform of A085731, with A085731(n) = gcd(n,n'), and n' the arithmetic derivative of n.

Offset 1, canonical program `A400251.P8247026051378105687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A400251 (n : ℕ) : ℤ :=
  (A400251.P8247026051378105687.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A400251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401234.P7045811185176352010

`record[A007913(A401232(1+n))]`
-/

namespace A401234.P7045811185176352010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A401232 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A401234.P7045811185176352010

noncomputable section

/-- A401234: Squarefree numbers k such that A006530(k) divides A276085(k), where A006530(k) is the largest prime dividing k (with 1 if k is 1), and A276085 is fully additive with a(p) = p#/p.

Offset 1, canonical program `A401234.P7045811185176352010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A401234 (n : ℕ) : ℤ :=
  A401234.P7045811185176352010.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A401234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401505.P12185595390029850357

`log2(A307848(n+1))`
-/

namespace A401505.P12185595390029850357
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A307848 (n + 1) : ℝ)

end

end A401505.P12185595390029850357

noncomputable section

/-- A401505: a(n) = log_2(A307848(n)).

Offset 1, canonical program `A401505.P12185595390029850357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401505 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A401505.P12185595390029850357.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343023.P18037542351150786665

`floor(A160498(1+n)/2)`
-/

namespace A343023.P18037542351150786665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160498 (1 + n) : ℚ) / 2⌋

end

end A343023.P18037542351150786665

noncomputable section

/-- A343023: Number of cyclic cubic fields with discriminant n^2.

Offset 1, canonical program `A343023.P18037542351150786665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343023 (n : ℕ) : ℤ :=
  A343023.P18037542351150786665.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343023.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A346096.P17167068116634491318

`A319626(A324886(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346096.P17167068116634491318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (A324886 (n + 1)).toNat

end

end A346096.P17167068116634491318

noncomputable section

/-- A346096: Numerator of the primorial deflation of A276086(A108951(n)): a(n) = A319626(A324886(n)).

Offset 1, canonical program `A346096.P17167068116634491318`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346096 (n : ℕ) : ℤ :=
  A346096.P17167068116634491318.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346096.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A346097.P152437009459244194

`A319627(A324886(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346097.P152437009459244194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (A324886 (n + 1)).toNat

end

end A346097.P152437009459244194

noncomputable section

/-- A346097: Denominator of the primorial deflation of A276086(A108951(n)): a(n) = A319627(A324886(n)).

Offset 1, canonical program `A346097.P152437009459244194`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346097 (n : ℕ) : ℤ :=
  A346097.P152437009459244194.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346097.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347880.P11203229831451284664

`eq[0, A347883(1+n)]+1`
-/

namespace A347880.P11203229831451284664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347883 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347880.P11203229831451284664

noncomputable section

/-- A347880: Numbers k such that A342926(k) is a multiple of 3.

Offset 1, canonical program `A347880.P11203229831451284664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347880 (n : ℕ) : ℤ :=
  (A347880.P11203229831451284664.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348282.P7832923759716863691

`∑{d}[1+n, A354874(#)]`
-/

namespace A348282.P7832923759716863691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A354874 d

end

end A348282.P7832923759716863691

noncomputable section

/-- A348282: a(n) = Sum_{d|n, d>1} mu(d')^2.

Offset 1, canonical program `A348282.P7832923759716863691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348282 (n : ℕ) : ℤ :=
  A348282.P7832923759716863691.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348738.P14169200650584262410

`lt[0, A348736(1+n)]+1`
-/

namespace A348738.P14169200650584262410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348736 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A348738.P14169200650584262410

noncomputable section

/-- A348738: Numbers k for which A326042(k) < k, where A326042(n) = A064989(sigma(A003961(n))).

Offset 1, canonical program `A348738.P14169200650584262410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348738 (n : ℕ) : ℤ :=
  (A348738.P14169200650584262410.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348941.P16476962796183016569

`(n+1)/A348940(n+1)`
-/

namespace A348941.P16476962796183016569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A348940 (n + 1) : ℚ)

end

end A348941.P16476962796183016569

noncomputable section

/-- A348941: a(n) = n / gcd(n, A326042(n)).

Offset 1, canonical program `A348941.P16476962796183016569`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348941 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348941.P16476962796183016569.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348941.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348942.P4298548663594448972

`A326042(n+1)/A348940(n+1)`
-/

namespace A348942.P4298548663594448972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326042 (n + 1) : ℚ) / (A348940 (n + 1) : ℚ)

end

end A348942.P4298548663594448972

noncomputable section

/-- A348942: a(n) = A326042(n) / gcd(n, A326042(n)).

Offset 1, canonical program `A348942.P4298548663594448972`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348942 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348942.P4298548663594448972.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348942.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A349383.P13419108071231034251

`A349381(n+1)+A349382(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349383.P13419108071231034251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349381 (n + 1) + A349382 (n + 1)

end

end A349383.P13419108071231034251

noncomputable section

/-- A349383: a(n) = A349381(n) + A349382(n).

Offset 1, canonical program `A349383.P13419108071231034251`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349383 (n : ℕ) : ℤ :=
  A349383.P13419108071231034251.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349383.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350076.P7815831032060744758

`lt[-1, A350074(1+n)]+1`
-/

namespace A350076.P7815831032060744758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350074 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A350076.P7815831032060744758

noncomputable section

/-- A350076: Numbers k for which the maximal digit in their primorial base expansion (A328114) is greater than or equal to the maximal exponent in the prime factorization of k (A051903).

Offset 1, canonical program `A350076.P7815831032060744758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350076 (n : ℕ) : ℤ :=
  (A350076.P7815831032060744758.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350616.P3227799255639392104

`1+A350833(n)+a(n-1)` with `a(0)=1`
-/

namespace A350616.P3227799255639392104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 + A350833 n + a (n - 1)

end

end A350616.P3227799255639392104

noncomputable section

/-- A350616: Indices of odd terms in A350877.

Offset 1, canonical program `A350616.P3227799255639392104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350616 (n : ℕ) : ℤ :=
  A350616.P3227799255639392104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351039.P10208737902937435618

`A275973(A350074(1+n)+16)`
-/

namespace A351039.P10208737902937435618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275973 (A350074 (1 + n) + 16).toNat

end

end A351039.P10208737902937435618

noncomputable section

/-- A351039: a(n) = 1 if the maximal digit in the primorial base expansion of n is less than or equal to the maximal exponent in the prime factorization of n.

Offset 1, canonical program `A351039.P10208737902937435618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351039 (n : ℕ) : ℤ :=
  A351039.P10208737902937435618.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351074.P18208455295693580235

`A328391(n+1)-A051903(n+1)`
-/

namespace A351074.P18208455295693580235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1) - A051903 (n + 1)

end

end A351074.P18208455295693580235

noncomputable section

/-- A351074: Difference between the maximal exponent in the prime factorization of A327860(n) and the maximal exponent in the prime factorization of n.

Offset 1, canonical program `A351074.P18208455295693580235`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A328391, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351074 (n : ℕ) : ℤ :=
  A351074.P18208455295693580235.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A328391, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351074.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351097.P8782879779390554871

`A328390(n+1)-A051903(n+1)`
-/

namespace A351097.P8782879779390554871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328390 (n + 1) - A051903 (n + 1)

end

end A351097.P8782879779390554871

noncomputable section

/-- A351097: Difference between {the maximal digit value in primorial base expansion of the arithmetic derivative of n} and {the maximal exponent in the prime factorization of n}.

Offset 1, canonical program `A351097.P8782879779390554871`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A328390, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351097 (n : ℕ) : ℤ :=
  A351097.P8782879779390554871.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A328390, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351097.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A351956.P6589697871042675156

`val(A346091(A006530(n+1)), A346091(n+1))`
-/

namespace A351956.P6589697871042675156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A346091 (A006530 (n + 1)).toNat).toNat (A346091 (n + 1)).toNat

end

end A351956.P6589697871042675156

noncomputable section

/-- A351956: a(n) = 1 if either n = 1 or the primorial inflation of n is equal to k * p#, where p# is the primorial (A034386) of some prime p, and 1 <= k < p, otherwise 0.

Offset 1, canonical program `A351956.P6589697871042675156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351956 (n : ℕ) : ℤ :=
  (A351956.P6589697871042675156.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351979.P3489854722003170254

`A066208(1+n)²`
-/

namespace A351979.P3489854722003170254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (1 + n) ^ 2

end

end A351979.P3489854722003170254

noncomputable section

/-- A351979: Numbers whose prime factorization has all odd prime indices and all even prime exponents.

Offset 1, canonical program `A351979.P3489854722003170254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351979 (n : ℕ) : ℤ :=
  A351979.P3489854722003170254.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352142.P472713201119233147

`filter[A066208(1+n), A295316(#)]`
-/

namespace A352142.P472713201119233147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A352142.P472713201119233147

noncomputable section

/-- A352142: Numbers whose prime factorization has all odd indices and all odd exponents.

Offset 1, canonical program `A352142.P472713201119233147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7692 terms. -/
def A352142 (n : ℕ) : ℤ :=
  A352142.P472713201119233147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7692 terms. -/
def A352142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352489.P17449502583535603136

`record[A331170(1+n)]`
-/

namespace A352489.P17449502583535603136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331170 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352489.P17449502583535603136

noncomputable section

/-- A352489: Weak excedance set of A122111. Numbers k <= A122111(k), where A122111 represents partition conjugation using Heinz numbers.

Offset 1, canonical program `A352489.P17449502583535603136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352489 (n : ℕ) : ℤ :=
  A352489.P17449502583535603136.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353483.P6769065041078207878

`A353482(n+1)*A353492(n+1)`
-/

namespace A353483.P6769065041078207878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353482 (n + 1) * A353492 (n + 1)

end

end A353483.P6769065041078207878

noncomputable section

/-- A353483: a(n) = 1 if n is a squarefree semiprime of the form (4t+3)*(4u+3), otherwise 0.

Offset 1, canonical program `A353483.P6769065041078207878`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353482, A353492, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353483 (n : ℕ) : ℤ :=
  A353483.P6769065041078207878.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353482, A353492, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353483.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353638.P14021207844737996786

`A000035(n+1)*A348737(A064989(n+1))`
-/

namespace A353638.P14021207844737996786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A348737 (A064989 (n + 1)).toNat

end

end A353638.P14021207844737996786

noncomputable section

/-- A353638: a(n) = 1 if n is odd and A064989(sigma(n)) < A064989(n), otherwise 0. Here A064989 shifts the prime factorization one step towards lower primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A353638.P14021207844737996786`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353638 (n : ℕ) : ℤ :=
  A353638.P14021207844737996786.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353638.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353760.P14939802350738950775

`Δ[fp[A353758(n+1)]]`
-/

namespace A353760.P14939802350738950775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353758 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A353760.P14939802350738950775

noncomputable section

/-- A353760: a(n) = 1 if A353749(n) > A353749(sigma(n)), otherwise 0. Here A353749(n) = phi(n)*A064989(n), and A064989 shifts the prime factorization one step towards lower primes.

Offset 1, canonical program `A353760.P14939802350738950775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353760 (n : ℕ) : ℤ :=
  A353760.P14939802350738950775.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353762.P17104672852573275809

`A353749(n+1)/A353761(n+1)`
-/

namespace A353762.P17104672852573275809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353749 (n + 1) : ℚ) / (A353761 (n + 1) : ℚ)

end

end A353762.P17104672852573275809

noncomputable section

/-- A353762: a(n) = A353749(n) / gcd(A353749(n), A353750(n)).

Offset 1, canonical program `A353762.P17104672852573275809`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353762 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353762.P17104672852573275809.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353762.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353763.P12682200873650253050

`A353750(n+1)/A353761(n+1)`
-/

namespace A353763.P12682200873650253050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353750 (n + 1) : ℚ) / (A353761 (n + 1) : ℚ)

end

end A353763.P12682200873650253050

noncomputable section

/-- A353763: a(n) = A353750(n) / gcd(A353749(n), A353750(n)).

Offset 1, canonical program `A353763.P12682200873650253050`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353763 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353763.P12682200873650253050.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353763.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A354352.P17273981126051983419

`A108951(n+1)+A354351(n+1)`
-/

namespace A354352.P17273981126051983419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1) + A354351 (n + 1)

end

end A354352.P17273981126051983419

noncomputable section

/-- A354352: Sum of primorial inflation (A108951) and its Dirichlet inverse.

Offset 1, canonical program `A354352.P17273981126051983419`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A354352 (n : ℕ) : ℤ :=
  A354352.P17273981126051983419.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A354352.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A354923.P8129989399007773967

`C(n%2, A089233(n+1))`
-/

namespace A354923.P8129989399007773967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n % 2) (A089233 (n + 1)).toNat

end

end A354923.P8129989399007773967

noncomputable section

/-- A354923: a(n) = 1 if n is either a power of prime or 2*prime, otherwise 0.

Offset 1, canonical program `A354923.P8129989399007773967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354923 (n : ℕ) : ℤ :=
  (A354923.P8129989399007773967.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355946.P8058548396352756373

`Δ[fp[A349756(n+1)]]`
-/

namespace A355946.P8058548396352756373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349756 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A355946.P8058548396352756373

noncomputable section

/-- A355946: a(n) = 1 if the odd part of sigma(k) divides A003961(k), otherwise 0, where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

Offset 1, canonical program `A355946.P8058548396352756373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355946 (n : ℕ) : ℤ :=
  A355946.P8058548396352756373.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356735.P13560131192145601515

`∑{p}[n+1, gcd(n, #)]-A356733(n+1)`
-/

namespace A356735.P13560131192145601515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ) - A356733 (n + 1)

end

end A356735.P13560131192145601515

noncomputable section

/-- A356735: Number of distinct parts that have neighbors in the integer partition with Heinz number n.

Offset 1, canonical program `A356735.P13560131192145601515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356735 (n : ℕ) : ℤ :=
  A356735.P13560131192145601515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356735.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A360723.P6263523856395818707

`lt[3, A080400(A329601(n+1))]+1`
-/

namespace A360723.P6263523856395818707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080400 (A329601 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A360723.P6263523856395818707

noncomputable section

/-- A360723: Numbers that have at least one exponent in their canonical prime factorization that is neither 2 nor of the form 2^k-1, k>=1.

Offset 1, canonical program `A360723.P6263523856395818707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1437 terms. -/
def A360723 (n : ℕ) : ℤ :=
  (A360723.P6263523856395818707.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1437 terms. -/
def A360723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360765.P10514971318386611508

`filter[A013929(n+1), A401717(#)]`
-/

namespace A360765.P10514971318386611508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401717 (f1 j).toNat = 1) n)

end

end A360765.P10514971318386611508

noncomputable section

/-- A360765: Numbers k that are neither prime powers nor squarefree, such that A007947(k) * A053669(k) < k.

Offset 1, canonical program `A360765.P10514971318386611508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360765 (n : ℕ) : ℤ :=
  A360765.P10514971318386611508.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361177.P13341249339610719879

`eq[1, A392450(n+1)]+1`
-/

namespace A361177.P13341249339610719879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392450 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A361177.P13341249339610719879

noncomputable section

/-- A361177: Exponentially powerful numbers: numbers whose exponents in their canonical prime factorization are all powerful numbers (A001694).

Offset 1, canonical program `A361177.P13341249339610719879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6435 terms. -/
def A361177 (n : ℕ) : ℤ :=
  (A361177.P13341249339610719879.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6435 terms. -/
def A361177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365460.P8090352919153727838

`A267263(A181821(n+1))`
-/

namespace A365460.P8090352919153727838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (A181821 (n + 1)).toNat

end

end A365460.P8090352919153727838

noncomputable section

/-- A365460: Number of distinct primorials in the greedy sum of primorials adding to A181821(n).

Offset 1, canonical program `A365460.P8090352919153727838`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365460 (n : ℕ) : ℤ :=
  A365460.P8090352919153727838.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365460.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365461.P18377989577747298524

`A324888(A122111(n+1))`
-/

namespace A365461.P18377989577747298524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324888 (A122111 (n + 1)).toNat

end

end A365461.P18377989577747298524

noncomputable section

/-- A365461: Sum of digits when A181821(n) is written in primorial base (A049345).

Offset 1, canonical program `A365461.P18377989577747298524`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324888, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365461 (n : ℕ) : ℤ :=
  A365461.P18377989577747298524.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324888, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365461.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A366539.P359693618397037836`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138302, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366539 (n : ℕ) : ℤ :=
  A366539.P359693618397037836.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138302, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366539.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367590.P9698586962873086711

`filter[A085156(n+1), A354353(#)]`
-/

namespace A367590.P9698586962873086711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A367590.P9698586962873086711

noncomputable section

/-- A367590: Numbers with exactly two distinct prime factors, both appearing with the same exponent.

Offset 1, canonical program `A367590.P9698586962873086711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6916 terms. -/
def A367590 (n : ℕ) : ℤ :=
  A367590.P9698586962873086711.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6916 terms. -/
def A367590.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A367802.P2502221994018086087

`A270428(n+1)²`
-/

namespace A367802.P2502221994018086087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270428 (n + 1) ^ 2

end

end A367802.P2502221994018086087

noncomputable section

/-- A367802: Exponentially odious squares.

Offset 1, canonical program `A367802.P2502221994018086087`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270428, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367802 (n : ℕ) : ℤ :=
  A367802.P2502221994018086087.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270428, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367802.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368696.P14589055336645590982

`filter[A327862(n+1), A354874(#)]`
-/

namespace A368696.P14589055336645590982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354874 (f1 j).toNat = 1) n)

end

end A368696.P14589055336645590982

noncomputable section

/-- A368696: Numbers whose arithmetic derivative (A003415) is a squarefree number of the form 4k+2.

Offset 1, canonical program `A368696.P14589055336645590982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7746 terms. -/
def A368696 (n : ℕ) : ℤ :=
  A368696.P14589055336645590982.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7746 terms. -/
def A368696.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A369969.P3397252413671614017

`filter[A327865(1+n), A011558(#)]`
-/

namespace A369969.P3397252413671614017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327865 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A369969.P3397252413671614017

noncomputable section

/-- A369969: Numbers that are not multiples of 5, but their arithmetic derivative is.

Offset 1, canonical program `A369969.P3397252413671614017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7884 terms. -/
def A369969 (n : ℕ) : ℤ :=
  A369969.P3397252413671614017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7884 terms. -/
def A369969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370076.P2093269358058459657

`filter[A074661(1+n), A359466(#)]`
-/

namespace A370076.P2093269358058459657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074661 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A370076.P2093269358058459657

noncomputable section

/-- A370076: Numbers k such that A005361(k) is prime.

Offset 1, canonical program `A370076.P2093269358058459657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8663 terms. -/
def A370076 (n : ℕ) : ℤ :=
  A370076.P2093269358058459657.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8663 terms. -/
def A370076.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A373193.P6794396675598338010

`A053415(2*(n+1))-(4*n+3)`
-/

namespace A373193.P6794396675598338010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053415 (2 * (n + 1)) - (4 * n + 3 : ℤ)

end

end A373193.P6794396675598338010

noncomputable section

/-- A373193: On a unit square grid, the number of squares enclosed by a circle of radius n with origin at the center of a square.

Offset 1, canonical program `A373193.P6794396675598338010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A373193 (n : ℕ) : ℤ :=
  A373193.P6794396675598338010.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A373193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373249.P6478375395125739437

`A181819(n+1)/A373246(n+1)`
-/

namespace A373249.P6478375395125739437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181819 (n + 1) : ℚ) / (A373246 (n + 1) : ℚ)

end

end A373249.P6478375395125739437

noncomputable section

/-- A373249: a(n) = A181819(n) / gcd(n, A181819(n)), where A181819(n) is the prime shadow of n.

Offset 1, canonical program `A373249.P6478375395125739437`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373249 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373249.P6478375395125739437.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373249.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373260.P8467178909391421303

`A372573(3*(1+n))`
-/

namespace A373260.P8467178909391421303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (3 * (1 + n))

end

end A373260.P8467178909391421303

noncomputable section

/-- A373260: a(n) = 1 if A276085(n) == +1 (mod 3), otherwise 0, where A276085 is the primorial base log-function.

Offset 1, canonical program `A373260.P8467178909391421303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373260 (n : ℕ) : ℤ :=
  A373260.P8467178909391421303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373260.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A373604.P3187310618205716567

`A373830(6*n)`
-/

namespace A373604.P3187310618205716567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373830 (6 * n)

end

end A373604.P3187310618205716567

noncomputable section

/-- A373604: a(n) = 1 if the primorial base representation of 6*n has alternating digit sum (A373605) that is a multiple of 3, otherwise 0.

Offset 0, canonical program `A373604.P3187310618205716567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373830, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373604 (n : ℕ) : ℤ :=
  A373604.P3187310618205716567.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373830, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373604.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373834.P18253367396487661828

`A373851(A276086(n))`
-/

namespace A373834.P18253367396487661828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373851 (A276086 n).toNat

end

end A373834.P18253367396487661828

noncomputable section

/-- A373834: a(n) = 1 if n is a multiple of A276150(n), otherwise 0, where A276150 is the digit sum in the primorial base.

Offset 0, canonical program `A373834.P18253367396487661828`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373851, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373834 (n : ℕ) : ℤ :=
  A373834.P18253367396487661828.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373851, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373834.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373986.P8203815680597289083

`A373158(n+1)/A373985(n+1)`
-/

namespace A373986.P8203815680597289083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373158 (n + 1) : ℚ) / (A373985 (n + 1) : ℚ)

end

end A373986.P8203815680597289083

noncomputable section

/-- A373986: Numerator of A373158(n) / A108951(n), where A108951 is fully multiplicative and A373158 is fully additive with a(p) = p# for prime p, where x# is the primorial A034386(x).

Offset 1, canonical program `A373986.P8203815680597289083`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373158, A373985, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373986 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373986.P8203815680597289083.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373158, A373985, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373986.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373987.P5061914862626044472

`A108951(n+1)/A373985(n+1)`
-/

namespace A373987.P5061914862626044472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108951 (n + 1) : ℚ) / (A373985 (n + 1) : ℚ)

end

end A373987.P5061914862626044472

noncomputable section

/-- A373987: Denominator of A373158(n) / A108951(n), where A108951 is fully multiplicative and A373158 is fully additive with a(p) = p# for prime p, where x# is the primorial A034386(x).

Offset 1, canonical program `A373987.P5061914862626044472`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373987 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373987.P5061914862626044472.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373987.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374042.P17381506644215364162

`filter[A074232(n+1), A372573(#)]`
-/

namespace A374042.P17381506644215364162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372573 (f1 j).toNat = 1) n)

end

end A374042.P17381506644215364162

noncomputable section

/-- A374042: Numbers k such that A276085(k) and A328768(k) are both multiples of 3, where A276085 is the primorial base log-function, and A328768 is the first primorial based variant of arithmetic derivative.

Offset 1, canonical program `A374042.P17381506644215364162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6312 terms. -/
def A374042 (n : ℕ) : ℤ :=
  A374042.P17381506644215364162.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6312 terms. -/
def A374042.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A374912.P16986917820188115762

`record[A006530(A374913(n+1)+1)]`
-/

namespace A374912.P16986917820188115762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A374913 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374912.P16986917820188115762

noncomputable section

/-- A374912: Primes p such that (p - 1)^p == p (mod 2*p - 1).

Offset 1, canonical program `A374912.P16986917820188115762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 607 terms. -/
def A374912 (n : ℕ) : ℤ :=
  A374912.P16986917820188115762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 607 terms. -/
def A374912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375339.P15531892333472399892

`A005361(n+1)*A359466(n+1)`
-/

namespace A375339.P15531892333472399892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A359466 (n + 1)

end

end A375339.P15531892333472399892

noncomputable section

/-- A375339: If n has exactly one non-unitary prime factor then a(n) is the exponent of the highest power of this prime that divides n, otherwise a(n) = 0.

Offset 1, canonical program `A375339.P15531892333472399892`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375339 (n : ℕ) : ℤ :=
  A375339.P15531892333472399892.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375339.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375342.P14847801276659262859

`A051903(A375142(n+1))`
-/

namespace A375342.P14847801276659262859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A375142 (n + 1)).toNat

end

end A375342.P14847801276659262859

noncomputable section

/-- A375342: The maximum exponent in the prime factorization of the numbers whose powerful part is a power of a squarefree number that is larger than 1.

Offset 1, canonical program `A375342.P14847801276659262859`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A375142, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375342 (n : ℕ) : ℤ :=
  A375342.P14847801276659262859.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A375142, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376170.P4489844541037532386

`filter[A368714(n+1), A112526(#)]`
-/

namespace A376170.P4489844541037532386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A376170.P4489844541037532386

noncomputable section

/-- A376170: Powerful numbers whose prime factorization has an even maximum exponent.

Offset 1, canonical program `A376170.P4489844541037532386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A376170 (n : ℕ) : ℤ :=
  A376170.P4489844541037532386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A376170.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A378443.P3282744420953376765`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378443 (n : ℕ) : ℤ :=
  A378443.P3282744420953376765.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378443.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378916.P18111289938732481497

`fo[A001031(n+1)-1]+1`
-/

namespace A378916.P18111289938732481497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001031 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A378916.P18111289938732481497

noncomputable section

/-- A378916: a(n) is the smallest positive integer having n decompositions of twice its value into sums of two noncomposite numbers.

Offset 1, canonical program `A378916.P18111289938732481497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 387 terms. -/
def A378916 (n : ℕ) : ℤ :=
  (A378916.P18111289938732481497.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 387 terms. -/
def A378916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379229.P5775022352315501244

`A252748(A319630(n+1))`
-/

namespace A379229.P5775022352315501244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (A319630 (n + 1)).toNat

end

end A379229.P5775022352315501244

noncomputable section

/-- A379229: Difference A003961(k)-(2*k) computed for the natural numbers k for which k and A003961(k) are relatively prime, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A379229.P5775022352315501244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319630, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379229 (n : ℕ) : ℤ :=
  A379229.P5775022352315501244.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319630, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379229.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A381032.P16014029011517599476

`A008578(1+A328828(n))`
-/

namespace A381032.P16014029011517599476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (1 + A328828 n).toNat

end

end A381032.P16014029011517599476

noncomputable section

/-- A381032: The radix prime of the least significant digit > 1 in the primorial base expansion of n, or 1 if there is no such digit.

Offset 0, canonical program `A381032.P16014029011517599476`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381032 (n : ℕ) : ℤ :=
  A381032.P16014029011517599476.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381032.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384667.P10362112052039593468

`A354353(n+1)+A010055(n+1)`
-/

namespace A384667.P10362112052039593468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354353 (n + 1) + A010055 (n + 1)

end

end A384667.P10362112052039593468

noncomputable section

/-- A384667: Characteristic function of powers of squarefree numbers (A072774).

Offset 1, canonical program `A384667.P10362112052039593468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384667 (n : ℕ) : ℤ :=
  A384667.P10362112052039593468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384667.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A385406.P15386944233868801627

`A056023(A057028(1+n))`
-/

namespace A385406.P15386944233868801627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A057028 (1 + n)).toNat

end

end A385406.P15386944233868801627

noncomputable section

/-- A385406: Triangle read by rows: T(n, k) = n*(n+1)/2 - floor((n-1)/2) - (-1)^k * floor(k/2).

Offset 1, canonical program `A385406.P15386944233868801627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A385406 (n : ℕ) : ℤ :=
  A385406.P15386944233868801627.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A385406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386822.P2457847748997592395

`A362227(A023758(1+n))`
-/

namespace A386822.P2457847748997592395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362227 (A023758 (1 + n)).toNat

end

end A386822.P2457847748997592395

noncomputable section

/-- A386822: Irregular table T(n,k) = Product_{j = 1..k} prime(j)^(n-j+1), n >= 0, k = 1..n.

Offset 0, canonical program `A386822.P2457847748997592395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A386822 (n : ℕ) : ℤ :=
  A386822.P2457847748997592395.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A386822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387881.P4607933904920200842

`eq[A001222(n+1), A065770(n+1)]+1`
-/

namespace A387881.P4607933904920200842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A387881.P4607933904920200842

noncomputable section

/-- A387881: Numbers whose prime indices are subdiagonal.

Offset 1, canonical program `A387881.P4607933904920200842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 593 terms. -/
def A387881 (n : ℕ) : ℤ :=
  (A387881.P4607933904920200842.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 593 terms. -/
def A387881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390312.P4179282321994300031

`lt[0, A336352(n+1)]+1`
-/

namespace A390312.P4179282321994300031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336352 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A390312.P4179282321994300031

noncomputable section

/-- A390312: Numbers k such that sigma(k) has at least one prime factor larger than the largest prime factor of k.

Offset 1, canonical program `A390312.P4179282321994300031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2588 terms. -/
def A390312 (n : ℕ) : ℤ :=
  (A390312.P4179282321994300031.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2588 terms. -/
def A390312.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391354.P14107166252607901053

`∩[A000027(2*(n+2)), A390788(n+1)]/2`
-/

namespace A391354.P14107166252607901053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390788 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A391354.P14107166252607901053

noncomputable section

/-- A391354: Numbers k such that 4*k - (greatest prime < 4*k) < (least prime > 4*k) - 4*k.

Offset 1, canonical program `A391354.P14107166252607901053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5027 terms. -/
def A391354 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391354.P14107166252607901053.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5027 terms. -/
def A391354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391355.P541142668147716780

`∩[2*n, A390789(n+1)]/2`
-/

namespace A391355.P541142668147716780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390789 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A391355.P541142668147716780

noncomputable section

/-- A391355: Numbers k such that 4*k - (greatest prime < 4*k) = (least prime > 4*k) - 4*k.

Offset 1, canonical program `A391355.P541142668147716780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5008 terms. -/
def A391355 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391355.P541142668147716780.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5008 terms. -/
def A391355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392113.P11389348547885282117

`∩[A000027(3*(n+1)), A390788(n+1)]/3`
-/

namespace A392113.P11389348547885282117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390788 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 3

end

end A392113.P11389348547885282117

noncomputable section

/-- A392113: Numbers k such that 6*k - (greatest prime < 6*n) < (least prime > 6*n) - 6*k.

Offset 1, canonical program `A392113.P11389348547885282117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3087 terms. -/
def A392113 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392113.P11389348547885282117.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3087 terms. -/
def A392113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392115.P8839572050383417587

`∩[A000027(2*(n+2)), A391353(n+1)]/2`
-/

namespace A392115.P8839572050383417587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391353 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A392115.P8839572050383417587

noncomputable section

/-- A392115: Numbers k such that 6*k - (greatest prime < 6*n) > (least prime > 6*n) - 6*k.

Offset 1, canonical program `A392115.P8839572050383417587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4930 terms. -/
def A392115 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392115.P8839572050383417587.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4930 terms. -/
def A392115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392867.P13474362034397928387

`lt[0, A393067(n+1)]+1`
-/

namespace A392867.P13474362034397928387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393067 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A392867.P13474362034397928387

noncomputable section

/-- A392867: Numbers k such that A276086(A003415(k)) <= k, where A003415 is the arithmetic derivative and A276086 is the primorial base exp-function.

Offset 1, canonical program `A392867.P13474362034397928387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6140 terms. -/
def A392867 (n : ℕ) : ℤ :=
  (A392867.P13474362034397928387.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6140 terms. -/
def A392867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392871.P11237529172868183968

`eq[1, A392865(n+1)]+1`
-/

namespace A392871.P11237529172868183968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392865 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A392871.P11237529172868183968

noncomputable section

/-- A392871: Numbers k such that k == 1 mod A117366(k), where A117366(n) gives the smallest prime greater than the largest prime dividing n.

Offset 1, canonical program `A392871.P11237529172868183968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A392871 (n : ℕ) : ℤ :=
  (A392871.P11237529172868183968.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A392871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393056.P16602812559602995251

`a(n-1)+(1-A353558(n+1))*A393067(n+1)` with `a(0)=1`
-/

namespace A393056.P16602812559602995251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (1 - A353558 (n + 1)) * A393067 (n + 1)

end

end A393056.P16602812559602995251

noncomputable section

/-- A393056: Number of terms of A392867 <= n that are not odd numbers with an odd number of prime factors (A067019).

Offset 1, canonical program `A393056.P16602812559602995251`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A393067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393056 (n : ℕ) : ℤ :=
  A393056.P16602812559602995251.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A393067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393056.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A393057.P765751024542709318

`a(n-1)+A393067(n+1)` with `a(0)=1`
-/

namespace A393057.P765751024542709318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A393067 (n + 1)

end

end A393057.P765751024542709318

noncomputable section

/-- A393057: Number of terms of A392867 <= n.

Offset 1, canonical program `A393057.P765751024542709318`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A393067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393057 (n : ℕ) : ℤ :=
  A393057.P765751024542709318.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A393067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393057.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A397643.P3349127362596892915

`floor(A052217(n+2)/9)`
-/

namespace A397643.P3349127362596892915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052217 (n + 2) : ℚ) / 9⌋

end

end A397643.P3349127362596892915

noncomputable section

/-- A397643: Numbers with digits in nondecreasing order having only digits 1 through 3.

Offset 1, canonical program `A397643.P3349127362596892915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A397643 (n : ℕ) : ℤ :=
  A397643.P3349127362596892915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A397643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398162.P3763435141426022406

`filter[eq[1, A295316(n+1)]+1, A401088(#+1)]`
-/

namespace A398162.P3763435141426022406
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295316 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401088 (f1 j + 1) = 1) n)

end

end A398162.P3763435141426022406

noncomputable section

/-- A398162: Exponentially odd numbers k such that the prime factorization exponents of k+1 are either 1 or even.

Offset 1, canonical program `A398162.P3763435141426022406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. -/
def A398162 (n : ℕ) : ℤ :=
  (A398162.P3763435141426022406.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. -/
def A398162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398316.P8351843934457800232

`filter[A396269(n+1), A359466(#)]`
-/

namespace A398316.P8351843934457800232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A398316.P8351843934457800232

noncomputable section

/-- A398316: Numbers of the form p^2*s, where p is prime, s is squarefree, gcd(p,s) = 1, and A001221(s) >= 2.

Offset 1, canonical program `A398316.P8351843934457800232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8673 terms. -/
def A398316 (n : ℕ) : ℤ :=
  A398316.P8351843934457800232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8673 terms. -/
def A398316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400154.P16967113103777206165

`eq[n, lcm(n, A400153(n))]`
-/

namespace A400154.P16967113103777206165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A400153 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400154.P16967113103777206165

noncomputable section

/-- A400154: Numbers k that are multiples of A400153(k).

Offset 1, canonical program `A400154.P16967113103777206165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A400154 (n : ℕ) : ℤ :=
  (A400154.P16967113103777206165.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A400154.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A401238.P3135409349228925586

`n%A008578(1+A235224(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401238.P3135409349228925586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A008578 (1 + A235224 n).toNat)

end

end A401238.P3135409349228925586

noncomputable section

/-- A401238: a(n) = n mod A008578(1+A235224(n)).

Offset 0, canonical program `A401238.P3135409349228925586`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401238 (n : ℕ) : ℤ :=
  A401238.P3135409349228925586.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401238.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401390.P6643161535037238982

`(n+1)*A401375((n+1)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401390.P6643161535037238982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A401375 ((n + 1) ^ 2)

end

end A401390.P6643161535037238982

noncomputable section

/-- A401390: a(n) = n * A401375(n^2), where A401375 is the largest divisor of sigma(n) coprime with n, and sigma is the sum of divisors function.

Offset 1, canonical program `A401390.P6643161535037238982`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A401375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401390 (n : ℕ) : ℤ :=
  A401390.P6643161535037238982.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A401375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401390.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343646.P3871904415759735721

`fo[A343647(n)]`
-/

namespace A343646.P3871904415759735721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343647 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A343646.P3871904415759735721

noncomputable section

/-- A343646: a(0) = 0, and for any n > 0 such that F(k) <= n < F(k+1) for some k > 1, a(n) = F(k) + a(F(k+1) - n - 1) (where F(k) = A000045(k) is the k-th Fibonacci number).

Offset 0, canonical program `A343646.P3871904415759735721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343646 (n : ℕ) : ℤ :=
  (A343646.P3871904415759735721.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343819.P15416582125587984832

`eq[A064547(1+n), A064547(n+2)]+1`
-/

namespace A343819.P15416582125587984832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A343819.P15416582125587984832

noncomputable section

/-- A343819: Numbers k such that k and k+1 have the same number of Fermi-Dirac factors (A064547).

Offset 1, canonical program `A343819.P15416582125587984832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7268 terms. -/
def A343819 (n : ℕ) : ℤ :=
  (A343819.P15416582125587984832.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7268 terms. -/
def A343819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344026.P2062845825652012812

`A003415(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344026.P2062845825652012812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A005940 (1 + n)).toNat

end

end A344026.P2062845825652012812

noncomputable section

/-- A344026: Arithmetic derivative applied to the Doudna sequence: a(n) = A003415(A005940(1+n)).

Offset 0, canonical program `A344026.P2062845825652012812`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344026 (n : ℕ) : ℤ :=
  A344026.P2062845825652012812.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344026.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344028.P3251303512918898799

`A069359(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344028.P3251303512918898799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (A005940 (1 + n)).toNat

end

end A344028.P3251303512918898799

noncomputable section

/-- A344028: a(n) = A069359(A005940(1+n)).

Offset 0, canonical program `A344028.P3251303512918898799`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344028 (n : ℕ) : ℤ :=
  A344028.P3251303512918898799.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344028.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A346092.P14453008457804432680

`A108951(n+1)-A346093(n+1)`
-/

namespace A346092.P14453008457804432680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1) - A346093 (n + 1)

end

end A346092.P14453008457804432680

noncomputable section

/-- A346092: a(n) = A276085(A328572(A108951(n))).

Offset 1, canonical program `A346092.P14453008457804432680`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A346093, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346092 (n : ℕ) : ℤ :=
  A346092.P14453008457804432680.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A346093, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346092.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347101.P5849680053341234474

`∏{d}[1+n, A013632(A014963(#))]`
-/

namespace A347101.P5849680053341234474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A013632 (A014963 d).toNat

end

end A347101.P5849680053341234474

noncomputable section

/-- A347101: Fully multiplicative with a(prime(k)) = A001223(k), where A001223 gives the distance from the k-th prime to the (k+1)-th prime.

Offset 1, canonical program `A347101.P5849680053341234474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347101 (n : ℕ) : ℤ :=
  A347101.P5849680053341234474.a (n - 1)

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

/-! ## A348717.P703712104273003584

`A122111(A243074(A122111(n+1)))`
-/

namespace A348717.P703712104273003584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A243074 (A122111 (n + 1)).toNat).toNat

end

end A348717.P703712104273003584

noncomputable section

/-- A348717: a(n) is the least k such that A003961^i(k) = n for some i >= 0 (where A003961^i denotes the i-th iterate of A003961).

Offset 1, canonical program `A348717.P703712104273003584`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243074, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348717 (n : ℕ) : ℤ :=
  A348717.P703712104273003584.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243074, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348717.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348853.P9434139730407694544

`A003622(A019586(n+1)+1)`
-/

namespace A348853.P9434139730407694544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A019586 (n + 1) + 1).toNat

end

end A348853.P9434139730407694544

noncomputable section

/-- A348853: Delete any least significant 0's from the Zeckendorf representation of n, leaving its "odd" part.

Offset 1, canonical program `A348853.P9434139730407694544`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019586, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348853 (n : ℕ) : ℤ :=
  A348853.P9434139730407694544.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019586, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348853.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350371.P8948380387437329593

`filter[A033992(n+1), A359466(#)]`
-/

namespace A350371.P8948380387437329593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A350371.P8948380387437329593

noncomputable section

/-- A350371: Numbers with exactly 4 semiprime divisors.

Offset 1, canonical program `A350371.P8948380387437329593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4128 terms. -/
def A350371 (n : ℕ) : ℤ :=
  A350371.P8948380387437329593.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4128 terms. -/
def A350371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350374.P13689888125791993730

`filter[A200521(1+n), A359466(#)]`
-/

namespace A350374.P13689888125791993730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200521 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A350374.P13689888125791993730

noncomputable section

/-- A350374: Numbers with exactly 7 semiprime divisors.

Offset 1, canonical program `A350374.P13689888125791993730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6856 terms. -/
def A350374 (n : ℕ) : ℤ :=
  A350374.P13689888125791993730.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6856 terms. -/
def A350374.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A351960.P5730986733368331848

`A156552(A005940(1+col(n))+A005940(1+row(n)-col(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351960.P5730986733368331848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A005940 (1 + SequenceMachineLib.triCol n) + A005940 (1 + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat).toNat

end

end A351960.P5730986733368331848

noncomputable section

/-- A351960: Square array A(n,k) = A156552(A005940(1+n) + A005940(1+k)), read by antidiagonals.

Offset 0, canonical program `A351960.P5730986733368331848`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351960 (n : ℕ) : ℤ :=
  A351960.P5730986733368331848.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351960.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A351961.P15081743314886604888

`A156552(gcd(A005940(1+col(n)), A005940(1+row(n)-col(n))))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351961.P15081743314886604888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (Int.gcd (A005940 (1 + SequenceMachineLib.triCol n)) (A005940 (1 + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat))

end

end A351961.P15081743314886604888

noncomputable section

/-- A351961: Square array A(n,k) = A156552(gcd(A005940(1+n), A005940(1+k))), read by antidiagonals.

Offset 0, canonical program `A351961.P15081743314886604888`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351961 (n : ℕ) : ℤ :=
  A351961.P15081743314886604888.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351961.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A351962.P12724612518308762857

`A156552(lcm(A005940(1+col(n)), A005940(1+row(n)-col(n))))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351962.P12724612518308762857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (Int.lcm (A005940 (1 + SequenceMachineLib.triCol n)) (A005940 (1 + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat))

end

end A351962.P12724612518308762857

noncomputable section

/-- A351962: Square array A(n,k) = A156552(lcm(A005940(1+n), A005940(1+k))), read by antidiagonals.

Offset 0, canonical program `A351962.P12724612518308762857`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351962 (n : ℕ) : ℤ :=
  A351962.P12724612518308762857.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351962.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A353566.P10561952852954268597

`A000007(A373247(n+1))`
-/

namespace A353566.P10561952852954268597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A373247 (n + 1)).toNat

end

end A353566.P10561952852954268597

noncomputable section

/-- A353566: a(n) = 1 if n is a multiple of its prime shadow A181819(n), and 0 otherwise.

Offset 1, canonical program `A353566.P10561952852954268597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353566 (n : ℕ) : ℤ :=
  A353566.P10561952852954268597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354321.P10471689710438993554

`A003849(A019586(1+n))`
-/

namespace A354321.P10471689710438993554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A019586 (1 + n)).toNat

end

end A354321.P10471689710438993554

noncomputable section

/-- A354321: Digit above the least significant 01 digit pair in the Zeckendorf representation of n.

Offset 1, canonical program `A354321.P10471689710438993554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354321 (n : ℕ) : ℤ :=
  A354321.P10471689710438993554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355825.P4035003920145618499

`A295316(A268385(n+1))`
-/

namespace A355825.P4035003920145618499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295316 (A268385 (n + 1)).toNat

end

end A355825.P4035003920145618499

noncomputable section

/-- A355825: a(n) = 1 if all exponents in prime factorization of n have an odd binary weight, otherwise 0.

Offset 1, canonical program `A355825.P4035003920145618499`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268385, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355825 (n : ℕ) : ℤ :=
  A355825.P4035003920145618499.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268385, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355825.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A358585.P11187677889561171754

`A349740(floor(n*(n+2)/2))`
-/

namespace A358585.P11187677889561171754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349740 ⌊(n * (n + 2) : ℚ) / 2⌋.toNat

end

end A358585.P11187677889561171754

noncomputable section

/-- A358585: Number of ordered rooted trees with n nodes, most of which are leaves.

Offset 1, canonical program `A358585.P11187677889561171754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A358585 (n : ℕ) : ℤ :=
  A358585.P11187677889561171754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A358585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358586.P18177815706248301367

`A349740(floor((1+n)²/2))`
-/

namespace A358586.P18177815706248301367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349740 ⌊((1 + n) ^ 2 : ℚ) / 2⌋.toNat

end

end A358586.P18177815706248301367

noncomputable section

/-- A358586: Number of ordered rooted trees with n nodes, at least half of which are leaves.

Offset 1, canonical program `A358586.P18177815706248301367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A358586 (n : ℕ) : ℤ :=
  A358586.P18177815706248301367.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A358586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359358.P11562917461163199392

`A056239(n+1)-A001222(n+1)*A055396(n+1)`
-/

namespace A359358.P11562917461163199392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A001222 (n + 1) * A055396 (n + 1)

end

end A359358.P11562917461163199392

noncomputable section

/-- A359358: Let y be the integer partition with Heinz number n. Then a(n) is the size of the Young diagram of y after removing a rectangle of the same length as y and width equal to the smallest part of y.

Offset 1, canonical program `A359358.P11562917461163199392`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359358 (n : ℕ) : ℤ :=
  A359358.P11562917461163199392.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359358.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359362.P17874274193599552261

`(A001222(n+1)+1)*A056239(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359362.P17874274193599552261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) + 1) * A056239 (n + 1)

end

end A359362.P17874274193599552261

noncomputable section

/-- A359362: a(n) = (A001222(n) + 1) * A056239(n), where A001222 counts prime indices and A056239 adds them up.

Offset 1, canonical program `A359362.P17874274193599552261`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359362 (n : ℕ) : ℤ :=
  A359362.P17874274193599552261.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359362.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359464.P4992058974686309631

`A059841(A064547(n+1))`
-/

namespace A359464.P4992058974686309631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A064547 (n + 1)).toNat

end

end A359464.P4992058974686309631

noncomputable section

/-- A359464: a(n) = 1 if the total number of 1-bits in the exponents of prime factorization n is even, otherwise 0.

Offset 1, canonical program `A359464.P4992058974686309631`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359464 (n : ℕ) : ℤ :=
  A359464.P4992058974686309631.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359464.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A360485.P910775861642857530

`A035612(n+1)+A019586(n+1)`
-/

namespace A360485.P910775861642857530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (n + 1) + A019586 (n + 1)

end

end A360485.P910775861642857530

noncomputable section

/-- A360485: a(n) = index of the antidiagonal of the Wythoff array (A035513) that includes n.

Offset 1, canonical program `A360485.P910775861642857530`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019586, A035612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360485 (n : ℕ) : ℤ :=
  A360485.P910775861642857530.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019586, A035612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360485.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362605.P13958044388673276970

`comp[A356862(n+1)-2]+2`
-/

namespace A362605.P13958044388673276970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A362605.P13958044388673276970

noncomputable section

/-- A362605: Numbers whose prime factorization has more than one mode. Numbers without a unique exponent of maximum frequency in the prime signature.

Offset 1, canonical program `A362605.P13958044388673276970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362605 (n : ℕ) : ℤ :=
  (A362605.P13958044388673276970.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363127.P3526787464918356969

`∑{p}[n+1, gcd(n, #)]-A362611(n+1)`
-/

namespace A363127.P3526787464918356969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ) - A362611 (n + 1)

end

end A363127.P3526787464918356969

noncomputable section

/-- A363127: Number of non-modes in the multiset of prime factors of n.

Offset 1, canonical program `A363127.P3526787464918356969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363127 (n : ℕ) : ℤ :=
  A363127.P3526787464918356969.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363155.P7288259108095462685

`A363928(4+n*5)`
-/

namespace A363155.P7288259108095462685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (4 + n * 5)

end

end A363155.P7288259108095462685

noncomputable section

/-- A363155: Expansion of Sum_{k>0} k * x^(3*k-1) / (1 - x^(5*k-2)).

Offset 1, canonical program `A363155.P7288259108095462685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363155 (n : ℕ) : ℤ :=
  A363155.P7288259108095462685.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363156.P727775960340947262

`A363928(3+5*n)`
-/

namespace A363156.P727775960340947262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (3 + 5 * n)

end

end A363156.P727775960340947262

noncomputable section

/-- A363156: Expansion of Sum_{k>0} k * x^k / (1 - x^(5*k-2)).

Offset 1, canonical program `A363156.P727775960340947262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363156 (n : ℕ) : ℤ :=
  A363156.P727775960340947262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363157.P1558420881425003746

`A363928(2+5*n)`
-/

namespace A363157.P1558420881425003746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (2 + 5 * n)

end

end A363157.P1558420881425003746

noncomputable section

/-- A363157: Expansion of Sum_{k>0} k * x^(4*k-1) / (1 - x^(5*k-2)).

Offset 1, canonical program `A363157.P1558420881425003746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363157 (n : ℕ) : ℤ :=
  A363157.P1558420881425003746.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363158.P11380430616783990560

`A363928(1+5*n)`
-/

namespace A363158.P11380430616783990560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (1 + 5 * n)

end

end A363158.P11380430616783990560

noncomputable section

/-- A363158: Expansion of Sum_{k>0} k * x^(2*k) / (1 - x^(5*k-2)).

Offset 1, canonical program `A363158.P11380430616783990560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363158 (n : ℕ) : ℤ :=
  A363158.P11380430616783990560.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363944.P3463767912965079119

`ceil(A056239(n+1)/∑{e}[abs(1-n)+2, #])`
-/

namespace A363944.P3463767912965079119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A056239 (n + 1) : ℚ) / ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ)⌉

end

end A363944.P3463767912965079119

noncomputable section

/-- A363944: Mean of the multiset of prime indices of n, rounded up.

Offset 1, canonical program `A363944.P3463767912965079119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363944 (n : ℕ) : ℤ :=
  A363944.P3463767912965079119.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363944.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A364191.P10213461734458161337

`A000720(A067695(n+1))`
-/

namespace A364191.P10213461734458161337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A067695 (n + 1)).toNat

end

end A364191.P10213461734458161337

noncomputable section

/-- A364191: Low co-mode in the multiset of prime indices of n.

Offset 1, canonical program `A364191.P10213461734458161337`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364191 (n : ℕ) : ℤ :=
  A364191.P10213461734458161337.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364191.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364388.P12022940422579637757

`1+char[A016969(A005940(n+5))]`
-/

namespace A364388.P12022940422579637757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A005940 (n + 5)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A364388.P12022940422579637757

noncomputable section

/-- A364388: Number of divisors of n of the form 5*k+1 that are at most sqrt(n).

Offset 1, canonical program `A364388.P12022940422579637757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A364388 (n : ℕ) : ℤ :=
  (A364388.P12022940422579637757.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A364388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364499.P16700739225751135008

`A005940(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364499.P16700739225751135008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1) - (n + 1 : ℤ)

end

end A364499.P16700739225751135008

noncomputable section

/-- A364499: a(n) = A005940(n) - n.

Offset 1, canonical program `A364499.P16700739225751135008`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364499 (n : ℕ) : ℤ :=
  A364499.P16700739225751135008.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364499.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364500.P4741976009625240050

`gcd(n+1, A005940(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364500.P4741976009625240050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A005940 (n + 1))

end

end A364500.P4741976009625240050

noncomputable section

/-- A364500: a(n) = gcd(n, A005940(n)).

Offset 1, canonical program `A364500.P4741976009625240050`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364500 (n : ℕ) : ℤ :=
  (A364500.P4741976009625240050.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364500.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364501.P11671779795574497897

`(n+1)/gcd(n+1, A005940(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364501.P11671779795574497897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A005940 (n + 1)) : ℚ)

end

end A364501.P11671779795574497897

noncomputable section

/-- A364501: a(n) = n / gcd(n, A005940(n)).

Offset 1, canonical program `A364501.P11671779795574497897`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364501 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364501.P11671779795574497897.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364501.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364502.P9871908459785644473

`A005940(n+1)/gcd(n+1, A005940(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364502.P9871908459785644473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A005940 (n + 1)) : ℚ)

end

end A364502.P9871908459785644473

noncomputable section

/-- A364502: a(n) = A005940(n) / gcd(n, A005940(n)).

Offset 1, canonical program `A364502.P9871908459785644473`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364502 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364502.P9871908459785644473.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364502.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364657.P2726610413890523102

`A053226(A053242(1+n))`
-/

namespace A364657.P2726610413890523102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053226 (A053242 (1 + n)).toNat

end

end A364657.P2726610413890523102

noncomputable section

/-- A364657: Numbers k such that sigma(k) > sigma(k+1) > sigma(k+2).

Offset 1, canonical program `A364657.P2726610413890523102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 958 terms. -/
def A364657 (n : ℕ) : ℤ :=
  A364657.P2726610413890523102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 958 terms. -/
def A364657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364813.P14630216106928931606

`∏{d}[1+n, A175068(#)]`
-/

namespace A364813.P14630216106928931606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A175068 d

end

end A364813.P14630216106928931606

noncomputable section

/-- A364813: a(n) = Product_{k=2..n} k^ord(n, k) where ord(n, k) = 0 if k does not divide n, otherwise ord(n, k) = e where e is such that k^e divides n but k^(e + 1) does not.

Offset 1, canonical program `A364813.P14630216106928931606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A364813 (n : ℕ) : ℤ :=
  A364813.P14630216106928931606.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A364813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365430.P6777762668441141632

`A156552(gcd(n+1, A005940(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365430.P6777762668441141632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (Int.gcd (n + 1 : ℤ) (A005940 (n + 1)))

end

end A365430.P6777762668441141632

noncomputable section

/-- A365430: a(n) = A156552(gcd(n, A005940(n))), and A156552 is the inverse of offset-0 version of Doudna-sequence A005940.

Offset 1, canonical program `A365430.P6777762668441141632`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365430 (n : ℕ) : ℤ :=
  A365430.P6777762668441141632.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365430.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366260.P13838205824187520785

`A005940(1+A303767(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366260.P13838205824187520785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (1 + A303767 n).toNat

end

end A366260.P13838205824187520785

noncomputable section

/-- A366260: Doudna sequence permuted by May code: a(n) = A005940(1+A303767(n)).

Offset 0, canonical program `A366260.P13838205824187520785`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A303767, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366260 (n : ℕ) : ℤ :=
  A366260.P13838205824187520785.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A303767, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366260.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366263.P6109914877333710251

`A005940(1+A193231(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366263.P6109914877333710251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (1 + A193231 n).toNat

end

end A366263.P6109914877333710251

noncomputable section

/-- A366263: Doudna sequence permuted by Blue code: a(n) = A005940(1+A193231(n)).

Offset 0, canonical program `A366263.P6109914877333710251`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A193231, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366263 (n : ℕ) : ℤ :=
  A366263.P6109914877333710251.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A193231, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366263.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366264.P16537207450051479430

`A193231(A156552(n+1))`
-/

namespace A366264.P16537207450051479430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A156552 (n + 1)).toNat

end

end A366264.P16537207450051479430

noncomputable section

/-- A366264: Inverse of A366263, where A366263 is the Doudna sequence permuted by Blue code.

Offset 1, canonical program `A366264.P16537207450051479430`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A193231, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366264 (n : ℕ) : ℤ :=
  A366264.P16537207450051479430.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A193231, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366264.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366795.P7121921865006446826

`A344695(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366795.P7121921865006446826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344695 (A005940 (1 + n)).toNat

end

end A366795.P7121921865006446826

noncomputable section

/-- A366795: a(n) = A344695(A005940(1+n)), where A344695(n) = gcd(psi(n), sigma(n)), and A005940 is the Doudna sequence.

Offset 0, canonical program `A366795.P7121921865006446826`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366795 (n : ℕ) : ℤ :=
  A366795.P7121921865006446826.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366795.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366801.P8669775455614987768

`A342001(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366801.P8669775455614987768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A005940 (1 + n)).toNat

end

end A366801.P8669775455614987768

noncomputable section

/-- A366801: Arithmetic derivative without its inherited divisor applied to the Doudna sequence: a(n) = A342001(A005940(1+n)).

Offset 0, canonical program `A366801.P8669775455614987768`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366801 (n : ℕ) : ℤ :=
  A366801.P8669775455614987768.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366801.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366803.P14628271087135983383

`A347395(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366803.P14628271087135983383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347395 (A005940 (1 + n)).toNat

end

end A366803.P14628271087135983383

noncomputable section

/-- A366803: Dirichlet convolution of Liouville's lambda with A342001 applied to Doudna sequence: a(n) = A347395(A005940(1+n)).

Offset 0, canonical program `A366803.P14628271087135983383`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366803 (n : ℕ) : ℤ :=
  A366803.P14628271087135983383.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366803.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A368900.P17836949216139892401

`A014963(A005940(n+1))`
-/

namespace A368900.P17836949216139892401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005940 (n + 1)).toNat

end

end A368900.P17836949216139892401

noncomputable section

/-- A368900: LCM-transform of Doudna sequence.

Offset 1, canonical program `A368900.P17836949216139892401`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368900 (n : ℕ) : ℤ :=
  A368900.P17836949216139892401.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368900.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368909.P787331260078273117

`A003415(A000203(A005940(1+n)))%2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A368909.P787331260078273117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (A000203 (A005940 (1 + n)).toNat).toNat) 2

end

end A368909.P787331260078273117

noncomputable section

/-- A368909: a(n) = A003415(sigma(A005940(1+n))) mod 2, where A003415 is the arithmetic derivative, sigma is the sum of divisors function, and A005940 is the Doudna sequence.

Offset 0, canonical program `A368909.P787331260078273117`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368909 (n : ℕ) : ℤ :=
  A368909.P787331260078273117.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368909.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369010.P8053693028282374470

`A014963(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369010.P8053693028282374470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A276086 n).toNat

end

end A369010.P8053693028282374470

noncomputable section

/-- A369010: Exponential of Mangoldt function M(n) applied to primorial base exp-function: a(n) = A014963(A276086(n)).

Offset 0, canonical program `A369010.P8053693028282374470`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369010 (n : ℕ) : ℤ :=
  A369010.P8053693028282374470.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369010.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A369031.P9461008699479139842

`A014963(A122111(n+1))`
-/

namespace A369031.P9461008699479139842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A122111 (n + 1)).toNat

end

end A369031.P9461008699479139842

noncomputable section

/-- A369031: LCM-transform of permutation induced by partition conjugation via Heinz numbers (A122111).

Offset 1, canonical program `A369031.P9461008699479139842`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369031 (n : ℕ) : ℤ :=
  A369031.P9461008699479139842.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369031.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A369043.P9747344171673428300

`A014963(A193231(n+1))`
-/

namespace A369043.P9747344171673428300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A193231 (n + 1)).toNat

end

end A369043.P9747344171673428300

noncomputable section

/-- A369043: LCM-transform of Blue code (A193231).

Offset 1, canonical program `A369043.P9747344171673428300`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A193231, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369043 (n : ℕ) : ℤ :=
  A369043.P9747344171673428300.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A193231, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369043.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A369979.P10259870907504091233

`A005940(2*A014311(1+n)+1)`
-/

namespace A369979.P10259870907504091233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (2 * A014311 (1 + n) + 1).toNat

end

end A369979.P10259870907504091233

noncomputable section

/-- A369979: Three-dimensional array giving all products of three (not necessarily distinct) odd primes.

Offset 1, canonical program `A369979.P10259870907504091233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A369979 (n : ℕ) : ℤ :=
  A369979.P10259870907504091233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A369979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371292.P4011090379698081621

`lt[A079068(A271410(n)), 2]`
-/

namespace A371292.P4011090379698081621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (A271410 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A371292.P4011090379698081621

noncomputable section

/-- A371292: Numbers whose binary indices have prime indices covering an initial interval of positive integers.

Offset 0, canonical program `A371292.P4011090379698081621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 856 terms. -/
def A371292 (n : ℕ) : ℤ :=
  (A371292.P4011090379698081621.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 856 terms. -/
def A371292.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A372691.P3029882331532059219

`∩[A175496(n+1)-1, A175496(n+1)]`
-/

namespace A372691.P3029882331532059219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175496 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372691.P3029882331532059219

noncomputable section

/-- A372691: Numbers k such that k and k+1 are both nonsquarefree numbers whose number of divisors is a power of 2 (A175496).

Offset 1, canonical program `A372691.P3029882331532059219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 508 terms. -/
def A372691 (n : ℕ) : ℤ :=
  (A372691.P3029882331532059219.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 508 terms. -/
def A372691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373381.P16516790107511111237

`gcd(A001222(n+1), A056239(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373381.P16516790107511111237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (n + 1)) (A056239 (n + 1))

end

end A373381.P16516790107511111237

noncomputable section

/-- A373381: a(n) = gcd(bigomega(n), A056239(n)), where bigomega is number of prime factors with repetition, and A056239 is fully additive with a(p) = primepi(p).

Offset 1, canonical program `A373381.P16516790107511111237`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373381 (n : ℕ) : ℤ :=
  (A373381.P16516790107511111237.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373381.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A374470.P7123859455402799222

`gcd(A001222(n+1), A064547(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374470.P7123859455402799222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (n + 1)) (A064547 (n + 1))

end

end A374470.P7123859455402799222

noncomputable section

/-- A374470: a(n) = gcd(bigomega(n), A064547(n)), where A064547 is the count of 1-bits in the exponents of the prime factorization of n, and bigomega is the number of prime factors of n (with multiplicity).

Offset 1, canonical program `A374470.P7123859455402799222`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374470 (n : ℕ) : ℤ :=
  (A374470.P7123859455402799222.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374470.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A375230.P7295009914355440211`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375230 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375230.P7295009914355440211.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375230.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375932.P15622445158983307868

`(n+1)/A375931(n+1)`
-/

namespace A375932.P15622445158983307868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A375931 (n + 1) : ℚ)

end

end A375932.P15622445158983307868

noncomputable section

/-- A375932: The largest unitary k-free divisor of n where k = A051903(n) is the maximum exponent in the prime factorization of n.

Offset 1, canonical program `A375932.P15622445158983307868`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375932 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375932.P15622445158983307868.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375932.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376142.P4651582588469908944

`filter[A013929(1+n), A381955(#)]`
-/

namespace A376142.P4651582588469908944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A376142.P4651582588469908944

noncomputable section

/-- A376142: Nonsquarefree numbers whose prime factorization has a maximum exponent that is odd.

Offset 1, canonical program `A376142.P4651582588469908944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1162 terms. -/
def A376142 (n : ℕ) : ℤ :=
  A376142.P4651582588469908944.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1162 terms. -/
def A376142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376250.P16493689991352694122

`filter[A356862(1+n), A355447(#)]`
-/

namespace A376250.P16493689991352694122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A376250.P16493689991352694122

noncomputable section

/-- A376250: Numbers with a unique largest prime exponent (A356862) that are not prime powers (A246655).

Offset 1, canonical program `A376250.P16493689991352694122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7585 terms. -/
def A376250 (n : ℕ) : ℤ :=
  A376250.P16493689991352694122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7585 terms. -/
def A376250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377774.P2554087647620533849

`max(A053669(n+1), A079068(n+1))`
-/

namespace A377774.P2554087647620533849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A053669 (n + 1)) (A079068 (n + 1))

end

end A377774.P2554087647620533849

noncomputable section

/-- A377774: a(n) = largest prime p < gpf(n) that does not divide n, or p = nextprime(gpf(n)) for n in A055932, where gpf = A006530.

Offset 1, canonical program `A377774.P2554087647620533849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377774 (n : ℕ) : ℤ :=
  A377774.P2554087647620533849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378200.P1544822496927274219

`fo[A378705(n+1)-1]+1`
-/

namespace A378200.P1544822496927274219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378705 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A378200.P1544822496927274219

noncomputable section

/-- A378200: Square array read by upward antidiagonals: T(n,k) = ((k + n - 1)^2 + (k - n + 1)*(-1)^n + (1 - k - n)*(-1)^k + (1 - k - n)*(-1)^(k + n) + 2)/2.

Offset 1, canonical program `A378200.P1544822496927274219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A378200 (n : ℕ) : ℤ :=
  (A378200.P1544822496927274219.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A378200.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A379230.P706396864197562586

`A252748(A104210(n+1))`
-/

namespace A379230.P706396864197562586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (A104210 (n + 1)).toNat

end

end A379230.P706396864197562586

noncomputable section

/-- A379230: Difference A003961(k)-(2*k) computed for the natural numbers k for which gcd(k,A003961(k)) > 1, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A379230.P706396864197562586`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104210, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379230 (n : ℕ) : ℤ :=
  A379230.P706396864197562586.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104210, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379230.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379336.P4604804875248092193

`∪[A375055(n+1), A378767(n+1)]`
-/

namespace A379336.P4604804875248092193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379336.P4604804875248092193

noncomputable section

/-- A379336: Numbers k such that there exists a divisor pair (d, d/k) such that one neither divides nor is coprime to the other.

Offset 1, canonical program `A379336.P4604804875248092193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379336 (n : ℕ) : ℤ :=
  (A379336.P4604804875248092193.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379336.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A380264.P17607380789612509708

`A129132(n+1)/(n+1)*A380265(n+1)`
-/

namespace A380264.P17607380789612509708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129132 (n + 1) : ℚ) / (n + 1 : ℚ) * (A380265 (n + 1) : ℚ)

end

end A380264.P17607380789612509708

noncomputable section

/-- A380264: a(n) is the numerator of the mean value of A051903(k) at the range k = 1..n.

Offset 1, canonical program `A380264.P17607380789612509708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380264 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380264.P17607380789612509708.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380345.P3416860299638001481

`n+1+A056239(n+1)`
-/

namespace A380345.P3416860299638001481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A056239 (n + 1)

end

end A380345.P3416860299638001481

noncomputable section

/-- A380345: a(n) = n + sum of prime indices of n.

Offset 1, canonical program `A380345.P3416860299638001481`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380345 (n : ℕ) : ℤ :=
  A380345.P3416860299638001481.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380345.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A382290.P2377806297881400849`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382290 (n : ℕ) : ℤ :=
  A382290.P2377806297881400849.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382290.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A382509.P14217024485511961836

`filter[A390789(1+n), A353670(#)]`
-/

namespace A382509.P14217024485511961836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390789 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A382509.P14217024485511961836

noncomputable section

/-- A382509: Integers s = (p1+p2)/4 such that p1 and p2 are consecutive primes and s can be written in the form p*2^k with k>=0 and p>2 prime.

Offset 1, canonical program `A382509.P14217024485511961836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 911 terms. -/
def A382509 (n : ℕ) : ℤ :=
  A382509.P14217024485511961836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 911 terms. -/
def A382509.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A382966.P5975578079117178061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375072, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382966 (n : ℕ) : ℤ :=
  A382966.P5975578079117178061.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375072, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382966.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A391415.P5836961313597618473

`record[A052410(A378767(n+1))]`
-/

namespace A391415.P5836961313597618473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A378767 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391415.P5836961313597618473

noncomputable section

/-- A391415: Nonsquarefree numbers that are neither cubefree nor perfect powers.

Offset 1, canonical program `A391415.P5836961313597618473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9902 terms. -/
def A391415 (n : ℕ) : ℤ :=
  A391415.P5836961313597618473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9902 terms. -/
def A391415.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A392874.P4495398404350110704

`A005940(1+n)%A117366(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392874.P4495398404350110704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005940 (1 + n)) (A117366 (A005940 (1 + n)).toNat)

end

end A392874.P4495398404350110704

noncomputable section

/-- A392874: a(n) = A005940(1+n) mod A117366(A005940(1+n)), where A117366 gives the smallest prime greater than the largest prime dividing n, and A005940 is Doudna-sequence.

Offset 0, canonical program `A392874.P4495398404350110704`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117366, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392874 (n : ℕ) : ℤ :=
  A392874.P4495398404350110704.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117366, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392874.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A397458.P15426724961007206167

`filter[A048109(n+1), A319710(#)]`
-/

namespace A397458.P15426724961007206167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A397458.P15426724961007206167

noncomputable section

/-- A397458: Numbers k of the form lpf(k)^2 * rad(k), where rad = A007947 and lpf is the least prime factor of k.

Offset 1, canonical program `A397458.P15426724961007206167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4255 terms. -/
def A397458 (n : ℕ) : ℤ :=
  A397458.P15426724961007206167.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4255 terms. -/
def A397458.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A401695.P8234275037941700452

`A000110(A064547(n+1))`
-/

namespace A401695.P8234275037941700452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A064547 (n + 1)).toNat

end

end A401695.P8234275037941700452

noncomputable section

/-- A401695: Number of unordered factorizations of n into its distinct and pairwise infinitarily coprime infinitary divisors.

Offset 1, canonical program `A401695.P8234275037941700452`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401695 (n : ℕ) : ℤ :=
  A401695.P8234275037941700452.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401695.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A374045.P17590415498385049377

`char[A374046(1+n)]`
-/

namespace A374045.P17590415498385049377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374046 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A374045.P17590415498385049377

noncomputable section

/-- A374045: a(n) = 1 if A328845(n) is even, otherwise 0, where A328845 is the first Fibonacci based variant of arithmetic derivative.

Offset 0, canonical program `A374045.P17590415498385049377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374045 (n : ℕ) : ℤ :=
  (A374045.P17590415498385049377.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382412.P15191290044430862285

`lt[0, A309958(n)]`
-/

namespace A382412.P15191290044430862285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309958 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A382412.P15191290044430862285

noncomputable section

/-- A382412: Numbers with no zeros in their base-7 representation.

Offset 1, canonical program `A382412.P15191290044430862285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5442 terms. -/
def A382412 (n : ℕ) : ℤ :=
  (A382412.P15191290044430862285.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5442 terms. -/
def A382412.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391183.P15661351532640137144

`char[A002479(1+n)]`
-/

namespace A391183.P15661351532640137144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A391183.P15661351532640137144

noncomputable section

/-- A391183: a(n) = 1 if n is a number of the form x^2 + 2*y^2, and otherwise 0.

Offset 0, canonical program `A391183.P15661351532640137144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391183 (n : ℕ) : ℤ :=
  (A391183.P15661351532640137144.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386106.P12351287759321940334

`∩[A057436(n+1), A361822(n+1)]`
-/

namespace A386106.P12351287759321940334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386106.P12351287759321940334

noncomputable section

/-- A386106: Primes having only {1, 3, 4, 6} as digits.

Offset 1, canonical program `A386106.P12351287759321940334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A386106 (n : ℕ) : ℤ :=
  (A386106.P12351287759321940334.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A386106.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A351923.P5900735276508586646

`A309891(n+1)+n+1`
-/

namespace A351923.P5900735276508586646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309891 (n + 1) + (n + 1 : ℤ)

end

end A351923.P5900735276508586646

noncomputable section

/-- A351923: Number of ordered pairs of positive integers (s,t), s,t <= n, such that (s^t) | n.

Offset 1, canonical program `A351923.P5900735276508586646`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A309891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351923 (n : ℕ) : ℤ :=
  A351923.P5900735276508586646.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A309891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351923.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A353476.P8920945796544708719

`A064911(n+1)-A353475(n+1)`
-/

namespace A353476.P8920945796544708719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) - A353475 (n + 1)

end

end A353476.P8920945796544708719

noncomputable section

/-- A353476: a(n) = 1 if n is a semiprime of the form p * q, where p and q are (not necessarily distinct) primes with p <= q < p^2, otherwise 0.

Offset 1, canonical program `A353476.P8920945796544708719`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353476 (n : ℕ) : ℤ :=
  A353476.P8920945796544708719.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353476.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A354969.P13427266750881335637

`A329382(A064988(n+2))`
-/

namespace A354969.P13427266750881335637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329382 (A064988 (n + 2)).toNat

end

end A354969.P13427266750881335637

noncomputable section

/-- A354969: For prime partition (k_1, k_2, ..., k_i) of the number x, let the conjugate partition be (m_1, m_2, ... , m_j). If n = k_1 * k_2 * ... * k_i, then a(n) = m1 * m2 * ... * m_j.

Offset 2, canonical program `A354969.P13427266750881335637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 382 terms. -/
def A354969 (n : ℕ) : ℤ :=
  A354969.P13427266750881335637.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 382 terms. -/
def A354969.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A358758.P5296361362316919878

`A000292(A358765(n))%2`
-/

namespace A358758.P5296361362316919878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000292 (A358765 n).toNat) 2

end

end A358758.P5296361362316919878

noncomputable section

/-- A358758: a(n) = 1 if A358669(n) == 1 (mod 4), otherwise 0.

Offset 0, canonical program `A358758.P5296361362316919878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358758 (n : ℕ) : ℤ :=
  A358758.P5296361362316919878.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358842.P10208388314712266374

`A079979(n)-A358841(n)`
-/

namespace A358842.P10208388314712266374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 n - A358841 n

end

end A358842.P10208388314712266374

noncomputable section

/-- A358842: a(n) = 1 if A276086(n) is of the form 6k+5, where A276086 is the primorial base exp-function.

Offset 0, canonical program `A358842.P10208388314712266374`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358841, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358842 (n : ℕ) : ℤ :=
  A358842.P10208388314712266374.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358841, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358842.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A360162.P11134756533744379468

`A034448(A071974(1+n))`
-/

namespace A360162.P11134756533744379468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A071974 (1 + n)).toNat

end

end A360162.P11134756533744379468

noncomputable section

/-- A360162: a(n) is the sum of the square roots of the unitary divisors of n that are squares.

Offset 1, canonical program `A360162.P11134756533744379468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360162 (n : ℕ) : ℤ :=
  A360162.P11134756533744379468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360162.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A366247.P12546709701483345304`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366246, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366247 (n : ℕ) : ℤ :=
  A366247.P12546709701483345304.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366246, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366247.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366725.P17918233649770589852

`A056239(A351517(n+1))`
-/

namespace A366725.P17918233649770589852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A351517 (n + 1)).toNat

end

end A366725.P17918233649770589852

noncomputable section

/-- A366725: Sum of odd indices of distinct prime factors of n.

Offset 1, canonical program `A366725.P17918233649770589852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366725 (n : ℕ) : ℤ :=
  A366725.P17918233649770589852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366725.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A368990.P4935486375508684149

`A294936(A005940(1+n))`
-/

namespace A368990.P4935486375508684149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (A005940 (1 + n)).toNat

end

end A368990.P4935486375508684149

noncomputable section

/-- A368990: a(n) = 1 if A005940(1+n) is nondeficient, otherwise 0. Here A005940 is the Doudna sequence.

Offset 0, canonical program `A368990.P4935486375508684149`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294936, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368990 (n : ℕ) : ℤ :=
  A368990.P4935486375508684149.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294936, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368990.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A369721.P9851319542305346441`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356193, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369721 (n : ℕ) : ℤ :=
  A369721.P9851319542305346441.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356193, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369721.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371091.P8417304100596818762

`a(A276093(n))+a(A276088(n))` with `a(0)=0, a(1)=1`
-/

namespace A371091.P8417304100596818762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A276093 n).toNat + a (A276088 n).toNat

end

end A371091.P8417304100596818762

noncomputable section

/-- A371091: Number of 1's in the recursive decomposition of primorial base expansion of n.

Offset 0, canonical program `A371091.P8417304100596818762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371091 (n : ℕ) : ℤ :=
  (A371091.P8417304100596818762.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372427.P14110798045514319618

`eq[A029931(n+1), A056239(n+1)]+1`
-/

namespace A372427.P14110798045514319618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A372427.P14110798045514319618

noncomputable section

/-- A372427: Numbers whose binary indices and prime indices have the same sum.

Offset 1, canonical program `A372427.P14110798045514319618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A372427 (n : ℕ) : ℤ :=
  (A372427.P14110798045514319618.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A372427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372428.P2818152399425757244

`A029931(n+1)-A056239(n+1)`
-/

namespace A372428.P2818152399425757244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (n + 1) - A056239 (n + 1)

end

end A372428.P2818152399425757244

noncomputable section

/-- A372428: Sum of binary indices of n minus sum of prime indices of n.

Offset 1, canonical program `A372428.P2818152399425757244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372428 (n : ℕ) : ℤ :=
  A372428.P2818152399425757244.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372428.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375031.P10757222230338974933

`eq[0, 2-A051903(A350388(n+1))]+1`
-/

namespace A375031.P10757222230338974933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A051903 (A350388 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375031.P10757222230338974933

noncomputable section

/-- A375031: Numbers whose prime factorization has at least one exponent that equals 2 and no higher even exponent.

Offset 1, canonical program `A375031.P10757222230338974933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2424 terms. -/
def A375031 (n : ℕ) : ℤ :=
  (A375031.P10757222230338974933.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2424 terms. -/
def A375031.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A376401.P10339463303919435605

`a(n-1)+A376400(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A376401.P10339463303919435605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + A376400 (n - 1)

end

end A376401.P10339463303919435605

noncomputable section

/-- A376401: a(n) = A276075(A376400(n)); Partial sums of A376400.

Offset 0, canonical program `A376401.P10339463303919435605`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A376400, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376401 (n : ℕ) : ℤ :=
  A376401.P10339463303919435605.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A376400, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376401.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A380549.P265450254835180974

`lt[n+2, A364085(n+1)]`
-/

namespace A380549.P265450254835180974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364085 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A380549.P265450254835180974

noncomputable section

/-- A380549: List of numbers of the form i + 3*j + 4*i*j for i, j >= 1.

Offset 1, canonical program `A380549.P265450254835180974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7100 terms. -/
def A380549 (n : ℕ) : ℤ :=
  (A380549.P265450254835180974.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7100 terms. -/
def A380549.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391396.P17946055764684849709

`∩[A377562(n+1)-1, A377562(n+2)]`
-/

namespace A391396.P17946055764684849709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377562 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377562 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391396.P17946055764684849709

noncomputable section

/-- A391396: Numbers k such that k and k+1 are both numbers whose number of divisors is 3 times a power of 2 (A377562).

Offset 1, canonical program `A391396.P17946055764684849709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A391396 (n : ℕ) : ℤ :=
  (A391396.P17946055764684849709.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A391396.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A399828.P9872746706796566562

`A366147(n+1)*A368172(n+1)`
-/

namespace A399828.P9872746706796566562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366147 (n + 1) * A368172 (n + 1)

end

end A399828.P9872746706796566562

noncomputable section

/-- A399828: The number of divisors d of n such that gcud(d, n/d) is squarefree, where gcud is the greatest common unitary divisor.

Offset 1, canonical program `A399828.P9872746706796566562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399828 (n : ℕ) : ℤ :=
  A399828.P9872746706796566562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400380.P12678580713622150380

`A255848(A087695(n+1))`
-/

namespace A400380.P12678580713622150380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255848 (A087695 (n + 1)).toNat

end

end A400380.P12678580713622150380

noncomputable section

/-- A400380: Sum of squares of the n-th sexy prime pair (p, p+6).

Offset 1, canonical program `A400380.P12678580713622150380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 411 terms. -/
def A400380 (n : ℕ) : ℤ :=
  A400380.P12678580713622150380.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 411 terms. -/
def A400380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400948.P2250991978134965370

`∩[A000040(n+1), A223134(A167171(n+1))]`
-/

namespace A400948.P2250991978134965370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 (A167171 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400948.P2250991978134965370

noncomputable section

/-- A400948: Primes p such that (p-1)/2 is either prime or a squarefree semiprime.

Offset 1, canonical program `A400948.P2250991978134965370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 688 terms. -/
def A400948 (n : ℕ) : ℤ :=
  (A400948.P2250991978134965370.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 688 terms. -/
def A400948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401425.P10919295985849016461

`A053165((n+1)*A350388(n+1))`
-/

namespace A401425.P10919295985849016461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 ((n + 1 : ℤ) * A350388 (n + 1)).toNat

end

end A401425.P10919295985849016461

noncomputable section

/-- A401425: The largest infinitary divisor of n whose number of divisors is a power of 2.

Offset 1, canonical program `A401425.P10919295985849016461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A401425 (n : ℕ) : ℤ :=
  A401425.P10919295985849016461.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A401425.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A348998.P6663999690063335087

`A348928(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348998.P6663999690063335087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348928 (A276086 n).toNat

end

end A348998.P6663999690063335087

noncomputable section

/-- A348998: a(n) = A348928(A276086(n)), where A348928(n) = gcd(n, A003958(n)), and A003958 is multiplicative with a(p^e) = (p-1)^e, and A276086 gives the prime product form of primorial base expansion of n.

Offset 0, canonical program `A348998.P6663999690063335087`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348998 (n : ℕ) : ℤ :=
  A348998.P6663999690063335087.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348998.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A351457.P4852068756587702856

`A351456(n+1)-A339905(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351457.P4852068756587702856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351456 (n + 1) - A339905 (n + 1)

end

end A351457.P4852068756587702856

noncomputable section

/-- A351457: a(n) = A351456(n) - A339905(n).

Offset 1, canonical program `A351457.P4852068756587702856`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339905, A351456, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351457 (n : ℕ) : ℤ :=
  A351457.P4852068756587702856.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339905, A351456, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351457.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A353793.P14606764899847862273

`(n+1)*A339905(n+1)`
-/

namespace A353793.P14606764899847862273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A339905 (n + 1)

end

end A353793.P14606764899847862273

noncomputable section

/-- A353793: Multiplicative with a(p^e) = ((q-1)*p)^e, where q is the least prime larger than p.

Offset 1, canonical program `A353793.P14606764899847862273`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339905, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353793 (n : ℕ) : ℤ :=
  A353793.P14606764899847862273.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339905, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353793.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353794.P6907123585398419223

`A353791(A000203(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353794.P6907123585398419223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353791 (A000203 (A003961 (n + 1)).toNat).toNat

end

end A353794.P6907123585398419223

noncomputable section

/-- A353794: a(n) = A353791(sigma(A003961(n))), where A353791(n) = A003958(n) * A064989(n).

Offset 1, canonical program `A353794.P6907123585398419223`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353791, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353794 (n : ℕ) : ℤ :=
  A353794.P6907123585398419223.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353791, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353794.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A358751.P1149310267110724188

`A358771(A003961(n+1))`
-/

namespace A358751.P1149310267110724188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358771 (A003961 (n + 1)).toNat

end

end A358751.P1149310267110724188

noncomputable section

/-- A358751: a(n) = 1 if bigomega(n) == 1 (mod 4), otherwise 0.

Offset 1, canonical program `A358751.P1149310267110724188`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358771, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358751 (n : ℕ) : ℤ :=
  A358751.P1149310267110724188.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358771, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358751.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360014.P9859742446175900433

`∩[comp[A356862(n+1)], A360015(n+1)]`
-/

namespace A360014.P9859742446175900433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A360014.P9859742446175900433

noncomputable section

/-- A360014: Numbers whose exponent of 2 in their canonical prime factorization is equal to the maximum of the other exponents.

Offset 1, canonical program `A360014.P9859742446175900433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4278 terms. -/
def A360014 (n : ℕ) : ℤ :=
  (A360014.P9859742446175900433.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4278 terms. -/
def A360014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362160.P10614222443023867370

`A003188(A281589(1+n)-1)`
-/

namespace A362160.P10614222443023867370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A281589 (1 + n) - 1).toNat

end

end A362160.P10614222443023867370

noncomputable section

/-- A362160: Irregular triangle read by rows: The n-th row contains 2^n integers corresponding to the words of the n-bit Gray code with the most significant bits changing fastest.

Offset 0, canonical program `A362160.P10614222443023867370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362160 (n : ℕ) : ℤ :=
  A362160.P10614222443023867370.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362160.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A366379.P6112676943661771266

`comp[A366378(1+n)]`
-/

namespace A366379.P6112676943661771266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366378 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A366379.P6112676943661771266

noncomputable section

/-- A366379: Numbers k such that A057889(k) != k (mod 3), where A057889 is the bijective bit-reverse.

Offset 1, canonical program `A366379.P6112676943661771266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5754 terms. -/
def A366379 (n : ℕ) : ℤ :=
  (A366379.P6112676943661771266.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5754 terms. -/
def A366379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367513.P12676645550060478141

`(n+1)/A367514(n+1)`
-/

namespace A367513.P12676645550060478141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A367514 (n + 1) : ℚ)

end

end A367513.P12676645550060478141

noncomputable section

/-- A367513: The exponentially evil part of n: the largest unitary divisor of n that is an exponentially evil number (A262675).

Offset 1, canonical program `A367513.P12676645550060478141`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367514, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367513 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367513.P12676645550060478141.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367514, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367513.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A370240.P4464398673041965467

`A351266(A008834(1+n))`
-/

namespace A370240.P4464398673041965467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351266 (A008834 (1 + n)).toNat

end

end A370240.P4464398673041965467

noncomputable section

/-- A370240: The sum of divisors of n that are cubes of squarefree numbers.

Offset 1, canonical program `A370240.P4464398673041965467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370240 (n : ℕ) : ℤ :=
  A370240.P4464398673041965467.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370240.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A375270.P15188995971248331311

`filter[A115975(1+n), A181183(#)]`
-/

namespace A375270.P15188995971248331311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115975 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A375270.P15188995971248331311

noncomputable section

/-- A375270: Numbers of the form p^Fibonacci(2*k), where p is a prime and k >= 0.

Offset 1, canonical program `A375270.P15188995971248331311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6558 terms. -/
def A375270 (n : ℕ) : ℤ :=
  A375270.P15188995971248331311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6558 terms. -/
def A375270.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A376399.P5776130386909780975

`A276076(A376403(n))`
-/

namespace A376399.P5776130386909780975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276076 (A376403 n).toNat

end

end A376399.P5776130386909780975

noncomputable section

/-- A376399: a(0) = 1, and for n > 0, a(n) is the least k such that A276075(k) = a(n-1) + A276075(a(n-1)), where A276075 is the factorial base log-function.

Offset 0, canonical program `A376399.P5776130386909780975`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276076, A376403, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376399 (n : ℕ) : ℤ :=
  A376399.P5776130386909780975.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276076, A376403, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376399.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A387707.P1369852853517030567

`A337345(A023196(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387707.P1369852853517030567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (A023196 (n + 1)).toNat

end

end A387707.P1369852853517030567

noncomputable section

/-- A387707: a(n) = A337345(A023196(n)), where A337345 is the number of divisors d of n for which A003961(d) > 2*d, and A023196 lists the nondeficient numbers, numbers k such that sigma(k) >= 2*k.

Offset 1, canonical program `A387707.P1369852853517030567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023196, A337345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A387707 (n : ℕ) : ℤ :=
  A387707.P1369852853517030567.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023196, A337345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A387707.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389903.P8692946444750893676

`min(n+1, A059893(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389903.P8692946444750893676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (n + 1 : ℤ) (A059893 (n + 1))

end

end A389903.P8692946444750893676

noncomputable section

/-- A389903: a(n) = min(n, A059893(n)), where A059893 reverses the order of all but the most significant bit in binary expansion of n.

Offset 1, canonical program `A389903.P8692946444750893676`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389903 (n : ℕ) : ℤ :=
  A389903.P8692946444750893676.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389903.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A393980.P14400587957278650939

`A153154(A233280(n))`
-/

namespace A393980.P14400587957278650939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153154 (A233280 n).toNat

end

end A393980.P14400587957278650939

noncomputable section

/-- A393980: On the nonnegative integer number line, go to the first next unused power of 2 minus 1, then spiral back to pick up any skipped numbers, and repeat.

Offset 0, canonical program `A393980.P14400587957278650939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A393980 (n : ℕ) : ℤ :=
  A393980.P14400587957278650939.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A393980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398818.P2247325722849130262

`record[lcm(A007947(n+1), A008834(n+1))]`
-/

namespace A398818.P2247325722849130262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007947 (n + 1)) (A008834 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A398818.P2247325722849130262

noncomputable section

/-- A398818: Numbers whose powerful part (A057521) is a cube.

Offset 1, canonical program `A398818.P2247325722849130262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6933 terms. -/
def A398818 (n : ℕ) : ℤ :=
  (A398818.P2247325722849130262.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6933 terms. -/
def A398818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364025.P10912320176731338214

`∩[A001358(n+1), A281192(n+1)]`
-/

namespace A364025.P10912320176731338214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364025.P10912320176731338214

noncomputable section

/-- A364025: Semiprimes with no squarefree neighbors.

Offset 1, canonical program `A364025.P10912320176731338214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3520 terms. -/
def A364025 (n : ℕ) : ℤ :=
  (A364025.P10912320176731338214.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3520 terms. -/
def A364025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373630.P3373974476114109022

`A001358(n+1+A072000(A000040(n+1)))`
-/

namespace A373630.P3373974476114109022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 ((n + 1 : ℤ) + A072000 (A000040 (n + 1)).toNat).toNat

end

end A373630.P3373974476114109022

noncomputable section

/-- A373630: a(n) is the n-th semiprime after the n-th prime.

Offset 1, canonical program `A373630.P3373974476114109022`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, A072000, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373630 (n : ℕ) : ℤ :=
  A373630.P3373974476114109022.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, A072000, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373630.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373656.P2215253318500419110

`A000040(n+1+A000720(A001358(n+1)))`
-/

namespace A373656.P2215253318500419110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 1 : ℤ) + A000720 (A001358 (n + 1)).toNat).toNat

end

end A373656.P2215253318500419110

noncomputable section

/-- A373656: a(n) is the n-th prime after the n-th semiprime.

Offset 1, canonical program `A373656.P2215253318500419110`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373656 (n : ℕ) : ℤ :=
  A373656.P2215253318500419110.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373656.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381465.P7545123986284215144

`∩[A001358(n+1), A112775(n+1)]`
-/

namespace A381465.P7545123986284215144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381465.P7545123986284215144

noncomputable section

/-- A381465: Semiprimes k such that 6*k + 1 is also a semiprime.

Offset 1, canonical program `A381465.P7545123986284215144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2491 terms. -/
def A381465 (n : ℕ) : ℤ :=
  (A381465.P7545123986284215144.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2491 terms. -/
def A381465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383906.P235347200383278698

`∩[A001358(n+1), A036301(n+1)]`
-/

namespace A383906.P235347200383278698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383906.P235347200383278698

noncomputable section

/-- A383906: Semiprimes k such that the sums of the even digits of k and of the odd digits of k are equal.

Offset 1, canonical program `A383906.P235347200383278698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 709 terms. -/
def A383906 (n : ℕ) : ℤ :=
  (A383906.P235347200383278698.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 709 terms. -/
def A383906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389007.P15467769822345660334

`∩[A001358(n+1), A084374(n+1)]`
-/

namespace A389007.P15467769822345660334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389007.P15467769822345660334

noncomputable section

/-- A389007: Semiprimes whose least decimal digit is 2.

Offset 1, canonical program `A389007.P15467769822345660334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3316 terms. -/
def A389007 (n : ℕ) : ℤ :=
  (A389007.P15467769822345660334.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3316 terms. -/
def A389007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391254.P635341094671507549

`∩[A001358(1+n), A325559(n+1)]`
-/

namespace A391254.P635341094671507549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391254.P635341094671507549

noncomputable section

/-- A391254: Semiprimes k = p*q such that neither k = A048720(p,x) nor k = A048720(q,x) for any x, where A048720 is the carryless binary multiplication.

Offset 1, canonical program `A391254.P635341094671507549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391254 (n : ℕ) : ℤ :=
  (A391254.P635341094671507549.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398131.P3205953752780474683

`A151800(A001358(n+1))`
-/

namespace A398131.P3205953752780474683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A001358 (n + 1)).toNat

end

end A398131.P3205953752780474683

noncomputable section

/-- A398131: Next prime after the n-th semiprime.

Offset 1, canonical program `A398131.P3205953752780474683`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A398131 (n : ℕ) : ℤ :=
  A398131.P3205953752780474683.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A398131.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399276.P15390692254121348607

`A061358(A001358(n+1))`
-/

namespace A399276.P15390692254121348607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A001358 (n + 1)).toNat

end

end A399276.P15390692254121348607

noncomputable section

/-- A399276: Number of ways writing the n-th semiprime as a sum of two primes.

Offset 1, canonical program `A399276.P15390692254121348607`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399276 (n : ℕ) : ℤ :=
  A399276.P15390692254121348607.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399276.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401539.P656428641672002179

`A069859(A001358(n+1))`
-/

namespace A401539.P656428641672002179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (A001358 (n + 1)).toNat

end

end A401539.P656428641672002179

noncomputable section

/-- A401539: Semiprime residuals: a(n) = q (mod p), where p <= q are the prime factors of the n-th semiprime S_n = p*q.

Offset 1, canonical program `A401539.P656428641672002179`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401539 (n : ℕ) : ℤ :=
  A401539.P656428641672002179.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401539.provenance : SequenceMachineLib.Provenance := .conditional

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

