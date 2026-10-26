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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A301895.P8372007366497196587

`A000120(n)^A023416(n)`
-/

namespace A301895.P8372007366497196587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 n : ℚ) ^ (A023416 n : ℤ)

end

end A301895.P8372007366497196587

noncomputable section

/-- A301895: a(n) = (number of 1's in binary expansion of n)^(number of 0's in binary expansion of n).

Offset 0, canonical program `A301895.P8372007366497196587`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A301895 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A301895.P8372007366497196587.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A301895.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A305748.P15139415621940203754

`A024675(n+1)-A000040(n+1)`
-/

namespace A305748.P15139415621940203754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) - A000040 (n + 1)

end

end A305748.P15139415621940203754

noncomputable section

/-- A305748: Distance of a prime number from the average of the next two consecutive prime numbers.

Offset 1, canonical program `A305748.P15139415621940203754`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A305748 (n : ℕ) : ℤ :=
  A305748.P15139415621940203754.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A305748.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A306190.P7131160644180957095

`A036689(n+1)-1`
-/

namespace A306190.P7131160644180957095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) - 1

end

end A306190.P7131160644180957095

noncomputable section

/-- A306190: a(n) = p^2 - p - 1 where p = prime(n), the n-th prime.

Offset 1, canonical program `A306190.P7131160644180957095`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306190 (n : ℕ) : ℤ :=
  A306190.P7131160644180957095.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306190.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A306454.P17030169656322426236

`A261327(n+1)/A013946(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A306454.P17030169656322426236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261327 (n + 1) : ℚ) / (A013946 (n + 1) : ℚ)

end

end A306454.P17030169656322426236

noncomputable section

/-- A306454: a(n) = A261327(n)/A013946(n).

Offset 1, canonical program `A306454.P17030169656322426236`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306454 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A306454.P17030169656322426236.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306454.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A307451.P4194924638858022531

`A011373(n)+A011373(n+1)-A011373(n+2)`
-/

namespace A307451.P4194924638858022531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011373 n + A011373 (n + 1) - A011373 (n + 2)

end

end A307451.P4194924638858022531

noncomputable section

/-- A307451: Sum of binary weights of two consecutive Fibonacci numbers minus the binary weight of the following Fibonacci number.

Offset 2, canonical program `A307451.P4194924638858022531`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A307451 (n : ℕ) : ℤ :=
  A307451.P4194924638858022531.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A307451.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A308135.P17632068956087446165

`A000203(n+1)-A057723(n+1)`
-/

namespace A308135.P17632068956087446165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A057723 (n + 1)

end

end A308135.P17632068956087446165

noncomputable section

/-- A308135: Sum of non-coreful divisors of n.

Offset 1, canonical program `A308135.P17632068956087446165`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308135 (n : ℕ) : ℤ :=
  A308135.P17632068956087446165.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308135.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A309391.P8425997874176840933

`gcd(n+3, A064169(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A309391.P8425997874176840933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (A064169 (n + 1))

end

end A309391.P8425997874176840933

noncomputable section

/-- A309391: a(n) = gcd(n, A064169(n-2)) for n > 2.

Offset 3, canonical program `A309391.P8425997874176840933`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309391 (n : ℕ) : ℤ :=
  (A309391.P8425997874176840933.a (n - 3) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309391.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A316346.P17873710853413127166

`A316297(n+2)/A316297(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A316346.P17873710853413127166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316297 (n + 2) : ℚ) / (A316297 (n + 1) : ℚ)

end

end A316346.P17873710853413127166

noncomputable section

/-- A316346: a(n) = A316297(n+1)/A316297(n).

Offset 1, canonical program `A316346.P17873710853413127166`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316346 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A316346.P17873710853413127166.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316346.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A318468.P4390416798166820558`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A318468 (n : ℕ) : ℤ :=
  A318468.P4390416798166820558.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A318468.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A322318.P16102184007919765089

`gcd(A003557(n+1), A048250(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322318.P16102184007919765089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003557 (n + 1)) (A048250 (n + 1))

end

end A322318.P16102184007919765089

noncomputable section

/-- A322318: a(n) = gcd(A003557(n), A048250(n)).

Offset 1, canonical program `A322318.P16102184007919765089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A322318 (n : ℕ) : ℤ :=
  (A322318.P16102184007919765089.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A322318.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A322319.P2436386183818854909

`lcm(A003557(n+1), A048250(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322319.P2436386183818854909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003557 (n + 1)) (A048250 (n + 1))

end

end A322319.P2436386183818854909

noncomputable section

/-- A322319: a(n) = lcm(A003557(n), A048250(n)).

Offset 1, canonical program `A322319.P2436386183818854909`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A322319 (n : ℕ) : ℤ :=
  (A322319.P2436386183818854909.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A322319.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A323704.P18318986639112400400

`A236959(n+1)+1`
-/

namespace A323704.P18318986639112400400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236959 (n + 1) + 1

end

end A323704.P18318986639112400400

noncomputable section

/-- A323704: Number of cubic residues (including 0) modulo the n-th prime.

Offset 1, canonical program `A323704.P18318986639112400400`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A323704 (n : ℕ) : ℤ :=
  A323704.P18318986639112400400.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A323704.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A324648.P5203091077092456117

`n+1-A318458(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324648.P5203091077092456117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A318458 (n + 1)

end

end A324648.P5203091077092456117

noncomputable section

/-- A324648: a(n) = n - A318458(n), where A318458(n) is bitwise-AND of n and the sum of proper divisors of n (sigma(n)-n).

Offset 1, canonical program `A324648.P5203091077092456117`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324648 (n : ℕ) : ℤ :=
  A324648.P5203091077092456117.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324648.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A325313.P16190563631669618661

`A048250(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A325313.P16190563631669618661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - (n + 1 : ℤ)

end

end A325313.P16190563631669618661

noncomputable section

/-- A325313: a(n) = A048250(n) - n, where A048250(n) is the sum of squarefree divisors of n.

Offset 1, canonical program `A325313.P16190563631669618661`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325313 (n : ℕ) : ℤ :=
  A325313.P16190563631669618661.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325313.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326039.P7430383325439106472

`A008833(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326039.P7430383325439106472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A000203 (n + 1)).toNat

end

end A326039.P7430383325439106472

noncomputable section

/-- A326039: Largest square dividing the sum of divisors of n: a(n) = A008833(sigma(n)).

Offset 1, canonical program `A326039.P7430383325439106472`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326039 (n : ℕ) : ℤ :=
  A326039.P7430383325439106472.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326039.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326040.P7505067728848820017

`A000203(n+1)-A008833(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326040.P7505067728848820017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A008833 (A000203 (n + 1)).toNat

end

end A326040.P7505067728848820017

noncomputable section

/-- A326040: a(n) = sigma(n) - A008833(sigma(n)).

Offset 1, canonical program `A326040.P7505067728848820017`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326040 (n : ℕ) : ℤ :=
  A326040.P7505067728848820017.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326040.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326044.P9479617742092619778

`n+1-A008833(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326044.P9479617742092619778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008833 (A000203 (n + 1)).toNat

end

end A326044.P9479617742092619778

noncomputable section

/-- A326044: a(n) = n - {the largest square dividing its sum of divisors}: a(n) = n - A008833(sigma(n)).

Offset 1, canonical program `A326044.P9479617742092619778`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326044 (n : ℕ) : ℤ :=
  A326044.P9479617742092619778.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326044.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326045.P14342720249539925561

`A000203(n+1)-A008833(A000203(n+1))-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326045.P14342720249539925561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A008833 (A000203 (n + 1)).toNat - (n + 1 : ℤ)

end

end A326045.P14342720249539925561

noncomputable section

/-- A326045: a(n) is the sum of divisors of n, minus the largest square dividing that sum, minus n: a(n) = sigma(n) - A008833(sigma(n)) - n.

Offset 1, canonical program `A326045.P14342720249539925561`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326045 (n : ℕ) : ℤ :=
  A326045.P14342720249539925561.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326045.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326053.P16383788461503311404

`A000203(n+1)-A008833(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326053.P16383788461503311404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A008833 (n + 1)

end

end A326053.P16383788461503311404

noncomputable section

/-- A326053: Sum of all other divisors of n except the largest square divisor: a(n) = sigma(n) - A008833(n).

Offset 1, canonical program `A326053.P16383788461503311404`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326053 (n : ℕ) : ℤ :=
  A326053.P16383788461503311404.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326053.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326056.P10542892579948598972

`gcd(A000203(n+1)-A008833(n+1)-(n+1), n+1-A008833(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326056.P10542892579948598972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1) - A008833 (n + 1) - (n + 1 : ℤ)) ((n + 1 : ℤ) - A008833 (n + 1))

end

end A326056.P10542892579948598972

noncomputable section

/-- A326056: a(n) = gcd(sigma(n)-A008833(n)-n, n-A008833(n)), where sigma is the sum of divisors of n, and A008833 is the largest square dividing n.

Offset 1, canonical program `A326056.P10542892579948598972`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326056 (n : ℕ) : ℤ :=
  (A326056.P10542892579948598972.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326056.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326127.P6827603046472699184

`A326126(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326127.P6827603046472699184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326126 (n + 1) - (n + 1 : ℤ)

end

end A326127.P6827603046472699184

noncomputable section

/-- A326127: a(n) = A326126(n) - n, where A326126 gives the sum of all other divisors of n except the squarefree part of n.

Offset 1, canonical program `A326127.P6827603046472699184`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326127 (n : ℕ) : ℤ :=
  A326127.P6827603046472699184.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326127.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326144.P8512876731767760408

`gcd(A066503(n+1), A326143(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326144.P8512876731767760408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066503 (n + 1)) (A326143 (n + 1))

end

end A326144.P8512876731767760408

noncomputable section

/-- A326144: a(n) = gcd(A066503(n), A326143(n)) = gcd(n - A007947(n), sigma(n) - A007947(n) - n).

Offset 1, canonical program `A326144.P8512876731767760408`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326144 (n : ℕ) : ℤ :=
  (A326144.P8512876731767760408.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326144.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A327327.P333352576343243044

`A024916(n+1)-A080277(n+1)`
-/

namespace A327327.P333352576343243044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - A080277 (n + 1)

end

end A327327.P333352576343243044

noncomputable section

/-- A327327: Partial sums of the sum of nonpowers of 2 dividing n.

Offset 1, canonical program `A327327.P333352576343243044`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A327327 (n : ℕ) : ℤ :=
  A327327.P333352576343243044.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A327327.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A327329.P5185755489289824233

`2*A024916(n+1)`
-/

namespace A327329.P5185755489289824233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024916 (n + 1)

end

end A327329.P5185755489289824233

noncomputable section

/-- A327329: Twice the sum of all divisors of all positive integers <= n.

Offset 1, canonical program `A327329.P5185755489289824233`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A327329 (n : ℕ) : ℤ :=
  A327329.P5185755489289824233.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A327329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A329598.P6468722656511072461

`A000217(n+1)+A060432(n+1)`
-/

namespace A329598.P6468722656511072461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + A060432 (n + 1)

end

end A329598.P6468722656511072461

noncomputable section

/-- A329598: Partial sums of the nontriangular numbers (A014132).

Offset 1, canonical program `A329598.P6468722656511072461`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329598 (n : ℕ) : ℤ :=
  A329598.P6468722656511072461.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329598.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A330082.P17333305925167713200

`5*A064038(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A330082.P17333305925167713200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A064038 (n + 1)

end

end A330082.P17333305925167713200

noncomputable section

/-- A330082: a(n) = 5*A064038(n+1).

Offset 0, canonical program `A330082.P17333305925167713200`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A330082 (n : ℕ) : ℤ :=
  A330082.P17333305925167713200.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A330082.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332027.P851931631810263331

`A060432(n+1)+A002024(n+1)+n+1`
-/

namespace A332027.P851931631810263331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060432 (n + 1) + A002024 (n + 1) + (n + 1 : ℤ)

end

end A332027.P851931631810263331

noncomputable section

/-- A332027: Savannah problem: number of distinct possible populations after n weeks, allowing populations after the empty set.

Offset 1, canonical program `A332027.P851931631810263331`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332027 (n : ℕ) : ℤ :=
  A332027.P851931631810263331.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332027.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332880.P6186133636698672336

`A001615(n+1)/A306695(n+1)`
-/

namespace A332880.P6186133636698672336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A306695 (n + 1) : ℚ)

end

end A332880.P6186133636698672336

noncomputable section

/-- A332880: If n = Product (p_j^k_j) then a(n) = numerator of Product (1 + 1/p_j).

Offset 1, canonical program `A332880.P6186133636698672336`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332880 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A332880.P6186133636698672336.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332880.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332881.P13190914055989439247

`(n+1)/A306695(n+1)`
-/

namespace A332881.P13190914055989439247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A306695 (n + 1) : ℚ)

end

end A332881.P13190914055989439247

noncomputable section

/-- A332881: If n = Product (p_j^k_j) then a(n) = denominator of Product (1 + 1/p_j).

Offset 1, canonical program `A332881.P13190914055989439247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332881 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A332881.P13190914055989439247.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332881.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A335024.P6071518550962912496

`A056612(n+2)/A056612(n+1)`
-/

namespace A335024.P6071518550962912496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056612 (n + 2) : ℚ) / (A056612 (n + 1) : ℚ)

end

end A335024.P6071518550962912496

noncomputable section

/-- A335024: Ratios of consecutive terms of A056612.

Offset 1, canonical program `A335024.P6071518550962912496`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A335024 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A335024.P6071518550962912496.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A335024.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A335063.P16493843771175373892

`n*A001316(n)/2`
-/

namespace A335063.P16493843771175373892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A001316 n : ℚ) / 2

end

end A335063.P16493843771175373892

noncomputable section

/-- A335063: a(n) = Sum_{k=0..n} (binomial(n,k) mod 2) * k.

Offset 0, canonical program `A335063.P16493843771175373892`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A335063 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A335063.P16493843771175373892.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A335063.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336642.P17825345798901579858

`A008833(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336642.P17825345798901579858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) - 1

end

end A336642.P17825345798901579858

noncomputable section

/-- A336642: One less than the largest square dividing n: a(n) = A008833(n)-1.

Offset 1, canonical program `A336642.P17825345798901579858`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336642 (n : ℕ) : ℤ :=
  A336642.P17825345798901579858.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336642.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A341392.P13730857091903265772

`A284005(n)/(1+A000120(n))!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341392.P13730857091903265772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284005 n : ℚ) / (Nat.factorial (1 + A000120 n).toNat : ℚ)

end

end A341392.P13730857091903265772

noncomputable section

/-- A341392: a(n) = A284005(n) / (1 + A000120(n))!.

Offset 0, canonical program `A341392.P13730857091903265772`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A341392 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A341392.P13730857091903265772.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A341392.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A341952.P5326500736965225411

`A102283(A028334(n+2))`
-/

namespace A341952.P5326500736965225411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A028334 (n + 2)).toNat

end

end A341952.P5326500736965225411

noncomputable section

/-- A341952: Let x = (prime(n+1) - prime(n))/2 modulo 3 for n >= 2, then a(n) = -1 if x = 2, otherwise a(n) = x.

Offset 2, canonical program `A341952.P5326500736965225411`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A341952 (n : ℕ) : ℤ :=
  A341952.P5326500736965225411.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A341952.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A342917.P11149756956823687743

`A001615(n+1)/A342915(n+1)`
-/

namespace A342917.P11149756956823687743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A342915 (n + 1) : ℚ)

end

end A342917.P11149756956823687743

noncomputable section

/-- A342917: a(n) = A001615(n) / gcd(1+n, A001615(n)), where A001615 is Dedekind psi, n * Product_{p|n, p prime} (1 + 1/p).

Offset 1, canonical program `A342917.P11149756956823687743`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342917 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342917.P11149756956823687743.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342917.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344696.P8047274283818792486

`A000203(n+1)/A344695(n+1)`
-/

namespace A344696.P8047274283818792486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A344695 (n + 1) : ℚ)

end

end A344696.P8047274283818792486

noncomputable section

/-- A344696: a(n) = sigma(n) / gcd(sigma(n), A001615(n)).

Offset 1, canonical program `A344696.P8047274283818792486`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344696 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A344696.P8047274283818792486.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344696.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344697.P12307976047928248051

`A001615(n+1)/A344695(n+1)`
-/

namespace A344697.P12307976047928248051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A344695 (n + 1) : ℚ)

end

end A344697.P12307976047928248051

noncomputable section

/-- A344697: a(n) = A001615(n) / gcd(sigma(n), A001615(n)).

Offset 1, canonical program `A344697.P12307976047928248051`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344697 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A344697.P12307976047928248051.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344697.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344753.P96052968177767744

`A001065(n+1)+A306927(n+1)`
-/

namespace A344753.P96052968177767744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + A306927 (n + 1)

end

end A344753.P96052968177767744

noncomputable section

/-- A344753: a(n) = sigma(n) + psi(n) - 2n = Sum_{d|n, d

Offset 1, canonical program `A344753.P96052968177767744`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344753 (n : ℕ) : ℤ :=
  A344753.P96052968177767744.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344753.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344902.P10574121006049351700

`A000120(n)!*(1+A000120(n))^(A023416(n)+1)`
-/

namespace A344902.P10574121006049351700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000120 n).toNat : ℚ) * (1 + A000120 n : ℚ) ^ (A023416 n + 1 : ℤ)

end

end A344902.P10574121006049351700

noncomputable section

/-- A344902: Number of open tours by a biased rook on a specific f(n) X 1 board, where f(n) = A070941(n) and cells are colored white or black according to the binary representation of 2n.

Offset 0, canonical program `A344902.P10574121006049351700`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344902 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A344902.P10574121006049351700.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344902.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A345887.P10524329361228166936

`A193657(n+1)-1`
-/

namespace A345887.P10524329361228166936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193657 (n + 1) - 1

end

end A345887.P10524329361228166936

noncomputable section

/-- A345887: Number of tilings of an n-cell circular array with rectangular tiles of any size, and where the number of possible colors of a tile is given by the largest cell covered.

Offset 1, canonical program `A345887.P10524329361228166936`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345887 (n : ℕ) : ℤ :=
  A345887.P10524329361228166936.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345887.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348301.P2857658852260466201

`A024451(n+1)-A002110(n+1)`
-/

namespace A348301.P2857658852260466201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 (n + 1) - A002110 (n + 1)

end

end A348301.P2857658852260466201

noncomputable section

/-- A348301: a(n) is the difference between the numerator and denominator of the (reduced) fraction Sum_{i = 1..n} 1/prime(i).

Offset 1, canonical program `A348301.P2857658852260466201`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348301 (n : ℕ) : ℤ :=
  A348301.P2857658852260466201.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348301.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348367.P5134569712884376342

`A000120(A092391(n+1))`
-/

namespace A348367.P5134569712884376342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A092391 (n + 1)).toNat

end

end A348367.P5134569712884376342

noncomputable section

/-- A348367: a(n) = w(n + w(n)), where w(n) is the binary weight of n, A000120(n).

Offset 1, canonical program `A348367.P5134569712884376342`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348367 (n : ℕ) : ℤ :=
  A348367.P5134569712884376342.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348367.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350390.P13215210150180200115

`(n+1)/A336643(n+1)`
-/

namespace A350390.P13215210150180200115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A336643 (n + 1) : ℚ)

end

end A350390.P13215210150180200115

noncomputable section

/-- A350390: a(n) is the largest exponentially odd divisor of n.

Offset 1, canonical program `A350390.P13215210150180200115`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350390 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A350390.P13215210150180200115.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350390.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350637.P14576691412698149744

`A024916(A004736(n+1))`
-/

namespace A350637.P14576691412698149744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (A004736 (n + 1)).toNat

end

end A350637.P14576691412698149744

noncomputable section

/-- A350637: Triangle read by rows: T(n,k) in which row n lists the first n terms of A024916 in reverse order, 1 <= k <= n.

Offset 1, canonical program `A350637.P14576691412698149744`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350637 (n : ℕ) : ℤ :=
  A350637.P14576691412698149744.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350637.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A352784.P5385045809583543400

`A280700(floor(n/2))`
-/

namespace A352784.P5385045809583543400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280700 ⌊(n : ℚ) / 2⌋.toNat

end

end A352784.P5385045809583543400

noncomputable section

/-- A352784: a(n) = w(n - w(n)), where w(n) is the binary weight of n, A000120(n).

Offset 0, canonical program `A352784.P5385045809583543400`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A352784 (n : ℕ) : ℤ :=
  A352784.P5385045809583543400.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A352784.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A355929.P18162260943095803448

`A355928(n+1)-A007913(n+1)`
-/

namespace A355929.P18162260943095803448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355928 (n + 1) - A007913 (n + 1)

end

end A355929.P18162260943095803448

noncomputable section

/-- A355929: Difference between the squarefree part of the sum of divisors of n and the squarefree part of n.

Offset 1, canonical program `A355929.P18162260943095803448`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355929 (n : ℕ) : ℤ :=
  A355929.P18162260943095803448.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355929.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A357214.P17117338288475535915`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357214 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A357214.P17117338288475535915.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357214.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A357689.P3293934987701122531

`(n+1)/A204455(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A357689.P3293934987701122531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A204455 (n + 1) : ℚ)

end

end A357689.P3293934987701122531

noncomputable section

/-- A357689: a(n) = n/A204455(n), where A204455(n) is the product of odd noncomposite divisors of n.

Offset 1, canonical program `A357689.P3293934987701122531`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357689 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A357689.P3293934987701122531.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357689.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A358821.P15868055063124338799

`A008833((n+2)²-1)`
-/

namespace A358821.P15868055063124338799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 ((n + 2) ^ 2 - 1)

end

end A358821.P15868055063124338799

noncomputable section

/-- A358821: a(n) is the largest square dividing n^2 - 1.

Offset 2, canonical program `A358821.P15868055063124338799`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358821 (n : ℕ) : ℤ :=
  A358821.P15868055063124338799.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358821.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359844.P3476761026987481568

`16*A359498(n)+1`
-/

namespace A359844.P3476761026987481568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A359498 n + 1

end

end A359844.P3476761026987481568

noncomputable section

/-- A359844: a(n) = ((2*n+1)^8 + 1)/2.

Offset 0, canonical program `A359844.P3476761026987481568`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359844 (n : ℕ) : ℤ :=
  A359844.P3476761026987481568.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359844.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A361266.P5093072706684285124`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361266 (n : ℕ) : ℤ :=
  A361266.P5093072706684285124.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361266.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A362194.P824322354515658544

`A008859(n)-n`
-/

namespace A362194.P824322354515658544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n - (n : ℤ)

end

end A362194.P824322354515658544

noncomputable section

/-- A362194: Number of Grassmannian permutations of size n that avoid a pattern, sigma, where sigma is a pattern of size 7 with exactly one descent.

Offset 0, canonical program `A362194.P824322354515658544`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362194 (n : ℕ) : ℤ :=
  A362194.P824322354515658544.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362194.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364452.P13008707437783401518

`A058220(2*n+1)`
-/

namespace A364452.P13008707437783401518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058220 (2 * n + 1)

end

end A364452.P13008707437783401518

noncomputable section

/-- A364452: Smallest k such that 4^(4^n) - k is prime.

Offset 0, canonical program `A364452.P13008707437783401518`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364452 (n : ℕ) : ℤ :=
  A364452.P13008707437783401518.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364452.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365089.P12422093480538307180

`A010060(n^3)`
-/

namespace A365089.P12422093480538307180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n ^ 3)

end

end A365089.P12422093480538307180

noncomputable section

/-- A365089: The Thue-Morse sequence along the sequence of cubes.

Offset 0, canonical program `A365089.P12422093480538307180`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365089 (n : ℕ) : ℤ :=
  A365089.P12422093480538307180.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365089.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365332.P7111243968687331237

`A000203(A008833(n+1))`
-/

namespace A365332.P7111243968687331237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A008833 (n + 1)).toNat

end

end A365332.P7111243968687331237

noncomputable section

/-- A365332: The sum of divisors of the largest square dividing n.

Offset 1, canonical program `A365332.P7111243968687331237`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365332 (n : ℕ) : ℤ :=
  A365332.P7111243968687331237.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365332.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365347.P15432224358011895387

`A000203(A019554(n+1))`
-/

namespace A365347.P15432224358011895387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A019554 (n + 1)).toNat

end

end A365347.P15432224358011895387

noncomputable section

/-- A365347: The sum of divisors of the smallest number whose square is divisible by n.

Offset 1, canonical program `A365347.P15432224358011895387`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365347 (n : ℕ) : ℤ :=
  A365347.P15432224358011895387.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365347.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365349.P11526077117599832562

`A000203(A356191(n+1))`
-/

namespace A365349.P11526077117599832562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A356191 (n + 1)).toNat

end

end A365349.P11526077117599832562

noncomputable section

/-- A365349: The sum of divisors of the smallest exponentially odd number divisible by n.

Offset 1, canonical program `A365349.P11526077117599832562`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365349 (n : ℕ) : ℤ :=
  A365349.P11526077117599832562.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365349.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367990.P363802912855232684

`A000203(A336643(n+1))`
-/

namespace A367990.P363802912855232684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A336643 (n + 1)).toNat

end

end A367990.P363802912855232684

noncomputable section

/-- A367990: Sum of the squarefree divisors of the largest unitary divisor of n that is a square.

Offset 1, canonical program `A367990.P363802912855232684`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367990 (n : ℕ) : ℤ :=
  A367990.P363802912855232684.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367990.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A370135.P7396084154153960373

`A370134(n+1)/A002110(A002260(n+1))`
-/

namespace A370135.P7396084154153960373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370134 (n + 1) : ℚ) / (A002110 (A002260 (n + 1)).toNat : ℚ)

end

end A370135.P7396084154153960373

noncomputable section

/-- A370135: Triangle read by rows: T(n,k) = (A002110(n) + A002110(k)) / A002110(k), 1 <= k <= n.

Offset 1, canonical program `A370135.P7396084154153960373`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370135 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A370135.P7396084154153960373.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370135.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A370564.P2151838547854107065`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370564 (n : ℕ) : ℤ :=
  A370564.P2151838547854107065.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370564.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374852.P11494953044033864477

`1/3*A054640(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374852.P11494953044033864477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (A054640 (n + 1) : ℚ)

end

end A374852.P11494953044033864477

noncomputable section

/-- A374852: a(n) = (1/3)*A054640(n) for n >= 1.

Offset 1, canonical program `A374852.P11494953044033864477`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374852 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A374852.P11494953044033864477.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374852.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375752.P17714161242326919861

`A000217(n+2)-A065384(n+2)`
-/

namespace A375752.P17714161242326919861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) - A065384 (n + 2)

end

end A375752.P17714161242326919861

noncomputable section

/-- A375752: a(n) is the difference between T=n*(n+1)/2 and the largest prime not exceeding T.

Offset 2, canonical program `A375752.P17714161242326919861`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375752 (n : ℕ) : ℤ :=
  A375752.P17714161242326919861.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375752.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376132.P3293630522299707843

`A000295(A376116(n+2)-A376116(n+1)+1)`
-/

namespace A376132.P3293630522299707843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (A376116 (n + 2) - A376116 (n + 1) + 1).toNat

end

end A376132.P3293630522299707843

noncomputable section

/-- A376132: First differences of A376131.

Offset 1, canonical program `A376132.P3293630522299707843`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376132 (n : ℕ) : ℤ :=
  A376132.P3293630522299707843.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376132.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376419.P863403549623483894

`A000040(1+n+1)*A024451(n)-A024451(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A376419.P863403549623483894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 + (n + 1)) * A024451 n - A024451 (n + 1)

end

end A376419.P863403549623483894

noncomputable section

/-- A376419: a(n) = prime(1+n)*A024451(n-1) - A024451(n), where A024451(n) is the numerator of Sum_{i = 1..n} 1/prime(i).

Offset 1, canonical program `A376419.P863403549623483894`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376419 (n : ℕ) : ℤ :=
  A376419.P863403549623483894.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376419.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378992.P17019904258361970119

`A011371(n)-A048881(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378992.P17019904258361970119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n - A048881 n

end

end A378992.P17019904258361970119

noncomputable section

/-- A378992: a(n) = A011371(n) - A048881(n); The exponent of the highest power of 2 dividing the n-th factorial minus the exponent of the highest power of 2 dividing n-th Catalan number.

Offset 0, canonical program `A378992.P17019904258361970119`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378992 (n : ℕ) : ℤ :=
  A378992.P17019904258361970119.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378992.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A378995.P10105459353425668716`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378995 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378995.P10105459353425668716.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378995.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380122.P11414663002027706338

`A001316(A184617(n))`
-/

namespace A380122.P11414663002027706338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A184617 n).toNat

end

end A380122.P11414663002027706338

noncomputable section

/-- A380122: a(n) is the number of integers m (possibly negative) such that the nonzero digits in the nonadjacent form for m appear in the nonadjacent form for n.

Offset 0, canonical program `A380122.P11414663002027706338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380122 (n : ℕ) : ℤ :=
  A380122.P11414663002027706338.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380122.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381841.P11592063328882471830

`A136495(n+1)+A136496(n+1)`
-/

namespace A381841.P11592063328882471830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (n + 1) + A136496 (n + 1)

end

end A381841.P11592063328882471830

noncomputable section

/-- A381841: Position of the n-th occurrence of the digit 3 in A105083(n-1) for n>=1.

Offset 1, canonical program `A381841.P11592063328882471830`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381841 (n : ℕ) : ℤ :=
  A381841.P11592063328882471830.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381841.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A301277.P6735917784534562425

`round(A007504(n+1)/(n+1))`
-/

namespace A301277.P6735917784534562425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007504 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A301277.P6735917784534562425

noncomputable section

/-- A301277: Nearest integer to mean of first n primes.

Offset 1, canonical program `A301277.P6735917784534562425`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A301277 (n : ℕ) : ℤ :=
  A301277.P6735917784534562425.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A301277.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A318457.P2106186129215435240

`A000203(n+1)-2*A318458(n+1)`
-/

namespace A318457.P2106186129215435240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - 2 * A318458 (n + 1)

end

end A318457.P2106186129215435240

noncomputable section

/-- A318457: a(n) = n XOR A001065(n), where XOR is bitwise-xor (A003987) and A001065 = sum of proper divisors.

Offset 1, canonical program `A318457.P2106186129215435240`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A318457 (n : ℕ) : ℤ :=
  A318457.P2106186129215435240.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A318457.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A322420.P4592221206710886228

`A007504(A002378(n))`
-/

namespace A322420.P4592221206710886228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A002378 n).toNat

end

end A322420.P4592221206710886228

noncomputable section

/-- A322420: Sum of the first n*(n+1) primes.

Offset 0, canonical program `A322420.P4592221206710886228`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A322420 (n : ℕ) : ℤ :=
  A322420.P4592221206710886228.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A322420.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A324287.P5077748736980980379

`A002487(A005187(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324287.P5077748736980980379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A005187 n).toNat

end

end A324287.P5077748736980980379

noncomputable section

/-- A324287: a(n) = A002487(A005187(n)).

Offset 0, canonical program `A324287.P5077748736980980379`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324287 (n : ℕ) : ℤ :=
  A324287.P5077748736980980379.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324287.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A324288.P7931273750628969698

`A002487(1+A005187(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324288.P7931273750628969698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (1 + A005187 n).toNat

end

end A324288.P7931273750628969698

noncomputable section

/-- A324288: a(n) = A002487(1+A005187(n)).

Offset 0, canonical program `A324288.P7931273750628969698`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324288 (n : ℕ) : ℤ :=
  A324288.P7931273750628969698.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324288.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A324293.P15321960230669140692

`A002487(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324293.P15321960230669140692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A000203 (n + 1)).toNat

end

end A324293.P15321960230669140692

noncomputable section

/-- A324293: a(n) = A002487(sigma(n)).

Offset 1, canonical program `A324293.P15321960230669140692`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324293 (n : ℕ) : ℤ :=
  A324293.P15321960230669140692.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324293.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A324294.P10481148616632458951

`A002487(1+A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324294.P10481148616632458951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (1 + A000203 (n + 1)).toNat

end

end A324294.P10481148616632458951

noncomputable section

/-- A324294: a(n) = A002487(1+sigma(n)).

Offset 1, canonical program `A324294.P10481148616632458951`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324294 (n : ℕ) : ℤ :=
  A324294.P10481148616632458951.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324294.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326184.P15746824177980826123

`A000203(n+1)-A057521(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326184.P15746824177980826123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A057521 (n + 1)

end

end A326184.P15746824177980826123

noncomputable section

/-- A326184: a(n) = sigma(n) - A057521(n), where A057521 gives the powerful part of n, and sigma gives the sum of divisors of n.

Offset 1, canonical program `A326184.P15746824177980826123`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326184 (n : ℕ) : ℤ :=
  A326184.P15746824177980826123.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326184.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326185.P12659005152761193395

`A000203(n+1)-A057521(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326185.P12659005152761193395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A057521 (n + 1) - (n + 1 : ℤ)

end

end A326185.P12659005152761193395

noncomputable section

/-- A326185: a(n) = sigma(n) - A057521(n) - n.

Offset 1, canonical program `A326185.P12659005152761193395`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326185 (n : ℕ) : ℤ :=
  A326185.P12659005152761193395.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326185.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326186.P460460233906349811

`n+1-A057521(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326186.P460460233906349811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A057521 (n + 1)

end

end A326186.P460460233906349811

noncomputable section

/-- A326186: a(n) = n - A057521(n), where A057521 gives the powerful part of n.

Offset 1, canonical program `A326186.P460460233906349811`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326186 (n : ℕ) : ℤ :=
  A326186.P460460233906349811.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326186.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A328203.P2998697781727387960

`((n+1)*A001227(n+1)+A002131(n+1))/2`
-/

namespace A328203.P2998697781727387960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A001227 (n + 1) + A002131 (n + 1) : ℚ) / 2

end

end A328203.P2998697781727387960

noncomputable section

/-- A328203: Expansion of Sum_{k>=1} k * x^k / (1 - x^(2*k))^2.

Offset 1, canonical program `A328203.P2998697781727387960`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A328203 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A328203.P2998697781727387960.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A328203.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A331112.P16798163641556817156

`A065363(A000040(n+1))`
-/

namespace A331112.P16798163641556817156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (A000040 (n + 1)).toNat

end

end A331112.P16798163641556817156

noncomputable section

/-- A331112: Sum of the digits of the n-th prime number in balanced ternary.

Offset 1, canonical program `A331112.P16798163641556817156`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A331112 (n : ℕ) : ℤ :=
  A331112.P16798163641556817156.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A331112.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A331677.P6402599086706022467

`2*(n+1)-1-A020900(n+1)`
-/

namespace A331677.P6402599086706022467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - 1 - A020900 (n + 1)

end

end A331677.P6402599086706022467

noncomputable section

/-- A331677: a(n) is the difference between the number of primes smaller than prime(n) (i.e., n-1) and greater than prime(n) but less than 2*prime(n).

Offset 1, canonical program `A331677.P6402599086706022467`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A331677 (n : ℕ) : ℤ :=
  A331677.P6402599086706022467.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A331677.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A333922.P16456559979994857998

`1-floor(2^n*A002487(n)/A002487(n+1))%2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A333922.P16456559979994857998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod ⌊((2 ^ n : ℤ) * A002487 n : ℚ) / (A002487 (n + 1) : ℚ)⌋ 2

end

end A333922.P16456559979994857998

noncomputable section

/-- A333922: a(n) = 1 - (floor(2^n*A002487(n)/A002487(n+1)) mod 2).

Offset 0, canonical program `A333922.P16456559979994857998`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A333922 (n : ℕ) : ℤ :=
  A333922.P16456559979994857998.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A333922.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A337303.P13600975029511963536

`A337302(n)*n!`
-/

namespace A337303.P13600975029511963536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337302 n * (Nat.factorial n : ℤ)

end

end A337303.P13600975029511963536

noncomputable section

/-- A337303: Number of X-based filling of diagonals in a diagonal Latin square of order n.

Offset 0, canonical program `A337303.P13600975029511963536`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337303 (n : ℕ) : ℤ :=
  A337303.P13600975029511963536.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337303.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A339597.P9563907949436141931

`2*(n+1)-A006519(n+1)`
-/

namespace A339597.P9563907949436141931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A006519 (n + 1)

end

end A339597.P9563907949436141931

noncomputable section

/-- A339597: When 2*n+1 first appears in A086799.

Offset 0, canonical program `A339597.P9563907949436141931`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A339597 (n : ℕ) : ℤ :=
  A339597.P9563907949436141931.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A339597.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A341691.P6028495003635313432

`n-a(n-A006519(n))` with `a(0)=0`
-/

namespace A341691.P6028495003635313432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - a ((n : ℤ) - A006519 n).toNat

end

end A341691.P6028495003635313432

noncomputable section

/-- A341691: a(0) = 0, and for any n > 0, a(n) = n - a(k) where k is the greatest number < n such that n AND a(k) = a(k) (where AND denotes the bitwise AND operator).

Offset 0, canonical program `A341691.P6028495003635313432`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A341691 (n : ℕ) : ℤ :=
  A341691.P6028495003635313432.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A341691.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A343859.P4309510753267781368

`A007504(n+2)-3`
-/

namespace A343859.P4309510753267781368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 2) - 3

end

end A343859.P4309510753267781368

noncomputable section

/-- A343859: Partial sums of the primes excluding 3.

Offset 1, canonical program `A343859.P4309510753267781368`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343859 (n : ℕ) : ℤ :=
  A343859.P4309510753267781368.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343859.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350229.P11009245759150690287

`n+A065363(n)`
-/

namespace A350229.P11009245759150690287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A065363 n

end

end A350229.P11009245759150690287

noncomputable section

/-- A350229: a(n) is the sum of n and the balanced ternary digits in n.

Offset 0, canonical program `A350229.P11009245759150690287`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350229 (n : ℕ) : ℤ :=
  A350229.P11009245759150690287.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350229.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A352047.P11793424880118639784

`A000593(n+1)*A006519(n+1)-A000035(n+1)`
-/

namespace A352047.P11793424880118639784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) * A006519 (n + 1) - A000035 (n + 1)

end

end A352047.P11793424880118639784

noncomputable section

/-- A352047: Sum of the divisor complements of the odd proper divisors of n.

Offset 1, canonical program `A352047.P11793424880118639784`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A352047 (n : ℕ) : ℤ :=
  A352047.P11793424880118639784.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A352047.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A355582.P2103007522092691824

`A006519(n+1)*A038500(n+1)*A060904(n+1)`
-/

namespace A355582.P2103007522092691824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A038500 (n + 1) * A060904 (n + 1)

end

end A355582.P2103007522092691824

noncomputable section

/-- A355582: a(n) is the largest 5-smooth divisor of n.

Offset 1, canonical program `A355582.P2103007522092691824`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355582 (n : ℕ) : ℤ :=
  A355582.P2103007522092691824.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355582.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A355590.P1276271810179045554

`A002110(n)-A007504(n)`
-/

namespace A355590.P1276271810179045554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n - A007504 n

end

end A355590.P1276271810179045554

noncomputable section

/-- A355590: a(n) = (product of the first n primes) - (sum of the first n primes).

Offset 0, canonical program `A355590.P1276271810179045554`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355590 (n : ℕ) : ℤ :=
  A355590.P1276271810179045554.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355590.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A362419.P12067227853908555658

`2*A007504(n+1)`
-/

namespace A362419.P12067227853908555658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007504 (n + 1)

end

end A362419.P12067227853908555658

noncomputable section

/-- A362419: Partial sum of the first n even semiprimes.

Offset 1, canonical program `A362419.P12067227853908555658`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362419 (n : ℕ) : ℤ :=
  A362419.P12067227853908555658.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362419.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A368744.P6947469571873636079

`(2/A006519(n+1)-1)*(n+1)`
-/

namespace A368744.P6947469571873636079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 / (A006519 (n + 1) : ℚ) - 1) * (n + 1 : ℚ)

end

end A368744.P6947469571873636079

noncomputable section

/-- A368744: a(n) = Sum_{d|n} (-1)^(d+1)*phi(d), where phi(n) = A000010(n).

Offset 1, canonical program `A368744.P6947469571873636079`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368744 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A368744.P6947469571873636079.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368744.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369510.P1265040740689767623

`2^n*A006013(n)`
-/

namespace A369510.P1265040740689767623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A006013 n

end

end A369510.P1265040740689767623

noncomputable section

/-- A369510: Expansion of (1/x) * Series_Reversion( x * ((1-x)^2-x^2)^2 ).

Offset 0, canonical program `A369510.P1265040740689767623`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369510 (n : ℕ) : ℤ :=
  A369510.P1265040740689767623.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369510.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373536.P14270159377679087246

`A000262(n)*A053601(n)`
-/

namespace A373536.P14270159377679087246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n * A053601 n

end

end A373536.P14270159377679087246

noncomputable section

/-- A373536: Number of ways to form a direct sum decomposition of the vector space GF(2)^n and then choose a basis for each subspace in the decomposition.

Offset 0, canonical program `A373536.P14270159377679087246`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373536 (n : ℕ) : ℤ :=
  A373536.P14270159377679087246.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373536.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376762.P14200299004774236761

`A210497(n+1)-A020900(n+2)+n+1`
-/

namespace A376762.P14200299004774236761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210497 (n + 1) - A020900 (n + 2) + (n + 1 : ℤ)

end

end A376762.P14200299004774236761

noncomputable section

/-- A376762: Number of composite numbers c in the range prime(n) < c <= 2*prime(n+1).

Offset 1, canonical program `A376762.P14200299004774236761`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376762 (n : ℕ) : ℤ :=
  A376762.P14200299004774236761.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376762.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377642.P10920870877473794249

`A000079(n)*A053601(n)`
-/

namespace A377642.P10920870877473794249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A053601 n

end

end A377642.P10920870877473794249

noncomputable section

/-- A377642: a(n) = (1/(n-1)!) * Product_{i=1..n-1} (2^n-2^i).

Offset 1, canonical program `A377642.P10920870877473794249`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377642 (n : ℕ) : ℤ :=
  A377642.P10920870877473794249.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377642.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A346878.P5483888305537072488

`1+A346880(n+1)`
-/

namespace A346878.P5483888305537072488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A346880 (n + 1)

end

end A346878.P5483888305537072488

noncomputable section

/-- A346878: Sum of the divisors, except for the largest, of the n-th positive even number.

Offset 1, canonical program `A346878.P5483888305537072488`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346878 (n : ℕ) : ℤ :=
  A346878.P5483888305537072488.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346878.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373935.P5688816994832969295

`A373936(n+2)-A373936(n+1)`
-/

namespace A373935.P5688816994832969295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373936 (n + 2) - A373936 (n + 1)

end

end A373935.P5688816994832969295

noncomputable section

/-- A373935: Number of compositions of 7*n-3 into parts 6 and 7.

Offset 1, canonical program `A373935.P5688816994832969295`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373935 (n : ℕ) : ℤ :=
  A373935.P5688816994832969295.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373935.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373962.P14560065925070970160

`A373963(n+2)-A373963(n+1)`
-/

namespace A373962.P14560065925070970160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373963 (n + 2) - A373963 (n + 1)

end

end A373962.P14560065925070970160

noncomputable section

/-- A373962: Number of compositions of 6*n-2 into parts 5 and 6.

Offset 1, canonical program `A373962.P14560065925070970160`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373962 (n : ℕ) : ℤ :=
  A373962.P14560065925070970160.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373962.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A301658.P6373140149868759706

`A240513(n+1)+3`
-/

namespace A301658.P6373140149868759706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240513 (n + 1) + 3

end

end A301658.P6373140149868759706

noncomputable section

/-- A301658: Number of nX4 0..1 arrays with every element equal to 0, 1 or 4 horizontally or vertically adjacent elements, with upper left element zero.

Offset 1, canonical program `A301658.P6373140149868759706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A301658 (n : ℕ) : ℤ :=
  A301658.P6373140149868759706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A301658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301764.P11755840573215303962

`A086898(A028310(n))+1`
-/

namespace A301764.P11755840573215303962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086898 (A028310 n).toNat + 1

end

end A301764.P11755840573215303962

noncomputable section

/-- A301764: Number of ways to choose a constant rooted partition of each part in a constant rooted partition of n such that the flattened sequence is also constant.

Offset 1, canonical program `A301764.P11755840573215303962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A301764 (n : ℕ) : ℤ :=
  A301764.P11755840573215303962.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A301764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302170.P8300830872753223611

`p?[A126988(n+1)+A000007(n)]-A000007(n)`
-/

namespace A302170.P8300830872753223611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A000007 n

end

end A302170.P8300830872753223611

noncomputable section

/-- A302170: Irregular triangle T(n,k) read by rows: first row is 1, n-th row (n > 1) lists distinct prime factors of n in decreasing order.

Offset 1, canonical program `A302170.P8300830872753223611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A302170 (n : ℕ) : ℤ :=
  A302170.P8300830872753223611.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A302170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302563.P15763102910394918625

`A017173(n)+A004216(A017173(n))`
-/

namespace A302563.P15763102910394918625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n + A004216 (A017173 n).toNat

end

end A302563.P15763102910394918625

noncomputable section

/-- A302563: Numbers whose digital root is equal to their number of digits.

Offset 1, canonical program `A302563.P15763102910394918625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1112 terms. -/
def A302563 (n : ℕ) : ℤ :=
  A302563.P15763102910394918625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1112 terms. -/
def A302563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303548.P8157159056819568346

`∑[A005811(n)-A000120(n)]`
-/

namespace A303548.P8157159056819568346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n - A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303548.P8157159056819568346

noncomputable section

/-- A303548: For any n > 0 and h > 0, let d_h(n) be the distance from n to the nearest number with Hamming weight at most h; a(n) = Sum_{i > 0} d_i(n).

Offset 1, canonical program `A303548.P8157159056819568346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303548 (n : ℕ) : ℤ :=
  A303548.P8157159056819568346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305318.P17853486902960944104

`A000720(A275697(n+2))`
-/

namespace A305318.P17853486902960944104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A275697 (n + 2)).toNat

end

end A305318.P17853486902960944104

noncomputable section

/-- A305318: Numbers k such that A071866(k)=3.

Offset 1, canonical program `A305318.P17853486902960944104`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A275697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305318 (n : ℕ) : ℤ :=
  A305318.P17853486902960944104.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A275697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305318.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306354.P11672414115379192429

`gcd(n+1, A101337(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A306354.P11672414115379192429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A101337 (n + 1))

end

end A306354.P11672414115379192429

noncomputable section

/-- A306354: a(n) = gcd(n, A101337(n)).

Offset 1, canonical program `A306354.P11672414115379192429`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101337, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306354 (n : ℕ) : ℤ :=
  (A306354.P11672414115379192429.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101337, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306354.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306408.P7370464103915550099

`∑{d}[n+1, A058026(#)]`
-/

namespace A306408.P7370464103915550099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A058026 d

end

end A306408.P7370464103915550099

noncomputable section

/-- A306408: a(n) = Sum_{d|n} (-1)^omega(n/d) * d.

Offset 1, canonical program `A306408.P7370464103915550099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306408 (n : ℕ) : ℤ :=
  A306408.P7370464103915550099.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306423.P3507944940431330008

`A067324(n)+A002057(n)`
-/

namespace A306423.P3507944940431330008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067324 n + A002057 n

end

end A306423.P3507944940431330008

noncomputable section

/-- A306423: Number of coalescent histories for pseudocaterpillar gene trees G and caterpillar species trees S.

Offset 4, canonical program `A306423.P3507944940431330008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A306423 (n : ℕ) : ℤ :=
  A306423.P3507944940431330008.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A306423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307150.P1332541620232911485

`A007913(6*(n+1))*A008833(n+1)`
-/

namespace A307150.P1332541620232911485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (6 * (n + 1)) * A008833 (n + 1)

end

end A307150.P1332541620232911485

noncomputable section

/-- A307150: Row 6 of array in A059897.

Offset 1, canonical program `A307150.P1332541620232911485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307150 (n : ℕ) : ℤ :=
  A307150.P1332541620232911485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307247.P2766846640949423295

`A263844(∑[A188374(n+1)])`
-/

namespace A307247.P2766846640949423295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263844 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A307247.P2766846640949423295

noncomputable section

/-- A307247: Second digit in the expansion of n in Fraenkel's exotic ternary representation.

Offset 1, canonical program `A307247.P2766846640949423295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A307247 (n : ℕ) : ℤ :=
  A307247.P2766846640949423295.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A307247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308053.P10381955759339990208

`A116966(lt[2*n+3, A057723(n+1)])`
-/

namespace A308053.P10381955759339990208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A308053.P10381955759339990208

noncomputable section

/-- A308053: Coreful abundant numbers: numbers k such that csigma(k) > 2*k, where csigma(k) is the sum of the coreful divisors of k (A057723).

Offset 1, canonical program `A308053.P10381955759339990208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A308053 (n : ℕ) : ℤ :=
  A308053.P10381955759339990208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A308053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308105.P3201978903205892723

`lt[A101337(n+1), n+1]+1`
-/

namespace A308105.P3201978903205892723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101337 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A308105.P3201978903205892723

noncomputable section

/-- A308105: Numbers m such that m is greater than the sum of the k-th powers of its digits, where k is the number of digits of m.

Offset 1, canonical program `A308105.P3201978903205892723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4791 terms. -/
def A308105 (n : ℕ) : ℤ :=
  (A308105.P3201978903205892723.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4791 terms. -/
def A308105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308187.P8950308941474047097

`1-A079559(n)`
-/

namespace A308187.P8950308941474047097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A079559 n

end

end A308187.P8950308941474047097

noncomputable section

/-- A308187: Fixed point (beginning with a) of the morphism a -> aab, b -> b, over the alphabet {a,b} = {0,1}.

Offset 1, canonical program `A308187.P8950308941474047097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308187 (n : ℕ) : ℤ :=
  A308187.P8950308941474047097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308188.P1668237942996527319

`2-A079559(n)`
-/

namespace A308188.P1668237942996527319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A079559 n

end

end A308188.P1668237942996527319

noncomputable section

/-- A308188: Fixed point (beginning with a) of the morphism a -> aab, b -> b, over the alphabet {a,b} = {1,2}.

Offset 1, canonical program `A308188.P1668237942996527319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308188 (n : ℕ) : ℤ :=
  A308188.P1668237942996527319.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308197.P12884528608171429358

`eq[0, A000035(A278045(n))]`
-/

namespace A308197.P12884528608171429358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A278045 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308197.P12884528608171429358

noncomputable section

/-- A308197: Numbers m such that the tribonacci representation of m (A278038) ends in an even number of 0's.

Offset 1, canonical program `A308197.P12884528608171429358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308197 (n : ℕ) : ℤ :=
  (A308197.P12884528608171429358.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308198.P813162304771468293

`eq[1, A278045(n)%2]`
-/

namespace A308198.P813162304771468293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278045 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308198.P813162304771468293

noncomputable section

/-- A308198: Numbers m such that the tribonacci representation of m (A278038) ends in an odd number of 0's.

Offset 1, canonical program `A308198.P813162304771468293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7044 terms. -/
def A308198 (n : ℕ) : ℤ :=
  (A308198.P813162304771468293.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7044 terms. -/
def A308198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308265.P15256434610230684031

`A034828(n)-A200067(n)`
-/

namespace A308265.P15256434610230684031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 n - A200067 n

end

end A308265.P15256434610230684031

noncomputable section

/-- A308265: Sum of the largest parts in the partitions of n into 3 parts.

Offset 1, canonical program `A308265.P15256434610230684031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4198 terms. -/
def A308265 (n : ℕ) : ℤ :=
  A308265.P15256434610230684031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4198 terms. -/
def A308265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308464.P993622485846860148

`record[A013946(n+1)]`
-/

namespace A308464.P993622485846860148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308464.P993622485846860148

noncomputable section

/-- A308464: Squarefree numbers of the form m^2 + 4.

Offset 1, canonical program `A308464.P993622485846860148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4472 terms. -/
def A308464 (n : ℕ) : ℤ :=
  A308464.P993622485846860148.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4472 terms. -/
def A308464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308567.P2030067286572560780

`∑[A070750(n+1)]-1`
-/

namespace A308567.P2030067286572560780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A308567.P2030067286572560780

noncomputable section

/-- A308567: Consider the second least-significant bits of the first n prime numbers: a(n) equals the number of zeros minus the number of ones.

Offset 1, canonical program `A308567.P2030067286572560780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308567 (n : ℕ) : ℤ :=
  A308567.P2030067286572560780.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308737.P11826907470254659242

`2*A110552(n+1)-A007318(n)`
-/

namespace A308737.P11826907470254659242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110552 (n + 1) - A007318 n

end

end A308737.P11826907470254659242

noncomputable section

/-- A308737: Triangle of scaled 1-tiered binomial coefficients, T(n,k) = 2^(n+1)*(n-k,k)_1 (n >= 0, 0 <= k <= n), where (N,M)_1 is the 1-tiered binomial coefficient.

Offset 0, canonical program `A308737.P11826907470254659242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A308737 (n : ℕ) : ℤ :=
  A308737.P11826907470254659242.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A308737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308901.P14477176325066974205

`1-A080813(n+1)`
-/

namespace A308901.P14477176325066974205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080813 (n + 1)

end

end A308901.P14477176325066974205

noncomputable section

/-- A308901: Lexicographically earliest overlap-free binary sequence.

Offset 1, canonical program `A308901.P14477176325066974205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308901 (n : ℕ) : ℤ :=
  A308901.P14477176325066974205.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309014.P17833545605554751906

`abs(Δ[A002487(abs(1-n))])`
-/

namespace A309014.P17833545605554751906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A309014.P17833545605554751906

noncomputable section

/-- A309014: a(n) = Sum_{k=0..n} (-1)^(n-k) * (Stirling2(n,k) mod 2).

Offset 0, canonical program `A309014.P17833545605554751906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2581 terms. -/
def A309014 (n : ℕ) : ℤ :=
  A309014.P17833545605554751906.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2581 terms. -/
def A309014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309036.P15951794240758812912

`gcd(A007504(n+1), A014285(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A309036.P15951794240758812912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007504 (n + 1)) (A014285 (n + 1))

end

end A309036.P15951794240758812912

noncomputable section

/-- A309036: a(n) = gcd(A007504(n), A014285(n)).

Offset 1, canonical program `A309036.P15951794240758812912`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014285, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309036 (n : ℕ) : ℤ :=
  (A309036.P15951794240758812912.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014285, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309036.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A309119.P4765163560253556487

`∑[A062756(n)-A081603(n)]`
-/

namespace A309119.P4765163560253556487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n - A081603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309119.P4765163560253556487

noncomputable section

/-- A309119: a(n) is the number of 1's minus the number of 2's among the ternary representations of the integers in the interval [0..n].

Offset 0, canonical program `A309119.P4765163560253556487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309119 (n : ℕ) : ℤ :=
  A309119.P4765163560253556487.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310469.P18178074179781318724

`A310409(n)+A002266(n+2)`
-/

namespace A310469.P18178074179781318724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310409 n + A002266 (n + 2)

end

end A310469.P18178074179781318724

noncomputable section

/-- A310469: Coordination sequence Gal.5.141.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310469.P18178074179781318724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2354 terms. -/
def A310469 (n : ℕ) : ℤ :=
  A310469.P18178074179781318724.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2354 terms. -/
def A310469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312124.P5596801148833334333

`A311958(n)+A087509(A004526(n))`
-/

namespace A312124.P5596801148833334333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311958 n + A087509 (A004526 n).toNat

end

end A312124.P5596801148833334333

noncomputable section

/-- A312124: Coordination sequence Gal.5.206.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312124.P5596801148833334333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2490 terms. -/
def A312124 (n : ℕ) : ℤ :=
  A312124.P5596801148833334333.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2490 terms. -/
def A312124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312183.P11443846749482432599

`A311586(n)+Δ[A011860(n)]`
-/

namespace A312183.P11443846749482432599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311586 n + (f1 (n + 1) - f1 n)

end

end A312183.P11443846749482432599

noncomputable section

/-- A312183: Coordination sequence Gal.4.42.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312183.P11443846749482432599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A312183 (n : ℕ) : ℤ :=
  A312183.P11443846749482432599.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A312183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312205.P3565082773998277828

`A311625(n)+Δ[A011861(n)]`
-/

namespace A312205.P3565082773998277828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311625 n + (f1 (n + 1) - f1 n)

end

end A312205.P3565082773998277828

noncomputable section

/-- A312205: Coordination sequence Gal.4.43.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312205.P3565082773998277828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2422 terms. -/
def A312205 (n : ℕ) : ℤ :=
  A312205.P3565082773998277828.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2422 terms. -/
def A312205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312620.P764241885793850481

`A004525(n)+A312526(n)-A004396(A004525(n))`
-/

namespace A312620.P764241885793850481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A312526 n - A004396 (A004525 n).toNat)

end

end A312620.P764241885793850481

noncomputable section

/-- A312620: Coordination sequence Gal.6.256.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312620.P764241885793850481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2452 terms. -/
def A312620 (n : ℕ) : ℤ :=
  A312620.P764241885793850481.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2452 terms. -/
def A312620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312903.P5186887365123370171

`A330025(n-A330025(n))+A311384(n)`
-/

namespace A312903.P5186887365123370171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 ((n : ℤ) - A330025 n).toNat + A311384 n

end

end A312903.P5186887365123370171

noncomputable section

/-- A312903: Coordination sequence Gal.5.65.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312903.P5186887365123370171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2534 terms. -/
def A312903 (n : ℕ) : ℤ :=
  A312903.P5186887365123370171.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2534 terms. -/
def A312903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312983.P16184876047948628761

`A310409(n)-(char[2]+char[3])`
-/

namespace A312983.P16184876047948628761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310409 n - (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

end

end A312983.P16184876047948628761

noncomputable section

/-- A312983: Coordination sequence Gal.3.25.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312983.P16184876047948628761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A312983 (n : ℕ) : ℤ :=
  A312983.P16184876047948628761.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A312983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313116.P8612234978426201844

`A330025(n-A330025(n))+A312162(n)`
-/

namespace A313116.P8612234978426201844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 ((n : ℤ) - A330025 n).toNat + A312162 n

end

end A313116.P8612234978426201844

noncomputable section

/-- A313116: Coordination sequence Gal.5.116.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313116.P8612234978426201844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A313116 (n : ℕ) : ℤ :=
  A313116.P8612234978426201844.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A313116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313152.P10776798816682064911

`A311625(n)+Δ[A011848(n)]`
-/

namespace A313152.P10776798816682064911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311625 n + (f1 (n + 1) - f1 n)

end

end A313152.P10776798816682064911

noncomputable section

/-- A313152: Coordination sequence Gal.5.112.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313152.P10776798816682064911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A313152 (n : ℕ) : ℤ :=
  A313152.P10776798816682064911.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A313152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313154.P7910125893097236437

`A312162(n)+Δ[A011858(n)]`
-/

namespace A313154.P7910125893097236437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312162 n + (f1 (n + 1) - f1 n)

end

end A313154.P7910125893097236437

noncomputable section

/-- A313154: Coordination sequence Gal.6.252.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313154.P7910125893097236437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A313154 (n : ℕ) : ℤ :=
  A313154.P7910125893097236437.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A313154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313201.P17274935370983792056

`A313026(n)+Δ[A011862(n)]`
-/

namespace A313201.P17274935370983792056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313026 n + (f1 (n + 1) - f1 n)

end

end A313201.P17274935370983792056

noncomputable section

/-- A313201: Coordination sequence Gal.5.115.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313201.P17274935370983792056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2432 terms. -/
def A313201 (n : ℕ) : ℤ :=
  A313201.P17274935370983792056.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2432 terms. -/
def A313201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313213.P3463055026651004297

`A313099(n)+Δ[A011865(n)]`
-/

namespace A313213.P3463055026651004297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313099 n + (f1 (n + 1) - f1 n)

end

end A313213.P3463055026651004297

noncomputable section

/-- A313213: Coordination sequence Gal.6.260.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313213.P3463055026651004297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A313213 (n : ℕ) : ℤ :=
  A313213.P3463055026651004297.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A313213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313241.P6304044137677485136

`A313100(n)+Δ[A011862(n)]`
-/

namespace A313241.P6304044137677485136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n + (f1 (n + 1) - f1 n)

end

end A313241.P6304044137677485136

noncomputable section

/-- A313241: Coordination sequence Gal.5.86.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313241.P6304044137677485136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2409 terms. -/
def A313241 (n : ℕ) : ℤ :=
  A313241.P6304044137677485136.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2409 terms. -/
def A313241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313258.P7563474035421243589

`A313115(n)+Δ[floor(C(n, 2)/4)]`
-/

namespace A313258.P7563474035421243589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n + (f1 (n + 1) - f1 n)

end

end A313258.P7563474035421243589

noncomputable section

/-- A313258: Coordination sequence Gal.4.54.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313258.P7563474035421243589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A313258 (n : ℕ) : ℤ :=
  A313258.P7563474035421243589.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A313258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313289.P4085022440508008481

`A313147(n)+Δ[A011860(n)]`
-/

namespace A313289.P4085022440508008481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313147 n + (f1 (n + 1) - f1 n)

end

end A313289.P4085022440508008481

noncomputable section

/-- A313289: Coordination sequence Gal.4.55.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313289.P4085022440508008481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A313289 (n : ℕ) : ℤ :=
  A313289.P4085022440508008481.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A313289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313494.P14635809210881396952

`A313099(n)+A128834(n)`
-/

namespace A313494.P14635809210881396952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313099 n + A128834 n

end

end A313494.P14635809210881396952

noncomputable section

/-- A313494: Coordination sequence Gal.6.155.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313494.P14635809210881396952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A313494 (n : ℕ) : ℤ :=
  A313494.P14635809210881396952.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A313494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313510.P5280808024420407807

`A313110(n)+A128834(n)`
-/

namespace A313510.P5280808024420407807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313110 n + A128834 n

end

end A313510.P5280808024420407807

noncomputable section

/-- A313510: Coordination sequence Gal.3.13.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313510.P5280808024420407807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2439 terms. -/
def A313510 (n : ℕ) : ℤ :=
  A313510.P5280808024420407807.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2439 terms. -/
def A313510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313687.P12936372802294180480

`A313237(n)+A128834(n)`
-/

namespace A313687.P12936372802294180480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313237 n + A128834 n

end

end A313687.P12936372802294180480

noncomputable section

/-- A313687: Coordination sequence Gal.6.202.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313687.P12936372802294180480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2395 terms. -/
def A313687 (n : ℕ) : ℤ :=
  A313687.P12936372802294180480.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2395 terms. -/
def A313687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313707.P5162178319112651376

`A313569(n)+Δ[A011865(n)]`
-/

namespace A313707.P5162178319112651376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313569 n + (f1 (n + 1) - f1 n)

end

end A313707.P5162178319112651376

noncomputable section

/-- A313707: Coordination sequence Gal.6.198.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313707.P5162178319112651376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2345 terms. -/
def A313707 (n : ℕ) : ℤ :=
  A313707.P5162178319112651376.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2345 terms. -/
def A313707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313776.P9904199867289999501

`A313100(n)+A004525(A283971(n))`
-/

namespace A313776.P9904199867289999501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n + A004525 (A283971 n).toNat

end

end A313776.P9904199867289999501

noncomputable section

/-- A313776: Coordination sequence Gal.6.442.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313776.P9904199867289999501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A313776 (n : ℕ) : ℤ :=
  A313776.P9904199867289999501.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A313776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313778.P4235496493182944354

`A313088(n)+A004525(n)`
-/

namespace A313778.P4235496493182944354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313088 n + A004525 n

end

end A313778.P4235496493182944354

noncomputable section

/-- A313778: Coordination sequence Gal.6.203.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313778.P4235496493182944354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2359 terms. -/
def A313778 (n : ℕ) : ℤ :=
  A313778.P4235496493182944354.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2359 terms. -/
def A313778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313791.P11156003567688367397

`A313110(n)+A004525(n)`
-/

namespace A313791.P11156003567688367397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313110 n + A004525 n

end

end A313791.P11156003567688367397

noncomputable section

/-- A313791: Coordination sequence Gal.6.354.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313791.P11156003567688367397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A313791 (n : ℕ) : ℤ :=
  A313791.P11156003567688367397.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A313791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313812.P6628673086175508618

`A312974(n)+A004525(A004525(n)+n)`
-/

namespace A313812.P6628673086175508618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312974 n + A004525 (A004525 n + (n : ℤ)).toNat

end

end A313812.P6628673086175508618

noncomputable section

/-- A313812: Coordination sequence Gal.5.310.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313812.P6628673086175508618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A313812 (n : ℕ) : ℤ :=
  A313812.P6628673086175508618.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A313812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313827.P1632805803004343387

`A313692(n)+A008676(A016777(n))`
-/

namespace A313827.P1632805803004343387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313692 n + A008676 (A016777 n).toNat

end

end A313827.P1632805803004343387

noncomputable section

/-- A313827: Coordination sequence Gal.5.141.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313827.P1632805803004343387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2375 terms. -/
def A313827 (n : ℕ) : ℤ :=
  A313827.P1632805803004343387.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2375 terms. -/
def A313827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313829.P8843607393745764516

`A313720(n)+Δ[A011865(n)]`
-/

namespace A313829.P8843607393745764516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313720 n + (f1 (n + 1) - f1 n)

end

end A313829.P8843607393745764516

noncomputable section

/-- A313829: Coordination sequence Gal.6.203.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313829.P8843607393745764516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2370 terms. -/
def A313829 (n : ℕ) : ℤ :=
  A313829.P8843607393745764516.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2370 terms. -/
def A313829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313833.P8730359671552575781

`A313726(n)+Δ[A011865(n)]`
-/

namespace A313833.P8730359671552575781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313726 n + (f1 (n + 1) - f1 n)

end

end A313833.P8730359671552575781

noncomputable section

/-- A313833: Coordination sequence Gal.6.341.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313833.P8730359671552575781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A313833 (n : ℕ) : ℤ :=
  A313833.P8730359671552575781.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A313833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313835.P13328153377433904358

`abs(A008592(n)-A313614(n))`
-/

namespace A313835.P13328153377433904358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313614 n|

end

end A313835.P13328153377433904358

noncomputable section

/-- A313835: Coordination sequence Gal.5.299.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313835.P13328153377433904358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A313835 (n : ℕ) : ℤ :=
  A313835.P13328153377433904358.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A313835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313860.P2835934445111425257

`A313026(n)+A004396(n)`
-/

namespace A313860.P2835934445111425257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313026 n + A004396 n

end

end A313860.P2835934445111425257

noncomputable section

/-- A313860: Coordination sequence Gal.5.132.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313860.P2835934445111425257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. -/
def A313860 (n : ℕ) : ℤ :=
  A313860.P2835934445111425257.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. -/
def A313860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313872.P15679373648552162511

`abs(A008592(n)-A313569(n))`
-/

namespace A313872.P15679373648552162511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313569 n|

end

end A313872.P15679373648552162511

noncomputable section

/-- A313872: Coordination sequence Gal.6.617.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313872.P15679373648552162511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2311 terms. -/
def A313872 (n : ℕ) : ℤ :=
  A313872.P15679373648552162511.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2311 terms. -/
def A313872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313894.P14764167295564530616

`abs(A008592(n)-A313538(n))`
-/

namespace A313894.P14764167295564530616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313538 n|

end

end A313894.P14764167295564530616

noncomputable section

/-- A313894: Coordination sequence Gal.5.133.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313894.P14764167295564530616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2276 terms. -/
def A313894 (n : ℕ) : ℤ :=
  A313894.P14764167295564530616.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2276 terms. -/
def A313894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313906.P16146185276320745133

`A313721(n)+A002264(A030118(n))`
-/

namespace A313906.P16146185276320745133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313721 n + A002264 (A030118 n).toNat

end

end A313906.P16146185276320745133

noncomputable section

/-- A313906: Coordination sequence Gal.5.308.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313906.P16146185276320745133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A313906 (n : ℕ) : ℤ :=
  A313906.P16146185276320745133.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A313906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313909.P6555194053940030791

`A313100(n)+A004396(n)`
-/

namespace A313909.P6555194053940030791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n + A004396 n

end

end A313909.P6555194053940030791

noncomputable section

/-- A313909: Coordination sequence Gal.6.648.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313909.P6555194053940030791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A313909 (n : ℕ) : ℤ :=
  A313909.P6555194053940030791.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A313909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313926.P12630121113150282533

`A312140(n)+n`
-/

namespace A313926.P12630121113150282533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n + (n : ℤ)

end

end A313926.P12630121113150282533

noncomputable section

/-- A313926: Coordination sequence Gal.4.140.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313926.P12630121113150282533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A313926 (n : ℕ) : ℤ :=
  A313926.P12630121113150282533.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A313926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313930.P828336190909050308

`A313126(n)+A004396(n)`
-/

namespace A313930.P828336190909050308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313126 n + A004396 n

end

end A313930.P828336190909050308

noncomputable section

/-- A313930: Coordination sequence Gal.6.638.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313930.P828336190909050308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A313930 (n : ℕ) : ℤ :=
  A313930.P828336190909050308.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A313930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313937.P16991793084136127565

`A311586(n)+A047263(n+1)`
-/

namespace A313937.P16991793084136127565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311586 n + A047263 (n + 1)

end

end A313937.P16991793084136127565

noncomputable section

/-- A313937: Coordination sequence Gal.6.650.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313937.P16991793084136127565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A313937 (n : ℕ) : ℤ :=
  A313937.P16991793084136127565.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A313937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313938.P107415662170278768

`2*A313916(n)-A313873(n)`
-/

namespace A313938.P107415662170278768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313916 n - A313873 n

end

end A313938.P107415662170278768

noncomputable section

/-- A313938: Coordination sequence Gal.6.662.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313938.P107415662170278768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2241 terms. -/
def A313938 (n : ℕ) : ℤ :=
  A313938.P107415662170278768.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2241 terms. -/
def A313938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314027.P7798730939346477280

`A313506(n)+Δ[A011858(n)]`
-/

namespace A314027.P7798730939346477280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313506 n + (f1 (n + 1) - f1 n)

end

end A314027.P7798730939346477280

noncomputable section

/-- A314027: Coordination sequence Gal.5.87.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314027.P7798730939346477280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A314027 (n : ℕ) : ℤ :=
  A314027.P7798730939346477280.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A314027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314031.P9700743857444675486

`A313556(n)+A002264(n+1)`
-/

namespace A314031.P9700743857444675486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313556 n + A002264 (n + 1)

end

end A314031.P9700743857444675486

noncomputable section

/-- A314031: Coordination sequence Gal.6.340.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314031.P9700743857444675486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A314031 (n : ℕ) : ℤ :=
  A314031.P9700743857444675486.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A314031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314047.P6128783489068935556

`A310412(n)+A004525(A004396(n))`
-/

namespace A314047.P6128783489068935556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310412 n + A004525 (A004396 n).toNat

end

end A314047.P6128783489068935556

noncomputable section

/-- A314047: Coordination sequence Gal.5.308.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314047.P6128783489068935556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. -/
def A314047 (n : ℕ) : ℤ :=
  A314047.P6128783489068935556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. -/
def A314047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314051.P823501490617282787

`A313614(n)+∑[A022003(n)]`
-/

namespace A314051.P823501490617282787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313614 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314051.P823501490617282787

noncomputable section

/-- A314051: Coordination sequence Gal.5.308.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314051.P823501490617282787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. -/
def A314051 (n : ℕ) : ℤ :=
  A314051.P823501490617282787.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. -/
def A314051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314068.P13841784540353294122

`A310409(n)+A004525(n)`
-/

namespace A314068.P13841784540353294122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310409 n + A004525 n

end

end A314068.P13841784540353294122

noncomputable section

/-- A314068: Coordination sequence Gal.3.55.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314068.P13841784540353294122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. -/
def A314068 (n : ℕ) : ℤ :=
  A314068.P13841784540353294122.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. -/
def A314068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314087.P6203034715714524951

`A330025(n-A330025(n))+A313692(n)`
-/

namespace A314087.P6203034715714524951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 ((n : ℤ) - A330025 n).toNat + A313692 n

end

end A314087.P6203034715714524951

noncomputable section

/-- A314087: Coordination sequence Gal.5.67.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314087.P6203034715714524951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2408 terms. -/
def A314087 (n : ℕ) : ℤ :=
  A314087.P6203034715714524951.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2408 terms. -/
def A314087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314093.P5564140878793647355

`A313127(n)+A253262(n)`
-/

namespace A314093.P5564140878793647355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313127 n + A253262 n

end

end A314093.P5564140878793647355

noncomputable section

/-- A314093: Coordination sequence Gal.5.137.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314093.P5564140878793647355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A314093 (n : ℕ) : ℤ :=
  A314093.P5564140878793647355.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A314093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314107.P2990438990150127076

`A313485(n)+n-A004396(A004525(n))`
-/

namespace A314107.P2990438990150127076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313485 n + ((n : ℤ) - A004396 (A004525 n).toNat)

end

end A314107.P2990438990150127076

noncomputable section

/-- A314107: Coordination sequence Gal.6.205.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314107.P2990438990150127076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A314107 (n : ℕ) : ℤ :=
  A314107.P2990438990150127076.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A314107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314116.P3477874341695128704

`2*A314112(n)-A314111(n)`
-/

namespace A314116.P3477874341695128704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314112 n - A314111 n

end

end A314116.P3477874341695128704

noncomputable section

/-- A314116: Coordination sequence Gal.6.652.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314116.P3477874341695128704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. -/
def A314116 (n : ℕ) : ℤ :=
  A314116.P3477874341695128704.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. -/
def A314116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314123.P17491408075998672522

`A313115(n)+A242062(A008586(n))`
-/

namespace A314123.P17491408075998672522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n + A242062 (A008586 n).toNat

end

end A314123.P17491408075998672522

noncomputable section

/-- A314123: Coordination sequence Gal.5.310.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314123.P17491408075998672522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. -/
def A314123 (n : ℕ) : ℤ :=
  A314123.P17491408075998672522.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. -/
def A314123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314192.P4251070382321067139

`A313831(n)+∑[A022003(n)]`
-/

namespace A314192.P4251070382321067139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313831 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314192.P4251070382321067139

noncomputable section

/-- A314192: Coordination sequence Gal.6.651.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314192.P4251070382321067139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. -/
def A314192 (n : ℕ) : ℤ :=
  A314192.P4251070382321067139.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. -/
def A314192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314204.P2426223721515965919

`A004396(n)+A314108(n)-A004525(n)`
-/

namespace A314204.P2426223721515965919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314108 n - A004525 n)

end

end A314204.P2426223721515965919

noncomputable section

/-- A314204: Coordination sequence Gal.6.341.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314204.P2426223721515965919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2336 terms. -/
def A314204 (n : ℕ) : ℤ :=
  A314204.P2426223721515965919.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2336 terms. -/
def A314204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314231.P16998588149716495728

`A314141(n)+Δ[A011862(n)]`
-/

namespace A314231.P16998588149716495728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314141 n + (f1 (n + 1) - f1 n)

end

end A314231.P16998588149716495728

noncomputable section

/-- A314231: Coordination sequence Gal.5.305.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314231.P16998588149716495728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2245 terms. -/
def A314231 (n : ℕ) : ℤ :=
  A314231.P16998588149716495728.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2245 terms. -/
def A314231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314236.P11197453166256301907

`A313088(n)+n`
-/

namespace A314236.P11197453166256301907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313088 n + (n : ℤ)

end

end A314236.P11197453166256301907

noncomputable section

/-- A314236: Coordination sequence Gal.6.626.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314236.P11197453166256301907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A314236 (n : ℕ) : ℤ :=
  A314236.P11197453166256301907.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A314236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314240.P18428589485690285850

`A313099(n)+n`
-/

namespace A314240.P18428589485690285850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313099 n + (n : ℤ)

end

end A314240.P18428589485690285850

noncomputable section

/-- A314240: Coordination sequence Gal.6.643.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314240.P18428589485690285850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2228 terms. -/
def A314240 (n : ℕ) : ℤ :=
  A314240.P18428589485690285850.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2228 terms. -/
def A314240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314242.P9930865792257095390

`2*A313875(n)-A072154(A005843(n))`
-/

namespace A314242.P9930865792257095390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313875 n - A072154 (A005843 n).toNat

end

end A314242.P9930865792257095390

noncomputable section

/-- A314242: Coordination sequence Gal.4.146.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314242.P9930865792257095390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2200 terms. -/
def A314242 (n : ℕ) : ℤ :=
  A314242.P9930865792257095390.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2200 terms. -/
def A314242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314247.P7920899849790497135

`A313110(n)+n`
-/

namespace A314247.P7920899849790497135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313110 n + (n : ℤ)

end

end A314247.P7920899849790497135

noncomputable section

/-- A314247: Coordination sequence Gal.3.50.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314247.P7920899849790497135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2226 terms. -/
def A314247 (n : ℕ) : ℤ :=
  A314247.P7920899849790497135.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2226 terms. -/
def A314247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314250.P3588750543650791249

`A313115(n)+n`
-/

namespace A314250.P3588750543650791249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n + (n : ℤ)

end

end A314250.P3588750543650791249

noncomputable section

/-- A314250: Coordination sequence Gal.4.137.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314250.P3588750543650791249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2195 terms. -/
def A314250 (n : ℕ) : ℤ :=
  A314250.P3588750543650791249.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2195 terms. -/
def A314250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314251.P8552691768143809971

`A314163(n)+Δ[A011862(n)]`
-/

namespace A314251.P8552691768143809971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314163 n + (f1 (n + 1) - f1 n)

end

end A314251.P8552691768143809971

noncomputable section

/-- A314251: Coordination sequence Gal.5.294.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314251.P8552691768143809971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2087 terms. -/
def A314251 (n : ℕ) : ℤ :=
  A314251.P8552691768143809971.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2087 terms. -/
def A314251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314410.P14222717731131208766

`A047363(n+1)+A312655(n)-A265227(n+1)`
-/

namespace A314410.P14222717731131208766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (n + 1) + (A312655 n - A265227 (n + 1))

end

end A314410.P14222717731131208766

noncomputable section

/-- A314410: Coordination sequence Gal.4.18.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314410.P14222717731131208766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. -/
def A314410 (n : ℕ) : ℤ :=
  A314410.P14222717731131208766.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. -/
def A314410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314683.P15823530726852142928

`A004525(n)+A313693(n)-n`
-/

namespace A314683.P15823530726852142928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313693 n - (n : ℤ))

end

end A314683.P15823530726852142928

noncomputable section

/-- A314683: Coordination sequence Gal.6.130.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314683.P15823530726852142928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2368 terms. -/
def A314683 (n : ℕ) : ℤ :=
  A314683.P15823530726852142928.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2368 terms. -/
def A314683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314753.P9843815199901969934

`A312974(n)+A238469(n)`
-/

namespace A314753.P9843815199901969934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312974 n + A238469 n

end

end A314753.P9843815199901969934

noncomputable section

/-- A314753: Coordination sequence Gal.4.52.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314753.P9843815199901969934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2477 terms. -/
def A314753 (n : ℕ) : ℤ :=
  A314753.P9843815199901969934.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2477 terms. -/
def A314753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314758.P11719452081678354248

`A042965(A314712(n)+1-n)`
-/

namespace A314758.P11719452081678354248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A314712 n + (1 - (n : ℤ))).toNat

end

end A314758.P11719452081678354248

noncomputable section

/-- A314758: Coordination sequence Gal.6.193.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314758.P11719452081678354248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A314758 (n : ℕ) : ℤ :=
  A314758.P11719452081678354248.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A314758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314969.P17921854442604734378

`A312140(n)+A004525(n)`
-/

namespace A314969.P17921854442604734378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n + A004525 n

end

end A314969.P17921854442604734378

noncomputable section

/-- A314969: Coordination sequence Gal.4.78.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314969.P17921854442604734378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2379 terms. -/
def A314969 (n : ℕ) : ℤ :=
  A314969.P17921854442604734378.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2379 terms. -/
def A314969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314970.P16762046121003014077

`A004525(n)+A314903(n)-A004525(A004396(n))`
-/

namespace A314970.P16762046121003014077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314903 n - A004525 (A004396 n).toNat)

end

end A314970.P16762046121003014077

noncomputable section

/-- A314970: Coordination sequence Gal.6.341.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314970.P16762046121003014077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2308 terms. -/
def A314970 (n : ℕ) : ℤ :=
  A314970.P16762046121003014077.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2308 terms. -/
def A314970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315030.P10325846217098792989

`A314893(n)+Δ[A011865(n)]`
-/

namespace A315030.P10325846217098792989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314893 n + (f1 (n + 1) - f1 n)

end

end A315030.P10325846217098792989

noncomputable section

/-- A315030: Coordination sequence Gal.6.344.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315030.P10325846217098792989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2396 terms. -/
def A315030 (n : ℕ) : ℤ :=
  A315030.P10325846217098792989.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2396 terms. -/
def A315030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315034.P9202512944006640459

`A314894(n)+Δ[A011864(n)]`
-/

namespace A315034.P9202512944006640459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314894 n + (f1 (n + 1) - f1 n)

end

end A315034.P9202512944006640459

noncomputable section

/-- A315034: Coordination sequence Gal.6.323.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315034.P9202512944006640459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A315034 (n : ℕ) : ℤ :=
  A315034.P9202512944006640459.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A315034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315067.P1327162686597900604

`A312526(n)+A004525(n)`
-/

namespace A315067.P1327162686597900604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312526 n + A004525 n

end

end A315067.P1327162686597900604

noncomputable section

/-- A315067: Coordination sequence Gal.6.349.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315067.P1327162686597900604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A315067 (n : ℕ) : ℤ :=
  A315067.P1327162686597900604.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A315067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315105.P8958806795281290820

`A312484(n)+A004525(A047263(n+1))`
-/

namespace A315105.P8958806795281290820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312484 n + A004525 (A047263 (n + 1)).toNat

end

end A315105.P8958806795281290820

noncomputable section

/-- A315105: Coordination sequence Gal.6.363.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315105.P8958806795281290820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2340 terms. -/
def A315105 (n : ℕ) : ℤ :=
  A315105.P8958806795281290820.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2340 terms. -/
def A315105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315171.P4366655332392387557

`A311384(n)+2*A330025(n)`
-/

namespace A315171.P4366655332392387557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311384 n + 2 * A330025 n

end

end A315171.P4366655332392387557

noncomputable section

/-- A315171: Coordination sequence Gal.6.220.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315171.P4366655332392387557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2531 terms. -/
def A315171 (n : ℕ) : ℤ :=
  A315171.P4366655332392387557.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2531 terms. -/
def A315171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315198.P16559012369285710955

`A313721(n)+A128834(A004396(2*n))`
-/

namespace A315198.P16559012369285710955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313721 n + A128834 (A004396 (2 * n)).toNat

end

end A315198.P16559012369285710955

noncomputable section

/-- A315198: Coordination sequence Gal.5.86.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315198.P16559012369285710955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A315198 (n : ℕ) : ℤ :=
  A315198.P16559012369285710955.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A315198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315255.P10615745907849045230

`A330025(n)+A314898(n)`
-/

namespace A315255.P10615745907849045230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A314898 n

end

end A315255.P10615745907849045230

noncomputable section

/-- A315255: Coordination sequence Gal.5.67.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315255.P10615745907849045230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2386 terms. -/
def A315255 (n : ℕ) : ℤ :=
  A315255.P10615745907849045230.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2386 terms. -/
def A315255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315256.P12326446692328451720

`A314828(n)+A004396(A004396(n))`
-/

namespace A315256.P12326446692328451720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314828 n + A004396 (A004396 n).toNat

end

end A315256.P12326446692328451720

noncomputable section

/-- A315256: Coordination sequence Gal.5.111.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315256.P12326446692328451720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2386 terms. -/
def A315256 (n : ℕ) : ℤ :=
  A315256.P12326446692328451720.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2386 terms. -/
def A315256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315303.P11415585503323507612

`A312561(n)+2*A330025(n)`
-/

namespace A315303.P11415585503323507612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312561 n + 2 * A330025 n

end

end A315303.P11415585503323507612

noncomputable section

/-- A315303: Coordination sequence Gal.6.247.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315303.P11415585503323507612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2406 terms. -/
def A315303 (n : ℕ) : ℤ :=
  A315303.P11415585503323507612.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2406 terms. -/
def A315303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315304.P8913509134367770047

`2*A314828(n)-A008574(n)`
-/

namespace A315304.P8913509134367770047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314828 n - A008574 n

end

end A315304.P8913509134367770047

noncomputable section

/-- A315304: Coordination sequence Gal.5.84.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315304.P8913509134367770047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2380 terms. -/
def A315304 (n : ℕ) : ℤ :=
  A315304.P8913509134367770047.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2380 terms. -/
def A315304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315308.P10890972487147772624

`abs(A008592(n)-A310412(n))`
-/

namespace A315308.P10890972487147772624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310412 n|

end

end A315308.P10890972487147772624

noncomputable section

/-- A315308: Coordination sequence Gal.5.299.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315308.P10890972487147772624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A315308 (n : ℕ) : ℤ :=
  A315308.P10890972487147772624.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A315308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315340.P1423207088725425978

`2*A314894(n)-A008574(n)`
-/

namespace A315340.P1423207088725425978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314894 n - A008574 n

end

end A315340.P1423207088725425978

noncomputable section

/-- A315340: Coordination sequence Gal.6.625.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315340.P1423207088725425978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A315340 (n : ℕ) : ℤ :=
  A315340.P1423207088725425978.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A315340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315344.P6791626864233840389

`2*A314898(n)-A008574(n)`
-/

namespace A315344.P6791626864233840389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314898 n - A008574 n

end

end A315344.P6791626864233840389

noncomputable section

/-- A315344: Coordination sequence Gal.6.640.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315344.P6791626864233840389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A315344 (n : ℕ) : ℤ :=
  A315344.P6791626864233840389.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A315344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315351.P1121042344882834040

`A314160(n)+A244895(2*n)`
-/

namespace A315351.P1121042344882834040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314160 n + A244895 (2 * n)

end

end A315351.P1121042344882834040

noncomputable section

/-- A315351: Coordination sequence Gal.6.650.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315351.P1121042344882834040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A315351 (n : ℕ) : ℤ :=
  A315351.P1121042344882834040.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A315351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315395.P11298806320610192218

`A313485(n)+A046978(A004396(n))`
-/

namespace A315395.P11298806320610192218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313485 n + A046978 (A004396 n).toNat

end

end A315395.P11298806320610192218

noncomputable section

/-- A315395: Coordination sequence Gal.6.120.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315395.P11298806320610192218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2504 terms. -/
def A315395 (n : ℕ) : ℤ :=
  A315395.P11298806320610192218.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2504 terms. -/
def A315395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315397.P1916688396986312343

`A330025(n)+A313506(n)`
-/

namespace A315397.P1916688396986312343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A313506 n

end

end A315397.P1916688396986312343

noncomputable section

/-- A315397: Coordination sequence Gal.5.55.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315397.P1916688396986312343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2469 terms. -/
def A315397 (n : ℕ) : ℤ :=
  A315397.P1916688396986312343.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2469 terms. -/
def A315397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315403.P14978821845076500409

`A313485(n)+A004396(A004525(n))`
-/

namespace A315403.P14978821845076500409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313485 n + A004396 (A004525 n).toNat

end

end A315403.P14978821845076500409

noncomputable section

/-- A315403: Coordination sequence Gal.6.264.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315403.P14978821845076500409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2395 terms. -/
def A315403 (n : ℕ) : ℤ :=
  A315403.P14978821845076500409.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2395 terms. -/
def A315403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315413.P11341791677008129181

`A313485(n)+A004525(n)`
-/

namespace A315413.P11341791677008129181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313485 n + A004525 n

end

end A315413.P11341791677008129181

noncomputable section

/-- A315413: Coordination sequence Gal.6.157.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315413.P11341791677008129181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A315413 (n : ℕ) : ℤ :=
  A315413.P11341791677008129181.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A315413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315432.P14363789502883768676

`3*n+A311586(n)-A265227(n+1)`
-/

namespace A315432.P14363789502883768676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (A311586 n - A265227 (n + 1))

end

end A315432.P14363789502883768676

noncomputable section

/-- A315432: Coordination sequence Gal.6.650.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315432.P14363789502883768676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2249 terms. -/
def A315432 (n : ℕ) : ℤ :=
  A315432.P14363789502883768676.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2249 terms. -/
def A315432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315453.P11183259861073746390

`A315182(n)+∑[A021913(n)]`
-/

namespace A315453.P11183259861073746390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315182 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315453.P11183259861073746390

noncomputable section

/-- A315453: Coordination sequence Gal.6.207.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315453.P11183259861073746390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A315453 (n : ℕ) : ℤ :=
  A315453.P11183259861073746390.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A315453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315465.P8648594998862142925

`abs(A008592(n)-A313119(n))`
-/

namespace A315465.P8648594998862142925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313119 n|

end

end A315465.P8648594998862142925

noncomputable section

/-- A315465: Coordination sequence Gal.6.157.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315465.P8648594998862142925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A315465 (n : ℕ) : ℤ :=
  A315465.P8648594998862142925.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A315465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315475.P8010595968173060010

`abs(10*n-A313100(n))`
-/

namespace A315475.P8010595968173060010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313100 n|

end

end A315475.P8010595968173060010

noncomputable section

/-- A315475: Coordination sequence Gal.5.133.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315475.P8010595968173060010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A315475 (n : ℕ) : ℤ :=
  A315475.P8010595968173060010.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A315475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315488.P5611134213742253392

`A313556(n)+A004396(n)`
-/

namespace A315488.P5611134213742253392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313556 n + A004396 n

end

end A315488.P5611134213742253392

noncomputable section

/-- A315488: Coordination sequence Gal.6.343.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315488.P5611134213742253392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2295 terms. -/
def A315488 (n : ℕ) : ℤ :=
  A315488.P5611134213742253392.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2295 terms. -/
def A315488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315495.P15314594483852604152

`A313580(n)+A004396(n)`
-/

namespace A315495.P15314594483852604152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313580 n + A004396 n

end

end A315495.P15314594483852604152

noncomputable section

/-- A315495: Coordination sequence Gal.5.135.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315495.P15314594483852604152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2245 terms. -/
def A315495 (n : ℕ) : ℤ :=
  A315495.P15314594483852604152.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2245 terms. -/
def A315495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315510.P17321051507186431582

`abs(A008592(n)-A312975(n))`
-/

namespace A315510.P17321051507186431582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312975 n|

end

end A315510.P17321051507186431582

noncomputable section

/-- A315510: Coordination sequence Gal.5.290.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315510.P17321051507186431582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A315510 (n : ℕ) : ℤ :=
  A315510.P17321051507186431582.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A315510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315521.P715979807562858068

`A315486(n)+Δ[A011864(n)]`
-/

namespace A315521.P715979807562858068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315486 n + (f1 (n + 1) - f1 n)

end

end A315521.P715979807562858068

noncomputable section

/-- A315521: Coordination sequence Gal.6.620.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315521.P715979807562858068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A315521 (n : ℕ) : ℤ :=
  A315521.P715979807562858068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A315521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315526.P9064506857305553506

`A315491(n)+Δ[A011864(n)]`
-/

namespace A315526.P9064506857305553506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315491 n + (f1 (n + 1) - f1 n)

end

end A315526.P9064506857305553506

noncomputable section

/-- A315526: Coordination sequence Gal.6.637.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315526.P9064506857305553506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2214 terms. -/
def A315526 (n : ℕ) : ℤ :=
  A315526.P9064506857305553506.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2214 terms. -/
def A315526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315534.P15836177857492630035

`A313720(n)+A004396(n)`
-/

namespace A315534.P15836177857492630035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313720 n + A004396 n

end

end A315534.P15836177857492630035

noncomputable section

/-- A315534: Coordination sequence Gal.6.624.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315534.P15836177857492630035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A315534 (n : ℕ) : ℤ :=
  A315534.P15836177857492630035.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A315534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315535.P14487333064084558685

`A313721(n)+A004396(n)`
-/

namespace A315535.P14487333064084558685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313721 n + A004396 n

end

end A315535.P14487333064084558685

noncomputable section

/-- A315535: Coordination sequence Gal.5.304.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315535.P14487333064084558685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. -/
def A315535 (n : ℕ) : ℤ :=
  A315535.P14487333064084558685.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. -/
def A315535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315540.P594240874885915824

`A314893(n)+n`
-/

namespace A315540.P594240874885915824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314893 n + (n : ℤ)

end

end A315540.P594240874885915824

noncomputable section

/-- A315540: Coordination sequence Gal.6.643.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315540.P594240874885915824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. -/
def A315540 (n : ℕ) : ℤ :=
  A315540.P594240874885915824.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. -/
def A315540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315543.P9834102323510964404

`A314896(n)+n`
-/

namespace A315543.P9834102323510964404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314896 n + (n : ℤ)

end

end A315543.P9834102323510964404

noncomputable section

/-- A315543: Coordination sequence Gal.4.137.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315543.P9834102323510964404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A315543 (n : ℕ) : ℤ :=
  A315543.P9834102323510964404.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A315543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315546.P1451297170771805050

`A313746(n)+A004396(n)`
-/

namespace A315546.P1451297170771805050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313746 n + A004396 n

end

end A315546.P1451297170771805050

noncomputable section

/-- A315546: Coordination sequence Gal.5.294.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315546.P1451297170771805050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A315546 (n : ℕ) : ℤ :=
  A315546.P1451297170771805050.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A315546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315547.P9153730377971794613

`A314898(n)+n`
-/

namespace A315547.P9153730377971794613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314898 n + (n : ℤ)

end

end A315547.P9153730377971794613

noncomputable section

/-- A315547: Coordination sequence Gal.5.295.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315547.P9153730377971794613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A315547 (n : ℕ) : ℤ :=
  A315547.P9153730377971794613.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A315547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315634.P4185785318995043649

`abs(A008592(n)-A312680(n))`
-/

namespace A315634.P4185785318995043649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312680 n|

end

end A315634.P4185785318995043649

noncomputable section

/-- A315634: Coordination sequence Gal.4.55.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315634.P4185785318995043649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2345 terms. -/
def A315634 (n : ℕ) : ℤ :=
  A315634.P4185785318995043649.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2345 terms. -/
def A315634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315637.P8693043612611580160

`abs(A008592(n)-A312658(n))`
-/

namespace A315637.P8693043612611580160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312658 n|

end

end A315637.P8693043612611580160

noncomputable section

/-- A315637: Coordination sequence Gal.6.352.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315637.P8693043612611580160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A315637 (n : ℕ) : ℤ :=
  A315637.P8693043612611580160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A315637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315644.P13515404179755767154

`abs(10*n-A312561(n))`
-/

namespace A315644.P13515404179755767154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A312561 n|

end

end A315644.P13515404179755767154

noncomputable section

/-- A315644: Coordination sequence Gal.6.325.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315644.P13515404179755767154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2334 terms. -/
def A315644 (n : ℕ) : ℤ :=
  A315644.P13515404179755767154.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2334 terms. -/
def A315644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315646.P17156318483534215033

`2*A313538(n)-A008574(n)`
-/

namespace A315646.P17156318483534215033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313538 n - A008574 n

end

end A315646.P17156318483534215033

noncomputable section

/-- A315646: Coordination sequence Gal.5.290.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315646.P17156318483534215033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. -/
def A315646 (n : ℕ) : ℤ :=
  A315646.P17156318483534215033.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. -/
def A315646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315653.P10545093397592680194

`abs(A008592(n)-A312484(n))`
-/

namespace A315653.P10545093397592680194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312484 n|

end

end A315653.P10545093397592680194

noncomputable section

/-- A315653: Coordination sequence Gal.5.305.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315653.P10545093397592680194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A315653 (n : ℕ) : ℤ :=
  A315653.P10545093397592680194.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A315653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315679.P7787860321428887982

`abs(A008592(n)-A312162(n))`
-/

namespace A315679.P7787860321428887982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312162 n|

end

end A315679.P7787860321428887982

noncomputable section

/-- A315679: Coordination sequence Gal.6.252.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315679.P7787860321428887982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A315679 (n : ℕ) : ℤ :=
  A315679.P7787860321428887982.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A315679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315689.P11366853551913023718

`A314094(n)+A004525(n)`
-/

namespace A315689.P11366853551913023718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314094 n + A004525 n

end

end A315689.P11366853551913023718

noncomputable section

/-- A315689: Coordination sequence Gal.6.624.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315689.P11366853551913023718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A315689 (n : ℕ) : ℤ :=
  A315689.P11366853551913023718.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A315689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315703.P17229668802607991947

`A313556(n)+n`
-/

namespace A315703.P17229668802607991947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313556 n + (n : ℤ)

end

end A315703.P17229668802607991947

noncomputable section

/-- A315703: Coordination sequence Gal.6.643.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315703.P17229668802607991947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2236 terms. -/
def A315703 (n : ℕ) : ℤ :=
  A315703.P17229668802607991947.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2236 terms. -/
def A315703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315704.P11710660165894118179

`A313561(n)+n`
-/

namespace A315704.P11710660165894118179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313561 n + (n : ℤ)

end

end A315704.P11710660165894118179

noncomputable section

/-- A315704: Coordination sequence Gal.4.137.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315704.P11710660165894118179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2217 terms. -/
def A315704 (n : ℕ) : ℤ :=
  A315704.P11710660165894118179.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2217 terms. -/
def A315704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315710.P3884167862571020999

`A313569(n)+n`
-/

namespace A315710.P3884167862571020999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313569 n + (n : ℤ)

end

end A315710.P3884167862571020999

noncomputable section

/-- A315710: Coordination sequence Gal.6.628.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315710.P3884167862571020999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2194 terms. -/
def A315710 (n : ℕ) : ℤ :=
  A315710.P3884167862571020999.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2194 terms. -/
def A315710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315732.P13634539582885315922

`2*A313692(n)-A008574(n)`
-/

namespace A315732.P13634539582885315922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313692 n - A008574 n

end

end A315732.P13634539582885315922

noncomputable section

/-- A315732: Coordination sequence Gal.6.640.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315732.P13634539582885315922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A315732 (n : ℕ) : ℤ :=
  A315732.P13634539582885315922.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A315732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315737.P10781297996396530912

`A313916(n)+A253262(n)`
-/

namespace A315737.P10781297996396530912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313916 n + A253262 n

end

end A315737.P10781297996396530912

noncomputable section

/-- A315737: Coordination sequence Gal.5.90.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315737.P10781297996396530912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A315737 (n : ℕ) : ℤ :=
  A315737.P10781297996396530912.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A315737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315738.P6865487008344501452

`A315515(n)+A004525(n-A004396(n))`
-/

namespace A315738.P6865487008344501452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315515 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A315738.P6865487008344501452

noncomputable section

/-- A315738: Coordination sequence Gal.6.343.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315738.P6865487008344501452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2283 terms. -/
def A315738 (n : ℕ) : ℤ :=
  A315738.P6865487008344501452.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2283 terms. -/
def A315738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315744.P16771703429452510069

`A314094(n)+A004396(n)`
-/

namespace A315744.P16771703429452510069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314094 n + A004396 n

end

end A315744.P16771703429452510069

noncomputable section

/-- A315744: Coordination sequence Gal.6.643.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315744.P16771703429452510069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2227 terms. -/
def A315744 (n : ℕ) : ℤ :=
  A315744.P16771703429452510069.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2227 terms. -/
def A315744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315745.P1982268987440364031

`A313685(n)+n`
-/

namespace A315745.P1982268987440364031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313685 n + (n : ℤ)

end

end A315745.P1982268987440364031

noncomputable section

/-- A315745: Coordination sequence Gal.4.137.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315745.P1982268987440364031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2219 terms. -/
def A315745 (n : ℕ) : ℤ :=
  A315745.P1982268987440364031.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2219 terms. -/
def A315745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315748.P2319200276665506335

`A314099(n)+A004396(n)`
-/

namespace A315748.P2319200276665506335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314099 n + A004396 n

end

end A315748.P2319200276665506335

noncomputable section

/-- A315748: Coordination sequence Gal.5.294.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315748.P2319200276665506335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. -/
def A315748 (n : ℕ) : ℤ :=
  A315748.P2319200276665506335.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. -/
def A315748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315749.P13778468742197853903

`A313692(n)+n`
-/

namespace A315749.P13778468742197853903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313692 n + (n : ℤ)

end

end A315749.P13778468742197853903

noncomputable section

/-- A315749: Coordination sequence Gal.5.295.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315749.P13778468742197853903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2199 terms. -/
def A315749 (n : ℕ) : ℤ :=
  A315749.P13778468742197853903.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2199 terms. -/
def A315749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315751.P7664283178857553201

`A313693(n)+n`
-/

namespace A315751.P7664283178857553201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313693 n + (n : ℤ)

end

end A315751.P7664283178857553201

noncomputable section

/-- A315751: Coordination sequence Gal.6.628.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315751.P7664283178857553201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2175 terms. -/
def A315751 (n : ℕ) : ℤ :=
  A315751.P7664283178857553201.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2175 terms. -/
def A315751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315755.P16242125238513878474

`abs(A008592(n)-A311384(n))`
-/

namespace A315755.P16242125238513878474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311384 n|

end

end A315755.P16242125238513878474

noncomputable section

/-- A315755: Coordination sequence Gal.6.333.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315755.P16242125238513878474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2252 terms. -/
def A315755 (n : ℕ) : ℤ :=
  A315755.P16242125238513878474.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2252 terms. -/
def A315755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315757.P1538617664775847239

`2*A313721(n)-A008574(n)`
-/

namespace A315757.P1538617664775847239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313721 n - A008574 n

end

end A315757.P1538617664775847239

noncomputable section

/-- A315757: Coordination sequence Gal.5.294.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315757.P1538617664775847239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2176 terms. -/
def A315757 (n : ℕ) : ℤ :=
  A315757.P1538617664775847239.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2176 terms. -/
def A315757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315763.P15886996602990195972

`A313720(n)+n`
-/

namespace A315763.P15886996602990195972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313720 n + (n : ℤ)

end

end A315763.P15886996602990195972

noncomputable section

/-- A315763: Coordination sequence Gal.6.628.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315763.P15886996602990195972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A315763 (n : ℕ) : ℤ :=
  A315763.P15886996602990195972.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A315763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315764.P17078646225777516565

`A008486(2*(A301718(n)-A313100(n)))`
-/

namespace A315764.P17078646225777516565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * (A301718 n - A313100 n)).toNat

end

end A315764.P17078646225777516565

noncomputable section

/-- A315764: Coordination sequence Gal.4.138.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315764.P17078646225777516565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2217 terms. -/
def A315764 (n : ℕ) : ℤ :=
  A315764.P17078646225777516565.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2217 terms. -/
def A315764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315788.P8782784959098183992

`A008458(A008458(n)-(A310441(n)+A004525(n)))`
-/

namespace A315788.P8782784959098183992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008458 n - (A310441 n + A004525 n)).toNat

end

end A315788.P8782784959098183992

noncomputable section

/-- A315788: Coordination sequence Gal.3.4.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315788.P8782784959098183992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2413 terms. -/
def A315788 (n : ℕ) : ℤ :=
  A315788.P8782784959098183992.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2413 terms. -/
def A315788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315943.P3704534385650621552

`A315847(n)+A087509(n)`
-/

namespace A315943.P3704534385650621552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315847 n + A087509 n

end

end A315943.P3704534385650621552

noncomputable section

/-- A315943: Coordination sequence Gal.5.229.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315943.P3704534385650621552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A315943 (n : ℕ) : ℤ :=
  A315943.P3704534385650621552.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A315943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316824.P14787056752320120660

`A316829(floor(n/3))`
-/

namespace A316824.P14787056752320120660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 ⌊(n : ℚ) / 3⌋.toNat

end

end A316824.P14787056752320120660

noncomputable section

/-- A316824: A second example of a word that is uniform morphic and recurrent, but neither pure morphic nor primitive morphic.

Offset 0, canonical program `A316824.P14787056752320120660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A316824 (n : ℕ) : ℤ :=
  A316824.P14787056752320120660.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A316824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317193.P13677178970524234186

`A057078(2*A278045(n+1))`
-/

namespace A317193.P13677178970524234186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (2 * A278045 (n + 1)).toNat

end

end A317193.P13677178970524234186

noncomputable section

/-- A317193: First differences of A317192.

Offset 1, canonical program `A317193.P13677178970524234186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317193 (n : ℕ) : ℤ :=
  A317193.P13677178970524234186.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318060.P6031681000613286800

`(n+1)/gcd(n+1, ∑[A111408(n)])`
-/

namespace A318060.P6031681000613286800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111408 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A318060.P6031681000613286800

noncomputable section

/-- A318060: a(n) is the denominator of sigma(sigma(n))/n.

Offset 1, canonical program `A318060.P6031681000613286800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318060 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318060.P6031681000613286800.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318274.P2677241247150053118

`gcd(∑[A023531(n)], A103452(n))`
-/

namespace A318274.P2677241247150053118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A103452 n)

end

end A318274.P2677241247150053118

noncomputable section

/-- A318274: Triangle read by rows: T(n,k) = n for 0 < k < n and T(n,0) = T(n,n) = 1.

Offset 0, canonical program `A318274.P2677241247150053118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318274 (n : ℕ) : ℤ :=
  (A318274.P2677241247150053118.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318463.P15419518407747005956

`(A000203(n+1)-A318462(n+1))/2`
-/

namespace A318463.P15419518407747005956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A318462 (n + 1) : ℚ) / 2

end

end A318463.P15419518407747005956

noncomputable section

/-- A318463: a(n) = Sum_{d|n, d < n/d} (d AND n/d), where AND is bitwise-and (A004198).

Offset 1, canonical program `A318463.P15419518407747005956`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318462, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318463 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318463.P15419518407747005956.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318462, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318463.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319132.P2708375044891269701

`∑{d}[n+1, A048250(#)]`
-/

namespace A319132.P2708375044891269701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048250 d

end

end A319132.P2708375044891269701

noncomputable section

/-- A319132: a(n) = Sum_{d|n} Sum_{j|d} mu(j)^2*j, where mu = Möbius function (A008683).

Offset 1, canonical program `A319132.P2708375044891269701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319132 (n : ℕ) : ℤ :=
  A319132.P2708375044891269701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319296.P17393791425463573242

`A007429(n+1)%A000203(n+1)`
-/

namespace A319296.P17393791425463573242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007429 (n + 1)) (A000203 (n + 1))

end

end A319296.P17393791425463573242

noncomputable section

/-- A319296: a(n) = (Sum_{d|n} sigma(d)) mod sigma(n).

Offset 1, canonical program `A319296.P17393791425463573242`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319296 (n : ℕ) : ℤ :=
  A319296.P17393791425463573242.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319296.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320065.P10804250572307599739

`A244160(∑[A267708(n)])`
-/

namespace A320065.P10804250572307599739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244160 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A320065.P10804250572307599739

noncomputable section

/-- A320065: a(n) is the smallest integer i such that binomial(2i,i) > n.

Offset 1, canonical program `A320065.P10804250572307599739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A320065 (n : ℕ) : ℤ :=
  A320065.P10804250572307599739.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A320065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320527.P1973516301187565761

`A056328(n+1)-A304974(n+1)`
-/

namespace A320527.P1973516301187565761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056328 (n + 1) - A304974 (n + 1)

end

end A320527.P1973516301187565761

noncomputable section

/-- A320527: Number of chiral pairs of color patterns (set partitions) in a row of length n using exactly 4 colors (subsets).

Offset 1, canonical program `A320527.P1973516301187565761`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304974, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320527 (n : ℕ) : ℤ :=
  A320527.P1973516301187565761.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304974, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320527.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320859.P8143034707769871832

`2^A172404(n+1)`
-/

namespace A320859.P8143034707769871832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A172404 (n + 1) : ℤ)

end

end A320859.P8143034707769871832

noncomputable section

/-- A320859: Powers of 2 with initial digit 3.

Offset 1, canonical program `A320859.P8143034707769871832`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A172404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320859 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A320859.P8143034707769871832.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A172404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320859.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320866.P15964022209481706421

`eq[1, A105700(n*A105700(A230631(n)))]`
-/

namespace A320866.P15964022209481706421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 ((n : ℤ) * A105700 (A230631 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320866.P15964022209481706421

noncomputable section

/-- A320866: Primes such that p + digitsum(p, base 4) is again a prime.

Offset 1, canonical program `A320866.P15964022209481706421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A320866 (n : ℕ) : ℤ :=
  (A320866.P15964022209481706421.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A320866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320916.P15605735686363910133

`∑[A011782(n)*A080813(n+6)]`
-/

namespace A320916.P15605735686363910133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A080813 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320916.P15605735686363910133

noncomputable section

/-- A320916: Consider A010060 as a 2-adic number ...100110010110, then a(n) is its approximation up to 2^n.

Offset 0, canonical program `A320916.P15605735686363910133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A320916 (n : ℕ) : ℤ :=
  A320916.P15605735686363910133.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A320916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321234.P1035964924695441674

`Δ[n²]*A001803(n)`
-/

namespace A321234.P1035964924695441674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A001803 n

end

end A321234.P1035964924695441674

noncomputable section

/-- A321234: Denominator of series expansion of the hypergeometric series 3F2([1/2, 1, 1], [3/2, 3/2], x).

Offset 0, canonical program `A321234.P1035964924695441674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A321234 (n : ℕ) : ℤ :=
  A321234.P1035964924695441674.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A321234.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A322001.P3183650715240148903

`A244158(n)+A059995(A059995(n))`
-/

namespace A322001.P3183650715240148903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244158 n + A059995 (A059995 n).toNat

end

end A322001.P3183650715240148903

noncomputable section

/-- A322001: Digits of n interpreted in factorial base: a(Sum d_k*10^k) = Sum d_k*k!

Offset 0, canonical program `A322001.P3183650715240148903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A322001 (n : ℕ) : ℤ :=
  A322001.P3183650715240148903.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A322001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322655.P5096016706217459484

`A007429(n+1)/gcd(A000203(n+1), A007429(n+1))`
-/

namespace A322655.P5096016706217459484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007429 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (A007429 (n + 1)) : ℚ)

end

end A322655.P5096016706217459484

noncomputable section

/-- A322655: Numerator of (Sum_{d|n} sigma(d)) / sigma(n).

Offset 1, canonical program `A322655.P5096016706217459484`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322655 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322655.P5096016706217459484.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322655.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322656.P17788882958945356723

`A000203(n+1)/gcd(A000203(n+1), A007429(n+1))`
-/

namespace A322656.P17788882958945356723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (A007429 (n + 1)) : ℚ)

end

end A322656.P17788882958945356723

noncomputable section

/-- A322656: Denominator of (Sum_{d|n} sigma(d)) / sigma(n).

Offset 1, canonical program `A322656.P17788882958945356723`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322656 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322656.P17788882958945356723.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322656.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323211.P6731529718550413430

`a(n-1)-A113313(n)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A323211.P6731529718550413430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) - A113313 n

end

end A323211.P6731529718550413430

noncomputable section

/-- A323211: Level 1 of Pascal's pyramid. T(n, k) triangle read by rows for n >= 0 and 0 <= k <= n.

Offset 0, canonical program `A323211.P6731529718550413430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323211 (n : ℕ) : ℤ :=
  A323211.P6731529718550413430.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323231.P6944103331787896278

`a(n-1)-A113313(n)` with `a(0)=1, a(1)=2`
-/

namespace A323231.P6944103331787896278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - A113313 n

end

end A323231.P6944103331787896278

noncomputable section

/-- A323231: A(n, k) = [x^k] (1/(1-x) + x/(1-x)^n), square array read by descending antidiagonals for n, k >= 0.

Offset 0, canonical program `A323231.P6944103331787896278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323231 (n : ℕ) : ℤ :=
  A323231.P6944103331787896278.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323505.P2579351898169798948

`a(floor(n/2))*A091090(2*n+1)` with `a(0)=1, a(1)=2`
-/

namespace A323505.P2579351898169798948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A091090 (2 * n + 1)

end

end A323505.P2579351898169798948

noncomputable section

/-- A323505: Mirror image of (denominators of) Bernoulli tree, A106831.

Offset 0, canonical program `A323505.P2579351898169798948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A323505 (n : ℕ) : ℤ :=
  A323505.P2579351898169798948.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A323505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323651.P5601353070125800456

`(n%2+1)*A147582(or(1, n))`
-/

namespace A323651.P5601353070125800456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A147582 (Nat.lor 1 n)

end

end A323651.P5601353070125800456

noncomputable section

/-- A323651: Number of elements added at n-th stage to the toothpick structure of A323650.

Offset 1, canonical program `A323651.P5601353070125800456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323651 (n : ℕ) : ℤ :=
  A323651.P5601353070125800456.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324477.P14351997783011068846

`∑[char[∑[A364377(n+1)+1]]]+1`
-/

namespace A324477.P14351997783011068846
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364377 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A324477.P14351997783011068846

noncomputable section

/-- A324477: k appears t+1 times, where t = A364377(k) is the number of trailing zeros in the greedy Jacobsthal representation of k, A265747(k).

Offset 1, canonical program `A324477.P14351997783011068846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324477 (n : ℕ) : ℤ :=
  (A324477.P14351997783011068846.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324552.P10145515765642831646

`A324549(n+1)+2*A000225(n)`
-/

namespace A324552.P10145515765642831646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324549 (n + 1) + 2 * A000225 n

end

end A324552.P10145515765642831646

noncomputable section

/-- A324552: a(n) = A324542(2*prime(n)).

Offset 1, canonical program `A324552.P10145515765642831646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A324552 (n : ℕ) : ℤ :=
  A324552.P10145515765642831646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A324552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324649.P3122999716778518876

`eq[n+1, A318458(n+1)]+1`
-/

namespace A324649.P3122999716778518876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318458 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324649.P3122999716778518876

noncomputable section

/-- A324649: Numbers k such that A318458(k) (bitwise-AND of k and sigma(k)-k) is equal to k.

Offset 1, canonical program `A324649.P3122999716778518876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 622 terms. -/
def A324649 (n : ℕ) : ℤ :=
  (A324649.P3122999716778518876.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 622 terms. -/
def A324649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324727.P4614541480028550780

`A324726(eq[1, A324726(n+1)%2]+1)`
-/

namespace A324727.P4614541480028550780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324726 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324726 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A324727.P4614541480028550780

noncomputable section

/-- A324727: Odd numbers such that 2n is equal to A318466(n), bitor(2*n,sigma(n)), where bitor is A003986.

Offset 1, canonical program `A324727.P4614541480028550780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324727 (n : ℕ) : ℤ :=
  A324727.P4614541480028550780.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324913.P16517888723639947016

`∑[2^n*A140434(n+1)]+1`
-/

namespace A324913.P16517888723639947016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A140434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A324913.P16517888723639947016

noncomputable section

/-- A324913: a(n) = Sum_{k=1..n} 2^k * phi(k), where phi is the Euler totient function A000010.

Offset 1, canonical program `A324913.P16517888723639947016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A324913 (n : ℕ) : ℤ :=
  A324913.P16517888723639947016.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A324913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325004.P14878560307000842946

`A325006(n+1)+A098568(A099375(n)+n)`
-/

namespace A325004.P14878560307000842946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325006 (n + 1) + A098568 (A099375 n + (n : ℤ)).toNat

end

end A325004.P14878560307000842946

noncomputable section

/-- A325004: Array read by descending antidiagonals: A(n,k) is the number of oriented colorings of the facets of a regular n-dimensional orthotope using up to k colors.

Offset 1, canonical program `A325004.P14878560307000842946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A325004 (n : ℕ) : ℤ :=
  A325004.P14878560307000842946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A325004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325005.P561351407942519342

`A098568(A099375(n)+n)`
-/

namespace A325005.P561351407942519342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098568 (A099375 n + (n : ℤ)).toNat

end

end A325005.P561351407942519342

noncomputable section

/-- A325005: Array read by descending antidiagonals: A(n,k) is the number of unoriented colorings of the facets of a regular n-dimensional orthotope using up to k colors.

Offset 1, canonical program `A325005.P561351407942519342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A325005 (n : ℕ) : ℤ :=
  A325005.P561351407942519342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A325005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325007.P7573087612639521914

`A098568(A099375(n)+n)-A325006(n+1)`
-/

namespace A325007.P7573087612639521914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098568 (A099375 n + (n : ℤ)).toNat - A325006 (n + 1)

end

end A325007.P7573087612639521914

noncomputable section

/-- A325007: Array read by descending antidiagonals: A(n,k) is the number of achiral colorings of the facets of a regular n-dimensional orthotope using up to k colors.

Offset 1, canonical program `A325007.P7573087612639521914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1035 terms. -/
def A325007 (n : ℕ) : ℤ :=
  A325007.P7573087612639521914.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1035 terms. -/
def A325007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325030.P6646308341091855978

`A206032(n+1)*A266265(n+1)`
-/

namespace A325030.P6646308341091855978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206032 (n + 1) * A266265 (n + 1)

end

end A325030.P6646308341091855978

noncomputable section

/-- A325030: a(n) = Product_{d|n} (sigma(d)*pod(d)) where sigma(k) = the sum of the divisors of k (A000203) and pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A325030.P6646308341091855978`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206032, A266265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325030 (n : ℕ) : ℤ :=
  A325030.P6646308341091855978.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206032, A266265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325030.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325122.P1813601502794908379

`A325121(n+1)-∑{e}[n+1, #]`
-/

namespace A325122.P1813601502794908379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325121 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A325122.P1813601502794908379

noncomputable section

/-- A325122: Sum of binary digits of the prime indices of n, minus Omega(n).

Offset 1, canonical program `A325122.P1813601502794908379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325122 (n : ℕ) : ℤ :=
  A325122.P1813601502794908379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325316.P4536201652722982420

`or(A048250(n+1), A162296(n+1))`
-/

namespace A325316.P4536201652722982420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048250 (n + 1)) (A162296 (n + 1))

end

end A325316.P4536201652722982420

noncomputable section

/-- A325316: a(n) = A048250(n) OR A162296(n), where OR is the bitwise-OR, A003986.

Offset 1, canonical program `A325316.P4536201652722982420`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162296, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325316 (n : ℕ) : ℤ :=
  A325316.P4536201652722982420.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162296, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325316.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325385.P6193507000372290571

`gcd(n+1-A048250(n+1), n+1-A162296(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A325385.P6193507000372290571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) - A048250 (n + 1)) ((n + 1 : ℤ) - A162296 (n + 1))

end

end A325385.P6193507000372290571

noncomputable section

/-- A325385: a(n) = gcd(n-A048250(n), n-A162296(n)).

Offset 1, canonical program `A325385.P6193507000372290571`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162296, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325385 (n : ℕ) : ℤ :=
  (A325385.P6193507000372290571.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162296, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325385.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326401.P8847676069389999364

`A326399(n+1)-A326400(n+1)`
-/

namespace A326401.P8847676069389999364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326399 (n + 1) - A326400 (n + 1)

end

end A326401.P8847676069389999364

noncomputable section

/-- A326401: Expansion of Sum_{k>=1} k * x^k / (1 + x^k + x^(2*k)).

Offset 1, canonical program `A326401.P8847676069389999364`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326399, A326400, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326401 (n : ℕ) : ℤ :=
  A326401.P8847676069389999364.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326399, A326400, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326401.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326420.P15749464054433305275

`Δ[A284907(n+1)]`
-/

namespace A326420.P15749464054433305275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A326420.P15749464054433305275

noncomputable section

/-- A326420: Fixed point of the morphism 1->13, 2->132, 3->1322.

Offset 1, canonical program `A326420.P15749464054433305275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A326420 (n : ℕ) : ℤ :=
  A326420.P15749464054433305275.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A326420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326503.P13743079522954983078

`A078181(n+1)-A078182(n+1)`
-/

namespace A326503.P13743079522954983078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (n + 1) - A078182 (n + 1)

end

end A326503.P13743079522954983078

noncomputable section

/-- A326503: Expansion of Sum_{k>=1} x^k * (1 - x^(2*k)) / (1 + x^k + x^(2*k))^2.

Offset 1, canonical program `A326503.P13743079522954983078`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078181, A078182, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326503 (n : ℕ) : ℤ :=
  A326503.P13743079522954983078.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078181, A078182, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326503.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326820.P7475238842077640535

`A003984(lt[A099026(n), 1])`
-/

namespace A326820.P7475238842077640535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099026 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A326820.P7475238842077640535

noncomputable section

/-- A326820: Irregular triangle read by rows; for n >= 0, the n-th row corresponds to the elements of the set {(n-k) OR k, k = 0..n}, in ascending order (where OR denotes the bitwise OR operator).

Offset 0, canonical program `A326820.P7475238842077640535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. -/
def A326820 (n : ℕ) : ℤ :=
  A326820.P7475238842077640535.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. -/
def A326820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326826.P16122372011493243852

`∑{d}[n+1, A007429(#)*A023896((n+1)/#)]`
-/

namespace A326826.P16122372011493243852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A023896 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326826.P16122372011493243852

noncomputable section

/-- A326826: a(n) = (1/2) * Sum_{d|n} (sigma_1(d) + sigma_2(d)), where sigma_1 = A000203 and sigma_2 = A001157.

Offset 1, canonical program `A326826.P16122372011493243852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326826 (n : ℕ) : ℤ :=
  A326826.P16122372011493243852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327096.P11519137177335428529

`(A007429(n+1)+A288417(n+1))/2`
-/

namespace A327096.P11519137177335428529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007429 (n + 1) + A288417 (n + 1) : ℚ) / 2

end

end A327096.P11519137177335428529

noncomputable section

/-- A327096: Expansion of Sum_{k>=1} sigma(k) * x^k / (1 - x^(2*k)), where sigma = A000203.

Offset 1, canonical program `A327096.P11519137177335428529`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, A288417, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327096 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A327096.P11519137177335428529.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, A288417, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327096.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327122.P14365338832682024670

`∑{d}[n+1, A050469(#)]`
-/

namespace A327122.P14365338832682024670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050469 d

end

end A327122.P14365338832682024670

noncomputable section

/-- A327122: Expansion of Sum_{k>=1} sigma(k) * x^k / (1 + x^(2*k)), where sigma = A000203.

Offset 1, canonical program `A327122.P14365338832682024670`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050469, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327122 (n : ℕ) : ℤ :=
  A327122.P14365338832682024670.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050469, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327122.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327174.P2217078710281402132

`A096270(2*n*A187944(n+1))`
-/

namespace A327174.P2217078710281402132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (2 * ((n : ℤ) * A187944 (n + 1))).toNat

end

end A327174.P2217078710281402132

noncomputable section

/-- A327174: a(n) = [(2*n+1)*r] - [(n+1)*r] - [n*r], where [ ] = floor and r = (1+sqrt(5))/2.

Offset 0, canonical program `A327174.P2217078710281402132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327174 (n : ℕ) : ℤ :=
  A327174.P2217078710281402132.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327177.P10177580896383627063

`A342281(n)-A191405(n)`
-/

namespace A327177.P10177580896383627063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342281 n - A191405 n

end

end A327177.P10177580896383627063

noncomputable section

/-- A327177: a(n) = [(2n+1)r] - [(n+1)r] - [nr], where [ ] = floor and r = sqrt(2).

Offset 0, canonical program `A327177.P10177580896383627063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327177 (n : ℕ) : ℤ :=
  A327177.P10177580896383627063.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327181.P1963751843994086053

`lt[n*A327180(n), n]`
-/

namespace A327181.P1963751843994086053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327180 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327181.P1963751843994086053

noncomputable section

/-- A327181: Positions of 0's in {A327180(n) : n > 0}.

Offset 1, canonical program `A327181.P1963751843994086053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. -/
def A327181 (n : ℕ) : ℤ :=
  (A327181.P1963751843994086053.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. -/
def A327181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327182.P8957837183894890012

`lt[0, A327180(n)]`
-/

namespace A327182.P8957837183894890012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327182.P8957837183894890012

noncomputable section

/-- A327182: Positions of 1's in {A327180(n) : n > 0}.

Offset 1, canonical program `A327182.P8957837183894890012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A327182 (n : ℕ) : ℤ :=
  (A327182.P8957837183894890012.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A327182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327202.P4862676345002138946

`A096270(2*A089809(n+1)+n)`
-/

namespace A327202.P4862676345002138946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (2 * A089809 (n + 1) + (n : ℤ)).toNat

end

end A327202.P4862676345002138946

noncomputable section

/-- A327202: a(n) = [(2n+2)r] - [(n+2)r] - [nr], where [ ] = floor and r = (1+sqrt(5))/2.

Offset 0, canonical program `A327202.P4862676345002138946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327202 (n : ℕ) : ℤ :=
  A327202.P4862676345002138946.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327205.P854694592881596088

`A022842(n+1)-A191406(n)`
-/

namespace A327205.P854694592881596088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022842 (n + 1) - A191406 n

end

end A327205.P854694592881596088

noncomputable section

/-- A327205: a(n) = [(2n+2)r] - [(n+2)r] - [nr], where [ ] = floor and r = sqrt(2).

Offset 0, canonical program `A327205.P854694592881596088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327205 (n : ℕ) : ℤ :=
  A327205.P854694592881596088.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327303.P4551057521544503163

`(A268922(n)+A048899(n))%A000351(n)`
-/

namespace A327303.P4551057521544503163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268922 n + A048899 n) (A000351 n)

end

end A327303.P4551057521544503163

noncomputable section

/-- A327303: One of the two successive approximations up to 5^n for the 5-adic integer sqrt(-9). This is the 4 (mod 5) case (except for n = 0).

Offset 0, canonical program `A327303.P4551057521544503163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A327303 (n : ℕ) : ℤ :=
  A327303.P4551057521544503163.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A327303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327611.P162445837171172901

`A056328(n+1)-A056473(n+1)`
-/

namespace A327611.P162445837171172901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056328 (n + 1) - A056473 (n + 1)

end

end A327611.P162445837171172901

noncomputable section

/-- A327611: Number of length n reversible string structures that are not palindromic using exactly four different colors.

Offset 1, canonical program `A327611.P162445837171172901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A327611 (n : ℕ) : ℤ :=
  A327611.P162445837171172901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A327611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327748.P16131196812816451464

`p?[A054763(n+1)+A045319(n+1)]`
-/

namespace A327748.P16131196812816451464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054763 (n + 1) + A045319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A327748.P16131196812816451464

noncomputable section

/-- A327748: Primes p such that the sum of p and the prime before p is not a multiple of 3.

Offset 1, canonical program `A327748.P16131196812816451464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4021 terms. -/
def A327748 (n : ℕ) : ℤ :=
  A327748.P16131196812816451464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4021 terms. -/
def A327748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328014.P12714233293390767781

`lt[n+1, A057521(n+1)²]+1`
-/

namespace A328014.P12714233293390767781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A328014.P12714233293390767781

noncomputable section

/-- A328014: Numbers whose powerful part (A057521) is larger than their powerfree part (A055231).

Offset 1, canonical program `A328014.P12714233293390767781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1413 terms. -/
def A328014 (n : ℕ) : ℤ :=
  (A328014.P12714233293390767781.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1413 terms. -/
def A328014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328202.P11274015948377113960

`A051543(n+1)*A051543(n+2)`
-/

namespace A328202.P11274015948377113960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051543 (n + 1) * A051543 (n + 2)

end

end A328202.P11274015948377113960

noncomputable section

/-- A328202: a(n) is the greatest common divisor of all the numbers in row n of Pascal's triangle excluding 1 and n.

Offset 4, canonical program `A328202.P11274015948377113960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A328202 (n : ℕ) : ℤ :=
  A328202.P11274015948377113960.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A328202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328407.P14348967757254063720

`∑{d}[A006519(n+1), A000290((n+1)/#)]`
-/

namespace A328407.P14348967757254063720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000290 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328407.P14348967757254063720

noncomputable section

/-- A328407: G.f. A(x) satisfies: A(x) = A(x^2) + x * (1 + x) / (1 - x)^3.

Offset 1, canonical program `A328407.P14348967757254063720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328407 (n : ℕ) : ℤ :=
  A328407.P14348967757254063720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329728.P16334695943169972259

`∑[∑{d}[(n+1)/A057521(n+1), #]]`
-/

namespace A329728.P16334695943169972259
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A057521 (n + 1) : ℚ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f2 n)).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329728.P16334695943169972259

noncomputable section

/-- A329728: Partial sums of A092261.

Offset 1, canonical program `A329728.P16334695943169972259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329728 (n : ℕ) : ℤ :=
  (A329728.P16334695943169972259.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330175.P16793899005492460367

`A321371(n+1)+1+n`
-/

namespace A330175.P16793899005492460367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321371 (n + 1) + 1 + (n : ℤ)

end

end A330175.P16793899005492460367

noncomputable section

/-- A330175: a(n) = n + floor(ns/r) + floor(nt/r), where r = sqrt(5) - 2, s = sqrt(5) - 1, t = sqrt(5).

Offset 1, canonical program `A330175.P16793899005492460367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330175 (n : ℕ) : ℤ :=
  A330175.P16793899005492460367.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330409.P9787691834635988053

`A049452(A158015(n+1))`
-/

namespace A330409.P9787691834635988053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049452 (A158015 (n + 1)).toNat

end

end A330409.P9787691834635988053

noncomputable section

/-- A330409: Semiprimes of the form p(6p - 1).

Offset 1, canonical program `A330409.P9787691834635988053`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158015, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330409 (n : ℕ) : ℤ :=
  A330409.P9787691834635988053.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158015, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330409.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A330559.P10771393297654737098

`∑[A080378(n+1)-1]`
-/

namespace A330559.P10771393297654737098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080378 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330559.P10771393297654737098

noncomputable section

/-- A330559: a(n) = (number of primes p <= prime(n) with Delta(p) == 2 (mod 4)) - (number of primes p <= prime(n) with Delta(p) == 0 (mod 4)), where Delta(p) = nextprime(p) - p.

Offset 1, canonical program `A330559.P10771393297654737098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330559 (n : ℕ) : ℤ :=
  A330559.P10771393297654737098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330857.P8267642898900047615

`A330856(n+1)-∑{d}[n+1, #%or(1, #)]`
-/

namespace A330857.P8267642898900047615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330856 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d % Nat.lor 1 d : ℕ) : ℤ)

end

end A330857.P8267642898900047615

noncomputable section

/-- A330857: Total sum of divisors of all the parts in the partitions of n into 2 distinct parts.

Offset 1, canonical program `A330857.P8267642898900047615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330857 (n : ℕ) : ℤ :=
  A330857.P8267642898900047615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330904.P16669225455194206827

`eq[A000120(n), A065363(n)]`
-/

namespace A330904.P16669225455194206827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330904.P16669225455194206827

noncomputable section

/-- A330904: Numbers m such that the number of 1's in the binary expansion of m equals the sum of the balanced ternary trits of m.

Offset 1, canonical program `A330904.P16669225455194206827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A330904 (n : ℕ) : ℤ :=
  (A330904.P16669225455194206827.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A330904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330931.P13737479232060882146

`A049445(eq[1, A049445(n+2)-A049445(n+1)]+1)`
-/

namespace A330931.P13737479232060882146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (n + 2) - A049445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A330931.P13737479232060882146

noncomputable section

/-- A330931: Numbers k such that both k and k + 1 are Niven numbers in base 2 (A049445).

Offset 1, canonical program `A330931.P13737479232060882146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1847 terms. -/
def A330931 (n : ℕ) : ℤ :=
  A330931.P13737479232060882146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1847 terms. -/
def A330931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331397.P13626299062190034795

`A011782(n)*A226994(n)`
-/

namespace A331397.P13626299062190034795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A226994 n

end

end A331397.P13626299062190034795

noncomputable section

/-- A331397: Number of nonnegative integer matrices with 2 distinct columns and any number of nonzero rows with column sums n and columns in decreasing lexicographic order.

Offset 0, canonical program `A331397.P13626299062190034795`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A226994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331397 (n : ℕ) : ℤ :=
  A331397.P13626299062190034795.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A226994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331397.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331476.P4019166169547797384

`A014263(10^n)`
-/

namespace A331476.P4019166169547797384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (10 ^ n)

end

end A331476.P4019166169547797384

noncomputable section

/-- A331476: The (10^n)-th even-digit number.

Offset 0, canonical program `A331476.P4019166169547797384`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014263, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331476 (n : ℕ) : ℤ :=
  A331476.P4019166169547797384.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014263, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331476.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331635.P6175707136444989633

`lt[(n+1)%A339965(n+1), 1]+1`
-/

namespace A331635.P6175707136444989633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A339965 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A331635.P6175707136444989633

noncomputable section

/-- A331635: Numbers m such that -m^2 == m (mod sigma(m)) where sigma = A000203.

Offset 1, canonical program `A331635.P6175707136444989633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. -/
def A331635 (n : ℕ) : ℤ :=
  (A331635.P6175707136444989633.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. -/
def A331635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332028.P14597317824532883109

`∑[A332026(A181440(n+1))-1]`
-/

namespace A332028.P14597317824532883109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332026 (A181440 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332028.P14597317824532883109

noncomputable section

/-- A332028: Savannah problem: number of distinct possible populations after n weeks, not allowing new populations after the empty set.

Offset 1, canonical program `A332028.P14597317824532883109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332028 (n : ℕ) : ℤ :=
  A332028.P14597317824532883109.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332264.P12409925469232935551

`A143128(n+1)-A024916(n+1)`
-/

namespace A332264.P12409925469232935551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143128 (n + 1) - A024916 (n + 1)

end

end A332264.P12409925469232935551

noncomputable section

/-- A332264: Partial sums of A334136.

Offset 1, canonical program `A332264.P12409925469232935551`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143128, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332264 (n : ℕ) : ℤ :=
  A332264.P12409925469232935551.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143128, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332264.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332457.P13672119517976752287

`∩[A332226(n+1), A332456(n+1)]`
-/

namespace A332457.P13672119517976752287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332457.P13672119517976752287

noncomputable section

/-- A332457: Numbers k such that sigma(k) == 2 modulo 8 and sigma(sigma(k)) == 6 modulo 8.

Offset 1, canonical program `A332457.P13672119517976752287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A332457 (n : ℕ) : ℤ :=
  (A332457.P13672119517976752287.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A332457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332496.P9101858789091568414

`A124847(n+1)-A127954(n+1)`
-/

namespace A332496.P9101858789091568414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124847 (n + 1) - A127954 (n + 1)

end

end A332496.P9101858789091568414

noncomputable section

/-- A332496: Triangular array T(n,k): the number of not necessarily proper colorings of the complete graph on n unlabeled vertices minus an edge using exactly k colors.

Offset 1, canonical program `A332496.P9101858789091568414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A332496 (n : ℕ) : ℤ :=
  A332496.P9101858789091568414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A332496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332789.P9919765140023462536

`Δ[A007069(n+1)]`
-/

namespace A332789.P9919765140023462536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332789.P9919765140023462536

noncomputable section

/-- A332789: First differences of the iterated Beatty sequence A007069.

Offset 1, canonical program `A332789.P9919765140023462536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A332789 (n : ℕ) : ℤ :=
  A332789.P9919765140023462536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A332789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333174.P15533700412874415267

`∑[A333173(n)]`
-/

namespace A333174.P15533700412874415267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333174.P15533700412874415267

noncomputable section

/-- A333174: a(n) = Sum_{k=0..n} r_4(k^2 + 1), where r_4(k) is the number of ways of writing k as a sum of 4 squares (A000118).

Offset 0, canonical program `A333174.P15533700412874415267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333174 (n : ℕ) : ℤ :=
  A333174.P15533700412874415267.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333869.P12729571298558811765

`∪[A036690(n+2), A079704(n+2)]`
-/

namespace A333869.P12729571298558811765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079704 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A333869.P12729571298558811765

noncomputable section

/-- A333869: Perimeters of integer-sided triangles with at least one prime altitude.

Offset 1, canonical program `A333869.P12729571298558811765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. -/
def A333869 (n : ℕ) : ℤ :=
  (A333869.P12729571298558811765.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. -/
def A333869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333975.P16248602436189593744

`eq[0, A023416(log2(A001316(n)))]`
-/

namespace A333975.P16248602436189593744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333975.P16248602436189593744

noncomputable section

/-- A333975: a(1) = 1, a(2) = 2 and for n > 2, a(n) is the smallest number not of the form OR(a(i),a(j)) for 1 <= i < j < n.

Offset 1, canonical program `A333975.P16248602436189593744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333975 (n : ℕ) : ℤ :=
  (A333975.P16248602436189593744.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334117.P7213088979993363911

`eq[2, A082898(A093178(n))]`
-/

namespace A334117.P7213088979993363911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082898 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334117.P7213088979993363911

noncomputable section

/-- A334117: Odd numbers with abundancy >= 3/2; that is, numbers m such that sigma(m) >= 3m/2.

Offset 1, canonical program `A334117.P7213088979993363911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1444 terms. -/
def A334117 (n : ℕ) : ℤ :=
  (A334117.P7213088979993363911.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1444 terms. -/
def A334117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334163.P14937506091226471622

`A000040(A247515(n+1))`
-/

namespace A334163.P14937506091226471622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A247515 (n + 1)).toNat

end

end A334163.P14937506091226471622

noncomputable section

/-- A334163: Primes p whose continued fraction expansion of sqrt(p) has a 1 in the second position.

Offset 1, canonical program `A334163.P14937506091226471622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4976 terms. -/
def A334163 (n : ℕ) : ℤ :=
  A334163.P14937506091226471622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4976 terms. -/
def A334163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334172.P15112562064051135258

`A334143(n+1)+A175330(n+1)`
-/

namespace A334172.P15112562064051135258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334143 (n + 1) + A175330 (n + 1)

end

end A334172.P15112562064051135258

noncomputable section

/-- A334172: Bitwise XNOR of prime(n) and prime(n + 1).

Offset 1, canonical program `A334172.P15112562064051135258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334172 (n : ℕ) : ℤ :=
  A334172.P15112562064051135258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334840.P13982886850013945746

`A001316(record[A199398(n+4)])`
-/

namespace A334840.P13982886850013945746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199398 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A334840.P13982886850013945746

noncomputable section

/-- A334840: a(1) = 1, a(n) = a(n-1)/gcd(a(n-1),n) if this gcd is > 1, else a(n) = 4*a(n-1).

Offset 1, canonical program `A334840.P13982886850013945746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334840 (n : ℕ) : ℤ :=
  A334840.P13982886850013945746.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334923.P17285238801038389709

`2*A003991(n+1)-A334922(n+1)`
-/

namespace A334923.P17285238801038389709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003991 (n + 1) - A334922 (n + 1)

end

end A334923.P17285238801038389709

noncomputable section

/-- A334923: Square array T(n,k) = ((5/2)*n*k - (1/2)*A319929(n,k))/2, n >= 1, k >= 1, read by antidiagonals.

Offset 1, canonical program `A334923.P17285238801038389709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A334923 (n : ℕ) : ℤ :=
  A334923.P17285238801038389709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A334923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334977.P15905360750646034264

`A030983(n+3)+A000007(n)-A006013(n)`
-/

namespace A334977.P15905360750646034264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030983 (n + 3) + (A000007 n - A006013 n)

end

end A334977.P15905360750646034264

noncomputable section

/-- A334977: a(n) is the total number of down steps between the (n-1)-th and n-th up steps in all 2_1-Dyck paths of length 3*n. A 2_1-Dyck path is a lattice path with steps (1, 2), (1, -1) that starts and ends at y = 0 and stays above the line y = -1.

Offset 0, canonical program `A334977.P15905360750646034264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A334977 (n : ℕ) : ℤ :=
  A334977.P15905360750646034264.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A334977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335660.P10141285614841351256

`n+1-A334714(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A335660.P10141285614841351256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A334714 (n + 1)

end

end A335660.P10141285614841351256

noncomputable section

/-- A335660: a(n) = n - A334714(n).

Offset 1, canonical program `A335660.P10141285614841351256`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A334714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335660 (n : ℕ) : ℤ :=
  A335660.P10141285614841351256.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A334714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335668.P17103927484557371149

`2*A246692(n+2)`
-/

namespace A335668.P17103927484557371149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A246692 (n + 2)

end

end A335668.P17103927484557371149

noncomputable section

/-- A335668: Even composites m such that A002203(m) == 2 (mod m).

Offset 1, canonical program `A335668.P17103927484557371149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A335668 (n : ℕ) : ℤ :=
  A335668.P17103927484557371149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A335668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335716.P5178440708128976525

`char[A095116(A007918(n))-n]`
-/

namespace A335716.P5178440708128976525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (A007918 n).toNat - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A335716.P5178440708128976525

noncomputable section

/-- A335716: a(n) = pi(pi(n)) - pi(Sum_{k=1..n-1} a(k)) with a(1) = 0.

Offset 1, canonical program `A335716.P5178440708128976525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335716 (n : ℕ) : ℤ :=
  (A335716.P5178440708128976525.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336126.P1639370391942920803

`2*A089309(n+1)-abs(A056594(n))`
-/

namespace A336126.P1639370391942920803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089309 (n + 1) - |A056594 n|

end

end A336126.P1639370391942920803

noncomputable section

/-- A336126: Lexicographically earliest infinite sequence such that a(i) = a(j) => A000035(i) = A000035(j) and A007814(1+A000265(i)) = A007814(1+A000265(j)), for all i, j >= 1.

Offset 1, canonical program `A336126.P1639370391942920803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336126 (n : ℕ) : ℤ :=
  A336126.P1639370391942920803.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336369.P11619332729759975965

`A000040(A336367(n+1))`
-/

namespace A336369.P11619332729759975965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A336367 (n + 1)).toNat

end

end A336369.P11619332729759975965

noncomputable section

/-- A336369: Primes p(n) such that gcd(n, prime(n)+prime(n+1)) > 1.

Offset 1, canonical program `A336369.P11619332729759975965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6440 terms. -/
def A336369 (n : ℕ) : ℤ :=
  A336369.P11619332729759975965.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6440 terms. -/
def A336369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336372.P9191988951573997672

`A065091(A336370(n+1)-1)`
-/

namespace A336372.P9191988951573997672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A336370 (n + 1) - 1).toNat

end

end A336372.P9191988951573997672

noncomputable section

/-- A336372: Primes prime(k) such that gcd(k, prime(k) + prime(k-1)) = 1.

Offset 1, canonical program `A336372.P9191988951573997672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3574 terms. -/
def A336372 (n : ℕ) : ℤ :=
  A336372.P9191988951573997672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3574 terms. -/
def A336372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336410.P10465025755564632149

`A049579(n+1)-3`
-/

namespace A336410.P10465025755564632149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049579 (n + 1) - 3

end

end A336410.P10465025755564632149

noncomputable section

/-- A336410: Complement of A336411.

Offset 1, canonical program `A336410.P10465025755564632149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336410 (n : ℕ) : ℤ :=
  A336410.P10465025755564632149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336859.P13968590993924436788

`A336858(A061579(n))`
-/

namespace A336859.P13968590993924436788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336858 (A061579 n).toNat

end

end A336859.P13968590993924436788

noncomputable section

/-- A336859: Mirror image of triangular array A336858.

Offset 0, canonical program `A336859.P13968590993924436788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9316 terms. -/
def A336859 (n : ℕ) : ℤ :=
  A336859.P13968590993924436788.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9316 terms. -/
def A336859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336923.P12863410329301155014

`A209229(A002131(n+1))`
-/

namespace A336923.P12863410329301155014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A002131 (n + 1)).toNat

end

end A336923.P12863410329301155014

noncomputable section

/-- A336923: a(n) = 1 if sigma(2n) - sigma(n) is a power of 2, otherwise 0.

Offset 1, canonical program `A336923.P12863410329301155014`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336923 (n : ℕ) : ℤ :=
  A336923.P12863410329301155014.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336923.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337821.P3237854807616549852

`A089309(n+1)-1`
-/

namespace A337821.P3237854807616549852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (n + 1) - 1

end

end A337821.P3237854807616549852

noncomputable section

/-- A337821: For n >= 0, a(4n+1) = 0, a(4n+3) = a(2n+1) + 1, a(2n+2) = a(n+1).

Offset 1, canonical program `A337821.P3237854807616549852`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089309, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337821 (n : ℕ) : ℤ :=
  A337821.P3237854807616549852.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089309, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337821.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337920.P550460882590583654

`eq[n+2, A335023(n+1)]+1`
-/

namespace A337920.P550460882590583654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335023 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337920.P550460882590583654

noncomputable section

/-- A337920: Numbers k such that d(k) = d(k+1), where d(k) = A058312(k) is the denominator of the k-th alternating harmonic number.

Offset 1, canonical program `A337920.P550460882590583654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337920 (n : ℕ) : ℤ :=
  (A337920.P550460882590583654.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338046.P4955059318956623703

`∑{d}[A006519(n+1), A000292((n+1)/#)]`
-/

namespace A338046.P4955059318956623703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000292 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338046.P4955059318956623703

noncomputable section

/-- A338046: G.f.: Sum_{k>=0} x^(2^k) / (1 - x^(2^k))^4.

Offset 1, canonical program `A338046.P4955059318956623703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338046 (n : ℕ) : ℤ :=
  A338046.P4955059318956623703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338234.P15734799249778123728

`A338231(n+1)-(n+1)%Δ[n²]`
-/

namespace A338234.P15734799249778123728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338231 (n + 1) - Int.tmod (n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A338234.P15734799249778123728

noncomputable section

/-- A338234: Sum of the numbers less than n whose square does not divide n.

Offset 1, canonical program `A338234.P15734799249778123728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338234 (n : ℕ) : ℤ :=
  A338234.P15734799249778123728.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338273.P14237024177931502386

`p?[A024675(n+1)+A024675(n+2)]`
-/

namespace A338273.P14237024177931502386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) + A024675 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338273.P14237024177931502386

noncomputable section

/-- A338273: a(n) is the sum of A338270(n) and the average of the primes immediately before and after A338270(n).

Offset 1, canonical program `A338273.P14237024177931502386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1039 terms. -/
def A338273 (n : ℕ) : ℤ :=
  A338273.P14237024177931502386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1039 terms. -/
def A338273.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A338375.P18091747463959896222

`A125059(Δ[n²])`
-/

namespace A338375.P18091747463959896222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125059 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A338375.P18091747463959896222

noncomputable section

/-- A338375: Number of digits in (2n)! / (2^n * n!).

Offset 1, canonical program `A338375.P18091747463959896222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A338375 (n : ℕ) : ℤ :=
  A338375.P18091747463959896222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A338375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338722.P15631712721895948208

`∑[A335616(n+1)]`
-/

namespace A338722.P15631712721895948208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338722.P15631712721895948208

noncomputable section

/-- A338722: Row sums in triangle A338721.

Offset 1, canonical program `A338722.P15631712721895948208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338722 (n : ℕ) : ℤ :=
  A338722.P15631712721895948208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338733.P13079581838449932790

`∑[A054843(n)]`
-/

namespace A338733.P13079581838449932790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338733.P13079581838449932790

noncomputable section

/-- A338733: Partial sums of A054843.

Offset 0, canonical program `A338733.P13079581838449932790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338733 (n : ℕ) : ℤ :=
  A338733.P13079581838449932790.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338733.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A339356.P15711006392106729220

`∑[A339355(A109613(n)+1)]`
-/

namespace A339356.P15711006392106729220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339355 (A109613 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339356.P15711006392106729220

noncomputable section

/-- A339356: Maximum number of copies of a 123456 permutation pattern in an alternating (or zig-zag) permutation of length n + 9.

Offset 1, canonical program `A339356.P15711006392106729220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339356 (n : ℕ) : ℤ :=
  A339356.P15711006392106729220.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340632.P7486341260096181790

`or(n, A122155(n))`
-/

namespace A340632.P7486341260096181790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A122155 n)

end

end A340632.P7486341260096181790

noncomputable section

/-- A340632: a(n) in binary is a run of 1-bits from the most significant 1-bit of n down to the least significant 1-bit of n, inclusive.

Offset 0, canonical program `A340632.P7486341260096181790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340632 (n : ℕ) : ℤ :=
  A340632.P7486341260096181790.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340956.P6232183328931227741

`eq[A000217(A000120(n)), A159918(n)]`
-/

namespace A340956.P6232183328931227741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A340956.P6232183328931227741

noncomputable section

/-- A340956: Integers n such that s(n^2) = s(n)*(s(n)+1)/2, where s(n) is the sum of binary digits of n (A000120).

Offset 1, canonical program `A340956.P6232183328931227741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 426 terms. -/
def A340956 (n : ℕ) : ℤ :=
  (A340956.P6232183328931227741.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 426 terms. -/
def A340956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341239.P9386503938490555449

`A007069(n+1)+A001951(n+1)`
-/

namespace A341239.P9386503938490555449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007069 (n + 1) + A001951 (n + 1)

end

end A341239.P9386503938490555449

noncomputable section

/-- A341239: a(n) = floor(r*floor(s*n)), where r = 1 + sqrt(2) and s = sqrt(2).

Offset 1, canonical program `A341239.P9386503938490555449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341239 (n : ℕ) : ℤ :=
  A341239.P9386503938490555449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341249.P10730097604345596581

`A286909(n+1)+A007069(n+1)`
-/

namespace A341249.P10730097604345596581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286909 (n + 1) + A007069 (n + 1)

end

end A341249.P10730097604345596581

noncomputable section

/-- A341249: a(n) = floor(r*floor(s*n)), where r = 2 + sqrt(2) and s = sqrt(2).

Offset 1, canonical program `A341249.P10730097604345596581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341249 (n : ℕ) : ℤ :=
  A341249.P10730097604345596581.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341254.P15874538325871161202

`A193766(n+1)+2*A194151(n+1)`
-/

namespace A341254.P15874538325871161202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193766 (n + 1) + 2 * A194151 (n + 1)

end

end A341254.P15874538325871161202

noncomputable section

/-- A341254: a(n) = floor(r*floor(r*n)), where r = (2 + sqrt(5))/2.

Offset 1, canonical program `A341254.P15874538325871161202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341254 (n : ℕ) : ℤ :=
  A341254.P15874538325871161202.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341487.P2776632459971476031

`A008619(A057300(A000069(n+1)))`
-/

namespace A341487.P2776632459971476031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A057300 (A000069 (n + 1)).toNat).toNat

end

end A341487.P2776632459971476031

noncomputable section

/-- A341487: Second row of A341458.

Offset 1, canonical program `A341487.P2776632459971476031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A341487 (n : ℕ) : ℤ :=
  A341487.P2776632459971476031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A341487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341593.P8227184771900020403

`∑{e}[n+1, #]-A333750(gcd(n+1, ∏{p}[n+1, (n+1)/#]))`
-/

namespace A341593.P8227184771900020403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - A333750 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))))

end

end A341593.P8227184771900020403

noncomputable section

/-- A341593: Number of superior prime-power divisors of n.

Offset 1, canonical program `A341593.P8227184771900020403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341593 (n : ℕ) : ℤ :=
  A341593.P8227184771900020403.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341644.P8546407979308305030

`∑{e}[n+1, #]-A333750(n+1)`
-/

namespace A341644.P8546407979308305030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - A333750 (n + 1)

end

end A341644.P8546407979308305030

noncomputable section

/-- A341644: Number of strictly superior prime-power divisors of n.

Offset 1, canonical program `A341644.P8546407979308305030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341644 (n : ℕ) : ℤ :=
  A341644.P8546407979308305030.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341854.P9553177481002635697

`14*A242136(n+1)`
-/

namespace A341854.P9553177481002635697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A242136 (n + 1)

end

end A341854.P9553177481002635697

noncomputable section

/-- A341854: Number of triangulations of a fixed hexagon with n internal nodes.

Offset 0, canonical program `A341854.P9553177481002635697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A341854 (n : ℕ) : ℤ :=
  A341854.P9553177481002635697.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A341854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342174.P4399683615547316971

`p?[A342173(n+1)]`
-/

namespace A342174.P4399683615547316971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342174.P4399683615547316971

noncomputable section

/-- A342174: Primes in A342173.

Offset 1, canonical program `A342174.P4399683615547316971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 937 terms. -/
def A342174 (n : ℕ) : ℤ :=
  A342174.P4399683615547316971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 937 terms. -/
def A342174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342379.P15174878887060137686

`A057428(A002265(n))+A002663(n)`
-/

namespace A342379.P15174878887060137686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A002265 n).toNat + A002663 n

end

end A342379.P15174878887060137686

noncomputable section

/-- A342379: Expansion of e.g.f. (exp(x)-1)*(exp(x) - x^3/6 - x^2/2 - x - 1).

Offset 0, canonical program `A342379.P15174878887060137686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A342379 (n : ℕ) : ℤ :=
  A342379.P15174878887060137686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A342379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342460.P5036170238459632379

`A063524(A082343(n+1))`
-/

namespace A342460.P5036170238459632379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A082343 (n + 1)).toNat

end

end A342460.P5036170238459632379

noncomputable section

/-- A342460: a(n) = 1 if n > 1 and is divisible by the sum of its prime factors (with repetition), otherwise 0.

Offset 1, canonical program `A342460.P5036170238459632379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342460 (n : ℕ) : ℤ :=
  A342460.P5036170238459632379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342697.P17790718882655099389

`floor(A048733(n)/2)`
-/

namespace A342697.P17790718882655099389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048733 n : ℚ) / 2⌋

end

end A342697.P17790718882655099389

noncomputable section

/-- A342697: For any number n with binary expansion Sum_{k >= 0} b(k) * 2^k, the binary expansion of a(n) is Sum_{k >= 0} floor((b(k) + b(k+1) + b(k+2))/2) * 2^k.

Offset 0, canonical program `A342697.P17790718882655099389`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048733, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342697 (n : ℕ) : ℤ :=
  A342697.P17790718882655099389.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048733, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342697.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342993.P18221118977101743061

`p?[A111255(n+1)-2]+1`
-/

namespace A342993.P18221118977101743061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111255 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A342993.P18221118977101743061

noncomputable section

/-- A342993: Numbers of the form prime(i-1)+prime(i+1) that are the average of a twin prime pair.

Offset 1, canonical program `A342993.P18221118977101743061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1173 terms. -/
def A342993 (n : ℕ) : ℤ :=
  A342993.P18221118977101743061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1173 terms. -/
def A342993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343037.P13066724117359512998

`ceil(sqrt(A014410(n+2)))²-A014410(n+2)`
-/

namespace A343037.P13066724117359512998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A014410 (n + 2) : ℝ)⌉ ^ 2 - A014410 (n + 2)

end

end A343037.P13066724117359512998

noncomputable section

/-- A343037: Triangle T(n,k), n >= 2, 1 <= k <= n-1, read by rows, where T(n,k) is the difference between smallest square >= binomial(n,k) and binomial(n,k).

Offset 2, canonical program `A343037.P13066724117359512998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A343037 (n : ℕ) : ℤ :=
  A343037.P13066724117359512998.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A343037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343045.P12551922503893661666

`A343048(∑[char[A060735(n+1)]])`
-/

namespace A343045.P12551922503893661666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060735 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343048 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A343045.P12551922503893661666

noncomputable section

/-- A343045: a(0) = 0 and for any n > 0, a(n) = A343044(a(n-1), n).

Offset 0, canonical program `A343045.P12551922503893661666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343045 (n : ℕ) : ℤ :=
  A343045.P12551922503893661666.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343203.P7383915526188843710

`A340172(A165775(n))+A329972(n)`
-/

namespace A343203.P7383915526188843710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340172 (A165775 n).toNat + A329972 n

end

end A343203.P7383915526188843710

noncomputable section

/-- A343203: Sum of x- and y-coordinate of a point moving in a triangular spiral.

Offset 0, canonical program `A343203.P7383915526188843710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A343203 (n : ℕ) : ℤ :=
  A343203.P7383915526188843710.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A343203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343306.P10768569373894334497

`eq[2, Δ[A091194(A008458(n))]]`
-/

namespace A343306.P10768569373894334497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (A008458 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343306.P10768569373894334497

noncomputable section

/-- A343306: Numbers k such that there is only 1 abundant number (A005101) among 6*k+1 through 6*k+5.

Offset 1, canonical program `A343306.P10768569373894334497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 776 terms. -/
def A343306 (n : ℕ) : ℤ :=
  (A343306.P10768569373894334497.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 776 terms. -/
def A343306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343386.P6946411365016645358

`A107587(n)-A100223(n+2)`
-/

namespace A343386.P6946411365016645358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107587 n - A100223 (n + 2)

end

end A343386.P6946411365016645358

noncomputable section

/-- A343386: Number of odd Motzkin n-paths, i.e., Motzkin n-paths with an odd number of up steps.

Offset 0, canonical program `A343386.P6946411365016645358`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107587, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343386 (n : ℕ) : ℤ :=
  A343386.P6946411365016645358.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107587, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343386.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344220.P16997399058361643495

`A175919(n)%A016116(A070939(n))`
-/

namespace A344220.P16997399058361643495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175919 n) (A016116 (A070939 n).toNat)

end

end A344220.P16997399058361643495

noncomputable section

/-- A344220: a(n) is the least k >= 0 such that n XOR k is a binary palindrome (where XOR denotes the bitwise XOR operator).

Offset 0, canonical program `A344220.P16997399058361643495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A344220 (n : ℕ) : ℤ :=
  A344220.P16997399058361643495.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A344220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344341.P1218540494126931545

`lt[(n+1)%A005811(n+1), 1]+1`
-/

namespace A344341.P1218540494126931545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A005811 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A344341.P1218540494126931545

noncomputable section

/-- A344341: Gray-code Niven numbers: numbers divisible by the number of 1's in their binary reflected Gray code (A005811).

Offset 1, canonical program `A344341.P1218540494126931545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A344341 (n : ℕ) : ℤ :=
  (A344341.P1218540494126931545.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A344341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344400.P1201497454500216935

`A344228(n+1)*(n+1)*(n+2)`
-/

namespace A344400.P1201497454500216935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344228 (n + 1) * (n + 1 : ℤ) * (n + 2 : ℤ)

end

end A344400.P1201497454500216935

noncomputable section

/-- A344400: a(n) = [x^n] 6*(8*x^3 + 3*x + 1) / (1 - 4*x)^(7/2).

Offset 0, canonical program `A344400.P1201497454500216935`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344228, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344400 (n : ℕ) : ℤ :=
  A344400.P1201497454500216935.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344228, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344400.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344411.P13447493578011651501

`A007504(A000720(3*(n+1)))-A007504(A000720(2*(n+1)))`
-/

namespace A344411.P13447493578011651501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000720 (3 * (n + 1))).toNat - A007504 (A000720 (2 * (n + 1))).toNat

end

end A344411.P13447493578011651501

noncomputable section

/-- A344411: Sum of the prime numbers in the interval (2n, 3n].

Offset 1, canonical program `A344411.P13447493578011651501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344411 (n : ℕ) : ℤ :=
  A344411.P13447493578011651501.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344598.P13180373970547759744

`∑{d}[n+1, #*A140434((n+1)/#)]`
-/

namespace A344598.P13180373970547759744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A140434 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344598.P13180373970547759744

noncomputable section

/-- A344598: a(n) = Sum_{k=1..n} phi(k) * (floor(n/k)^2 - floor((n-1)/k)^2).

Offset 1, canonical program `A344598.P13180373970547759744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344598 (n : ℕ) : ℤ :=
  A344598.P13180373970547759744.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344602.P4017687423561774190

`lt[A002262(log2(A001316(n))), 1]`
-/

namespace A344602.P4017687423561774190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344602.P4017687423561774190

noncomputable section

/-- A344602: Integers whose Hamming weight is triangular.

Offset 1, canonical program `A344602.P4017687423561774190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344602 (n : ℕ) : ℤ :=
  (A344602.P4017687423561774190.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345290.P12313205594087297286

`A022290(A063695(n))-A022290(A063694(n))`
-/

namespace A345290.P12313205594087297286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A063695 n).toNat - A022290 (A063694 n).toNat

end

end A345290.P12313205594087297286

noncomputable section

/-- A345290: a(n) is obtained by replacing 2^k in binary expansion of n with Fibonacci(-k-2).

Offset 0, canonical program `A345290.P12313205594087297286`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022290, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345290 (n : ℕ) : ℤ :=
  A345290.P12313205594087297286.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022290, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345290.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345335.P2679634228096003161

`A000040(eq[0, A014499(n+1)%A000120(n+1)]+1)`
-/

namespace A345335.P2679634228096003161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014499 (n + 1)) (A000120 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A345335.P2679634228096003161

noncomputable section

/-- A345335: Primes p such that A014499(k) / A000120(k) is an integer, where k = A000720(p).

Offset 1, canonical program `A345335.P2679634228096003161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1754 terms. -/
def A345335 (n : ℕ) : ℤ :=
  A345335.P2679634228096003161.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1754 terms. -/
def A345335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345668.P4398126403795898940

`A175856(n+2)-1`
-/

namespace A345668.P4398126403795898940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175856 (n + 2) - 1

end

end A345668.P4398126403795898940

noncomputable section

/-- A345668: Last prime minus distance to last prime.

Offset 3, canonical program `A345668.P4398126403795898940`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175856, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345668 (n : ℕ) : ℤ :=
  A345668.P4398126403795898940.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175856, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345877.P10141757346312010755

`A211161(∑[n]-a(n-1)+1)` with `a(0)=1`
-/

namespace A345877.P10141757346312010755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A211161 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1) + 1).toNat

end

end A345877.P10141757346312010755

noncomputable section

/-- A345877: a(1) = 1, a(n) = a(n-1)/2 if a(n-1) is even, otherwise a(n) = n - a(n-1).

Offset 1, canonical program `A345877.P10141757346312010755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A345877 (n : ℕ) : ℤ :=
  A345877.P10141757346312010755.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A345877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346418.P2093234214267519025

`gcd(A000040(A072505(n+1)), A000079(n))`
-/

namespace A346418.P2093234214267519025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (A072505 (n + 1)).toNat) (A000079 n)

end

end A346418.P2093234214267519025

noncomputable section

/-- A346418: a(n) is the exponent of the largest power of n that divides the least common multiple of {1,2,...,n} (A003418). a(1) = 1.

Offset 1, canonical program `A346418.P2093234214267519025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A346418 (n : ℕ) : ℤ :=
  (A346418.P2093234214267519025.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A346418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346613.P3183661306633961935

`∑{d}[n+1, A019554(#)]`
-/

namespace A346613.P3183661306633961935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019554 d

end

end A346613.P3183661306633961935

noncomputable section

/-- A346613: Inverse Moebius transform of A019554.

Offset 1, canonical program `A346613.P3183661306633961935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346613 (n : ℕ) : ℤ :=
  A346613.P3183661306633961935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346621.P15232566686914142935

`∑[(n+1)*A215480(n+1)]`
-/

namespace A346621.P15232566686914142935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A215480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346621.P15232566686914142935

noncomputable section

/-- A346621: a(n) = Sum_{ x <= n : omega(x) = 2 } x.

Offset 1, canonical program `A346621.P15232566686914142935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346621 (n : ℕ) : ℤ :=
  A346621.P15232566686914142935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346622.P12109416863354417006

`∑[and(n+1, A215480(n+1))]`
-/

namespace A346622.P12109416863354417006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A215480 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346622.P12109416863354417006

noncomputable section

/-- A346622: a(n) = card{ x <= n : x odd and omega(x) = 2 }.

Offset 1, canonical program `A346622.P12109416863354417006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346622 (n : ℕ) : ℤ :=
  A346622.P12109416863354417006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346623.P1530388966468851521

`∑[(n+1)*A215480(A141310(n))]`
-/

namespace A346623.P1530388966468851521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A215480 (A141310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346623.P1530388966468851521

noncomputable section

/-- A346623: a(n) = Sum_{ x <= n : x odd and omega(x) = 2 } x.

Offset 1, canonical program `A346623.P1530388966468851521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346623 (n : ℕ) : ℤ :=
  A346623.P1530388966468851521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347156.P17222758382162862485

`A098002(gcd(n+1, ∏{p}[n+1, (n+1)/#]))`
-/

namespace A347156.P17222758382162862485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098002 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))))

end

end A347156.P17222758382162862485

noncomputable section

/-- A347156: Sum of squares of distinct prime divisors of n that are < sqrt(n).

Offset 1, canonical program `A347156.P17222758382162862485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347156 (n : ℕ) : ℤ :=
  A347156.P17222758382162862485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347650.P6970328061649287344

`A056594(n)+2*A302654(n+1)`
-/

namespace A347650.P6970328061649287344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n + 2 * A302654 (n + 1)

end

end A347650.P6970328061649287344

noncomputable section

/-- A347650: Number of minimum total dominating sets in the n-pan graph (for n > 2).

Offset 1, canonical program `A347650.P6970328061649287344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347650 (n : ℕ) : ℤ :=
  A347650.P6970328061649287344.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348281.P13666339972216346834

`A329347(∏{p}[n+1, #])`
-/

namespace A348281.P13666339972216346834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329347 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A348281.P13666339972216346834

noncomputable section

/-- A348281: Sum of the arithmetic derivatives of the squarefree divisors of n: a(n) = Sum_{d|n} d' * mu(d)^2.

Offset 1, canonical program `A348281.P13666339972216346834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348281 (n : ℕ) : ℤ :=
  A348281.P13666339972216346834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348295.P9530396092402015440

`∑[A033999(A097508(n))]-1`
-/

namespace A348295.P9530396092402015440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A097508 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A348295.P9530396092402015440

noncomputable section

/-- A348295: a(n) = Sum_{k=1..n} (-1)^(floor(k*(sqrt(2)-1))).

Offset 0, canonical program `A348295.P9530396092402015440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348295 (n : ℕ) : ℤ :=
  A348295.P9530396092402015440.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348368.P5469906356835698158

`lt[A229745(n), 0]`
-/

namespace A348368.P5469906356835698158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229745 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A348368.P5469906356835698158

noncomputable section

/-- A348368: Numbers k such that w(k + w(k)) < w(k), where w(k) is the binary weight of k, A000120(k).

Offset 1, canonical program `A348368.P5469906356835698158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3154 terms. -/
def A348368 (n : ℕ) : ℤ :=
  (A348368.P5469906356835698158.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3154 terms. -/
def A348368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348906.P13398329411411546203

`eq[1, A010052(A159918(n))]²`
-/

namespace A348906.P13398329411411546203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A159918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A348906.P13398329411411546203

noncomputable section

/-- A348906: Squares with a square number of 1's in their binary expansion.

Offset 1, canonical program `A348906.P13398329411411546203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1563 terms. -/
def A348906 (n : ℕ) : ℤ :=
  (A348906.P13398329411411546203.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1563 terms. -/
def A348906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348931.P4884177580303367857

`∩[or(1, 3*n+1), A087943(n+1)]`
-/

namespace A348931.P4884177580303367857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348931.P4884177580303367857

noncomputable section

/-- A348931: Numbers k congruent to 1 or 5 mod 6, for which A348930(k) < k.

Offset 1, canonical program `A348931.P4884177580303367857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2969 terms. -/
def A348931 (n : ℕ) : ℤ :=
  (A348931.P4884177580303367857.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2969 terms. -/
def A348931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349317.P2877834298764922178

`1-A054521(n+1)`
-/

namespace A349317.P2877834298764922178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A054521 (n + 1)

end

end A349317.P2877834298764922178

noncomputable section

/-- A349317: Triangle T(n,k): T(n,k) = 1 if gcd(n, k) > 1, else 0.

Offset 1, canonical program `A349317.P2877834298764922178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349317 (n : ℕ) : ℤ :=
  A349317.P2877834298764922178.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349427.P417037996028307768

`Δ[∑[C(n, 2)]*A120588(n)]`
-/

namespace A349427.P417037996028307768
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A120588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349427.P417037996028307768

noncomputable section

/-- A349427: a(n) = ((n+1)^2 - 2) * binomial(2*n-2,n-1) / 2.

Offset 0, canonical program `A349427.P417037996028307768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A349427 (n : ℕ) : ℤ :=
  A349427.P417037996028307768.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A349427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349620.P4260540541308422829

`∑{d}[n+1, A003557(#)*A349394((n+1)/#)]`
-/

namespace A349620.P4260540541308422829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003557 d * A349394 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349620.P4260540541308422829

noncomputable section

/-- A349620: Dirichlet convolution of A003415 with the Dirichlet inverse of A003958.

Offset 1, canonical program `A349620.P4260540541308422829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349620 (n : ℕ) : ℤ :=
  A349620.P4260540541308422829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349835.P853498659600068463

`2*A028283(n)-A000984(n)`
-/

namespace A349835.P853498659600068463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028283 n - A000984 n

end

end A349835.P853498659600068463

noncomputable section

/-- A349835: Expansion of (1 + 4*x)/sqrt(1 - 4*x).

Offset 0, canonical program `A349835.P853498659600068463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A349835 (n : ℕ) : ℤ :=
  A349835.P853498659600068463.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A349835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350166.P8703411876236404235

`∑[A050469(n+1)]`
-/

namespace A350166.P8703411876236404235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350166.P8703411876236404235

noncomputable section

/-- A350166: Partial sums of A050469.

Offset 1, canonical program `A350166.P8703411876236404235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350166 (n : ℕ) : ℤ :=
  A350166.P8703411876236404235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350222.P11549591143098908976

`A309082((n+1)^3)`
-/

namespace A350222.P11549591143098908976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309082 ((n + 1) ^ 3)

end

end A350222.P11549591143098908976

noncomputable section

/-- A350222: a(n) = Sum_{k=1..n} (-1)^(k+1) * floor((n/k)^3).

Offset 1, canonical program `A350222.P11549591143098908976`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A309082, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350222 (n : ℕ) : ℤ :=
  A350222.P11549591143098908976.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A309082, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350222.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A351310.P1649813851265808387

`A013958((n+1)/A019554(n+1))`
-/

namespace A351310.P1649813851265808387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013958 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A019554 (n + 1) : ℚ))).toNat

end

end A351310.P1649813851265808387

noncomputable section

/-- A351310: Sum of the 5th powers of the square divisors of n.

Offset 1, canonical program `A351310.P1649813851265808387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351310 (n : ℕ) : ℤ :=
  A351310.P1649813851265808387.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351310.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A351605.P10268499449878988978

`∑{d}[sqrt(A008833(n+1)), A001015((n+1)/#)]`
-/

namespace A351605.P10268499449878988978
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008833 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A001015 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351605.P10268499449878988978

noncomputable section

/-- A351605: a(n) = n^7 * Sum_{d^2|n} 1 / d^7.

Offset 1, canonical program `A351605.P10268499449878988978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A351605 (n : ℕ) : ℤ :=
  A351605.P10268499449878988978.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A351605.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A352049.P5425156672999922043

`A051000(n+1)*A006519(n+1)^3-A000035(n+1)`
-/

namespace A352049.P5425156672999922043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051000 (n + 1) * A006519 (n + 1) ^ 3 - A000035 (n + 1)

end

end A352049.P5425156672999922043

noncomputable section

/-- A352049: Sum of the cubes of the divisor complements of the odd proper divisors of n.

Offset 1, canonical program `A352049.P5425156672999922043`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051000, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352049 (n : ℕ) : ℤ :=
  A352049.P5425156672999922043.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051000, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352049.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352087.P2052615442428702218

`eq[0, A175919(A003726(n+1))]`
-/

namespace A352087.P2052615442428702218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (A003726 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352087.P2052615442428702218

noncomputable section

/-- A352087: Numbers whose minimal (or greedy) tribonacci representation (A278038) is palindromic.

Offset 1, canonical program `A352087.P2052615442428702218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A352087 (n : ℕ) : ℤ :=
  (A352087.P2052615442428702218.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A352087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352242.P5962883400353177970

`(A133819(n+1)+A001283(n+2))*A055461(n+1)`
-/

namespace A352242.P5962883400353177970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133819 (n + 1) + A001283 (n + 2)) * A055461 (n + 1)

end

end A352242.P5962883400353177970

noncomputable section

/-- A352242: Regular triangle T(n,k) = (n-k)*(n^3-k^3) for n>=2 and 1 <= k <= n-1, read by rows.

Offset 2, canonical program `A352242.P5962883400353177970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352242 (n : ℕ) : ℤ :=
  A352242.P5962883400353177970.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352776.P13844907865842794739

`eq[0, A229745(n)]`
-/

namespace A352776.P13844907865842794739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229745 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352776.P13844907865842794739

noncomputable section

/-- A352776: Numbers k such that w(k + w(k)) = w(k), where w(k) is the binary weight of k, A000120(k).

Offset 1, canonical program `A352776.P13844907865842794739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2553 terms. -/
def A352776 (n : ℕ) : ℤ :=
  (A352776.P13844907865842794739.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2553 terms. -/
def A352776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352778.P11519302946014693249

`lt[0, A229745(n)]`
-/

namespace A352778.P11519302946014693249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229745 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A352778.P11519302946014693249

noncomputable section

/-- A352778: Numbers k such that w(k + w(k)) > w(k), where w(k) is the binary weight of k, A000120(k).

Offset 1, canonical program `A352778.P11519302946014693249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4294 terms. -/
def A352778 (n : ℕ) : ℤ :=
  (A352778.P11519302946014693249.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4294 terms. -/
def A352778.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A353558.P5510355116585189927

`A000035(n+1)-A353557(n+1)`
-/

namespace A353558.P5510355116585189927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) - A353557 (n + 1)

end

end A353558.P5510355116585189927

noncomputable section

/-- A353558: a(n) = 1 if n is an odd number with an odd number of prime factors (counted with multiplicity), otherwise 0.

Offset 1, canonical program `A353558.P5510355116585189927`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353558 (n : ℕ) : ℤ :=
  A353558.P5510355116585189927.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353558.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353676.P532583491734346456

`A000035(n+1)*A215480(n+1)`
-/

namespace A353676.P532583491734346456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A215480 (n + 1)

end

end A353676.P532583491734346456

noncomputable section

/-- A353676: a(n) = 1 if n is an odd number with exactly 2 distinct prime factors, otherwise 0.

Offset 1, canonical program `A353676.P532583491734346456`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A215480, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353676 (n : ℕ) : ℤ :=
  A353676.P532583491734346456.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A215480, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353676.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353986.P12545540184002527554

`eq[0, Δ[A011373(n)]]`
-/

namespace A353986.P12545540184002527554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011373 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353986.P12545540184002527554

noncomputable section

/-- A353986: Numbers k such that Fibonacci(k) and Fibonacci(k+1) have the same binary weight (A000120).

Offset 1, canonical program `A353986.P12545540184002527554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A353986 (n : ℕ) : ℤ :=
  (A353986.P12545540184002527554.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A353986.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A354626.P396020870782513592

`comp[A141169(n)+A141169(A099375(n))²]`
-/

namespace A354626.P396020870782513592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n + A141169 (A099375 n).toNat ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A354626.P396020870782513592

noncomputable section

/-- A354626: Numbers that can't be written as the sum of a Fibonacci number and the square of a Fibonacci number.

Offset 1, canonical program `A354626.P396020870782513592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354626 (n : ℕ) : ℤ :=
  (A354626.P396020870782513592.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355341.P9670019332395498527

`floor(A117362(A061579(n))+acot(n))`
-/

namespace A355341.P9670019332395498527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A117362 (A061579 n).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A355341.P9670019332395498527

noncomputable section

/-- A355341: G.f.: A(x) = Sum_{n=-oo..+oo} x^(n*(n+1)/2) * C(x)^n, where C(x) = 1 + x*C(x)^2 is the g.f. of the Catalan numbers (A000108).

Offset 0, canonical program `A355341.P9670019332395498527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1276 terms. -/
def A355341 (n : ℕ) : ℤ :=
  A355341.P9670019332395498527.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1276 terms. -/
def A355341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356093.P9988673686569387336

`A006093(n+1)/A077063(n+1)`
-/

namespace A356093.P9988673686569387336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (A077063 (n + 1) : ℚ)

end

end A356093.P9988673686569387336

noncomputable section

/-- A356093: a(n) = numerator((prime(n)-1)/prime(n)#), where prime(n)# = A002110(n) is the n-th primorial.

Offset 1, canonical program `A356093.P9988673686569387336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356093 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A356093.P9988673686569387336.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356192.P16940193218147991984

`A055231(n+1)²*A356191(n+1)`
-/

namespace A356192.P16940193218147991984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1) ^ 2 * A356191 (n + 1)

end

end A356192.P16940193218147991984

noncomputable section

/-- A356192: a(n) is the smallest cubefull exponentially odd number (A335988) that is divisible by n.

Offset 1, canonical program `A356192.P16940193218147991984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356192 (n : ℕ) : ℤ :=
  A356192.P16940193218147991984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356288.P582442813498813054

`A079824(n+1)+A093005(n+1)`
-/

namespace A356288.P582442813498813054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1) + A093005 (n + 1)

end

end A356288.P582442813498813054

noncomputable section

/-- A356288: Sum of numbers in n-th upward diagonal of triangle the sum of {1; 2,3; 4,5,6; 7,8,9,10; ...} and {1; 2,3; 3,4,5; 4,5,6,7; ...}.

Offset 1, canonical program `A356288.P582442813498813054`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079824, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356288 (n : ℕ) : ℤ :=
  A356288.P582442813498813054.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079824, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356288.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356447.P15206919094827022873

`3*A096304(n+1)-1`
-/

namespace A356447.P15206919094827022873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A096304 (n + 1) - 1

end

end A356447.P15206919094827022873

noncomputable section

/-- A356447: Integers k such that (k+1)*(2*k-1) does not divide the central binomial coefficient B(k) = binomial(2*k,k) = A000984(k).

Offset 1, canonical program `A356447.P15206919094827022873`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096304, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356447 (n : ℕ) : ℤ :=
  A356447.P15206919094827022873.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096304, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356447.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356829.P17230402961984168518

`2^(2*(n+1))-A286185(n+1)-1`
-/

namespace A356829.P17230402961984168518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (2 * (n + 1)) : ℤ) - A286185 (n + 1) - 1

end

end A356829.P17230402961984168518

noncomputable section

/-- A356829: Number of vertex cuts in the n-Möbius ladder.

Offset 1, canonical program `A356829.P17230402961984168518`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286185, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356829 (n : ℕ) : ℤ :=
  A356829.P17230402961984168518.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286185, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356829.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357014.P2212409832347884879

`filter[A197680(n+1), A000035(#)]`
-/

namespace A357014.P2212409832347884879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A357014.P2212409832347884879

noncomputable section

/-- A357014: Numbers whose sum of exponential divisors (A051377) is odd.

Offset 1, canonical program `A357014.P2212409832347884879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4101 terms. -/
def A357014 (n : ℕ) : ℤ :=
  A357014.P2212409832347884879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4101 terms. -/
def A357014.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A357282.P13157617072613635839

`∑[A340849(A057428(n)+n)]`
-/

namespace A357282.P13157617072613635839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340849 (A057428 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357282.P13157617072613635839

noncomputable section

/-- A357282: a(n) = number of subsets S of {1,2,...,n} having more than 1 element such that (difference between least two elements of S) = difference between greatest two elements of S.

Offset 0, canonical program `A357282.P13157617072613635839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A357282 (n : ℕ) : ℤ :=
  A357282.P13157617072613635839.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A357282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357284.P2693136668523446039

`1/2*A357283(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A357284.P2693136668523446039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A357283 n : ℚ)

end

end A357284.P2693136668523446039

noncomputable section

/-- A357284: a(n) = (1/2)*A357283(n).

Offset 0, canonical program `A357284.P2693136668523446039`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A357283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357284 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A357284.P2693136668523446039.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A357283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357284.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357372.P4923733421453701218

`A003057(n+2)/gcd(A128227(n)², A003057(n+2))`
-/

namespace A357372.P4923733421453701218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) : ℚ) / (Int.gcd (A128227 n ^ 2) (A003057 (n + 2)) : ℚ)

end

end A357372.P4923733421453701218

noncomputable section

/-- A357372: Square array A(n, k), n, k > 0, read by antidiagonals; A(n, k) is the numerator of 1/n + 1/k.

Offset 1, canonical program `A357372.P4923733421453701218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357372 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A357372.P4923733421453701218.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357731.P9040152959614539463

`A010056(A194029(n+2))`
-/

namespace A357731.P9040152959614539463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A194029 (n + 2)).toNat

end

end A357731.P9040152959614539463

noncomputable section

/-- A357731: Number of partitions of n into 2 distinct positive Fibonacci numbers (with a single type of 1).

Offset 3, canonical program `A357731.P9040152959614539463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357731 (n : ℕ) : ℤ :=
  A357731.P9040152959614539463.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357817.P15892236306854979366

`∑[(A306927(n+1)+1+n)*(-1)^n]`
-/

namespace A357817.P15892236306854979366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A306927 (n + 1) + 1 + (n : ℤ)) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357817.P15892236306854979366

noncomputable section

/-- A357817: Partial alternating sums of the Dedekind psi function (A001615): a(n) = Sum_{k=1..n} (-1)^(k+1) * psi(k).

Offset 1, canonical program `A357817.P15892236306854979366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357817 (n : ℕ) : ℤ :=
  A357817.P15892236306854979366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357938.P33426511589451347

`∑{d}[n+1, #*A048250((n+1)/#)]`
-/

namespace A357938.P33426511589451347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A048250 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A357938.P33426511589451347

noncomputable section

/-- A357938: Inverse Moebius transform of n * 2^omega(n).

Offset 1, canonical program `A357938.P33426511589451347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357938 (n : ℕ) : ℤ :=
  A357938.P33426511589451347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358396.P11595349240715137252

`∩[2*n, A053229(n+1)]`
-/

namespace A358396.P11595349240715137252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358396.P11595349240715137252

noncomputable section

/-- A358396: Even numbers k such that sigma(k) + sigma(k+2) < 2*sigma(k+1); even terms in A053229.

Offset 1, canonical program `A358396.P11595349240715137252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A358396 (n : ℕ) : ℤ :=
  (A358396.P11595349240715137252.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A358396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358975.P7383163706299752423

`eq[1, gcd(n, A230641(n))]`
-/

namespace A358975.P7383163706299752423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A230641 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358975.P7383163706299752423

noncomputable section

/-- A358975: Numbers that are coprime to their digital sum in base 3 (A053735).

Offset 1, canonical program `A358975.P7383163706299752423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4032 terms. -/
def A358975 (n : ℕ) : ℤ :=
  (A358975.P7383163706299752423.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4032 terms. -/
def A358975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359099.P11950995209618868671

`A088842(n+1)*A242603(n+1)`
-/

namespace A359099.P11950995209618868671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088842 (n + 1) * A242603 (n + 1)

end

end A359099.P11950995209618868671

noncomputable section

/-- A359099: a(n) = (1/6) * Sum_{d|n} phi(7 * d).

Offset 1, canonical program `A359099.P11950995209618868671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359099 (n : ℕ) : ℤ :=
  A359099.P11950995209618868671.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359212.P16228497027408349592

`A293895(3*n+1)+1`
-/

namespace A359212.P16228497027408349592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293895 (3 * n + 1) + 1

end

end A359212.P16228497027408349592

noncomputable section

/-- A359212: Number of divisors of 3*n-2 of form 3*k+1.

Offset 1, canonical program `A359212.P16228497027408349592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A359212 (n : ℕ) : ℤ :=
  A359212.P16228497027408349592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A359212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359300.P5805329302892074238

`A007917(n+2)+A007918(n+2)-2*(n+2)`
-/

namespace A359300.P5805329302892074238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (n + 2) + A007918 (n + 2) - (2 * (n + 2) : ℤ)

end

end A359300.P5805329302892074238

noncomputable section

/-- A359300: a(n) = (distance from n to nearest prime >= n) - (distance from n to nearest prime <= n).

Offset 2, canonical program `A359300.P5805329302892074238`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359300 (n : ℕ) : ℤ :=
  A359300.P5805329302892074238.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359300.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360010.P17961547097730859062

`A056556(n)+1`
-/

namespace A360010.P17961547097730859062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n + 1

end

end A360010.P17961547097730859062

noncomputable section

/-- A360010: First part of the n-th weakly decreasing triple of positive integers sorted lexicographically. Each n > 0 is repeated A000217(n) times.

Offset 1, canonical program `A360010.P17961547097730859062`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360010 (n : ℕ) : ℤ :=
  A360010.P17961547097730859062.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360010.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360394.P3572718822950874198

`A285980(n+1)+1+n`
-/

namespace A360394.P3572718822950874198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285980 (n + 1) + 1 + (n : ℤ)

end

end A360394.P3572718822950874198

noncomputable section

/-- A360394: Intersection of A026430 and A360392.

Offset 1, canonical program `A360394.P3572718822950874198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360394 (n : ℕ) : ℤ :=
  A360394.P3572718822950874198.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361024.P7432656464654402567

`A361023(n+1)-A324903(n+1)`
-/

namespace A361024.P7432656464654402567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361023 (n + 1) - A324903 (n + 1)

end

end A361024.P7432656464654402567

noncomputable section

/-- A361024: a(n) = 1 if n and sigma(n) have equal 2-adic valuations, otherwise 0, where sigma is the sum of divisors function.

Offset 1, canonical program `A361024.P7432656464654402567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A361023, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361024 (n : ℕ) : ℤ :=
  A361024.P7432656464654402567.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A361023, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361024.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361116.P7100103913625895617

`1-A361115(n)`
-/

namespace A361116.P7100103913625895617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A361115 n

end

end A361116.P7100103913625895617

noncomputable section

/-- A361116: a(n)=0 if A361102(n) is divisible by 3, otherwise 1.

Offset 0, canonical program `A361116.P7100103913625895617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361116 (n : ℕ) : ℤ :=
  A361116.P7100103913625895617.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361263.P2080480864368372243

`A168122(A008619(n))-A008795(n)`
-/

namespace A361263.P2080480864368372243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168122 (A008619 n).toNat - A008795 n

end

end A361263.P2080480864368372243

noncomputable section

/-- A361263: Numbers of the form k*(k^5 +- 1)/2.

Offset 1, canonical program `A361263.P2080480864368372243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361263 (n : ℕ) : ℤ :=
  A361263.P2080480864368372243.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361463.P2469529019636673647

`4%A361462(n+1)`
-/

namespace A361463.P2469529019636673647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A361462 (n + 1))

end

end A361463.P2469529019636673647

noncomputable section

/-- A361463: a(n) = 1 if A135506(n) == 3 (mod 4), otherwise 0.

Offset 1, canonical program `A361463.P2469529019636673647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361463 (n : ℕ) : ℤ :=
  A361463.P2469529019636673647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361627.P2747137712555199260

`lt[A301274(n+1), n]+1`
-/

namespace A361627.P2747137712555199260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301274 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A361627.P2747137712555199260

noncomputable section

/-- A361627: Positive integers such that GCD(A007504(n),n) != 1.

Offset 1, canonical program `A361627.P2747137712555199260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A361627 (n : ℕ) : ℤ :=
  (A361627.P2747137712555199260.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A361627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361631.P4568243048912634249

`gcd(n, A215480(n+2)+1)`
-/

namespace A361631.P4568243048912634249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A215480 (n + 2) + 1)

end

end A361631.P4568243048912634249

noncomputable section

/-- A361631: a(n) is the denominator of the median of the distinct prime factors of n.

Offset 2, canonical program `A361631.P4568243048912634249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A361631 (n : ℕ) : ℤ :=
  (A361631.P4568243048912634249.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A361631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362034.P16142630284062939886

`A007918(T(n-1,k-1)+T(n-1,k))` with `a(0)=2`
-/

namespace A362034.P16142630284062939886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007918 (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n).toNat

end

end A362034.P16142630284062939886

noncomputable section

/-- A362034: Triangle read by rows: T(n,0) = T(n,n) = 2, 0 < k < n: T(n,k) = smallest prime not less than T(n-1,k) + T(n-1,k-1).

Offset 0, canonical program `A362034.P16142630284062939886`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362034 (n : ℕ) : ℤ :=
  A362034.P16142630284062939886.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362034.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362227.P57805626971450803

`lcm(-a(and(n, n-1)), A057335(n))` with `a(0)=1`
-/

namespace A362227.P57805626971450803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat : ℤ)) (A057335 n)

end

end A362227.P57805626971450803

noncomputable section

/-- A362227: a(n) = Product_{k=1..w(n)} p(k)^(S(n,k)-1), where set S(n,k) = row n of A272011 and w(n) = A000120(n) is the binary weight of n.

Offset 0, canonical program `A362227.P57805626971450803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362227 (n : ℕ) : ℤ :=
  (A362227.P57805626971450803.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362266.P13006912141537441528

`A058254(row(n)+1)/A006093(col(n)+1)`
-/

namespace A362266.P13006912141537441528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058254 (SequenceMachineLib.triRow n + 1) : ℚ) / (A006093 (SequenceMachineLib.triCol n + 1) : ℚ)

end

end A362266.P13006912141537441528

noncomputable section

/-- A362266: Triangle read by rows: T(n,k) = LCM({p_j-1 : j=1..n})/(p_k-1) for prime p.

Offset 1, canonical program `A362266.P13006912141537441528`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362266 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A362266.P13006912141537441528.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362266.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362588.P6849223915613361597

`A008279(n)*A265609(n)`
-/

namespace A362588.P6849223915613361597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A265609 n

end

end A362588.P6849223915613361597

noncomputable section

/-- A362588: Triangle read by rows, T(n, k) = RisingFactorial(n - k, k) * FallingFactorial(n, k).

Offset 0, canonical program `A362588.P6849223915613361597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 943 terms. -/
def A362588 (n : ℕ) : ℤ :=
  A362588.P6849223915613361597.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 943 terms. -/
def A362588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362680.P16293648216085454390

`2*A058183(n+1)-A055642(n+1)`
-/

namespace A362680.P16293648216085454390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058183 (n + 1) - A055642 (n + 1)

end

end A362680.P16293648216085454390

noncomputable section

/-- A362680: a(n) is the number of decimal digits in A173426(n).

Offset 1, canonical program `A362680.P16293648216085454390`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058183, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362680 (n : ℕ) : ℤ :=
  A362680.P16293648216085454390.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058183, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362680.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362787.P3515008906079128941

`A265609(A245300(n))*A265609(n)`
-/

namespace A362787.P3515008906079128941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265609 (A245300 n).toNat * A265609 n

end

end A362787.P3515008906079128941

noncomputable section

/-- A362787: Triangle read by rows, T(n, k) = (-1)^k * RisingFactorial(n, k) * FallingFactorial(k - n, k).

Offset 0, canonical program `A362787.P3515008906079128941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 701 terms. -/
def A362787 (n : ℕ) : ℤ :=
  A362787.P3515008906079128941.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 701 terms. -/
def A362787.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A363674.P14481479446995928057

`A035327(A233280(n+1))`
-/

namespace A363674.P14481479446995928057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A233280 (n + 1)).toNat

end

end A363674.P14481479446995928057

noncomputable section

/-- A363674: T(n,k) is the decimal equivalent of the n-bit inverted Gray code for k; triangle T(n,k), n>=0, 0<=k<=2^n-1, read by rows.

Offset 0, canonical program `A363674.P14481479446995928057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9471 terms. -/
def A363674 (n : ℕ) : ℤ :=
  A363674.P14481479446995928057.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9471 terms. -/
def A363674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363827.P5433554095545495330

`A006519(A072504(n+1))`
-/

namespace A363827.P5433554095545495330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A072504 (n + 1)).toNat

end

end A363827.P5433554095545495330

noncomputable section

/-- A363827: Highest power of 2 dividing n which is <= sqrt(n).

Offset 1, canonical program `A363827.P5433554095545495330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4468 terms. -/
def A363827 (n : ℕ) : ℤ :=
  A363827.P5433554095545495330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4468 terms. -/
def A363827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363856.P13165153229678481958

`A363806(7*(n+1)-4)`
-/

namespace A363856.P13165153229678481958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363806 (7 * (n + 1) - 4)

end

end A363856.P13165153229678481958

noncomputable section

/-- A363856: Number of divisors of 7*n-4 of form 7*k+6.

Offset 1, canonical program `A363856.P13165153229678481958`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363856 (n : ℕ) : ℤ :=
  A363856.P13165153229678481958.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363856.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363860.P4900529535923147109

`A363806(7*(n+1)-1)`
-/

namespace A363860.P4900529535923147109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363806 (7 * (n + 1) - 1)

end

end A363860.P4900529535923147109

noncomputable section

/-- A363860: Number of divisors of 7*n-1 of form 7*k+4.

Offset 1, canonical program `A363860.P4900529535923147109`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363860 (n : ℕ) : ℤ :=
  A363860.P4900529535923147109.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363860.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363888.P18119979700684300847

`A363806(7*(n+1)-5)`
-/

namespace A363888.P18119979700684300847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363806 (7 * (n + 1) - 5)

end

end A363888.P18119979700684300847

noncomputable section

/-- A363888: Number of divisors of 7*n-5 of form 7*k+4.

Offset 1, canonical program `A363888.P18119979700684300847`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363888 (n : ℕ) : ℤ :=
  A363888.P18119979700684300847.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363888.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363890.P10152016517738257759

`A078182(3*(n+1)-1)`
-/

namespace A363890.P10152016517738257759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078182 (3 * (n + 1) - 1)

end

end A363890.P10152016517738257759

noncomputable section

/-- A363890: Sum of divisors of 3*n-1 of form 3*k+2.

Offset 1, canonical program `A363890.P10152016517738257759`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078182, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363890 (n : ℕ) : ℤ :=
  A363890.P10152016517738257759.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078182, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363890.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363891.P3580145014683779225

`A078182(3*n+1)`
-/

namespace A363891.P3580145014683779225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078182 (3 * n + 1)

end

end A363891.P3580145014683779225

noncomputable section

/-- A363891: Sum of divisors of 3*n-2 of form 3*k+2.

Offset 1, canonical program `A363891.P3580145014683779225`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078182, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363891 (n : ℕ) : ℤ :=
  A363891.P3580145014683779225.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078182, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363891.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364045.P12201197628638156281

`A001878((n+1)/A006519(n+1))-A001899(A152271(n))`
-/

namespace A364045.P12201197628638156281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat - A001899 (A152271 n).toNat

end

end A364045.P12201197628638156281

noncomputable section

/-- A364045: Expansion of Sum_{k>0} x^(3*k) / (1 + x^(5*k)).

Offset 1, canonical program `A364045.P12201197628638156281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364045 (n : ℕ) : ℤ :=
  A364045.P12201197628638156281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364096.P7742146963870490233

`A363925(5*n+4)`
-/

namespace A364096.P7742146963870490233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363925 (5 * n + 4)

end

end A364096.P7742146963870490233

noncomputable section

/-- A364096: Expansion of Sum_{k>0} k * x^(4*k-3) / (1 - x^(5*k-4)).

Offset 1, canonical program `A364096.P7742146963870490233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364096 (n : ℕ) : ℤ :=
  A364096.P7742146963870490233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364097.P16769132018237927195

`A363925(A016885(n))`
-/

namespace A364097.P16769132018237927195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363925 (A016885 n).toNat

end

end A364097.P16769132018237927195

noncomputable section

/-- A364097: Expansion of Sum_{k>0} k * x^(3*k-2) / (1 - x^(5*k-4)).

Offset 1, canonical program `A364097.P16769132018237927195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364097 (n : ℕ) : ℤ :=
  A364097.P16769132018237927195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364098.P15621258973593762124

`A363925(5*n+2)`
-/

namespace A364098.P15621258973593762124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363925 (5 * n + 2)

end

end A364098.P15621258973593762124

noncomputable section

/-- A364098: Expansion of Sum_{k>0} k * x^(2*k-1) / (1 - x^(5*k-4)).

Offset 1, canonical program `A364098.P15621258973593762124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364098 (n : ℕ) : ℤ :=
  A364098.P15621258973593762124.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364099.P10050703620716174614

`A363925(5*n+1)`
-/

namespace A364099.P10050703620716174614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363925 (5 * n + 1)

end

end A364099.P10050703620716174614

noncomputable section

/-- A364099: Expansion of Sum_{k>0} k * x^k / (1 - x^(5*k-4)).

Offset 1, canonical program `A364099.P10050703620716174614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364099 (n : ℕ) : ℤ :=
  A364099.P10050703620716174614.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364099.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A365605.P6705090862699678483

`C(2, A097974(n+1))`
-/

namespace A365605.P6705090862699678483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A097974 (n + 1)).toNat

end

end A365605.P6705090862699678483

noncomputable section

/-- A365605: Characteristic function of numbers without an inferior odd divisor > 1.

Offset 1, canonical program `A365605.P6705090862699678483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365605 (n : ℕ) : ℤ :=
  (A365605.P6705090862699678483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366256.P9552359015136623183

`eq[1, A366255(n)]`
-/

namespace A366256.P9552359015136623183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366255 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366256.P9552359015136623183

noncomputable section

/-- A366256: Positions of odd numbers in May code (A303767).

Offset 1, canonical program `A366256.P9552359015136623183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366256 (n : ℕ) : ℤ :=
  (A366256.P9552359015136623183.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366257.P194233725417520756

`eq[0, A366255(n)]`
-/

namespace A366257.P194233725417520756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366255 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366257.P194233725417520756

noncomputable section

/-- A366257: Positions of even numbers in May code (A303767).

Offset 1, canonical program `A366257.P194233725417520756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366257 (n : ℕ) : ℤ :=
  (A366257.P194233725417520756.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366257.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A366901.P8397804292858311364

`∏{e}[n+1, A115384(#)+1]`
-/

namespace A366901.P8397804292858311364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A115384 (Nat.factorization (f1 n) p) + 1)

end

end A366901.P8397804292858311364

noncomputable section

/-- A366901: The number of exponentially odious divisors of n.

Offset 1, canonical program `A366901.P8397804292858311364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366901 (n : ℕ) : ℤ :=
  A366901.P8397804292858311364.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367573.P17333785257537184699

`∑[4*A138383(n)]`
-/

namespace A367573.P17333785257537184699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A138383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367573.P17333785257537184699

noncomputable section

/-- A367573: Long legs of the only primitive Pythagorean triple whose inradius is the n-th prime and whose short leg is an odd number.

Offset 1, canonical program `A367573.P17333785257537184699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367573 (n : ℕ) : ℤ :=
  A367573.P17333785257537184699.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368363.P14659399016946543767

`∑[A136107(n+1)]`
-/

namespace A368363.P14659399016946543767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368363.P14659399016946543767

noncomputable section

/-- A368363: Partial sums of A136107.

Offset 1, canonical program `A368363.P14659399016946543767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368363 (n : ℕ) : ℤ :=
  A368363.P14659399016946543767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368373.P10681565599172187300

`gcd(2, n+1)*A175441(n+1)`
-/

namespace A368373.P10681565599172187300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A175441 (n + 1)

end

end A368373.P10681565599172187300

noncomputable section

/-- A368373: a(n) = denominator of AM(n)-HM(n), where AM(n) and HM(n) are the arithmetic and harmonic means of the first n positive integers.

Offset 1, canonical program `A368373.P10681565599172187300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A368373 (n : ℕ) : ℤ :=
  A368373.P10681565599172187300.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A368373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368403.P10694540058155907726

`∩[A368402(n+1)-1, A368402(n+1)]`
-/

namespace A368403.P10694540058155907726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368402 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368403.P10694540058155907726

noncomputable section

/-- A368403: Starts of runs of 3 consecutive integers in A268375.

Offset 1, canonical program `A368403.P10694540058155907726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 558 terms. -/
def A368403 (n : ℕ) : ℤ :=
  (A368403.P10694540058155907726.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 558 terms. -/
def A368403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369179.P633880592290612495

`filter[A048881(n), A011655(#)]`
-/

namespace A369179.P633880592290612495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A369179.P633880592290612495

noncomputable section

/-- A369179: Irregular triangle read by rows: row n lists the number of I characters for each of the distinct derivable strings in the MIU formal system that are n characters long.

Offset 2, canonical program `A369179.P633880592290612495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A369179 (n : ℕ) : ℤ :=
  A369179.P633880592290612495.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A369179.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A369736.P2745609336317517813

`A130194(n+1)%2`
-/

namespace A369736.P2745609336317517813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130194 (n + 1)) 2

end

end A369736.P2745609336317517813

noncomputable section

/-- A369736: Triangle read by rows. T(n, k) = 0 if n - k is odd otherwise if 4 divides n - k then 1 otherwise -1.

Offset 0, canonical program `A369736.P2745609336317517813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369736 (n : ℕ) : ℤ :=
  A369736.P2745609336317517813.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369870.P16679001750172927295

`∑[A004593(n+2)]`
-/

namespace A369870.P16679001750172927295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004593 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369870.P16679001750172927295

noncomputable section

/-- A369870: Cumulative sum of digits of base-2 representation of Euler number "e".

Offset 1, canonical program `A369870.P16679001750172927295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369870 (n : ℕ) : ℤ :=
  A369870.P16679001750172927295.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369900.P17764208855534967289

`a(n-1)+2*A004593(n+1)-1` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A369900.P17764208855534967289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  a (n - 1) + 2 * A004593 (n + 1) - 1

end

end A369900.P17764208855534967289

noncomputable section

/-- A369900: a(n) is twice the sum of the first n binary digits of e minus n.

Offset 0, canonical program `A369900.P17764208855534967289`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004593, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369900 (n : ℕ) : ℤ :=
  A369900.P17764208855534967289.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004593, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369900.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369935.P16814839049346386395

`A051903(A197680(n+1))`
-/

namespace A369935.P16814839049346386395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A197680 (n + 1)).toNat

end

end A369935.P16814839049346386395

noncomputable section

/-- A369935: The maximal exponent in the prime factorization of the numbers whose all exponents are squares (A197680).

Offset 1, canonical program `A369935.P16814839049346386395`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A197680, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369935 (n : ℕ) : ℤ :=
  A369935.P16814839049346386395.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A197680, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369935.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370427.P3544381458467413037

`A175298(n)-n`
-/

namespace A370427.P3544381458467413037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n - (n : ℤ)

end

end A370427.P3544381458467413037

noncomputable section

/-- A370427: a(n) is the least k >= 0 such that n OR k is a binary palindrome (where OR denotes the bitwise OR operator).

Offset 0, canonical program `A370427.P3544381458467413037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370427 (n : ℕ) : ℤ :=
  A370427.P3544381458467413037.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370566.P3913357575439077810

`(n+1)*A370181(n+1)`
-/

namespace A370566.P3913357575439077810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A370181 (n + 1)

end

end A370566.P3913357575439077810

noncomputable section

/-- A370566: Size of the group Q_5*/(Q_5*)^n, where Q_5 is the field of 5-adic numbers.

Offset 1, canonical program `A370566.P3913357575439077810`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370181, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370566 (n : ℕ) : ℤ :=
  A370566.P3913357575439077810.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370181, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370566.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371036.P3088427061520026793

`A134759(n)-A141351(n)`
-/

namespace A371036.P3088427061520026793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134759 n - A141351 n

end

end A371036.P3088427061520026793

noncomputable section

/-- A371036: a(n) is the number of ways to place n indistinguishable balls into n distinguishable boxes with at least one box remaining empty and not all balls placed in a single box.

Offset 1, canonical program `A371036.P3088427061520026793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A371036 (n : ℕ) : ℤ :=
  A371036.P3088427061520026793.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A371036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371210.P12332570680869873613

`A324225(A087811(n+2))`
-/

namespace A371210.P12332570680869873613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324225 (A087811 (n + 2)).toNat

end

end A371210.P12332570680869873613

noncomputable section

/-- A371210: Number of minimum vertex colorings in the complement of the path graph on n nodes.

Offset 1, canonical program `A371210.P12332570680869873613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A371210 (n : ℕ) : ℤ :=
  A371210.P12332570680869873613.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A371210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372239.P17364523708032955431

`2*a(n-1)+A028283(n)` with `a(0)=1`
-/

namespace A372239.P17364523708032955431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A028283 n

end

end A372239.P17364523708032955431

noncomputable section

/-- A372239: Expansion of (1 + 2*x) / ((1 - 2*x)*sqrt(1 - 4*x)).

Offset 0, canonical program `A372239.P17364523708032955431`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372239 (n : ℕ) : ℤ :=
  A372239.P17364523708032955431.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372258.P5304101874703348284

`A372257(n)%2`
-/

namespace A372258.P5304101874703348284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372257 n) 2

end

end A372258.P5304101874703348284

noncomputable section

/-- A372258: An infinite sequence over {0,1} with no palindromes of length > 12.

Offset 0, canonical program `A372258.P5304101874703348284`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372257, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372258 (n : ℕ) : ℤ :=
  A372258.P5304101874703348284.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372257, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372258.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372603.P15885825996250797991

`A051903(A057521(n+1))`
-/

namespace A372603.P15885825996250797991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A057521 (n + 1)).toNat

end

end A372603.P15885825996250797991

noncomputable section

/-- A372603: The maximal exponent in the prime factorization of the powerful part of n.

Offset 1, canonical program `A372603.P15885825996250797991`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372603 (n : ℕ) : ℤ :=
  A372603.P15885825996250797991.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372603.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372666.P14082620318056992596

`A077011(lt[1, A131689(n)])`
-/

namespace A372666.P14082620318056992596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A372666.P14082620318056992596

noncomputable section

/-- A372666: Numbers of the form A002110(k)/prime(i); i = 2..k-1; sorted.

Offset 1, canonical program `A372666.P14082620318056992596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1376 terms. -/
def A372666 (n : ℕ) : ℤ :=
  A372666.P14082620318056992596.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1376 terms. -/
def A372666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372727.P4784361531490275736

`A003056(n)%A130270(n+1)`
-/

namespace A372727.P4784361531490275736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 n) (A130270 (n + 1))

end

end A372727.P4784361531490275736

noncomputable section

/-- A372727: Triangle read by rows: T(n, k) = n if k = 0, otherwise n - k*floor(n/k). The binary modulo operation.

Offset 0, canonical program `A372727.P4784361531490275736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372727 (n : ℕ) : ℤ :=
  A372727.P4784361531490275736.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373095.P265184573945990704

`A000045((2*n)%A324400(2*n+1))`
-/

namespace A373095.P265184573945990704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (2 * n : ℤ) (A324400 (2 * n + 1))).toNat

end

end A373095.P265184573945990704

noncomputable section

/-- A373095: a(n) = a[n/4] + a[n/8] + a[n/16] + ..., where a(0) = 0, a(1) = 1, and [ ] = floor.

Offset 0, canonical program `A373095.P265184573945990704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373095 (n : ℕ) : ℤ :=
  A373095.P265184573945990704.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373156.P12007324002122430818

`C(A214681(n+1), n+1)`
-/

namespace A373156.P12007324002122430818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A214681 (n + 1)).toNat (n + 1)

end

end A373156.P12007324002122430818

noncomputable section

/-- A373156: a(n) = 1 if the 2-adic and the 3-adic valuations of n are equal, otherwise 0.

Offset 1, canonical program `A373156.P12007324002122430818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373156 (n : ℕ) : ℤ :=
  (A373156.P12007324002122430818.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373188.P5716519306742437807

`A373185(n+1)-A115362(n)`
-/

namespace A373188.P5716519306742437807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373185 (n + 1) - A115362 n

end

end A373188.P5716519306742437807

noncomputable section

/-- A373188: Expansion of Sum_{k>=0} x^(4^k) / (1 - x^(4^k))^2.

Offset 1, canonical program `A373188.P5716519306742437807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373188 (n : ℕ) : ℤ :=
  A373188.P5716519306742437807.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373699.P4733375539581305537

`∑[A024675(n+1)]`
-/

namespace A373699.P4733375539581305537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373699.P4733375539581305537

noncomputable section

/-- A373699: a(n) is the area of the (n+1)-gon having vertices coordinates (2,0), (2,prime(2)), ..., (n,prime(n)), (n,0).

Offset 3, canonical program `A373699.P4733375539581305537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373699 (n : ℕ) : ℤ :=
  A373699.P4733375539581305537.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374015.P15186651085114264246

`A008904(n)%5`
-/

namespace A374015.P15186651085114264246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008904 n) 5

end

end A374015.P15186651085114264246

noncomputable section

/-- A374015: Residue modulo 5 of n! divided by the highest power of 10 which divides n!.

Offset 0, canonical program `A374015.P15186651085114264246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374015 (n : ℕ) : ℤ :=
  A374015.P15186651085114264246.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374183.P5104469556233860384

`filter[A374180(n+1), A011558(#)]`
-/

namespace A374183.P5104469556233860384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A374183.P5104469556233860384

noncomputable section

/-- A374183: Numbers k such that K(15 / k) != K((-1)^floor(k/2)*k / 15), where K(a/b) is the Kronecker symbol. Row 4 of A374188.

Offset 1, canonical program `A374183.P5104469556233860384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8004 terms. -/
def A374183 (n : ℕ) : ℤ :=
  A374183.P5104469556233860384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8004 terms. -/
def A374183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374198.P8695164487489042083

`record[(n+1)*A374197(n+1)]`
-/

namespace A374198.P8695164487489042083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A374197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374198.P8695164487489042083

noncomputable section

/-- A374198: After initial 1, numbers k such that at least one of their divisors is a multiply-perfect number (A007691) larger than one.

Offset 1, canonical program `A374198.P8695164487489042083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374198 (n : ℕ) : ℤ :=
  A374198.P8695164487489042083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374198.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A374326.P8962171448566803801

`sqrt(A374325(n+1))`
-/

namespace A374326.P8962171448566803801
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A374325 (n + 1) : ℝ)

end

end A374326.P8962171448566803801

noncomputable section

/-- A374326: The square root of the maximal exponent in the prime factorization of the numbers whose maximal exponent in their prime factorization is a square.

Offset 1, canonical program `A374326.P8962171448566803801`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374325, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374326 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A374326.P8962171448566803801.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374325, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374326.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374327.P9816410102867330981

`A051903(A369938(n+1))`
-/

namespace A374327.P9816410102867330981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A369938 (n + 1)).toNat

end

end A374327.P9816410102867330981

noncomputable section

/-- A374327: The maximal exponent in the prime factorization of the numbers whose maximal exponent in their prime factorization is a power of 2.

Offset 1, canonical program `A374327.P9816410102867330981`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A369938, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374327 (n : ℕ) : ℤ :=
  A374327.P9816410102867330981.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A369938, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374327.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374537.P5043610287241406847

`∑{d}[A019554(n+1), A102631(#)²]`
-/

namespace A374537.P5043610287241406847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A102631 d ^ 2

end

end A374537.P5043610287241406847

noncomputable section

/-- A374537: a(n) is the sum of the squares of the divisors of n that are exponentially odd numbers.

Offset 1, canonical program `A374537.P5043610287241406847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374537 (n : ℕ) : ℤ :=
  A374537.P5043610287241406847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374900.P15230006939950330574

`A363853(n+1)-A363858(n+1)`
-/

namespace A374900.P15230006939950330574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363853 (n + 1) - A363858 (n + 1)

end

end A374900.P15230006939950330574

noncomputable section

/-- A374900: Expansion of Sum_{k in Z} x^k / (1 - x^(7*k+1)).

Offset 0, canonical program `A374900.P15230006939950330574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374900 (n : ℕ) : ℤ :=
  A374900.P15230006939950330574.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375148.P10494542387992813350

`A363852(n+1)-A363857(n+1)`
-/

namespace A375148.P10494542387992813350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363852 (n + 1) - A363857 (n + 1)

end

end A375148.P10494542387992813350

noncomputable section

/-- A375148: Expansion of Sum_{k in Z} x^k / (1 - x^(7*k+2)).

Offset 0, canonical program `A375148.P10494542387992813350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375148 (n : ℕ) : ℤ :=
  A375148.P10494542387992813350.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375149.P2216572402173144936

`A363850(n+1)-A363855(n+1)`
-/

namespace A375149.P2216572402173144936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363850 (n + 1) - A363855 (n + 1)

end

end A375149.P2216572402173144936

noncomputable section

/-- A375149: Expansion of Sum_{k in Z} x^k / (1 - x^(7*k+4)).

Offset 0, canonical program `A375149.P2216572402173144936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375149 (n : ℕ) : ℤ :=
  A375149.P2216572402173144936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375150.P910805378827683235

`A362845(n+1)-A363854(n+1)`
-/

namespace A375150.P910805378827683235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362845 (n + 1) - A363854 (n + 1)

end

end A375150.P910805378827683235

noncomputable section

/-- A375150: Expansion of Sum_{k in Z} x^k / (1 - x^(7*k+5)).

Offset 0, canonical program `A375150.P910805378827683235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375150 (n : ℕ) : ℤ :=
  A375150.P910805378827683235.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375177.P17845045903573206518

`A037966(n)+A037965(n+1)`
-/

namespace A375177.P17845045903573206518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037966 n + A037965 (n + 1)

end

end A375177.P17845045903573206518

noncomputable section

/-- A375177: a(n) = 1/(n + 1)^2 * Sum_{k = 1..n+1} (k^4)*binomial(n+1, k)^2.

Offset 1, canonical program `A375177.P17845045903573206518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A375177 (n : ℕ) : ℤ :=
  A375177.P17845045903573206518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A375177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375360.P7444135275151362843

`A051903(A356191(n+1))`
-/

namespace A375360.P7444135275151362843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A356191 (n + 1)).toNat

end

end A375360.P7444135275151362843

noncomputable section

/-- A375360: The maximum exponent in the prime factorization of the smallest exponentially odd number that is divisible by n.

Offset 1, canonical program `A375360.P7444135275151362843`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375360 (n : ℕ) : ℤ :=
  A375360.P7444135275151362843.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376216.P15355088566132048219

`lt[2, A336643(n+1)]+1`
-/

namespace A376216.P15355088566132048219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A376216.P15355088566132048219

noncomputable section

/-- A376216: Numbers whose sum of powerful divisors (including 1) is even.

Offset 1, canonical program `A376216.P15355088566132048219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7718 terms. -/
def A376216 (n : ℕ) : ℤ :=
  (A376216.P15355088566132048219.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7718 terms. -/
def A376216.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A376604.P10742585192256069386

`Δ[A054354(n+1)]`
-/

namespace A376604.P10742585192256069386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376604.P10742585192256069386

noncomputable section

/-- A376604: Second differences of the Kolakoski sequence (A000002). First differences of A054354.

Offset 1, canonical program `A376604.P10742585192256069386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A376604 (n : ℕ) : ℤ :=
  A376604.P10742585192256069386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A376604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376645.P10778335862260633849

`A051903((n+1)*A006519(n+1))`
-/

namespace A376645.P10778335862260633849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 ((n + 1 : ℤ) * A006519 (n + 1)).toNat

end

end A376645.P10778335862260633849

noncomputable section

/-- A376645: The maximum exponent in the factorization of n into powers of Gaussian primes.

Offset 1, canonical program `A376645.P10778335862260633849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A376645 (n : ℕ) : ℤ :=
  A376645.P10778335862260633849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A376645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376652.P17197450697105744310

`A065890(A049579(n+1))`
-/

namespace A376652.P17197450697105744310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (A049579 (n + 1)).toNat

end

end A376652.P17197450697105744310

noncomputable section

/-- A376652: Points of downward concavity in the sequence of composite numbers (A002808).

Offset 1, canonical program `A376652.P17197450697105744310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8729 terms. -/
def A376652 (n : ℕ) : ℤ :=
  A376652.P17197450697105744310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8729 terms. -/
def A376652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377627.P16180455227699645803

`A306847(2*n)`
-/

namespace A377627.P16180455227699645803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 (2 * n)

end

end A377627.P16180455227699645803

noncomputable section

/-- A377627: Cogrowth sequence of the 12-element group C6 X C2 = .

Offset 0, canonical program `A377627.P16180455227699645803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A377627 (n : ℕ) : ℤ :=
  A377627.P16180455227699645803.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A377627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378031.P538866673895415262

`A306847(3*n)`
-/

namespace A378031.P538866673895415262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 (3 * n)

end

end A378031.P538866673895415262

noncomputable section

/-- A378031: Cogrowth sequence for the 18-element group C6 X C3 = .

Offset 0, canonical program `A378031.P538866673895415262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A378031 (n : ℕ) : ℤ :=
  A378031.P538866673895415262.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A378031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378145.P15300547793781424143

`A106566(n+1)+A106566(n)`
-/

namespace A378145.P15300547793781424143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (n + 1) + A106566 n

end

end A378145.P15300547793781424143

noncomputable section

/-- A378145: Riordan triangle (1 + x * C(x), x * C(x)), where C(x) is g.f. of A000108.

Offset 0, canonical program `A378145.P15300547793781424143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378145 (n : ℕ) : ℤ :=
  A378145.P15300547793781424143.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379227.P2007350133702125727

`C(n-A379225(n+1), n)`
-/

namespace A379227.P2007350133702125727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) - A379225 (n + 1)).toNat n

end

end A379227.P2007350133702125727

noncomputable section

/-- A379227: a(n) = 1 if A113177(n) is a multiple of 5, otherwise 0, where A113177 is fully additive with a(p) = Fibonacci(p).

Offset 1, canonical program `A379227.P2007350133702125727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379227 (n : ℕ) : ℤ :=
  (A379227.P2007350133702125727.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379584.P4296113022240431250

`gcd(A034386(n), A045948(n+1))*A045948(n+1)`
-/

namespace A379584.P4296113022240431250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A034386 n) (A045948 (n + 1)) : ℤ) * A045948 (n + 1)

end

end A379584.P4296113022240431250

noncomputable section

/-- A379584: Denominators of the partial sums of the reciprocals of the powerful part function (A057521).

Offset 1, canonical program `A379584.P4296113022240431250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A379584 (n : ℕ) : ℤ :=
  A379584.P4296113022240431250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A379584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379822.P7224189513868805994

`A094527(n)+A122366(n)-A062344(n)`
-/

namespace A379822.P7224189513868805994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 n + (A122366 n - A062344 n)

end

end A379822.P7224189513868805994

noncomputable section

/-- A379822: Triangle read by rows: T(n, k) is the number of walks of length n on the Z X Z grid with unit steps in all four directions (NSWE) starting at (0, 0), and ending on the vertical line x = 0 if k = 0, or on the line x = k or x = -(n + 1 - k) if k > 0.

Offset 0, canonical program `A379822.P7224189513868805994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379822 (n : ℕ) : ℤ :=
  A379822.P7224189513868805994.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380113.P2900189167819423770

`A110608(n)/A132749(n)`
-/

namespace A380113.P2900189167819423770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110608 n : ℚ) / (A132749 n : ℚ)

end

end A380113.P2900189167819423770

noncomputable section

/-- A380113: Triangle read by rows: The inverse matrix of the central factorials A370707, row n normalized by (-1)^(n - k)*A370707(n, n).

Offset 0, canonical program `A380113.P2900189167819423770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7786 terms. -/
def A380113 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380113.P2900189167819423770.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7786 terms. -/
def A380113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381101.P6112073308414063635

`A010060(eq[0, A048730(n)])`
-/

namespace A381101.P6112073308414063635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A381101.P6112073308414063635

noncomputable section

/-- A381101: Allouche-Johnson binary sequence based on the Narayana's cows sequence A000930.

Offset 0, canonical program `A381101.P6112073308414063635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A381101 (n : ℕ) : ℤ :=
  A381101.P6112073308414063635.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A381101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381883.P1597276662483742425

`A258758(n)/A100100(n)`
-/

namespace A381883.P1597276662483742425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258758 n : ℚ) / (A100100 n : ℚ)

end

end A381883.P1597276662483742425

noncomputable section

/-- A381883: Triangle read by rows: T(n, k) = binomial(2*n - 1, k).

Offset 0, canonical program `A381883.P1597276662483742425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6607 terms. -/
def A381883 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381883.P1597276662483742425.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6607 terms. -/
def A381883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382416.P15268872696336261264

`comp[A248910(n+1)]`
-/

namespace A382416.P15268872696336261264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382416.P15268872696336261264

noncomputable section

/-- A382416: Numbers with at least one zero in their base-6 representation.

Offset 1, canonical program `A382416.P15268872696336261264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382416 (n : ℕ) : ℤ :=
  (A382416.P15268872696336261264.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301299.P710990171034367866

`A265227(n+1)+A004525(A315373(n))`
-/

namespace A301299.P710990171034367866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1) + A004525 (A315373 n).toNat

end

end A301299.P710990171034367866

noncomputable section

/-- A301299: Coordination sequence for node of type V1 in "krq" 2-D tiling (or net).

Offset 0, canonical program `A301299.P710990171034367866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1924 terms. -/
def A301299 (n : ℕ) : ℤ :=
  A301299.P710990171034367866.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1924 terms. -/
def A301299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301671.P18213465038880259880

`∑[A301670(n)]`
-/

namespace A301671.P18213465038880259880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301671.P18213465038880259880

noncomputable section

/-- A301671: Partial sums of A301670.

Offset 0, canonical program `A301671.P18213465038880259880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A301671 (n : ℕ) : ℤ :=
  A301671.P18213465038880259880.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A301671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301681.P13351959432488104399

`∑[A301680(n)]`
-/

namespace A301681.P13351959432488104399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301681.P13351959432488104399

noncomputable section

/-- A301681: Partial sums of A301680.

Offset 0, canonical program `A301681.P13351959432488104399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A301681 (n : ℕ) : ℤ :=
  A301681.P13351959432488104399.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A301681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301724.P3038787070238484686

`A330033(n)+A314209(n)`
-/

namespace A301724.P3038787070238484686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330033 n + A314209 n

end

end A301724.P3038787070238484686

noncomputable section

/-- A301724: Coordination sequence for node of type V1 in "kra" 2-D tiling (or net).

Offset 0, canonical program `A301724.P3038787070238484686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2256 terms. -/
def A301724 (n : ℕ) : ℤ :=
  A301724.P3038787070238484686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2256 terms. -/
def A301724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301975.P361994510138605052

`eq[A054008(n+1), A160550(n+1)]+1`
-/

namespace A301975.P361994510138605052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160550 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A301975.P361994510138605052

noncomputable section

/-- A301975: Numbers whose abundance is divisible by its number of divisors.

Offset 1, canonical program `A301975.P361994510138605052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2706 terms. -/
def A301975 (n : ℕ) : ℤ :=
  (A301975.P361994510138605052.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2706 terms. -/
def A301975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301977.P124265642836154627

`A070992(n)-A174868(n)`
-/

namespace A301977.P124265642836154627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070992 n - A174868 n

end

end A301977.P124265642836154627

noncomputable section

/-- A301977: a(n) is the number of distinct positive numbers whose binary digits appear in order but not necessarily as consecutive digits in the binary representation of n.

Offset 1, canonical program `A301977.P124265642836154627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301977 (n : ℕ) : ℤ :=
  A301977.P124265642836154627.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303278.P12937793510976264127

`A005361(n+1)^A007947(n+1)`
-/

namespace A303278.P12937793510976264127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005361 (n + 1) : ℚ) ^ (A007947 (n + 1) : ℤ)

end

end A303278.P12937793510976264127

noncomputable section

/-- A303278: If n = Product_j p_j^k_j where the p_j are distinct primes then a(n) = (Product_j k_j)^(Product_j p_j).

Offset 1, canonical program `A303278.P12937793510976264127`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A303278 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A303278.P12937793510976264127.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A303278.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A303781.P6125466833604398313

`A009191(n+1)-A063524(n)`
-/

namespace A303781.P6125466833604398313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 (n + 1) - A063524 n

end

end A303781.P6125466833604398313

noncomputable section

/-- A303781: a(2) = 1; for n <> 2, a(n) = gcd(n, A000005(n)), where A000005(n) = number of divisors of n.

Offset 1, canonical program `A303781.P6125466833604398313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303781 (n : ℕ) : ℤ :=
  A303781.P6125466833604398313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304404.P2880738735894886889

`A062509(n+1)/(n+1)`
-/

namespace A304404.P2880738735894886889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062509 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A304404.P2880738735894886889

noncomputable section

/-- A304404: If n = Product (p_j^k_j) then a(n) = Product (n/p_j^k_j).

Offset 1, canonical program `A304404.P2880738735894886889`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062509, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304404 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A304404.P2880738735894886889.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062509, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304404.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A304411.P4036889141773001327

`A005361(n+1)*A048250(n+1)`
-/

namespace A304411.P4036889141773001327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A048250 (n + 1)

end

end A304411.P4036889141773001327

noncomputable section

/-- A304411: If n = Product (p_j^k_j) then a(n) = Product ((p_j + 1)*k_j).

Offset 1, canonical program `A304411.P4036889141773001327`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A304411 (n : ℕ) : ℤ :=
  A304411.P4036889141773001327.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A304411.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A304412.P15858694331180432577

`A000005(n+1)*A048250(n+1)`
-/

namespace A304412.P15858694331180432577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A048250 (n + 1)

end

end A304412.P15858694331180432577

noncomputable section

/-- A304412: If n = Product (p_j^k_j) then a(n) = Product ((p_j + 1)*(k_j + 1)).

Offset 1, canonical program `A304412.P15858694331180432577`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A304412 (n : ℕ) : ℤ :=
  A304412.P15858694331180432577.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A304412.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A304438.P13191911540264673276

`∑{d}[n+1, A010051(#)*A154269((n+1)/#)]`
-/

namespace A304438.P13191911540264673276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304438.P13191911540264673276

noncomputable section

/-- A304438: Coefficient of s(y) in p(|y|), where s is Schur functions, p is power-sum symmetric functions, y is the integer partition with Heinz number n, and |y| = Sum y_i.

Offset 1, canonical program `A304438.P13191911540264673276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304438 (n : ℕ) : ℤ :=
  A304438.P13191911540264673276.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304651.P3576326114544624841

`a(n-1)+4*A000089(n)` with `a(0)=0`
-/

namespace A304651.P3576326114544624841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 4 * A000089 n

end

end A304651.P3576326114544624841

noncomputable section

/-- A304651: Number of coprime pairs (x,y) with x^2 + y^2 <= n.

Offset 0, canonical program `A304651.P3576326114544624841`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304651 (n : ℕ) : ℤ :=
  A304651.P3576326114544624841.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304651.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305117.P17948678590562359132

`a(n-1)+A000089(n)` with `a(0)=0`
-/

namespace A305117.P17948678590562359132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000089 n

end

end A305117.P17948678590562359132

noncomputable section

/-- A305117: a(n) = A304651(n)/4.

Offset 0, canonical program `A305117.P17948678590562359132`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305117 (n : ℕ) : ℤ :=
  A305117.P17948678590562359132.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305117.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305496.P3717088161974094757

`3*A305495(n+1)-1`
-/

namespace A305496.P3717088161974094757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A305495 (n + 1) - 1

end

end A305496.P3717088161974094757

noncomputable section

/-- A305496: Positions of 2 in the fixed point of the morphism 0->120, 1->110, 2->100 applied to 1 (as in A305490).

Offset 1, canonical program `A305496.P3717088161974094757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305496 (n : ℕ) : ℤ :=
  A305496.P3717088161974094757.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306298.P5813132135022434998

`eq[2, A082863(n+2)]+2`
-/

namespace A306298.P5813132135022434998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082863 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A306298.P5813132135022434998

noncomputable section

/-- A306298: Numbers k such that k^2-1 is divisible by exactly two distinct primes.

Offset 1, canonical program `A306298.P5813132135022434998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A306298 (n : ℕ) : ℤ :=
  (A306298.P5813132135022434998.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A306298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306807.P4487341129196582665

`A185114(A082375(n)+1)+A082375(n)+1`
-/

namespace A306807.P4487341129196582665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185114 (A082375 n + 1).toNat + (A082375 n + 1)

end

end A306807.P4487341129196582665

noncomputable section

/-- A306807: An irregular fractal sequence: underline a(n) iff the absolute difference |a(n-1) - a(n)| is prime; all underlined terms rebuild the starting sequence.

Offset 1, canonical program `A306807.P4487341129196582665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306807 (n : ℕ) : ℤ :=
  A306807.P4487341129196582665.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307000.P4616291830837639980

`∑{d}[n+1, A252505(#)*A353628((n+1)/#)]`
-/

namespace A307000.P4616291830837639980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A252505 d * A353628 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307000.P4616291830837639980

noncomputable section

/-- A307000: Number of unitary rings with additive group (Z/nZ)^2. Equivalently, number of unitary commutative rings with additive group (Z/nZ)^2.

Offset 1, canonical program `A307000.P4616291830837639980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307000 (n : ℕ) : ℤ :=
  A307000.P4616291830837639980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307011.P16481018969621470149

`A307012(A184010(n+1))`
-/

namespace A307011.P16481018969621470149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307012 (A184010 (n + 1)).toNat

end

end A307011.P16481018969621470149

noncomputable section

/-- A307011: First coordinate in a redundant hexagonal coordinate system of the points of a counterclockwise spiral on an hexagonal grid. Second and third coordinates are given in A307012 and A345978.

Offset 0, canonical program `A307011.P16481018969621470149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307011 (n : ℕ) : ℤ :=
  A307011.P16481018969621470149.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307120.P1673145710130968314

`A009005(A343005(n+2)+∏{e}[n, #+1])`
-/

namespace A307120.P1673145710130968314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (A343005 (n + 2) + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)).toNat

end

end A307120.P1673145710130968314

noncomputable section

/-- A307120: a(1) = 3, for n>1, a(n) = A000005(n-1) + A000005(n) + A000005(n+1).

Offset 1, canonical program `A307120.P1673145710130968314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307120 (n : ℕ) : ℤ :=
  A307120.P1673145710130968314.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307390.P18238865326360100197

`∪[A068497(n+1), A007528(n+1)]`
-/

namespace A307390.P18238865326360100197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307390.P18238865326360100197

noncomputable section

/-- A307390: Primes p such that 2*p-1 is not prime.

Offset 1, canonical program `A307390.P18238865326360100197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307390 (n : ℕ) : ℤ :=
  (A307390.P18238865326360100197.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308360.P14482252966188849651

`A064549(n+1)^(A005361(n+1)/2)`
-/

namespace A308360.P14482252966188849651
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℝ) ^ ((A005361 (n + 1) : ℚ) / 2 : ℝ)

end

end A308360.P14482252966188849651

noncomputable section

/-- A308360: Product of positive divisors d of n that are divisible by every prime that divides n.

Offset 1, canonical program `A308360.P14482252966188849651`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308360 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A308360.P14482252966188849651.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308360.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A308833.P17401601876213426740

`eq[A010051(n+1), A010051(n+2)]`
-/

namespace A308833.P17401601876213426740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308833.P17401601876213426740

noncomputable section

/-- A308833: Numbers r such that the r-th tetrahedral number A000292(r) divides r!.

Offset 1, canonical program `A308833.P17401601876213426740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308833 (n : ℕ) : ℤ :=
  (A308833.P17401601876213426740.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309125.P14621074972548703162

`∑[A035316(n+1)]`
-/

namespace A309125.P14621074972548703162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309125.P14621074972548703162

noncomputable section

/-- A309125: a(n) = n + 2^2 * floor(n/2^2) + 3^2 * floor(n/3^2) + 4^2 * floor(n/4^2) + ...

Offset 1, canonical program `A309125.P14621074972548703162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309125 (n : ℕ) : ℤ :=
  A309125.P14621074972548703162.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309307.P44992058381034953

`A034444(n+1)-1`
-/

namespace A309307.P44992058381034953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - 1

end

end A309307.P44992058381034953

noncomputable section

/-- A309307: Number of unitary divisors of n (excluding 1).

Offset 1, canonical program `A309307.P44992058381034953`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309307 (n : ℕ) : ℤ :=
  A309307.P44992058381034953.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309307.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A309507.P1026939547968616405

`A092517(n+1)-A063440(n+1)-1`
-/

namespace A309507.P1026939547968616405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092517 (n + 1) - A063440 (n + 1) - 1

end

end A309507.P1026939547968616405

noncomputable section

/-- A309507: Number of ways the n-th triangular number T(n) = A000217(n) can be written as the difference of two positive triangular numbers.

Offset 1, canonical program `A309507.P1026939547968616405`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309507 (n : ℕ) : ℤ :=
  A309507.P1026939547968616405.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309507.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A309649.P15868022147987081521

`A007821(n+1)-A000007(n)`
-/

namespace A309649.P15868022147987081521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1) - A000007 n

end

end A309649.P15868022147987081521

noncomputable section

/-- A309649: Sieved recursive primeth recurrence (see Comments for precise definition).

Offset 1, canonical program `A309649.P15868022147987081521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309649 (n : ℕ) : ℤ :=
  A309649.P15868022147987081521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309732.P16927828332471193003

`(n+1)*A152211(n+1)/2`
-/

namespace A309732.P16927828332471193003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A152211 (n + 1) : ℚ) / 2

end

end A309732.P16927828332471193003

noncomputable section

/-- A309732: Expansion of Sum_{k>=1} k^2 * x^k/(1 - x^k)^3.

Offset 1, canonical program `A309732.P16927828332471193003`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309732 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A309732.P16927828332471193003.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309732.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A310252.P16435605649831598924

`A008574(n)+A313568(n)-A315373(n)`
-/

namespace A310252.P16435605649831598924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A313568 n - A315373 n)

end

end A310252.P16435605649831598924

noncomputable section

/-- A310252: Coordination sequence Gal.3.3.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310252.P16435605649831598924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A310252 (n : ℕ) : ℤ :=
  A310252.P16435605649831598924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A310252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310376.P1602413668059048262

`A312998(n)+A087509(n)`
-/

namespace A310376.P1602413668059048262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312998 n + A087509 n

end

end A310376.P1602413668059048262

noncomputable section

/-- A310376: Coordination sequence Gal.5.199.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310376.P1602413668059048262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2458 terms. -/
def A310376 (n : ℕ) : ℤ :=
  A310376.P1602413668059048262.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2458 terms. -/
def A310376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310454.P10457649734858247148

`A313100(n)+A004396(n-A004396(n))`
-/

namespace A310454.P10457649734858247148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A310454.P10457649734858247148

noncomputable section

/-- A310454: Coordination sequence Gal.5.140.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310454.P10457649734858247148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A310454 (n : ℕ) : ℤ :=
  A310454.P10457649734858247148.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A310454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310457.P16493432866440018561

`A310410(n)+Δ[A011865(n)]`
-/

namespace A310457.P16493432866440018561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310410 n + (f1 (n + 1) - f1 n)

end

end A310457.P16493432866440018561

noncomputable section

/-- A310457: Coordination sequence Gal.6.345.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310457.P16493432866440018561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. -/
def A310457 (n : ℕ) : ℤ :=
  A310457.P16493432866440018561.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. -/
def A310457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310492.P3547860379058493254

`A315445(n)-A253262(A253262(n)+n)`
-/

namespace A310492.P3547860379058493254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315445 n - A253262 (A253262 n + (n : ℤ)).toNat

end

end A310492.P3547860379058493254

noncomputable section

/-- A310492: Coordination sequence Gal.6.249.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310492.P3547860379058493254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2411 terms. -/
def A310492 (n : ℕ) : ℤ :=
  A310492.P3547860379058493254.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2411 terms. -/
def A310492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310493.P491155023743620947

`2*A313026(n)-A008574(n)`
-/

namespace A310493.P491155023743620947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313026 n - A008574 n

end

end A310493.P491155023743620947

noncomputable section

/-- A310493: Coordination sequence Gal.5.86.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310493.P491155023743620947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2407 terms. -/
def A310493 (n : ℕ) : ℤ :=
  A310493.P491155023743620947.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2407 terms. -/
def A310493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310511.P9412189317304849787

`A002264(A004525(n+2))+A313099(n)+A002264(n+1)`
-/

namespace A310511.P9412189317304849787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A004525 (n + 2)).toNat + (A313099 n + A002264 (n + 1))

end

end A310511.P9412189317304849787

noncomputable section

/-- A310511: Coordination sequence Gal.6.354.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310511.P9412189317304849787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A310511 (n : ℕ) : ℤ :=
  A310511.P9412189317304849787.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A310511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310524.P4933406775284647162

`A314124(n)-A128834(n)`
-/

namespace A310524.P4933406775284647162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314124 n - A128834 n

end

end A310524.P4933406775284647162

noncomputable section

/-- A310524: Coordination sequence Gal.6.356.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310524.P4933406775284647162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A310524 (n : ℕ) : ℤ :=
  A310524.P4933406775284647162.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A310524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311157.P16536294086485933595

`A047299(n+1)+A311958(n)-A191275(n+1)`
-/

namespace A311157.P16536294086485933595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (n + 1) + (A311958 n - A191275 (n + 1))

end

end A311157.P16536294086485933595

noncomputable section

/-- A311157: Coordination sequence Gal.4.89.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311157.P16536294086485933595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2527 terms. -/
def A311157 (n : ℕ) : ℤ :=
  A311157.P16536294086485933595.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2527 terms. -/
def A311157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311233.P3691787065330941745

`2*A314677(n)-A315173(n)`
-/

namespace A311233.P3691787065330941745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314677 n - A315173 n

end

end A311233.P3691787065330941745

noncomputable section

/-- A311233: Coordination sequence Gal.4.70.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311233.P3691787065330941745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. -/
def A311233 (n : ℕ) : ℤ :=
  A311233.P3691787065330941745.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. -/
def A311233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311285.P17835252962128537387

`A312140(n)-A047513(n+1)+n`
-/

namespace A311285.P17835252962128537387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n - A047513 (n + 1) + (n : ℤ)

end

end A311285.P17835252962128537387

noncomputable section

/-- A311285: Coordination sequence Gal.4.70.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311285.P17835252962128537387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A311285 (n : ℕ) : ℤ :=
  A311285.P17835252962128537387.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A311285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311312.P1118141043632426917

`A314903(n)-A004396(n)`
-/

namespace A311312.P1118141043632426917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314903 n - A004396 n

end

end A311312.P1118141043632426917

noncomputable section

/-- A311312: Coordination sequence Gal.6.118.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311312.P1118141043632426917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2375 terms. -/
def A311312 (n : ℕ) : ℤ :=
  A311312.P1118141043632426917.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2375 terms. -/
def A311312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311433.P1198720009371064807

`A313100(n)-∑[A021913(n)]`
-/

namespace A311433.P1198720009371064807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311433.P1198720009371064807

noncomputable section

/-- A311433: Coordination sequence Gal.5.97.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311433.P1198720009371064807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2446 terms. -/
def A311433 (n : ℕ) : ℤ :=
  A311433.P1198720009371064807.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2446 terms. -/
def A311433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311439.P1582129312365160532

`A313115(n)-A004523(A145569(n))`
-/

namespace A311439.P1582129312365160532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n - A004523 (A145569 n).toNat

end

end A311439.P1582129312365160532

noncomputable section

/-- A311439: Coordination sequence Gal.4.40.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311439.P1582129312365160532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2423 terms. -/
def A311439 (n : ℕ) : ℤ :=
  A311439.P1582129312365160532.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2423 terms. -/
def A311439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311535.P8801384173833754129

`A151988(n)+A311440(n)-n`
-/

namespace A311535.P8801384173833754129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + (A311440 n - (n : ℤ))

end

end A311535.P8801384173833754129

noncomputable section

/-- A311535: Coordination sequence Gal.5.53.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311535.P8801384173833754129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2530 terms. -/
def A311535 (n : ℕ) : ℤ :=
  A311535.P8801384173833754129.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2530 terms. -/
def A311535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311536.P3424526079161811311

`A314964(n)-A004396(n)`
-/

namespace A311536.P3424526079161811311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314964 n - A004396 n

end

end A311536.P3424526079161811311

noncomputable section

/-- A311536: Coordination sequence Gal.6.120.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311536.P3424526079161811311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2308 terms. -/
def A311536 (n : ℕ) : ℤ :=
  A311536.P3424526079161811311.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2308 terms. -/
def A311536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311601.P4498607842150103935

`2*A311440(n)-A008574(n)`
-/

namespace A311601.P4498607842150103935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311440 n - A008574 n

end

end A311601.P4498607842150103935

noncomputable section

/-- A311601: Coordination sequence Gal.6.230.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311601.P4498607842150103935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2601 terms. -/
def A311601 (n : ℕ) : ℤ :=
  A311601.P4498607842150103935.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2601 terms. -/
def A311601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311612.P8550117147487517708

`2*A311458(n)-A008574(n)`
-/

namespace A311612.P8550117147487517708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311458 n - A008574 n

end

end A311612.P8550117147487517708

noncomputable section

/-- A311612: Coordination sequence Gal.5.98.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311612.P8550117147487517708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2513 terms. -/
def A311612 (n : ℕ) : ℤ :=
  A311612.P8550117147487517708.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2513 terms. -/
def A311612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311699.P1694921435431458

`A151988(n)+A313826(n)-A005843(n)`
-/

namespace A311699.P1694921435431458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + (A313826 n - A005843 n)

end

end A311699.P1694921435431458

noncomputable section

/-- A311699: Coordination sequence Gal.4.48.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311699.P1694921435431458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2374 terms. -/
def A311699 (n : ℕ) : ℤ :=
  A311699.P1694921435431458.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2374 terms. -/
def A311699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311710.P6691464285514070511

`A008458(n)+A008574(n)-A313538(n)-A047588(n+1)`
-/

namespace A311710.P6691464285514070511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313538 n) - A047588 (n + 1)

end

end A311710.P6691464285514070511

noncomputable section

/-- A311710: Coordination sequence Gal.4.68.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311710.P6691464285514070511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2440 terms. -/
def A311710 (n : ℕ) : ℤ :=
  A311710.P6691464285514070511.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2440 terms. -/
def A311710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311803.P9375890078183574717

`A313685(n)-A242062(4*n)`
-/

namespace A311803.P9375890078183574717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313685 n - A242062 (4 * n)

end

end A311803.P9375890078183574717

noncomputable section

/-- A311803: Coordination sequence Gal.4.40.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311803.P9375890078183574717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. -/
def A311803 (n : ℕ) : ℤ :=
  A311803.P9375890078183574717.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. -/
def A311803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311931.P15801867738715780697

`A315036(n)-A291290(A032766(n))`
-/

namespace A311931.P15801867738715780697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315036 n - A291290 (A032766 n).toNat

end

end A311931.P15801867738715780697

noncomputable section

/-- A311931: Coordination sequence Gal.3.17.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311931.P15801867738715780697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. -/
def A311931 (n : ℕ) : ℤ :=
  A311931.P15801867738715780697.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. -/
def A311931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311993.P8391129564967139039

`A311344(n)+Δ[A011862(n)]`
-/

namespace A311993.P8391129564967139039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311344 n + (f1 (n + 1) - f1 n)

end

end A311993.P8391129564967139039

noncomputable section

/-- A311993: Coordination sequence Gal.5.98.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311993.P8391129564967139039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2532 terms. -/
def A311993 (n : ℕ) : ℤ :=
  A311993.P8391129564967139039.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2532 terms. -/
def A311993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312100.P12685263577647089552

`A311458(n)+Δ[A011862(n)]`
-/

namespace A312100.P12685263577647089552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311458 n + (f1 (n + 1) - f1 n)

end

end A312100.P12685263577647089552

noncomputable section

/-- A312100: Coordination sequence Gal.5.54.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312100.P12685263577647089552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2517 terms. -/
def A312100 (n : ℕ) : ℤ :=
  A312100.P12685263577647089552.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2517 terms. -/
def A312100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312123.P2703485450737880313

`abs(A008592(n)-A315687(n))`
-/

namespace A312123.P2703485450737880313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315687 n|

end

end A312123.P2703485450737880313

noncomputable section

/-- A312123: Coordination sequence Gal.6.120.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312123.P2703485450737880313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2507 terms. -/
def A312123 (n : ℕ) : ℤ :=
  A312123.P2703485450737880313.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2507 terms. -/
def A312123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312144.P9659675028767289182

`A313126(n)-round(n/3)`
-/

namespace A312144.P9659675028767289182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313126 n - SequenceMachineLib.roundAway ((n : ℚ) / 3)

end

end A312144.P9659675028767289182

noncomputable section

/-- A312144: Coordination sequence Gal.6.151.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312144.P9659675028767289182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. -/
def A312144 (n : ℕ) : ℤ :=
  A312144.P9659675028767289182.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. -/
def A312144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312195.P11497264696370298054

`A314898(n)-A330025(A330025(n)+n)`
-/

namespace A312195.P11497264696370298054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314898 n - A330025 (A330025 n + (n : ℤ)).toNat

end

end A312195.P11497264696370298054

noncomputable section

/-- A312195: Coordination sequence Gal.5.67.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312195.P11497264696370298054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2418 terms. -/
def A312195 (n : ℕ) : ℤ :=
  A312195.P11497264696370298054.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2418 terms. -/
def A312195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312402.P5647602654774873522

`A312655(n)-A201629(A004525(n))`
-/

namespace A312402.P5647602654774873522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312655 n - A201629 (A004525 n).toNat

end

end A312402.P5647602654774873522

noncomputable section

/-- A312402: Coordination sequence Gal.4.70.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312402.P5647602654774873522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. -/
def A312402 (n : ℕ) : ℤ :=
  A312402.P5647602654774873522.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. -/
def A312402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312472.P9748257743886067532

`2*A311804(n)-A008574(n)`
-/

namespace A312472.P9748257743886067532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311804 n - A008574 n

end

end A312472.P9748257743886067532

noncomputable section

/-- A312472: Coordination sequence Gal.6.149.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312472.P9748257743886067532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2545 terms. -/
def A312472 (n : ℕ) : ℤ :=
  A312472.P9748257743886067532.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2545 terms. -/
def A312472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313057.P2669330518983403707

`A047273(n+1)+A311257(n)-n`
-/

namespace A313057.P2669330518983403707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (n + 1) + (A311257 n - (n : ℤ))

end

end A313057.P2669330518983403707

noncomputable section

/-- A313057: Coordination sequence Gal.6.132.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313057.P2669330518983403707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2463 terms. -/
def A313057 (n : ℕ) : ℤ :=
  A313057.P2669330518983403707.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2463 terms. -/
def A313057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313078.P17380493994389403351

`A313692(n)-A330025(n)`
-/

namespace A313078.P17380493994389403351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313692 n - A330025 n

end

end A313078.P17380493994389403351

noncomputable section

/-- A313078: Coordination sequence Gal.5.67.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313078.P17380493994389403351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A313078 (n : ℕ) : ℤ :=
  A313078.P17380493994389403351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A313078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313169.P6994078110540199840

`A313119(n)+A313174(n)-A313126(n)`
-/

namespace A313169.P6994078110540199840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313119 n + (A313174 n - A313126 n)

end

end A313169.P6994078110540199840

noncomputable section

/-- A313169: Coordination sequence Gal.6.479.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313169.P6994078110540199840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A313169 (n : ℕ) : ℤ :=
  A313169.P6994078110540199840.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A313169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313212.P14429204760756307954

`A004396(A310501(n)+2*n)`
-/

namespace A313212.P14429204760756307954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310501 n + (2 * n : ℤ)).toNat

end

end A313212.P14429204760756307954

noncomputable section

/-- A313212: Coordination sequence Gal.6.263.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313212.P14429204760756307954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. -/
def A313212 (n : ℕ) : ℤ :=
  A313212.P14429204760756307954.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. -/
def A313212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313540.P7329295065648553894

`abs(A008592(n)-(A311924(n)+n))`
-/

namespace A313540.P7329295065648553894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A311924 n + (n : ℤ))|

end

end A313540.P7329295065648553894

noncomputable section

/-- A313540: Coordination sequence Gal.6.151.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313540.P7329295065648553894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2462 terms. -/
def A313540 (n : ℕ) : ℤ :=
  A313540.P7329295065648553894.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2462 terms. -/
def A313540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313560.P11035165185372614413

`A312927(2*n)-4*n`
-/

namespace A313560.P11035165185372614413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312927 (2 * n) - (4 * n : ℤ)

end

end A313560.P11035165185372614413

noncomputable section

/-- A313560: Coordination sequence Gal.6.201.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313560.P11035165185372614413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2436 terms. -/
def A313560 (n : ℕ) : ℤ :=
  A313560.P11035165185372614413.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2436 terms. -/
def A313560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313583.P10974201529935160222

`A047263(A311257(n)+1)`
-/

namespace A313583.P10974201529935160222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A311257 n + 1).toNat

end

end A313583.P10974201529935160222

noncomputable section

/-- A313583: Coordination sequence Gal.6.345.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313583.P10974201529935160222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2382 terms. -/
def A313583 (n : ℕ) : ℤ :=
  A313583.P10974201529935160222.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2382 terms. -/
def A313583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313620.P513798064610013280

`abs(A008592(n)-A313831(n))`
-/

namespace A313620.P513798064610013280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313831 n|

end

end A313620.P513798064610013280

noncomputable section

/-- A313620: Coordination sequence Gal.6.348.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313620.P513798064610013280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A313620 (n : ℕ) : ℤ :=
  A313620.P513798064610013280.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A313620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313683.P3336220210830735973

`A314828(n)+A004396(n-A004396(n))`
-/

namespace A313683.P3336220210830735973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314828 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A313683.P3336220210830735973

noncomputable section

/-- A313683: Coordination sequence Gal.5.100.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313683.P3336220210830735973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A313683 (n : ℕ) : ℤ :=
  A313683.P3336220210830735973.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A313683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313684.P7430096167787627216

`A314094(n)-A002264(n+1)`
-/

namespace A313684.P7430096167787627216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314094 n - A002264 (n + 1)

end

end A313684.P7430096167787627216

noncomputable section

/-- A313684: Coordination sequence Gal.6.259.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313684.P7430096167787627216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2321 terms. -/
def A313684 (n : ℕ) : ℤ :=
  A313684.P7430096167787627216.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2321 terms. -/
def A313684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313711.P360949876952997669

`A313572(n)+Δ[A011864(n)]`
-/

namespace A313711.P360949876952997669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313572 n + (f1 (n + 1) - f1 n)

end

end A313711.P360949876952997669

noncomputable section

/-- A313711: Coordination sequence Gal.6.251.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313711.P360949876952997669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2366 terms. -/
def A313711 (n : ℕ) : ℤ :=
  A313711.P360949876952997669.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2366 terms. -/
def A313711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313729.P4779100435841205839

`abs(A008592(n)-(A311196(n)+n))`
-/

namespace A313729.P4779100435841205839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A311196 n + (n : ℤ))|

end

end A313729.P4779100435841205839

noncomputable section

/-- A313729: Coordination sequence Gal.6.134.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313729.P4779100435841205839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2417 terms. -/
def A313729 (n : ℕ) : ℤ :=
  A313729.P4779100435841205839.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2417 terms. -/
def A313729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313752.P1655055158517470603

`A314111(n)-A330025(n-A330025(n))`
-/

namespace A313752.P1655055158517470603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314111 n - A330025 ((n : ℤ) - A330025 n).toNat

end

end A313752.P1655055158517470603

noncomputable section

/-- A313752: Coordination sequence Gal.5.300.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313752.P1655055158517470603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. -/
def A313752 (n : ℕ) : ℤ :=
  A313752.P1655055158517470603.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. -/
def A313752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313754.P6499129976907502351

`A314903(n)+A002264(n+1)`
-/

namespace A313754.P6499129976907502351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314903 n + A002264 (n + 1)

end

end A313754.P6499129976907502351

noncomputable section

/-- A313754: Coordination sequence Gal.4.142.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313754.P6499129976907502351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A313754 (n : ℕ) : ℤ :=
  A313754.P6499129976907502351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A313754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313795.P7231696146047566351

`A314898(n)+∑[A021913(A032766(n))]`
-/

namespace A313795.P7231696146047566351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A032766 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314898 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313795.P7231696146047566351

noncomputable section

/-- A313795: Coordination sequence Gal.6.647.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313795.P7231696146047566351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2270 terms. -/
def A313795 (n : ℕ) : ℤ :=
  A313795.P7231696146047566351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2270 terms. -/
def A313795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313869.P2714584555058698184

`abs(10*n-A313572(n))`
-/

namespace A313869.P2714584555058698184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313572 n|

end

end A313869.P2714584555058698184

noncomputable section

/-- A313869: Coordination sequence Gal.6.206.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313869.P2714584555058698184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2342 terms. -/
def A313869 (n : ℕ) : ℤ :=
  A313869.P2714584555058698184.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2342 terms. -/
def A313869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313886.P7964654084848802356

`A314065(n)+A238468(n)`
-/

namespace A313886.P7964654084848802356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314065 n + A238468 n

end

end A313886.P7964654084848802356

noncomputable section

/-- A313886: Coordination sequence Gal.4.143.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313886.P7964654084848802356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2293 terms. -/
def A313886 (n : ℕ) : ℤ :=
  A313886.P7964654084848802356.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2293 terms. -/
def A313886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314043.P3377773668893100370

`A310410(n)+A004525(A004396(n))`
-/

namespace A314043.P3377773668893100370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310410 n + A004525 (A004396 n).toNat

end

end A314043.P3377773668893100370

noncomputable section

/-- A314043: Coordination sequence Gal.6.618.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314043.P3377773668893100370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A314043 (n : ℕ) : ℤ :=
  A314043.P3377773668893100370.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A314043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314052.P7255477605862144474

`2*n+A004396(A310413(n))`
-/

namespace A314052.P7255477605862144474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A310413 n).toNat

end

end A314052.P7255477605862144474

noncomputable section

/-- A314052: Coordination sequence Gal.6.639.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314052.P7255477605862144474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. -/
def A314052 (n : ℕ) : ℤ :=
  A314052.P7255477605862144474.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. -/
def A314052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314100.P5614151472611851930

`abs(A008592(n)-A314943(n))`
-/

namespace A314100.P5614151472611851930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314943 n|

end

end A314100.P5614151472611851930

noncomputable section

/-- A314100: Coordination sequence Gal.6.329.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314100.P5614151472611851930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. -/
def A314100 (n : ℕ) : ℤ :=
  A314100.P5614151472611851930.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. -/
def A314100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314144.P11164658127069204478

`A310470(n)+A004396(A004525(n))`
-/

namespace A314144.P11164658127069204478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310470 n + A004396 (A004525 n).toNat

end

end A314144.P11164658127069204478

noncomputable section

/-- A314144: Coordination sequence Gal.6.634.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314144.P11164658127069204478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A314144 (n : ℕ) : ℤ :=
  A314144.P11164658127069204478.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A314144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314146.P9880955717233294577

`floor(A313770(n)+(n+1)/3)`
-/

namespace A314146.P9880955717233294577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A313770 n : ℚ) + (n + 1 : ℚ) / 3⌋

end

end A314146.P9880955717233294577

noncomputable section

/-- A314146: Coordination sequence Gal.5.326.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314146.P9880955717233294577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A314146 (n : ℕ) : ℤ :=
  A314146.P9880955717233294577.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A314146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314185.P11421094011403531864

`A313688(n)+Δ[floor(C(n, 2)/2)]`
-/

namespace A314185.P11421094011403531864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313688 n + (f1 (n + 1) - f1 n)

end

end A314185.P11421094011403531864

noncomputable section

/-- A314185: Coordination sequence Gal.6.205.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314185.P11421094011403531864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2321 terms. -/
def A314185 (n : ℕ) : ℤ :=
  A314185.P11421094011403531864.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2321 terms. -/
def A314185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314222.P14712949776478407909

`A310444(n)+A004396(n)`
-/

namespace A314222.P14712949776478407909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310444 n + A004396 n

end

end A314222.P14712949776478407909

noncomputable section

/-- A314222: Coordination sequence Gal.6.643.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314222.P14712949776478407909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A314222 (n : ℕ) : ℤ :=
  A314222.P14712949776478407909.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A314222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314299.P8107454820952172919

`A315311(n)-A026741(A047486(n+1))`
-/

namespace A314299.P8107454820952172919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315311 n - A026741 (A047486 (n + 1)).toNat

end

end A314299.P8107454820952172919

noncomputable section

/-- A314299: Coordination sequence Gal.3.3.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314299.P8107454820952172919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2094 terms. -/
def A314299 (n : ℕ) : ℤ :=
  A314299.P8107454820952172919.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2094 terms. -/
def A314299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314670.P10679546871853624637

`A330025(A330025(n)+n)+A311440(n)`
-/

namespace A314670.P10679546871853624637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A330025 n + (n : ℤ)).toNat + A311440 n

end

end A314670.P10679546871853624637

noncomputable section

/-- A314670: Coordination sequence Gal.5.50.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314670.P10679546871853624637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2596 terms. -/
def A314670 (n : ℕ) : ℤ :=
  A314670.P10679546871853624637.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2596 terms. -/
def A314670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314688.P9311445367984874380

`A047424(n+1)+A311257(n)-n`
-/

namespace A314688.P9311445367984874380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047424 (n + 1) + (A311257 n - (n : ℤ))

end

end A314688.P9311445367984874380

noncomputable section

/-- A314688: Coordination sequence Gal.6.254.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314688.P9311445367984874380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2514 terms. -/
def A314688 (n : ℕ) : ℤ :=
  A314688.P9311445367984874380.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2514 terms. -/
def A314688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314725.P3459812041028605119

`A330025(n)+A311552(n)`
-/

namespace A314725.P3459812041028605119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A311552 n

end

end A314725.P3459812041028605119

noncomputable section

/-- A314725: Coordination sequence Gal.5.114.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314725.P3459812041028605119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A314725 (n : ℕ) : ℤ :=
  A314725.P3459812041028605119.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A314725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314726.P6332999963874052355

`A311196(n)+A004525(n)`
-/

namespace A314726.P6332999963874052355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311196 n + A004525 n

end

end A314726.P6332999963874052355

noncomputable section

/-- A314726: Coordination sequence Gal.6.259.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314726.P6332999963874052355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2446 terms. -/
def A314726 (n : ℕ) : ℤ :=
  A314726.P6332999963874052355.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2446 terms. -/
def A314726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314752.P2908824843405131660

`A314894(n)-Δ[A011864(n)]`
-/

namespace A314752.P2908824843405131660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314894 n - (f1 (n + 1) - f1 n)

end

end A314752.P2908824843405131660

noncomputable section

/-- A314752: Coordination sequence Gal.6.258.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314752.P2908824843405131660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A314752 (n : ℕ) : ℤ :=
  A314752.P2908824843405131660.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A314752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314763.P16038055828271141937

`A310355(n)+A102283(n)`
-/

namespace A314763.P16038055828271141937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310355 n + A102283 n

end

end A314763.P16038055828271141937

noncomputable section

/-- A314763: Coordination sequence Gal.5.125.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314763.P16038055828271141937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2481 terms. -/
def A314763 (n : ℕ) : ℤ :=
  A314763.P16038055828271141937.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2481 terms. -/
def A314763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314851.P12082733388595412

`A314896(n)+n-A255347(n)`
-/

namespace A314851.P12082733388595412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314896 n + ((n : ℤ) - A255347 n)

end

end A314851.P12082733388595412

noncomputable section

/-- A314851: Coordination sequence Gal.6.36.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314851.P12082733388595412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2438 terms. -/
def A314851 (n : ℕ) : ℤ :=
  A314851.P12082733388595412.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2438 terms. -/
def A314851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314884.P14768008204403589957

`A008458(n)+A008576(n)-A311196(n)`
-/

namespace A314884.P14768008204403589957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008576 n - A311196 n)

end

end A314884.P14768008204403589957

noncomputable section

/-- A314884: Coordination sequence Gal.6.150.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314884.P14768008204403589957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A314884 (n : ℕ) : ℤ :=
  A314884.P14768008204403589957.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A314884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314922.P17749781584277462255

`A315036(n)-A002264(A088439(n))`
-/

namespace A314922.P17749781584277462255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315036 n - A002264 (A088439 n).toNat

end

end A314922.P17749781584277462255

noncomputable section

/-- A314922: Coordination sequence Gal.6.474.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314922.P17749781584277462255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. -/
def A314922 (n : ℕ) : ℤ :=
  A314922.P17749781584277462255.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. -/
def A314922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314945.P6456220943170628107

`A311458(n)+A004396(n)`
-/

namespace A314945.P6456220943170628107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311458 n + A004396 n

end

end A314945.P6456220943170628107

noncomputable section

/-- A314945: Coordination sequence Gal.5.84.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314945.P6456220943170628107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A314945 (n : ℕ) : ℤ :=
  A314945.P6456220943170628107.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A314945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314961.P17305649603709339470

`A330033(n)+A310446(n)`
-/

namespace A314961.P17305649603709339470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330033 n + A310446 n

end

end A314961.P17305649603709339470

noncomputable section

/-- A314961: Coordination sequence Gal.5.137.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314961.P17305649603709339470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2360 terms. -/
def A314961 (n : ℕ) : ℤ :=
  A314961.P17305649603709339470.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2360 terms. -/
def A314961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315033.P12102066893602816960

`A314848(n)+Δ[A011862(n)]`
-/

namespace A315033.P12102066893602816960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314848 n + (f1 (n + 1) - f1 n)

end

end A315033.P12102066893602816960

noncomputable section

/-- A315033: Coordination sequence Gal.5.129.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315033.P12102066893602816960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A315033 (n : ℕ) : ℤ :=
  A315033.P12102066893602816960.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A315033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315058.P1696980301468293620

`abs(A008592(n)-A314028(n))`
-/

namespace A315058.P1696980301468293620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314028 n|

end

end A315058.P1696980301468293620

noncomputable section

/-- A315058: Coordination sequence Gal.6.339.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315058.P1696980301468293620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A315058 (n : ℕ) : ℤ :=
  A315058.P1696980301468293620.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A315058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315208.P4336967152151066155

`abs(A008592(n)-A310501(n))`
-/

namespace A315208.P4336967152151066155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310501 n|

end

end A315208.P4336967152151066155

noncomputable section

/-- A315208: Coordination sequence Gal.6.348.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315208.P4336967152151066155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2407 terms. -/
def A315208 (n : ℕ) : ℤ :=
  A315208.P4336967152151066155.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2407 terms. -/
def A315208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315310.P7665288315305926957

`abs(A008592(n)-A310410(n))`
-/

namespace A315310.P7665288315305926957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310410 n|

end

end A315310.P7665288315305926957

noncomputable section

/-- A315310: Coordination sequence Gal.6.618.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315310.P7665288315305926957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2341 terms. -/
def A315310 (n : ℕ) : ℤ :=
  A315310.P7665288315305926957.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2341 terms. -/
def A315310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315343.P4431004882593974719

`abs(A008592(n)-A310369(n))`
-/

namespace A315343.P4431004882593974719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310369 n|

end

end A315343.P4431004882593974719

noncomputable section

/-- A315343: Coordination sequence Gal.5.304.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315343.P4431004882593974719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2258 terms. -/
def A315343 (n : ℕ) : ℤ :=
  A315343.P4431004882593974719.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2258 terms. -/
def A315343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315474.P12078327233869997343

`A313688(n)+A004525(n)`
-/

namespace A315474.P12078327233869997343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313688 n + A004525 n

end

end A315474.P12078327233869997343

noncomputable section

/-- A315474: Coordination sequence Gal.6.341.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315474.P12078327233869997343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A315474 (n : ℕ) : ℤ :=
  A315474.P12078327233869997343.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A315474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315554.P18025128345172279800

`A315411(n)+A315342(n)%A072154(n)`
-/

namespace A315554.P18025128345172279800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315411 n + Int.tmod (A315342 n) (A072154 n)

end

end A315554.P18025128345172279800

noncomputable section

/-- A315554: Coordination sequence Gal.4.146.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315554.P18025128345172279800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2221 terms. -/
def A315554 (n : ℕ) : ℤ :=
  A315554.P18025128345172279800.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2221 terms. -/
def A315554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315647.P605135324631225855

`A315490(n)+A238470(n)`
-/

namespace A315647.P605135324631225855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315490 n + A238470 n

end

end A315647.P605135324631225855

noncomputable section

/-- A315647: Coordination sequence Gal.4.139.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315647.P605135324631225855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1775 terms. -/
def A315647 (n : ℕ) : ℤ :=
  A315647.P605135324631225855.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1775 terms. -/
def A315647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315649.P5476829177456958284

`A314022(n)+A004525(n)`
-/

namespace A315649.P5476829177456958284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314022 n + A004525 n

end

end A315649.P5476829177456958284

noncomputable section

/-- A315649: Coordination sequence Gal.6.626.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315649.P5476829177456958284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2139 terms. -/
def A315649 (n : ℕ) : ℤ :=
  A315649.P5476829177456958284.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2139 terms. -/
def A315649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315651.P9904955794810219643

`A314026(n)+A004525(n)`
-/

namespace A315651.P9904955794810219643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314026 n + A004525 n

end

end A315651.P9904955794810219643

noncomputable section

/-- A315651: Coordination sequence Gal.5.303.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315651.P9904955794810219643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2138 terms. -/
def A315651 (n : ℕ) : ℤ :=
  A315651.P9904955794810219643.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2138 terms. -/
def A315651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315747.P2406798804632364496

`A313688(n)+n`
-/

namespace A315747.P2406798804632364496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313688 n + (n : ℤ)

end

end A315747.P2406798804632364496

noncomputable section

/-- A315747: Coordination sequence Gal.6.638.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315747.P2406798804632364496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2233 terms. -/
def A315747 (n : ℕ) : ℤ :=
  A315747.P2406798804632364496.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2233 terms. -/
def A315747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316095.P1509550343665641608

`eq[3, A125115(A028310(n))]`
-/

namespace A316095.P1509550343665641608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316095.P1509550343665641608

noncomputable section

/-- A316095: Numbers m such that A(m+1) = A(m) + 3, where A() = A005101() are the abundant numbers.

Offset 1, canonical program `A316095.P1509550343665641608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A316095 (n : ℕ) : ℤ :=
  (A316095.P1509550343665641608.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A316095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316351.P4823434394101690844

`eq[4, A128428(n+1)]+1`
-/

namespace A316351.P4823434394101690844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128428 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A316351.P4823434394101690844

noncomputable section

/-- A316351: Numbers k such that k^2 + 1 has exactly four distinct prime factors.

Offset 1, canonical program `A316351.P4823434394101690844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2041 terms. -/
def A316351 (n : ℕ) : ℤ :=
  (A316351.P4823434394101690844.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2041 terms. -/
def A316351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317045.P9584726869343570922

`eq[2, A125238(n+1)]+1`
-/

namespace A317045.P9584726869343570922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125238 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A317045.P9584726869343570922

noncomputable section

/-- A317045: Numbers k such that A(k+1) = A(k) + 2, where A() = A005100() are the deficient numbers.

Offset 1, canonical program `A317045.P9584726869343570922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3300 terms. -/
def A317045 (n : ℕ) : ℤ :=
  (A317045.P9584726869343570922.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3300 terms. -/
def A317045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317047.P103969702629091230

`A005100(A317044(n+1))`
-/

namespace A317047.P103969702629091230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (A317044 (n + 1)).toNat

end

end A317047.P103969702629091230

noncomputable section

/-- A317047: Numbers k such that both k and k + 1 are deficient.

Offset 1, canonical program `A317047.P103969702629091230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6696 terms. -/
def A317047 (n : ℕ) : ℤ :=
  A317047.P103969702629091230.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6696 terms. -/
def A317047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317333.P17629716713966033561

`8*(n+1)+A317336(n+1)`
-/

namespace A317333.P17629716713966033561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 1) : ℤ) + A317336 (n + 1)

end

end A317333.P17629716713966033561

noncomputable section

/-- A317333: Indices m for which A058304(m) = 9.

Offset 1, canonical program `A317333.P17629716713966033561`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317336, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317333 (n : ℕ) : ℤ :=
  A317333.P17629716713966033561.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317336, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317333.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317528.P12745314278989265988

`A034444(n+1)-A010673(n)*A034444(A008619(n))`
-/

namespace A317528.P12745314278989265988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A010673 n * A034444 (A008619 n).toNat

end

end A317528.P12745314278989265988

noncomputable section

/-- A317528: Expansion of Sum_{k>=1} mu(k)^2*x^k/(1 + x^k), where mu() is the Moebius function (A008683).

Offset 1, canonical program `A317528.P12745314278989265988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317528 (n : ℕ) : ℤ :=
  A317528.P12745314278989265988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318734.P12849207879321018043

`∑[A033999(n)*A099774(n+1)]`
-/

namespace A318734.P12849207879321018043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A099774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318734.P12849207879321018043

noncomputable section

/-- A318734: a(n) = Sum_{k=1..n} (-1)^(k + 1) * d(2*k - 1), where d(k) is the number of divisors of k (A000005).

Offset 1, canonical program `A318734.P12849207879321018043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318734 (n : ℕ) : ℤ :=
  A318734.P12849207879321018043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319035.P4592568975545693552

`A000096(eq[A063440(n+2), A063440(n+1)])+1`
-/

namespace A319035.P4592568975545693552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 1

end

end A319035.P4592568975545693552

noncomputable section

/-- A319035: Triangular numbers T(k) that have the same number of divisors as their successors T(k+1).

Offset 1, canonical program `A319035.P4592568975545693552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1669 terms. -/
def A319035 (n : ℕ) : ℤ :=
  A319035.P4592568975545693552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1669 terms. -/
def A319035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319187.P5382770131251099215

`A000005(A045948(n+1))`
-/

namespace A319187.P5382770131251099215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A045948 (n + 1)).toNat

end

end A319187.P5382770131251099215

noncomputable section

/-- A319187: Number of pairwise coprime subsets of {1,...,n} of maximum cardinality (A036234).

Offset 1, canonical program `A319187.P5382770131251099215`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319187 (n : ℕ) : ℤ :=
  A319187.P5382770131251099215.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319187.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A319440.P13665761079487371990

`A029742(n+1)²`
-/

namespace A319440.P13665761079487371990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1) ^ 2

end

end A319440.P13665761079487371990

noncomputable section

/-- A319440: Squares of non-palindromic number.

Offset 1, canonical program `A319440.P13665761079487371990`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029742, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319440 (n : ℕ) : ℤ :=
  A319440.P13665761079487371990.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029742, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319440.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319441.P373140411895671791

`A029742(n+1)^3`
-/

namespace A319441.P373140411895671791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1) ^ 3

end

end A319441.P373140411895671791

noncomputable section

/-- A319441: Cubes of non-palindromic numbers.

Offset 1, canonical program `A319441.P373140411895671791`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029742, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319441 (n : ℕ) : ℤ :=
  A319441.P373140411895671791.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029742, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319441.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320935.P5041505180703066764

`A056272(n+1)-A056324(n+1)`
-/

namespace A320935.P5041505180703066764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056272 (n + 1) - A056324 (n + 1)

end

end A320935.P5041505180703066764

noncomputable section

/-- A320935: Number of chiral pairs of color patterns (set partitions) for a row of length n using 5 or fewer colors (subsets).

Offset 1, canonical program `A320935.P5041505180703066764`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056272, A056324, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320935 (n : ℕ) : ℤ :=
  A320935.P5041505180703066764.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056272, A056324, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320935.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A321243.P16278212693722106823

`A098736(n)/A000030(A028310(n))`
-/

namespace A321243.P16278212693722106823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098736 n : ℚ) / (A000030 (A028310 n).toNat : ℚ)

end

end A321243.P16278212693722106823

noncomputable section

/-- A321243: a(n) is the product of n and all its decimal digits individually except the leftmost digit.

Offset 0, canonical program `A321243.P16278212693722106823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321243 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A321243.P16278212693722106823.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322327.P7023019064319529347

`A005361(n+1)*A034444(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322327.P7023019064319529347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A034444 (n + 1)

end

end A322327.P7023019064319529347

noncomputable section

/-- A322327: a(n) = A005361(n) * A034444(n).

Offset 1, canonical program `A322327.P7023019064319529347`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322327 (n : ℕ) : ℤ :=
  A322327.P7023019064319529347.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322327.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322328.P406640115135084941

`A005361(n+1)*4^A001221(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322328.P406640115135084941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005361 (n + 1) : ℚ) * (4 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A322328.P406640115135084941

noncomputable section

/-- A322328: a(n) = A005361(n) * 4^A001221(n) for n > 0.

Offset 1, canonical program `A322328.P406640115135084941`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322328 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322328.P406640115135084941.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322328.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322483.P9877640992746448261

`A000005(A019554(n+1))`
-/

namespace A322483.P9877640992746448261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A019554 (n + 1)).toNat

end

end A322483.P9877640992746448261

noncomputable section

/-- A322483: The number of semi-unitary divisors of n.

Offset 1, canonical program `A322483.P9877640992746448261`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A322483 (n : ℕ) : ℤ :=
  A322483.P9877640992746448261.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A322483.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A322673.P9006485126655051311

`A206032(n+1)/gcd(A007955(n+1), A206032(n+1))`
-/

namespace A322673.P9006485126655051311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206032 (n + 1) : ℚ) / (Int.gcd (A007955 (n + 1)) (A206032 (n + 1)) : ℚ)

end

end A322673.P9006485126655051311

noncomputable section

/-- A322673: a(n) = numerator of Product_{d|n} (sigma(d)/d) where sigma(k) = the sum of the divisors of k (A000203).

Offset 1, canonical program `A322673.P9006485126655051311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A322673 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322673.P9006485126655051311.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A322673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322965.P7905832375060057443

`A008473(n+1)/gcd(A008473(n+1), A062953(n+1))`
-/

namespace A322965.P7905832375060057443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008473 (n + 1) : ℚ) / (Int.gcd (A008473 (n + 1)) (A062953 (n + 1)) : ℚ)

end

end A322965.P7905832375060057443

noncomputable section

/-- A322965: Numerator of Sum_{d | n} 1/rad(d).

Offset 1, canonical program `A322965.P7905832375060057443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322965 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322965.P7905832375060057443.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322976.P11203224560119339199

`∑{d}[n+1, A010051(#+2)]`
-/

namespace A322976.P11203224560119339199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 (d + 2)

end

end A322976.P11203224560119339199

noncomputable section

/-- A322976: Number of divisors d of n such that d+2 is prime.

Offset 1, canonical program `A322976.P11203224560119339199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322976 (n : ℕ) : ℤ :=
  A322976.P11203224560119339199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322979.P6933631638193226101

`∑{d}[n+1, A009191(#)]`
-/

namespace A322979.P6933631638193226101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A009191 d

end

end A322979.P6933631638193226101

noncomputable section

/-- A322979: a(n) = Sum A009191(d) over the divisors d of n, where A009191(x) = gcd(x, A000005(x)), and A000005(x) gives the number of divisors of x.

Offset 1, canonical program `A322979.P6933631638193226101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322979 (n : ℕ) : ℤ :=
  A322979.P6933631638193226101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322980.P7974162186634940196

`A063524(A009191(n+1))`
-/

namespace A322980.P7974162186634940196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A009191 (n + 1)).toNat

end

end A322980.P7974162186634940196

noncomputable section

/-- A322980: a(n) = 1 if n and d(n) are coprime, 0 otherwise. Here d(n) is the number of divisors of n, A000005.

Offset 1, canonical program `A322980.P7974162186634940196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322980 (n : ℕ) : ℤ :=
  A322980.P7974162186634940196.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322997.P13099986161292464516

`A322996(2*n)`
-/

namespace A322997.P13099986161292464516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322996 (2 * n)

end

end A322997.P13099986161292464516

noncomputable section

/-- A322997: Number of iterations of A049820(x) = x - A000005(x) needed to reach an odd number or zero, when starting from x = 2n.

Offset 0, canonical program `A322997.P13099986161292464516`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322997 (n : ℕ) : ℤ :=
  A322997.P13099986161292464516.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322997.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323158.P16175357172864216776

`A049820(n+1)%2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323158.P16175357172864216776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049820 (n + 1)) 2

end

end A323158.P16175357172864216776

noncomputable section

/-- A323158: If n is a square, a(n) = 1-(n mod 2), otherwise a(n) = (n mod 2); a(n) = A049820(n) mod 2, where A049820(n) = n - number of divisors of n.

Offset 1, canonical program `A323158.P16175357172864216776`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A323158 (n : ℕ) : ℤ :=
  A323158.P16175357172864216776.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A323158.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A323308.P13705898636068285078

`A034444(A057521(n+1))`
-/

namespace A323308.P13705898636068285078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A057521 (n + 1)).toNat

end

end A323308.P13705898636068285078

noncomputable section

/-- A323308: The number of exponential semiproper divisors of n.

Offset 1, canonical program `A323308.P13705898636068285078`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323308 (n : ℕ) : ℤ :=
  A323308.P13705898636068285078.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323308.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324121.P5058798757553332466

`gcd(A000203(n+1), A038040(n+1))`
-/

namespace A324121.P5058798757553332466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A038040 (n + 1))

end

end A324121.P5058798757553332466

noncomputable section

/-- A324121: a(n) = gcd(n*d(n), sigma(n)), where d(n) = number of divisors of n (A000005) and sigma(n) = sum of divisors of n (A000203).

Offset 1, canonical program `A324121.P5058798757553332466`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324121 (n : ℕ) : ℤ :=
  (A324121.P5058798757553332466.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324121.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A324501.P1716032831025346766

`∑{d}[n+1, A007955(n+1)/A007955(#)]`
-/

namespace A324501.P1716032831025346766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A007955 (n + 1) : ℚ) / (A007955 d : ℚ)

end

end A324501.P1716032831025346766

noncomputable section

/-- A324501: a(n) = numerator of Sum_{d|n} (1/pod(d)) where pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A324501.P1716032831025346766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A324501 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A324501.P1716032831025346766.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A324501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324980.P16337764306550110740

`A007955(n+1)*A206032(n+1)`
-/

namespace A324980.P16337764306550110740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) * A206032 (n + 1)

end

end A324980.P16337764306550110740

noncomputable section

/-- A324980: a(n) = Product_{d|n} (d*sigma(d)) where sigma(k) = the sum of the divisors of k (A000203).

Offset 1, canonical program `A324980.P16337764306550110740`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206032, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324980 (n : ℕ) : ℤ :=
  A324980.P16337764306550110740.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206032, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324980.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324981.P17068546263035737128

`A007955(n+1)*A266265(n+1)`
-/

namespace A324981.P17068546263035737128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) * A266265 (n + 1)

end

end A324981.P17068546263035737128

noncomputable section

/-- A324981: a(n) = Product_{d|n} (d*pod(d)) where pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A324981.P17068546263035737128`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A266265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324981 (n : ℕ) : ℤ :=
  A324981.P17068546263035737128.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A266265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324981.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324986.P12524945559188802949

`∑{d}[n+1, A064840(#)]`
-/

namespace A324986.P12524945559188802949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064840 d

end

end A324986.P12524945559188802949

noncomputable section

/-- A324986: a(n) = Sum_{d|n} (tau(d)*sigma(d)) where tau(k) = the number of divisors of k (A000005) and sigma(k) = the sum of the divisors of k (A000203).

Offset 1, canonical program `A324986.P12524945559188802949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324986 (n : ℕ) : ℤ :=
  A324986.P12524945559188802949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325403.P18375620770384998092

`A325392(2*(n+1))`
-/

namespace A325403.P18375620770384998092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325392 (2 * (n + 1))

end

end A325403.P18375620770384998092

noncomputable section

/-- A325403: Number of permutations of the multiset of prime factors of 2n whose first part is not 2.

Offset 1, canonical program `A325403.P18375620770384998092`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325392, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325403 (n : ℕ) : ℤ :=
  A325403.P18375620770384998092.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325392, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325403.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325803.P14656589698050212788

`A329893(A325804(n+1))`
-/

namespace A325803.P14656589698050212788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329893 (A325804 (n + 1)).toNat

end

end A325803.P14656589698050212788

noncomputable section

/-- A325803: Nonzero terms of Product_{k=0..floor(log_2(n))} (1 + A004718(floor(n/(2^k)))).

Offset 1, canonical program `A325803.P14656589698050212788`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325803 (n : ℕ) : ℤ :=
  A325803.P14656589698050212788.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325803.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325838.P16251937646773924265

`A007955(A000217(n+1))`
-/

namespace A325838.P16251937646773924265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A000217 (n + 1)).toNat

end

end A325838.P16251937646773924265

noncomputable section

/-- A325838: a(n) is the product of divisors of the n-th triangular number.

Offset 1, canonical program `A325838.P16251937646773924265`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325838 (n : ℕ) : ℤ :=
  A325838.P16251937646773924265.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325838.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A325964.P15804438111234452342

`floor(1/A073802(n+1))`
-/

namespace A325964.P15804438111234452342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A073802 (n + 1) : ℚ)⌋

end

end A325964.P15804438111234452342

noncomputable section

/-- A325964: a(n) = 1 if n and sigma(n) are relatively prime, 0 otherwise, where sigma(n) = sum of divisors of n, A000203; Characteristic function of A014567.

Offset 1, canonical program `A325964.P15804438111234452342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325964 (n : ℕ) : ℤ :=
  A325964.P15804438111234452342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326058.P945554037685919267

`n+1-A035316(n+1)`
-/

namespace A326058.P945554037685919267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A035316 (n + 1)

end

end A326058.P945554037685919267

noncomputable section

/-- A326058: a(n) = n - {the sum of square divisors of n}.

Offset 1, canonical program `A326058.P945554037685919267`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326058 (n : ℕ) : ℤ :=
  A326058.P945554037685919267.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326058.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326302.P15542453405491403579

`lcm(n, A030101(n))`
-/

namespace A326302.P15542453405491403579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A030101 n)

end

end A326302.P15542453405491403579

noncomputable section

/-- A326302: a(n) = lcm(n, r(n)) where r(n) = A030101(n) corresponds to the binary reversal of n.

Offset 0, canonical program `A326302.P15542453405491403579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326302 (n : ℕ) : ℤ :=
  (A326302.P15542453405491403579.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327209.P6425017503248329216

`A190670(n+1)-A010052(Δ[A190670(n+1)])`
-/

namespace A327209.P6425017503248329216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190670 (n + 1) - A010052 (f1 (n + 1) - f1 n).toNat

end

end A327209.P6425017503248329216

noncomputable section

/-- A327209: Positions of 0's in {A327208(n) : n > 0}.

Offset 1, canonical program `A327209.P6425017503248329216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A327209 (n : ℕ) : ℤ :=
  A327209.P6425017503248329216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A327209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327219.P7524261116864899285

`char[A327221(n+1)]`
-/

namespace A327219.P7524261116864899285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A327219.P7524261116864899285

noncomputable section

/-- A327219: a(n) = [(2n+4)r] - [(n+4)r] - [nr], where [ ] = floor and r = (1+sqrt(5))/2.

Offset 0, canonical program `A327219.P7524261116864899285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327219 (n : ℕ) : ℤ :=
  (A327219.P7524261116864899285.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327259.P9875520771987652429

`A003991(n+1)+4*(A003991(n+1)-A334922(n+1))`
-/

namespace A327259.P9875520771987652429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + 4 * (A003991 (n + 1) - A334922 (n + 1))

end

end A327259.P9875520771987652429

noncomputable section

/-- A327259: Array T(n,k) = 2*n*k - A319929(n,k), n >= 1, k >= 1, read by antidiagonals.

Offset 1, canonical program `A327259.P9875520771987652429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A327259 (n : ℕ) : ℤ :=
  A327259.P9875520771987652429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A327259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327326.P15839165817513930619

`A006218(n)-A005187(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A327326.P15839165817513930619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - A005187 n

end

end A327326.P15839165817513930619

noncomputable section

/-- A327326: a(n) = A006218(n) - A005187(n).

Offset 0, canonical program `A327326.P15839165817513930619`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A006218(n)-A005187(n)` (program `A327326.P15839165817513930619`, by `A327326.P15839165817513930619.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A327326 (n : ℕ) : ℤ :=
  A327326.P15839165817513930619.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A006218(n)-A005187(n)` (program `A327326.P15839165817513930619`, by `A327326.P15839165817513930619.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A327326.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A327715.P7624630360277358397

`1+a(n-A009191(n))` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A327715.P7624630360277358397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a ((n : ℤ) - A009191 n).toNat

end

end A327715.P7624630360277358397

noncomputable section

/-- A327715: a(0) = 0; for n >= 1, a(n) = 1 + a(n-A009191(n)).

Offset 0, canonical program `A327715.P7624630360277358397`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A327715 (n : ℕ) : ℤ :=
  (A327715.P7624630360277358397.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A327715.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A327952.P3929770748935459996

`Δ[A153818(n+1)-A006218(n+1)]`
-/

namespace A327952.P3929770748935459996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153818 (n + 1) - A006218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327952.P3929770748935459996

noncomputable section

/-- A327952: a(n) is the number of positive integers k such that some multiple of sqrt(k) falls strictly between n and n+1.

Offset 1, canonical program `A327952.P3929770748935459996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A327952 (n : ℕ) : ℤ :=
  A327952.P3929770748935459996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A327952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328223.P7310187365408105857

`∩[A020668(n+1)-4, A020668(n+1)]`
-/

namespace A328223.P7310187365408105857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020668 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328223.P7310187365408105857

noncomputable section

/-- A328223: Numbers k such that both k and k+4 are sums of two squares.

Offset 1, canonical program `A328223.P7310187365408105857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3516 terms. -/
def A328223 (n : ℕ) : ℤ :=
  (A328223.P7310187365408105857.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3516 terms. -/
def A328223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328334.P11458621354846274728

`A063005(n+1)-A063005(n)`
-/

namespace A328334.P11458621354846274728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063005 (n + 1) - A063005 n

end

end A328334.P11458621354846274728

noncomputable section

/-- A328334: Forward difference of difference between 2^n and the next smaller power of 3.

Offset 0, canonical program `A328334.P11458621354846274728`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328334 (n : ℕ) : ℤ :=
  A328334.P11458621354846274728.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328334.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328484.P15261960755088240361

`A373438(n+1)*A035191(n+1)`
-/

namespace A328484.P15261960755088240361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373438 (n + 1) * A035191 (n + 1)

end

end A328484.P15261960755088240361

noncomputable section

/-- A328484: Dirichlet g.f.: zeta(s)^2 / (1 - 3^(-s)).

Offset 1, canonical program `A328484.P15261960755088240361`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373438, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328484 (n : ℕ) : ℤ :=
  A328484.P15261960755088240361.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373438, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328484.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329393.P14477851111522146474

`∑{d}[A002808(n+1), -(-1)^#]`
-/

namespace A329393.P14477851111522146474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (-((-1) ^ d))

end

end A329393.P14477851111522146474

noncomputable section

/-- A329393: Number of odd divisors minus number of even divisors of the n-th composite.

Offset 1, canonical program `A329393.P14477851111522146474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A329393 (n : ℕ) : ℤ :=
  A329393.P14477851111522146474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A329393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329831.P12461096776249407754

`comp[A329832(n+1)-1]+1`
-/

namespace A329831.P12461096776249407754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329832 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A329831.P12461096776249407754

noncomputable section

/-- A329831: Beatty sequence for (7+sqrt(65))/8.

Offset 1, canonical program `A329831.P12461096776249407754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329831 (n : ℕ) : ℤ :=
  (A329831.P12461096776249407754.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330125.P3362564348567139348

`eq[2, A000005(A101337(n+1))]+1`
-/

namespace A330125.P3362564348567139348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A101337 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A330125.P3362564348567139348

noncomputable section

/-- A330125: Positive integers whose digit-power sum is a prime.

Offset 1, canonical program `A330125.P3362564348567139348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1391 terms. -/
def A330125 (n : ℕ) : ℤ :=
  (A330125.P3362564348567139348.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1391 terms. -/
def A330125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330320.P16120986544821140952

`∑[A229949(2*(n+1))]`
-/

namespace A330320.P16120986544821140952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229949 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330320.P16120986544821140952

noncomputable section

/-- A330320: a(n) = Sum_{i=1..n} tau(i)*tau(i+1), where tau(n) = A000005(n) is the number of divisors of n.

Offset 1, canonical program `A330320.P16120986544821140952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A330320 (n : ℕ) : ℤ :=
  A330320.P16120986544821140952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A330320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330809.P313460960627115106

`A253145(eq[8, A063440(n+1)])`
-/

namespace A330809.P313460960627115106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A330809.P313460960627115106

noncomputable section

/-- A330809: Triangular numbers having exactly 8 divisors.

Offset 1, canonical program `A330809.P313460960627115106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1040 terms. -/
def A330809 (n : ℕ) : ℤ :=
  A330809.P313460960627115106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1040 terms. -/
def A330809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330866.P8751946144507611148

`(n+1)*A065608(n+1)`
-/

namespace A330866.P8751946144507611148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A065608 (n + 1)

end

end A330866.P8751946144507611148

noncomputable section

/-- A330866: a(n) = Sum_{d|n, d

Offset 1, canonical program `A330866.P8751946144507611148`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A330866 (n : ℕ) : ℤ :=
  A330866.P8751946144507611148.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A330866.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A330926.P15371824115560739582

`A075997(n)+1`
-/

namespace A330926.P15371824115560739582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075997 n + 1

end

end A330926.P15371824115560739582

noncomputable section

/-- A330926: a(n) = Sum_{k=1..n} (ceiling(n/k) mod 2).

Offset 1, canonical program `A330926.P15371824115560739582`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075997, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330926 (n : ℕ) : ℤ :=
  A330926.P15371824115560739582.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075997, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330926.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331132.P5685763318772251677

`∑[A000005(n+1)*A092517(n+1)]`
-/

namespace A331132.P5685763318772251677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A092517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331132.P5685763318772251677

noncomputable section

/-- A331132: a(n) = Sum_{i=1..n} d(i)^2*d(i+1), where d(n) = A000005(n).

Offset 1, canonical program `A331132.P5685763318772251677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A331132 (n : ℕ) : ℤ :=
  A331132.P5685763318772251677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A331132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331135.P16910825974695220271

`a(n-1)+A002654(n)*A010051(n+1)` with `a(0)=0`
-/

namespace A331135.P16910825974695220271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A002654 n * A010051 (n + 1)

end

end A331135.P16910825974695220271

noncomputable section

/-- A331135: a(n) = Sum_{primes p <= n} r_2(p-1)/4, where r_2(n) = A004018(n).

Offset 1, canonical program `A331135.P16910825974695220271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331135 (n : ℕ) : ℤ :=
  A331135.P16910825974695220271.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331259.P10309097593094092739

`A331260(n+1)%4*A046301(n+1)`
-/

namespace A331259.P10309097593094092739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331260 (n + 1)) 4 * A046301 (n + 1)

end

end A331259.P10309097593094092739

noncomputable section

/-- A331259: Numerator of harmonic mean of 3 consecutive primes. Denominators are A331260.

Offset 1, canonical program `A331259.P10309097593094092739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331259 (n : ℕ) : ℤ :=
  A331259.P10309097593094092739.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331808.P10809846326648532808

`∩[A001748(n+1)+A001223(n+1), A002808(n+1)]`
-/

namespace A331808.P10809846326648532808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) + A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331808.P10809846326648532808

noncomputable section

/-- A331808: Composite numbers of the form 2*p + q, where p, q are consecutive prime numbers.

Offset 1, canonical program `A331808.P10809846326648532808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 698 terms. -/
def A331808 (n : ℕ) : ℤ :=
  (A331808.P10809846326648532808.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 698 terms. -/
def A331808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331892.P15573530525776411672

`A036044(n+1)+∑[A062383(n)]`
-/

namespace A331892.P15573530525776411672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331892.P15573530525776411672

noncomputable section

/-- A331892: Positive numbers k such that the negabinary expansion (A039724) of -k is palindromic.

Offset 1, canonical program `A331892.P15573530525776411672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331892 (n : ℕ) : ℤ :=
  A331892.P15573530525776411672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332219.P6518918454236727323

`A010051(A013603(n+1)+1)`
-/

namespace A332219.P6518918454236727323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A013603 (n + 1) + 1).toNat

end

end A332219.P6518918454236727323

noncomputable section

/-- A332219: a(n) = 1 if 2^n - 1 is a prime, 0 otherwise.

Offset 1, canonical program `A332219.P6518918454236727323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A332219 (n : ℕ) : ℤ :=
  A332219.P6518918454236727323.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A332219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332385.P11219704881884823919

`∑{p}[n+1, A289506(#)]`
-/

namespace A332385.P11219704881884823919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A289506 p

end

end A332385.P11219704881884823919

noncomputable section

/-- A332385: Sum of squares of indices of distinct prime factors of n.

Offset 1, canonical program `A332385.P11219704881884823919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332385 (n : ℕ) : ℤ :=
  A332385.P11219704881884823919.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333039.P4908284397635419986

`∩[A002808(n+1), A053226(n+1)+1]`
-/

namespace A333039.P4908284397635419986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053226 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333039.P4908284397635419986

noncomputable section

/-- A333039: Composites m such that sigma(m) < sigma(m-1).

Offset 1, canonical program `A333039.P4908284397635419986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7736 terms. -/
def A333039 (n : ℕ) : ℤ :=
  (A333039.P4908284397635419986.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7736 terms. -/
def A333039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333167.P7830250556896041600

`A105397(n)*A193432(n)`
-/

namespace A333167.P7830250556896041600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105397 n * A193432 n

end

end A333167.P7830250556896041600

noncomputable section

/-- A333167: a(n) = r_2(n^2 + 1), where r_2(k) is the number of ways of writing k as a sum of 2 squares (A004018).

Offset 0, canonical program `A333167.P7830250556896041600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333167 (n : ℕ) : ℤ :=
  A333167.P7830250556896041600.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333357.P13297053389099279185

`comp[A028412(n)*A057427(n)]`
-/

namespace A333357.P13297053389099279185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028412 n * A057427 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A333357.P13297053389099279185

noncomputable section

/-- A333357: Integers that cannot be expressed as the ratio of 2 Fibonacci numbers.

Offset 1, canonical program `A333357.P13297053389099279185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333357 (n : ℕ) : ℤ :=
  (A333357.P13297053389099279185.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334069.P1505033035113123661

`A082996(2^(n+1))`
-/

namespace A334069.P1505033035113123661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082996 (2 ^ (n + 1))

end

end A334069.P1505033035113123661

noncomputable section

/-- A334069: Number of numbers <= 2^n that are the product of exactly four primes, not necessarily distinct.

Offset 1, canonical program `A334069.P1505033035113123661`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334069 (n : ℕ) : ℤ :=
  A334069.P1505033035113123661.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334069.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334075.P6096195119552078021

`A163644(2*(n+1))`
-/

namespace A334075.P6096195119552078021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163644 (2 * (n + 1))

end

end A334075.P6096195119552078021

noncomputable section

/-- A334075: a(n) is the denominator of the sum of reciprocals of primes not exceeding n and not dividing binomial(2*n, n).

Offset 1, canonical program `A334075.P6096195119552078021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 414 terms. -/
def A334075 (n : ℕ) : ℤ :=
  A334075.P6096195119552078021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 414 terms. -/
def A334075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334239.P2316855968006640335

`A337566(n+1)-A005087(n+1)`
-/

namespace A334239.P2316855968006640335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337566 (n + 1) - A005087 (n + 1)

end

end A334239.P2316855968006640335

noncomputable section

/-- A334239: Number of r X s rectangles with composite side lengths such that r + s = 2n, r <= s and r | s.

Offset 1, canonical program `A334239.P2316855968006640335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334239 (n : ℕ) : ℤ :=
  A334239.P2316855968006640335.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334579.P14328322525773657863

`∑{d}[n+1, A009205(#)]`
-/

namespace A334579.P14328322525773657863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A009205 d

end

end A334579.P14328322525773657863

noncomputable section

/-- A334579: a(n) = Sum_{d|n} gcd(tau(d), sigma(d)).

Offset 1, canonical program `A334579.P14328322525773657863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334579 (n : ℕ) : ℤ :=
  A334579.P14328322525773657863.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334664.P3656540446261014513

`∏{d}[n+1, A009191(#)]`
-/

namespace A334664.P3656540446261014513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A009191 d

end

end A334664.P3656540446261014513

noncomputable section

/-- A334664: a(n) = Product_{d|n} gcd(d, tau(d)).

Offset 1, canonical program `A334664.P3656540446261014513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334664 (n : ℕ) : ℤ :=
  A334664.P3656540446261014513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334729.P8285158854772711246

`∏{d}[n+1, A009205(#)]`
-/

namespace A334729.P8285158854772711246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A009205 d

end

end A334729.P8285158854772711246

noncomputable section

/-- A334729: a(n) = Product_{d|n} gcd(tau(d), sigma(d)).

Offset 1, canonical program `A334729.P8285158854772711246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334729 (n : ℕ) : ℤ :=
  A334729.P8285158854772711246.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334784.P11044993459707876958

`∑{d}[n+1, A009278(#)]`
-/

namespace A334784.P11044993459707876958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A009278 d

end

end A334784.P11044993459707876958

noncomputable section

/-- A334784: a(n) = Sum_{d|n} lcm(tau(d), sigma(d)).

Offset 1, canonical program `A334784.P11044993459707876958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334784 (n : ℕ) : ℤ :=
  A334784.P11044993459707876958.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334806.P16639427483834950340

`∏{d}[n+1, A009278(#)]`
-/

namespace A334806.P16639427483834950340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A009278 d

end

end A334806.P16639427483834950340

noncomputable section

/-- A334806: a(n) = Product_{d|n} lcm(tau(d), sigma(d)) where tau(k) is the number of divisors of k (A000005) and sigma(k) is the sum of divisors of k (A000203).

Offset 1, canonical program `A334806.P16639427483834950340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2519 terms. -/
def A334806 (n : ℕ) : ℤ :=
  A334806.P16639427483834950340.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2519 terms. -/
def A334806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335001.P3223247444215741324

`eq[A063375(abs(1-n)+1), A272377(n)]`
-/

namespace A335001.P3223247444215741324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063375 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335001.P3223247444215741324

noncomputable section

/-- A335001: Integers m such that d(F(m)) = d(L(m)) where d is the number of divisors function, F(n) and L(n) are respectively the n-th Fibonacci and n-th Lucas numbers.

Offset 1, canonical program `A335001.P3223247444215741324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A335001 (n : ℕ) : ℤ :=
  (A335001.P3223247444215741324.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A335001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335567.P3613381038398877744

`A000217(A049820(n+1))`
-/

namespace A335567.P3613381038398877744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A049820 (n + 1)).toNat

end

end A335567.P3613381038398877744

noncomputable section

/-- A335567: Number of distinct positive integer pairs (s,t) such that s <= t < n where neither s nor t divides n.

Offset 1, canonical program `A335567.P3613381038398877744`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A335567 (n : ℕ) : ℤ :=
  A335567.P3613381038398877744.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A335567.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336323.P14905383246300325352

`A002808(A334880(n+1))`
-/

namespace A336323.P14905383246300325352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A334880 (n + 1)).toNat

end

end A336323.P14905383246300325352

noncomputable section

/-- A336323: Numbers composite(n) such that gcd(n,composite(n)) > 1.

Offset 1, canonical program `A336323.P14905383246300325352`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A334880, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336323 (n : ℕ) : ℤ :=
  A336323.P14905383246300325352.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A334880, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336323.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336371.P8780719319988487630

`A000720(A336373(n+1))`
-/

namespace A336371.P8780719319988487630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A336373 (n + 1)).toNat

end

end A336371.P8780719319988487630

noncomputable section

/-- A336371: Numbers k such that gcd(k, prime(k) + prime(k-1)) > 1.

Offset 1, canonical program `A336371.P8780719319988487630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6169 terms. -/
def A336371 (n : ℕ) : ℤ :=
  A336371.P8780719319988487630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6169 terms. -/
def A336371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336374.P1623715643861287427

`eq[1, gcd(n, A048448(n+1))]`
-/

namespace A336374.P1623715643861287427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A048448 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336374.P1623715643861287427

noncomputable section

/-- A336374: Numbers k such that gcd(k, prime(k) + prime(k+2)) = 1.

Offset 1, canonical program `A336374.P1623715643861287427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3636 terms. -/
def A336374 (n : ℕ) : ℤ :=
  (A336374.P1623715643861287427.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3636 terms. -/
def A336374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336379.P8722156963709162593

`lt[1, gcd(n+1, A048448(n+1))]+1`
-/

namespace A336379.P8722156963709162593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A048448 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A336379.P8722156963709162593

noncomputable section

/-- A336379: Numbers k such that gcd(k, prime(k-1) + prime(k+1)) > 1.

Offset 1, canonical program `A336379.P8722156963709162593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6322 terms. -/
def A336379 (n : ℕ) : ℤ :=
  (A336379.P8722156963709162593.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6322 terms. -/
def A336379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336418.P9875464423020166936

`eq[1, A316341(∏{e}[n+1, #+1])]+1`
-/

namespace A336418.P9875464423020166936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336418.P9875464423020166936

noncomputable section

/-- A336418: Numbers with a factorial number of divisors.

Offset 1, canonical program `A336418.P9875464423020166936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2443 terms. -/
def A336418 (n : ℕ) : ℤ :=
  (A336418.P9875464423020166936.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2443 terms. -/
def A336418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336465.P4910938732238570745

`∑{d}[A261969(A003557(n+1)), (n+1)/#]`
-/

namespace A336465.P4910938732238570745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261969 (A003557 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (n + 1 : ℚ) / (d : ℚ)

end

end A336465.P4910938732238570745

noncomputable section

/-- A336465: Recursive variant of A057723: If n is cubefree, then a(n) = A057723(n), otherwise a(n) = A007947(n) * a(n/A007947(n)).

Offset 1, canonical program `A336465.P4910938732238570745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336465 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336465.P4910938732238570745.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336612.P16379185797943986426

`eq[0, (n+1)%A062069(n+1)]+1`
-/

namespace A336612.P16379185797943986426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A062069 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336612.P16379185797943986426

noncomputable section

/-- A336612: Numbers m such that sigma(tau(m)) divides m, where tau(m) is the number of divisors function (A000005) and sigma(m) is the sum of divisors function (A000203).

Offset 1, canonical program `A336612.P16379185797943986426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 586 terms. -/
def A336612 (n : ℕ) : ℤ :=
  (A336612.P16379185797943986426.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 586 terms. -/
def A336612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336722.P17887129013685471247

`gcd(A007955(n+1), A009205(n+1))`
-/

namespace A336722.P17887129013685471247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007955 (n + 1)) (A009205 (n + 1))

end

end A336722.P17887129013685471247

noncomputable section

/-- A336722: a(n) = gcd(tau(n), sigma(n), pod(n)) where tau(k) is the number of divisors of k (A000005), sigma(k) is the sum of divisors of k (A000203) and pod(k) is the product of divisors of k (A007955).

Offset 1, canonical program `A336722.P17887129013685471247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336722 (n : ℕ) : ℤ :=
  (A336722.P17887129013685471247.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336722.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336756.P6848481102697664019

`3*A038567(2*(n+1))`
-/

namespace A336756.P6848481102697664019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A038567 (2 * (n + 1))

end

end A336756.P6848481102697664019

noncomputable section

/-- A336756: Perimeters in increasing order of primitive integer-sided triangles whose sides a < b < c are in arithmetic progression.

Offset 1, canonical program `A336756.P6848481102697664019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336756 (n : ℕ) : ℤ :=
  A336756.P6848481102697664019.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336940.P4983532060712905772

`A027423(n)/(A011371(n)+1)`
-/

namespace A336940.P4983532060712905772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027423 n : ℚ) / (A011371 n + 1 : ℚ)

end

end A336940.P4983532060712905772

noncomputable section

/-- A336940: Number of odd divisors of n!.

Offset 0, canonical program `A336940.P4983532060712905772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. -/
def A336940 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336940.P4983532060712905772.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. -/
def A336940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337016.P10929223580667973831

`A216556(2*a(n-1))` with `a(0)=0`
-/

namespace A337016.P10929223580667973831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A216556 (2 * a (n - 1)).toNat

end

end A337016.P10929223580667973831

noncomputable section

/-- A337016: a(0) = 0. Successive terms are double the previous, then with their digits incremented by 1.

Offset 0, canonical program `A337016.P10929223580667973831`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A216556, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337016 (n : ℕ) : ℤ :=
  A337016.P10929223580667973831.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A216556, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337016.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338086.P4709198276400586346

`4*A037314(n)`
-/

namespace A338086.P4709198276400586346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A037314 n

end

end A338086.P4709198276400586346

noncomputable section

/-- A338086: Duplicate the ternary digits of n, so each 0, 1 or 2 becomes 00, 11 or 22 respectively.

Offset 0, canonical program `A338086.P4709198276400586346`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037314, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338086 (n : ℕ) : ℤ :=
  A338086.P4709198276400586346.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037314, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338086.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338506.P3325007894870132421

`A100587(n+1)+1`
-/

namespace A338506.P3325007894870132421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100587 (n + 1) + 1

end

end A338506.P3325007894870132421

noncomputable section

/-- A338506: a(n) is the number of subsets of divisors of n.

Offset 1, canonical program `A338506.P3325007894870132421`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A338506 (n : ℕ) : ℤ :=
  A338506.P3325007894870132421.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A338506.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A338576.P8156366932210890769

`(n+1)*A007955(n+1)`
-/

namespace A338576.P8156366932210890769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007955 (n + 1)

end

end A338576.P8156366932210890769

noncomputable section

/-- A338576: a(n) = n * pod(n) where pod(n) = the product of divisors of n (A007955).

Offset 1, canonical program `A338576.P8156366932210890769`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A338576 (n : ℕ) : ℤ :=
  A338576.P8156366932210890769.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A338576.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A338991.P5457441863702357836

`n+1+(n+1)*A006218(n+1)-2*A024916(n+1)`
-/

namespace A338991.P5457441863702357836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (n + 1 : ℤ) * A006218 (n + 1) - 2 * A024916 (n + 1)

end

end A338991.P5457441863702357836

noncomputable section

/-- A338991: a(n) = Sum_{k=1..floor(n/2)} (n-2*k) * floor((n-k)/k).

Offset 1, canonical program `A338991.P5457441863702357836`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A338991 (n : ℕ) : ℤ :=
  A338991.P5457441863702357836.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A338991.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A339217.P11568586104941741007

`A099055(n)-Δ[n²]`
-/

namespace A339217.P11568586104941741007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099055 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A339217.P11568586104941741007

noncomputable section

/-- A339217: a(n) = Sum_{k=1..n} floor((2*n-k)/k).

Offset 0, canonical program `A339217.P11568586104941741007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339217 (n : ℕ) : ℤ :=
  A339217.P11568586104941741007.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339532.P2271499442616658880

`∩[A339531(n+1), A376506(n+1)]`
-/

namespace A339532.P2271499442616658880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339532.P2271499442616658880

noncomputable section

/-- A339532: Numbers b > 1 such that the smallest three primes, i.e., 2, 3 and 5 are base-b Wieferich primes.

Offset 1, canonical program `A339532.P2271499442616658880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1111 terms. -/
def A339532 (n : ℕ) : ℤ :=
  (A339532.P2271499442616658880.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1111 terms. -/
def A339532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339813.P10748615880818821302

`and(1, n)*A339814(A004526(n)+1)`
-/

namespace A339813.P10748615880818821302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A339814 (A004526 n + 1).toNat

end

end A339813.P10748615880818821302

noncomputable section

/-- A339813: The exponent of the highest power of 2 dividing (A019565(n) - 1).

Offset 1, canonical program `A339813.P10748615880818821302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339813 (n : ℕ) : ℤ :=
  A339813.P10748615880818821302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339918.P13148734605060684996

`A006218(3*n)-(A005843(n)+A004526(n))`
-/

namespace A339918.P13148734605060684996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (3 * n) - (A005843 n + A004526 n)

end

end A339918.P13148734605060684996

noncomputable section

/-- A339918: a(n) = Sum_{k=1..n} floor(3*n/k).

Offset 0, canonical program `A339918.P13148734605060684996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A339918 (n : ℕ) : ℤ :=
  A339918.P13148734605060684996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A339918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340227.P47039189013440188

`(A074816(n+1)-1)/2`
-/

namespace A340227.P47039189013440188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074816 (n + 1) - 1 : ℚ) / 2

end

end A340227.P47039189013440188

noncomputable section

/-- A340227: Number of pairs of divisors of n, (d1,d2), such that d1 < d2 and d1*d2 is squarefree.

Offset 1, canonical program `A340227.P47039189013440188`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340227 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340227.P47039189013440188.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340227.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340290.P217938669888073175

`∩[A001363(n+1), A004678(n+1)]`
-/

namespace A340290.P217938669888073175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340290.P217938669888073175

noncomputable section

/-- A340290: Numbers k that are the representation of primes in base 3 and in base 4.

Offset 1, canonical program `A340290.P217938669888073175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A340290 (n : ℕ) : ℤ :=
  (A340290.P217938669888073175.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A340290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340453.P332786434363878656

`A359237(n+1)-A359270(n+1)`
-/

namespace A340453.P332786434363878656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359237 (n + 1) - A359270 (n + 1)

end

end A340453.P332786434363878656

noncomputable section

/-- A340453: G.f.: Product_{n>=0} (1 - x^(5*n+5))^2 / ( (1 - x^(5*n+1))*(1 - x^(5*n+4)) ).

Offset 0, canonical program `A340453.P332786434363878656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340453 (n : ℕ) : ℤ :=
  A340453.P332786434363878656.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340454.P12418673259723293615

`A359236(n+1)-A359269(n+1)`
-/

namespace A340454.P12418673259723293615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359236 (n + 1) - A359269 (n + 1)

end

end A340454.P12418673259723293615

noncomputable section

/-- A340454: G.f.: Product_{n>=0} (1 - x^(5*n+5))^2 / ( (1 - x^(5*n+2))*(1 - x^(5*n+3)) ).

Offset 0, canonical program `A340454.P12418673259723293615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340454 (n : ℕ) : ℤ :=
  A340454.P12418673259723293615.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340455.P8978882349512610872

`A359287(n+1)-A359288(n+1)`
-/

namespace A340455.P8978882349512610872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359287 (n + 1) - A359288 (n + 1)

end

end A340455.P8978882349512610872

noncomputable section

/-- A340455: G.f.: Sum_{n>=0} x^(2*n)/(1 - x^(5*n+2)) - x*Sum_{n>=0} x^(3*n)/(1 - x^(5*n+3)).

Offset 0, canonical program `A340455.P8978882349512610872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340455 (n : ℕ) : ℤ :=
  A340455.P8978882349512610872.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340456.P11012612934613790888

`A359238(n+1)-A359241(n+1)`
-/

namespace A340456.P11012612934613790888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359238 (n + 1) - A359241 (n + 1)

end

end A340456.P11012612934613790888

noncomputable section

/-- A340456: G.f.: Sum_{n>=0} x^n/(1 - x^(5*n+1)) - x^3*Sum_{n>=0} x^(4*n)/(1 - x^(5*n+4)).

Offset 0, canonical program `A340456.P11012612934613790888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340456 (n : ℕ) : ℤ :=
  A340456.P11012612934613790888.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341276.P16530414387472096334

`1+A028896(n)-A006218(n)`
-/

namespace A341276.P16530414387472096334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A028896 n - A006218 n

end

end A341276.P16530414387472096334

noncomputable section

/-- A341276: a(n) = 1 + 3*n*(n+1) - Sum_{k=1..n} d(k), where d(k) is the number of divisors of k.

Offset 0, canonical program `A341276.P16530414387472096334`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A341276 (n : ℕ) : ℤ :=
  A341276.P16530414387472096334.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A341276.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A342122.P12413058708882309644

`A030101(n+1)%(n+1)`
-/

namespace A342122.P12413058708882309644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030101 (n + 1)) (n + 1 : ℤ)

end

end A342122.P12413058708882309644

noncomputable section

/-- A342122: a(n) is the remainder when the binary reverse of n is divided by n.

Offset 1, canonical program `A342122.P12413058708882309644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342122 (n : ℕ) : ℤ :=
  A342122.P12413058708882309644.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342122.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342123.P13583459305600407061

`(n+1)%A030101(n+1)`
-/

namespace A342123.P13583459305600407061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A030101 (n + 1))

end

end A342123.P13583459305600407061

noncomputable section

/-- A342123: a(n) is the remainder when n is divided by its binary reverse.

Offset 1, canonical program `A342123.P13583459305600407061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342123 (n : ℕ) : ℤ :=
  A342123.P13583459305600407061.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342123.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342183.P7288875987638950866

`p?[ceil(A289413(n+1)/15)]`
-/

namespace A342183.P7288875987638950866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A289413 (n + 1) : ℚ) / 15⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342183.P7288875987638950866

noncomputable section

/-- A342183: Primes q such that 15*q-2 and 15*q+2 are cousin primes.

Offset 1, canonical program `A342183.P7288875987638950866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1503 terms. -/
def A342183 (n : ℕ) : ℤ :=
  A342183.P7288875987638950866.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1503 terms. -/
def A342183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343191.P3852017148646265571

`round((n+1)^(2*A010051(n+1)-1)*(A000142(n+1)/A034386(n+1)²)²)`
-/

namespace A343191.P3852017148646265571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (2 * A010051 (n + 1) - 1 : ℤ) * ((A000142 (n + 1) : ℚ) / (A034386 (n + 1) ^ 2 : ℚ)) ^ 2)

end

end A343191.P3852017148646265571

noncomputable section

/-- A343191: Squiggle Dot Numbers: numbers generated in a similar way to those in A010790 except that every prime number is divided instead of multiplied. The result is then rounded to the closest integer.

Offset 1, canonical program `A343191.P3852017148646265571`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343191 (n : ℕ) : ℤ :=
  A343191.P3852017148646265571.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343191.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343452.P6602143482175885216

`eq[0, A111707(n)]`
-/

namespace A343452.P6602143482175885216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111707 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343452.P6602143482175885216

noncomputable section

/-- A343452: Numbers k such that A085942(k) = 0.

Offset 1, canonical program `A343452.P6602143482175885216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A343452 (n : ℕ) : ℤ :=
  (A343452.P6602143482175885216.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A343452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344082.P10735938395115113938

`∑{d}[n+1, #*A319089((n+1)/#)]`
-/

namespace A344082.P10735938395115113938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A319089 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344082.P10735938395115113938

noncomputable section

/-- A344082: a(n) = n * Sum_{d|n} tau(d)^3 / d, where tau(n) is the number of divisors of n.

Offset 1, canonical program `A344082.P10735938395115113938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344082 (n : ℕ) : ℤ :=
  A344082.P10735938395115113938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344458.P1195650620663336302

`∑{d}[n+1, A062509(#)]`
-/

namespace A344458.P1195650620663336302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062509 d

end

end A344458.P1195650620663336302

noncomputable section

/-- A344458: a(n) = Sum_{d|n} d^omega(d).

Offset 1, canonical program `A344458.P1195650620663336302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344458 (n : ℕ) : ℤ :=
  A344458.P1195650620663336302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344507.P8322352465595459952

`(A086246(n+1)-a(n-1))/2-a(n-1)` with `a(0)=1`
-/

namespace A344507.P8322352465595459952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((A086246 (n + 1) : ℚ) - a (n - 1)) / 2 - a (n - 1)

end

end A344507.P8322352465595459952

noncomputable section

/-- A344507: a(n) = [x^n] 2/(3*x + sqrt((1 - 3*x)*(x + 1)) + 1).

Offset 0, canonical program `A344507.P8322352465595459952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A344507 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A344507.P8322352465595459952.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A344507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345276.P270329731164597666

`A000005(n+1)-(A001615(n+1)-n*A034444(n+1))`
-/

namespace A345276.P270329731164597666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A001615 (n + 1) - (n : ℤ) * A034444 (n + 1))

end

end A345276.P270329731164597666

noncomputable section

/-- A345276: a(n) = Sum_{d|n} (n-d)^abs(mu(n/d)).

Offset 1, canonical program `A345276.P270329731164597666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345276 (n : ℕ) : ℤ :=
  A345276.P270329731164597666.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346608.P239523181387048833

`lt[A354924(n+1), 1]+1`
-/

namespace A346608.P239523181387048833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354924 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A346608.P239523181387048833

noncomputable section

/-- A346608: Indices k such that A047994(k) != A344005(k).

Offset 1, canonical program `A346608.P239523181387048833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346608 (n : ℕ) : ℤ :=
  (A346608.P239523181387048833.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347157.P15772904919310723596

`A347159(n+1)%((n+1)*∏{p}[n+1, #])`
-/

namespace A347157.P15772904919310723596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347159 (n + 1)) (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℤ)

end

end A347157.P15772904919310723596

noncomputable section

/-- A347157: Sum of cubes of distinct prime divisors of n that are < sqrt(n).

Offset 1, canonical program `A347157.P15772904919310723596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347157 (n : ℕ) : ℤ :=
  A347157.P15772904919310723596.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347158.P10542600853201840676

`A347160(gcd(n+1, ∏{p}[n+1, (n+1)/#]))`
-/

namespace A347158.P10542600853201840676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347160 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))))

end

end A347158.P10542600853201840676

noncomputable section

/-- A347158: Sum of 4th powers of distinct prime divisors of n that are < sqrt(n).

Offset 1, canonical program `A347158.P10542600853201840676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347158 (n : ℕ) : ℤ :=
  A347158.P10542600853201840676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347587.P13944628912885106107

`A008628(n)+A014591(n)-A001401(n)`
-/

namespace A347587.P13944628912885106107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008628 n + (A014591 n - A001401 n)

end

end A347587.P13944628912885106107

noncomputable section

/-- A347587: Number of partitions of n into at most 5 distinct parts.

Offset 0, canonical program `A347587.P13944628912885106107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347587 (n : ℕ) : ℤ :=
  A347587.P13944628912885106107.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347957.P17731184622233280492

`∑{d}[n+1, A010051(#)*A349371((n+1)/#)]`
-/

namespace A347957.P17731184622233280492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A349371 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347957.P17731184622233280492

noncomputable section

/-- A347957: Dirichlet convolution of A001221 (omega) with A003602 (a Kimberling paraphrase).

Offset 1, canonical program `A347957.P17731184622233280492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347957 (n : ℕ) : ℤ :=
  A347957.P17731184622233280492.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348093.P4410502798466718450

`∩[A036434(n+1), A045765(n+1)]`
-/

namespace A348093.P4410502798466718450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348093.P4410502798466718450

noncomputable section

/-- A348093: Numbers k >= 1 such that there is no pair (x,y) such that x - d(x) = k or y + d(y) = k, where d = A000005 = number of divisors.

Offset 1, canonical program `A348093.P4410502798466718450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3651 terms. -/
def A348093 (n : ℕ) : ℤ :=
  (A348093.P4410502798466718450.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3651 terms. -/
def A348093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348177.P4634512169973297206

`ceil((A046798(n+1)-2)/2)`
-/

namespace A348177.P4634512169973297206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046798 (n + 1) - 2 : ℚ) / 2⌉

end

end A348177.P4634512169973297206

noncomputable section

/-- A348177: a(n) is the number of pair of positive integers (x, y) with 1 <= x <= y such that sum s = x + y and product p = x * y satisfy s + p = 2^n, with n > 0.

Offset 1, canonical program `A348177.P4634512169973297206`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348177 (n : ℕ) : ℤ :=
  A348177.P4634512169973297206.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348177.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348540.P1296944890108127661

`∑[A023645(n+1)-∑{d}[n, (#%#²)%2]]`
-/

namespace A348540.P1296944890108127661
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) - ((∑ d ∈ Nat.divisors (f2 n), d % d ^ 2 % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348540.P1296944890108127661

noncomputable section

/-- A348540: Number of partitions of n into 3 parts whose smallest part divides the largest part.

Offset 1, canonical program `A348540.P1296944890108127661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1903 terms. -/
def A348540 (n : ℕ) : ℤ :=
  A348540.P1296944890108127661.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1903 terms. -/
def A348540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349236.P18314277781775448456

`A004709(n+2)-A004709(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349236.P18314277781775448456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 2) - A004709 (n + 1)

end

end A349236.P18314277781775448456

noncomputable section

/-- A349236: Gaps between cubefree numbers: a(n) = A004709(n+1) - A004709(n).

Offset 1, canonical program `A349236.P18314277781775448456`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349236 (n : ℕ) : ℤ :=
  A349236.P18314277781775448456.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349236.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350105.P14782711713728949417

`2^n-A350102(n)`
-/

namespace A350105.P14782711713728949417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A350102 n

end

end A350105.P14782711713728949417

noncomputable section

/-- A350105: Number of subsets of the initial segment of the natural numbers strictly below n which are not self-measuring. Number of subsets S of [n] with S != distset(S).

Offset 0, canonical program `A350105.P14782711713728949417`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350105 (n : ℕ) : ℤ :=
  A350105.P14782711713728949417.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350105.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350159.P901158934797568537

`A099777(n+1)+A000203(n+1)`
-/

namespace A350159.P901158934797568537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (n + 1) + A000203 (n + 1)

end

end A350159.P901158934797568537

noncomputable section

/-- A350159: Number of subgroups of the dicyclic group Dic_n.

Offset 1, canonical program `A350159.P901158934797568537`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350159 (n : ℕ) : ℤ :=
  A350159.P901158934797568537.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350159.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A351355.P11606374728532719925

`(n+1)*(n+2)+A006218(n+1)-A006218(2*(n+1))`
-/

namespace A351355.P11606374728532719925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) : ℤ) + A006218 (n + 1) - A006218 (2 * (n + 1))

end

end A351355.P11606374728532719925

noncomputable section

/-- A351355: Number of ways the numbers from 1..n do not divide numbers from n+1..2n.

Offset 1, canonical program `A351355.P11606374728532719925`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351355 (n : ℕ) : ℤ :=
  A351355.P11606374728532719925.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351355.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A351362.P3275431609669981014

`(n+1)*(n+2)-1+A006218(n)-A006218(2*(n+1)-1)`
-/

namespace A351362.P3275431609669981014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) : ℤ) - 1 + A006218 n - A006218 (2 * (n + 1) - 1)

end

end A351362.P3275431609669981014

noncomputable section

/-- A351362: Number of ways the numbers from 1..n do not divide the numbers from n..2n-1.

Offset 1, canonical program `A351362.P3275431609669981014`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351362 (n : ℕ) : ℤ :=
  A351362.P3275431609669981014.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351362.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A352482.P1047364551664792945

`A038040(n+1)/gcd(A038040(n+1), A049820(n+1))`
-/

namespace A352482.P1047364551664792945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (Int.gcd (A038040 (n + 1)) (A049820 (n + 1)) : ℚ)

end

end A352482.P1047364551664792945

noncomputable section

/-- A352482: Denominator of (n-d)/n*d where d = A000005(n) is the number of divisors of n.

Offset 1, canonical program `A352482.P1047364551664792945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352482 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A352482.P1047364551664792945.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353219.P7197214775389791693

`∩[A022544(n+1)+1, A022544(n+1)]`
-/

namespace A353219.P7197214775389791693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353219.P7197214775389791693

noncomputable section

/-- A353219: Positive integers which cannot be expressed as the sum of three or fewer squares, no more than two of which are greater than 1.

Offset 1, canonical program `A353219.P7197214775389791693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7191 terms. -/
def A353219 (n : ℕ) : ℤ :=
  (A353219.P7197214775389791693.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7191 terms. -/
def A353219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353463.P14904150347216604516

`A010051(n+1)*A010051(n+3)`
-/

namespace A353463.P14904150347216604516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A010051 (n + 3)

end

end A353463.P14904150347216604516

noncomputable section

/-- A353463: Characteristic function of lesser twin primes: a(n) = 1 if both n and n+2 are primes, otherwise 0.

Offset 1, canonical program `A353463.P14904150347216604516`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353463 (n : ℕ) : ℤ :=
  A353463.P14904150347216604516.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353463.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353511.P14866992667808189476

`eq[1, A027844(n+1)%2]+1`
-/

namespace A353511.P14866992667808189476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027844 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A353511.P14866992667808189476

noncomputable section

/-- A353511: Positions of odd terms in A001001, where A001001(n) = Sum_{d|n} d*sigma(d).

Offset 1, canonical program `A353511.P14866992667808189476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353511 (n : ℕ) : ℤ :=
  (A353511.P14866992667808189476.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353511.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A354801.P2682689815244805645`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, A153485, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354801 (n : ℕ) : ℤ :=
  A354801.P2682689815244805645.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, A153485, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354801.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354927.P9536107206795731212

`val(A140482(n+1), n+3)`
-/

namespace A354927.P9536107206795731212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A140482 (n + 1)).toNat (n + 3)

end

end A354927.P9536107206795731212

noncomputable section

/-- A354927: a(n) = 1 if the product of divisors of n is n^2, otherwise 0.

Offset 1, canonical program `A354927.P9536107206795731212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354927 (n : ℕ) : ℤ :=
  (A354927.P9536107206795731212.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355302.P9431336344113324060

`∑{d}[n+1, A178788(#)]`
-/

namespace A355302.P9431336344113324060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A178788 d

end

end A355302.P9431336344113324060

noncomputable section

/-- A355302: a(n) is the number of normal undulating integers that divide n.

Offset 1, canonical program `A355302.P9431336344113324060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A355302 (n : ℕ) : ℤ :=
  A355302.P9431336344113324060.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A355302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355449.P13667962571540840194

`A010051(2+n²)`
-/

namespace A355449.P13667962571540840194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 + n ^ 2)

end

end A355449.P13667962571540840194

noncomputable section

/-- A355449: a(n) = 1 if n^2 + 2 is prime, 0 otherwise.

Offset 0, canonical program `A355449.P13667962571540840194`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355449 (n : ℕ) : ℤ :=
  A355449.P13667962571540840194.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355449.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355538.P14887925225814743849

`A013939(n+1)-n`
-/

namespace A355538.P14887925225814743849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (n + 1) - (n : ℤ)

end

end A355538.P14887925225814743849

noncomputable section

/-- A355538: Partial sum of A001221 (number of distinct prime factors) minus 1, ranging from 2 to n.

Offset 1, canonical program `A355538.P14887925225814743849`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013939, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355538 (n : ℕ) : ℤ :=
  A355538.P14887925225814743849.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013939, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355538.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A355943.P14069225664471544171

`A000035(n+1)*A361465(n+1)`
-/

namespace A355943.P14069225664471544171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A361465 (n + 1)

end

end A355943.P14069225664471544171

noncomputable section

/-- A355943: a(n) = 1 if n is odd and A064989(sigma(n)) divides A064989(n), otherwise 0, where A064989 is fully multiplicative with a(2) = 1 and a(p) = prevprime(p) for odd primes p, and sigma is the sum of divisors function.

Offset 1, canonical program `A355943.P14069225664471544171`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A361465, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355943 (n : ℕ) : ℤ :=
  A355943.P14069225664471544171.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A361465, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355943.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356744.P10025507909788214387

`∩[A030626(n+1), A062832(n+1)]`
-/

namespace A356744.P10025507909788214387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356744.P10025507909788214387

noncomputable section

/-- A356744: Numbers k such that both k and k+2 have exactly 8 divisors.

Offset 1, canonical program `A356744.P10025507909788214387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1489 terms. -/
def A356744 (n : ℕ) : ℤ :=
  (A356744.P10025507909788214387.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1489 terms. -/
def A356744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356876.P10198726897312415874

`A000120(A002808(n+1))`
-/

namespace A356876.P10198726897312415874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A002808 (n + 1)).toNat

end

end A356876.P10198726897312415874

noncomputable section

/-- A356876: Binary weight of the composite numbers (A002808).

Offset 1, canonical program `A356876.P10198726897312415874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356876 (n : ℕ) : ℤ :=
  A356876.P10198726897312415874.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356876.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357686.P10772089169183460672

`∩[A081770(n+1), A224907(n+1)]`
-/

namespace A357686.P10772089169183460672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357686.P10772089169183460672

noncomputable section

/-- A357686: Nonsquarefree numbers k such that A293228(k) > k.

Offset 1, canonical program `A357686.P10772089169183460672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2194 terms. -/
def A357686 (n : ℕ) : ℤ :=
  (A357686.P10772089169183460672.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2194 terms. -/
def A357686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358038.P4241872684734010829

`∑[A004709(n+1)]`
-/

namespace A358038.P4241872684734010829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358038.P4241872684734010829

noncomputable section

/-- A358038: Partial sums of the cubefree numbers.

Offset 1, canonical program `A358038.P4241872684734010829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358038 (n : ℕ) : ℤ :=
  A358038.P4241872684734010829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358040.P3658536414461284730

`A000005(A004709(n+1))`
-/

namespace A358040.P3658536414461284730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004709 (n + 1)).toNat

end

end A358040.P3658536414461284730

noncomputable section

/-- A358040: a(n) is the number of divisors of the n-th cubefree number.

Offset 1, canonical program `A358040.P3658536414461284730`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358040 (n : ℕ) : ℤ :=
  A358040.P3658536414461284730.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358040.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358380.P3103493124036931773

`∑{d}[n+1, A344328(#)]`
-/

namespace A358380.P3103493124036931773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A344328 d

end

end A358380.P3103493124036931773

noncomputable section

/-- A358380: a(n) = Sum_{d|n} tau(d^5), where tau(n) = number of divisors of n, cf. A000005.

Offset 1, canonical program `A358380.P3103493124036931773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358380 (n : ℕ) : ℤ :=
  A358380.P3103493124036931773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358769.P11992028055102234913

`A010051(A007913(n+1))`
-/

namespace A358769.P11992028055102234913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A007913 (n + 1)).toNat

end

end A358769.P11992028055102234913

noncomputable section

/-- A358769: a(n) = 1 if n is of the form p * m^2, where p is a prime and m is a natural number >= 1, otherwise 0.

Offset 1, canonical program `A358769.P11992028055102234913`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358769 (n : ℕ) : ℤ :=
  A358769.P11992028055102234913.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358769.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359216.P4210649419407419379

`A329116(ceil(n/2))`
-/

namespace A359216.P4210649419407419379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 ⌈(n : ℚ) / 2⌉.toNat

end

end A359216.P4210649419407419379

noncomputable section

/-- A359216: X-coordinates of a point moving in a counterclockwise undulating spiral in a square grid.

Offset 0, canonical program `A359216.P4210649419407419379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359216 (n : ℕ) : ℤ :=
  A359216.P4210649419407419379.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359840.P15365432037314695994

`∩[A004678(n+1), A004679(n+1)]`
-/

namespace A359840.P15365432037314695994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359840.P15365432037314695994

noncomputable section

/-- A359840: Numbers k that are the representation of primes in base 4 and in base 5.

Offset 1, canonical program `A359840.P15365432037314695994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A359840 (n : ℕ) : ℤ :=
  (A359840.P15365432037314695994.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A359840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360159.P13468530059512545607

`(A035316(n+1)+A344300(n+1))/2`
-/

namespace A360159.P13468530059512545607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035316 (n + 1) + A344300 (n + 1) : ℚ) / 2

end

end A360159.P13468530059512545607

noncomputable section

/-- A360159: a(n) is the sum of divisors of n that are odd squares.

Offset 1, canonical program `A360159.P13468530059512545607`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, A344300, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360159 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A360159.P13468530059512545607.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, A344300, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360159.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360779.P10771138546409897050

`A033950(n+2)-A033950(n+1)`
-/

namespace A360779.P10771138546409897050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 2) - A033950 (n + 1)

end

end A360779.P10771138546409897050

noncomputable section

/-- A360779: Refactorable numbers gaps: differences between consecutive refactorable numbers.

Offset 1, canonical program `A360779.P10771138546409897050`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360779 (n : ℕ) : ℤ :=
  A360779.P10771138546409897050.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360779.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360902.P6311258266522548843

`eq[A000005(A007947(n+1)), A005361(n+1)]+1`
-/

namespace A360902.P6311258266522548843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007947 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A360902.P6311258266522548843

noncomputable section

/-- A360902: Numbers with the same number of squarefree divisors and powerful divisors.

Offset 1, canonical program `A360902.P6311258266522548843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 954 terms. -/
def A360902 (n : ℕ) : ℤ :=
  (A360902.P6311258266522548843.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 954 terms. -/
def A360902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360969.P9537499425783326170

`A005361(n+1)²`
-/

namespace A360969.P9537499425783326170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) ^ 2

end

end A360969.P9537499425783326170

noncomputable section

/-- A360969: Multiplicative with a(p^e) = e^2, p prime and e > 0.

Offset 1, canonical program `A360969.P9537499425783326170`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360969 (n : ℕ) : ℤ :=
  A360969.P9537499425783326170.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360969.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360970.P1568768849045067679

`A005361(n+1)^3`
-/

namespace A360970.P1568768849045067679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) ^ 3

end

end A360970.P1568768849045067679

noncomputable section

/-- A360970: Multiplicative with a(p^e) = e^3, p prime and e > 0.

Offset 1, canonical program `A360970.P1568768849045067679`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360970 (n : ℕ) : ℤ :=
  A360970.P1568768849045067679.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360970.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360996.P18226206419198246505

`A005361(n+1)*A082476(n+1)`
-/

namespace A360996.P18226206419198246505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A082476 (n + 1)

end

end A360996.P18226206419198246505

noncomputable section

/-- A360996: Multiplicative with a(p^e) = 5*e, p prime and e > 0.

Offset 1, canonical program `A360996.P18226206419198246505`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082476, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360996 (n : ℕ) : ℤ :=
  A360996.P18226206419198246505.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082476, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360996.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A361132.P13495344161125318511

`A005361(n+1)^4`
-/

namespace A361132.P13495344161125318511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) ^ 4

end

end A361132.P13495344161125318511

noncomputable section

/-- A361132: Multiplicative with a(p^e) = e^4, p prime and e > 0.

Offset 1, canonical program `A361132.P13495344161125318511`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361132 (n : ℕ) : ℤ :=
  A361132.P13495344161125318511.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361132.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A361265.P11907308521798501536

`A005361(n+1)*A064549(n+1)`
-/

namespace A361265.P11907308521798501536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A064549 (n + 1)

end

end A361265.P11907308521798501536

noncomputable section

/-- A361265: Multiplicative with a(p^e) = e * p^(e + 1), e > 0.

Offset 1, canonical program `A361265.P11907308521798501536`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361265 (n : ℕ) : ℤ :=
  A361265.P11907308521798501536.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361265.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A361268.P17929476801326375082`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361268 (n : ℕ) : ℤ :=
  A361268.P17929476801326375082.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361268.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A362059.P13964323751538108829

`A006218(floor((n+1)/2))`
-/

namespace A362059.P13964323751538108829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 ⌊(n + 1 : ℚ) / 2⌋.toNat

end

end A362059.P13964323751538108829

noncomputable section

/-- A362059: Total number of even divisors of all positive integers <= n.

Offset 1, canonical program `A362059.P13964323751538108829`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362059 (n : ℕ) : ℤ :=
  A362059.P13964323751538108829.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362059.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A363028.P10748860771806218141

`A363926(5*n+4)`
-/

namespace A363028.P10748860771806218141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363926 (5 * n + 4)

end

end A363028.P10748860771806218141

noncomputable section

/-- A363028: Expansion of Sum_{k>0} k * x^(2*k-1) / (1 - x^(5*k-3)).

Offset 1, canonical program `A363028.P10748860771806218141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363028 (n : ℕ) : ℤ :=
  A363028.P10748860771806218141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363029.P12163374075559595381

`A363926(A016885(n))`
-/

namespace A363029.P12163374075559595381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363926 (A016885 n).toNat

end

end A363029.P12163374075559595381

noncomputable section

/-- A363029: Expansion of Sum_{k>0} k * x^(4*k-2) / (1 - x^(5*k-3)).

Offset 1, canonical program `A363029.P12163374075559595381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363029 (n : ℕ) : ℤ :=
  A363029.P12163374075559595381.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363030.P10568656945390429790

`A363926(5*n+2)`
-/

namespace A363030.P10568656945390429790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363926 (5 * n + 2)

end

end A363030.P10568656945390429790

noncomputable section

/-- A363030: Expansion of Sum_{k>0} k * x^k / (1 - x^(5*k-3)).

Offset 1, canonical program `A363030.P10568656945390429790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363030 (n : ℕ) : ℤ :=
  A363030.P10568656945390429790.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363032.P6425717790834151494

`A363926(5*n+1)`
-/

namespace A363032.P6425717790834151494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363926 (5 * n + 1)

end

end A363032.P6425717790834151494

noncomputable section

/-- A363032: Expansion of Sum_{k>0} k * x^(3*k-1) / (1 - x^(5*k-3)).

Offset 1, canonical program `A363032.P6425717790834151494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363032 (n : ℕ) : ℤ :=
  A363032.P6425717790834151494.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363929.P14850679324281277300

`(A001899(n+1)+A284103(n+1))/5`
-/

namespace A363929.P14850679324281277300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001899 (n + 1) + A284103 (n + 1) : ℚ) / 5

end

end A363929.P14850679324281277300

noncomputable section

/-- A363929: Expansion of Sum_{k>0} x^(4*k) / (1 - x^(5*k))^2.

Offset 1, canonical program `A363929.P14850679324281277300`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001899, A284103, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363929 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363929.P14850679324281277300.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001899, A284103, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363929.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364063.P4438084833510939295

`A007503(2*(n+1)-1)/2`
-/

namespace A364063.P4438084833510939295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007503 (2 * (n + 1) - 1) : ℚ) / 2

end

end A364063.P4438084833510939295

noncomputable section

/-- A364063: Expansion of Sum_{k>0} k * x^k / (1 - x^(2*k-1)).

Offset 1, canonical program `A364063.P4438084833510939295`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364063 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364063.P4438084833510939295.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364063.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364100.P4905110227889402594

`A284103(5*(n+1)-1)`
-/

namespace A364100.P4905110227889402594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284103 (5 * (n + 1) - 1)

end

end A364100.P4905110227889402594

noncomputable section

/-- A364100: Sum of divisors of 5*n-1 of form 5*k+4.

Offset 1, canonical program `A364100.P4905110227889402594`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364100 (n : ℕ) : ℤ :=
  A364100.P4905110227889402594.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364100.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364101.P9144366412033008636

`A284103(5*(n+1)-2)`
-/

namespace A364101.P9144366412033008636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284103 (5 * (n + 1) - 2)

end

end A364101.P9144366412033008636

noncomputable section

/-- A364101: Sum of divisors of 5*n-2 of form 5*k+4.

Offset 1, canonical program `A364101.P9144366412033008636`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364101 (n : ℕ) : ℤ :=
  A364101.P9144366412033008636.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364101.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364102.P4198180457250018198

`A284103(5*(n+1)-3)`
-/

namespace A364102.P4198180457250018198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284103 (5 * (n + 1) - 3)

end

end A364102.P4198180457250018198

noncomputable section

/-- A364102: Sum of divisors of 5*n-3 of form 5*k+4.

Offset 1, canonical program `A364102.P4198180457250018198`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364102 (n : ℕ) : ℤ :=
  A364102.P4198180457250018198.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364102.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364103.P12973535211442151015

`A284103(5*n+1)`
-/

namespace A364103.P12973535211442151015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284103 (5 * n + 1)

end

end A364103.P12973535211442151015

noncomputable section

/-- A364103: Sum of divisors of 5*n-4 of form 5*k+4.

Offset 1, canonical program `A364103.P12973535211442151015`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364103 (n : ℕ) : ℤ :=
  A364103.P12973535211442151015.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364103.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364429.P6142064425586013053

`A008414(n)/A034444(A034444(n+1))`
-/

namespace A364429.P6142064425586013053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008414 n : ℚ) / (A034444 (A034444 (n + 1)).toNat : ℚ)

end

end A364429.P6142064425586013053

noncomputable section

/-- A364429: a(0) = 1, a(n) = (2*n^5 + 20*n^3 + 23*n) * 2/15 for n>=1.

Offset 0, canonical program `A364429.P6142064425586013053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364429 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364429.P6142064425586013053.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364657.P15328827667515436307

`A053226(eq[1, A053238(n+1)]+1)`
-/

namespace A364657.P15328827667515436307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053226 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A364657.P15328827667515436307

noncomputable section

/-- A364657: Numbers k such that sigma(k) > sigma(k+1) > sigma(k+2).

Offset 1, canonical program `A364657.P15328827667515436307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 958 terms. -/
def A364657 (n : ℕ) : ℤ :=
  A364657.P15328827667515436307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 958 terms. -/
def A364657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364868.P4386631434435275963

`(A055025(n+2)-1)/4`
-/

namespace A364868.P4386631434435275963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055025 (n + 2) - 1 : ℚ) / 4

end

end A364868.P4386631434435275963

noncomputable section

/-- A364868: Numbers k such that 4*k+1 is the norm of a Gaussian prime.

Offset 1, canonical program `A364868.P4386631434435275963`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364868 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364868.P4386631434435275963.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364868.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365331.P9498320090856852280

`A000005(A008833(n+1))`
-/

namespace A365331.P9498320090856852280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008833 (n + 1)).toNat

end

end A365331.P9498320090856852280

noncomputable section

/-- A365331: The number of divisors of the largest square dividing n.

Offset 1, canonical program `A365331.P9498320090856852280`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365331 (n : ℕ) : ℤ :=
  A365331.P9498320090856852280.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365331.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365348.P17779330658801885884

`A000005(A356191(n+1))`
-/

namespace A365348.P17779330658801885884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A356191 (n + 1)).toNat

end

end A365348.P17779330658801885884

noncomputable section

/-- A365348: The number of divisors of the smallest exponentially odd number divisible by n.

Offset 1, canonical program `A365348.P17779330658801885884`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365348 (n : ℕ) : ℤ :=
  A365348.P17779330658801885884.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365348.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365471.P9978817196578574402

`∪[A001745(n+1), A011531(n+1)]`
-/

namespace A365471.P9978817196578574402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A365471.P9978817196578574402

noncomputable section

/-- A365471: Numbers whose digits are not all primes.

Offset 1, canonical program `A365471.P9978817196578574402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365471 (n : ℕ) : ℤ :=
  (A365471.P9978817196578574402.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366440.P8490838854557306201

`A000203(A004709(n+1))`
-/

namespace A366440.P8490838854557306201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A004709 (n + 1)).toNat

end

end A366440.P8490838854557306201

noncomputable section

/-- A366440: The sum of divisors of the cubefree numbers (A004709).

Offset 1, canonical program `A366440.P8490838854557306201`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366440 (n : ℕ) : ℤ :=
  A366440.P8490838854557306201.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366440.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366536.P10748796053883009317

`A034444(A004709(n+1))`
-/

namespace A366536.P10748796053883009317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A004709 (n + 1)).toNat

end

end A366536.P10748796053883009317

noncomputable section

/-- A366536: The number of unitary divisors of the cubefree numbers (A004709).

Offset 1, canonical program `A366536.P10748796053883009317`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366536 (n : ℕ) : ℤ :=
  A366536.P10748796053883009317.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366536.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366538.P17888934153353945255

`A034444(A138302(n+1))`
-/

namespace A366538.P17888934153353945255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A138302 (n + 1)).toNat

end

end A366538.P17888934153353945255

noncomputable section

/-- A366538: The number of unitary divisors of the exponentially 2^n-numbers (A138302).

Offset 1, canonical program `A366538.P17888934153353945255`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A138302, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366538 (n : ℕ) : ℤ :=
  A366538.P17888934153353945255.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A138302, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366538.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366602.P128364681725489184

`A046801(2*(n+1))`
-/

namespace A366602.P128364681725489184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046801 (2 * (n + 1))

end

end A366602.P128364681725489184

noncomputable section

/-- A366602: Number of divisors of 4^n-1.

Offset 1, canonical program `A366602.P128364681725489184`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366602 (n : ℕ) : ℤ :=
  A366602.P128364681725489184.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366602.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366606.P16159170449788144016

`A046798(2*n)`
-/

namespace A366606.P16159170449788144016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046798 (2 * n)

end

end A366606.P16159170449788144016

noncomputable section

/-- A366606: Number of divisors of 4^n+1.

Offset 0, canonical program `A366606.P16159170449788144016`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366606 (n : ℕ) : ℤ :=
  A366606.P16159170449788144016.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366606.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366652.P6334443311420927637

`A046801(3*(n+1))`
-/

namespace A366652.P6334443311420927637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046801 (3 * (n + 1))

end

end A366652.P6334443311420927637

noncomputable section

/-- A366652: Number of divisors of 8^n-1.

Offset 1, canonical program `A366652.P6334443311420927637`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366652 (n : ℕ) : ℤ :=
  A366652.P6334443311420927637.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366652.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366656.P9970264767175051345

`A046798(3*n)`
-/

namespace A366656.P9970264767175051345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046798 (3 * n)

end

end A366656.P9970264767175051345

noncomputable section

/-- A366656: Number of divisors of 8^n+1.

Offset 0, canonical program `A366656.P9970264767175051345`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366656 (n : ℕ) : ℤ :=
  A366656.P9970264767175051345.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366656.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A366968.P12168866110842971525

`A006218(n+1)-(n+1)-floor((n+1)/2)`
-/

namespace A366968.P12168866110842971525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - (n + 1 : ℤ) - ⌊(n + 1 : ℚ) / 2⌋

end

end A366968.P12168866110842971525

noncomputable section

/-- A366968: a(n) = Sum_{k=3..n} floor(n/k).

Offset 1, canonical program `A366968.P12168866110842971525`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366968 (n : ℕ) : ℤ :=
  A366968.P12168866110842971525.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366968.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366969.P14722931787794667640

`n+1+A024916(n+1)-2*A006218(n+1)`
-/

namespace A366969.P14722931787794667640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A024916 (n + 1) - 2 * A006218 (n + 1)

end

end A366969.P14722931787794667640

noncomputable section

/-- A366969: a(n) = Sum_{k=3..n} (k-2) * floor(n/k).

Offset 1, canonical program `A366969.P14722931787794667640`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366969 (n : ℕ) : ℤ :=
  A366969.P14722931787794667640.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366969.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366972.P1635833691368935972

`A006218(n+1)-(n+1)-floor((n+1)/2)-floor((n+1)/3)`
-/

namespace A366972.P1635833691368935972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - (n + 1 : ℤ) - ⌊(n + 1 : ℚ) / 2⌋ - ⌊(n + 1 : ℚ) / 3⌋

end

end A366972.P1635833691368935972

noncomputable section

/-- A366972: a(n) = Sum_{k=4..n} floor(n/k).

Offset 1, canonical program `A366972.P1635833691368935972`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366972 (n : ℕ) : ℤ :=
  A366972.P1635833691368935972.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366972.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A368473.P11836645701216829903

`A005361(A138302(n+1))`
-/

namespace A368473.P11836645701216829903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A138302 (n + 1)).toNat

end

end A368473.P11836645701216829903

noncomputable section

/-- A368473: Product of exponents of prime factorization of the exponentially 2^n-numbers (A138302).

Offset 1, canonical program `A368473.P11836645701216829903`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138302, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368473 (n : ℕ) : ℤ :=
  A368473.P11836645701216829903.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138302, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368473.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368474.P7622636264866400950

`A005361(A197680(n+1))`
-/

namespace A368474.P7622636264866400950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A197680 (n + 1)).toNat

end

end A368474.P7622636264866400950

noncomputable section

/-- A368474: Product of exponents of prime factorization of the numbers whose exponents in their prime power factorization are squares (A197680).

Offset 1, canonical program `A368474.P7622636264866400950`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A197680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368474 (n : ℕ) : ℤ :=
  A368474.P7622636264866400950.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A197680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368474.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A368712.P1920383267127000560

`A051903(A004709(n+1))`
-/

namespace A368712.P1920383267127000560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A004709 (n + 1)).toNat

end

end A368712.P1920383267127000560

noncomputable section

/-- A368712: The maximal exponent in the prime factorization of the cubefree numbers.

Offset 1, canonical program `A368712.P1920383267127000560`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368712 (n : ℕ) : ℤ :=
  A368712.P1920383267127000560.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368712.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368820.P17874303189853155943

`A000330(A000196(n+1))-A035316(n+1)`
-/

namespace A368820.P17874303189853155943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A000196 (n + 1)).toNat - A035316 (n + 1)

end

end A368820.P17874303189853155943

noncomputable section

/-- A368820: Sum of the squares less than n that do not divide n.

Offset 1, canonical program `A368820.P17874303189853155943`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368820 (n : ℕ) : ℤ :=
  A368820.P17874303189853155943.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368820.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369119.P11770962019808965455

`(n+1)^A010051(n+1)*n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369119.P11770962019808965455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A010051 (n + 1) : ℤ) * (Nat.factorial n : ℚ)

end

end A369119.P11770962019808965455

noncomputable section

/-- A369119: a(n) = (n + 1)^[is_prime(n + 1)] * n!.

Offset 0, canonical program `A369119.P11770962019808965455`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369119 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369119.P11770962019808965455.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369119.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369610.P10507155967084453302

`A014689(n+1)-A079952(n+1)`
-/

namespace A369610.P10507155967084453302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) - A079952 (n + 1)

end

end A369610.P10507155967084453302

noncomputable section

/-- A369610: a(n) is the number of nonprime numbers < prime(n) which are not equal to twice a prime.

Offset 1, canonical program `A369610.P10507155967084453302`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079952, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369610 (n : ℕ) : ℤ :=
  A369610.P10507155967084453302.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079952, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369610.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369869.P1984379103473463166

`∑{d}[n+1, A010051(#)*A128913((n+1)/#)]`
-/

namespace A369869.P1984379103473463166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A128913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369869.P1984379103473463166

noncomputable section

/-- A369869: a(n) = n * Sum_{p|n, p prime} pi(n/p) / p.

Offset 1, canonical program `A369869.P1984379103473463166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369869 (n : ℕ) : ℤ :=
  A369869.P1984379103473463166.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369889.P3040492947822450392

`A048250(A004709(n+1))`
-/

namespace A369889.P3040492947822450392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A004709 (n + 1)).toNat

end

end A369889.P3040492947822450392

noncomputable section

/-- A369889: The sum of squarefree divisors of the cubefree numbers.

Offset 1, canonical program `A369889.P3040492947822450392`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369889 (n : ℕ) : ℤ :=
  A369889.P3040492947822450392.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369889.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369907.P5930433476128637546

`∑{d}[n+1, A010051(#)*A328260((n+1)/#)]`
-/

namespace A369907.P5930433476128637546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A328260 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369907.P5930433476128637546

noncomputable section

/-- A369907: a(n) = n * Sum_{p|n, p prime} omega(n/p) / p.

Offset 1, canonical program `A369907.P5930433476128637546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369907 (n : ℕ) : ℤ :=
  A369907.P5930433476128637546.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369933.P7451183302863307938

`A051903(A138302(n+1))`
-/

namespace A369933.P7451183302863307938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A138302 (n + 1)).toNat

end

end A369933.P7451183302863307938

noncomputable section

/-- A369933: The maximal exponent in the prime factorization of the exponentially 2^n numbers (A138302).

Offset 1, canonical program `A369933.P7451183302863307938`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A138302, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369933 (n : ℕ) : ℤ :=
  A369933.P7451183302863307938.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A138302, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369933.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370477.P17615523648201337073

`A000588(n)+A071718(n)-A000245(n)`
-/

namespace A370477.P17615523648201337073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 n + (A071718 n - A000245 n)

end

end A370477.P17615523648201337073

noncomputable section

/-- A370477: G.f. satisfies A(x) = ( 1 + x * (A(x)^(1/2) / (1-x))^(3/2) )^2.

Offset 0, canonical program `A370477.P17615523648201337073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A370477 (n : ℕ) : ℤ :=
  A370477.P17615523648201337073.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A370477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370831.P12708300684849236063

`A002808(n+1)-a(n-1)` with `a(0)=4`
-/

namespace A370831.P12708300684849236063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A002808 (n + 1) - a (n - 1)

end

end A370831.P12708300684849236063

noncomputable section

/-- A370831: Alternating sum of composites.

Offset 1, canonical program `A370831.P12708300684849236063`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370831 (n : ℕ) : ℤ :=
  A370831.P12708300684849236063.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370831.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372470.P1016400995932517880

`A359473(n+1)*A000005(n+1)`
-/

namespace A372470.P1016400995932517880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359473 (n + 1) * A000005 (n + 1)

end

end A372470.P1016400995932517880

noncomputable section

/-- A372470: Multiplicative with a(p^e) = e+1 if e+1 is a power of 2, and 0 otherwise.

Offset 1, canonical program `A372470.P1016400995932517880`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372470 (n : ℕ) : ℤ :=
  A372470.P1016400995932517880.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372470.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A372504.P18324101778545976838`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355823, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372504 (n : ℕ) : ℤ :=
  A372504.P18324101778545976838.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355823, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372504.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373113.P5306061583150364909

`A066446(n+1)+(n+1)*A000005(n+1)`
-/

namespace A373113.P5306061583150364909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (n + 1) + (n + 1 : ℤ) * A000005 (n + 1)

end

end A373113.P5306061583150364909

noncomputable section

/-- A373113: For n >= 1, a(n) = Sum_{i = n..(n + A000005(n) - 1)} i.

Offset 1, canonical program `A373113.P5306061583150364909`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373113 (n : ℕ) : ℤ :=
  A373113.P5306061583150364909.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373113.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374051.P11949177030714316836

`A079978(A374124(n+1))`
-/

namespace A374051.P11949177030714316836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A374124 (n + 1)).toNat

end

end A374051.P11949177030714316836

noncomputable section

/-- A374051: a(n) = 1 if A113177(n) is a multiple of 3, otherwise 0, where A113177 is fully additive with a(p) = Fibonacci(p).

Offset 1, canonical program `A374051.P11949177030714316836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374051 (n : ℕ) : ℤ :=
  A374051.P11949177030714316836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374426.P13793053293426560037

`a(n-1)+n+1+A010051(n+1)` with `a(0)=1`
-/

namespace A374426.P13793053293426560037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℤ) + A010051 (n + 1)

end

end A374426.P13793053293426560037

noncomputable section

/-- A374426: a(n) = n*(n + 1)/2 + pi(n), where pi(n) = A000720(n) is the prime counting function.

Offset 1, canonical program `A374426.P13793053293426560037`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374426 (n : ℕ) : ℤ :=
  A374426.P13793053293426560037.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374426.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374587.P4037298411033951044

`A051903(A368715(n+1))`
-/

namespace A374587.P4037298411033951044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A368715 (n + 1)).toNat

end

end A374587.P4037298411033951044

noncomputable section

/-- A374587: The maximum exponent in the prime factorization of the numbers that are not coprime to the maximum exponent in their prime factorization.

Offset 1, canonical program `A374587.P4037298411033951044`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A368715, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374587 (n : ℕ) : ℤ :=
  A374587.P4037298411033951044.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A368715, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374587.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375184.P6361993029201309949

`A375183(A165199(n))`
-/

namespace A375184.P6361993029201309949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375183 (A165199 n).toNat

end

end A375184.P6361993029201309949

noncomputable section

/-- A375184: In the binary expansion of n, complement bits at even positions and to the right of a 0 (the most significant bit corresponding to position 1).

Offset 0, canonical program `A375184.P6361993029201309949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A375184 (n : ℕ) : ℤ :=
  A375184.P6361993029201309949.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A375184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375349.P12087631011185153804

`A000035(A004709(n+1))`
-/

namespace A375349.P12087631011185153804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004709 (n + 1)).toNat

end

end A375349.P12087631011185153804

noncomputable section

/-- A375349: a(n) is the parity of the n-th cubefree number.

Offset 1, canonical program `A375349.P12087631011185153804`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375349 (n : ℕ) : ℤ :=
  A375349.P12087631011185153804.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375349.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375931.P9740495412486584682

`A261969(n+1)^A051903(n+1)`
-/

namespace A375931.P9740495412486584682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261969 (n + 1) : ℚ) ^ (A051903 (n + 1) : ℤ)

end

end A375931.P9740495412486584682

noncomputable section

/-- A375931: The product of the prime powers in the prime factorization of n that have an exponent that is equal to the maximum exponent in this factorization.

Offset 1, canonical program `A375931.P9740495412486584682`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A261969, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375931 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375931.P9740495412486584682.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A261969, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375931.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375960.P2597128475225749997

`∪[A211338(n+1), ∑[A003215(n)]]`
-/

namespace A375960.P2597128475225749997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211338 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375960.P2597128475225749997

noncomputable section

/-- A375960: Numbers whose product of proper divisors is a cube.

Offset 1, canonical program `A375960.P2597128475225749997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375960 (n : ℕ) : ℤ :=
  (A375960.P2597128475225749997.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376047.P566063180146395764

`comp[A092433(n+1)-1]+1`
-/

namespace A376047.P566063180146395764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092433 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A376047.P566063180146395764

noncomputable section

/-- A376047: Complement of A092433.

Offset 1, canonical program `A376047.P566063180146395764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376047 (n : ℕ) : ℤ :=
  (A376047.P566063180146395764.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376295.P17984946659745279071

`A030101(A047778(n+1))`
-/

namespace A376295.P17984946659745279071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A047778 (n + 1)).toNat

end

end A376295.P17984946659745279071

noncomputable section

/-- A376295: The binary expansion of a(n) is the reversal of the concatenation of the binary expansions of 1,...,n.

Offset 1, canonical program `A376295.P17984946659745279071`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376295 (n : ℕ) : ℤ :=
  A376295.P17984946659745279071.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376295.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376365.P17778813821740377865

`A001221(A004709(n+1))`
-/

namespace A376365.P17778813821740377865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A004709 (n + 1)).toNat

end

end A376365.P17778813821740377865

noncomputable section

/-- A376365: The number of distinct prime factors of the cubefree numbers.

Offset 1, canonical program `A376365.P17778813821740377865`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A004709, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376365 (n : ℕ) : ℤ :=
  A376365.P17778813821740377865.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A004709, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376365.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A376760.P3377594604691721728

`2*A002808(n+1)-A000720(2*A002808(n+1))-(n+1)`
-/

namespace A376760.P3377594604691721728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002808 (n + 1) - A000720 (2 * A002808 (n + 1)).toNat - (n + 1 : ℤ)

end

end A376760.P3377594604691721728

noncomputable section

/-- A376760: Let c(n) = A002808(n) denote the n-th composite number; a(n) = number of composite numbers c with c(n) <= c <= 2*c(n).

Offset 1, canonical program `A376760.P3377594604691721728`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376760 (n : ℕ) : ℤ :=
  A376760.P3377594604691721728.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376760.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376761.P13913482911145713931

`A000720(2*A002808(n+1))-A002808(n+1)+n+1+1`
-/

namespace A376761.P13913482911145713931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * A002808 (n + 1)).toNat - A002808 (n + 1) + (n + 1 : ℤ) + 1

end

end A376761.P13913482911145713931

noncomputable section

/-- A376761: Number of primes between the n-th composite number c(n) and 2*c(n).

Offset 1, canonical program `A376761.P13913482911145713931`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376761 (n : ℕ) : ℤ :=
  A376761.P13913482911145713931.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376761.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377562.P10117225115385376914

`eq[2, A159918(A000005(n+1))]+1`
-/

namespace A377562.P10117225115385376914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377562.P10117225115385376914

noncomputable section

/-- A377562: Numbers that have twice as many infinitary divisors as noninfinitary divisors.

Offset 1, canonical program `A377562.P10117225115385376914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377562 (n : ℕ) : ℤ :=
  (A377562.P10117225115385376914.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377902.P10934479624454164712

`Δ[comp[(n%2)^n*A002808(n+1)]]`
-/

namespace A377902.P10934479624454164712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n % 2) ^ n : ℕ) : ℤ) * A002808 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A377902.P10934479624454164712

noncomputable section

/-- A377902: First differences of A377898.

Offset 1, canonical program `A377902.P10934479624454164712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A377902 (n : ℕ) : ℤ :=
  A377902.P10934479624454164712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A377902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378314.P16230530394060533899

`A190940(n)+a(n-1)` with `a(0)=0`
-/

namespace A378314.P16230530394060533899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A190940 n + a (n - 1)

end

end A378314.P16230530394060533899

noncomputable section

/-- A378314: a(n) = number of subsets of {1, 2, ..., n} that represent the first k divisors of m for some positive integers m and 1 <= k <= A000005(m).

Offset 0, canonical program `A378314.P16230530394060533899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1096 terms. -/
def A378314 (n : ℕ) : ℤ :=
  A378314.P16230530394060533899.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1096 terms. -/
def A378314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378367.P15446087870678905426

`A361102(A356068(n+1))`
-/

namespace A378367.P15446087870678905426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (A356068 (n + 1)).toNat

end

end A378367.P15446087870678905426

noncomputable section

/-- A378367: Greatest non prime power <= n, allowing 1.

Offset 1, canonical program `A378367.P15446087870678905426`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356068, A361102, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378367 (n : ℕ) : ℤ :=
  A378367.P15446087870678905426.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356068, A361102, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378367.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378930.P6933035363972546027

`A009230(n+1)/A009191(n+1)`
-/

namespace A378930.P6933035363972546027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009230 (n + 1) : ℚ) / (A009191 (n + 1) : ℚ)

end

end A378930.P6933035363972546027

noncomputable section

/-- A378930: a(n) = n * d(n) / gcd(n, d(n))^2, where d = A000005.

Offset 1, canonical program `A378930.P6933035363972546027`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009230, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378930 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378930.P6933035363972546027.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009230, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378930.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378939.P6683224254479120729

`(A006318(n)+A110110(n))/2`
-/

namespace A378939.P6683224254479120729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006318 n + A110110 n : ℚ) / 2

end

end A378939.P6683224254479120729

noncomputable section

/-- A378939: Number of Schroeder paths of semilength n up to reversal.

Offset 0, canonical program `A378939.P6683224254479120729`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006318, A110110, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378939 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378939.P6683224254479120729.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006318, A110110, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378939.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A379028.P1083358816384689747

`∏{e}[n+1, A252505(#+1)]`
-/

namespace A379028.P1083358816384689747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A252505 (Nat.factorization (f1 n) p + 1)

end

end A379028.P1083358816384689747

noncomputable section

/-- A379028: The number of modified exponential divisors of n.

Offset 1, canonical program `A379028.P1083358816384689747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379028 (n : ℕ) : ℤ :=
  A379028.P1083358816384689747.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379054.P762129589633278871

`A002808(2*(n+1)+2)-A002808(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379054.P762129589633278871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (2 * (n + 1) + 2) - A002808 (2 * (n + 1))

end

end A379054.P762129589633278871

noncomputable section

/-- A379054: a(n) = composite(2*n+2) - composite(2*n).

Offset 1, canonical program `A379054.P762129589633278871`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379054 (n : ℕ) : ℤ :=
  A379054.P762129589633278871.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379054.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379055.P14974910481515750343

`A002808(2*n+3)-A002808(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379055.P14974910481515750343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (2 * n + 3) - A002808 (2 * n + 1)

end

end A379055.P14974910481515750343

noncomputable section

/-- A379055: a(n) = composite(2*n+3) - composite(2*n+1).

Offset 0, canonical program `A379055.P14974910481515750343`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379055 (n : ℕ) : ℤ :=
  A379055.P14974910481515750343.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379055.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379108.P285787528398136253

`∑{d}[n+1, A000203(#)*A359579((n+1)/#)]`
-/

namespace A379108.P285787528398136253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A359579 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379108.P285787528398136253

noncomputable section

/-- A379108: Dirichlet convolution of sigma with A359579.

Offset 1, canonical program `A379108.P285787528398136253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379108 (n : ℕ) : ℤ :=
  A379108.P285787528398136253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379218.P1688385068240384279

`∑{d}[n+1, #*A359579((n+1)/#)]`
-/

namespace A379218.P1688385068240384279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A359579 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379218.P1688385068240384279

noncomputable section

/-- A379218: Möbius transform of A379108.

Offset 1, canonical program `A379218.P1688385068240384279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379218 (n : ℕ) : ℤ :=
  A379218.P1688385068240384279.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379769.P2860525123367169776

`A006218(n+1)%(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379769.P2860525123367169776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006218 (n + 1)) (n + 1 : ℤ)

end

end A379769.P2860525123367169776

noncomputable section

/-- A379769: a(n) = (A006218(n) mod n).

Offset 1, canonical program `A379769.P2860525123367169776`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A006218(n+1)%(n+1)` (program `A379769.P2860525123367169776`, by `A379769.P2860525123367169776.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379769 (n : ℕ) : ℤ :=
  A379769.P2860525123367169776.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A006218(n+1)%(n+1)` (program `A379769.P2860525123367169776`, by `A379769.P2860525123367169776.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379769.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A380101.P1884681769082390554

`eq[2, A069903(n+1)]+1`
-/

namespace A380101.P1884681769082390554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A380101.P1884681769082390554

noncomputable section

/-- A380101: Numbers k such that omega(k-th triangular number) = 2, where omega = A001221.

Offset 1, canonical program `A380101.P1884681769082390554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 266 terms. -/
def A380101 (n : ℕ) : ℤ :=
  (A380101.P1884681769082390554.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 266 terms. -/
def A380101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380449.P8792025045371275510

`A000203(n+1)+A033273(n+1)`
-/

namespace A380449.P8792025045371275510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A033273 (n + 1)

end

end A380449.P8792025045371275510

noncomputable section

/-- A380449: Sum of the divisors of n plus the number of nonprime divisors of n.

Offset 1, canonical program `A380449.P8792025045371275510`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033273, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380449 (n : ℕ) : ℤ :=
  A380449.P8792025045371275510.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033273, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380449.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381401.P17306812054606808102

`∑{e}[n+1, A010051(#)+1]`
-/

namespace A381401.P17306812054606808102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (A010051 (Nat.factorization (f1 n) p) + 1)

end

end A381401.P17306812054606808102

noncomputable section

/-- A381401: a(n) is the number of (possibly non-distinct) prime elements in the multiset of bases and exponents in the prime factorization of n.

Offset 1, canonical program `A381401.P17306812054606808102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381401 (n : ℕ) : ℤ :=
  A381401.P17306812054606808102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381950.P2231247661708583555

`filter[A381956(n+1), A379952(#)]`
-/

namespace A381950.P2231247661708583555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A381950.P2231247661708583555

noncomputable section

/-- A381950: Odd numbers whose prime factorization has an even maximum exponent.

Offset 1, canonical program `A381950.P2231247661708583555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2014 terms. -/
def A381950 (n : ℕ) : ℤ :=
  A381950.P2231247661708583555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2014 terms. -/
def A381950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381973.P380861839472755798

`A120503(A381974(n+1))`
-/

namespace A381973.P380861839472755798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120503 (A381974 (n + 1)).toNat

end

end A381973.P380861839472755798

noncomputable section

/-- A381973: Numbers m such that Sum_{k >= 0} floor(m/3^k) is prime.

Offset 1, canonical program `A381973.P380861839472755798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 830 terms. -/
def A381973 (n : ℕ) : ℤ :=
  A381973.P380861839472755798.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 830 terms. -/
def A381973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382418.P11791072874298517319

`eq[0, A309788(n)]`
-/

namespace A382418.P11791072874298517319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A382418.P11791072874298517319

noncomputable section

/-- A382418: Numbers with at least one zero in their base-9 representation.

Offset 1, canonical program `A382418.P11791072874298517319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3440 terms. -/
def A382418 (n : ℕ) : ℤ :=
  (A382418.P11791072874298517319.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3440 terms. -/
def A382418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382422.P18312410070460850629

`A005361(A046100(n+1))`
-/

namespace A382422.P18312410070460850629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A046100 (n + 1)).toNat

end

end A382422.P18312410070460850629

noncomputable section

/-- A382422: The product of exponents in the prime factorization of the biquadratefree numbers.

Offset 1, canonical program `A382422.P18312410070460850629`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382422 (n : ℕ) : ℤ :=
  A382422.P18312410070460850629.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382422.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A301676.P12949450043224111641

`A301722(n)-A186101(n)`
-/

namespace A301676.P12949450043224111641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301722 n - A186101 n

end

end A301676.P12949450043224111641

noncomputable section

/-- A301676: Coordination sequence for node of type V2 in "krs" 2-D tiling (or net).

Offset 0, canonical program `A301676.P12949450043224111641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2293 terms. -/
def A301676 (n : ℕ) : ℤ :=
  A301676.P12949450043224111641.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2293 terms. -/
def A301676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308496.P3784628210705084375

`A000027(eq[1, gcd(15, A309959(n))])`
-/

namespace A308496.P3784628210705084375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 15 (A309959 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A308496.P3784628210705084375

noncomputable section

/-- A308496: Numbers with digits 1,2,4,7 when written in base 8.

Offset 1, canonical program `A308496.P3784628210705084375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 724 terms. -/
def A308496 (n : ℕ) : ℤ :=
  A308496.P3784628210705084375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 724 terms. -/
def A308496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310378.P15514030855777520600

`2*A311804(2*n)-A008458(2*n)`
-/

namespace A310378.P15514030855777520600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311804 (2 * n) - A008458 (2 * n)

end

end A310378.P15514030855777520600

noncomputable section

/-- A310378: Coordination sequence Gal.6.320.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310378.P15514030855777520600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1299 terms. -/
def A310378 (n : ℕ) : ℤ :=
  A310378.P15514030855777520600.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1299 terms. -/
def A310378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310408.P15738370817569291537

`2*A312927(n)-A008574(n)`
-/

namespace A310408.P15738370817569291537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312927 n - A008574 n

end

end A310408.P15738370817569291537

noncomputable section

/-- A310408: Coordination sequence Gal.6.196.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310408.P15738370817569291537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2455 terms. -/
def A310408 (n : ℕ) : ℤ :=
  A310408.P15738370817569291537.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2455 terms. -/
def A310408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310505.P8653001486545686443

`abs(A008592(n)-A315202(n))`
-/

namespace A310505.P8653001486545686443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315202 n|

end

end A310505.P8653001486545686443

noncomputable section

/-- A310505: Coordination sequence Gal.6.330.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310505.P8653001486545686443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A310505 (n : ℕ) : ℤ :=
  A310505.P8653001486545686443.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A310505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313680.P17138657541205040173

`A314091(n)-A002264(n+1)`
-/

namespace A313680.P17138657541205040173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314091 n - A002264 (n + 1)

end

end A313680.P17138657541205040173

noncomputable section

/-- A313680: Coordination sequence Gal.6.120.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313680.P17138657541205040173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2399 terms. -/
def A313680 (n : ℕ) : ℤ :=
  A313680.P17138657541205040173.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2399 terms. -/
def A313680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314089.P3546042962349282069

`A313474(n)+∑[A021913(n)]`
-/

namespace A314089.P3546042962349282069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313474 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314089.P3546042962349282069

noncomputable section

/-- A314089: Coordination sequence Gal.6.260.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314089.P3546042962349282069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A314089 (n : ℕ) : ℤ :=
  A314089.P3546042962349282069.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A314089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314239.P6616137567385777595

`A311420(n)+A047273(n+1)`
-/

namespace A314239.P6616137567385777595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311420 n + A047273 (n + 1)

end

end A314239.P6616137567385777595

noncomputable section

/-- A314239: Coordination sequence Gal.6.642.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314239.P6616137567385777595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2224 terms. -/
def A314239 (n : ℕ) : ℤ :=
  A314239.P6616137567385777595.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2224 terms. -/
def A314239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315170.P21766199213765349

`2*A314669(n)-A008574(n)`
-/

namespace A315170.P21766199213765349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314669 n - A008574 n

end

end A315170.P21766199213765349

noncomputable section

/-- A315170: Coordination sequence Gal.6.119.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315170.P21766199213765349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 846 terms. -/
def A315170 (n : ℕ) : ℤ :=
  A315170.P21766199213765349.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 846 terms. -/
def A315170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315400.P9155162697410985556

`A313474(n)+n-∑[A131735(n)]`
-/

namespace A315400.P9155162697410985556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313474 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A315400.P9155162697410985556

noncomputable section

/-- A315400: Coordination sequence Gal.6.256.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315400.P9155162697410985556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2449 terms. -/
def A315400 (n : ℕ) : ℤ :=
  A315400.P9155162697410985556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2449 terms. -/
def A315400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315683.P6946226476358261575

`A313474(n)+n`
-/

namespace A315683.P6946226476358261575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313474 n + (n : ℤ)

end

end A315683.P6946226476358261575

noncomputable section

/-- A315683: Coordination sequence Gal.6.634.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315683.P6946226476358261575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2542 terms. -/
def A315683 (n : ℕ) : ℤ :=
  A315683.P6946226476358261575.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2542 terms. -/
def A315683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334954.P6871016967396285998

`A337360(n+1)/A000203(n+1)`
-/

namespace A334954.P6871016967396285998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337360 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)

end

end A334954.P6871016967396285998

noncomputable section

/-- A334954: a(n) is 1 plus the number of divisors of n.

Offset 1, canonical program `A334954.P6871016967396285998`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334954 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A334954.P6871016967396285998.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334954.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336355.P3645618290858971034

`char[A336357(n+1)-1]`
-/

namespace A336355.P3645618290858971034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336357 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A336355.P3645618290858971034

noncomputable section

/-- A336355: Characteristic function of A336357, numbers k for which A001221(A000203(k)) < A001221(k).

Offset 1, canonical program `A336355.P3645618290858971034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336355 (n : ℕ) : ℤ :=
  (A336355.P3645618290858971034.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340328.P16997579508393470053

`∑[A056594(A003156(A028310(n)))]`
-/

namespace A340328.P16997579508393470053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A003156 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340328.P16997579508393470053

noncomputable section

/-- A340328: a(n) is the Y-coordinate of the n-th point of a variant of the quadratic Koch curve. Sequence A340327 gives X-coordinates.

Offset 0, canonical program `A340328.P16997579508393470053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A340328 (n : ℕ) : ℤ :=
  A340328.P16997579508393470053.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A340328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340707.P5153468553302078979

`(A013597(n+2)-A013603(n+2))/2`
-/

namespace A340707.P5153468553302078979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013597 (n + 2) - A013603 (n + 2) : ℚ) / 2

end

end A340707.P5153468553302078979

noncomputable section

/-- A340707: a(n) = (prevprime(2^n) + nextprime(2^n))/2 - 2^n where prevprime(n) = A151799(n) and nextprime(n) = A151800(n).

Offset 2, canonical program `A340707.P5153468553302078979`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013597, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340707 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340707.P5153468553302078979.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013597, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340707.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344223.P8815021309923092592

`(n+1)*A344226(n+1)`
-/

namespace A344223.P8815021309923092592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A344226 (n + 1)

end

end A344223.P8815021309923092592

noncomputable section

/-- A344223: a(n) = Sum_{k=1..n} tau(gcd(k,n)^n), where tau(n) is the number of divisors of n.

Offset 1, canonical program `A344223.P8815021309923092592`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344226, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344223 (n : ℕ) : ℤ :=
  A344223.P8815021309923092592.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344226, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344223.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364999.P3621329991387479077

`2*A039956(n+2)`
-/

namespace A364999.P3621329991387479077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039956 (n + 2)

end

end A364999.P3621329991387479077

noncomputable section

/-- A364999: Numbers k neither squarefree nor prime power such that both rad(k)*A119288(k) > k and rad(k)*A053669(k) > k.

Offset 1, canonical program `A364999.P3621329991387479077`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364999 (n : ℕ) : ℤ :=
  A364999.P3621329991387479077.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364999.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380117.P852758399818597968

`n+1-A380118(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A380117.P852758399818597968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A380118 (n + 1)

end

end A380117.P852758399818597968

noncomputable section

/-- A380117: a(n) = n - A380118(n).

Offset 1, canonical program `A380117.P852758399818597968`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A380118, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380117 (n : ℕ) : ℤ :=
  A380117.P852758399818597968.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A380118, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380117.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A311125.P2083360044693346749

`A314669(n)-A004525(A004525(A004525(n)))`
-/

namespace A311125.P2083360044693346749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314669 n - A004525 (A004525 (A004525 n).toNat).toNat

end

end A311125.P2083360044693346749

noncomputable section

/-- A311125: Coordination sequence Gal.6.419.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311125.P2083360044693346749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2602 terms. -/
def A311125 (n : ℕ) : ℤ :=
  A311125.P2083360044693346749.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2602 terms. -/
def A311125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314253.P2574229848549978750

`abs(A008592(n)-A314669(n))`
-/

namespace A314253.P2574229848549978750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314669 n|

end

end A314253.P2574229848549978750

noncomputable section

/-- A314253: Coordination sequence Gal.6.627.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314253.P2574229848549978750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1966 terms. -/
def A314253 (n : ℕ) : ℤ :=
  A314253.P2574229848549978750.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1966 terms. -/
def A314253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304094.P7370092225823776362

`A304092(n+1)-A059841(n+1)`
-/

namespace A304094.P7370092225823776362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304092 (n + 1) - A059841 (n + 1)

end

end A304094.P7370092225823776362

noncomputable section

/-- A304094: Number of Lucas numbers (A000204: 1, 3, 4, 7, 11, ... excluding 2) that divide n.

Offset 1, canonical program `A304094.P7370092225823776362`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304092, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304094 (n : ℕ) : ℤ :=
  A304094.P7370092225823776362.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304092, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304094.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A304407.P14639406114947155212

`A005361(n+1)*A173557(n+1)`
-/

namespace A304407.P14639406114947155212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A173557 (n + 1)

end

end A304407.P14639406114947155212

noncomputable section

/-- A304407: If n = Product (p_j^k_j) then a(n) = Product ((p_j - 1)*k_j).

Offset 1, canonical program `A304407.P14639406114947155212`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304407 (n : ℕ) : ℤ :=
  A304407.P14639406114947155212.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304407.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A304408.P687258008927875395

`A000005(n+1)*A173557(n+1)`
-/

namespace A304408.P687258008927875395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A173557 (n + 1)

end

end A304408.P687258008927875395

noncomputable section

/-- A304408: If n = Product (p_j^k_j) then a(n) = Product ((p_j - 1)*(k_j + 1)).

Offset 1, canonical program `A304408.P687258008927875395`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304408 (n : ℕ) : ℤ :=
  A304408.P687258008927875395.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304408.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305152.P2584362092211639077

`A112329(n+1)-A056924(n+1)`
-/

namespace A305152.P2584362092211639077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (n + 1) - A056924 (n + 1)

end

end A305152.P2584362092211639077

noncomputable section

/-- A305152: Expansion of Sum_{k>0} x^(k^2) / (1 + x^k).

Offset 1, canonical program `A305152.P2584362092211639077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305152 (n : ℕ) : ℤ :=
  A305152.P2584362092211639077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305436.P441139788158163296

`A305435(n+1)+A209229(n)`
-/

namespace A305436.P441139788158163296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305435 (n + 1) + A209229 n

end

end A305436.P441139788158163296

noncomputable section

/-- A305436: Number of divisors of n of the form 2^k + 1 for k >= 0.

Offset 1, canonical program `A305436.P441139788158163296`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, A305435, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A305436 (n : ℕ) : ℤ :=
  A305436.P441139788158163296.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, A305435, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A305436.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306328.P7079305387791710767

`A008472(n+1)^A005361(n+1)`
-/

namespace A306328.P7079305387791710767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008472 (n + 1) : ℚ) ^ (A005361 (n + 1) : ℤ)

end

end A306328.P7079305387791710767

noncomputable section

/-- A306328: If n = Product (p_j^k_j) then a(n) = Sum (p_j)^Product (k_j).

Offset 1, canonical program `A306328.P7079305387791710767`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306328 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A306328.P7079305387791710767.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306328.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306376.P6321835150904260098

`A108958(n)+a(n-1)` with `a(0)=0`
-/

namespace A306376.P6321835150904260098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A108958 n + a (n - 1)

end

end A306376.P6321835150904260098

noncomputable section

/-- A306376: Sum of the 2 X 2 minors in the n X n Pascal matrix.

Offset 0, canonical program `A306376.P6321835150904260098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A306376 (n : ℕ) : ℤ :=
  A306376.P6321835150904260098.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A306376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306821.P10550649984046759747

`A141459(n)*A141044(n)`
-/

namespace A306821.P10550649984046759747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 n * A141044 n

end

end A306821.P10550649984046759747

noncomputable section

/-- A306821: Inverse binomial transform of the "original" Bernoulli numbers [A164555(n)/A027642(n)] with 1 and 1/2 swapped. Denominators.

Offset 0, canonical program `A306821.P10550649984046759747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141044, A141459, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306821 (n : ℕ) : ℤ :=
  A306821.P10550649984046759747.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141044, A141459, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306821.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A316096.P2456358805564774649

`eq[4, A125115(n+1)]+1`
-/

namespace A316096.P2456358805564774649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A316096.P2456358805564774649

noncomputable section

/-- A316096: Numbers m such that A(m+1) = A(m) + 4, where A() = A005101() are the abundant numbers.

Offset 1, canonical program `A316096.P2456358805564774649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3055 terms. -/
def A316096 (n : ℕ) : ℤ :=
  (A316096.P2456358805564774649.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3055 terms. -/
def A316096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316097.P17193600129069061208

`lt[4, A061496(n+1)]+1`
-/

namespace A316097.P17193600129069061208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061496 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A316097.P17193600129069061208

noncomputable section

/-- A316097: Numbers m such that A(m+1) = A(m) + 6, where A() = A005101() are the abundant numbers.

Offset 1, canonical program `A316097.P17193600129069061208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3517 terms. -/
def A316097 (n : ℕ) : ℤ :=
  (A316097.P17193600129069061208.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3517 terms. -/
def A316097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317332.P4749212783667228786

`xor(1, A317331(2*(n+1)))`
-/

namespace A317332.P4749212783667228786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A317331 (2 * (n + 1)))

end

end A317332.P4749212783667228786

noncomputable section

/-- A317332: Indices m for which A058304(m) = 8.

Offset 1, canonical program `A317332.P4749212783667228786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317332 (n : ℕ) : ℤ :=
  A317332.P4749212783667228786.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317837.P16143556663053745700

`∑{d}[n+1, A002487(#)]-A002487(n+1)`
-/

namespace A317837.P16143556663053745700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002487 d - A002487 (n + 1)

end

end A317837.P16143556663053745700

noncomputable section

/-- A317837: a(n) = Sum_{d|n, d

Offset 1, canonical program `A317837.P16143556663053745700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317837 (n : ℕ) : ℤ :=
  A317837.P16143556663053745700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318304.P11675093229014342811

`2*A173557(n+1)-A007947(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318304.P11675093229014342811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173557 (n + 1) - A007947 (n + 1)

end

end A318304.P11675093229014342811

noncomputable section

/-- A318304: a(n) = A083254(n)/A003557(n) = (2*A173557(n) - A007947(n)).

Offset 1, canonical program `A318304.P11675093229014342811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318304 (n : ℕ) : ℤ :=
  A318304.P11675093229014342811.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318304.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318305.P17845263951644339002

`A007947(n+1)-A173557(n+1)`
-/

namespace A318305.P17845263951644339002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) - A173557 (n + 1)

end

end A318305.P17845263951644339002

noncomputable section

/-- A318305: a(n) = Product_{primes p dividing n} p - Product_{primes p dividing n} (p-1).

Offset 1, canonical program `A318305.P17845263951644339002`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318305 (n : ℕ) : ℤ :=
  A318305.P17845263951644339002.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318305.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318306.P1364741733644479395

`∑{e}[n+1, A002487(#)]`
-/

namespace A318306.P1364741733644479395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A002487 (Nat.factorization (f1 n) p)

end

end A318306.P1364741733644479395

noncomputable section

/-- A318306: Additive with a(p^e) = A002487(e).

Offset 1, canonical program `A318306.P1364741733644479395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318306 (n : ℕ) : ℤ :=
  A318306.P1364741733644479395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318474.P8998040803889606684

`A318472(A064549(n+1))`
-/

namespace A318474.P8998040803889606684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318472 (A064549 (n + 1)).toNat

end

end A318474.P8998040803889606684

noncomputable section

/-- A318474: Multiplicative with a(p^e) = 2^A000045(e+1).

Offset 1, canonical program `A318474.P8998040803889606684`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318474 (n : ℕ) : ℤ :=
  A318474.P8998040803889606684.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318474.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318674.P1768733066523102613

`(A048250(n+1)+A023900(n+1))/2`
-/

namespace A318674.P1768733066523102613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) + A023900 (n + 1) : ℚ) / 2

end

end A318674.P1768733066523102613

noncomputable section

/-- A318674: Sum of squarefree divisors of n that have an even number of prime factors.

Offset 1, canonical program `A318674.P1768733066523102613`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023900, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318674 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318674.P1768733066523102613.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023900, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318674.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318841.P6517978691631055757

`n+1-A173557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318841.P6517978691631055757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A173557 (n + 1)

end

end A318841.P6517978691631055757

noncomputable section

/-- A318841: a(n) = n - A173557(n).

Offset 1, canonical program `A318841.P6517978691631055757`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318841 (n : ℕ) : ℤ :=
  A318841.P6517978691631055757.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318841.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319684.P10446271486458079777

`∑{d}[n+1, A000203(#)*A349394((n+1)/#)]`
-/

namespace A319684.P10446271486458079777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A349394 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319684.P10446271486458079777

noncomputable section

/-- A319684: Sum of A003415(d) over the divisors d of n, where A003415 is arithmetic derivative.

Offset 1, canonical program `A319684.P10446271486458079777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319684 (n : ℕ) : ℤ :=
  A319684.P10446271486458079777.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320005.P17788538960493926001

`∑{d}[n+1, A157658(#)*A319995((n+1)/#)]`
-/

namespace A320005.P17788538960493926001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A319995 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A320005.P17788538960493926001

noncomputable section

/-- A320005: Number of proper divisors of n of the form 6*k + 5.

Offset 1, canonical program `A320005.P17788538960493926001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320005 (n : ℕ) : ℤ :=
  A320005.P17788538960493926001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322320.P14717855046840519529

`gcd(A003557(n+1), A173557(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322320.P14717855046840519529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003557 (n + 1)) (A173557 (n + 1))

end

end A322320.P14717855046840519529

noncomputable section

/-- A322320: a(n) = gcd(A003557(n), A173557(n)).

Offset 1, canonical program `A322320.P14717855046840519529`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322320 (n : ℕ) : ℤ :=
  (A322320.P14717855046840519529.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322320.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322321.P221650131181323129

`lcm(A003557(n+1), A173557(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322321.P221650131181323129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003557 (n + 1)) (A173557 (n + 1))

end

end A322321.P221650131181323129

noncomputable section

/-- A322321: a(n) = lcm(A003557(n), A173557(n)).

Offset 1, canonical program `A322321.P221650131181323129`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322321 (n : ℕ) : ℤ :=
  (A322321.P221650131181323129.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322321.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324393.P8276205973310324083

`A000005(n+1)-A324392(n+1)`
-/

namespace A324393.P8276205973310324083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A324392 (n + 1)

end

end A324393.P8276205973310324083

noncomputable section

/-- A324393: a(n) is the number of such divisors d of n that A000120(d) does not divide n, where A000120(d) gives the binary weight of d.

Offset 1, canonical program `A324393.P8276205973310324083`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324392, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324393 (n : ℕ) : ℤ :=
  A324393.P8276205973310324083.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324392, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324393.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324967.P4569383054327288296

`A001221(n+1)-A324966(n+1)`
-/

namespace A324967.P4569383054327288296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A324966 (n + 1)

end

end A324967.P4569383054327288296

noncomputable section

/-- A324967: Number of distinct even prime indices of n.

Offset 1, canonical program `A324967.P4569383054327288296`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A324966, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324967 (n : ℕ) : ℤ :=
  A324967.P4569383054327288296.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A324966, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324967.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325334.P3560407124782299478

`A007862(abs(1-n)+1)-1`
-/

namespace A325334.P3560407124782299478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (|1 - (n : ℤ)| + 1).toNat - 1

end

end A325334.P3560407124782299478

noncomputable section

/-- A325334: Number of integer partitions of n with adjusted frequency depth 3 whose parts cover an initial interval of positive integers.

Offset 0, canonical program `A325334.P3560407124782299478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325334 (n : ℕ) : ℤ :=
  A325334.P3560407124782299478.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326124.P12593225634204590298

`A024916(2*(n+1))-A326123(n+1)`
-/

namespace A326124.P12593225634204590298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (2 * (n + 1)) - A326123 (n + 1)

end

end A326124.P12593225634204590298

noncomputable section

/-- A326124: a(n) is the sum of all divisors of the first n positive even numbers.

Offset 1, canonical program `A326124.P12593225634204590298`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326123, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326124 (n : ℕ) : ℤ :=
  A326124.P12593225634204590298.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326123, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326124.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329375.P559970247339746563

`A329354(n+1)-A328260(n+1)`
-/

namespace A329375.P559970247339746563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329354 (n + 1) - A328260 (n + 1)

end

end A329375.P559970247339746563

noncomputable section

/-- A329375: a(n) = Sum_{d|n, d

Offset 1, canonical program `A329375.P559970247339746563`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328260, A329354, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A329375 (n : ℕ) : ℤ :=
  A329375.P559970247339746563.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328260, A329354, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A329375.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337634.P13422522115950852119

`∑[(A143299(n+2)*A143299(n+1))%2]`
-/

namespace A337634.P13422522115950852119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143299 (n + 2) * A143299 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337634.P13422522115950852119

noncomputable section

/-- A337634: Number of numbers k <= n such that both k and k+1 are in A095096.

Offset 0, canonical program `A337634.P13422522115950852119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337634 (n : ℕ) : ℤ :=
  A337634.P13422522115950852119.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338630.P18368234724363970962

`(n+3)%ceil((A046978(A046644(n+1))+n)/2)`
-/

namespace A338630.P18368234724363970962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) ⌈(A046978 (A046644 (n + 1)).toNat + (n : ℤ) : ℚ) / 2⌉

end

end A338630.P18368234724363970962

noncomputable section

/-- A338630: Least number of odd primes that add up to n, or 0 if no such representation is possible.

Offset 1, canonical program `A338630.P18368234724363970962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A338630 (n : ℕ) : ℤ :=
  A338630.P18368234724363970962.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A338630.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A340850.P57978566503964907

`A000203((n+1)²/A007947(n+1))*A173557(n+1)²/A048250(n+1)`
-/

namespace A340850.P57978566503964907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A007947 (n + 1) : ℚ))).toNat * A173557 (n + 1) ^ 2 : ℚ) / (A048250 (n + 1) : ℚ)

end

end A340850.P57978566503964907

noncomputable section

/-- A340850: Dirichlet g.f.: Sum_{n>0} a(n)/n^s = zeta(s) * zeta(s-2) / (zeta(s-1))^2.

Offset 1, canonical program `A340850.P57978566503964907`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340850 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340850.P57978566503964907.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340850.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343500.P14062882048981038168

`2*A338692(n+1)`
-/

namespace A343500.P14062882048981038168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338692 (n + 1)

end

end A343500.P14062882048981038168

noncomputable section

/-- A343500: Positions of 2's in A003324.

Offset 1, canonical program `A343500.P14062882048981038168`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343500 (n : ℕ) : ℤ :=
  A343500.P14062882048981038168.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343500.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344908.P7773285099346039389

`∑{p}[n+1, #*A324966(#)]`
-/

namespace A344908.P7773285099346039389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * A324966 p

end

end A344908.P7773285099346039389

noncomputable section

/-- A344908: Sum of the distinct odd-indexed prime divisors, p_{2k-1}, of n.

Offset 1, canonical program `A344908.P7773285099346039389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344908 (n : ℕ) : ℤ :=
  A344908.P7773285099346039389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345052.P3135942060331182586

`A003557(n+1)*A048250(n+1)*A173557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345052.P3135942060331182586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A048250 (n + 1) * A173557 (n + 1)

end

end A345052.P3135942060331182586

noncomputable section

/-- A345052: a(n) = A003557(n) * A048250(n) * A173557(n).

Offset 1, canonical program `A345052.P3135942060331182586`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345052 (n : ℕ) : ℤ :=
  A345052.P3135942060331182586.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349658.P4827521432200241691

`A000005(n+1)-A336041(n+1)`
-/

namespace A349658.P4827521432200241691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A336041 (n + 1)

end

end A349658.P4827521432200241691

noncomputable section

/-- A349658: Number of nonrefactorable divisors of n.

Offset 1, canonical program `A349658.P4827521432200241691`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336041, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349658 (n : ℕ) : ℤ :=
  A349658.P4827521432200241691.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336041, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349658.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351520.P14176785441679004629

`A000005(n+1)+A013928(n+2)-A034444(n+1)`
-/

namespace A351520.P14176785441679004629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A013928 (n + 2) - A034444 (n + 1)

end

end A351520.P14176785441679004629

noncomputable section

/-- A351520: Number of numbers <= n that are either squarefree, a divisor of n, or both.

Offset 1, canonical program `A351520.P14176785441679004629`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351520 (n : ℕ) : ℤ :=
  A351520.P14176785441679004629.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351520.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351711.P10274480873794141417

`A248577(n+1)+∑{d}[n+1, A055631(#)]`
-/

namespace A351711.P10274480873794141417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248577 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A055631 d

end

end A351711.P10274480873794141417

noncomputable section

/-- A351711: a(n) = Sum_{p|n, p prime} Sum_{d|n} gcd(d,p).

Offset 1, canonical program `A351711.P10274480873794141417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351711 (n : ℕ) : ℤ :=
  A351711.P10274480873794141417.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354035.P17145571393381424907

`A010684(n)%A081325(n+1)`
-/

namespace A354035.P17145571393381424907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010684 n) (A081325 (n + 1))

end

end A354035.P17145571393381424907

noncomputable section

/-- A354035: a(n) = 1 if n is odd and sigma(n^2) == 3 (mod 4), otherwise 0.

Offset 1, canonical program `A354035.P17145571393381424907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354035 (n : ℕ) : ℤ :=
  A354035.P17145571393381424907.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356122.P4438334120915066052

`A304092(A000032(n))`
-/

namespace A356122.P4438334120915066052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304092 (A000032 n).toNat

end

end A356122.P4438334120915066052

noncomputable section

/-- A356122: Number of Lucas divisors of the n-th Lucas number.

Offset 0, canonical program `A356122.P4438334120915066052`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304092, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356122 (n : ℕ) : ℤ :=
  A356122.P4438334120915066052.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304092, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356122.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356474.P15654349161111097724

`A173557(A000040(n+1)-1)`
-/

namespace A356474.P15654349161111097724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A000040 (n + 1) - 1).toNat

end

end A356474.P15654349161111097724

noncomputable section

/-- A356474: a(n) = phi(rad(prime(n)-1)), where phi = A000010 and rad = A007947.

Offset 1, canonical program `A356474.P15654349161111097724`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356474 (n : ℕ) : ℤ :=
  A356474.P15654349161111097724.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356474.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 0, canonical program `A358854.P10782469796032889684`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279766, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358854 (n : ℕ) : ℤ :=
  A358854.P10782469796032889684.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279766, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358854.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359324.P6562747664872002453

`A319995(6*(n+1)-2)`
-/

namespace A359324.P6562747664872002453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319995 (6 * (n + 1) - 2)

end

end A359324.P6562747664872002453

noncomputable section

/-- A359324: Number of divisors of 6*n-2 of form 6*k+5.

Offset 1, canonical program `A359324.P6562747664872002453`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359324 (n : ℕ) : ℤ :=
  A359324.P6562747664872002453.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359324.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359325.P14100235319154863886

`A319995(6*(n+1)-3)`
-/

namespace A359325.P14100235319154863886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319995 (6 * (n + 1) - 3)

end

end A359325.P14100235319154863886

noncomputable section

/-- A359325: Number of divisors of 6*n-3 of form 6*k+5.

Offset 1, canonical program `A359325.P14100235319154863886`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359325 (n : ℕ) : ℤ :=
  A359325.P14100235319154863886.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359325.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359326.P15324181314708313720

`A319995(6*(n+1)-4)`
-/

namespace A359326.P15324181314708313720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319995 (6 * (n + 1) - 4)

end

end A359326.P15324181314708313720

noncomputable section

/-- A359326: Number of divisors of 6*n-4 of form 6*k+5.

Offset 1, canonical program `A359326.P15324181314708313720`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359326 (n : ℕ) : ℤ :=
  A359326.P15324181314708313720.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359326.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359327.P16853457965875715644

`A319995(6*n+1)`
-/

namespace A359327.P16853457965875715644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319995 (6 * n + 1)

end

end A359327.P16853457965875715644

noncomputable section

/-- A359327: Number of divisors of 6*n-5 of form 6*k+5.

Offset 1, canonical program `A359327.P16853457965875715644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359327 (n : ℕ) : ℤ :=
  A359327.P16853457965875715644.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359327.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A362225.P17099261379294199932

`(2*A175255(n+2)+1)/3`
-/

namespace A362225.P17099261379294199932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A175255 (n + 2) + 1 : ℚ) / 3

end

end A362225.P17099261379294199932

noncomputable section

/-- A362225: Primes of the form (2*p^2 + 1)/3 where p is a prime > 3.

Offset 1, canonical program `A362225.P17099261379294199932`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175255, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362225 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A362225.P17099261379294199932.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175255, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362225.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A363291.P5280356287079717182

`A050449(4*(n+1)-1)`
-/

namespace A363291.P5280356287079717182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (4 * (n + 1) - 1)

end

end A363291.P5280356287079717182

noncomputable section

/-- A363291: Sum of divisors of 4*n-1 of form 4*k+1.

Offset 1, canonical program `A363291.P5280356287079717182`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363291 (n : ℕ) : ℤ :=
  A363291.P5280356287079717182.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363291.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363316.P139402600971360063

`A050449(4*(n+1)-2)`
-/

namespace A363316.P139402600971360063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (4 * (n + 1) - 2)

end

end A363316.P139402600971360063

noncomputable section

/-- A363316: Sum of divisors of 4*n-2 of form 4*k+1.

Offset 1, canonical program `A363316.P139402600971360063`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363316 (n : ℕ) : ℤ :=
  A363316.P139402600971360063.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363316.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363317.P7308368219269641597

`A050449(4*n+1)`
-/

namespace A363317.P7308368219269641597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (4 * n + 1)

end

end A363317.P7308368219269641597

noncomputable section

/-- A363317: Sum of divisors of 4*n-3 of form 4*k+1.

Offset 1, canonical program `A363317.P7308368219269641597`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363317 (n : ℕ) : ℤ :=
  A363317.P7308368219269641597.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363317.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363902.P1501377666903482060

`(A001822(n+1)+A078182(n+1))/3`
-/

namespace A363902.P1501377666903482060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001822 (n + 1) + A078182 (n + 1) : ℚ) / 3

end

end A363902.P1501377666903482060

noncomputable section

/-- A363902: Expansion of Sum_{k>0} x^(2*k) / (1 - x^(3*k))^2.

Offset 1, canonical program `A363902.P1501377666903482060`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001822, A078182, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363902 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363902.P1501377666903482060.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001822, A078182, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363902.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363903.P2367214496446781928

`(3*A001826(n+1)+A050449(n+1))/4`
-/

namespace A363903.P2367214496446781928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A001826 (n + 1) + A050449 (n + 1) : ℚ) / 4

end

end A363903.P2367214496446781928

noncomputable section

/-- A363903: Expansion of Sum_{k>0} x^k / (1 - x^(4*k))^2.

Offset 1, canonical program `A363903.P2367214496446781928`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001826, A050449, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363903 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363903.P2367214496446781928.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001826, A050449, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363903.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364044.P10488358763832644211

`A083912(n+1)-A083917(n+1)`
-/

namespace A364044.P10488358763832644211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (n + 1) - A083917 (n + 1)

end

end A364044.P10488358763832644211

noncomputable section

/-- A364044: Expansion of Sum_{k>0} x^(2*k) / (1 + x^(5*k)).

Offset 1, canonical program `A364044.P10488358763832644211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364044 (n : ℕ) : ℤ :=
  A364044.P10488358763832644211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364046.P38530903623635105

`A083914(n+1)-A083919(n+1)`
-/

namespace A364046.P38530903623635105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (n + 1) - A083919 (n + 1)

end

end A364046.P38530903623635105

noncomputable section

/-- A364046: Expansion of Sum_{k>0} x^(4*k) / (1 + x^(5*k)).

Offset 1, canonical program `A364046.P38530903623635105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364046 (n : ℕ) : ℤ :=
  A364046.P38530903623635105.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364064.P14026189382415134399

`A363901(3*n+1)`
-/

namespace A364064.P14026189382415134399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363901 (3 * n + 1)

end

end A364064.P14026189382415134399

noncomputable section

/-- A364064: Expansion of Sum_{k>0} k * x^k / (1 - x^(3*k-2)).

Offset 1, canonical program `A364064.P14026189382415134399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A364064 (n : ℕ) : ℤ :=
  A364064.P14026189382415134399.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A364064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364065.P7626182441879628720

`A363901(3*n+2)`
-/

namespace A364065.P7626182441879628720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363901 (3 * n + 2)

end

end A364065.P7626182441879628720

noncomputable section

/-- A364065: Expansion of Sum_{k>0} k * x^(2*k-1) / (1 - x^(3*k-2)).

Offset 1, canonical program `A364065.P7626182441879628720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A364065 (n : ℕ) : ℤ :=
  A364065.P7626182441879628720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A364065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365968.P14045950726560360185

`A124757(n+1)-A359400(n+1)`
-/

namespace A365968.P14045950726560360185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 (n + 1) - A359400 (n + 1)

end

end A365968.P14045950726560360185

noncomputable section

/-- A365968: Irregular triangle read by rows: T(n,k) (0 <= n, 0 <= k < 2^n). An infinite binary tree with root node 0 in row n = 0. Each node then has left child (2*j) - k - 1 and right child (2*j) - k + 1, where j and k are the values of the parent and grandparent nodes respectively.

Offset 0, canonical program `A365968.P14045950726560360185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A365968 (n : ℕ) : ℤ :=
  A365968.P14045950726560360185.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A365968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368613.P1521130662845117134

`A368611(n+1)-A013939(n+1)`
-/

namespace A368613.P1521130662845117134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368611 (n + 1) - A013939 (n + 1)

end

end A368613.P1521130662845117134

noncomputable section

/-- A368613: a(n) = Sum_{k=2..n} pi(k-1) * floor(n/k).

Offset 1, canonical program `A368613.P1521130662845117134`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013939, A368611, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368613 (n : ℕ) : ℤ :=
  A368613.P1521130662845117134.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013939, A368611, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368613.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368647.P6890929061440035933

`A005090(n+1)-A005088(n+1)`
-/

namespace A368647.P6890929061440035933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (n + 1) - A005088 (n + 1)

end

end A368647.P6890929061440035933

noncomputable section

/-- A368647: The number of distinct primes of the form 3*k+2 dividing n minus the number of distinct primes of the form 3*k+1 dividing n.

Offset 1, canonical program `A368647.P6890929061440035933`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005088, A005090, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368647 (n : ℕ) : ℤ :=
  A368647.P6890929061440035933.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005088, A005090, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368647.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369188.P13376849897377668468

`A007862(∏{p}[n+1, #])`
-/

namespace A369188.P13376849897377668468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A369188.P13376849897377668468

noncomputable section

/-- A369188: Number of squarefree triangular divisors of n.

Offset 1, canonical program `A369188.P13376849897377668468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369188 (n : ℕ) : ℤ :=
  A369188.P13376849897377668468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372886.P4173512411131491016

`eq[1, A010051(A372429(n+1))]+1`
-/

namespace A372886.P4173512411131491016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A372429 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A372886.P4173512411131491016

noncomputable section

/-- A372886: Indices of prime numbers whose binary indices (positions of ones in reversed binary expansion) sum to another prime number.

Offset 1, canonical program `A372886.P4173512411131491016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2409 terms. -/
def A372886 (n : ℕ) : ℤ :=
  (A372886.P4173512411131491016.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2409 terms. -/
def A372886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374092.P5550982574403605617

`A088534(n)-A195198(n)`
-/

namespace A374092.P5550982574403605617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 n - A195198 n

end

end A374092.P5550982574403605617

noncomputable section

/-- A374092: Number of solutions to n = x^2 + x*y + y^2 with 0 < x < y.

Offset 0, canonical program `A374092.P5550982574403605617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A374092 (n : ℕ) : ℤ :=
  A374092.P5550982574403605617.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A374092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374099.P14562873253265136696

`A088534(n²)-1`
-/

namespace A374099.P14562873253265136696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 (n ^ 2) - 1

end

end A374099.P14562873253265136696

noncomputable section

/-- A374099: Number of solutions to n^2 = x^2 + x*y + y^2 with 0 < x < y.

Offset 0, canonical program `A374099.P14562873253265136696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A374099 (n : ℕ) : ℤ :=
  A374099.P14562873253265136696.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A374099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377430.P4255043940740327153

`eq[2, Δ[A112930(n+1)]]+1`
-/

namespace A377430.P4255043940740327153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377430.P4255043940740327153

noncomputable section

/-- A377430: Numbers k such that there is exactly one squarefree number between prime(k)+1 and prime(k+1)-1.

Offset 1, canonical program `A377430.P4255043940740327153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1038 terms. -/
def A377430 (n : ℕ) : ℤ :=
  (A377430.P4255043940740327153.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1038 terms. -/
def A377430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378548.P15962703755857081892

`∑{d}[n+1, #*A353557((n+1)/#)]`
-/

namespace A378548.P15962703755857081892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A353557 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378548.P15962703755857081892

noncomputable section

/-- A378548: Sum of divisors d of n such that n/d is odd with an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A378548.P15962703755857081892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378548 (n : ℕ) : ℤ :=
  A378548.P15962703755857081892.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378620.P6069083703779704707

`∩[A068360(n+1), A270192(n+1)]`
-/

namespace A378620.P6069083703779704707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378620.P6069083703779704707

noncomputable section

/-- A378620: Lesser prime index of twin primes with nonsquarefree mean.

Offset 1, canonical program `A378620.P6069083703779704707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A378620 (n : ℕ) : ℤ :=
  (A378620.P6069083703779704707.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A378620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381664.P17133759747871015799

`A210521(A209293(n+1))`
-/

namespace A381664.P17133759747871015799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210521 (A209293 (n + 1)).toNat

end

end A381664.P17133759747871015799

noncomputable section

/-- A381664: a(n) = A380200(A379342(n)).

Offset 1, canonical program `A381664.P17133759747871015799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A381664 (n : ℕ) : ℤ :=
  A381664.P17133759747871015799.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A381664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305379.P14029191028484056430

`A278038(A000040(n+1))`
-/

namespace A305379.P14029191028484056430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278038 (A000040 (n + 1)).toNat

end

end A305379.P14029191028484056430

noncomputable section

/-- A305379: Tribonacci representation of primes, written in base 2.

Offset 1, canonical program `A305379.P14029191028484056430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2788 terms. -/
def A305379 (n : ℕ) : ℤ :=
  A305379.P14029191028484056430.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2788 terms. -/
def A305379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305989.P15521024914226202803

`A007088(A030101(n))`
-/

namespace A305989.P15521024914226202803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A030101 n).toNat

end

end A305989.P15521024914226202803

noncomputable section

/-- A305989: Numbers in binary reversed.

Offset 0, canonical program `A305989.P15521024914226202803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305989 (n : ℕ) : ℤ :=
  A305989.P15521024914226202803.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308375.P5312636960333740944

`A007953(A002808(n+1))`
-/

namespace A308375.P5312636960333740944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A002808 (n + 1)).toNat

end

end A308375.P5312636960333740944

noncomputable section

/-- A308375: Digital sum of composite numbers.

Offset 1, canonical program `A308375.P5312636960333740944`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A007953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A308375 (n : ℕ) : ℤ :=
  A308375.P5312636960333740944.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A007953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A308375.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318314.P6359373759309910718

`A006519(n+1)*A317934(n+1)`
-/

namespace A318314.P6359373759309910718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A317934 (n + 1)

end

end A318314.P6359373759309910718

noncomputable section

/-- A318314: Denominators of the sequence whose Dirichlet convolution with itself yields A068068, number of odd unitary divisors of n.

Offset 1, canonical program `A318314.P6359373759309910718`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317934, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318314 (n : ℕ) : ℤ :=
  A318314.P6359373759309910718.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317934, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318314.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318658.P11069036608746997709

`2^A318659(n+1)`
-/

namespace A318658.P11069036608746997709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A318659 (n + 1) : ℤ)

end

end A318658.P11069036608746997709

noncomputable section

/-- A318658: Denominators of the sequence whose Dirichlet convolution with itself yields A087003, a(2n) = 0 and a(2n+1) = moebius(2n+1).

Offset 1, canonical program `A318658.P11069036608746997709`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318659, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318658 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318658.P11069036608746997709.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318659, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318658.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319529.P1117598042908344676

`2*lt[A348327(2*n+1), 1]+1`
-/

namespace A319529.P1117598042908344676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348327 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A319529.P1117598042908344676

noncomputable section

/-- A319529: Odd numbers that have middle divisors.

Offset 1, canonical program `A319529.P1117598042908344676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5445 terms. -/
def A319529 (n : ℕ) : ℤ :=
  (A319529.P1117598042908344676.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5445 terms. -/
def A319529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319801.P2334632365175691862

`comp[or(n, A348327(n+1))]+1`
-/

namespace A319801.P2334632365175691862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A348327 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A319801.P2334632365175691862

noncomputable section

/-- A319801: Odd numbers without middle divisors.

Offset 1, canonical program `A319801.P2334632365175691862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319801 (n : ℕ) : ℤ :=
  (A319801.P2334632365175691862.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319802.P14391175377016966646

`2*A348471(n+1)`
-/

namespace A319802.P14391175377016966646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A348471 (n + 1)

end

end A319802.P14391175377016966646

noncomputable section

/-- A319802: Even numbers without middle divisors.

Offset 1, canonical program `A319802.P14391175377016966646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319802 (n : ℕ) : ℤ :=
  A319802.P14391175377016966646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332383.P7920587963328072283

`A268383(2*n)-A268383(4*n)+n`
-/

namespace A332383.P7920587963328072283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268383 (2 * n) - A268383 (4 * n) + (n : ℤ)

end

end A332383.P7920587963328072283

noncomputable section

/-- A332383: a(n) is the X-coordinate of the n-th point of the dragon curve. Sequence A332384 gives Y-coordinates.

Offset 0, canonical program `A332383.P7920587963328072283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A332383 (n : ℕ) : ℤ :=
  A332383.P7920587963328072283.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A332383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332384.P15273066766290011889

`n-(A268411(n)+A268383(2*n))`
-/

namespace A332384.P15273066766290011889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A268411 n + A268383 (2 * n))

end

end A332384.P15273066766290011889

noncomputable section

/-- A332384: a(n) is the Y-coordinate of the n-th point of the dragon curve. Sequence A332383 gives X-coordinates.

Offset 0, canonical program `A332384.P15273066766290011889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A332384 (n : ℕ) : ℤ :=
  A332384.P15273066766290011889.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A332384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340154.P18257994120769492185

`∩[A040117(n+1), A049097(n+1)]`
-/

namespace A340154.P18257994120769492185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340154.P18257994120769492185

noncomputable section

/-- A340154: Primes p such that p == 5 (mod 6) and p+1 is squarefree.

Offset 1, canonical program `A340154.P18257994120769492185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4012 terms. -/
def A340154 (n : ℕ) : ℤ :=
  (A340154.P18257994120769492185.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4012 terms. -/
def A340154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341169.P9820711191636819910

`eq[2, A070635(n+1)]+1`
-/

namespace A341169.P9820711191636819910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341169.P9820711191636819910

noncomputable section

/-- A341169: Numbers that divided by the sum of their digits leave 2 as remainder.

Offset 1, canonical program `A341169.P9820711191636819910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. -/
def A341169 (n : ℕ) : ℤ :=
  (A341169.P9820711191636819910.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. -/
def A341169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341170.P14350183940788908955

`eq[3, A070635(n+1)]+1`
-/

namespace A341170.P14350183940788908955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341170.P14350183940788908955

noncomputable section

/-- A341170: Numbers that when divided by the sum of their digits leave 3 as remainder.

Offset 1, canonical program `A341170.P14350183940788908955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 801 terms. -/
def A341170 (n : ℕ) : ℤ :=
  (A341170.P14350183940788908955.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 801 terms. -/
def A341170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341171.P9321090049766622072

`eq[4, A070635(n+1)]+1`
-/

namespace A341171.P9321090049766622072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341171.P9321090049766622072

noncomputable section

/-- A341171: Numbers that when divided by the sum of their digits leave 4 as remainder.

Offset 1, canonical program `A341171.P9321090049766622072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 426 terms. -/
def A341171 (n : ℕ) : ℤ :=
  (A341171.P9321090049766622072.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 426 terms. -/
def A341171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341172.P14823139474695467631

`eq[5, A070635(n+1)]+1`
-/

namespace A341172.P14823139474695467631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341172.P14823139474695467631

noncomputable section

/-- A341172: Numbers that when divided by the sum of their digits leave 5 as remainder.

Offset 1, canonical program `A341172.P14823139474695467631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A341172 (n : ℕ) : ℤ :=
  (A341172.P14823139474695467631.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A341172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341173.P9765761011939025355

`eq[6, A070635(n+1)]+1`
-/

namespace A341173.P9765761011939025355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341173.P9765761011939025355

noncomputable section

/-- A341173: Numbers that when divided by the sum of their digits leave 6 as remainder.

Offset 1, canonical program `A341173.P9765761011939025355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 767 terms. -/
def A341173 (n : ℕ) : ℤ :=
  (A341173.P9765761011939025355.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 767 terms. -/
def A341173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341174.P17689288530692813440

`eq[7, A070635(n+1)]+1`
-/

namespace A341174.P17689288530692813440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341174.P17689288530692813440

noncomputable section

/-- A341174: Numbers that when divided by the sum of their digits leave 7 as remainder.

Offset 1, canonical program `A341174.P17689288530692813440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 369 terms. -/
def A341174 (n : ℕ) : ℤ :=
  (A341174.P17689288530692813440.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 369 terms. -/
def A341174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341175.P10433863649474303649

`eq[8, A070635(n+1)]+1`
-/

namespace A341175.P10433863649474303649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341175.P10433863649474303649

noncomputable section

/-- A341175: Numbers that when divided by the sum of their digits leave 8 as remainder.

Offset 1, canonical program `A341175.P10433863649474303649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A341175 (n : ℕ) : ℤ :=
  (A341175.P10433863649474303649.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A341175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341176.P15006660648989176220

`eq[9, A070635(n+1)]+1`
-/

namespace A341176.P15006660648989176220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341176.P15006660648989176220

noncomputable section

/-- A341176: Numbers that when divided by the sum of their digits leave 9 as remainder.

Offset 1, canonical program `A341176.P15006660648989176220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1116 terms. -/
def A341176 (n : ℕ) : ℤ :=
  (A341176.P15006660648989176220.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1116 terms. -/
def A341176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341177.P18272480648267130091

`eq[10, A070635(n+1)]+1`
-/

namespace A341177.P18272480648267130091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341177.P18272480648267130091

noncomputable section

/-- A341177: Numbers that when divided by the sum of their digits leave 10 as remainder.

Offset 1, canonical program `A341177.P18272480648267130091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A341177 (n : ℕ) : ℤ :=
  (A341177.P18272480648267130091.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A341177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341178.P17104699675163153674

`eq[11, A070635(A028310(n))]`
-/

namespace A341178.P17104699675163153674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341178.P17104699675163153674

noncomputable section

/-- A341178: Numbers that when divided by the sum of their digits leave 11 as remainder.

Offset 1, canonical program `A341178.P17104699675163153674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 298 terms. -/
def A341178 (n : ℕ) : ℤ :=
  (A341178.P17104699675163153674.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 298 terms. -/
def A341178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341179.P12941946526386532136

`eq[12, A070635(A028310(n))]`
-/

namespace A341179.P12941946526386532136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341179.P12941946526386532136

noncomputable section

/-- A341179: Numbers that when divided by the sum of their digits leave 12 as remainder.

Offset 1, canonical program `A341179.P12941946526386532136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 553 terms. -/
def A341179 (n : ℕ) : ℤ :=
  (A341179.P12941946526386532136.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 553 terms. -/
def A341179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341180.P9443771648264716755

`eq[13, A070635(A028310(n))]`
-/

namespace A341180.P9443771648264716755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341180.P9443771648264716755

noncomputable section

/-- A341180: Numbers that when divided by the sum of their digits leave 13 as remainder.

Offset 1, canonical program `A341180.P9443771648264716755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 293 terms. -/
def A341180 (n : ℕ) : ℤ :=
  (A341180.P9443771648264716755.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 293 terms. -/
def A341180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341181.P18393765208184896138

`eq[14, A070635(A028310(n))]`
-/

namespace A341181.P18393765208184896138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341181.P18393765208184896138

noncomputable section

/-- A341181: Numbers that when divided by the sum of their digits leave 14 as remainder.

Offset 1, canonical program `A341181.P18393765208184896138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A341181 (n : ℕ) : ℤ :=
  (A341181.P18393765208184896138.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A341181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341182.P4357023591188978830

`eq[15, A070635(A028310(n))]`
-/

namespace A341182.P4357023591188978830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341182.P4357023591188978830

noncomputable section

/-- A341182: Numbers that when divided by the sum of their digits leave 15 as remainder.

Offset 1, canonical program `A341182.P4357023591188978830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A341182 (n : ℕ) : ℤ :=
  (A341182.P4357023591188978830.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A341182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341186.P12014664352116713879

`eq[16, A070635(A028310(n))]`
-/

namespace A341186.P12014664352116713879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341186.P12014664352116713879

noncomputable section

/-- A341186: Numbers that when divided by the sum of their digits leave 16 as remainder.

Offset 1, canonical program `A341186.P12014664352116713879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. -/
def A341186 (n : ℕ) : ℤ :=
  (A341186.P12014664352116713879.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. -/
def A341186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341187.P15450679487401580348

`eq[17, A070635(A028310(n))]`
-/

namespace A341187.P15450679487401580348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341187.P15450679487401580348

noncomputable section

/-- A341187: Numbers that when divided by the sum of their digits leave 17 as remainder.

Offset 1, canonical program `A341187.P15450679487401580348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A341187 (n : ℕ) : ℤ :=
  (A341187.P15450679487401580348.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A341187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341188.P7724309008278540306

`eq[18, A070635(A028310(n))]`
-/

namespace A341188.P7724309008278540306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341188.P7724309008278540306

noncomputable section

/-- A341188: Numbers that when divided by the sum of their digits leave 18 as remainder.

Offset 1, canonical program `A341188.P7724309008278540306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 389 terms. -/
def A341188 (n : ℕ) : ℤ :=
  (A341188.P7724309008278540306.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 389 terms. -/
def A341188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341189.P6171068448427093631

`eq[19, A070635(A028310(n))]`
-/

namespace A341189.P6171068448427093631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341189.P6171068448427093631

noncomputable section

/-- A341189: Numbers that when divided by the sum of their digits leave 19 as remainder.

Offset 1, canonical program `A341189.P6171068448427093631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A341189 (n : ℕ) : ℤ :=
  (A341189.P6171068448427093631.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A341189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341508.P16631859333944592742

`and(A032741(A055999(n)), A080224(n+1))`
-/

namespace A341508.P16631859333944592742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032741 (A055999 n).toNat) (A080224 (n + 1))

end

end A341508.P16631859333944592742

noncomputable section

/-- A341508: a(n) = 0 if n is nonabundant, otherwise a(n) is the number of abundant divisors of the last abundant number in the iteration x -> A003961(x) (starting from x=n) before a nonabundant number is reached.

Offset 1, canonical program `A341508.P16631859333944592742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A341508 (n : ℕ) : ℤ :=
  A341508.P16631859333944592742.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A341508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341620.P4191397084300056986

`A080224(n+1)+A080225(n+1)`
-/

namespace A341620.P4191397084300056986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (n + 1) + A080225 (n + 1)

end

end A341620.P4191397084300056986

noncomputable section

/-- A341620: Number of nondeficient divisors of n.

Offset 1, canonical program `A341620.P4191397084300056986`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A080225, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341620 (n : ℕ) : ℤ :=
  A341620.P4191397084300056986.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A080225, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341620.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345219.P8018862151870191580

`A000005(n+1)-A345220(n+1)`
-/

namespace A345219.P8018862151870191580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A345220 (n + 1)

end

end A345219.P8018862151870191580

noncomputable section

/-- A345219: Number of divisors d of n with an odd number of primes not exceeding d.

Offset 1, canonical program `A345219.P8018862151870191580`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A345220, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345219 (n : ℕ) : ℤ :=
  A345219.P8018862151870191580.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A345220, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345219.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346867.P16453727210105736092

`A000203(A071562(n+1))`
-/

namespace A346867.P16453727210105736092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A071562 (n + 1)).toNat

end

end A346867.P16453727210105736092

noncomputable section

/-- A346867: Sum of divisors of the numbers that have middle divisors.

Offset 1, canonical program `A346867.P16453727210105736092`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071562, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346867 (n : ℕ) : ℤ :=
  A346867.P16453727210105736092.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071562, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346867.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347149.P4485454136861303499

`A008966(n+1)*A048691(n+1)`
-/

namespace A347149.P4485454136861303499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A048691 (n + 1)

end

end A347149.P4485454136861303499

noncomputable section

/-- A347149: Dirichlet g.f.: Product_{primes p} (1 + 3/p^s).

Offset 1, canonical program `A347149.P4485454136861303499`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347149 (n : ℕ) : ℤ :=
  A347149.P4485454136861303499.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347149.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348192.P7098657248156570778

`1+a(n-A066750(n))` with `a(0)=0, a(1)=1`
-/

namespace A348192.P7098657248156570778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a ((n : ℤ) - A066750 n).toNat

end

end A348192.P7098657248156570778

noncomputable section

/-- A348192: a(0) = 0; for n >= 1, a(n) = 1 + a(n - GCD(n, digital sum(n))).

Offset 0, canonical program `A348192.P7098657248156570778`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066750, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348192 (n : ℕ) : ℤ :=
  (A348192.P7098657248156570778.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066750, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348192.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350093.P14782896136260405665

`((3*n+2)*n+A001196(n))/4`
-/

namespace A350093.P14782896136260405665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 * n + 2) * n : ℤ) + A001196 n : ℚ) / 4

end

end A350093.P14782896136260405665

noncomputable section

/-- A350093: a(n) = Sum_{k=0..n} n OR k where OR is the bitwise logical OR operator (A003986).

Offset 0, canonical program `A350093.P14782896136260405665`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001196, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350093 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A350093.P14782896136260405665.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001196, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350093.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350094.P14552447069989124011

`(A001196(n)-n*(n+2))/4`
-/

namespace A350094.P14552447069989124011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001196 n - (n * (n + 2) : ℤ) : ℚ) / 4

end

end A350094.P14552447069989124011

noncomputable section

/-- A350094: a(n) = Sum_{k=0..n} n CNIMPL k where CNIMPL = NOT(n) AND k is the bitwise logical converse non-implication operator (A102037).

Offset 0, canonical program `A350094.P14552447069989124011`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001196, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350094 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A350094.P14552447069989124011.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001196, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350094.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351521.P4143436504143602524

`A008966(n+1)*A035116(n+1)`
-/

namespace A351521.P4143436504143602524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A035116 (n + 1)

end

end A351521.P4143436504143602524

noncomputable section

/-- A351521: Dirichlet g.f.: Product_{p prime} (1 + 4*p^(-s)).

Offset 1, canonical program `A351521.P4143436504143602524`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351521 (n : ℕ) : ℤ :=
  A351521.P4143436504143602524.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351521.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353134.P833942943619179990

`A000720(A057147(n+1))`
-/

namespace A353134.P833942943619179990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A057147 (n + 1)).toNat

end

end A353134.P833942943619179990

noncomputable section

/-- A353134: a(n) = PrimePi(n*SumOfDigits(n)).

Offset 1, canonical program `A353134.P833942943619179990`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057147, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353134 (n : ℕ) : ℤ :=
  A353134.P833942943619179990.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057147, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353134.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353786.P13595873615884970514

`A154402(n+1)-A147645(n+1)`
-/

namespace A353786.P13595873615884970514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154402 (n + 1) - A147645 (n + 1)

end

end A353786.P13595873615884970514

noncomputable section

/-- A353786: Number of distinct nonprime numbers of the form 2^k - 1 that divide n.

Offset 1, canonical program `A353786.P13595873615884970514`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A147645, A154402, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353786 (n : ℕ) : ℤ :=
  A353786.P13595873615884970514.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A147645, A154402, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353786.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354819.P1113722115681755102

`A008966(n+1)*(1-A010051(n+1))`
-/

namespace A354819.P1113722115681755102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * (1 - A010051 (n + 1))

end

end A354819.P1113722115681755102

noncomputable section

/-- A354819: a(n) = 1 if n is a nonprime squarefree number, otherwise 0.

Offset 1, canonical program `A354819.P1113722115681755102`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354819 (n : ℕ) : ℤ :=
  A354819.P1113722115681755102.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A354819.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357111.P15741096504218641398

`(n+1)/A076775(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A357111.P15741096504218641398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A076775 (n + 1) : ℚ)

end

end A357111.P15741096504218641398

noncomputable section

/-- A357111: For n >= 1, a(n) = n / A076775(n).

Offset 1, canonical program `A357111.P15741096504218641398`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076775, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357111 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A357111.P15741096504218641398.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076775, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357111.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357774.P7410309054543883889

`A099821(eq[3, A008687(n)])`
-/

namespace A357774.P7410309054543883889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099821 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A357774.P7410309054543883889

noncomputable section

/-- A357774: Binary expansions of odd numbers with two zeros in their binary expansion.

Offset 1, canonical program `A357774.P7410309054543883889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A357774 (n : ℕ) : ℤ :=
  A357774.P7410309054543883889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A357774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358350.P1332157614416825726

`eq[1, char[A161351(n+1)]]`
-/

namespace A358350.P1332157614416825726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161351 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358350.P1332157614416825726

noncomputable section

/-- A358350: Numbers that can be written as (m + sum of digits of m + product of digits of m) for some m.

Offset 1, canonical program `A358350.P1332157614416825726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3133 terms. -/
def A358350 (n : ℕ) : ℤ :=
  (A358350.P1332157614416825726.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3133 terms. -/
def A358350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358353.P8300378893416696419

`eq[char[A161351(n+1)], A000038(n)]`
-/

namespace A358353.P8300378893416696419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161351 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A358353.P8300378893416696419

noncomputable section

/-- A358353: Numbers that are not of the form m + (sum of digits of m) + (product of digits of m) for any m.

Offset 1, canonical program `A358353.P8300378893416696419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1874 terms. -/
def A358353 (n : ℕ) : ℤ :=
  (A358353.P8300378893416696419.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1874 terms. -/
def A358353.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A359465.P15801582525117201442

`A008966(n+1)*A353557(n+1)`
-/

namespace A359465.P15801582525117201442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A353557 (n + 1)

end

end A359465.P15801582525117201442

noncomputable section

/-- A359465: a(n) = 1 if n is an odd squarefree number with an even number of prime factors, otherwise 0.

Offset 1, canonical program `A359465.P15801582525117201442`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A353557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359465 (n : ℕ) : ℤ :=
  A359465.P15801582525117201442.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A353557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359465.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359475.P3885974890903103559

`A359474(n+1)-A302048(n+1)`
-/

namespace A359475.P3885974890903103559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359474 (n + 1) - A302048 (n + 1)

end

end A359475.P3885974890903103559

noncomputable section

/-- A359475: a(n) = 1 if n is a cubefree nonsquare whose factorization into a product of primes contains exactly one square, otherwise 0.

Offset 1, canonical program `A359475.P3885974890903103559`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A302048, A359474, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359475 (n : ℕ) : ℤ :=
  A359475.P3885974890903103559.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A302048, A359474, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359475.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360522.P14036774965634784311

`∑{d}[n+1, A055653(#)]`
-/

namespace A360522.P14036774965634784311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055653 d

end

end A360522.P14036774965634784311

noncomputable section

/-- A360522: a(n) = Sum_{d|n} Max({d'; d'|n, gcd(d, d') = 1}).

Offset 1, canonical program `A360522.P14036774965634784311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360522 (n : ℕ) : ℤ :=
  A360522.P14036774965634784311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363878.P17368432943258259261

`A363795(7*(n+1)-4)`
-/

namespace A363878.P17368432943258259261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (7 * (n + 1) - 4)

end

end A363878.P17368432943258259261

noncomputable section

/-- A363878: Number of divisors of 7*n-4 of form 7*k+2.

Offset 1, canonical program `A363878.P17368432943258259261`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363878 (n : ℕ) : ℤ :=
  A363878.P17368432943258259261.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363878.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363879.P16011273899818667065

`A363795(7*n+1)`
-/

namespace A363879.P16011273899818667065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (7 * n + 1)

end

end A363879.P16011273899818667065

noncomputable section

/-- A363879: Number of divisors of 7*n-6 of form 7*k+2.

Offset 1, canonical program `A363879.P16011273899818667065`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363879 (n : ℕ) : ℤ :=
  A363879.P16011273899818667065.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363879.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363885.P8366996725641736141

`A363795(7*(n+1)-3)`
-/

namespace A363885.P8366996725641736141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (7 * (n + 1) - 3)

end

end A363885.P8366996725641736141

noncomputable section

/-- A363885: Number of divisors of 7*n-3 of form 7*k+2.

Offset 1, canonical program `A363885.P8366996725641736141`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363885 (n : ℕ) : ℤ :=
  A363885.P8366996725641736141.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363885.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A375156.P5944505907265701600

`and(A003188(A374625(n)), A374625(n))`
-/

namespace A375156.P5944505907265701600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003188 (A374625 n).toNat) (A374625 n)

end

end A375156.P5944505907265701600

noncomputable section

/-- A375156: In the binary expansion of n: expand bits 1 -> 01 and 0 -> x0 from most to least significant, where x is the complement of the previous bit from n.

Offset 0, canonical program `A375156.P5944505907265701600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A375156 (n : ℕ) : ℤ :=
  A375156.P5944505907265701600.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A375156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377029.P15592168475021674256

`A374625(a(n-1))` with `a(0)=0`
-/

namespace A377029.P15592168475021674256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A374625 (a (n - 1)).toNat

end

end A377029.P15592168475021674256

noncomputable section

/-- A377029: a(1) = 0; thereafter in the binary expansion of a(n-1), expand bits: 1->01 and 0->10.

Offset 1, canonical program `A377029.P15592168475021674256`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374625, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377029 (n : ℕ) : ℤ :=
  A377029.P15592168475021674256.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374625, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377029.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378032.P9045998569336998006

`A162966(A000040(n+1)-A071403(n+1)+1)`
-/

namespace A378032.P9045998569336998006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (A000040 (n + 1) - A071403 (n + 1) + 1).toNat

end

end A378032.P9045998569336998006

noncomputable section

/-- A378032: a(1) = a(2) = 1; a(n>2) is the greatest nonsquarefree number < prime(n).

Offset 1, canonical program `A378032.P9045998569336998006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2810 terms. -/
def A378032 (n : ℕ) : ℤ :=
  A378032.P9045998569336998006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2810 terms. -/
def A378032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378384.P16639726357393477

`dr(A112661(n))`
-/

namespace A378384.P16639726357393477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A112661 n)

end

end A378384.P16639726357393477

noncomputable section

/-- A378384: Digital root of the sum of the previous 3 terms; a(0) = a(1) = a(2) = 1.

Offset 0, canonical program `A378384.P16639726357393477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378384 (n : ℕ) : ℤ :=
  (A378384.P16639726357393477.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378384.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A379771.P2244188807561407627

`∑[A355447(n+1)]`
-/

namespace A379771.P2244188807561407627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379771.P2244188807561407627

noncomputable section

/-- A379771: Number of k <= n that are neither squarefree nor prime powers.

Offset 1, canonical program `A379771.P2244188807561407627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379771 (n : ℕ) : ℤ :=
  A379771.P2244188807561407627.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380440.P5442109127590069685

`A380439(n+1)+A227291(n+1)`
-/

namespace A380440.P5442109127590069685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380439 (n + 1) + A227291 (n + 1)

end

end A380440.P5442109127590069685

noncomputable section

/-- A380440: a(n) = 1 if n has no squarefree divisor d such that d^2 > n, otherwise 0.

Offset 1, canonical program `A380440.P5442109127590069685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380440 (n : ℕ) : ℤ :=
  A380440.P5442109127590069685.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381740.P15547761009824729862

`filter[A363171(n+1), A008966(#)]`
-/

namespace A381740.P15547761009824729862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A381740.P15547761009824729862

noncomputable section

/-- A381740: Squarefree numbers k such that k^2 is abundant.

Offset 1, canonical program `A381740.P15547761009824729862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3068 terms. -/
def A381740 (n : ℕ) : ℤ :=
  A381740.P15547761009824729862.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3068 terms. -/
def A381740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301378.P6745929020986933071

`10*A007605(n+1)-9*A007652(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A301378.P6745929020986933071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A007605 (n + 1) - 9 * A007652 (n + 1)

end

end A301378.P6745929020986933071

noncomputable section

/-- A301378: a(n) = 10*A007605(n) - 9*A007652(n).

Offset 1, canonical program `A301378.P6745929020986933071`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A301378 (n : ℕ) : ℤ :=
  A301378.P6745929020986933071.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A301378.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A302599.P10102814595459792599

`lt[A004092(n), A007953(n)]`
-/

namespace A302599.P10102814595459792599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302599.P10102814595459792599

noncomputable section

/-- A302599: Numbers k such that digit_sum(k) > digit_sum(2k).

Offset 1, canonical program `A302599.P10102814595459792599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4604 terms. -/
def A302599 (n : ℕ) : ℤ :=
  (A302599.P10102814595459792599.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4604 terms. -/
def A302599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327264.P13146634367397231510

`eq[A004092(n), A007953(n+2)]`
-/

namespace A327264.P13146634367397231510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327264.P13146634367397231510

noncomputable section

/-- A327264: Numbers k with digit_sum(2*k) = digit_sum(2+k).

Offset 1, canonical program `A327264.P13146634367397231510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 635 terms. -/
def A327264 (n : ℕ) : ℤ :=
  (A327264.P13146634367397231510.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 635 terms. -/
def A327264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338241.P14160391239294064305

`A001057(A128173(n))`
-/

namespace A338241.P14160391239294064305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A128173 n).toNat

end

end A338241.P14160391239294064305

noncomputable section

/-- A338241: For any m >= 0, a(3*m) = 3*a(m), a(3*m+1) = 1-3*a(m), a(3*m+2) = 3*a(m)-1.

Offset 0, canonical program `A338241.P14160391239294064305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A338241 (n : ℕ) : ℤ :=
  A338241.P14160391239294064305.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A338241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338977.P6035933890508979909

`p?[A000040(n+1)*A007605(n+1)+1]`
-/

namespace A338977.P6035933890508979909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A007605 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338977.P6035933890508979909

noncomputable section

/-- A338977: Primes p*A007953(p)+1 for p in A338976.

Offset 1, canonical program `A338977.P6035933890508979909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. -/
def A338977 (n : ℕ) : ℤ :=
  A338977.P6035933890508979909.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. -/
def A338977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343766.P2621926781585382443

`-A117966(A128173(n))`
-/

namespace A343766.P2621926781585382443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A117966 (A128173 n).toNat

end

end A343766.P2621926781585382443

noncomputable section

/-- A343766: Lexicographically earliest sequence of distinct integers such that a(0) = 0 and the balanced ternary expansions of two consecutive terms differ by a single digit, as far to the right as possible.

Offset 0, canonical program `A343766.P2621926781585382443`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117966, A128173, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A343766 (n : ℕ) : ℤ :=
  A343766.P2621926781585382443.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117966, A128173, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A343766.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372924.P2536163758219034350

`(A004164(n)-n)/3`
-/

namespace A372924.P2536163758219034350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004164 n - (n : ℤ) : ℚ) / 3

end

end A372924.P2536163758219034350

noncomputable section

/-- A372924: a(n) = (sum_digits(n^3)-n)/3.

Offset 0, canonical program `A372924.P2536163758219034350`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004164, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372924 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372924.P2536163758219034350.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004164, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372924.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380192.P1180676149005535308

`A010879(A007605(n+1))`
-/

namespace A380192.P1180676149005535308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A007605 (n + 1)).toNat

end

end A380192.P1180676149005535308

noncomputable section

/-- A380192: Sum mod(10) of digits of n-th prime.

Offset 1, canonical program `A380192.P1180676149005535308`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380192 (n : ℕ) : ℤ :=
  A380192.P1180676149005535308.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380192.provenance : SequenceMachineLib.Provenance := .conditional

