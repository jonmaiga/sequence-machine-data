import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C036
import Seq.B000.C044
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

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

Offset 1, canonical program `A359769.P3510413858819511961`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359769 (n : ℕ) : ℤ :=
  A359769.P3510413858819511961.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359769.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A330908.P5206692806244212137`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A330908 (n : ℕ) : ℤ :=
  A330908.P5206692806244212137.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A330908.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336695.P1370634628440282469

`A331410(1+A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336695.P1370634628440282469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (1 + A000203 (n + 1)).toNat

end

end A336695.P1370634628440282469

noncomputable section

/-- A336695: a(n) = A331410(1+sigma(n)), where A331410 is totally additive with a(2) = 0 and a(p) = 1 + a(p+1) for odd primes.

Offset 1, canonical program `A336695.P1370634628440282469`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336695 (n : ℕ) : ℤ :=
  A336695.P1370634628440282469.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336695.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336921.P608047927114178291

`A331410(n+1)-A087436(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336921.P608047927114178291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) - A087436 (n + 1)

end

end A336921.P608047927114178291

noncomputable section

/-- A336921: a(n) = A331410(n) - A087436(n).

Offset 1, canonical program `A336921.P608047927114178291`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336921 (n : ℕ) : ℤ :=
  A336921.P608047927114178291.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336921.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336922.P363598391234132890

`A331410(n+1)-A005087(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336922.P363598391234132890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) - A005087 (n + 1)

end

end A336922.P363598391234132890

noncomputable section

/-- A336922: a(n) = A331410(n) - A005087(n).

Offset 1, canonical program `A336922.P363598391234132890`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336922 (n : ℕ) : ℤ :=
  A336922.P363598391234132890.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336922.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336929.P9204731604146529055

`A331410(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336929.P9204731604146529055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A000203 (n + 1)).toNat

end

end A336929.P9204731604146529055

noncomputable section

/-- A336929: a(n) = A331410(sigma(n)), where A331410 is totally additive with a(2) = 0 and a(p) = 1 + a(p+1) for odd primes.

Offset 1, canonical program `A336929.P9204731604146529055`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336929 (n : ℕ) : ℤ :=
  A336929.P9204731604146529055.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336929.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369001.P2904300838152435751

`A059841(A083345(n+1))`
-/

namespace A369001.P2904300838152435751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A083345 (n + 1)).toNat

end

end A369001.P2904300838152435751

noncomputable section

/-- A369001: a(n) = 1 if n' / gcd(n,n') is even, otherwise 0, where n' stands for the arithmetic derivative of n, A003415.

Offset 1, canonical program `A369001.P2904300838152435751`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369001 (n : ℕ) : ℤ :=
  A369001.P2904300838152435751.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369001.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369004.P12527556560787931006

`A121262(A083345(n+1))`
-/

namespace A369004.P12527556560787931006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A083345 (n + 1)).toNat

end

end A369004.P12527556560787931006

noncomputable section

/-- A369004: a(n) = 1 if n' / gcd(n,n') is a multiple of 4, otherwise 0, where n' stands for the arithmetic derivative of n, A003415(n).

Offset 1, canonical program `A369004.P12527556560787931006`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369004 (n : ℕ) : ℤ :=
  A369004.P12527556560787931006.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369004.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369009.P4673910545614244830

`A342001(n+1)-A083345(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369009.P4673910545614244830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (n + 1) - A083345 (n + 1)

end

end A369009.P4673910545614244830

noncomputable section

/-- A369009: a(n) = A342001(n) - A083345(n).

Offset 1, canonical program `A369009.P4673910545614244830`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369009 (n : ℕ) : ℤ :=
  A369009.P4673910545614244830.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369009.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369068.P8273252883148060062

`∑{d}[n+1, A008683((n+1)/#)*A083345(#)]`
-/

namespace A369068.P8273252883148060062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A083345 d

end

end A369068.P8273252883148060062

noncomputable section

/-- A369068: Möbius transform of A083345, where A083345(n) = n' / gcd(n,n'), and n' stands for the arithmetic derivative of n, A003415.

Offset 1, canonical program `A369068.P8273252883148060062`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369068 (n : ℕ) : ℤ :=
  A369068.P8273252883148060062.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369068.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369069.P14663404320964368568

`∑{d}[n+1, A008836((n+1)/#)*A083345(#)]`
-/

namespace A369069.P14663404320964368568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A083345 d

end

end A369069.P14663404320964368568

noncomputable section

/-- A369069: Dirichlet convolution of Liouville's lambda (A008836) with A083345, where A083345(n) = n' / gcd(n,n'), and n' stands for the arithmetic derivative of n, A003415.

Offset 1, canonical program `A369069.P14663404320964368568`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369069 (n : ℕ) : ℤ :=
  A369069.P14663404320964368568.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369069.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369455.P11186501427320355121

`∑{d}[n+1, A055615((n+1)/#)*A083345(#)]`
-/

namespace A369455.P11186501427320355121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A083345 d

end

end A369455.P11186501427320355121

noncomputable section

/-- A369455: Dirichlet convolution of A083345 with A055615 (Dirichlet inverse of n), where A083345(n) = (n'/gcd(n,n')) and n' is the arithmetic derivative of n.

Offset 1, canonical program `A369455.P11186501427320355121`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369455 (n : ℕ) : ℤ :=
  A369455.P11186501427320355121.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369455.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369643.P13743877449333020422

`A079978(A083345(n+1))`
-/

namespace A369643.P13743877449333020422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A083345 (n + 1)).toNat

end

end A369643.P13743877449333020422

noncomputable section

/-- A369643: a(n) = 1 if n' / gcd(n,n') is a multiple of 3, otherwise 0. Here n' stands for the arithmetic derivative of n, A003415.

Offset 1, canonical program `A369643.P13743877449333020422`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369643 (n : ℕ) : ℤ :=
  A369643.P13743877449333020422.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369643.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373363.P15575351710331824762

`gcd(A001414(n+1), A083345(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373363.P15575351710331824762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001414 (n + 1)) (A083345 (n + 1))

end

end A373363.P15575351710331824762

noncomputable section

/-- A373363: a(n) = gcd(A001414(n), A083345(n)), where A001414 is the sum of prime factors with repetition, and A083345 is the numerator of the sum of the inverses of prime factors with repetition.

Offset 1, canonical program `A373363.P15575351710331824762`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373363 (n : ℕ) : ℤ :=
  (A373363.P15575351710331824762.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373363.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373377.P8579628552957542061

`gcd(A059975(n+1), A083345(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373377.P8579628552957542061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059975 (n + 1)) (A083345 (n + 1))

end

end A373377.P8579628552957542061

noncomputable section

/-- A373377: a(n) = gcd(A059975(n), A083345(n)), where A059975 is fully additive with a(p) = p-1, and A083345 is the numerator of the fully additive function with a(p) = 1/p.

Offset 1, canonical program `A373377.P8579628552957542061`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373377 (n : ℕ) : ℤ :=
  (A373377.P8579628552957542061.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373377.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375782.P12848737483940934003

`1+A007814(A085062(n+1))`
-/

namespace A375782.P12848737483940934003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A007814 (A085062 (n + 1)).toNat

end

end A375782.P12848737483940934003

noncomputable section

/-- A375782: The 2-adic valuation of the result, starting from n, of Collatz steps x -> (3x+1)/2 while odd.

Offset 1, canonical program `A375782.P12848737483940934003`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375782 (n : ℕ) : ℤ :=
  A375782.P12848737483940934003.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375782.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379222.P16799102987765888211

`A378999(2*n+1)`
-/

namespace A379222.P16799102987765888211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378999 (2 * n + 1)

end

end A379222.P16799102987765888211

noncomputable section

/-- A379222: Number of trailing 1-bits in the binary representation of the sum of the divisors of the n-th odd square: a(n) = sigma((2*n-1)^2).

Offset 1, canonical program `A379222.P16799102987765888211`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379222 (n : ℕ) : ℤ :=
  A379222.P16799102987765888211.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379222.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386602.P2913812941752451551

`∑{#}[floor(sqrt(10^n))-1, A008683(#+1)*A061202(floor(10^n/(#+1)²))]`
-/

namespace A386602.P2913812941752451551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (10 ^ n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A008683 (k + 1) * A061202 ⌊(10 ^ n : ℚ) / ((k + 1) ^ 2 : ℚ)⌋.toNat

end

end A386602.P2913812941752451551

noncomputable section

/-- A386602: a(n) = Sum_{k<=10^n} d(k)^2, where d(k) = number of divisors function A000005.

Offset 0, canonical program `A386602.P2913812941752451551`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386602 (n : ℕ) : ℤ :=
  A386602.P2913812941752451551.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386602.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394497.P5937869929885374420

`2*A085062(n)+1`
-/

namespace A394497.P5937869929885374420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085062 n + 1

end

end A394497.P5937869929885374420

noncomputable section

/-- A394497: Recurrence: a(2*n + 1) = 2*n + 1, a(2*n) = 3*a(n).

Offset 1, canonical program `A394497.P5937869929885374420`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394497 (n : ℕ) : ℤ :=
  A394497.P5937869929885374420.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394497.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353375.P197900174002010438

`A000005(n+1)-A353376(n+1)`
-/

namespace A353375.P197900174002010438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A353376 (n + 1)

end

end A353375.P197900174002010438

noncomputable section

/-- A353375: Number of divisors of n that are not in A345452.

Offset 1, canonical program `A353375.P197900174002010438`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353375 (n : ℕ) : ℤ :=
  A353375.P197900174002010438.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353375.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353812.P18155869108031714769

`A347870(n+1)-A353811(n+1)`
-/

namespace A353812.P18155869108031714769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347870 (n + 1) - A353811 (n + 1)

end

end A353812.P18155869108031714769

noncomputable section

/-- A353812: a(n) = 1 if sigma(n) is of the form 4m+2, otherwise 0.

Offset 1, canonical program `A353812.P18155869108031714769`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353812 (n : ℕ) : ℤ :=
  A353812.P18155869108031714769.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353812.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A354506.P3830637102415007409

`(n+1)!*∑{#}[n, A048272(#+1)/((#+1)*(n+1-(#+1))!)]`
-/

namespace A354506.P3830637102415007409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (A048272 (k + 1) : ℚ) / ((k + 1) * Nat.factorial ((n + 1 : ℤ) - (k + 1 : ℤ)).toNat : ℚ))

end

end A354506.P3830637102415007409

noncomputable section

/-- A354506: a(n) = n! * Sum_{k=1..n} ( Sum_{d|k} (-1)^(k/d+1) )/(k * (n-k)!).

Offset 1, canonical program `A354506.P3830637102415007409`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A354506 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A354506.P3830637102415007409.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A354506.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A363615.P15240525384775454564`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363615 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363615.P15240525384775454564.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363615.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A365334.P7348562216077771551

`A033634(A008833(n+1))`
-/

namespace A365334.P7348562216077771551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (A008833 (n + 1)).toNat

end

end A365334.P7348562216077771551

noncomputable section

/-- A365334: The sum of exponentially odd divisors of the largest square dividing n.

Offset 1, canonical program `A365334.P7348562216077771551`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365334 (n : ℕ) : ℤ :=
  A365334.P7348562216077771551.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365334.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A365336.P7053891073090803951`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365336 (n : ℕ) : ℤ :=
  A365336.P7053891073090803951.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365336.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369258.P16975426313700226545

`A001227(n+1)-A369257(n+1)`
-/

namespace A369258.P16975426313700226545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A369257 (n + 1)

end

end A369258.P16975426313700226545

noncomputable section

/-- A369258: a(n) = number of odd divisors of n that have an odd number of prime factors with multiplicity.

Offset 1, canonical program `A369258.P16975426313700226545`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369258 (n : ℕ) : ℤ :=
  A369258.P16975426313700226545.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369258.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A380322.P10413619903168285691`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380322 (n : ℕ) : ℤ :=
  A380322.P10413619903168285691.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380322.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A325974.P5304343172121658747

`A000203(n+1)-A325973(n+1)`
-/

namespace A325974.P5304343172121658747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A325973 (n + 1)

end

end A325974.P5304343172121658747

noncomputable section

/-- A325974: Arithmetic mean of {sum of non-unitary divisors} and {sum of nonsquarefree divisors}: a(n) = (1/2)*(A048146(n) + A162296(n)).

Offset 1, canonical program `A325974.P5304343172121658747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325974 (n : ℕ) : ℤ :=
  A325974.P5304343172121658747.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325974.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325977.P12931186378742614702

`(A034460(n+1)+A325313(n+1))/2`
-/

namespace A325977.P12931186378742614702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034460 (n + 1) + A325313 (n + 1) : ℚ) / 2

end

end A325977.P12931186378742614702

noncomputable section

/-- A325977: a(n) = (1/2)*(A034448(n)+A048250(n)-2*n), where A034448 is the sum of unitary divisors and A048250 is the sum of squarefree divisors.

Offset 1, canonical program `A325977.P12931186378742614702`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034460, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325977 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A325977.P12931186378742614702.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034460, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325977.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327477.P17478202587199191785

`Δ[A327471(abs(1-n))]`
-/

namespace A327477.P17478202587199191785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327471 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327477.P17478202587199191785

noncomputable section

/-- A327477: Number of subsets of {1..n} containing n whose mean is not an element.

Offset 0, canonical program `A327477.P17478202587199191785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A327477 (n : ℕ) : ℤ :=
  A327477.P17478202587199191785.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A327477.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A327954.P2142916710311961739

`Δ[A327953(1+n)]`
-/

namespace A327954.P2142916710311961739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327953 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327954.P2142916710311961739

noncomputable section

/-- A327954: First differences of A327953.

Offset 1, canonical program `A327954.P2142916710311961739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A327954 (n : ℕ) : ℤ :=
  A327954.P2142916710311961739.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A327954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328557.P7299042485217628868

`comp[∪[A049642(1+n), n²]]`
-/

namespace A328557.P7299042485217628868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049642 (1 + n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A328557.P7299042485217628868

noncomputable section

/-- A328557: Arithmetic numbers (A003601) that are not squares (A000290).

Offset 1, canonical program `A328557.P7299042485217628868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328557 (n : ℕ) : ℤ :=
  (A328557.P7299042485217628868.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328559.P13268494517545878443

`filter[A049642(1+n), A049240(#)]`
-/

namespace A328559.P13268494517545878443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049642 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A328559.P13268494517545878443

noncomputable section

/-- A328559: Numbers m that are neither arithmetic (A003601) nor squares (A000290).

Offset 1, canonical program `A328559.P13268494517545878443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9810 terms. -/
def A328559 (n : ℕ) : ℤ :=
  A328559.P13268494517545878443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9810 terms. -/
def A328559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329480.P795182894292695426

`A246425(n%A075677(n+1))`
-/

namespace A329480.P795182894292695426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (Int.tmod (n : ℤ) (A075677 (n + 1))).toNat

end

end A329480.P795182894292695426

noncomputable section

/-- A329480: a(n) = (1 - A075677(n))/6 if 6|(A075677(n)-1) or a(n) = (A075677(n) + 1)/6 if 6|(A075677(n)+1).

Offset 1, canonical program `A329480.P795182894292695426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329480 (n : ℕ) : ℤ :=
  A329480.P795182894292695426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330366.P13234269032582178326

`A290450(eq[1, A290450(n+1)%5]+1)`
-/

namespace A330366.P13234269032582178326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290450 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A330366.P13234269032582178326

noncomputable section

/-- A330366: Prime numbers p_k such that p_k == 1 (mod 10) and p_(k+1) == 1 (mod 10).

Offset 1, canonical program `A330366.P13234269032582178326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A330366 (n : ℕ) : ℤ :=
  A330366.P13234269032582178326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A330366.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A332676.P3385004995648683764

`∩[5*A024896(n+1)-2, A290450(n+1)]`
-/

namespace A332676.P3385004995648683764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A024896 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332676.P3385004995648683764

noncomputable section

/-- A332676: Prime numbers p_k such that p_k == 3 (mod 10) and p_(k+1) == 3 (mod 10).

Offset 1, canonical program `A332676.P3385004995648683764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1157 terms. -/
def A332676 (n : ℕ) : ℤ :=
  (A332676.P3385004995648683764.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1157 terms. -/
def A332676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332882.P15306502482901872650

`A034448(n+1)/A323166(n+1)`
-/

namespace A332882.P15306502482901872650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A323166 (n + 1) : ℚ)

end

end A332882.P15306502482901872650

noncomputable section

/-- A332882: If n = Product (p_j^k_j) then a(n) = numerator of Product (1 + 1/p_j^k_j).

Offset 1, canonical program `A332882.P15306502482901872650`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A323166, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A332882 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A332882.P15306502482901872650.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A323166, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A332882.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332883.P3376569476005531227

`(n+1)/A323166(n+1)`
-/

namespace A332883.P3376569476005531227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A323166 (n + 1) : ℚ)

end

end A332883.P3376569476005531227

noncomputable section

/-- A332883: If n = Product (p_j^k_j) then a(n) = denominator of Product (1 + 1/p_j^k_j).

Offset 1, canonical program `A332883.P3376569476005531227`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323166, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332883 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A332883.P3376569476005531227.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323166, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332883.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334098.P11107798916468843839

`A334097(n+1)-A331410(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334098.P11107798916468843839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (n + 1) - A331410 (n + 1)

end

end A334098.P11107798916468843839

noncomputable section

/-- A334098: a(n) = A334097(n) - A331410(n), where former is the exponent of the eventual power of 2 reached, and the latter is the number of iterations needed to get there, when starting from n and using the map k -> k + k/p, where p can be any odd prime factor of k, for example, the largest.

Offset 1, canonical program `A334098.P11107798916468843839`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A334097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334098 (n : ℕ) : ℤ :=
  A334098.P11107798916468843839.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A334097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334098.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334576.P12532079723840725322

`A020986(n)+A020987(n)-1`
-/

namespace A334576.P12532079723840725322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020986 n + (A020987 n - 1)

end

end A334576.P12532079723840725322

noncomputable section

/-- A334576: a(n) is the X-coordinate of the n-th point of the space filling curve P defined in Comments section; sequence A334577 gives Y-coordinates.

Offset 0, canonical program `A334576.P12532079723840725322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A334576 (n : ℕ) : ℤ :=
  A334576.P12532079723840725322.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A334576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334577.P2312635515236378291

`floor(A020990(2+4*n)/2)`
-/

namespace A334577.P2312635515236378291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020990 (2 + 4 * n) : ℚ) / 2⌋

end

end A334577.P2312635515236378291

noncomputable section

/-- A334577: a(n) is the Y-coordinate of the n-th point of the space filling curve P defined in Comments section; sequence A334576 gives X-coordinates.

Offset 0, canonical program `A334577.P2312635515236378291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A334577 (n : ℕ) : ℤ :=
  A334577.P2312635515236378291.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A334577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334663.P13462649059125857451

`∑{d}[1+n, A306682(#)]`
-/

namespace A334663.P13462649059125857451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A306682 d

end

end A334663.P13462649059125857451

noncomputable section

/-- A334663: a(n) = Sum_{d|n} gcd(sigma(d), pod(d)), where pod(k) is the product of the divisors of k (A007955).

Offset 1, canonical program `A334663.P13462649059125857451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334663 (n : ℕ) : ℤ :=
  A334663.P13462649059125857451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334731.P17178466447418086980

`∏{d}[1+n, A306682(#)]`
-/

namespace A334731.P17178466447418086980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A306682 d

end

end A334731.P17178466447418086980

noncomputable section

/-- A334731: a(n) = Product_{d|n} gcd(sigma(d), pod(d)) where sigma(k) is the sum of divisors of k (A000203) and pod(k) is the product of divisors of k (A007955).

Offset 1, canonical program `A334731.P17178466447418086980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334731 (n : ℕ) : ℤ :=
  A334731.P17178466447418086980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334793.P10599980180700027313

`∑{d}[1+n, A324528(#)]`
-/

namespace A334793.P10599980180700027313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A324528 d

end

end A334793.P10599980180700027313

noncomputable section

/-- A334793: a(n) = Sum_{d|n} lcm(tau(d), pod(d)) where tau(k) is the number of divisors of k (A000005) and pod(k) is the product of divisors of k (A007955).

Offset 1, canonical program `A334793.P10599980180700027313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A334793 (n : ℕ) : ℤ :=
  A334793.P10599980180700027313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A334793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334807.P1121419000360532413

`∏{d}[1+n, A324528(#)]`
-/

namespace A334807.P1121419000360532413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A324528 d

end

end A334807.P1121419000360532413

noncomputable section

/-- A334807: a(n) = Product_{d|n} lcm(tau(d), pod(d)) where tau(k) is the number of divisors of k (A000005) and pod(k) is the product of divisors of k (A007955).

Offset 1, canonical program `A334807.P1121419000360532413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A334807 (n : ℕ) : ℤ :=
  A334807.P1121419000360532413.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A334807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335385.P17534177448668786288

`∏{e}[n+1, A000122(A131830(#²))+2]`
-/

namespace A335385.P17534177448668786288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A000122 (A131830 (Nat.factorization (f1 n) p ^ 2)).toNat + 2)

end

end A335385.P17534177448668786288

noncomputable section

/-- A335385: The number of tri-unitary divisors of n.

Offset 1, canonical program `A335385.P17534177448668786288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A335385 (n : ℕ) : ℤ :=
  A335385.P17534177448668786288.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A335385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335882.P10828346716437010302

`eq[2, A331410(n+1)]+1`
-/

namespace A335882.P10828346716437010302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335882.P10828346716437010302

noncomputable section

/-- A335882: Numbers k for which A331410(k) = 2.

Offset 1, canonical program `A335882.P10828346716437010302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A335882 (n : ℕ) : ℤ :=
  (A335882.P10828346716437010302.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A335882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336223.P18107388343175527596

`∩[A162644(n+1), A335275(n+1)]`
-/

namespace A336223.P18107388343175527596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336223.P18107388343175527596

noncomputable section

/-- A336223: Numbers k such that the largest square dividing k is a unitary divisor of k and its square root has an even number of distinct prime divisors.

Offset 1, canonical program `A336223.P18107388343175527596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7234 terms. -/
def A336223 (n : ℕ) : ℤ :=
  (A336223.P18107388343175527596.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7234 terms. -/
def A336223.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A339010.P6961309855830594975

`∑{d}[1+n, A091954(A214682(#))]`
-/

namespace A339010.P6961309855830594975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091954 (A214682 d).toNat

end

end A339010.P6961309855830594975

noncomputable section

/-- A339010: a(n) is the number of ways to write n as the difference of two centered k-gonal numbers for k >= 3.

Offset 1, canonical program `A339010.P6961309855830594975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339010 (n : ℕ) : ℤ :=
  A339010.P6961309855830594975.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339638.P6423504365032786474

`∑[A076078(1+n)]`
-/

namespace A339638.P6423504365032786474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076078 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339638.P6423504365032786474

noncomputable section

/-- A339638: Number of nonempty sets of distinct positive integers that have a least common multiple <= n.

Offset 1, canonical program `A339638.P6423504365032786474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339638 (n : ℕ) : ℤ :=
  A339638.P6423504365032786474.a (n - 1)

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

Offset 1, canonical program `A339667.P11239473250096639083`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339667 (n : ℕ) : ℤ :=
  A339667.P11239473250096639083.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339667.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340504.P11252136775736366337

`(5-A105584(n))%4`
-/

namespace A340504.P11252136775736366337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 - A105584 n) 4

end

end A340504.P11252136775736366337

noncomputable section

/-- A340504: Fixed under 0 -> 03, 1 -> 23, 2 -> 21, 3 -> 01.

Offset 1, canonical program `A340504.P11252136775736366337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340504 (n : ℕ) : ℤ :=
  A340504.P11252136775736366337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342004.P4218786891331753066

`Δ[fp[A328320(n+1)]]`
-/

namespace A342004.P4218786891331753066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328320 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A342004.P4218786891331753066

noncomputable section

/-- A342004: a(n) = 1 if the maximal exponent in the prime factorization of the arithmetic derivative of n (A003415) is less than the maximal exponent in n, otherwise 0. a(1) = 1 by convention.

Offset 1, canonical program `A342004.P4218786891331753066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342004 (n : ℕ) : ℤ :=
  A342004.P4218786891331753066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343258.P4371836176800830808

`∩[A052294(n+1), A144754(n+1)]`
-/

namespace A343258.P4371836176800830808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343258.P4371836176800830808

noncomputable section

/-- A343258: Numbers whose binary representation has a prime number of zeros and a prime number of ones.

Offset 1, canonical program `A343258.P4371836176800830808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3360 terms. -/
def A343258 (n : ℕ) : ℤ :=
  (A343258.P4371836176800830808.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3360 terms. -/
def A343258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344326.P6585231789986508577

`∑{d}[n+1, A055615(#)*A328485((n+1)/#)]`
-/

namespace A344326.P6585231789986508577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A328485 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344326.P6585231789986508577

noncomputable section

/-- A344326: Dirichlet g.f.: zeta(s)^2/zeta(2*s-1).

Offset 1, canonical program `A344326.P6585231789986508577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344326 (n : ℕ) : ℤ :=
  A344326.P6585231789986508577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345050.P16317635263124639318

`A345048(n+1)-A345049(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345050.P16317635263124639318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345048 (n + 1) - A345049 (n + 1)

end

end A345050.P16317635263124639318

noncomputable section

/-- A345050: a(n) = A345048(n) - A345049(n).

Offset 1, canonical program `A345050.P16317635263124639318`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A345049, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345050 (n : ℕ) : ℤ :=
  A345050.P16317635263124639318.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A345049, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345050.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A345221.P15261552467884618322`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345221 (n : ℕ) : ℤ :=
  A345221.P15261552467884618322.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345221.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345948.P11405303974706039683

`A344875(n+1)/A345947(n+1)`
-/

namespace A345948.P11405303974706039683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344875 (n + 1) : ℚ) / (A345947 (n + 1) : ℚ)

end

end A345948.P11405303974706039683

noncomputable section

/-- A345948: a(n) = A344875(n) / gcd(A153151(n), A344875(n)).

Offset 1, canonical program `A345948.P11405303974706039683`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344875, A345947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345948 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345948.P11405303974706039683.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344875, A345947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345948.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345949.P4435719406221485100

`A153151(n+1)/A345947(n+1)`
-/

namespace A345949.P4435719406221485100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153151 (n + 1) : ℚ) / (A345947 (n + 1) : ℚ)

end

end A345949.P4435719406221485100

noncomputable section

/-- A345949: a(n) = A153151(n) / gcd(A153151(n), A344875(n)).

Offset 1, canonical program `A345949.P4435719406221485100`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153151, A345947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345949 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345949.P4435719406221485100.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153151, A345947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345949.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346956.P6151444584231932237

`eq[A187680(n+1), A306682(n+1)]+1`
-/

namespace A346956.P6151444584231932237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306682 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A346956.P6151444584231932237

noncomputable section

/-- A346956: Numbers k such that A000203(k) and A007955(k) are both divisible by A187680(k).

Offset 1, canonical program `A346956.P6151444584231932237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A346956 (n : ℕ) : ℤ :=
  (A346956.P6151444584231932237.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A346956.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A347127.P10886603177571656754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327251, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347127 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A347127.P10886603177571656754.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327251, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347127.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A348504.P8886190148475080709

`A000203(n+1)/A348503(n+1)`
-/

namespace A348504.P8886190148475080709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A348503 (n + 1) : ℚ)

end

end A348504.P8886190148475080709

noncomputable section

/-- A348504: a(n) = sigma(n) / gcd(sigma(n), usigma(n)), where sigma is the sum of divisors function, A000203, and usigma is the unitary sigma, A034448.

Offset 1, canonical program `A348504.P8886190148475080709`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348504 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348504.P8886190148475080709.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348504.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348505.P18197901835979243919

`A034448(n+1)/A348503(n+1)`
-/

namespace A348505.P18197901835979243919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A348503 (n + 1) : ℚ)

end

end A348505.P18197901835979243919

noncomputable section

/-- A348505: a(n) = usigma(n) / gcd(sigma(n), usigma(n)), where sigma is the sum of divisors function, A000203, and usigma is the unitary sigma, A034448.

Offset 1, canonical program `A348505.P18197901835979243919`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A348503, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348505 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348505.P18197901835979243919.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A348503, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348505.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348506.P12741970557584612085

`eq[A161942(n+1), A161946(n+1)]+1`
-/

namespace A348506.P12741970557584612085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161946 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A348506.P12741970557584612085

noncomputable section

/-- A348506: Numbers k such that sigma(k) is a multiple of usigma(k), where sigma is the sum of divisors function, A000203, and usigma is the unitary sigma, A034448.

Offset 1, canonical program `A348506.P12741970557584612085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348506 (n : ℕ) : ℤ :=
  (A348506.P12741970557584612085.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348506.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A348556.P1449905922643619445

`lt[0, A014083(n)]`
-/

namespace A348556.P1449905922643619445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014083 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A348556.P1449905922643619445

noncomputable section

/-- A348556: Binary expansion contains 4 adjacent 1's.

Offset 1, canonical program `A348556.P1449905922643619445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348556 (n : ℕ) : ℤ :=
  (A348556.P1449905922643619445.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348825.P9957985684775902156

`record[(n+2)%A099378(n+2)]`
-/

namespace A348825.P9957985684775902156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A099378 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348825.P9957985684775902156

noncomputable section

/-- A348825: Numbers k such that the denominator of the harmonic mean of the divisors of k is larger than k.

Offset 1, canonical program `A348825.P9957985684775902156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A348825 (n : ℕ) : ℤ :=
  A348825.P9957985684775902156.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A348825.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A348984.P8034432277354798354

`gcd(A000203(n+1), A325973(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348984.P8034432277354798354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A325973 (n + 1))

end

end A348984.P8034432277354798354

noncomputable section

/-- A348984: a(n) = gcd(sigma(n), A325973(n)), where A325973 is the arithmetic mean of {sum of squarefree divisors} and {sum of unitary divisors}.

Offset 1, canonical program `A348984.P8034432277354798354`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348984 (n : ℕ) : ℤ :=
  (A348984.P8034432277354798354.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348984.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350343.P17281856427666000810

`A350342(n+1)²`
-/

namespace A350343.P17281856427666000810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350342 (n + 1) ^ 2

end

end A350343.P17281856427666000810

noncomputable section

/-- A350343: Square numbers k that are abelian orders.

Offset 1, canonical program `A350343.P17281856427666000810`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350342, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350343 (n : ℕ) : ℤ :=
  A350343.P17281856427666000810.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350342, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350343.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350372.P2646849622102892745

`∩[A033992(n+1), A338539(n+1)]`
-/

namespace A350372.P2646849622102892745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350372.P2646849622102892745

noncomputable section

/-- A350372: Numbers with exactly 5 semiprime divisors.

Offset 1, canonical program `A350372.P2646849622102892745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 877 terms. -/
def A350372 (n : ℕ) : ℤ :=
  (A350372.P2646849622102892745.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 877 terms. -/
def A350372.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A351539.P10581206996454005610

`A005087(A306682(n+1)/A009194(n+1))`
-/

namespace A351539.P10581206996454005610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (SequenceMachineLib.roundAway ((A306682 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ))).toNat

end

end A351539.P10581206996454005610

noncomputable section

/-- A351539: Number of odd prime factors p of n such that p^(1+valuation(n,p)) divides sigma(n).

Offset 1, canonical program `A351539.P10581206996454005610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351539 (n : ℕ) : ℤ :=
  A351539.P10581206996454005610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353292.P671757456821883615

`1+n-A080100(n)`
-/

namespace A353292.P671757456821883615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) - A080100 n

end

end A353292.P671757456821883615

noncomputable section

/-- A353292: a(n) is the number of positive integers k <= n that have at least one common 1-bit with n.

Offset 0, canonical program `A353292.P671757456821883615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353292 (n : ℕ) : ℤ :=
  A353292.P671757456821883615.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353292.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A357684.P2308657959105153288

`A007913(A335275(n+1))`
-/

namespace A357684.P2308657959105153288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A335275 (n + 1)).toNat

end

end A357684.P2308657959105153288

noncomputable section

/-- A357684: The squarefree part (A007913) of numbers whose squarefree part is a unitary divisor (A335275).

Offset 1, canonical program `A357684.P2308657959105153288`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357684 (n : ℕ) : ℤ :=
  A357684.P2308657959105153288.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357684.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358680.P17815025508061281044

`A353494(n)+A353495(n)`
-/

namespace A358680.P17815025508061281044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 n + A353495 n

end

end A358680.P17815025508061281044

noncomputable section

/-- A358680: a(n) = 1 if the arithmetic derivative of n is even, 0 otherwise.

Offset 0, canonical program `A358680.P17815025508061281044`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353494, A353495, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358680 (n : ℕ) : ℤ :=
  A358680.P17815025508061281044.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353494, A353495, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358680.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A360109.P9303785803174765081

`A166486(n)*A353494(n)`
-/

namespace A360109.P9303785803174765081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n * A353494 n

end

end A360109.P9303785803174765081

noncomputable section

/-- A360109: a(n) = 1 if n is not multiple of 4, but its arithmetic derivative is, otherwise 0.

Offset 0, canonical program `A360109.P9303785803174765081`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353494, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360109 (n : ℕ) : ℤ :=
  A360109.P9303785803174765081.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353494, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360109.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360123.P18421023914784840136

`and(A001492(n), A360122(n+1))`
-/

namespace A360123.P18421023914784840136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001492 n) (A360122 (n + 1))

end

end A360123.P18421023914784840136

noncomputable section

/-- A360123: Parity of A347389, where A347389 is Dirichlet convolution of A003415(n) with A003415(A276086(n)).

Offset 1, canonical program `A360123.P18421023914784840136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360123 (n : ℕ) : ℤ :=
  A360123.P18421023914784840136.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360769.P2553119699871238566

`filter[A053850(n+1), A354108(#)]`
-/

namespace A360769.P2553119699871238566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A360769.P2553119699871238566

noncomputable section

/-- A360769: Odd numbers that are neither prime powers nor squarefree.

Offset 1, canonical program `A360769.P2553119699871238566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9380 terms. -/
def A360769 (n : ℕ) : ℤ :=
  A360769.P2553119699871238566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9380 terms. -/
def A360769.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A361936.P9667667875036611583

`A217038((n+1)²)+1`
-/

namespace A361936.P9667667875036611583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 ((n + 1) ^ 2) + 1

end

end A361936.P9667667875036611583

noncomputable section

/-- A361936: Indices of the squares in the sequence of powerful numbers (A001694).

Offset 1, canonical program `A361936.P9667667875036611583`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A217038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361936 (n : ℕ) : ℤ :=
  A361936.P9667667875036611583.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A217038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361936.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363270.P853514649644650897

`A000265(A085062(1+n))`
-/

namespace A363270.P853514649644650897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A085062 (1 + n)).toNat

end

end A363270.P853514649644650897

noncomputable section

/-- A363270: The result, starting from n, of Collatz steps x -> (3x+1)/2 while odd, followed by x -> x/2 while even.

Offset 1, canonical program `A363270.P853514649644650897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4094 terms. -/
def A363270 (n : ℕ) : ℤ :=
  A363270.P853514649644650897.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4094 terms. -/
def A363270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364037.P16408587174918813768

`fo[A363895(n+2)-2]+2`
-/

namespace A364037.P16408587174918813768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363895 (n + 2) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 2

end

end A364037.P16408587174918813768

noncomputable section

/-- A364037: Least number k such that the floor of the average of the distinct prime factors of k is n, or -1 if no such number exists.

Offset 2, canonical program `A364037.P16408587174918813768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A364037 (n : ℕ) : ℤ :=
  (A364037.P16408587174918813768.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A364037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364251.P10198520033798463371

`C(C(2, A331410(n+1)), 2)`
-/

namespace A364251.P10198520033798463371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A331410 (n + 1)).toNat) 2

end

end A364251.P10198520033798463371

noncomputable section

/-- A364251: a(n) = 1 if n is of the form q*(2^k), where q is one of the Mersenne primes (A000668) and k >= 0, otherwise a(n) = 0.

Offset 1, canonical program `A364251.P10198520033798463371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364251 (n : ℕ) : ℤ :=
  (A364251.P10198520033798463371.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364251.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A366438.P4907338318269729299`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366438 (n : ℕ) : ℤ :=
  A366438.P4907338318269729299.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

/-! ## A366534.P14908058348624275973

`A034444(A268335(n+1))`
-/

namespace A366534.P14908058348624275973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A268335 (n + 1)).toNat

end

end A366534.P14908058348624275973

noncomputable section

/-- A366534: The number of unitary divisors of the exponentially odd numbers (A268335).

Offset 1, canonical program `A366534.P14908058348624275973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366534 (n : ℕ) : ℤ :=
  A366534.P14908058348624275973.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366534.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A367417.P18277504886847390025`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367417 (n : ℕ) : ℤ :=
  A367417.P18277504886847390025.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367417.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A368038.P2030547895329606168

`A048146(A013929(n+1))`
-/

namespace A368038.P2030547895329606168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (A013929 (n + 1)).toNat

end

end A368038.P2030547895329606168

noncomputable section

/-- A368038: The sum of non-unitary divisors of the nonsquarefree numbers.

Offset 1, canonical program `A368038.P2030547895329606168`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A048146, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368038 (n : ℕ) : ℤ :=
  A368038.P2030547895329606168.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A048146, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368038.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A368468.P2584022470948144189`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368468 (n : ℕ) : ℤ :=
  A368468.P2584022470948144189.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368468.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A368469.P12995681979237792953`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368469 (n : ℕ) : ℤ :=
  A368469.P12995681979237792953.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

Offset 1, canonical program `A368472.P18282956041258009745`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368472 (n : ℕ) : ℤ :=
  A368472.P18282956041258009745.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

/-! ## A368818.P4834602760063289431

`A351115(n+1)-∑{d}[n+1, A351114(#)]`
-/

namespace A368818.P4834602760063289431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351115 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A351114 d

end

end A368818.P4834602760063289431

noncomputable section

/-- A368818: Number of balanced numbers less than n that do not divide n.

Offset 1, canonical program `A368818.P4834602760063289431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368818 (n : ℕ) : ℤ :=
  A368818.P4834602760063289431.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369254.P15188705879199681982

`lt[0, A369253(n+1)]+1`
-/

namespace A369254.P15188705879199681982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369253 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A369254.P15188705879199681982

noncomputable section

/-- A369254: Numbers k that have an odd number of divisors that are at most sqrt(k).

Offset 1, canonical program `A369254.P15188705879199681982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369254 (n : ℕ) : ℤ :=
  (A369254.P15188705879199681982.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369329.P4857448169183928118

`∩[A038550(n+1)+1, A275418(n+1)]`
-/

namespace A369329.P4857448169183928118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369329.P4857448169183928118

noncomputable section

/-- A369329: Numbers whose neighbors have a prime number as their greatest odd divisor.

Offset 1, canonical program `A369329.P4857448169183928118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A369329 (n : ℕ) : ℤ :=
  (A369329.P4857448169183928118.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A369329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370119.P13163184009623574713

`lt[0, A370118(n)]`
-/

namespace A370119.P13163184009623574713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370118 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A370119.P13163184009623574713

noncomputable section

/-- A370119: Numbers whose arithmetic derivative is a multiple of 9.

Offset 1, canonical program `A370119.P13163184009623574713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5414 terms. -/
def A370119 (n : ℕ) : ℤ :=
  (A370119.P13163184009623574713.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5414 terms. -/
def A370119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370123.P16848345114855373934

`lt[0, A370122(n)]`
-/

namespace A370123.P16848345114855373934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A370123.P16848345114855373934

noncomputable section

/-- A370123: Numbers whose second arithmetic derivative (A068346) is a multiple of 3.

Offset 1, canonical program `A370123.P16848345114855373934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370123 (n : ℕ) : ℤ :=
  (A370123.P16848345114855373934.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372331.P6557326080855113142

`∏{e}[n+1, A080100(#)]`
-/

namespace A372331.P6557326080855113142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A080100 (Nat.factorization (f1 n) p)

end

end A372331.P6557326080855113142

noncomputable section

/-- A372331: The number of infinitary divisors of the smallest number k such that k*n is a number whose number of divisors is a power of 2 (A036537).

Offset 1, canonical program `A372331.P6557326080855113142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372331 (n : ℕ) : ℤ :=
  A372331.P6557326080855113142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373058.P8412675158221474829

`A336563(A013929(n+1))`
-/

namespace A373058.P8412675158221474829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (A013929 (n + 1)).toNat

end

end A373058.P8412675158221474829

noncomputable section

/-- A373058: The sum of the aliquot coreful divisors of the nonsquarefree numbers.

Offset 1, canonical program `A373058.P8412675158221474829`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373058 (n : ℕ) : ℤ :=
  A373058.P8412675158221474829.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373058.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373144.P189007551112600238

`record[(1+n)*A373143(n+1)]`
-/

namespace A373144.P189007551112600238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A373143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373144.P189007551112600238

noncomputable section

/-- A373144: Numbers k such that both A003415(k) and A276085(k) are multiples of 3, where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

Offset 1, canonical program `A373144.P189007551112600238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373144 (n : ℕ) : ℤ :=
  A373144.P189007551112600238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373257.P13720974056317118150

`lt[0, A373256(n)]`
-/

namespace A373257.P13720974056317118150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A373257.P13720974056317118150

noncomputable section

/-- A373257: Numbers k for which A003415(k) == -1 (mod 3), where A003415 is the arithmetic derivative.

Offset 1, canonical program `A373257.P13720974056317118150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373257 (n : ℕ) : ℤ :=
  (A373257.P13720974056317118150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373372.P1234123365246061466

`A373371(n+1)*A372573(n+1)`
-/

namespace A373372.P1234123365246061466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373371 (n + 1) * A372573 (n + 1)

end

end A373372.P1234123365246061466

noncomputable section

/-- A373372: a(n) = 1 if A001414(n) and A276085(n) are both multiples of 3, otherwise 0, where A001414 is the sum of prime factors with repetition and A276085 is the primorial base log-function.

Offset 1, canonical program `A373372.P1234123365246061466`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373372 (n : ℕ) : ℤ :=
  A373372.P1234123365246061466.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373372.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373597.P6733738680697274413

`∩[A369659(n+1), A373494(n+1)]`
-/

namespace A373597.P6733738680697274413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373597.P6733738680697274413

noncomputable section

/-- A373597: Non-multiples of 3 whose multiplicities of prime factors of types 3m-1 and 3m+1 are both multiples of 3.

Offset 1, canonical program `A373597.P6733738680697274413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6529 terms. -/
def A373597 (n : ℕ) : ℤ :=
  (A373597.P6733738680697274413.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6529 terms. -/
def A373597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374456.P3778587499414482557

`A000010(A268335(n+1))`
-/

namespace A374456.P3778587499414482557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A268335 (n + 1)).toNat

end

end A374456.P3778587499414482557

noncomputable section

/-- A374456: The Euler phi function values of the exponentially odd numbers (A268335).

Offset 1, canonical program `A374456.P3778587499414482557`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374456 (n : ℕ) : ℤ :=
  A374456.P3778587499414482557.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374456.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A374457.P2386240306145347940`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374457 (n : ℕ) : ℤ :=
  A374457.P2386240306145347940.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374457.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A375707.P9259180855303311650

`A078147(1+n)-1`
-/

namespace A375707.P9259180855303311650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078147 (1 + n) - 1

end

end A375707.P9259180855303311650

noncomputable section

/-- A375707: First differences minus 1 of nonsquarefree numbers.

Offset 1, canonical program `A375707.P9259180855303311650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375707 (n : ℕ) : ℤ :=
  A375707.P9259180855303311650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375934.P9875740353671820697

`filter[A375142(n+1), A389905(#)]`
-/

namespace A375934.P9875740353671820697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A375934.P9875740353671820697

noncomputable section

/-- A375934: Numbers whose prime factorization has a second-largest exponent that equals 1.

Offset 1, canonical program `A375934.P9875740353671820697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9855 terms. -/
def A375934 (n : ℕ) : ℤ :=
  A375934.P9875740353671820697.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9855 terms. -/
def A375934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375962.P14051908958568052838

`∩[A018252(n+1), comp[A375960(n+1)]]`
-/

namespace A375962.P14051908958568052838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375960 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A375962.P14051908958568052838

noncomputable section

/-- A375962: Numbers whose product of proper divisors is not a cube.

Offset 1, canonical program `A375962.P14051908958568052838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A375962 (n : ℕ) : ℤ :=
  (A375962.P14051908958568052838.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A375962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376267.P9390394080289901866

`runs[A078147(1+n)]`
-/

namespace A376267.P9390394080289901866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078147 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A376267.P9390394080289901866

noncomputable section

/-- A376267: Run-lengths of first differences (A078147) of nonsquarefree numbers (A013929).

Offset 1, canonical program `A376267.P9390394080289901866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7203 terms. -/
def A376267 (n : ℕ) : ℤ :=
  (A376267.P9390394080289901866.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7203 terms. -/
def A376267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376602.P17346035341908880502

`eq[0, A073445(1+n)]+1`
-/

namespace A376602.P17346035341908880502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073445 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A376602.P17346035341908880502

noncomputable section

/-- A376602: Inflection and undulation points in the sequence of composite numbers (A002808).

Offset 1, canonical program `A376602.P17346035341908880502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7711 terms. -/
def A376602 (n : ℕ) : ℤ :=
  (A376602.P17346035341908880502.a (n - 1) : ℤ)

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

/-! ## A377783.P9497838708436341752

`A120327(A000040(n+1))`
-/

namespace A377783.P9497838708436341752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A000040 (n + 1)).toNat

end

end A377783.P9497838708436341752

noncomputable section

/-- A377783: Least nonsquarefree number > prime(n).

Offset 1, canonical program `A377783.P9497838708436341752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120327, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377783 (n : ℕ) : ℤ :=
  A377783.P9497838708436341752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120327, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377783.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378369.P11844139312418909594

`A120327(1+n)-(1+n)`
-/

namespace A378369.P11844139312418909594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (1 + n) - (1 + n : ℤ)

end

end A378369.P11844139312418909594

noncomputable section

/-- A378369: Distance between n and the least nonsquarefree number >= n.

Offset 1, canonical program `A378369.P11844139312418909594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A378369 (n : ℕ) : ℤ :=
  A378369.P11844139312418909594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A378369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378959.P5432620633639023974

`A003817(n)*A090706(n)`
-/

namespace A378959.P5432620633639023974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n * A090706 n

end

end A378959.P5432620633639023974

noncomputable section

/-- A378959: Sum, in base 10, of the permutations of the digits of n, written in base 2.

Offset 0, canonical program `A378959.P5432620633639023974`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378959 (n : ℕ) : ℤ :=
  A378959.P5432620633639023974.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378959.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379267.P15908437696186355973

`∩[A144754(n+1), A059010(n)]`
-/

namespace A379267.P15908437696186355973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379267.P15908437696186355973

noncomputable section

/-- A379267: Numbers whose binary representation contains exactly two zeros.

Offset 1, canonical program `A379267.P15908437696186355973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A379267 (n : ℕ) : ℤ :=
  (A379267.P15908437696186355973.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A379267.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A379832.P7411395680414309384`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379832 (n : ℕ) : ℤ :=
  A379832.P7411395680414309384.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379832.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380323.P7609859064291809973

`A046951(A268335(n+1))`
-/

namespace A380323.P7609859064291809973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A268335 (n + 1)).toNat

end

end A380323.P7609859064291809973

noncomputable section

/-- A380323: The number of squares dividing the n-th exponentially odd number.

Offset 1, canonical program `A380323.P7609859064291809973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380323 (n : ℕ) : ℤ :=
  A380323.P7609859064291809973.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380323.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380325.P11001594925613090436

`A069290(A268335(n+1))`
-/

namespace A380325.P11001594925613090436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A268335 (n + 1)).toNat

end

end A380325.P11001594925613090436

noncomputable section

/-- A380325: The sum of the square roots of the squares that divide the n-th exponentially odd number.

Offset 1, canonical program `A380325.P11001594925613090436`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380325 (n : ℕ) : ℤ :=
  A380325.P11001594925613090436.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380325.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380326.P5985966696173145077

`A048250(A268335(n+1))`
-/

namespace A380326.P5985966696173145077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A268335 (n + 1)).toNat

end

end A380326.P5985966696173145077

noncomputable section

/-- A380326: a(n) is the sum of squarefree divisors of the n-th exponentially odd number.

Offset 1, canonical program `A380326.P5985966696173145077`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380326 (n : ℕ) : ℤ :=
  A380326.P5985966696173145077.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380326.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380839.P1105865872776131656

`A173557(n+1)/A305444(n+1)*A307410(n+1)`
-/

namespace A380839.P1105865872776131656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173557 (n + 1) : ℚ) / (A305444 (n + 1) : ℚ) * (A307410 (n + 1) : ℚ)

end

end A380839.P1105865872776131656

noncomputable section

/-- A380839: Numerators of J(n) = Product_{p|n, p odd prime} (p - 1)/(p - 2).

Offset 1, canonical program `A380839.P1105865872776131656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380839 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380839.P1105865872776131656.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380839.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A382660.P13276603593670196303`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382660 (n : ℕ) : ℤ :=
  A382660.P13276603593670196303.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382661.P8563438829571950820

`A191414(A268335(n+1))`
-/

namespace A382661.P8563438829571950820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191414 (A268335 (n + 1)).toNat

end

end A382661.P8563438829571950820

noncomputable section

/-- A382661: The unitary Jordan totient function applied to the exponentially odd numbers (A268335).

Offset 1, canonical program `A382661.P8563438829571950820`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A191414, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382661 (n : ℕ) : ℤ :=
  A382661.P8563438829571950820.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A191414, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382661.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382663.P5371014751236149270

`A191414(A004709(n+1))`
-/

namespace A382663.P5371014751236149270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191414 (A004709 (n + 1)).toNat

end

end A382663.P5371014751236149270

noncomputable section

/-- A382663: The unitary Jordan totient function applied to the cubefree numbers (A004709).

Offset 1, canonical program `A382663.P5371014751236149270`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A191414, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382663 (n : ℕ) : ℤ :=
  A382663.P5371014751236149270.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A191414, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382664.P5840537722718676398

`∑[A268335(1+n)]`
-/

namespace A382664.P5840537722718676398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382664.P5840537722718676398

noncomputable section

/-- A382664: Partial sums of the exponentially odd numbers (A268335).

Offset 1, canonical program `A382664.P5840537722718676398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382664 (n : ℕ) : ℤ :=
  A382664.P5840537722718676398.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382787.P2533475124958767227

`A005361(A335275(n+1))`
-/

namespace A382787.P2533475124958767227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A335275 (n + 1)).toNat

end

end A382787.P2533475124958767227

noncomputable section

/-- A382787: The product of exponents in the prime factorization of the numbers whose prime factorization contains exponents that are either 1 or even.

Offset 1, canonical program `A382787.P2533475124958767227`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382787 (n : ℕ) : ℤ :=
  A382787.P2533475124958767227.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382787.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A384452.P11109828349487245478

`A034676((n+1)!)`
-/

namespace A384452.P11109828349487245478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034676 (Nat.factorial (n + 1))

end

end A384452.P11109828349487245478

noncomputable section

/-- A384452: a(n) is the sum of squares of the unitary divisors of n!.

Offset 1, canonical program `A384452.P11109828349487245478`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034676, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384452 (n : ℕ) : ℤ :=
  A384452.P11109828349487245478.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034676, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384452.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385136.P6842208778617945825

`∑{d}[1+n, A384040(#)]`
-/

namespace A385136.P6842208778617945825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A384040 d

end

end A385136.P6842208778617945825

noncomputable section

/-- A385136: The sum of divisors d of n such that n/d is a cubefull number (A036966).

Offset 1, canonical program `A385136.P6842208778617945825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385136 (n : ℕ) : ℤ :=
  A385136.P6842208778617945825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388986.P11323561690555487102

`lt[A325973(1+n), n]+1`
-/

namespace A388986.P11323561690555487102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A388986.P11323561690555487102

noncomputable section

/-- A388986: Numbers k such that {sum of unitary divisors of k} plus {sum of squarefree divisors of k} is less than 2*k.

Offset 1, canonical program `A388986.P11323561690555487102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4846 terms. -/
def A388986 (n : ℕ) : ℤ :=
  (A388986.P11323561690555487102.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4846 terms. -/
def A388986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389074.P18108287681303167250

`A034448(n+1)/A323159(n+1)`
-/

namespace A389074.P18108287681303167250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A323159 (n + 1) : ℚ)

end

end A389074.P18108287681303167250

noncomputable section

/-- A389074: Numerator of ratio A034448(n) / A048250(n), where A034448 is the sum of unitary divisors and A048250 is the sum of squarefree divisors.

Offset 1, canonical program `A389074.P18108287681303167250`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A323159, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389074 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389074.P18108287681303167250.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A323159, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389074.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389075.P12257504307077228747

`A048250(n+1)/A323159(n+1)`
-/

namespace A389075.P12257504307077228747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A323159 (n + 1) : ℚ)

end

end A389075.P12257504307077228747

noncomputable section

/-- A389075: Denominator of ratio A034448(n) / A048250(n), where A034448 is the sum of unitary divisors and A048250 is the sum of squarefree divisors.

Offset 1, canonical program `A389075.P12257504307077228747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389075 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389075.P12257504307077228747.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389075.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389170.P11666675562721126669

`A057723(n+1)-A048146(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389170.P11666675562721126669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (n + 1) - A048146 (n + 1)

end

end A389170.P11666675562721126669

noncomputable section

/-- A389170: a(n) = A057723(n) - A048146(n), where A048146 is sum of non-unitary divisors and A057723 is sum of positive divisors of n that are divisible by every prime that divides n.

Offset 1, canonical program `A389170.P11666675562721126669`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048146, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389170 (n : ℕ) : ℤ :=
  A389170.P11666675562721126669.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048146, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389171.P8921738463794581484

`n+1+A048146(n+1)-A057723(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389171.P8921738463794581484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A048146 (n + 1) - A057723 (n + 1)

end

end A389171.P8921738463794581484

noncomputable section

/-- A389171: a(n) = n + A048146(n) - A057723(n), where A048146 is sum of non-unitary divisors and A057723 is sum of positive divisors of n that are divisible by every prime that divides n.

Offset 1, canonical program `A389171.P8921738463794581484`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048146, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389171 (n : ℕ) : ℤ :=
  A389171.P8921738463794581484.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048146, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389171.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389215.P13589853183880962071

`lt[n, A325973(n+1)]+1`
-/

namespace A389215.P13589853183880962071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A389215.P13589853183880962071

noncomputable section

/-- A389215: Numbers k such that {sum of unitary divisors of k} plus {sum of squarefree divisors of k} >= 2*k.

Offset 1, canonical program `A389215.P13589853183880962071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389215 (n : ℕ) : ℤ :=
  (A389215.P13589853183880962071.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390441.P17349439973378819553

`eq[A092261(n+1), A385049(n+1)]+1`
-/

namespace A390441.P17349439973378819553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385049 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A390441.P17349439973378819553

noncomputable section

/-- A390441: Numbers whose prime factorization exponents are neither 2 nor 3.

Offset 1, canonical program `A390441.P17349439973378819553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6702 terms. -/
def A390441 (n : ℕ) : ℤ :=
  (A390441.P17349439973378819553.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6702 terms. -/
def A390441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390954.P15680149066390058450

`∑{d}[n+1, A390554(#)*A328254((n+1)/#)]`
-/

namespace A390954.P15680149066390058450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A390554 d * A328254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390954.P15680149066390058450

noncomputable section

/-- A390954: Dirichlet convolution of A390554 and A328254.

Offset 1, canonical program `A390954.P15680149066390058450`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328254, A390554, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390954 (n : ℕ) : ℤ :=
  A390954.P15680149066390058450.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328254, A390554, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390954.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391025.P15150800664500928125

`filter[2*n+1, A389905(#)]`
-/

namespace A391025.P15150800664500928125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j) = 1) n)

end

end A391025.P15150800664500928125

noncomputable section

/-- A391025: Odd numbers that are neither powerful nor squarefree.

Offset 1, canonical program `A391025.P15150800664500928125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6012 terms. -/
def A391025 (n : ℕ) : ℤ :=
  (A391025.P15150800664500928125.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6012 terms. -/
def A391025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391909.P16168098912937984646

`lt[0, A391747(n+1)]+1`
-/

namespace A391909.P16168098912937984646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391747 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A391909.P16168098912937984646

noncomputable section

/-- A391909: Numbers k such that -1 <= A195017(k) <= 1.

Offset 1, canonical program `A391909.P16168098912937984646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391909 (n : ℕ) : ℤ :=
  (A391909.P16168098912937984646.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393924.P7342010753863818337

`eq[0, A389905(n+1)]+1`
-/

namespace A393924.P7342010753863818337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389905 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A393924.P7342010753863818337

noncomputable section

/-- A393924: Numbers that are either squarefree or squareful.

Offset 1, canonical program `A393924.P7342010753863818337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393924 (n : ℕ) : ℤ :=
  (A393924.P7342010753863818337.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394346.P4603799114259171752

`A324528(n+1)*A306671(n+1)`
-/

namespace A394346.P4603799114259171752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324528 (n + 1) * A306671 (n + 1)

end

end A394346.P4603799114259171752

noncomputable section

/-- A394346: a(n) = tau(n) * pod(n) where tau(k) = the number of the divisors of k (A000005) and pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A394346.P4603799114259171752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306671, A324528, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394346 (n : ℕ) : ℤ :=
  A394346.P4603799114259171752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306671, A324528, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394346.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A398161.P17501496371240396645

`∩[A335275(n+1)-1, A335275(n+1)]`
-/

namespace A398161.P17501496371240396645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335275 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398161.P17501496371240396645

noncomputable section

/-- A398161: Numbers k such that every exponent in the prime factorizations of both k and k+1 is either 1 or even.

Offset 1, canonical program `A398161.P17501496371240396645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8739 terms. -/
def A398161 (n : ℕ) : ℤ :=
  (A398161.P17501496371240396645.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8739 terms. -/
def A398161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398569.P1103607179862908180

`∩[A072357(n+1), A216918(n+1)]`
-/

namespace A398569.P1103607179862908180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398569.P1103607179862908180

noncomputable section

/-- A398569: Odd numbers of the form p^2*s, where p is prime, s is squarefree, gcd(p,s) = 1, and A001221(s) >= 2.

Offset 1, canonical program `A398569.P1103607179862908180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1737 terms. -/
def A398569 (n : ℕ) : ℤ :=
  (A398569.P1103607179862908180.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1737 terms. -/
def A398569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398820.P11169697857267256165

`eq[A008683(n+1), A295663(n+1)]+1`
-/

namespace A398820.P11169697857267256165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295663 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A398820.P11169697857267256165

noncomputable section

/-- A398820: Numbers whose powerful part (A057521) is a square that is larger than 1.

Offset 1, canonical program `A398820.P11169697857267256165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398820 (n : ℕ) : ℤ :=
  (A398820.P11169697857267256165.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399090.P13526670085507445655

`A051903(A335275(n+1))`
-/

namespace A399090.P13526670085507445655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A335275 (n + 1)).toNat

end

end A399090.P13526670085507445655

noncomputable section

/-- A399090: The maximum exponent in the prime factorization of the numbers whose powerful part is a square (A335275).

Offset 1, canonical program `A399090.P13526670085507445655`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A335275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399090 (n : ℕ) : ℤ :=
  A399090.P13526670085507445655.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A335275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399090.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399092.P10321508231479955331

`A051903(A068781(n+1))`
-/

namespace A399092.P10321508231479955331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A068781 (n + 1)).toNat

end

end A399092.P10321508231479955331

noncomputable section

/-- A399092: The maximum exponent in the prime factorization of the nonsquarefree numbers k such that k+1 is also nonsquarefree.

Offset 1, canonical program `A399092.P10321508231479955331`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A068781, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399092 (n : ℕ) : ℤ :=
  A399092.P10321508231479955331.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A068781, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399092.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401086.P7626632577257715344

`∑{d}[1+n, A369307(#)]`
-/

namespace A401086.P7626632577257715344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A369307 d

end

end A401086.P7626632577257715344

noncomputable section

/-- A401086: The number of ordered pairs of exponentially odd divisors (d_1, d_2) of n such that d_1 * d_2 is a divisor of n.

Offset 1, canonical program `A401086.P7626632577257715344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401086 (n : ℕ) : ℤ :=
  A401086.P7626632577257715344.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327223.P9849619397842507375

`lt[n*A327222(n), n]`
-/

namespace A327223.P9849619397842507375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327222 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327223.P9849619397842507375

noncomputable section

/-- A327223: Positions of 0's in {A327222(k) : n > 0}.

Offset 1, canonical program `A327223.P9849619397842507375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A327223 (n : ℕ) : ℤ :=
  (A327223.P9849619397842507375.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A327223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328304.P1864302713347206541

`∩[A067259(n+1), A328303(n+1)]`
-/

namespace A328304.P1864302713347206541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328304.P1864302713347206541

noncomputable section

/-- A328304: Numbers that are cubefree, but not squarefree and whose arithmetic derivative is not squarefree.

Offset 1, canonical program `A328304.P1864302713347206541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3035 terms. -/
def A328304 (n : ℕ) : ℤ :=
  (A328304.P1864302713347206541.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3035 terms. -/
def A328304.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A332798.P10911018744368294634

`19*A166061(n+1)`
-/

namespace A332798.P10911018744368294634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * A166061 (n + 1)

end

end A332798.P10911018744368294634

noncomputable section

/-- A332798: Numbers whose smallest prime factor is 19.

Offset 1, canonical program `A332798.P10911018744368294634`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332798 (n : ℕ) : ℤ :=
  A332798.P10911018744368294634.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332798.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334420.P13131574615811348760

`eq[A000005(n+1), A338170(n+1)]+1`
-/

namespace A334420.P13131574615811348760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338170 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A334420.P13131574615811348760

noncomputable section

/-- A334420: Numbers m such that sigma(d)/tau(d) is an integer for all divisors d of m.

Offset 1, canonical program `A334420.P13131574615811348760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334420 (n : ℕ) : ℤ :=
  (A334420.P13131574615811348760.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337288.P14799538653772618557

`A095279(Δ[n²])-1`
-/

namespace A337288.P14799538653772618557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095279 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A337288.P14799538653772618557

noncomputable section

/-- A337288: Numbers k such that k is in A095096 and k+1 is in A020899.

Offset 1, canonical program `A337288.P14799538653772618557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A337288 (n : ℕ) : ℤ :=
  A337288.P14799538653772618557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A337288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337289.P989732119151109843

`A095279(2*(n+1))-1`
-/

namespace A337289.P989732119151109843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095279 (2 * (n + 1)) - 1

end

end A337289.P989732119151109843

noncomputable section

/-- A337289: Numbers k such that k+1 is in A095096 and k is in A020899.

Offset 1, canonical program `A337289.P989732119151109843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A337289 (n : ℕ) : ℤ :=
  A337289.P989732119151109843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A337289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340077.P4965275238882389020

`record[A000265(A339879(n+1))]`
-/

namespace A340077.P4965275238882389020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A339879 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340077.P4965275238882389020

noncomputable section

/-- A340077: Odd numbers k for which k-1 is a multiple of A053575(k) [the odd part of phi(k)].

Offset 1, canonical program `A340077.P4965275238882389020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9673 terms. -/
def A340077 (n : ℕ) : ℤ :=
  A340077.P4965275238882389020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9673 terms. -/
def A340077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345043.P6507924935837030801

`A344998(n+1)-A344999(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345043.P6507924935837030801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344998 (n + 1) - A344999 (n + 1)

end

end A345043.P6507924935837030801

noncomputable section

/-- A345043: a(n) = A344998(n) - A344999(n).

Offset 1, canonical program `A345043.P6507924935837030801`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344999, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345043 (n : ℕ) : ℤ :=
  A345043.P6507924935837030801.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344999, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345043.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348004.P18429899120561536202

`eq[0, A348264(n+1)]+1`
-/

namespace A348004.P18429899120561536202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348264 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A348004.P18429899120561536202

noncomputable section

/-- A348004: Numbers whose unitary divisors have distinct values of the unitary totient function uphi (A047994).

Offset 1, canonical program `A348004.P18429899120561536202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7386 terms. -/
def A348004 (n : ℕ) : ℤ :=
  (A348004.P18429899120561536202.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7386 terms. -/
def A348004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350115.P2733816776076542397

`filter[A072989(n+1), A353798(#)]`
-/

namespace A350115.P2733816776076542397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A350115.P2733816776076542397

noncomputable section

/-- A350115: Numbers p^2*q, p<q primes such that p^2 divides q-1.

Offset 1, canonical program `A350115.P2733816776076542397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A350115 (n : ℕ) : ℤ :=
  A350115.P2733816776076542397.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A350115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350344.P15973079561338052148

`filter[A050384(1+n), A355816(#)]`
-/

namespace A350344.P15973079561338052148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A350344.P15973079561338052148

noncomputable section

/-- A350344: Composite k such that k^2 is an abelian order.

Offset 1, canonical program `A350344.P15973079561338052148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7069 terms. -/
def A350344 (n : ℕ) : ℤ :=
  A350344.P15973079561338052148.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7069 terms. -/
def A350344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350375.P15315086322075171755

`∩[A200521(n+1), A338539(n+1)]`
-/

namespace A350375.P15315086322075171755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350375.P15315086322075171755

noncomputable section

/-- A350375: Numbers with exactly 8 semiprime divisors.

Offset 1, canonical program `A350375.P15315086322075171755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3773 terms. -/
def A350375 (n : ℕ) : ℤ :=
  (A350375.P15315086322075171755.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3773 terms. -/
def A350375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351398.P6339174443303266685

`filter[A140826(1+n), A245656(#)]`
-/

namespace A351398.P6339174443303266685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A351398.P6339174443303266685

noncomputable section

/-- A351398: Numbers k >= 3 such that the arithmetic mean of the divisors of k AND the arithmetic mean of the nondivisors of k are integers.

Offset 1, canonical program `A351398.P6339174443303266685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1901 terms. -/
def A351398 (n : ℕ) : ℤ :=
  A351398.P6339174443303266685.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1901 terms. -/
def A351398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351847.P65692245667964284

`A008472(A078174(n+1))/A001221(A078174(n+1))`
-/

namespace A351847.P65692245667964284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008472 (A078174 (n + 1)).toNat : ℚ) / (A001221 (A078174 (n + 1)).toNat : ℚ)

end

end A351847.P65692245667964284

noncomputable section

/-- A351847: Arithmetic mean of the distinct prime factors of A078174(n).

Offset 1, canonical program `A351847.P65692245667964284`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078174, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351847 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A351847.P65692245667964284.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078174, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351847.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359551.P4733184215772970261

`∑{d}[n+1, A007427(#)*A365632((n+1)/#)]`
-/

namespace A359551.P4733184215772970261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A365632 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359551.P4733184215772970261

noncomputable section

/-- A359551: Dirichlet inverse of A359550, which is multiplicative sequence with a(p^e) = 1 if e < p, otherwise 0.

Offset 1, canonical program `A359551.P4733184215772970261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359551 (n : ℕ) : ℤ :=
  A359551.P4733184215772970261.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362707.P3299096256826437275

`(n+1)*A351112(n+1)-A351113(n+1)`
-/

namespace A362707.P3299096256826437275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A351112 (n + 1) - A351113 (n + 1)

end

end A362707.P3299096256826437275

noncomputable section

/-- A362707: a(n) = Sum_{d|n, phi(d)|sigma(d)} (n-d).

Offset 1, canonical program `A362707.P3299096256826437275`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351112, A351113, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A362707 (n : ℕ) : ℤ :=
  A362707.P3299096256826437275.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351112, A351113, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A362707.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366445.P4284588940328719007

`A054522(n+1)*A129691(n+1)`
-/

namespace A366445.P4284588940328719007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1) * A129691 (n + 1)

end

end A366445.P4284588940328719007

noncomputable section

/-- A366445: Triangle read by rows: T(n,k) = A023900(n/k)*phi(k) if k divides n, T(n,k) = 0 otherwise (n >= 1, 1 <= k <= n).

Offset 1, canonical program `A366445.P4284588940328719007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366445 (n : ℕ) : ℤ :=
  A366445.P4284588940328719007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367734.P9356512376447318104

`eq[1, A351113(1+n)]+1`
-/

namespace A367734.P9356512376447318104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351113 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A367734.P9356512376447318104

noncomputable section

/-- A367734: Numbers that have no balanced divisors except for 1.

Offset 1, canonical program `A367734.P9356512376447318104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6470 terms. -/
def A367734 (n : ℕ) : ℤ :=
  (A367734.P9356512376447318104.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6470 terms. -/
def A367734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367801.P16326813485802835634

`∩[A268335(1+n), A270428(n+1)]`
-/

namespace A367801.P16326813485802835634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367801.P16326813485802835634

noncomputable section

/-- A367801: Numbers that are both exponentially odd (A268335) and exponentially odious (A270428).

Offset 1, canonical program `A367801.P16326813485802835634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6972 terms. -/
def A367801 (n : ℕ) : ℤ :=
  (A367801.P16326813485802835634.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6972 terms. -/
def A367801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368819.P7430176587899777853

`A351116(n+1)-A351113(n+1)`
-/

namespace A368819.P7430176587899777853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351116 (n + 1) - A351113 (n + 1)

end

end A368819.P7430176587899777853

noncomputable section

/-- A368819: Sum of the balanced numbers less than n that do not divide n.

Offset 1, canonical program `A368819.P7430176587899777853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368819 (n : ℕ) : ℤ :=
  A368819.P7430176587899777853.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368819.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A369660.P11962281434868844871

`A369965(A003415(n))`
-/

namespace A369660.P11962281434868844871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369965 (A003415 n).toNat

end

end A369660.P11962281434868844871

noncomputable section

/-- A369660: a(n) = 1 if n' is of the form 4k+2, and n' has an even number of prime factors, otherwise a(n) = 0, where n' stands for the arithmetic derivative of n, A003415.

Offset 0, canonical program `A369660.P11962281434868844871`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369965, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369660 (n : ℕ) : ℤ :=
  A369660.P11962281434868844871.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369965, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373745.P15207298630489066722

`A374176(A000040(n+1))+1`
-/

namespace A373745.P15207298630489066722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374176 (A000040 (n + 1)).toNat + 1

end

end A373745.P15207298630489066722

noncomputable section

/-- A373745: Maximum length of a run of alternating bits in the base-2 representation of prime(n).

Offset 1, canonical program `A373745.P15207298630489066722`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373745 (n : ℕ) : ℤ :=
  A373745.P15207298630489066722.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373745.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374061.P5382329912682957195

`floor(A035185(1+n)/2)`
-/

namespace A374061.P5382329912682957195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035185 (1 + n) : ℚ) / 2⌋

end

end A374061.P5382329912682957195

noncomputable section

/-- A374061: Number of solutions to a^2 + n = 2 * b^2 with 0 < a < b.

Offset 1, canonical program `A374061.P5382329912682957195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374061 (n : ℕ) : ℤ :=
  A374061.P5382329912682957195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374061.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A379342.P3691008895860038562

`A378684(A378684(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379342.P3691008895860038562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (A378684 (n + 1)).toNat

end

end A379342.P3691008895860038562

noncomputable section

/-- A379342: a(n) = A378684(A378684(n)).

Offset 1, canonical program `A379342.P3691008895860038562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378684, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379342 (n : ℕ) : ℤ :=
  A379342.P3691008895860038562.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378684, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379343.P2690974883127903731

`A056023(A378684(A056023(n+1)))`
-/

namespace A379343.P2690974883127903731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A378684 (A056023 (n + 1)).toNat).toNat

end

end A379343.P2690974883127903731

noncomputable section

/-- A379343: Square array read by upward antidiagonals: T(n,k) = (2*(k+n-1)^2 + 2*k - 2*n + 3 + (-2*k - 2*n + 3)*(-1)^n - (-1)^k + (-2*k - 2*n + 1)*(-1)^(k+n))/4.

Offset 1, canonical program `A379343.P2690974883127903731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A379343 (n : ℕ) : ℤ :=
  A379343.P2690974883127903731.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A379343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380324.P6780080084449121011

`A035316(A268335(n+1))`
-/

namespace A380324.P6780080084449121011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (A268335 (n + 1)).toNat

end

end A380324.P6780080084449121011

noncomputable section

/-- A380324: The sum of the squares dividing the n-th exponentially odd number.

Offset 1, canonical program `A380324.P6780080084449121011`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380324 (n : ℕ) : ℤ :=
  A380324.P6780080084449121011.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380324.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381315.P9914003275205982349

`∩[A375072(n+1), A377844(n+1)]`
-/

namespace A381315.P9914003275205982349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381315.P9914003275205982349

noncomputable section

/-- A381315: Numbers whose prime factorization exponents include exactly one 3 and no exponent greater than 3.

Offset 1, canonical program `A381315.P9914003275205982349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7798 terms. -/
def A381315 (n : ℕ) : ℤ :=
  (A381315.P9914003275205982349.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7798 terms. -/
def A381315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381885.P9369399217660328766

`A364813(n+1)/(n+1)`
-/

namespace A381885.P9369399217660328766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364813 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A381885.P9369399217660328766

noncomputable section

/-- A381885: a(n) = Product_{k=2..n-1} k^ord(n, k) where ord(n, k) = 0 if k does not divide n, otherwise is the exponent of the highest power of k that divides n.

Offset 1, canonical program `A381885.P9369399217660328766`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A364813, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381885 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381885.P9369399217660328766.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A364813, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381885.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381951.P13289787021626920291

`∩[2*n+1, A376142(n+1)]`
-/

namespace A381951.P13289787021626920291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381951.P13289787021626920291

noncomputable section

/-- A381951: Nonsquarefree odd numbers whose prime factorization has an odd maximum exponent.

Offset 1, canonical program `A381951.P13289787021626920291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1644 terms. -/
def A381951 (n : ℕ) : ℤ :=
  (A381951.P13289787021626920291.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1644 terms. -/
def A381951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384915.P5316216616895226028

`∑{d}[n+1, A359552(#)*A384916((n+1)/#)]`
-/

namespace A384915.P5316216616895226028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359552 d * A384916 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384915.P5316216616895226028

noncomputable section

/-- A384915: The number of unordered factorizations of n into powers of primes of the form p^e where p is prime and 0 <= e <= p (A074583).

Offset 1, canonical program `A384915.P5316216616895226028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384915 (n : ℕ) : ℤ :=
  A384915.P5316216616895226028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384915.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A386573.P15041125759014412610

`A351113(∏{p}[1+n, #])`
-/

namespace A386573.P15041125759014412610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351113 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A386573.P15041125759014412610

noncomputable section

/-- A386573: Sum of the squarefree balanced divisors of n.

Offset 1, canonical program `A386573.P15041125759014412610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386573 (n : ℕ) : ℤ :=
  A386573.P15041125759014412610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386574.P1108007266045445128

`A351112(∏{p}[n+1, #])`
-/

namespace A386574.P1108007266045445128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351112 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A386574.P1108007266045445128

noncomputable section

/-- A386574: Number of squarefree balanced divisors of n.

Offset 1, canonical program `A386574.P1108007266045445128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386574 (n : ℕ) : ℤ :=
  A386574.P1108007266045445128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386589.P14364682863583384821

`A000005(n+1)+A351113(n+1)-A351112(n+1)`
-/

namespace A386589.P14364682863583384821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A351113 (n + 1) - A351112 (n + 1)

end

end A386589.P14364682863583384821

noncomputable section

/-- A386589: a(n) = Sum_{d|n} d^c(d), where c = A351114.

Offset 1, canonical program `A386589.P14364682863583384821`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351112, A351113, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A386589 (n : ℕ) : ℤ :=
  A386589.P14364682863583384821.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351112, A351113, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A386589.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386591.P14499915022508730926

`A000005(n+1)-A351112(n+1)`
-/

namespace A386591.P14499915022508730926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A351112 (n + 1)

end

end A386591.P14499915022508730926

noncomputable section

/-- A386591: Number of divisors of n that are not balanced numbers.

Offset 1, canonical program `A386591.P14499915022508730926`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351112, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386591 (n : ℕ) : ℤ :=
  A386591.P14499915022508730926.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351112, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386591.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386592.P13459167421288589562

`A000203(n+1)-A351113(n+1)`
-/

namespace A386592.P13459167421288589562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A351113 (n + 1)

end

end A386592.P13459167421288589562

noncomputable section

/-- A386592: Sum of the divisors of n that are not balanced numbers.

Offset 1, canonical program `A386592.P13459167421288589562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351113, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386592 (n : ℕ) : ℤ :=
  A386592.P13459167421288589562.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351113, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386592.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390128.P1354952752970519433

`filter[A375072(1+n), A389905(#)]`
-/

namespace A390128.P1354952752970519433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A390128.P1354952752970519433

noncomputable section

/-- A390128: Biquadratefree numbers that are neither cubefree nor squareful.

Offset 1, canonical program `A390128.P1354952752970519433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5907 terms. -/
def A390128 (n : ℕ) : ℤ :=
  A390128.P1354952752970519433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5907 terms. -/
def A390128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390949.P13602810855896684034

`filter[A320632(n+1), A389905(#)]`
-/

namespace A390949.P13602810855896684034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A390949.P13602810855896684034

noncomputable section

/-- A390949: Nonsquarefree weak numbers that have more than 2 distinct prime factors.

Offset 1, canonical program `A390949.P13602810855896684034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390949 (n : ℕ) : ℤ :=
  A390949.P13602810855896684034.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391428.P16960108032895023113

`A087248(n+1)²`
-/

namespace A391428.P16960108032895023113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1) ^ 2

end

end A391428.P16960108032895023113

noncomputable section

/-- A391428: Exponential abundant numbers that are squares of squarefree numbers.

Offset 1, canonical program `A391428.P16960108032895023113`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391428 (n : ℕ) : ℤ :=
  A391428.P16960108032895023113.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391428.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391746.P1830056031143127677

`a(n-1)+A391747(n+1)` with `a(0)=1`
-/

namespace A391746.P1830056031143127677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A391747 (n + 1)

end

end A391746.P1830056031143127677

noncomputable section

/-- A391746: Number of terms of A391909 <= n.

Offset 1, canonical program `A391746.P1830056031143127677`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391747, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391746 (n : ℕ) : ℤ :=
  A391746.P1830056031143127677.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391747, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391746.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395433.P17346962326993188646

`A063934(A099801(1+n))`
-/

namespace A395433.P17346962326993188646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063934 (A099801 (1 + n)).toNat

end

end A395433.P17346962326993188646

noncomputable section

/-- A395433: a(n) is the median of the odd primes less than 2n.

Offset 2, canonical program `A395433.P17346962326993188646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395433 (n : ℕ) : ℤ :=
  A395433.P17346962326993188646.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399747.P17310883521128029216

`∑{d}[n+1, #*A075802((n+1)/#)]`
-/

namespace A399747.P17310883521128029216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A075802 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399747.P17310883521128029216

noncomputable section

/-- A399747: The sum of divisors d of n such that n/d is a perfect power (A001597).

Offset 1, canonical program `A399747.P17310883521128029216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399747 (n : ℕ) : ℤ :=
  A399747.P17310883521128029216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399748.P7728002996692195864

`∑{d}[n+1, A000010(#)*A075802((n+1)/#)]`
-/

namespace A399748.P7728002996692195864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A075802 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399748.P7728002996692195864

noncomputable section

/-- A399748: The number of integers k from 1 to n such that gcd(n,k) is a perfect power (A001597).

Offset 1, canonical program `A399748.P7728002996692195864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399748 (n : ℕ) : ℤ :=
  A399748.P7728002996692195864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327730.P1577413118058245570

`A060594(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A327730.P1577413118058245570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (2 * (n + 1))

end

end A327730.P1577413118058245570

noncomputable section

/-- A327730: a(n) = A060594(2n).

Offset 1, canonical program `A327730.P1577413118058245570`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060594, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327730 (n : ℕ) : ℤ :=
  A327730.P1577413118058245570.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060594, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327730.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328245.P6030416023601499540

`∩[A328244(n+1), A328303(n+1)]`
-/

namespace A328245.P6030416023601499540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328245.P6030416023601499540

noncomputable section

/-- A328245: Numbers whose second arithmetic derivative (A068346) is a squarefree number (A005117), but the first derivative (A003415) is not.

Offset 1, canonical program `A328245.P6030416023601499540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 945 terms. -/
def A328245 (n : ℕ) : ℤ :=
  (A328245.P6030416023601499540.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 945 terms. -/
def A328245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328478.P7764847265311889636

`(n+1)/A328479(n+1)`
-/

namespace A328478.P7764847265311889636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A328479 (n + 1) : ℚ)

end

end A328478.P7764847265311889636

noncomputable section

/-- A328478: Divide n by the largest primorial that divides it and repeat until a fixed point is reached; a(n) is the fixed point.

Offset 1, canonical program `A328478.P7764847265311889636`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328479, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328478 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A328478.P7764847265311889636.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328479, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328478.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329152.P18328021413279516523

`(A000010(n+1)-A060594(n+1))/2`
-/

namespace A329152.P18328021413279516523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) - A060594 (n + 1) : ℚ) / 2

end

end A329152.P18328021413279516523

noncomputable section

/-- A329152: a(n) = Sum_{i=1..n-1} Sum_{j=1..i-1} [1 == i*j (mod n)], where [] is the Iverson bracket.

Offset 1, canonical program `A329152.P18328021413279516523`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060594, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329152 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A329152.P18328021413279516523.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060594, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329152.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339270.P3849637418448733813

`A046929(n+1)+char[A233671(n+1)-1]`
-/

namespace A339270.P3849637418448733813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233671 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046929 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A339270.P3849637418448733813

noncomputable section

/-- A339270: a(n) is the largest m such that there is no prime except prime(n) from prime(n)-m+1 to prime(n)+m.

Offset 1, canonical program `A339270.P3849637418448733813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339270 (n : ℕ) : ℤ :=
  A339270.P3849637418448733813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343783.P5817121475055786338

`A053589(A000010(n+1))`
-/

namespace A343783.P5817121475055786338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053589 (A000010 (n + 1)).toNat

end

end A343783.P5817121475055786338

noncomputable section

/-- A343783: a(n) is the largest primorial number (A002110) which divides phi(n).

Offset 1, canonical program `A343783.P5817121475055786338`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053589, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343783 (n : ℕ) : ℤ :=
  A343783.P5817121475055786338.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053589, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343783.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345068.P4519547865639107194

`∑{d}[1+n, A100994(#)]-1`
-/

namespace A345068.P4519547865639107194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A100994 d - 1

end

end A345068.P4519547865639107194

noncomputable section

/-- A345068: a(n) = Sum_{d|n, d>1} d^floor(1/omega(d)).

Offset 1, canonical program `A345068.P4519547865639107194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345068 (n : ℕ) : ℤ :=
  A345068.P4519547865639107194.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351716.P14046521430957268303

`A351715(eq[1, Δ[A351715(n+1)]]+1)`
-/

namespace A351716.P14046521430957268303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351715 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A351716.P14046521430957268303

noncomputable section

/-- A351716: Starts of runs of 3 consecutive Lucas-Niven numbers (A351714).

Offset 1, canonical program `A351716.P14046521430957268303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A351716 (n : ℕ) : ℤ :=
  A351716.P14046521430957268303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A351716.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A354028.P1581446969738765077

`and(∑[n], A174275(n+1))`
-/

namespace A354028.P1581446969738765077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A174275 (n + 1))

end

end A354028.P1581446969738765077

noncomputable section

/-- A354028: a(n) = 1 if n is a prime power of the form 4m+3, otherwise 0.

Offset 1, canonical program `A354028.P1581446969738765077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354028 (n : ℕ) : ℤ :=
  A354028.P1581446969738765077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354028.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A358755.P6116751823785190623

`(row(row(A053589(n+1))+1)+1)%2`
-/

namespace A358755.P6116751823785190623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow (SequenceMachineLib.triRow (A053589 (n + 1)).toNat + 1) + 1) % 2

end

end A358755.P6116751823785190623

noncomputable section

/-- A358755: a(n) = 1 if A053669(n) [the smallest prime not dividing n] is of the form 6m-1, otherwise a(n) = 0.

Offset 1, canonical program `A358755.P6116751823785190623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358755 (n : ℕ) : ℤ :=
  (A358755.P6116751823785190623.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365633.P2234944935336013815

`∑{d}[A342007(1+n), #]`
-/

namespace A365633.P2234944935336013815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342007 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A365633.P2234944935336013815

noncomputable section

/-- A365633: The sum of divisors of n that are terms of A072873.

Offset 1, canonical program `A365633.P2234944935336013815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365633 (n : ℕ) : ℤ :=
  (A365633.P2234944935336013815.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368333.P4860013269317907848

`gcd(A001014(A342007(n+1)), A184985(n+1))`
-/

namespace A368333.P4860013269317907848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001014 (A342007 (n + 1)).toNat) (A184985 (n + 1))

end

end A368333.P4860013269317907848

noncomputable section

/-- A368333: The largest term of A054744 that divides n.

Offset 1, canonical program `A368333.P4860013269317907848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368333 (n : ℕ) : ℤ :=
  (A368333.P4860013269317907848.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370078.P7098894279137476643

`∑{e}[n+1, A007814(A100994(#))]`
-/

namespace A370078.P7098894279137476643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A007814 (A100994 (Nat.factorization (f1 n) p)).toNat

end

end A370078.P7098894279137476643

noncomputable section

/-- A370078: a(n) = log_2(A370077(n)).

Offset 1, canonical program `A370078.P7098894279137476643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370078 (n : ℕ) : ℤ :=
  A370078.P7098894279137476643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370354.P16956646947341725089

`lt[A089026(n+1), A082299(n+1)]+1`
-/

namespace A370354.P16956646947341725089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082299 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A370354.P16956646947341725089

noncomputable section

/-- A370354: Composite numbers k that share a factor with sopfr(k), the sum of the primes dividing k, with repetition.

Offset 1, canonical program `A370354.P16956646947341725089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3422 terms. -/
def A370354 (n : ℕ) : ℤ :=
  (A370354.P16956646947341725089.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3422 terms. -/
def A370354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371054.P16164343174787979327

`∩[A043583(n+1), A089118(n+1)]`
-/

namespace A371054.P16164343174787979327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371054.P16164343174787979327

noncomputable section

/-- A371054: Numbers whose ternary representation consists of a run of 1's, then a run of 0's, then a run of 2's.

Offset 1, canonical program `A371054.P16164343174787979327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. -/
def A371054 (n : ℕ) : ℤ :=
  (A371054.P16164343174787979327.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. -/
def A371054.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A373991.P15565913990690393995

`char[A373992(1+n)]`
-/

namespace A373991.P15565913990690393995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373992 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373991.P15565913990690393995

noncomputable section

/-- A373991: a(n) = 1 if A328768(n) is a multiple of 3, otherwise 0, where A328768 is the first primorial based variant of arithmetic derivative.

Offset 0, canonical program `A373991.P15565913990690393995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373991 (n : ℕ) : ℤ :=
  (A373991.P15565913990690393995.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377191.P879041017635496977

`col(A043562(n))`
-/

namespace A377191.P879041017635496977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A043562 n).toNat

end

end A377191.P879041017635496977

noncomputable section

/-- A377191: Smallest number of digits that must be changed in n to obtain a palindrome (without changing the first digit to 0).

Offset 0, canonical program `A377191.P879041017635496977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A377191 (n : ℕ) : ℤ :=
  (A377191.P879041017635496977.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A377191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379372.P8846924178214362787

`filter[A234099(n+1), A354926(#)]`
-/

namespace A379372.P8846924178214362787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A379372.P8846924178214362787

noncomputable section

/-- A379372: Sphenic numbers k such that 2*k+1 is also a sphenic number.

Offset 1, canonical program `A379372.P8846924178214362787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1906 terms. -/
def A379372 (n : ℕ) : ℤ :=
  A379372.P8846924178214362787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1906 terms. -/
def A379372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379929.P13178547235665046402

`eq[∑{e}[n, #], A043562(n)]`
-/

namespace A379929.P13178547235665046402
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A379929.P13178547235665046402

noncomputable section

/-- A379929: Numbers that have the same number of prime factors, counted with multiplicity, as there are runs in their base-10 representation.

Offset 1, canonical program `A379929.P13178547235665046402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2054 terms. -/
def A379929 (n : ℕ) : ℤ :=
  (A379929.P13178547235665046402.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2054 terms. -/
def A379929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379930.P9186506288591165084

`eq[A000005(n+1), A043562(n+1)]+1`
-/

namespace A379930.P9186506288591165084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A379930.P9186506288591165084

noncomputable section

/-- A379930: Numbers that have the same number of divisors as there are runs in their base-10 representation.

Offset 1, canonical program `A379930.P9186506288591165084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1755 terms. -/
def A379930 (n : ℕ) : ℤ :=
  (A379930.P9186506288591165084.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1755 terms. -/
def A379930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381204.P350150440246821859

`A348494(A100994(n+2))`
-/

namespace A381204.P350150440246821859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348494 (A100994 (n + 2)).toNat

end

end A381204.P350150440246821859

noncomputable section

/-- A381204: a(n) is the gcd of the elements of the set of bases and exponents in the prime factorization of n.

Offset 2, canonical program `A381204.P350150440246821859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A381204 (n : ℕ) : ℤ :=
  A381204.P350150440246821859.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A381204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386105.P11382381309896313627

`∩[A038604(n+1), A084545(n+1)]`
-/

namespace A386105.P11382381309896313627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386105.P11382381309896313627

noncomputable section

/-- A386105: Primes having only {1, 3, 4, 5} as digits.

Offset 1, canonical program `A386105.P11382381309896313627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A386105 (n : ℕ) : ℤ :=
  (A386105.P11382381309896313627.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A386105.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A401240.P6929582401376175809

`∑{e}[A342007(1+n), #]`
-/

namespace A401240.P6929582401376175809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342007 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A401240.P6929582401376175809

noncomputable section

/-- A401240: The number of divisors of n that are prime powers of the form p^(k*p), with p prime and k >= 1.

Offset 1, canonical program `A401240.P6929582401376175809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401240 (n : ℕ) : ℤ :=
  (A401240.P6929582401376175809.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401240.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A327936.P4864635730061713383

`∏{p}[A342007(1+n), #]`
-/

namespace A327936.P4864635730061713383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342007 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A327936.P4864635730061713383

noncomputable section

/-- A327936: Multiplicative with a(p^e) = p if e >= p, otherwise 1.

Offset 1, canonical program `A327936.P4864635730061713383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327936 (n : ℕ) : ℤ :=
  (A327936.P4864635730061713383.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328712.P8522307854513457100

`A046080(n+1)-A024362(n+1)`
-/

namespace A328712.P8522307854513457100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1) - A024362 (n + 1)

end

end A328712.P8522307854513457100

noncomputable section

/-- A328712: Number of non-primitive Pythagorean triples with hypotenuse n.

Offset 1, canonical program `A328712.P8522307854513457100`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024362, A046080, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328712 (n : ℕ) : ℤ :=
  A328712.P8522307854513457100.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024362, A046080, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328712.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329761.P2221005200150248452

`∩[A174813(n+1), A386113(n+1)]`
-/

namespace A329761.P2221005200150248452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329761.P2221005200150248452

noncomputable section

/-- A329761: Primes having only {1, 3, 9} as digits.

Offset 1, canonical program `A329761.P2221005200150248452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1525 terms. -/
def A329761 (n : ℕ) : ℤ :=
  (A329761.P2221005200150248452.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1525 terms. -/
def A329761.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A339273.P10031977836032368190

`4*A000404(n+1)`
-/

namespace A339273.P10031977836032368190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000404 (n + 1)

end

end A339273.P10031977836032368190

noncomputable section

/-- A339273: Sums of two nonzero even squares.

Offset 1, canonical program `A339273.P10031977836032368190`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339273 (n : ℕ) : ℤ :=
  A339273.P10031977836032368190.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339273.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340608.P11930374958149425533

`eq[1, gcd(A001222(n+1), A061395(n+1))]+1`
-/

namespace A340608.P11930374958149425533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (n + 1)) (A061395 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A340608.P11930374958149425533

noncomputable section

/-- A340608: The number of prime factors of n (A001222) is relatively prime to the maximum prime index of n (A061395).

Offset 1, canonical program `A340608.P11930374958149425533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340608 (n : ℕ) : ℤ :=
  (A340608.P11930374958149425533.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349538.P8542054162756012247

`a(n-1)+4+8*A046080(n)` with `a(0)=1`
-/

namespace A349538.P8542054162756012247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 4 + 8 * A046080 n

end

end A349538.P8542054162756012247

noncomputable section

/-- A349538: The number of pseudo-Pythagorean triples (which allow negative or 0 sides) on a 2D lattice that are on or inside a circle of radius n.

Offset 0, canonical program `A349538.P8542054162756012247`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046080, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349538 (n : ℕ) : ℤ :=
  A349538.P8542054162756012247.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046080, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349538.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A355769.P9165720454597640322

`∩[A000404(n+1)-1, A000404(n+1)]`
-/

namespace A355769.P9165720454597640322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355769.P9165720454597640322

noncomputable section

/-- A355769: Numbers k such that both k and k+1 can be written as the sum of two nonzero squares.

Offset 1, canonical program `A355769.P9165720454597640322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2130 terms. -/
def A355769 (n : ℕ) : ℤ :=
  (A355769.P9165720454597640322.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2130 terms. -/
def A355769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360393.P1701064018632553590

`∪[A360395(n+1), A360397(n+1)]`
-/

namespace A360393.P1701064018632553590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360393.P1701064018632553590

noncomputable section

/-- A360393: Complement of A360392.

Offset 1, canonical program `A360393.P1701064018632553590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360393 (n : ℕ) : ℤ :=
  (A360393.P1701064018632553590.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360393.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A374107.P2581602008718152725

`A373585(n+1)*A374045(n+1)`
-/

namespace A374107.P2581602008718152725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373585 (n + 1) * A374045 (n + 1)

end

end A374107.P2581602008718152725

noncomputable section

/-- A374107: a(n) = 1 if A113177(n) and A328845(n) are both even, otherwise 0, where A113177 is fully additive with a(p) = Fibonacci(p) and A328845 is the first Fibonacci-based variant of the arithmetic derivative.

Offset 1, canonical program `A374107.P2581602008718152725`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374045, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374107 (n : ℕ) : ℤ :=
  A374107.P2581602008718152725.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374045, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374107.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375076.P5343439789459528226

`filter[A391497(n+1), A295316(#)]`
-/

namespace A375076.P5343439789459528226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A375076.P5343439789459528226

noncomputable section

/-- A375076: Numbers whose prime factorization exponents include at least one 1, at least one 3 and no other exponents.

Offset 1, canonical program `A375076.P5343439789459528226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4985 terms. -/
def A375076 (n : ℕ) : ℤ :=
  A375076.P5343439789459528226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4985 terms. -/
def A375076.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A383784.P10667840819489389519

`∪[A000404(1+n), A003136(n+1)]`
-/

namespace A383784.P10667840819489389519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383784.P10667840819489389519

noncomputable section

/-- A383784: Norms of vectors in any regular planar tiling (square or A2 lattice).

Offset 1, canonical program `A383784.P10667840819489389519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383784 (n : ℕ) : ℤ :=
  (A383784.P10667840819489389519.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386322.P5685043808971806302

`∩[A038612(n+1), A038618(n+1)]`
-/

namespace A386322.P5685043808971806302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386322.P5685043808971806302

noncomputable section

/-- A386322: Primes without {0, 4} as digits.

Offset 1, canonical program `A386322.P5685043808971806302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6131 terms. -/
def A386322 (n : ℕ) : ℤ :=
  (A386322.P5685043808971806302.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6131 terms. -/
def A386322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386336.P17651694690908270259

`∩[A038604(n+1), A038612(n+1)]`
-/

namespace A386336.P17651694690908270259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386336.P17651694690908270259

noncomputable section

/-- A386336: Primes without {2, 4} as digits.

Offset 1, canonical program `A386336.P17651694690908270259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6038 terms. -/
def A386336 (n : ℕ) : ℤ :=
  (A386336.P17651694690908270259.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6038 terms. -/
def A386336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386340.P1648994612721377908

`∩[A038611(n+1), A038612(n+1)]`
-/

namespace A386340.P1648994612721377908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386340.P1648994612721377908

noncomputable section

/-- A386340: Primes without {3, 4} as digits.

Offset 1, canonical program `A386340.P1648994612721377908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4563 terms. -/
def A386340 (n : ℕ) : ℤ :=
  (A386340.P1648994612721377908.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4563 terms. -/
def A386340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386345.P11453822956591974223

`∩[A038612(n+1), A038613(n+1)]`
-/

namespace A386345.P11453822956591974223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386345.P11453822956591974223

noncomputable section

/-- A386345: Primes without {4, 5} as digits.

Offset 1, canonical program `A386345.P11453822956591974223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6132 terms. -/
def A386345 (n : ℕ) : ℤ :=
  (A386345.P11453822956591974223.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6132 terms. -/
def A386345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386346.P8892965724520616261

`∩[A038612(n+1), A038614(n+1)]`
-/

namespace A386346.P8892965724520616261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386346.P8892965724520616261

noncomputable section

/-- A386346: Primes without {4, 6} as digits.

Offset 1, canonical program `A386346.P8892965724520616261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6157 terms. -/
def A386346 (n : ℕ) : ℤ :=
  (A386346.P8892965724520616261.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6157 terms. -/
def A386346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386347.P3539177770067542842

`∩[A038612(n+1), A038615(n+1)]`
-/

namespace A386347.P3539177770067542842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386347.P3539177770067542842

noncomputable section

/-- A386347: Primes without {4, 7} as digits.

Offset 1, canonical program `A386347.P3539177770067542842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4974 terms. -/
def A386347 (n : ℕ) : ℤ :=
  (A386347.P3539177770067542842.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4974 terms. -/
def A386347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386348.P14876660133788585214

`∩[A038612(n+1), A038616(n+1)]`
-/

namespace A386348.P14876660133788585214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386348.P14876660133788585214

noncomputable section

/-- A386348: Primes without {4, 8} as digits.

Offset 1, canonical program `A386348.P14876660133788585214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6635 terms. -/
def A386348 (n : ℕ) : ℤ :=
  (A386348.P14876660133788585214.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6635 terms. -/
def A386348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391184.P7621874213617609093

`∑{d}[n+1, A391183(#)]`
-/

namespace A391184.P7621874213617609093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A391183 d

end

end A391184.P7621874213617609093

noncomputable section

/-- A391184: The number of divisors of n that are of the form x^2 + 2*y^2 (A002479).

Offset 1, canonical program `A391184.P7621874213617609093`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391183, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391184 (n : ℕ) : ℤ :=
  A391184.P7621874213617609093.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391183, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391184.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391185.P11876342438448710948

`∑{d}[n+1, A391183(#)*#]`
-/

namespace A391185.P11876342438448710948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A391183 d * (d : ℤ)

end

end A391185.P11876342438448710948

noncomputable section

/-- A391185: The sum of the divisors of n that are of the form x^2 + 2*y^2 (A002479).

Offset 1, canonical program `A391185.P11876342438448710948`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391183, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391185 (n : ℕ) : ℤ :=
  A391185.P11876342438448710948.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391183, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391185.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A393044.P14233745857420468305

`filter[A393043(1+n), A374045(#)]`
-/

namespace A393044.P14233745857420468305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393043 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A393044.P14233745857420468305

noncomputable section

/-- A393044: Numbers whose smallest prime factor is not 3, while the least prime not dividing their arithmetic derivative is 3.

Offset 1, canonical program `A393044.P14233745857420468305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8111 terms. -/
def A393044 (n : ℕ) : ℤ :=
  A393044.P14233745857420468305.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8111 terms. -/
def A393044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334195.P3591881704032605966

`Δ[A064415(A028310(n))]`
-/

namespace A334195.P3591881704032605966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334195.P3591881704032605966

noncomputable section

/-- A334195: a(1) = 0, then after the first differences of A064415.

Offset 1, canonical program `A334195.P3591881704032605966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334195 (n : ℕ) : ℤ :=
  A334195.P3591881704032605966.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334862.P3844558165305347707

`A334097(n+1)-A064415(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334862.P3844558165305347707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (n + 1) - A064415 (n + 1)

end

end A334862.P3844558165305347707

noncomputable section

/-- A334862: a(n) = A334097(n) - A064415(n).

Offset 1, canonical program `A334862.P3844558165305347707`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064415, A334097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334862 (n : ℕ) : ℤ :=
  A334862.P3844558165305347707.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064415, A334097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334862.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342530.P17095963351911615906

`∑{d}[n+1, A254578(#)]`
-/

namespace A342530.P17095963351911615906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254578 d

end

end A342530.P17095963351911615906

noncomputable section

/-- A342530: Number of strict chains of divisors ending with n and having distinct first quotients.

Offset 1, canonical program `A342530.P17095963351911615906`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A254578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342530 (n : ℕ) : ℤ :=
  A342530.P17095963351911615906.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A254578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342530.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345374.P2600913004741557822

`A257991(∏{p}[n+1, lcm(n+1, #²)/(n+1)])`
-/

namespace A345374.P2600913004741557822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ))).toNat

end

end A345374.P2600913004741557822

noncomputable section

/-- A345374: Number of unitary prime divisors of n whose prime index is odd.

Offset 1, canonical program `A345374.P2600913004741557822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345374 (n : ℕ) : ℤ :=
  A345374.P2600913004741557822.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348029.P15301953817482989203

`A003959(n+1)-A000203(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348029.P15301953817482989203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - A000203 (n + 1)

end

end A348029.P15301953817482989203

noncomputable section

/-- A348029: a(n) = A003959(n) - sigma(n), where A003959 is multiplicative with a(p^e) = (p+1)^e and sigma is the sum of divisors.

Offset 1, canonical program `A348029.P15301953817482989203`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348029 (n : ℕ) : ℤ :=
  A348029.P15301953817482989203.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348029.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348047.P7887878475414206480

`gcd(A000203(n+1), A003959(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348047.P7887878475414206480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A003959 (n + 1))

end

end A348047.P7887878475414206480

noncomputable section

/-- A348047: a(n) = gcd(sigma(n), A003959(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and sigma is the sum of divisors function.

Offset 1, canonical program `A348047.P7887878475414206480`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348047 (n : ℕ) : ℤ :=
  (A348047.P7887878475414206480.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348047.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348507.P8468116905144779811

`A003959(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348507.P8468116905144779811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - (n + 1 : ℤ)

end

end A348507.P8468116905144779811

noncomputable section

/-- A348507: a(n) = A003959(n) - n, where A003959 is multiplicative with a(p^e) = (p+1)^e.

Offset 1, canonical program `A348507.P8468116905144779811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348507 (n : ℕ) : ℤ :=
  A348507.P8468116905144779811.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348507.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348508.P7080885370460745572

`A003959(n+1)-2*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348508.P7080885370460745572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - (2 * (n + 1) : ℤ)

end

end A348508.P7080885370460745572

noncomputable section

/-- A348508: a(n) = A003959(n) - 2*n, where A003959 is multiplicative with a(p^e) = (p+1)^e.

Offset 1, canonical program `A348508.P7080885370460745572`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348508 (n : ℕ) : ℤ :=
  A348508.P7080885370460745572.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348508.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348512.P14338787327035426851

`A003959(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348512.P14338787327035426851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A000203 (n + 1)).toNat

end

end A348512.P14338787327035426851

noncomputable section

/-- A348512: a(n) = A003959(sigma(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and sigma is the sum of divisors function.

Offset 1, canonical program `A348512.P14338787327035426851`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348512 (n : ℕ) : ℤ :=
  A348512.P14338787327035426851.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348512.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348732.P348791247222302933

`A003959(n+1)-A034448(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348732.P348791247222302933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - A034448 (n + 1)

end

end A348732.P348791247222302933

noncomputable section

/-- A348732: a(n) = A003959(n) - A034448(n), where A003959 is multiplicative with a(p^e) = (p+1)^e and A034448 (usigma) is multiplicative with a(p^e) = (p^e)+1.

Offset 1, canonical program `A348732.P348791247222302933`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348732 (n : ℕ) : ℤ :=
  A348732.P348791247222302933.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348732.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348733.P387886665287851790

`gcd(A003959(n+1), A034448(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348733.P387886665287851790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003959 (n + 1)) (A034448 (n + 1))

end

end A348733.P387886665287851790

noncomputable section

/-- A348733: a(n) = gcd(A003959(n), A034448(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and A034448 (usigma) is multiplicative with a(p^e) = (p^e)+1.

Offset 1, canonical program `A348733.P387886665287851790`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348733 (n : ℕ) : ℤ :=
  (A348733.P387886665287851790.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348733.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348734.P10246028385959226632

`A003959(n+1)/gcd(A003959(n+1), A034448(n+1))`
-/

namespace A348734.P10246028385959226632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (Int.gcd (A003959 (n + 1)) (A034448 (n + 1)) : ℚ)

end

end A348734.P10246028385959226632

noncomputable section

/-- A348734: Numerator of Product((p+1)^e / ((p^e)+1)), when n = Product(p^e), with p primes, and e their exponents.

Offset 1, canonical program `A348734.P10246028385959226632`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348734 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348734.P10246028385959226632.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348734.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348929.P10911149095243660924

`gcd(n+1, A003959(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348929.P10911149095243660924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A003959 (n + 1))

end

end A348929.P10911149095243660924

noncomputable section

/-- A348929: a(n) = gcd(n, A003959(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e.

Offset 1, canonical program `A348929.P10911149095243660924`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348929 (n : ℕ) : ℤ :=
  (A348929.P10911149095243660924.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348929.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348944.P9603351630688322908

`1/2*(A003959(n+1)+A034448(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348944.P9603351630688322908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A003959 (n + 1) + A034448 (n + 1) : ℚ)

end

end A348944.P9603351630688322908

noncomputable section

/-- A348944: a(n) = (1/2) * (A003959(n)+A034448(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and A034448 (usigma) is multiplicative with a(p^e) = (p^e)+1.

Offset 1, canonical program `A348944.P9603351630688322908`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348944 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348944.P9603351630688322908.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348944.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348970.P15142957412835109765

`A003959(n+1)-A129283(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348970.P15142957412835109765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - A129283 (n + 1)

end

end A348970.P15142957412835109765

noncomputable section

/-- A348970: a(n) = A003959(n) - A129283(n), where A003959 is multiplicative with a(p^e) = (p+1)^e and A129283(n) is sum of n and its arithmetic derivative.

Offset 1, canonical program `A348970.P15142957412835109765`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348970 (n : ℕ) : ℤ :=
  A348970.P15142957412835109765.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348970.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348972.P942558158600498541

`gcd(A003959(n+1), A129283(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348972.P942558158600498541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003959 (n + 1)) (A129283 (n + 1))

end

end A348972.P942558158600498541

noncomputable section

/-- A348972: a(n) = gcd(A003959(n), A129283(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and A129283(n) is sum of n and its arithmetic derivative.

Offset 1, canonical program `A348972.P942558158600498541`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348972 (n : ℕ) : ℤ :=
  (A348972.P942558158600498541.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348972.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349170.P1350276801949496955

`∑{d}[n+1, #*A003959((n+1)/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349170.P1350276801949496955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A003959 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349170.P1350276801949496955

noncomputable section

/-- A349170: a(n) = Sum_{d|n} d * A003959(n/d), where A003959 is fully multiplicative with a(p) = (p+1).

Offset 1, canonical program `A349170.P1350276801949496955`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349170 (n : ℕ) : ℤ :=
  A349170.P1350276801949496955.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349171.P9405223100301962043

`∑{d}[n+1, A000010(#)*A003959((n+1)/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349171.P9405223100301962043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A003959 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349171.P9405223100301962043

noncomputable section

/-- A349171: a(n) = Sum_{d|n} phi(d) * A003959(n/d), where A003959 is fully multiplicative with a(p) = (p+1), and phi is Euler totient function.

Offset 1, canonical program `A349171.P9405223100301962043`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349171 (n : ℕ) : ℤ :=
  A349171.P9405223100301962043.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349171.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349173.P6335324146396216170

`∑{d}[n+1, A003415(#)*A003959((n+1)/#)]`
-/

namespace A349173.P6335324146396216170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003415 d * A003959 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349173.P6335324146396216170

noncomputable section

/-- A349173: Dirichlet convolution of A003415 with A003959, where A003415 is the arithmetic derivative and A003959 is fully multiplicative with a(p) = (p+1).

Offset 1, canonical program `A349173.P6335324146396216170`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349173 (n : ℕ) : ℤ :=
  A349173.P6335324146396216170.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349173.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349356.P8198575397324621473

`∑{d}[n+1, A003959((n+1)/#)*A097945(#)]`
-/

namespace A349356.P8198575397324621473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003959 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A097945 d

end

end A349356.P8198575397324621473

noncomputable section

/-- A349356: Dirichlet convolution of A003959 with A097945 (Dirichlet inverse of A003958), where A003958 and A003959 are fully multiplicative with a(p) = p-1 and p+1 respectively.

Offset 1, canonical program `A349356.P8198575397324621473`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349356 (n : ℕ) : ℤ :=
  A349356.P8198575397324621473.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349356.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349619.P2603731301363986411

`∑{d}[n+1, A003415((n+1)/#)*A349340(#)]`
-/

namespace A349619.P2603731301363986411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A349340 d

end

end A349619.P2603731301363986411

noncomputable section

/-- A349619: Dirichlet convolution of A003415 with the Dirichlet inverse of A003557.

Offset 1, canonical program `A349619.P2603731301363986411`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349340, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349619 (n : ℕ) : ℤ :=
  A349619.P2603731301363986411.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349340, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349619.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351435.P6108883380872985515

`A003959(n+1)*A048250(n+1)`
-/

namespace A351435.P6108883380872985515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A048250 (n + 1)

end

end A351435.P6108883380872985515

noncomputable section

/-- A351435: If n = Product (p_j^k_j) then a(n) = Product ((p_j + 1)^(k_j + 1)).

Offset 1, canonical program `A351435.P6108883380872985515`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351435 (n : ℕ) : ℤ :=
  A351435.P6108883380872985515.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351435.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351569.P8738686612960089184

`A000203(n+1)/A351568(n+1)`
-/

namespace A351569.P8738686612960089184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A351568 (n + 1) : ℚ)

end

end A351569.P8738686612960089184

noncomputable section

/-- A351569: Sum of divisors of the largest unitary divisor of n that is an exponentially odd number.

Offset 1, canonical program `A351569.P8738686612960089184`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351568, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351569 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A351569.P8738686612960089184.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351568, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351569.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351570.P16087539898957203616

`A003415(A351568(n+1))`
-/

namespace A351570.P16087539898957203616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A351568 (n + 1)).toNat

end

end A351570.P16087539898957203616

noncomputable section

/-- A351570: Arithmetic derivative of the sum of the divisors of the largest unitary divisor of n that is a square.

Offset 1, canonical program `A351570.P16087539898957203616`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351568, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351570 (n : ℕ) : ℤ :=
  A351570.P16087539898957203616.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351568, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351570.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351573.P12299179014479245270

`A003415(A350389(n+1))`
-/

namespace A351573.P12299179014479245270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A350389 (n + 1)).toNat

end

end A351573.P12299179014479245270

noncomputable section

/-- A351573: Arithmetic derivative of the largest unitary divisor of n that is an exponentially odd number.

Offset 1, canonical program `A351573.P12299179014479245270`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351573 (n : ℕ) : ℤ :=
  A351573.P12299179014479245270.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351573.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351752.P9465324655857387084

`floor(A079667(n+1)/A038548(n+1))`
-/

namespace A351752.P9465324655857387084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A079667 (n + 1) : ℚ) / (A038548 (n + 1) : ℚ)⌋

end

end A351752.P9465324655857387084

noncomputable section

/-- A351752: Floor of the average of the numbers |x-y| over all pairs (x,y) with x*y = n, x <= y.

Offset 1, canonical program `A351752.P9465324655857387084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351752 (n : ℕ) : ℤ :=
  A351752.P9465324655857387084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352825.P16191883043105001800

`A001222(n+1)-A352824(n+1)`
-/

namespace A352825.P16191883043105001800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A352824 (n + 1)

end

end A352825.P16191883043105001800

noncomputable section

/-- A352825: Number of nonfixed points y(i) != i, where y is the integer partition with Heinz number n.

Offset 1, canonical program `A352825.P16191883043105001800`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A352824, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352825 (n : ℕ) : ℤ :=
  A352825.P16191883043105001800.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A352824, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352825.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353684.P14218680097169036739

`lt[0, A353682(1+n)]+1`
-/

namespace A353684.P14218680097169036739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353682 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A353684.P14218680097169036739

noncomputable section

/-- A353684: Numbers k for which phi(sigma(k)) >= phi(k).

Offset 1, canonical program `A353684.P14218680097169036739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353684 (n : ℕ) : ℤ :=
  (A353684.P14218680097169036739.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354033.P2787181633188764854

`A174275(n+1)-A354031(n+1)`
-/

namespace A354033.P2787181633188764854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174275 (n + 1) - A354031 (n + 1)

end

end A354033.P2787181633188764854

noncomputable section

/-- A354033: a(n) = 1 if n > 1 and n is a power of a prime of the form 4m+3, otherwise 0.

Offset 1, canonical program `A354033.P2787181633188764854`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174275, A354031, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354033 (n : ℕ) : ℤ :=
  A354033.P2787181633188764854.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174275, A354031, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354033.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A358346.P10429080455784404753

`A034448(A350389(n+1))`
-/

namespace A358346.P10429080455784404753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A350389 (n + 1)).toNat

end

end A358346.P10429080455784404753

noncomputable section

/-- A358346: a(n) is the sum of the unitary divisors of n that are exponentially odd (A268335).

Offset 1, canonical program `A358346.P10429080455784404753`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358346 (n : ℕ) : ℤ :=
  A358346.P10429080455784404753.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358346.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360164.P17022683880906757530

`A360162(A000265(1+n))`
-/

namespace A360164.P17022683880906757530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360162 (A000265 (1 + n)).toNat

end

end A360164.P17022683880906757530

noncomputable section

/-- A360164: a(n) is the sum of the square roots of the unitary divisors of n that are odd squares.

Offset 1, canonical program `A360164.P17022683880906757530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360164 (n : ℕ) : ℤ :=
  A360164.P17022683880906757530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363341.P7758654398244361466

`∑[Δ[A014200(2*n)]-1]`
-/

namespace A363341.P7758654398244361466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363341.P7758654398244361466

noncomputable section

/-- A363341: Number of positive integers k <= n such that round(n/k) is odd.

Offset 1, canonical program `A363341.P7758654398244361466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363341 (n : ℕ) : ℤ :=
  A363341.P7758654398244361466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363825.P13499719790891419236

`(1-A323239(A140978(n+1)²))*A073184(A350389(n+1))`
-/

namespace A363825.P13499719790891419236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A323239 (A140978 (n + 1) ^ 2).toNat) * A073184 (A350389 (n + 1)).toNat

end

end A363825.P13499719790891419236

noncomputable section

/-- A363825: The number of infinitary divisors of n that are exponentially odd numbers (A268335).

Offset 1, canonical program `A363825.P13499719790891419236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A363825 (n : ℕ) : ℤ :=
  A363825.P13499719790891419236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A363825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365402.P6850757992274722782

`A000005(A350389(n+1))`
-/

namespace A365402.P6850757992274722782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A350389 (n + 1)).toNat

end

end A365402.P6850757992274722782

noncomputable section

/-- A365402: The number of divisors of the largest unitary divisor of n that is an exponentially odd number.

Offset 1, canonical program `A365402.P6850757992274722782`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365402 (n : ℕ) : ℤ :=
  A365402.P6850757992274722782.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365402.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368167.P14958017841539973394

`A350389(A057521(n+1))`
-/

namespace A368167.P14958017841539973394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (A057521 (n + 1)).toNat

end

end A368167.P14958017841539973394

noncomputable section

/-- A368167: The largest unitary divisor of n that is a cubefull exponentially odd number (A335988).

Offset 1, canonical program `A368167.P14958017841539973394`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368167 (n : ℕ) : ℤ :=
  A368167.P14958017841539973394.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368167.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368471.P8379948987742590772

`A033634(A350389(n+1))`
-/

namespace A368471.P8379948987742590772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (A350389 (n + 1)).toNat

end

end A368471.P8379948987742590772

noncomputable section

/-- A368471: a(n) is the sum of exponentially odd divisors of the largest unitary divisor of n that is an exponentially odd number (A268335).

Offset 1, canonical program `A368471.P8379948987742590772`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368471 (n : ℕ) : ℤ :=
  A368471.P8379948987742590772.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368471.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370079.P12845110108102492018

`A005361(A350389(n+1))`
-/

namespace A370079.P12845110108102492018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A350389 (n + 1)).toNat

end

end A370079.P12845110108102492018

noncomputable section

/-- A370079: The product of the odd exponents of the prime factorization of n.

Offset 1, canonical program `A370079.P12845110108102492018`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370079 (n : ℕ) : ℤ :=
  A370079.P12845110108102492018.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370079.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374538.P5898032326319891676

`A034676(A350389(n+1))`
-/

namespace A374538.P5898032326319891676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034676 (A350389 (n + 1)).toNat

end

end A374538.P5898032326319891676

noncomputable section

/-- A374538: a(n) is the sum of the squares of the unitary divisors of n that are exponentially odd numbers (A268335).

Offset 1, canonical program `A374538.P5898032326319891676`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034676, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374538 (n : ℕ) : ℤ :=
  A374538.P5898032326319891676.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034676, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374538.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375032.P9183128720752084141

`A051903(A350389(n+1))`
-/

namespace A375032.P9183128720752084141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A350389 (n + 1)).toNat

end

end A375032.P9183128720752084141

noncomputable section

/-- A375032: The maximum odd exponent in the prime factorization of n, or 0 if no such exponent exists.

Offset 1, canonical program `A375032.P9183128720752084141`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375032 (n : ℕ) : ℤ :=
  A375032.P9183128720752084141.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375032.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377990.P1914433196353605573

`A000203(A000203(A350388(n+1)))*A000203(A000203(A350389(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377990.P1914433196353605573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (A350388 (n + 1)).toNat).toNat * A000203 (A000203 (A350389 (n + 1)).toNat).toNat

end

end A377990.P1914433196353605573

noncomputable section

/-- A377990: a(n) = sigma(sigma(A350388(n))) * sigma(sigma(A350389(n))), where A350388 and A350389 are the largest unitary divisor of n that is a square, and the largest unitary divisor of n that is an exponentially odd number, respectively.

Offset 1, canonical program `A377990.P1914433196353605573`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A377990 (n : ℕ) : ℤ :=
  A377990.P1914433196353605573.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A377990.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380165.P2435245022523968233

`A000010(A350389(n+1))`
-/

namespace A380165.P2435245022523968233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A350389 (n + 1)).toNat

end

end A380165.P2435245022523968233

noncomputable section

/-- A380165: a(n) is the value of the Euler totient function when applied to the largest unitary divisor of n that is an exponentially odd number.

Offset 1, canonical program `A380165.P2435245022523968233`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380165 (n : ℕ) : ℤ :=
  A380165.P2435245022523968233.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380165.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384052.P2784021690662808847

`A047994(A350389(n+1))*A350388(n+1)`
-/

namespace A384052.P2784021690662808847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A350389 (n + 1)).toNat * A350388 (n + 1)

end

end A384052.P2784021690662808847

noncomputable section

/-- A384052: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a square.

Offset 1, canonical program `A384052.P2784021690662808847`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384052 (n : ℕ) : ℤ :=
  A384052.P2784021690662808847.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384054.P17702262864445494828

`A047994(A350388(n+1))*A350389(n+1)`
-/

namespace A384054.P17702262864445494828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A350388 (n + 1)).toNat * A350389 (n + 1)

end

end A384054.P17702262864445494828

noncomputable section

/-- A384054: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is an exponentially odd number.

Offset 1, canonical program `A384054.P17702262864445494828`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384054 (n : ℕ) : ℤ :=
  A384054.P17702262864445494828.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384054.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385046.P393041273059483800

`A034448(n+1)/A385045(n+1)`
-/

namespace A385046.P393041273059483800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A385045 (n + 1) : ℚ)

end

end A385046.P393041273059483800

noncomputable section

/-- A385046: The sum of the unitary divisors of n that are 3-smooth numbers (A003586).

Offset 1, canonical program `A385046.P393041273059483800`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A385045, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385046 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385046.P393041273059483800.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A385045, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385046.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385048.P15337767966192426689

`A034448(n+1)/A371242(n+1)`
-/

namespace A385048.P15337767966192426689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A371242 (n + 1) : ℚ)

end

end A385048.P15337767966192426689

noncomputable section

/-- A385048: The sum of the unitary divisors of n that are cubefull numbers (A036966).

Offset 1, canonical program `A385048.P15337767966192426689`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A371242, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385048 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385048.P15337767966192426689.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A371242, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385048.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A385542.P11057182743894820874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385542 (n : ℕ) : ℤ :=
  A385542.P11057182743894820874.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385542.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A387710.P1843881796241010643

`lt[A003959(n+1), 2*(n+1)]+1`
-/

namespace A387710.P1843881796241010643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A387710.P1843881796241010643

noncomputable section

/-- A387710: Numbers k for which A003959(k) < 2*k, where A003959 is multiplicative with a(p^e) = (p+1)^e.

Offset 1, canonical program `A387710.P1843881796241010643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387710 (n : ℕ) : ℤ :=
  (A387710.P1843881796241010643.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387711.P8670169942287001865

`lt[2*(n+1), A003959(n+1)]+1`
-/

namespace A387711.P8670169942287001865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A387711.P8670169942287001865

noncomputable section

/-- A387711: Numbers k for which A003959(k) > 2*k, where A003959 is multiplicative with a(p^e) = (p+1)^e.

Offset 1, canonical program `A387711.P8670169942287001865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387711 (n : ℕ) : ℤ :=
  (A387711.P8670169942287001865.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392059.P13390897625134815313

`∏[A392055(1+n)]`
-/

namespace A392059.P13390897625134815313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392055 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A392059.P13390897625134815313

noncomputable section

/-- A392059: a(n) is the product of all p^k such that p is a ramified or inert prime in the Gaussian integers and k is the largest such k satisfying p^k <= n.

Offset 1, canonical program `A392059.P13390897625134815313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 442 terms. -/
def A392059 (n : ℕ) : ℤ :=
  A392059.P13390897625134815313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 442 terms. -/
def A392059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396909.P4990173123731152845

`lt[A010815(n)², A093518(n)]`
-/

namespace A396909.P4990173123731152845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093518 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396909.P4990173123731152845

noncomputable section

/-- A396909: Numbers that are the sum of two nonzero generalized pentagonal numbers (A001318).

Offset 1, canonical program `A396909.P4990173123731152845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5984 terms. -/
def A396909 (n : ℕ) : ℤ :=
  (A396909.P4990173123731152845.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5984 terms. -/
def A396909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398170.P13804662410558317611

`record[A350389(n+1)/A162510(n+2)]`
-/

namespace A398170.P13804662410558317611
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350389 (n + 1) : ℚ) / (A162510 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A398170.P13804662410558317611

noncomputable section

/-- A398170: Exponentially odd numbers k such that k+1 is squarefree.

Offset 1, canonical program `A398170.P13804662410558317611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3952 terms. -/
def A398170 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398170.P13804662410558317611.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3952 terms. -/
def A398170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399732.P10852493408418534580

`A360540(n+1)*A371242(n+1)`
-/

namespace A399732.P10852493408418534580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360540 (n + 1) * A371242 (n + 1)

end

end A399732.P10852493408418534580

noncomputable section

/-- A399732: The sum of the unitary divisors d of n such that n/d is cubefree.

Offset 1, canonical program `A399732.P10852493408418534580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399732 (n : ℕ) : ℤ :=
  A399732.P10852493408418534580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399835.P11381840255084056267

`A366146(1+n)*A371242(n+1)`
-/

namespace A399835.P11381840255084056267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366146 (1 + n) * A371242 (n + 1)

end

end A399835.P11381840255084056267

noncomputable section

/-- A399835: The sum of divisors d of n such that gcud(d, n/d) is a powerful number (A001694), where gcud is the greatest common unitary divisor.

Offset 1, canonical program `A399835.P11381840255084056267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399835 (n : ℕ) : ℤ :=
  A399835.P11381840255084056267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328160.P15930249408114745958

`p?[2*A276305(n+1)-1]`
-/

namespace A328160.P15930249408114745958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276305 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A328160.P15930249408114745958

noncomputable section

/-- A328160: Terms k of A112998 such that k+2 is nonsquarefree.

Offset 1, canonical program `A328160.P15930249408114745958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A328160 (n : ℕ) : ℤ :=
  A328160.P15930249408114745958.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A328160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331748.P790098222198747257

`xor(A002487(A163511(n)), A002487(n))`
-/

namespace A331748.P790098222198747257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002487 (A163511 n).toNat) (A002487 n)

end

end A331748.P790098222198747257

noncomputable section

/-- A331748: a(n) = A002487(n) XOR A002487(A163511(n)).

Offset 0, canonical program `A331748.P790098222198747257`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331748 (n : ℕ) : ℤ :=
  A331748.P790098222198747257.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331748.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331749.P3262571390583388432

`A002487(A163511(n))-A002487(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331749.P3262571390583388432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A163511 n).toNat - A002487 n

end

end A331749.P3262571390583388432

noncomputable section

/-- A331749: a(n) = A002487(A163511(n)) - A002487(n).

Offset 0, canonical program `A331749.P3262571390583388432`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331749 (n : ℕ) : ℤ :=
  A331749.P3262571390583388432.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331749.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331895.P11168448018872663609

`∩[A331893(n+1), A331894(n+1)]`
-/

namespace A331895.P11168448018872663609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331895.P11168448018872663609

noncomputable section

/-- A331895: Positive numbers k such that the binary and negabinary representations of k and the negabinary representation of -k are all palindromic.

Offset 1, canonical program `A331895.P11168448018872663609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 912 terms. -/
def A331895 (n : ℕ) : ℤ :=
  (A331895.P11168448018872663609.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 912 terms. -/
def A331895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332769.P9976973925860660972

`A258996(A054429(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332769.P9976973925860660972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258996 (A054429 (n + 1)).toNat

end

end A332769.P9976973925860660972

noncomputable section

/-- A332769: Permutation of the positive integers: a(n) = A258996(A054429(n)) = A054429(A258996(n)).

Offset 1, canonical program `A332769.P9976973925860660972`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A332769 (n : ℕ) : ℤ :=
  A332769.P9976973925860660972.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A332769.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334065.P9165791642115589726

`Δ[A279726(abs(1-n)+1)]*(n+1)`
-/

namespace A334065.P9165791642115589726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279726 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (n + 1 : ℤ)

end

end A334065.P9165791642115589726

noncomputable section

/-- A334065: Total area of all triangles such that p + q = 2*n, p < q (p, q prime), with base (q + p) and height (q - p).

Offset 1, canonical program `A334065.P9165791642115589726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334065 (n : ℕ) : ℤ :=
  A334065.P9165791642115589726.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335420.P3300100389546647521

`A000120(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A335420.P3300100389546647521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A163511 n).toNat

end

end A335420.P3300100389546647521

noncomputable section

/-- A335420: a(n) = A000120(A163511(n)).

Offset 0, canonical program `A335420.P3300100389546647521`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335420 (n : ℕ) : ℤ :=
  A335420.P3300100389546647521.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335420.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340085.P7543650115475079382

`A336466(n+1)/A340084(n+1)`
-/

namespace A340085.P7543650115475079382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336466 (n + 1) : ℚ) / (A340084 (n + 1) : ℚ)

end

end A340085.P7543650115475079382

noncomputable section

/-- A340085: a(n) = A336466(n) / gcd(n-1, A336466(n)); Odd part of A340082(n).

Offset 1, canonical program `A340085.P7543650115475079382`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336466, A340084, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340085 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340085.P7543650115475079382.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336466, A340084, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340085.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340086.P7171776503870000729

`gcd(A129527(n), A340083(n+1))`
-/

namespace A340086.P7171776503870000729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129527 n) (A340083 (n + 1))

end

end A340086.P7171776503870000729

noncomputable section

/-- A340086: a(1) = 0, for n > 1, a(n) = A000265(n-1) / gcd(n-1, A336466(n)).

Offset 1, canonical program `A340086.P7171776503870000729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340086 (n : ℕ) : ℤ :=
  (A340086.P7171776503870000729.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349129.P13556310181811753018

`∑{d}[n+1, A003958(#)*A003959((n+1)/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349129.P13556310181811753018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003958 d * A003959 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349129.P13556310181811753018

noncomputable section

/-- A349129: a(n) = Sum_{d|n} A003958(d) * A003959(n/d), where A003958 is fully multiplicative with a(p) = (p-1), and A003959 is fully multiplicative with a(p) = (p+1).

Offset 1, canonical program `A349129.P13556310181811753018`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349129 (n : ℕ) : ℤ :=
  A349129.P13556310181811753018.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349129.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349132.P869711925521774844

`A327251(n+1)-A348982(n+1)`
-/

namespace A349132.P869711925521774844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327251 (n + 1) - A348982 (n + 1)

end

end A349132.P869711925521774844

noncomputable section

/-- A349132: a(n) = Sum_{d|n} psi(d) * A003958(n/d), where A003958 is fully multiplicative with a(p) = (p-1), and psi is Dedekind psi function, A001615.

Offset 1, canonical program `A349132.P869711925521774844`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327251, A348982, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349132 (n : ℕ) : ℤ :=
  A349132.P869711925521774844.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327251, A348982, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349132.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349138.P8801393356759692262

`∑{d}[n+1, A349137(#)]`
-/

namespace A349138.P8801393356759692262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349137 d

end

end A349138.P8801393356759692262

noncomputable section

/-- A349138: Inverse Möbius transform of A349137, where A349137(n) = phi(A003602(n)).

Offset 1, canonical program `A349138.P8801393356759692262`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349138 (n : ℕ) : ℤ :=
  A349138.P8801393356759692262.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349138.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350387.P325241865782792840

`A001222(n+1)-A350386(n+1)`
-/

namespace A350387.P325241865782792840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A350386 (n + 1)

end

end A350387.P325241865782792840

noncomputable section

/-- A350387: a(n) is the sum of the odd exponents in the prime factorization of n.

Offset 1, canonical program `A350387.P325241865782792840`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350386, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350387 (n : ℕ) : ℤ :=
  A350387.P325241865782792840.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350386, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350387.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352033.P10755563011180066533

`A051002(n+1)-(n+1)^5*A000035(n+1)`
-/

namespace A352033.P10755563011180066533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051002 (n + 1) - ((n + 1) ^ 5 : ℤ) * A000035 (n + 1)

end

end A352033.P10755563011180066533

noncomputable section

/-- A352033: Sum of the 5th powers of the odd proper divisors of n.

Offset 1, canonical program `A352033.P10755563011180066533`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352033 (n : ℕ) : ℤ :=
  A352033.P10755563011180066533.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352033.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352051.P15218436939402893896

`A051002(n+1)*A006519(n+1)^5-A000035(n+1)`
-/

namespace A352051.P15218436939402893896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051002 (n + 1) * A006519 (n + 1) ^ 5 - A000035 (n + 1)

end

end A352051.P15218436939402893896

noncomputable section

/-- A352051: Sum of the 5th powers of the divisor complements of the odd proper divisors of n.

Offset 1, canonical program `A352051.P15218436939402893896`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352051 (n : ℕ) : ℤ :=
  A352051.P15218436939402893896.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352051.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A353679.P2765792584734807979

`record[A000265(A006872(n+1))]`
-/

namespace A353679.P2765792584734807979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A006872 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353679.P2765792584734807979

noncomputable section

/-- A353679: Odd numbers k for which phi(k) = phi(sigma(k)).

Offset 1, canonical program `A353679.P2765792584734807979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 657 terms. -/
def A353679 (n : ℕ) : ℤ :=
  A353679.P2765792584734807979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 657 terms. -/
def A353679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359164.P14566603840914614086

`A003602(n+1)-A349136(n+1)`
-/

namespace A359164.P14566603840914614086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) - A349136 (n + 1)

end

end A359164.P14566603840914614086

noncomputable section

/-- A359164: Difference between Kimberling's paraphrase, A003602, and its Möbius transform.

Offset 1, canonical program `A359164.P14566603840914614086`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, A349136, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359164 (n : ℕ) : ℤ :=
  A359164.P14566603840914614086.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, A349136, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359164.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364255.P6900546977642634575

`gcd(n, A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364255.P6900546977642634575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A163511 n)

end

end A364255.P6900546977642634575

noncomputable section

/-- A364255: a(n) = gcd(n, A163511(n)).

Offset 0, canonical program `A364255.P6900546977642634575`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364255 (n : ℕ) : ℤ :=
  (A364255.P6900546977642634575.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364255.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364258.P6786196179042320049

`A163511(n)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364258.P6786196179042320049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 n - (n : ℤ)

end

end A364258.P6786196179042320049

noncomputable section

/-- A364258: a(n) = A163511(n) - n.

Offset 0, canonical program `A364258.P6786196179042320049`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364258 (n : ℕ) : ℤ :=
  A364258.P6786196179042320049.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364258.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365296.P1047666679631546324

`A007947(n+1)*A401425(A003557(n+1))`
-/

namespace A365296.P1047666679631546324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A401425 (A003557 (n + 1)).toNat

end

end A365296.P1047666679631546324

noncomputable section

/-- A365296: The smallest coreful infinitary divisor of n.

Offset 1, canonical program `A365296.P1047666679631546324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365296 (n : ℕ) : ℤ :=
  A365296.P1047666679631546324.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365385.P9341511432702516708

`A331410(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365385.P9341511432702516708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A163511 n).toNat

end

end A365385.P9341511432702516708

noncomputable section

/-- A365385: a(n) = A331410(A163511(n)).

Offset 0, canonical program `A365385.P9341511432702516708`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365385 (n : ℕ) : ℤ :=
  A365385.P9341511432702516708.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365385.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365387.P12565499775502910515

`A331410(n+1)*A331410(A163511(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365387.P12565499775502910515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) * A331410 (A163511 (n + 1)).toNat

end

end A365387.P12565499775502910515

noncomputable section

/-- A365387: a(n) = A331410(n) * A331410(A163511(n)).

Offset 1, canonical program `A365387.P12565499775502910515`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365387 (n : ℕ) : ℤ :=
  A365387.P12565499775502910515.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365387.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365426.P3761931698884595568

`A336466(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365426.P3761931698884595568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (A163511 n).toNat

end

end A365426.P3761931698884595568

noncomputable section

/-- A365426: a(n) = A336466(A163511(n)).

Offset 0, canonical program `A365426.P3761931698884595568`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A336466, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365426 (n : ℕ) : ℤ :=
  A365426.P3761931698884595568.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A336466, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365426.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365427.P1911992435203789611

`A336467(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365427.P1911992435203789611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336467 (A163511 n).toNat

end

end A365427.P1911992435203789611

noncomputable section

/-- A365427: a(n) = A336467(A163511(n)).

Offset 0, canonical program `A365427.P1911992435203789611`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365427 (n : ℕ) : ℤ :=
  A365427.P1911992435203789611.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365427.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365489.P10175361733768043480

`A000005(A053149(n+1))`
-/

namespace A365489.P10175361733768043480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A053149 (n + 1)).toNat

end

end A365489.P10175361733768043480

noncomputable section

/-- A365489: The number of divisors of the smallest cube divisible by n.

Offset 1, canonical program `A365489.P10175361733768043480`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365489 (n : ℕ) : ℤ :=
  A365489.P10175361733768043480.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365489.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365499.P12823429545755088149

`A365498((n+1)/A055229(n+1))`
-/

namespace A365499.P12823429545755088149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365498 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A055229 (n + 1) : ℚ))).toNat

end

end A365499.P12823429545755088149

noncomputable section

/-- A365499: Dirichlet g.f.: zeta(s) * Product_{p prime} (1 + 1/p^s - 1/p^(4*s)).

Offset 1, canonical program `A365499.P12823429545755088149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365499 (n : ℕ) : ℤ :=
  A365499.P12823429545755088149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365805.P12560475463864652643

`A052409(A163511(n))`
-/

namespace A365805.P12560475463864652643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A163511 n).toNat

end

end A365805.P12560475463864652643

noncomputable section

/-- A365805: a(n) = largest exponent m for which a representation of the form A163511(n) = k^m exists (for some k). a(0) = 0 by convention.

Offset 0, canonical program `A365805.P12560475463864652643`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052409, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365805 (n : ℕ) : ℤ :=
  A365805.P12560475463864652643.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052409, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365805.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365807.P7768995048888628650

`A010052(A163511(n))`
-/

namespace A365807.P7768995048888628650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A163511 n).toNat

end

end A365807.P7768995048888628650

noncomputable section

/-- A365807: a(n) = 1 if A163511(n) is a square, 0 otherwise.

Offset 0, canonical program `A365807.P7768995048888628650`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365807 (n : ℕ) : ℤ :=
  A365807.P7768995048888628650.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365807.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366275.P12360444593326866610

`A163511(A057889(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366275.P12360444593326866610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A057889 n).toNat

end

end A366275.P12360444593326866610

noncomputable section

/-- A366275: The Cat's tongue permutation: a(n) = A163511(A057889(n)).

Offset 0, canonical program `A366275.P12360444593326866610`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366275 (n : ℕ) : ℤ :=
  A366275.P12360444593326866610.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366275.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366797.P9156922134602193647

`A001227(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366797.P9156922134602193647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A163511 n).toNat

end

end A366797.P9156922134602193647

noncomputable section

/-- A366797: Number of odd divisors permuted by A163511: a(n) = A001227(A163511(n)).

Offset 0, canonical program `A366797.P9156922134602193647`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366797 (n : ℕ) : ℤ :=
  A366797.P9156922134602193647.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366797.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366873.P10214570237099345026

`A113415(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366873.P10214570237099345026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113415 (A163511 n).toNat

end

end A366873.P10214570237099345026

noncomputable section

/-- A366873: a(n) = A113415(A163511(n)), where A113415(n) is the average of number of and sum of odd divisors of n.

Offset 0, canonical program `A366873.P10214570237099345026`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113415, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366873 (n : ℕ) : ℤ :=
  A366873.P10214570237099345026.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113415, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366873.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366879.P12887930198289739423

`A326938(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366879.P12887930198289739423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326938 (A163511 n).toNat

end

end A366879.P12887930198289739423

noncomputable section

/-- A366879: a(n) = A326938(A163511(n)), where A326938 is the Dirichlet inverse of the sum of divisors d of n such that n/d is odd.

Offset 0, canonical program `A366879.P12887930198289739423`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A326938, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366879 (n : ℕ) : ℤ :=
  A366879.P12887930198289739423.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A326938, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366879.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366885.P6460870065527769006

`A347385(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366885.P6460870065527769006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347385 (A163511 n).toNat

end

end A366885.P6460870065527769006

noncomputable section

/-- A366885: Dedekind psi function applied to the odd part of n, permuted by A163511: a(n) = A347385(A163511(n)).

Offset 0, canonical program `A366885.P6460870065527769006`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366885 (n : ℕ) : ℤ :=
  A366885.P6460870065527769006.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366885.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366887.P16462098823577047798

`A206787(A163511(n))`
-/

namespace A366887.P16462098823577047798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206787 (A163511 n).toNat

end

end A366887.P16462098823577047798

noncomputable section

/-- A366887: Sum of the odd squarefree divisors permuted by A163511.

Offset 0, canonical program `A366887.P16462098823577047798`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366887 (n : ℕ) : ℤ :=
  A366887.P16462098823577047798.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366887.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366892.P16519678978380655638

`A336652(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366892.P16519678978380655638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336652 (A163511 n).toNat

end

end A366892.P16519678978380655638

noncomputable section

/-- A366892: a(n) = A336652(A163511(n)).

Offset 0, canonical program `A366892.P16519678978380655638`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366892 (n : ℕ) : ℤ :=
  A366892.P16519678978380655638.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366894.P17590388083815126484

`A336699(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366894.P17590388083815126484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336699 (A163511 n).toNat

end

end A366894.P17590388083815126484

noncomputable section

/-- A366894: a(n) = A336699(A163511(n)).

Offset 0, canonical program `A366894.P17590388083815126484`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366894 (n : ℕ) : ℤ :=
  A366894.P17590388083815126484.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366894.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369030.P16010318685675967167

`A014963(A163511(n))`
-/

namespace A369030.P16010318685675967167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A163511 n).toNat

end

end A369030.P16010318685675967167

noncomputable section

/-- A369030: Exponential of Mangoldt function permuted by A163511 ("Doudna-permutation mirrored").

Offset 0, canonical program `A369030.P16010318685675967167`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369030 (n : ℕ) : ℤ :=
  A369030.P16010318685675967167.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369030.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369310.P4588423880105354459

`A190867(n+1)*A365498(n+1)`
-/

namespace A369310.P4588423880105354459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190867 (n + 1) * A365498 (n + 1)

end

end A369310.P4588423880105354459

noncomputable section

/-- A369310: The number of divisors d of n such that gcd(d, n/d) is a powerful number.

Offset 1, canonical program `A369310.P4588423880105354459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369310 (n : ℕ) : ℤ :=
  A369310.P4588423880105354459.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369458.P12459843309324393945

`A369465(A163511(n))`
-/

namespace A369458.P12459843309324393945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369465 (A163511 n).toNat

end

end A369458.P12459843309324393945

noncomputable section

/-- A369458: Arithmetic derivative of the odd part of n, permuted by A163511 ("Doudna-sequence mirrored").

Offset 0, canonical program `A369458.P12459843309324393945`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369458 (n : ℕ) : ℤ :=
  A369458.P12459843309324393945.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369458.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375767.P11029837342179991351

`A130233(A375766(n+1))`
-/

namespace A375767.P11029837342179991351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (A375766 (n + 1)).toNat

end

end A375767.P11029837342179991351

noncomputable section

/-- A375767: The indices of the terms of A375766 in the Fibonacci sequence.

Offset 1, canonical program `A375767.P11029837342179991351`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, A375766, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375767 (n : ℕ) : ℤ :=
  A375767.P11029837342179991351.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, A375766, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375767.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377421.P314416379374506011

`filter[A204232(1+n), A178226(#)]`
-/

namespace A377421.P314416379374506011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204232 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A377421.P314416379374506011

noncomputable section

/-- A377421: Numbers whose binary reversal is prime and unequal to the original number.

Offset 1, canonical program `A377421.P314416379374506011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A377421 (n : ℕ) : ℤ :=
  A377421.P314416379374506011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A377421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378905.P1475850440631121097

`A302643(A000040(1+n))`
-/

namespace A378905.P1475850440631121097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302643 (A000040 (1 + n)).toNat

end

end A378905.P1475850440631121097

noncomputable section

/-- A378905: a(n) is the number of odd squarefree semiprimes (A046388) < prime(n).

Offset 1, canonical program `A378905.P1475850440631121097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A378905 (n : ℕ) : ℤ :=
  A378905.P1475850440631121097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A378905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380922.P14080248536527490904

`A365498(n+1)*A368247(n+1)`
-/

namespace A380922.P14080248536527490904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365498 (n + 1) * A368247 (n + 1)

end

end A380922.P14080248536527490904

noncomputable section

/-- A380922: Dirichlet g.f.: zeta(s) * Product_{p prime} (1 + 1/p^s + 1/p^(3*s)).

Offset 1, canonical program `A380922.P14080248536527490904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380922 (n : ℕ) : ℤ :=
  A380922.P14080248536527490904.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387325.P12366465277394037670

`A117303(n+1)-1`
-/

namespace A387325.P12366465277394037670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117303 (n + 1) - 1

end

end A387325.P12366465277394037670

noncomputable section

/-- A387325: Self-inverse permutation of the nonnegative integers, by swapping and converting the head and tail parts of n in binary and using the rightmost 0-bit as their separator.

Offset 0, canonical program `A387325.P12366465277394037670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A387325 (n : ℕ) : ℤ :=
  A387325.P12366465277394037670.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A387325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389904.P15776582389617753375

`min(n+1, A059894(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389904.P15776582389617753375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (n + 1 : ℤ) (A059894 (n + 1))

end

end A389904.P15776582389617753375

noncomputable section

/-- A389904: a(n) = min(n, A059894(n)).

Offset 1, canonical program `A389904.P15776582389617753375`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059894, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389904 (n : ℕ) : ℤ :=
  A389904.P15776582389617753375.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059894, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389904.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390251.P1811341755956368526

`filter[A286228(n+1), A373585(#)]`
-/

namespace A390251.P1811341755956368526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j).toNat = 1) n)

end

end A390251.P1811341755956368526

noncomputable section

/-- A390251: Numbers k such that sigma(k) = psi(k) + omega(k)^2.

Offset 1, canonical program `A390251.P1811341755956368526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A390251 (n : ℕ) : ℤ :=
  A390251.P1811341755956368526.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A390251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390663.P5509345383207779074

`A000203(A053149(n+1))`
-/

namespace A390663.P5509345383207779074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A053149 (n + 1)).toNat

end

end A390663.P5509345383207779074

noncomputable section

/-- A390663: The sum of the divisors of the smallest cube divisible by n.

Offset 1, canonical program `A390663.P5509345383207779074`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390663 (n : ℕ) : ℤ :=
  A390663.P5509345383207779074.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390665.P2218711322630550871

`A034448(A053149(n+1))`
-/

namespace A390665.P2218711322630550871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A053149 (n + 1)).toNat

end

end A390665.P2218711322630550871

noncomputable section

/-- A390665: The sum of the unitary divisors of the smallest cube divisible by n.

Offset 1, canonical program `A390665.P2218711322630550871`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A053149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390665 (n : ℕ) : ℤ :=
  A390665.P2218711322630550871.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A053149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390665.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390754.P7808372230478735667

`A000010(A053149(n+1))`
-/

namespace A390754.P7808372230478735667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A053149 (n + 1)).toNat

end

end A390754.P7808372230478735667

noncomputable section

/-- A390754: The Euler totient of the smallest cube divisible by n.

Offset 1, canonical program `A390754.P7808372230478735667`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390754 (n : ℕ) : ℤ :=
  A390754.P7808372230478735667.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392088.P2713772725741587424

`A047994(A053149(n+1))`
-/

namespace A392088.P2713772725741587424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A053149 (n + 1)).toNat

end

end A392088.P2713772725741587424

noncomputable section

/-- A392088: The unitary totient of the smallest cube divisible by n.

Offset 1, canonical program `A392088.P2713772725741587424`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392088 (n : ℕ) : ℤ :=
  A392088.P2713772725741587424.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392088.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392169.P12898871919302007808

`A001615(A053149(n+1))`
-/

namespace A392169.P12898871919302007808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A053149 (n + 1)).toNat

end

end A392169.P12898871919302007808

noncomputable section

/-- A392169: The Dedekind psi function value of the smallest cube divisible by n.

Offset 1, canonical program `A392169.P12898871919302007808`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392169 (n : ℕ) : ℤ :=
  A392169.P12898871919302007808.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392169.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392218.P16910627991504591076

`∏{d}[A349137(2*n+1), #]`
-/

namespace A392218.P16910627991504591076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A392218.P16910627991504591076

noncomputable section

/-- A392218: Product of the divisors of phi(n).

Offset 1, canonical program `A392218.P16910627991504591076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5182 terms. -/
def A392218 (n : ℕ) : ℤ :=
  (A392218.P16910627991504591076.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5182 terms. -/
def A392218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392370.P3678449110929773305

`A005811(A006068(A341916(A362160(A341916(n)))))`
-/

namespace A392370.P3678449110929773305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A006068 (A341916 (A362160 (A341916 n).toNat).toNat).toNat).toNat

end

end A392370.P3678449110929773305

noncomputable section

/-- A392370: Sum of even-indexed parts of the reversed n-th composition in standard order.

Offset 0, canonical program `A392370.P3678449110929773305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392370 (n : ℕ) : ℤ :=
  A392370.P3678449110929773305.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392370.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A398819.P9340603326399367742

`∩[A398818(n+1)-1, A398818(n+1)]`
-/

namespace A398819.P9340603326399367742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398818 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398819.P9340603326399367742

noncomputable section

/-- A398819: Numbers k such that the powerful parts (A057521) of both k and k+1 are cubes.

Offset 1, canonical program `A398819.P9340603326399367742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6537 terms. -/
def A398819 (n : ℕ) : ℤ :=
  (A398819.P9340603326399367742.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6537 terms. -/
def A398819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398822.P17647454095404140229

`filter[A398818(n+2), A087049(#)]`
-/

namespace A398822.P17647454095404140229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A398822.P17647454095404140229

noncomputable section

/-- A398822: Numbers whose powerful part (A057521) is a cube that is larger than 1.

Offset 1, canonical program `A398822.P17647454095404140229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1232 terms. -/
def A398822 (n : ℕ) : ℤ :=
  A398822.P17647454095404140229.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1232 terms. -/
def A398822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327976.P13806618716666500198

`xor(A110240(n+1), 2*A265281(n))`
-/

namespace A327976.P13806618716666500198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110240 (n + 1)) (2 * A265281 n)

end

end A327976.P13806618716666500198

noncomputable section

/-- A327976: Bitwise XOR of trajectories (centrally aligned) of rule 30, and its mirror image, rule 86, when both are started from a lone 1-bit, with the latter delayed by one step: a(n) = A110240(n) XOR 2*A265281(n-1).

Offset 1, canonical program `A327976.P13806618716666500198`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, A265281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327976 (n : ℕ) : ℤ :=
  A327976.P13806618716666500198.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, A265281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327976.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328101.P6975989960955687215

`A000035(floor(A265281(n+1)/2^(n+2)))`
-/

namespace A328101.P6975989960955687215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ⌊(A265281 (n + 1) : ℚ) / (2 ^ (n + 2) : ℚ)⌋.toNat

end

end A328101.P6975989960955687215

noncomputable section

/-- A328101: Column immediately right of the middle column of rule-30 1-D cellular automaton, when started from a lone 1 cell.

Offset 1, canonical program `A328101.P6975989960955687215`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328101 (n : ℕ) : ℤ :=
  A328101.P6975989960955687215.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328101.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328103.P14408953863942436734

`xor(A110240(n), A267357(n))`
-/

namespace A328103.P14408953863942436734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110240 n) (A267357 n)

end

end A328103.P14408953863942436734

noncomputable section

/-- A328103: Bitwise XOR of trajectories of rule 30 and rule 124, when both are started from a lone 1 cell: a(n) = A110240(n) XOR A267357(n).

Offset 0, canonical program `A328103.P14408953863942436734`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, A267357, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328103 (n : ℕ) : ℤ :=
  A328103.P14408953863942436734.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, A267357, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328103.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336455.P3261113162239475427

`A335915(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336455.P3261113162239475427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (A000203 (n + 1)).toNat

end

end A336455.P3261113162239475427

noncomputable section

/-- A336455: a(n) = A335915(sigma(n)), where A335915 is a fully multiplicative sequence with a(2) = 1 and a(p) = A000265(p^2 - 1) for odd primes p, with A000265(k) giving the odd part of k.

Offset 1, canonical program `A336455.P3261113162239475427`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335915, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336455 (n : ℕ) : ℤ :=
  A336455.P3261113162239475427.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335915, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336455.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336456.P9026144830488456375

`A335915(A000203(A000203(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336456.P9026144830488456375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (A000203 (A000203 (n + 1)).toNat).toNat

end

end A336456.P9026144830488456375

noncomputable section

/-- A336456: a(n) = A335915(sigma(sigma(n))), where A335915 is a fully multiplicative sequence with a(2) = 1 and a(p) = A000265(p^2 - 1) for odd primes p, with A000265(k) giving the odd part of k.

Offset 1, canonical program `A336456.P9026144830488456375`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335915, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336456 (n : ℕ) : ℤ :=
  A336456.P9026144830488456375.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335915, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336456.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338471.P15632408290352518697

`∩[A014612(n+1), A066208(n+1)]`
-/

namespace A338471.P15632408290352518697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338471.P15632408290352518697

noncomputable section

/-- A338471: Products of three prime numbers of odd index.

Offset 1, canonical program `A338471.P15632408290352518697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1851 terms. -/
def A338471 (n : ℕ) : ℤ :=
  (A338471.P15632408290352518697.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1851 terms. -/
def A338471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343030.P6588649687182581724

`A014081(A154437(n))`
-/

namespace A343030.P6588649687182581724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A154437 n).toNat

end

end A343030.P6588649687182581724

noncomputable section

/-- A343030: Number of 1-bits in the binary expansion of n which have an odd number of 0-bits at less significant bit positions.

Offset 0, canonical program `A343030.P6588649687182581724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A343030 (n : ℕ) : ℤ :=
  A343030.P6588649687182581724.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A343030.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A357685.P8590542068992344568

`∪[A087248(n+1), A357686(n+1)]`
-/

namespace A357685.P8590542068992344568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A357685.P8590542068992344568

noncomputable section

/-- A357685: Numbers k such that A293228(k) > k.

Offset 1, canonical program `A357685.P8590542068992344568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357685 (n : ℕ) : ℤ :=
  (A357685.P8590542068992344568.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368701.P9028643918638500654

`A353478(A353478(n+4)+A003415(n+1))`
-/

namespace A368701.P9028643918638500654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353478 (A353478 (n + 4) + A003415 (n + 1)).toNat

end

end A368701.P9028643918638500654

noncomputable section

/-- A368701: a(n) = 1 if n satisfies the arithmetic differential equation 2n" - n' - 4 = 0, otherwise 0. Cf. A003415.

Offset 1, canonical program `A368701.P9028643918638500654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368701 (n : ℕ) : ℤ :=
  A368701.P9028643918638500654.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368732.P12624011651613050063

`∪[A106349(n+1), A175247(n+1)]`
-/

namespace A368732.P12624011651613050063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A368732.P12624011651613050063

noncomputable section

/-- A368732: Primes whose index is one, another prime number, or a semiprime.

Offset 1, canonical program `A368732.P12624011651613050063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368732 (n : ℕ) : ℤ :=
  (A368732.P12624011651613050063.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381960.P17631110590437961972

`∩[∑[7*n]+1, A186525(n+1)]`
-/

namespace A381960.P17631110590437961972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A381960.P17631110590437961972

noncomputable section

/-- A381960: Centered heptagonal numbers which are semiprime.

Offset 1, canonical program `A381960.P17631110590437961972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A381960 (n : ℕ) : ℤ :=
  (A381960.P17631110590437961972.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A381960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386295.P3144102033819088974

`∩[A063639(n+1), A215751(n+1)]`
-/

namespace A386295.P3144102033819088974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386295.P3144102033819088974

noncomputable section

/-- A386295: Primes p such that p+1 is a triprime and 2*p+1 is prime.

Offset 1, canonical program `A386295.P3144102033819088974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A386295 (n : ℕ) : ℤ :=
  (A386295.P3144102033819088974.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A386295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393818.P14790485006410335386

`A001358(A289182(A115392(n+1)-n))`
-/

namespace A393818.P14790485006410335386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A289182 (A115392 (n + 1) - (n : ℤ)).toNat).toNat

end

end A393818.P14790485006410335386

noncomputable section

/-- A393818: a(n) is the least odd semiprime > 2*prime(n).

Offset 1, canonical program `A393818.P14790485006410335386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A393818 (n : ℕ) : ℤ :=
  A393818.P14790485006410335386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A393818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333692.P18241223059571258819

`A333776(A145342(n+1)-1)`
-/

namespace A333692.P18241223059571258819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333776 (A145342 (n + 1) - 1).toNat

end

end A333692.P18241223059571258819

noncomputable section

/-- A333692: Scan the binary representation of n from left to right; at each 1, reverse the bits to the left and including this 1. The resulting binary representation is that of a(n).

Offset 0, canonical program `A333692.P18241223059571258819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A333692 (n : ℕ) : ℤ :=
  A333692.P18241223059571258819.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A333692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343024.P17053511942246666075

`A343025(n+1)²`
-/

namespace A343024.P17053511942246666075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343025 (n + 1) ^ 2

end

end A343024.P17053511942246666075

noncomputable section

/-- A343024: Discriminants with at least 2 associated cyclic cubic fields.

Offset 1, canonical program `A343024.P17053511942246666075`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A343025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343024 (n : ℕ) : ℤ :=
  A343024.P17053511942246666075.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A343025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343024.provenance : SequenceMachineLib.Provenance := .conditional

