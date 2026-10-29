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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A064018.P11561033386454225953

`A002088(10^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064018.P11561033386454225953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (10 ^ n)

end

end A064018.P11561033386454225953

noncomputable section

/-- A064018: a(n) = A002088(10^n) = Sum_{k <= 10^n} phi(k), sum of the Euler totients phi = A000010.

Offset 0, canonical program `A064018.P11561033386454225953`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002088(10^n)` (program `A064018.P11561033386454225953`, by `A064018.P11561033386454225953.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A064018 (n : ℕ) : ℤ :=
  A064018.P11561033386454225953.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002088(10^n)` (program `A064018.P11561033386454225953`, by `A064018.P11561033386454225953.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A064018.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A077080.P7768184034800697373

`A000010(A065387(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077080.P7768184034800697373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A065387 (n + 1)).toNat

end

end A077080.P7768184034800697373

noncomputable section

/-- A077080: a(n) = phi(sigma(n) + phi(n)) = A000010(A000203(n) + A000010(n)) = A000010(A065387(n)).

Offset 1, canonical program `A077080.P7768184034800697373`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(A065387(n+1))` (program `A077080.P7768184034800697373`, by `A077080.P7768184034800697373.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A077080 (n : ℕ) : ℤ :=
  A077080.P7768184034800697373.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(A065387(n+1))` (program `A077080.P7768184034800697373`, by `A077080.P7768184034800697373.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A077080.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A077099.P3430747628200771116

`gcd(A051612(n+1), A065387(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077099.P3430747628200771116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051612 (n + 1)) (A065387 (n + 1))

end

end A077099.P3430747628200771116

noncomputable section

/-- A077099: a(n) = gcd(A051612(n), A065387(n)), where A051612(n) = sigma(n) - phi(n) and A065387(n) = sigma(n) + phi(n).

Offset 1, canonical program `A077099.P3430747628200771116`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A051612(n+1), A065387(n+1))` (program `A077099.P3430747628200771116`, by `A077099.P3430747628200771116.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A077099 (n : ℕ) : ℤ :=
  (A077099.P3430747628200771116.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A051612(n+1), A065387(n+1))` (program `A077099.P3430747628200771116`, by `A077099.P3430747628200771116.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A077099.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A077100.P17383012229012696601

`lcm(A051612(n+1), A065387(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077100.P17383012229012696601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051612 (n + 1)) (A065387 (n + 1))

end

end A077100.P17383012229012696601

noncomputable section

/-- A077100: a(n) = lcm(A051612(n), A065387(n)), where A051612(n) = sigma(n) - phi(n) and A065387(n) = sigma(n) + phi(n).

Offset 1, canonical program `A077100.P17383012229012696601`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(A051612(n+1), A065387(n+1))` (program `A077100.P17383012229012696601`, by `A077100.P17383012229012696601.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A077100 (n : ℕ) : ℤ :=
  (A077100.P17383012229012696601.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(A051612(n+1), A065387(n+1))` (program `A077100.P17383012229012696601`, by `A077100.P17383012229012696601.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A077100.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A077101.P7633448561027353757

`A051612(n+1)*A065387(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077101.P7633448561027353757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1) * A065387 (n + 1)

end

end A077101.P7633448561027353757

noncomputable section

/-- A077101: a(n) = A051612(n)*A065387(n) = sigma(n)^2-phi(n)^2, where A051612(n) = sigma(n) - phi(n) and A065387(n) = sigma(n) + phi(n).

Offset 1, canonical program `A077101.P7633448561027353757`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A051612(n+1)*A065387(n+1)` (program `A077101.P7633448561027353757`, by `A077101.P7633448561027353757.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A077101 (n : ℕ) : ℤ :=
  A077101.P7633448561027353757.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A051612(n+1)*A065387(n+1)` (program `A077101.P7633448561027353757`, by `A077101.P7633448561027353757.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A077101.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A005728.P12032251568510858139

`1+A002088(n)`
-/

namespace A005728.P12032251568510858139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A002088 n

end

end A005728.P12032251568510858139

noncomputable section

/-- A005728: Number of fractions in Farey series of order n.

Offset 0, canonical program `A005728.P12032251568510858139`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005728 (n : ℕ) : ℤ :=
  A005728.P12032251568510858139.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005728.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007438.P10356689231106603491

`(A007434(n+1)+A000010(n+1))/2`
-/

namespace A007438.P10356689231106603491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) + A000010 (n + 1) : ℚ) / 2

end

end A007438.P10356689231106603491

noncomputable section

/-- A007438: Moebius transform of triangular numbers.

Offset 1, canonical program `A007438.P10356689231106603491`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007438 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007438.P10356689231106603491.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007438.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023821.P17015590277751869267

`A023820(n+2)-A001222(2*(n+2)+2)+A001222(n+1)`
-/

namespace A023821.P17015590277751869267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023820 (n + 2) - A001222 (2 * (n + 2) + 2) + A001222 (n + 1)

end

end A023821.P17015590277751869267

noncomputable section

/-- A023821: Sum of exponents in prime-power factorization of C(3n,n-2).

Offset 2, canonical program `A023821.P17015590277751869267`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023821 (n : ℕ) : ℤ :=
  A023821.P17015590277751869267.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023821.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023824.P17719510781724392525

`A023823(n+1)+A001222(2*(n+1)-1)-A001222(n+3)`
-/

namespace A023824.P17719510781724392525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023823 (n + 1) + A001222 (2 * (n + 1) - 1) - A001222 (n + 3)

end

end A023824.P17719510781724392525

noncomputable section

/-- A023824: Sum of exponents in prime-power factorization of C(3n,n+2).

Offset 1, canonical program `A023824.P17719510781724392525`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023824 (n : ℕ) : ℤ :=
  A023824.P17719510781724392525.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023824.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023828.P17231470390843408716

`A023827(n+2)-A001222(3*(n+2)+2)+A001222(n+1)`
-/

namespace A023828.P17231470390843408716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023827 (n + 2) - A001222 (3 * (n + 2) + 2) + A001222 (n + 1)

end

end A023828.P17231470390843408716

noncomputable section

/-- A023828: Sum of exponents in prime-power factorization of C(4n,n-2).

Offset 2, canonical program `A023828.P17231470390843408716`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023828 (n : ℕ) : ℤ :=
  A023828.P17231470390843408716.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023828.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023832.P9870183925900846614

`A023831(n+1)+A001222(3*(n+1)-1)-A001222(n+3)`
-/

namespace A023832.P9870183925900846614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023831 (n + 1) + A001222 (3 * (n + 1) - 1) - A001222 (n + 3)

end

end A023832.P9870183925900846614

noncomputable section

/-- A023832: Sum of exponents in prime-power factorization of C(4n,n+2).

Offset 1, canonical program `A023832.P9870183925900846614`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023832 (n : ℕ) : ℤ :=
  A023832.P9870183925900846614.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023832.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023836.P4434830297620325670

`A023835(n+1)-A001222(2*(n+1)+2)+A001222(2*(n+1)-1)`
-/

namespace A023836.P4434830297620325670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023835 (n + 1) - A001222 (2 * (n + 1) + 2) + A001222 (2 * (n + 1) - 1)

end

end A023836.P4434830297620325670

noncomputable section

/-- A023836: Sum of exponents in prime-power factorization of C(4n,2n-2).

Offset 1, canonical program `A023836.P4434830297620325670`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023836 (n : ℕ) : ℤ :=
  A023836.P4434830297620325670.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023836.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A026147.P16575442085374687038

`1+A001969(n+1)`
-/

namespace A026147.P16575442085374687038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A001969 (n + 1)

end

end A026147.P16575442085374687038

noncomputable section

/-- A026147: a(n) = position of n-th 1 in A001285 or A010059 (Thue-Morse sequence).

Offset 1, canonical program `A026147.P16575442085374687038`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026147 (n : ℕ) : ℤ :=
  A026147.P16575442085374687038.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026147.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027742.P15524387088752407227

`A295501(n+1)/(2*(n+1))`
-/

namespace A027742.P15524387088752407227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295501 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A027742.P15524387088752407227

noncomputable section

/-- A027742: a(n) = phi(4^n-1)/(2*n).

Offset 1, canonical program `A027742.P15524387088752407227`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027742 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027742.P15524387088752407227.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027742.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A029881.P1116097613260718469

`∑{d}[n+1, A008683((n+1)/#)*A001285(#-1)]`
-/

namespace A029881.P1116097613260718469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A001285 (d - 1)

end

end A029881.P1116097613260718469

noncomputable section

/-- A029881: Möbius transform of Thue-Morse sequence A001285 (when shifted once right).

Offset 1, canonical program `A029881.P1116097613260718469`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029881 (n : ℕ) : ℤ :=
  A029881.P1116097613260718469.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029881.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036265.P15826367320604290420

`A036264(n+2)-A036264(n+1)`
-/

namespace A036265.P15826367320604290420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036264 (n + 2) - A036264 (n + 1)

end

end A036265.P15826367320604290420

noncomputable section

/-- A036265: 4th differences of primes.

Offset 1, canonical program `A036265.P15826367320604290420`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036265 (n : ℕ) : ℤ :=
  A036265.P15826367320604290420.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036265.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036585.P17220132576541787484

`A001969(n+2)-A001969(n+1)`
-/

namespace A036585.P17220132576541787484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 2) - A001969 (n + 1)

end

end A036585.P17220132576541787484

noncomputable section

/-- A036585: Ternary Thue-Morse sequence: closed under a->abc, b->ac, c->b.

Offset 1, canonical program `A036585.P17220132576541787484`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036585 (n : ℕ) : ℤ :=
  A036585.P17220132576541787484.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036585.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038814.P15162502239294799101

`A038813(10*(n+1))`
-/

namespace A038814.P15162502239294799101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038813 (10 * (n + 1))

end

end A038814.P15162502239294799101

noncomputable section

/-- A038814: Number of primes less than 100000n.

Offset 1, canonical program `A038814.P15162502239294799101`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038814 (n : ℕ) : ℤ :=
  A038814.P15162502239294799101.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038814.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046657.P7830311371866937394

`A002088(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A046657.P7830311371866937394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002088 (n + 2) : ℚ) / 2

end

end A046657.P7830311371866937394

noncomputable section

/-- A046657: a(n) = A002088(n)/2.

Offset 2, canonical program `A046657.P7830311371866937394`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046657 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A046657.P7830311371866937394.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046657.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048980.P1689635231098254215

`A048863(n)-A048862(n)`
-/

namespace A048980.P1689635231098254215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048863 n - A048862 n

end

end A048980.P1689635231098254215

noncomputable section

/-- A048980: Difference between number of nonprimes and primes in reduced residue system of primorial numbers.

Offset 0, canonical program `A048980.P1689635231098254215`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048980 (n : ℕ) : ℤ :=
  A048980.P1689635231098254215.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048980.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049099.P16821384539890707321

`A000010(A010554(n+1))`
-/

namespace A049099.P16821384539890707321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A010554 (n + 1)).toNat

end

end A049099.P16821384539890707321

noncomputable section

/-- A049099: a(n) = Euler phi function applied thrice to n.

Offset 1, canonical program `A049099.P16821384539890707321`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049099 (n : ℕ) : ℤ :=
  A049099.P16821384539890707321.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049099.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049100.P9945104708846062101

`A010554(A010554(n+1))`
-/

namespace A049100.P9945104708846062101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A010554 (n + 1)).toNat

end

end A049100.P9945104708846062101

noncomputable section

/-- A049100: a(n) = Euler phi function applied 4 times to n.

Offset 1, canonical program `A049100.P9945104708846062101`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049100 (n : ℕ) : ℤ :=
  A049100.P9945104708846062101.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049100.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049586.P5434218238322190531

`gcd(A051953(n+2), A051953(n+1))`
-/

namespace A049586.P5434218238322190531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051953 (n + 2)) (A051953 (n + 1))

end

end A049586.P5434218238322190531

noncomputable section

/-- A049586: a(n) is the GCD of the cototients (A051953) of n and n+1.

Offset 0, canonical program `A049586.P5434218238322190531`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049586 (n : ℕ) : ℤ :=
  (A049586.P5434218238322190531.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049586.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049690.P5802976432463203985

`A002088(n)+a(floor(n/2))` with `a(0)=0`
-/

namespace A049690.P5802976432463203985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002088 n + a ⌊(n : ℚ) / 2⌋.toNat

end

end A049690.P5802976432463203985

noncomputable section

/-- A049690: a(n) = Sum_{k=1..n} phi(2*k), where phi = Euler totient function, cf. A000010.

Offset 0, canonical program `A049690.P5802976432463203985`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049690 (n : ℕ) : ℤ :=
  A049690.P5802976432463203985.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049690.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049696.P12004431397855860570

`2*A002088(n)`
-/

namespace A049696.P12004431397855860570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002088 n

end

end A049696.P12004431397855860570

noncomputable section

/-- A049696: a(n)=T(n,n), array T as in A049695.

Offset 0, canonical program `A049696.P12004431397855860570`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049696 (n : ℕ) : ℤ :=
  A049696.P12004431397855860570.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049696.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052100.P4818620463333782499

`(n+1)*A000010(n+1)*A051953(n+1)/A009195(n+1)²`
-/

namespace A052100.P4818620463333782499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A000010 (n + 1) * A051953 (n + 1) : ℚ) / (A009195 (n + 1) ^ 2 : ℚ)

end

end A052100.P4818620463333782499

noncomputable section

/-- A052100: a(n) = lcm(n, phi(n), n - phi(n)).

Offset 1, canonical program `A052100.P4818620463333782499`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052100 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052100.P4818620463333782499.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052100.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053192.P15920408309209119138

`A051953((n+1)^3)`
-/

namespace A053192.P15920408309209119138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 ((n + 1) ^ 3)

end

end A053192.P15920408309209119138

noncomputable section

/-- A053192: a(n) is the cototient of n^3.

Offset 1, canonical program `A053192.P15920408309209119138`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053192 (n : ℕ) : ℤ :=
  A053192.P15920408309209119138.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053192.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053193.P16427996787971388584

`A051953(2*(n+1)+1)`
-/

namespace A053193.P16427996787971388584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (2 * (n + 1) + 1)

end

end A053193.P16427996787971388584

noncomputable section

/-- A053193: Cototient of odd numbers.

Offset 1, canonical program `A053193.P16427996787971388584`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053193 (n : ℕ) : ℤ :=
  A053193.P16427996787971388584.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053193.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053196.P5984243781687677578

`A051953(2*(n+1))`
-/

namespace A053196.P5984243781687677578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (2 * (n + 1))

end

end A053196.P5984243781687677578

noncomputable section

/-- A053196: Cototients of even numbers.

Offset 1, canonical program `A053196.P5984243781687677578`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053196 (n : ℕ) : ℤ :=
  A053196.P5984243781687677578.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053196.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053286.P17482830161555086044

`A051953(A000051(n))`
-/

namespace A053286.P17482830161555086044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A000051 n).toNat

end

end A053286.P17482830161555086044

noncomputable section

/-- A053286: Cototient of 2^n + 1.

Offset 0, canonical program `A053286.P17482830161555086044`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053286 (n : ℕ) : ℤ :=
  A053286.P17482830161555086044.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053286.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053287.P11109318528216789787

`A062401(2^n)`
-/

namespace A053287.P11109318528216789787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (2 ^ n)

end

end A053287.P11109318528216789787

noncomputable section

/-- A053287: Euler totient function (A000010) of 2^n - 1.

Offset 1, canonical program `A053287.P11109318528216789787`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053287 (n : ℕ) : ℤ :=
  A053287.P11109318528216789787.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053287.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053288.P6466323474005085456

`A051953(A000225(n+1))`
-/

namespace A053288.P6466323474005085456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A000225 (n + 1)).toNat

end

end A053288.P6466323474005085456

noncomputable section

/-- A053288: Cototient of 2^n - 1.

Offset 1, canonical program `A053288.P6466323474005085456`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053288 (n : ℕ) : ℤ :=
  A053288.P6466323474005085456.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053288.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053475.P4915054486335898870

`A076640(n+1)+1`
-/

namespace A053475.P4915054486335898870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076640 (n + 1) + 1

end

end A053475.P4915054486335898870

noncomputable section

/-- A053475: 1 + the number of iterations of A051953 (Euler-cototient) function needed to reach 0, starting at n.

Offset 1, canonical program `A053475.P4915054486335898870`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053475 (n : ℕ) : ℤ :=
  A053475.P4915054486335898870.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053475.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053650.P6469571087341810863

`(n+1)*A051953(n+1)`
-/

namespace A053650.P6469571087341810863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A051953 (n + 1)

end

end A053650.P6469571087341810863

noncomputable section

/-- A053650: Cototient function of n^2.

Offset 1, canonical program `A053650.P6469571087341810863`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053650 (n : ℕ) : ℤ :=
  A053650.P6469571087341810863.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053650.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055929.P14119917498007259059

`A048855(A000040(n+1))`
-/

namespace A055929.P14119917498007259059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048855 (A000040 (n + 1)).toNat

end

end A055929.P14119917498007259059

noncomputable section

/-- A055929: Euler totient function of the factorial of prime(n).

Offset 1, canonical program `A055929.P14119917498007259059`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055929 (n : ℕ) : ℤ :=
  A055929.P14119917498007259059.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055929.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056170.P910878729848546389

`A001221(n+1)-A056169(n+1)`
-/

namespace A056170.P910878729848546389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A056169 (n + 1)

end

end A056170.P910878729848546389

noncomputable section

/-- A056170: Number of non-unitary prime divisors of n.

Offset 1, canonical program `A056170.P910878729848546389`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056170 (n : ℕ) : ℤ :=
  A056170.P910878729848546389.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056170.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056173.P15098762460861555107

`A056169(A001405(n+1))`
-/

namespace A056173.P15098762460861555107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A001405 (n + 1)).toNat

end

end A056173.P15098762460861555107

noncomputable section

/-- A056173: Number of unitary prime divisors of central binomial coefficient C(n, floor(n/2)) (A001405).

Offset 1, canonical program `A056173.P15098762460861555107`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056173 (n : ℕ) : ℤ :=
  A056173.P15098762460861555107.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056173.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056554.P12189211576278648402

`A056553(n+1)^(1/4)`
-/

namespace A056554.P12189211576278648402
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056553 (n + 1) : ℝ) ^ ((1 : ℚ) / 4 : ℝ)

end

end A056554.P12189211576278648402

noncomputable section

/-- A056554: Powerfree kernel of 4th-powerfree part of n.

Offset 1, canonical program `A056554.P12189211576278648402`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056554 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056554.P12189211576278648402.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056554.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056555.P6670388154157889676

`A056553(n+1)/A053165(n+1)`
-/

namespace A056555.P6670388154157889676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056553 (n + 1) : ℚ) / (A053165 (n + 1) : ℚ)

end

end A056555.P6670388154157889676

noncomputable section

/-- A056555: Smallest number k (k>0) such that n*k is a perfect 4th power.

Offset 1, canonical program `A056555.P6670388154157889676`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056555 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056555.P6670388154157889676.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056555.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056627.P7295245360470113496

`A055772(n+1)/A055230(n+1)`
-/

namespace A056627.P7295245360470113496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055772 (n + 1) : ℚ) / (A055230 (n + 1) : ℚ)

end

end A056627.P7295245360470113496

noncomputable section

/-- A056627: a(n) = A056622(n!).

Offset 1, canonical program `A056627.P7295245360470113496`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056627 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056627.P7295245360470113496.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056627.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056671.P15517418660735312830

`2^A056169(n+1)`
-/

namespace A056671.P15517418660735312830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A056169 (n + 1) : ℤ)

end

end A056671.P15517418660735312830

noncomputable section

/-- A056671: 1 + the number of unitary and squarefree divisors of n = number of divisors of reduced squarefree part of n.

Offset 1, canonical program `A056671.P15517418660735312830`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056671 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056671.P15517418660735312830.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056671.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056789.P13500359394840350623

`(A068963(n+1)+1)/2`
-/

namespace A056789.P13500359394840350623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068963 (n + 1) + 1 : ℚ) / 2

end

end A056789.P13500359394840350623

noncomputable section

/-- A056789: a(n) = Sum_{k=1..n} lcm(k,n)/gcd(k,n).

Offset 1, canonical program `A056789.P13500359394840350623`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056789 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056789.P13500359394840350623.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056789.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057860.P15781516878484293447

`A051953(n+1)-A001221(n+1)`
-/

namespace A057860.P15781516878484293447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - A001221 (n + 1)

end

end A057860.P15781516878484293447

noncomputable section

/-- A057860: Number of residue classes modulo n which contain only composite numbers.

Offset 1, canonical program `A057860.P15781516878484293447`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057860 (n : ℕ) : ℤ :=
  A057860.P15781516878484293447.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057860.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A058161.P7672839083223615589

`(n+1)!/A002618(n+1)`
-/

namespace A058161.P7672839083223615589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A002618 (n + 1) : ℚ)

end

end A058161.P7672839083223615589

noncomputable section

/-- A058161: Number of labeled cyclic groups with a fixed identity.

Offset 1, canonical program `A058161.P7672839083223615589`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058161 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A058161.P7672839083223615589.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058161.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061321.P7688988226899301674

`A061320(n)/5`
-/

namespace A061321.P7688988226899301674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061320 n : ℚ) / 5

end

end A061321.P7688988226899301674

noncomputable section

/-- A061321: Column 5 of A061315.

Offset 0, canonical program `A061321.P7688988226899301674`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061321 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061321.P7688988226899301674.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061321.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062790.P5415624989759604668

`A000010(n+1)-A007431(n+1)`
-/

namespace A062790.P5415624989759604668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A007431 (n + 1)

end

end A062790.P5415624989759604668

noncomputable section

/-- A062790: Moebius transform of the cototient function A051953.

Offset 1, canonical program `A062790.P5415624989759604668`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062790 (n : ℕ) : ℤ :=
  A062790.P5415624989759604668.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062790.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063659.P17976112420004081821

`n+1-A063658(n+1)`
-/

namespace A063659.P17976112420004081821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A063658 (n + 1)

end

end A063659.P17976112420004081821

noncomputable section

/-- A063659: The number of integers m in [1..n] for which gcd(m,n) is not divisible by a square greater than 1.

Offset 1, canonical program `A063659.P17976112420004081821`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063659 (n : ℕ) : ℤ :=
  A063659.P17976112420004081821.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063659.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063754.P8530571032129736586

`A018804(n+1)-A029935(n+1)`
-/

namespace A063754.P8530571032129736586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) - A029935 (n + 1)

end

end A063754.P8530571032129736586

noncomputable section

/-- A063754: Dirichlet convolution of totient and cototient.

Offset 1, canonical program `A063754.P8530571032129736586`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063754 (n : ℕ) : ℤ :=
  A063754.P8530571032129736586.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063754.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063985.P3942861327483730228

`A000217(n+1)-A002088(n+1)`
-/

namespace A063985.P3942861327483730228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A002088 (n + 1)

end

end A063985.P3942861327483730228

noncomputable section

/-- A063985: Partial sums of cototient sequence A051953.

Offset 1, canonical program `A063985.P3942861327483730228`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063985 (n : ℕ) : ℤ :=
  A063985.P3942861327483730228.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063985.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064279.P12022089793920685943

`(n+1)²-A007434(n+1)`
-/

namespace A064279.P12022089793920685943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A007434 (n + 1)

end

end A064279.P12022089793920685943

noncomputable section

/-- A064279: Number of ordered pairs a,b of elements in the cyclic group C_n such that the subgroup generated by the pair a,b is a proper subgroup of C_n.

Offset 1, canonical program `A064279.P12022089793920685943`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064279 (n : ℕ) : ℤ :=
  A064279.P12022089793920685943.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064279.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064400.P18224085056823472977

`3*A002618(n+1)`
-/

namespace A064400.P18224085056823472977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002618 (n + 1)

end

end A064400.P18224085056823472977

noncomputable section

/-- A064400: Number of ordered pairs a,b of elements in the dihedral group D_2n such that the subgroup generated by the pair a,b is the entire group D_2n.

Offset 1, canonical program `A064400.P18224085056823472977`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064400 (n : ℕ) : ℤ :=
  A064400.P18224085056823472977.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064400.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065395.P2489415890937249786

`A062402(n+1)-A062401(n+1)`
-/

namespace A065395.P2489415890937249786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (n + 1) - A062401 (n + 1)

end

end A065395.P2489415890937249786

noncomputable section

/-- A065395: Commutator of sigma and phi functions.

Offset 1, canonical program `A065395.P2489415890937249786`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065395 (n : ℕ) : ℤ :=
  A065395.P2489415890937249786.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065395.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065886.P10189673192464733251

`A053143(A000142(n))`
-/

namespace A065886.P10189673192464733251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (A000142 n).toNat

end

end A065886.P10189673192464733251

noncomputable section

/-- A065886: Smallest square divisible by n!.

Offset 0, canonical program `A065886.P10189673192464733251`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065886 (n : ℕ) : ℤ :=
  A065886.P10189673192464733251.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065886.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065958.P4916499116496807782

`A059377(n+1)/A007434(n+1)`
-/

namespace A065958.P4916499116496807782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059377 (n + 1) : ℚ) / (A007434 (n + 1) : ℚ)

end

end A065958.P4916499116496807782

noncomputable section

/-- A065958: a(n) = n^2*Product_{distinct primes p dividing n} (1+1/p^2).

Offset 1, canonical program `A065958.P4916499116496807782`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065958 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A065958.P4916499116496807782.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065958.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066915.P5780166036691068090

`A062981(n+1)+1`
-/

namespace A066915.P5780166036691068090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062981 (n + 1) + 1

end

end A066915.P5780166036691068090

noncomputable section

/-- A066915: a(n) = n^phi(n) + 1.

Offset 1, canonical program `A066915.P5780166036691068090`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066915 (n : ℕ) : ℤ :=
  A066915.P5780166036691068090.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066915.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066916.P9082080980246688121

`A062981(n+1)-1`
-/

namespace A066916.P9082080980246688121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062981 (n + 1) - 1

end

end A066916.P9082080980246688121

noncomputable section

/-- A066916: a(n) = n^phi(n) - 1.

Offset 1, canonical program `A066916.P9082080980246688121`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066916 (n : ℕ) : ℤ :=
  A066916.P9082080980246688121.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066916.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069925.P16749141084476288768

`A053285(n+1)/(2*(n+1))`
-/

namespace A069925.P16749141084476288768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053285 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A069925.P16749141084476288768

noncomputable section

/-- A069925: a(n) = phi(2^n+1)/(2*n).

Offset 1, canonical program `A069925.P16749141084476288768`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069925 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069925.P16749141084476288768.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069925.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070556.P18359578650946582400

`A051953(A000010(n+1))`
-/

namespace A070556.P18359578650946582400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A000010 (n + 1)).toNat

end

end A070556.P18359578650946582400

noncomputable section

/-- A070556: a(n) = cototient(totient(n)).

Offset 1, canonical program `A070556.P18359578650946582400`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070556 (n : ℕ) : ℤ :=
  A070556.P18359578650946582400.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070556.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071118.P10143340567303740039

`2*A002618(n+1)`
-/

namespace A071118.P10143340567303740039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002618 (n + 1)

end

end A071118.P10143340567303740039

noncomputable section

/-- A071118: Size of the automorphism group of the group Z X Z_n.

Offset 1, canonical program `A071118.P10143340567303740039`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071118 (n : ℕ) : ℤ :=
  A071118.P10143340567303740039.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071118.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071575.P1413525790656994869

`A076640(n+1)-1`
-/

namespace A071575.P1413525790656994869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076640 (n + 1) - 1

end

end A071575.P1413525790656994869

noncomputable section

/-- A071575: Number of iterations of cototient(n) needed to reach 1 (cototient(n) = n-phi(n)).

Offset 1, canonical program `A071575.P1413525790656994869`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071575 (n : ℕ) : ℤ :=
  A071575.P1413525790656994869.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071575.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072339.P14610231955541927541

`A069010(n+1)+A069010(2*(n+1)-1)-1`
-/

namespace A072339.P14610231955541927541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (n + 1) + A069010 (2 * (n + 1) - 1) - 1

end

end A072339.P14610231955541927541

noncomputable section

/-- A072339: Any number n can be written (in two ways, one with m even and one with m odd) in the form n = 2^k_1 - 2^k_2 + 2^k_3 - ... + 2^k_m where the signs alternate and k_1 > k_2 > k_3 > ... >k_m >= 0; sequence gives minimal value of m.

Offset 1, canonical program `A072339.P14610231955541927541`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072339 (n : ℕ) : ℤ :=
  A072339.P14610231955541927541.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072339.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072451.P2994685750961621523

`A055034(2*n+1)`
-/

namespace A072451.P2994685750961621523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (2 * n + 1)

end

end A072451.P2994685750961621523

noncomputable section

/-- A072451: Number of odd terms in the reduced residue system of 2*n-1.

Offset 1, canonical program `A072451.P2994685750961621523`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072451 (n : ℕ) : ℤ :=
  A072451.P2994685750961621523.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072451.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073356.P10809278047036063621

`gcd(A007947(n+1), A073355(n+1))`
-/

namespace A073356.P10809278047036063621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007947 (n + 1)) (A073355 (n + 1))

end

end A073356.P10809278047036063621

noncomputable section

/-- A073356: Greatest common divisor of squarefree kernel of n and sum of squarefree kernels of numbers <= n.

Offset 1, canonical program `A073356.P10809278047036063621`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073356 (n : ℕ) : ℤ :=
  (A073356.P10809278047036063621.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073356.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A074389.P8050335013716147164

`gcd(n+1, A009223(n+1))`
-/

namespace A074389.P8050335013716147164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A009223 (n + 1))

end

end A074389.P8050335013716147164

noncomputable section

/-- A074389: a(n) = gcd(n, sigma(n), phi(n)).

Offset 1, canonical program `A074389.P8050335013716147164`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074389 (n : ℕ) : ℤ :=
  (A074389.P8050335013716147164.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074389.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075857.P13213587624051204763

`A000010(n+1)*A051953(n+1)/A009195(n+1)`
-/

namespace A075857.P13213587624051204763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A051953 (n + 1) : ℚ) / (A009195 (n + 1) : ℚ)

end

end A075857.P13213587624051204763

noncomputable section

/-- A075857: Least common multiple of totient and cototient of n.

Offset 1, canonical program `A075857.P13213587624051204763`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075857 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A075857.P13213587624051204763.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075857.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076511.P7316728277018635984

`A051953(n+1)/A009195(n+1)`
-/

namespace A076511.P7316728277018635984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051953 (n + 1) : ℚ) / (A009195 (n + 1) : ℚ)

end

end A076511.P7316728277018635984

noncomputable section

/-- A076511: Numerator of cototient(n)/totient(n).

Offset 1, canonical program `A076511.P7316728277018635984`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076511 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A076511.P7316728277018635984.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076511.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076512.P8858335873698659586

`A000010(n+1)/A009195(n+1)`
-/

namespace A076512.P8858335873698659586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A009195 (n + 1) : ℚ)

end

end A076512.P8858335873698659586

noncomputable section

/-- A076512: Denominator of cototient(n)/totient(n).

Offset 1, canonical program `A076512.P8858335873698659586`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076512 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A076512.P8858335873698659586.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076512.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078559.P2068889440382539435

`A054640(n+1)/A078558(n+1)`
-/

namespace A078559.P2068889440382539435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054640 (n + 1) : ℚ) / (A078558 (n + 1) : ℚ)

end

end A078559.P2068889440382539435

noncomputable section

/-- A078559: Numerator of Product_{i=1..n} (p_i + 1)/(p_i - 1) where p_i is the i-th prime.

Offset 1, canonical program `A078559.P2068889440382539435`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078559 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A078559.P2068889440382539435.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078559.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078766.P6802936406956990662

`A000720(A002618(n+1))`
-/

namespace A078766.P6802936406956990662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002618 (n + 1)).toNat

end

end A078766.P6802936406956990662

noncomputable section

/-- A078766: Number of primes less than n*phi(n).

Offset 1, canonical program `A078766.P6802936406956990662`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078766 (n : ℕ) : ℤ :=
  A078766.P6802936406956990662.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078766.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081396.P571313652877087617

`A001221(A009223(n+1))`
-/

namespace A081396.P571313652877087617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A009223 (n + 1)).toNat

end

end A081396.P571313652877087617

noncomputable section

/-- A081396: Number of common prime factors (ignoring multiplicity) of sigma(n) = A000203(n) and phi(n) = A000010(n).

Offset 1, canonical program `A081396.P571313652877087617`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081396 (n : ℕ) : ℤ :=
  A081396.P571313652877087617.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081396.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082054.P15616235198643098512

`A008472(A009223(n+1))`
-/

namespace A082054.P15616235198643098512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A009223 (n + 1)).toNat

end

end A082054.P15616235198643098512

noncomputable section

/-- A082054: Sum of common prime divisors (without multiplicity) of sigma(n) and phi(n).

Offset 1, canonical program `A082054.P15616235198643098512`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082054 (n : ℕ) : ℤ :=
  A082054.P15616235198643098512.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082054.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082055.P17660834440611057659

`A007947(A009223(n+1))`
-/

namespace A082055.P17660834440611057659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A009223 (n + 1)).toNat

end

end A082055.P17660834440611057659

noncomputable section

/-- A082055: Product of common prime-divisors (without multiplicity) of sigma(n) and phi(n).

Offset 1, canonical program `A082055.P17660834440611057659`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082055 (n : ℕ) : ℤ :=
  A082055.P17660834440611057659.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082055.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082849.P14495189040756663948

`A051953(n+1)*A051953(n+2)`
-/

namespace A082849.P14495189040756663948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) * A051953 (n + 2)

end

end A082849.P14495189040756663948

noncomputable section

/-- A082849: Product of cototient values of consecutive integers.

Offset 1, canonical program `A082849.P14495189040756663948`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082849 (n : ℕ) : ℤ :=
  A082849.P14495189040756663948.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082849.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000056.P18166110637332708364

`(n+1)*A007434(n+1)`
-/

namespace A000056.P18166110637332708364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007434 (n + 1)

end

end A000056.P18166110637332708364

noncomputable section

/-- A000056: Order of the group SL(2,Z_n).

Offset 1, canonical program `A000056.P18166110637332708364`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000056 (n : ℕ) : ℤ :=
  A000056.P18166110637332708364.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000056.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003434.P4346144669055339103

`A049108(n+1)-1`
-/

namespace A003434.P4346144669055339103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (n + 1) - 1

end

end A003434.P4346144669055339103

noncomputable section

/-- A003434: Number of iterations of phi(x) at n needed to reach 1.

Offset 1, canonical program `A003434.P4346144669055339103`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003434 (n : ℕ) : ℤ :=
  A003434.P4346144669055339103.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003434.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014081.P14878370479040452879

`A000120(n)-A069010(n)`
-/

namespace A014081.P14878370479040452879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A069010 n

end

end A014081.P14878370479040452879

noncomputable section

/-- A014081: a(n) is the number of occurrences of '11' in the binary expansion of n.

Offset 0, canonical program `A014081.P14878370479040452879`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014081 (n : ℕ) : ℤ :=
  A014081.P14878370479040452879.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014081.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020478.P13030858516864996585

`(n+1)*A069097(n+1)`
-/

namespace A020478.P13030858516864996585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A069097 (n + 1)

end

end A020478.P13030858516864996585

noncomputable section

/-- A020478: Number of singular 2 X 2 matrices over Z(n) (i.e., with determinant = 0).

Offset 1, canonical program `A020478.P13030858516864996585`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020478 (n : ℕ) : ℤ :=
  A020478.P13030858516864996585.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020478.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A026238.P11188609804940951369

`A049084(n+2)+A066246(n+2)`
-/

namespace A026238.P11188609804940951369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 2) + A066246 (n + 2)

end

end A026238.P11188609804940951369

noncomputable section

/-- A026238: a(n) = j if n is the j-th prime, else a(n) = k if n is the k-th composite.

Offset 2, canonical program `A026238.P11188609804940951369`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026238 (n : ℕ) : ℤ :=
  A026238.P11188609804940951369.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026238.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028235.P3234119567802931981

`A003415(A007947(n+1))`
-/

namespace A028235.P3234119567802931981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A007947 (n + 1)).toNat

end

end A028235.P3234119567802931981

noncomputable section

/-- A028235: If n = Product (p_j^k_j), a(n) = numerator of Sum 1/p_j (the denominator of this sum is A007947).

Offset 1, canonical program `A028235.P3234119567802931981`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028235 (n : ℕ) : ℤ :=
  A028235.P3234119567802931981.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028235.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033264.P160500174191644510

`A069010(n)-n%2`
-/

namespace A033264.P160500174191644510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n - ((n % 2 : ℕ) : ℤ)

end

end A033264.P160500174191644510

noncomputable section

/-- A033264: Number of blocks of {1,0} in the binary expansion of n.

Offset 0, canonical program `A033264.P160500174191644510`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033264 (n : ℕ) : ℤ :=
  A033264.P160500174191644510.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033264.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033457.P6058291552115705490

`A069097(n+2)-(n+2)²`
-/

namespace A033457.P6058291552115705490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069097 (n + 2) - ((n + 2) ^ 2 : ℤ)

end

end A033457.P6058291552115705490

noncomputable section

/-- A033457: GCD-convolution of squares A000290 with themselves.

Offset 0, canonical program `A033457.P6058291552115705490`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033457 (n : ℕ) : ℤ :=
  A033457.P6058291552115705490.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033457.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055608.P3351527780565654207

`2*a(n-1)-a(n-3)+A002889(n+1)+A002889(n)` with `a(0)=1, a(1)=13, a(2)=92`
-/

namespace A055608.P3351527780565654207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 13, 92] fun n a =>
  2 * a (n - 1) - a (n - 3) + A002889 (n + 1) + A002889 n

end

end A055608.P3351527780565654207

noncomputable section

/-- A055608: Arrays of dumbbells.

Offset 1, canonical program `A055608.P3351527780565654207`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055608 (n : ℕ) : ℤ :=
  A055608.P3351527780565654207.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055608.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056622.P16381478984900438318

`sqrt(A056623(n+1))`
-/

namespace A056622.P16381478984900438318
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056623 (n + 1) : ℝ)

end

end A056622.P16381478984900438318

noncomputable section

/-- A056622: a(n) = A000188(n)/A055229(n).

Offset 1, canonical program `A056622.P16381478984900438318`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056622 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056622.P16381478984900438318.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056622.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056665.P2618057950060369696

`1/(n+1)*A228640(n+1)`
-/

namespace A056665.P2618057950060369696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A228640 (n + 1) : ℚ)

end

end A056665.P2618057950060369696

noncomputable section

/-- A056665: Number of equivalence classes of n-valued Post functions of 1 variable under action of complementing group C(1,n).

Offset 1, canonical program `A056665.P2618057950060369696`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056665 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056665.P2618057950060369696.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056665.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062803.P16752899596176720456

`A327767(n+1)*A332794(n+1)`
-/

namespace A062803.P16752899596176720456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327767 (n + 1) * A332794 (n + 1)

end

end A062803.P16752899596176720456

noncomputable section

/-- A062803: Number of solutions to x^2 == y^2 (mod n).

Offset 1, canonical program `A062803.P16752899596176720456`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062803 (n : ℕ) : ℤ :=
  A062803.P16752899596176720456.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062803.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064105.P10505817968738943948

`A381841(n+1)-1`
-/

namespace A064105.P10505817968738943948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381841 (n + 1) - 1

end

end A064105.P10505817968738943948

noncomputable section

/-- A064105: 2nd column of 3rd-order Zeckendorf array A136189.

Offset 1, canonical program `A064105.P10505817968738943948`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064105 (n : ℕ) : ℤ :=
  A064105.P10505817968738943948.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064105.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064767.P2296420655602066237

`A000010(n+1)*A011785(n+1)`
-/

namespace A064767.P2296420655602066237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A011785 (n + 1)

end

end A064767.P2296420655602066237

noncomputable section

/-- A064767: Order of automorphism group of the group C_n X C_n X C_n (where C_n is the cyclic group of order n).

Offset 1, canonical program `A064767.P2296420655602066237`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064767 (n : ℕ) : ℤ :=
  A064767.P2296420655602066237.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064767.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068311.P10657413237512697143

`A003415(A000142(n))`
-/

namespace A068311.P10657413237512697143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000142 n).toNat

end

end A068311.P10657413237512697143

noncomputable section

/-- A068311: Arithmetic derivative of n!.

Offset 0, canonical program `A068311.P10657413237512697143`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068311 (n : ℕ) : ℤ :=
  A068311.P10657413237512697143.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068311.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068312.P1379280089161861834

`A003415(A000217(n))`
-/

namespace A068312.P1379280089161861834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000217 n).toNat

end

end A068312.P1379280089161861834

noncomputable section

/-- A068312: Arithmetic derivative of triangular numbers.

Offset 0, canonical program `A068312.P1379280089161861834`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068312 (n : ℕ) : ℤ :=
  A068312.P1379280089161861834.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068312.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068327.P16591089257582404943

`n^n*A003415(n)`
-/

namespace A068327.P16591089257582404943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A003415 n

end

end A068327.P16591089257582404943

noncomputable section

/-- A068327: Arithmetic derivative of n^n.

Offset 0, canonical program `A068327.P16591089257582404943`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068327 (n : ℕ) : ℤ :=
  A068327.P16591089257582404943.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068327.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068328.P3336057925348697650

`A003415(A005117(n+1))`
-/

namespace A068328.P3336057925348697650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A005117 (n + 1)).toNat

end

end A068328.P3336057925348697650

noncomputable section

/-- A068328: Arithmetic derivatives of the squarefree numbers.

Offset 1, canonical program `A068328.P3336057925348697650`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068328 (n : ℕ) : ℤ :=
  A068328.P3336057925348697650.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068328.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068329.P15819269738925584645

`A003415(A000045(n+1))`
-/

namespace A068329.P15819269738925584645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000045 (n + 1)).toNat

end

end A068329.P15819269738925584645

noncomputable section

/-- A068329: Arithmetic derivative of Fibonacci numbers > 0.

Offset 1, canonical program `A068329.P15819269738925584645`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068329 (n : ℕ) : ℤ :=
  A068329.P15819269738925584645.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068346.P16736836852944168196

`A003415(A003415(n))`
-/

namespace A068346.P16736836852944168196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003415 n).toNat

end

end A068346.P16736836852944168196

noncomputable section

/-- A068346: a(n) = n'' = second arithmetic derivative of n.

Offset 0, canonical program `A068346.P16736836852944168196`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068346 (n : ℕ) : ℤ :=
  A068346.P16736836852944168196.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068346.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068719.P3996091434166805245

`n+1+2*A003415(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A068719.P3996091434166805245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + 2 * A003415 (n + 1)

end

end A068719.P3996091434166805245

noncomputable section

/-- A068719: Arithmetic derivative of even numbers: a(n) = n+2*A003415(n).

Offset 1, canonical program `A068719.P3996091434166805245`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068719 (n : ℕ) : ℤ :=
  A068719.P3996091434166805245.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068719.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068720.P10763001539119825383

`2*(n+1)*A003415(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A068720.P10763001539119825383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A003415 (n + 1)

end

end A068720.P10763001539119825383

noncomputable section

/-- A068720: Arithmetic derivative of squares: a(n) = 2*n*A003415(n).

Offset 1, canonical program `A068720.P10763001539119825383`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068720 (n : ℕ) : ℤ :=
  A068720.P10763001539119825383.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068720.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068721.P7722963444883938624

`3*(n+1)²*A003415(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A068721.P7722963444883938624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) ^ 2 : ℤ) * A003415 (n + 1)

end

end A068721.P7722963444883938624

noncomputable section

/-- A068721: Arithmetic derivative of cubes: a(n) = 3*n^2*A003415(n).

Offset 1, canonical program `A068721.P7722963444883938624`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068721 (n : ℕ) : ℤ :=
  A068721.P7722963444883938624.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068721.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068981.P17257054354611065176

`A003415(A033286(n+1))`
-/

namespace A068981.P17257054354611065176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A033286 (n + 1)).toNat

end

end A068981.P17257054354611065176

noncomputable section

/-- A068981: Arithmetic derivative of n*prime(n).

Offset 1, canonical program `A068981.P17257054354611065176`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068981 (n : ℕ) : ℤ :=
  A068981.P17257054354611065176.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068981.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071042.P13851763813653764625

`n+A048967(n)`
-/

namespace A071042.P13851763813653764625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A048967 n

end

end A071042.P13851763813653764625

noncomputable section

/-- A071042: Number of 0's in n-th row of triangle in A070886.

Offset 0, canonical program `A071042.P13851763813653764625`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071042 (n : ℕ) : ℤ :=
  A071042.P13851763813653764625.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071042.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072079.P16858641240834044496

`A000203(A065331(n+1))`
-/

namespace A072079.P16858641240834044496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A065331 (n + 1)).toNat

end

end A072079.P16858641240834044496

noncomputable section

/-- A072079: Sum of 3-smooth divisors of n.

Offset 1, canonical program `A072079.P16858641240834044496`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072079 (n : ℕ) : ℤ :=
  A072079.P16858641240834044496.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072079.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A074722.P12081842338448570660

`∑{d}[n+1, A008683(#)*A206369((n+1)/#)]`
-/

namespace A074722.P12081842338448570660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A206369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A074722.P12081842338448570660

noncomputable section

/-- A074722: a(n) = Sum_{d divides n} phi(n/d)*(-1)^bigomega(d).

Offset 1, canonical program `A074722.P12081842338448570660`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074722 (n : ℕ) : ℤ :=
  A074722.P12081842338448570660.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074722.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076359.P1841337420977660474

`A038110(A036234(n+1))`
-/

namespace A076359.P1841337420977660474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038110 (A036234 (n + 1)).toNat

end

end A076359.P1841337420977660474

noncomputable section

/-- A076359: a(n) = denominator(n!/phi(n!)).

Offset 1, canonical program `A076359.P1841337420977660474`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076359 (n : ℕ) : ℤ :=
  A076359.P1841337420977660474.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076359.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078323.P5728057834281854607

`A003415(A078310(n+1))`
-/

namespace A078323.P5728057834281854607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A078310 (n + 1)).toNat

end

end A078323.P5728057834281854607

noncomputable section

/-- A078323: Arithmetic derivative of n*rad(n)+1, where rad = A007947 (squarefree kernel).

Offset 1, canonical program `A078323.P5728057834281854607`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078323 (n : ℕ) : ℤ :=
  A078323.P5728057834281854607.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078323.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078456.P5711794782262617263

`A117494(A002110(n+1))`
-/

namespace A078456.P5711794782262617263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117494 (A002110 (n + 1)).toNat

end

end A078456.P5711794782262617263

noncomputable section

/-- A078456: Number of numbers less than prime(1)*...*prime(n) having exactly one prime factor among (prime(1),...,prime(n)) where prime(n) is the n-th prime.

Offset 1, canonical program `A078456.P5711794782262617263`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078456 (n : ℕ) : ℤ :=
  A078456.P5711794782262617263.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078456.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079094.P5860095368831372493

`A003415(A079079(n+1))`
-/

namespace A079094.P5860095368831372493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A079079 (n + 1)).toNat

end

end A079094.P5860095368831372493

noncomputable section

/-- A079094: Arithmetic derivative of (prime(n)+1)*(prime(n+1)+1)/4.

Offset 1, canonical program `A079094.P5860095368831372493`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079094 (n : ℕ) : ℤ :=
  A079094.P5860095368831372493.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079094.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081320.P2919973011229880739

`A065331(A000045(n+1))`
-/

namespace A081320.P2919973011229880739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (A000045 (n + 1)).toNat

end

end A081320.P2919973011229880739

noncomputable section

/-- A081320: Largest 3-smooth divisor of n-th Fibonacci number.

Offset 1, canonical program `A081320.P2919973011229880739`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081320 (n : ℕ) : ℤ :=
  A081320.P2919973011229880739.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081320.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082392.P13734256271788639875

`2^A025480(n)`
-/

namespace A082392.P13734256271788639875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025480 n : ℤ)

end

end A082392.P13734256271788639875

noncomputable section

/-- A082392: Expansion of (1/x) * Sum_{k>=0} x^2^k / (1 - 2*x^2^(k+1)).

Offset 0, canonical program `A082392.P13734256271788639875`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082392 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082392.P13734256271788639875.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082392.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007814.P13537437864234730737

`A001511(n+1)-1`
-/

namespace A007814.P13537437864234730737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) - 1

end

end A007814.P13537437864234730737

noncomputable section

/-- A007814: Exponent of highest power of 2 dividing n, a.k.a. the binary carry sequence, the ruler sequence, or the 2-adic valuation of n.

Offset 1, canonical program `A007814.P13537437864234730737`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A007814.anchor (n : ℕ) (hn : 1 ≤ n) : A007814 n = (padicValNat 2 n : ℕ)` in `Proof.A007.A007814`. -/
def A007814 (n : ℕ) : ℤ :=
  A007814.P13537437864234730737.a (n - 1)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A007814.anchor (n : ℕ) (hn : 1 ≤ n) : A007814 n = (padicValNat 2 n : ℕ)` in `Proof.A007.A007814`. -/
def A007814.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A008441.P257068461411472066

`A002654(4*n+1)`
-/

namespace A008441.P257068461411472066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (4 * n + 1)

end

end A008441.P257068461411472066

noncomputable section

/-- A008441: Number of ordered ways of writing n as the sum of 2 triangular numbers.

Offset 0, canonical program `A008441.P257068461411472066`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008441 (n : ℕ) : ℤ :=
  A008441.P257068461411472066.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008441.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035154.P17971849599840028777

`A002654(n+1)+A002654(3*(n+1))`
-/

namespace A035154.P17971849599840028777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) + A002654 (3 * (n + 1))

end

end A035154.P17971849599840028777

noncomputable section

/-- A035154: a(n) = Sum_{d|n} Kronecker(-36, d).

Offset 1, canonical program `A035154.P17971849599840028777`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035154 (n : ℕ) : ℤ :=
  A035154.P17971849599840028777.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035154.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035263.P6825362395192920526

`A000035(A001511(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A035263.P6825362395192920526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001511 (n + 1)).toNat

end

end A035263.P6825362395192920526

noncomputable section

/-- A035263: Trajectory of 1 under the morphism 0 -> 11, 1 -> 10; parity of 2-adic valuation of 2n: a(n) = A000035(A001511(n)).

Offset 1, canonical program `A035263.P6825362395192920526`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000035(A001511(n+1))` (program `A035263.P6825362395192920526`, by `A035263.P6825362395192920526.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A035263 (n : ℕ) : ℤ :=
  A035263.P6825362395192920526.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000035(A001511(n+1))` (program `A035263.P6825362395192920526`, by `A035263.P6825362395192920526.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A035263.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A056624.P6960691784658607954

`2^A162641(n+1)`
-/

namespace A056624.P6960691784658607954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A162641 (n + 1) : ℤ)

end

end A056624.P6960691784658607954

noncomputable section

/-- A056624: Number of unitary square divisors of n.

Offset 1, canonical program `A056624.P6960691784658607954`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056624 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056624.P6960691784658607954.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056624.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061085.P5924400067001465222

`A019550(n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A061085.P5924400067001465222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019550 (n + 1) : ℚ) / 3

end

end A061085.P5924400067001465222

noncomputable section

/-- A061085: a(n) = A019550(n) / 3.

Offset 1, canonical program `A061085.P5924400067001465222`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061085 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061085.P5924400067001465222.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061085.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063124.P9970457058300728251

`n+1-A331677(n+1)`
-/

namespace A063124.P9970457058300728251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A331677 (n + 1)

end

end A063124.P9970457058300728251

noncomputable section

/-- A063124: a(n) = # { primes p | prime(n) <= p < 2*prime(n) } where prime(n) is the n-th prime.

Offset 1, canonical program `A063124.P9970457058300728251`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063124 (n : ℕ) : ℤ :=
  A063124.P9970457058300728251.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063124.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069895.P6990373946246977319

`2*(n+1)*A001511(n+1)`
-/

namespace A069895.P6990373946246977319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A001511 (n + 1)

end

end A069895.P6990373946246977319

noncomputable section

/-- A069895: 2^a(n) divides (2n)^(2n): exponent of 2 in (2n)^(2n).

Offset 1, canonical program `A069895.P6990373946246977319`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069895 (n : ℕ) : ℤ :=
  A069895.P6990373946246977319.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069895.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A074843.P12507081766603151711

`A020338(A020338(n+1))`
-/

namespace A074843.P12507081766603151711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (A020338 (n + 1)).toNat

end

end A074843.P12507081766603151711

noncomputable section

/-- A074843: Quadruplets: base 10 representation is the juxtaposition of four identical strings.

Offset 1, canonical program `A074843.P12507081766603151711`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074843 (n : ℕ) : ℤ :=
  A074843.P12507081766603151711.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074843.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076959.P2642211357967656886

`A086680(n+1)-A055729(n+1)`
-/

namespace A076959.P2642211357967656886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086680 (n + 1) - A055729 (n + 1)

end

end A076959.P2642211357967656886

noncomputable section

/-- A076959: Number of primes between 3^n and 4^n.

Offset 1, canonical program `A076959.P2642211357967656886`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076959 (n : ℕ) : ℤ :=
  A076959.P2642211357967656886.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076959.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079458.P7897071807418018454

`A204617(n+1)*A062570(n+1)`
-/

namespace A079458.P7897071807418018454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204617 (n + 1) * A062570 (n + 1)

end

end A079458.P7897071807418018454

noncomputable section

/-- A079458: Number of Gaussian integers in a reduced system modulo n.

Offset 1, canonical program `A079458.P7897071807418018454`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079458 (n : ℕ) : ℤ :=
  A079458.P7897071807418018454.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079458.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082490.P13979797646623718017

`2*A007949(n+1)+A000989(n+1)`
-/

namespace A082490.P13979797646623718017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007949 (n + 1) + A000989 (n + 1)

end

end A082490.P13979797646623718017

noncomputable section

/-- A082490: Exponent of highest power of 3 dividing sum(0<=k<n, C(2n,n)).

Offset 1, canonical program `A082490.P13979797646623718017`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082490 (n : ℕ) : ℤ :=
  A082490.P13979797646623718017.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082490.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000020.P13856012455953723901

`A011260(n+1)+C(2, n+2)`
-/

namespace A000020.P13856012455953723901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)

end

end A000020.P13856012455953723901

noncomputable section

/-- A000020: Number of primitive polynomials of degree n over GF(2) (version 2).

Offset 1, canonical program `A000020.P13856012455953723901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A000020 (n : ℕ) : ℤ :=
  A000020.P13856012455953723901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A000020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000190.P2108716071587575808

`(n+1)/A053166(n+1)`
-/

namespace A000190.P2108716071587575808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A053166 (n + 1) : ℚ)

end

end A000190.P2108716071587575808

noncomputable section

/-- A000190: Number of solutions to x^4 == 0 (mod n).

Offset 1, canonical program `A000190.P2108716071587575808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000190 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000190.P2108716071587575808.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002372.P4018651741811705935

`A035026(A060576(n)+n)`
-/

namespace A002372.P4018651741811705935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (A060576 n + (n : ℤ)).toNat

end

end A002372.P4018651741811705935

noncomputable section

/-- A002372: Goldbach conjecture: number of decompositions of 2n into ordered sums of two odd primes.

Offset 1, canonical program `A002372.P4018651741811705935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002372 (n : ℕ) : ℤ :=
  A002372.P4018651741811705935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004169.P3341630025634182314

`lt[2, A080400(n+1)]+1`
-/

namespace A004169.P3341630025634182314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A004169.P3341630025634182314

noncomputable section

/-- A004169: Values of m for which a regular polygon with m sides cannot be constructed with ruler and compass.

Offset 1, canonical program `A004169.P3341630025634182314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004169 (n : ℕ) : ℤ :=
  (A004169.P3341630025634182314.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005599.P10071438624159496024

`∑[A106400(3*n)]-A106400(3*n)`
-/

namespace A005599.P10071438624159496024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A106400 (3 * n)

end

end A005599.P10071438624159496024

noncomputable section

/-- A005599: Running sum of every third term in the {+1,-1}-version of Thue-Morse sequence A010060.

Offset 0, canonical program `A005599.P10071438624159496024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A005599 (n : ℕ) : ℤ :=
  A005599.P10071438624159496024.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A005599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005679.P11330707442932993347

`A000032(Δ[A010059(n)]+1)`
-/

namespace A005679.P11330707442932993347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n + 1).toNat

end

end A005679.P11330707442932993347

noncomputable section

/-- A005679: A squarefree (or Thue-Morse) ternary sequence: closed under a->abc, b->ac, c->b.

Offset 1, canonical program `A005679.P11330707442932993347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005679 (n : ℕ) : ℤ :=
  A005679.P11330707442932993347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008421.P5778810388798117151

`∑[A008420(n)]`
-/

namespace A008421.P5778810388798117151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008421.P5778810388798117151

noncomputable section

/-- A008421: Crystal ball sequence for 10-dimensional cubic lattice.

Offset 0, canonical program `A008421.P5778810388798117151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008421 (n : ℕ) : ℤ :=
  A008421.P5778810388798117151.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008442.P2737165964375719306

`A002654(2*A004525(n)+1)`
-/

namespace A008442.P2737165964375719306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (2 * A004525 n + 1).toNat

end

end A008442.P2737165964375719306

noncomputable section

/-- A008442: Expansion of Jacobi theta constant (theta_2(2z))^2/4.

Offset 1, canonical program `A008442.P2737165964375719306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008442 (n : ℕ) : ℤ :=
  A008442.P2737165964375719306.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008494.P6748544680179378653

`∑[A008493(n)+A000582(n+9)]-A008493(n)`
-/

namespace A008494.P6748544680179378653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008493 n + A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008493 n

end

end A008494.P6748544680179378653

noncomputable section

/-- A008494: Expansion of (1-x^12) / (1-x)^12.

Offset 0, canonical program `A008494.P6748544680179378653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008494 (n : ℕ) : ℤ :=
  A008494.P6748544680179378653.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010368.P5465867737350595894

`ceil(A019564(n)/8)`
-/

namespace A010368.P5465867737350595894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A019564 n : ℚ) / 8⌉

end

end A010368.P5465867737350595894

noncomputable section

/-- A010368: Number of points of L1 norm 2n in Hamming code version of E_8 lattice.

Offset 0, canonical program `A010368.P5465867737350595894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A010368 (n : ℕ) : ℤ :=
  A010368.P5465867737350595894.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A010368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013916.P10696422965911932612

`eq[1, A102862(n+1)]+1`
-/

namespace A013916.P10696422965911932612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102862 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A013916.P10696422965911932612

noncomputable section

/-- A013916: Numbers k such that the sum of the first k primes is prime.

Offset 1, canonical program `A013916.P10696422965911932612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 593 terms. -/
def A013916 (n : ℕ) : ℤ :=
  (A013916.P10696422965911932612.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 593 terms. -/
def A013916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014343.P15416920076803200101

`∑{#}[n, A014342(n-#+1)*A000040(#+1)]`
-/

namespace A014343.P15416920076803200101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A014342 ((n : ℤ) - (k : ℤ) + 1).toNat * A000040 (k + 1)

end

end A014343.P15416920076803200101

noncomputable section

/-- A014343: Three-fold convolution of primes with themselves.

Offset 0, canonical program `A014343.P15416920076803200101`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014342, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014343 (n : ℕ) : ℤ :=
  A014343.P15416920076803200101.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014342, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014343.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A015052.P7462831031410711660

`A053166((n+1)/A053164(n+1))`
-/

namespace A015052.P7462831031410711660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A053164 (n + 1) : ℚ))).toNat

end

end A015052.P7462831031410711660

noncomputable section

/-- A015052: a(n) is the smallest positive integer m such that m^5 is divisible by n.

Offset 1, canonical program `A015052.P7462831031410711660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A015052 (n : ℕ) : ℤ :=
  A015052.P7462831031410711660.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A015052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015809.P1146351289713362011

`A015761(eq[1, A015761(n+1)%2]+1)`
-/

namespace A015809.P1146351289713362011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015761 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015761 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A015809.P1146351289713362011

noncomputable section

/-- A015809: Odd numbers k such that phi(k) | sigma_3(k).

Offset 1, canonical program `A015809.P1146351289713362011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2868 terms. -/
def A015809 (n : ℕ) : ℤ :=
  A015809.P1146351289713362011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2868 terms. -/
def A015809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015847.P12490505763805221842

`A015820(eq[1, gcd(3, A015820(n+1))]+1)`
-/

namespace A015847.P12490505763805221842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A015820 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015820 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A015847.P12490505763805221842

noncomputable section

/-- A015847: Numbers k such that phi(k + 4) | sigma(k) for k not congruent to 0 (mod 3).

Offset 1, canonical program `A015847.P12490505763805221842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9627 terms. -/
def A015847 (n : ℕ) : ℤ :=
  A015847.P12490505763805221842.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9627 terms. -/
def A015847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015848.P1385661765807216180

`∩[A001651(n+1), A015823(n+1)]`
-/

namespace A015848.P1385661765807216180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015848.P1385661765807216180

noncomputable section

/-- A015848: Numbers k such that phi(k + 7) | sigma(k) for k not congruent to 0 (mod 3).

Offset 1, canonical program `A015848.P1385661765807216180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A015848 (n : ℕ) : ℤ :=
  (A015848.P1385661765807216180.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A015848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019299.P4441328656889891956

`or(2*a(n-1), A010059(n))` with `a(0)=1`
-/

namespace A019299.P4441328656889891956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (2 * a (n - 1)) (A010059 n)

end

end A019299.P4441328656889891956

noncomputable section

/-- A019299: First n elements of Thue-Morse sequence A010059 read as a binary number.

Offset 0, canonical program `A019299.P4441328656889891956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A019299 (n : ℕ) : ℤ :=
  A019299.P4441328656889891956.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A019299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022420.P7849113528763956981

`A374359(n+1)+A022418(n)`
-/

namespace A022420.P7849113528763956981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374359 (n + 1) + A022418 n

end

end A022420.P7849113528763956981

noncomputable section

/-- A022420: Kim-sums: "Kimberling sums" K_n + K_9.

Offset 0, canonical program `A022420.P7849113528763956981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022420 (n : ℕ) : ℤ :=
  A022420.P7849113528763956981.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022421.P11986416629293601571

`2*A022418(n)-A022415(n)`
-/

namespace A022421.P11986416629293601571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022418 n - A022415 n

end

end A022421.P11986416629293601571

noncomputable section

/-- A022421: Kim-sums: "Kimberling sums" K_n + K_10.

Offset 0, canonical program `A022421.P11986416629293601571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022421 (n : ℕ) : ℤ :=
  A022421.P11986416629293601571.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023488.P475559876391436152

`A022800(n+1)+A000045(n+2)`
-/

namespace A023488.P475559876391436152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022800 (n + 1) + A000045 (n + 2)

end

end A023488.P475559876391436152

noncomputable section

/-- A023488: a(n) = b(n) + d(n), where b(n) = (n-th Fibonacci number > 2) and d(n) = (n-th number that is 1 or is not a Fibonacci number).

Offset 0, canonical program `A023488.P475559876391436152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A023488 (n : ℕ) : ℤ :=
  A023488.P475559876391436152.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A023488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023498.P15877121129977384704

`A022809(n+1)+Δ[A001911(n)]`
-/

namespace A023498.P15877121129977384704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022809 (n + 1) + (f1 (n + 1) - f1 n)

end

end A023498.P15877121129977384704

noncomputable section

/-- A023498: a(n) = b(n) + d(n), where b(n) = (n-th Lucas number > 3) and d(n) = (n-th number that is 1 or 2 or is not a Fibonacci number).

Offset 0, canonical program `A023498.P15877121129977384704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A023498 (n : ℕ) : ℤ :=
  A023498.P15877121129977384704.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A023498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023566.P3134134062874671733

`∑[A023531(n+1)]-A023565(n+1)`
-/

namespace A023566.P3134134062874671733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023565 (n + 1)

end

end A023566.P3134134062874671733

noncomputable section

/-- A023566: Convolution of A023531 and A014306.

Offset 1, canonical program `A023566.P3134134062874671733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023566 (n : ℕ) : ℤ :=
  A023566.P3134134062874671733.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023604.P11699364128289733079

`∑[A023533(n+1)]-A023565(n+1)`
-/

namespace A023604.P11699364128289733079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023565 (n + 1)

end

end A023604.P11699364128289733079

noncomputable section

/-- A023604: Convolution of A023532 and A023533.

Offset 1, canonical program `A023604.P11699364128289733079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023604 (n : ℕ) : ℤ :=
  A023604.P11699364128289733079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023606.P1527537763866804277

`A007504(n+1)-A023567(n+1)`
-/

namespace A023606.P1527537763866804277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - A023567 (n + 1)

end

end A023606.P1527537763866804277

noncomputable section

/-- A023606: Convolution of A023532 and primes.

Offset 1, canonical program `A023606.P1527537763866804277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023606 (n : ℕ) : ℤ :=
  A023606.P1527537763866804277.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023669.P13372095806667223194

`A023666(n+1)+A023544(n+1)`
-/

namespace A023669.P13372095806667223194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023666 (n + 1) + A023544 (n + 1)

end

end A023669.P13372095806667223194

noncomputable section

/-- A023669: Convolution of A001950 and A014306.

Offset 1, canonical program `A023669.P13372095806667223194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023669 (n : ℕ) : ℤ :=
  A023669.P13372095806667223194.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023703.P2710146166391411195

`eq[5, dr(A117942(n))]`
-/

namespace A023703.P2710146166391411195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A117942 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023703.P2710146166391411195

noncomputable section

/-- A023703: Numbers with exactly 5 2's in their ternary expansion.

Offset 1, canonical program `A023703.P2710146166391411195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. -/
def A023703 (n : ℕ) : ℤ :=
  (A023703.P2710146166391411195.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. -/
def A023703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023704.P10335352415820928381

`eq[8, sqrt(A117592(n))]`
-/

namespace A023704.P10335352415820928381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A117592 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A023704.P10335352415820928381

noncomputable section

/-- A023704: Numbers with exactly 6 2's in their ternary expansion.

Offset 1, canonical program `A023704.P10335352415820928381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A023704 (n : ℕ) : ℤ :=
  (A023704.P10335352415820928381.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A023704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023705.P247471515550585891

`record[A263132(val(n+1, 4)²+1)+n]`
-/

namespace A023705.P247471515550585891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263132 (SequenceMachineLib.valuation (n + 1) 4 ^ 2 + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023705.P247471515550585891

noncomputable section

/-- A023705: Numbers with no 0's in base-4 expansion.

Offset 1, canonical program `A023705.P247471515550585891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9840 terms. -/
def A023705 (n : ℕ) : ℤ :=
  A023705.P247471515550585891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9840 terms. -/
def A023705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023838.P16621969469305383869

`A023837(n+1)-A001222(4*(n+1)+1)+A001222(n+1)`
-/

namespace A023838.P16621969469305383869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023837 (n + 1) - A001222 (4 * (n + 1) + 1) + A001222 (n + 1)

end

end A023838.P16621969469305383869

noncomputable section

/-- A023838: Sum of exponents in prime-power factorization of C(5n,n-1).

Offset 1, canonical program `A023838.P16621969469305383869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023837, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023838 (n : ℕ) : ℤ :=
  A023838.P16621969469305383869.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023837, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023838.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023843.P15699419849181094773

`A023837(n+1)+A001222(4*(n+1))-A001222(n+2)`
-/

namespace A023843.P15699419849181094773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023837 (n + 1) + A001222 (4 * (n + 1)) - A001222 (n + 2)

end

end A023843.P15699419849181094773

noncomputable section

/-- A023843: Sum of exponents in prime-power factorization of C(5n,n+1).

Offset 1, canonical program `A023843.P15699419849181094773`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023837, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023843 (n : ℕ) : ℤ :=
  A023843.P15699419849181094773.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023837, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023843.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023849.P13620136702210670755

`A023848(n+1)-A001222(3*(n+1)+2)+A001222(2*(n+1)-1)`
-/

namespace A023849.P13620136702210670755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023848 (n + 1) - A001222 (3 * (n + 1) + 2) + A001222 (2 * (n + 1) - 1)

end

end A023849.P13620136702210670755

noncomputable section

/-- A023849: Sum of exponents in prime-power factorization of binomial(5n, 2n-2).

Offset 1, canonical program `A023849.P13620136702210670755`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023848, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023849 (n : ℕ) : ℤ :=
  A023849.P13620136702210670755.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023848, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023849.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023851.P10695035649832230325

`A023850(n+1)+A001222(3*(n+1)-1)-A001222(2*(n+1)+2)`
-/

namespace A023851.P10695035649832230325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023850 (n + 1) + A001222 (3 * (n + 1) - 1) - A001222 (2 * (n + 1) + 2)

end

end A023851.P10695035649832230325

noncomputable section

/-- A023851: Sum of exponents in prime-power factorization of binomial(5n, 2n+2).

Offset 1, canonical program `A023851.P10695035649832230325`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023850, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023851 (n : ℕ) : ℤ :=
  A023851.P10695035649832230325.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023850, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023851.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024322.P3200699297540897139

`round(ϕ*A024318(n+1))`
-/

namespace A024322.P3200699297540897139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A024318 (n + 1) : ℝ))

end

end A024322.P3200699297540897139

noncomputable section

/-- A024322: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = A023531, t = (F(2), F(3), ...).

Offset 1, canonical program `A024322.P3200699297540897139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A024322 (n : ℕ) : ℤ :=
  A024322.P3200699297540897139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A024322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024367.P9421138909420211441

`A129361(n)-A024318(n+1)`
-/

namespace A024367.P9421138909420211441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129361 n - A024318 (n + 1)

end

end A024367.P9421138909420211441

noncomputable section

/-- A024367: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = A023532, t = (Fibonacci numbers).

Offset 1, canonical program `A024367.P9421138909420211441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A024367 (n : ℕ) : ℤ :=
  A024367.P9421138909420211441.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A024367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024368.P14074964710947229877

`A024314(n+1)-(A024319(n+1)+A024310(n+1))`
-/

namespace A024368.P14074964710947229877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024314 (n + 1) - (A024319 (n + 1) + A024310 (n + 1))

end

end A024368.P14074964710947229877

noncomputable section

/-- A024368: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = A023532, t = (Lucas numbers).

Offset 1, canonical program `A024368.P14074964710947229877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A024368 (n : ℕ) : ℤ :=
  A024368.P14074964710947229877.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A024368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024372.P8230407899755117792

`A014255(n)-A024323(n+1)`
-/

namespace A024372.P8230407899755117792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014255 n - A024323 (n + 1)

end

end A024372.P8230407899755117792

noncomputable section

/-- A024372: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = A023532, t = (odd natural numbers).

Offset 1, canonical program `A024372.P8230407899755117792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024372 (n : ℕ) : ℤ :=
  A024372.P8230407899755117792.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024377.P5527400419448658823

`record[A097505(n+1)]-A024328(n+1)`
-/

namespace A024377.P5527400419448658823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A024328 (n + 1)

end

end A024377.P5527400419448658823

noncomputable section

/-- A024377: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = A023532, t = (primes).

Offset 1, canonical program `A024377.P5527400419448658823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 279 terms. -/
def A024377 (n : ℕ) : ℤ :=
  A024377.P5527400419448658823.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 279 terms. -/
def A024377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024448.P16753542507585520483

`∑[A000040(n+3)*A024447(n+2)]`
-/

namespace A024448.P16753542507585520483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) * A024447 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024448.P16753542507585520483

noncomputable section

/-- A024448: a(n) = 3rd elementary symmetric function of the first n+2 primes.

Offset 1, canonical program `A024448.P16753542507585520483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A024448 (n : ℕ) : ℤ :=
  A024448.P16753542507585520483.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A024448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024452.P18220208329630154241

`floor(A024447(n+2)/A007504(n+2))`
-/

namespace A024452.P18220208329630154241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024447 (n + 2) : ℚ) / (A007504 (n + 2) : ℚ)⌋

end

end A024452.P18220208329630154241

noncomputable section

/-- A024452: a(n) = [ (2nd elementary symmetric function of P(n))/(first elementary symmetric function of P(n)) ], where P(n) = {first n+1 primes}.

Offset 1, canonical program `A024452.P18220208329630154241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A024452 (n : ℕ) : ℤ :=
  A024452.P18220208329630154241.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A024452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024522.P10251569603433964511

`A024447(n+1)+∑[A000040(n+1)]`
-/

namespace A024522.P10251569603433964511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024447 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024522.P10251569603433964511

noncomputable section

/-- A024522: a(n) = 2nd elementary symmetric function of {1, prime(1), prime(2), ..., prime(n-1)}, where prime(0) = 1.

Offset 2, canonical program `A024522.P10251569603433964511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024522 (n : ℕ) : ℤ :=
  A024522.P10251569603433964511.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024526.P216027257778899538

`∑[A005722(n+1)]+n*A024450(n+1)-A065595(n+1)`
-/

namespace A024526.P216027257778899538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) * A024450 (n + 1) - A065595 (n + 1))

end

end A024526.P216027257778899538

noncomputable section

/-- A024526: a(n) = Sum_{0 <= i < j <= n} (prime(j) - prime(i))^2, where prime(0) = 1.

Offset 1, canonical program `A024526.P216027257778899538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024526 (n : ℕ) : ℤ :=
  A024526.P216027257778899538.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024683.P12088844706529340304

`A062303(n+1)-A060576(n)`
-/

namespace A024683.P12088844706529340304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062303 (n + 1) - A060576 n

end

end A024683.P12088844706529340304

noncomputable section

/-- A024683: a(n) is the number of ways prime(n) is a sum of two composite numbers r,s satisfying r < s.

Offset 1, canonical program `A024683.P12088844706529340304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024683 (n : ℕ) : ℤ :=
  A024683.P12088844706529340304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024858.P7566223629686683624

`A023864(n+1)+2*A023860(n+1)`
-/

namespace A024858.P7566223629686683624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023864 (n + 1) + 2 * A023860 (n + 1)

end

end A024858.P7566223629686683624

noncomputable section

/-- A024858: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (natural numbers), t = (Lucas numbers).

Offset 2, canonical program `A024858.P7566223629686683624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A024858 (n : ℕ) : ℤ :=
  A024858.P7566223629686683624.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A024858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024861.P6522082039831877776

`A023864(n+1)+A023860(n+1)`
-/

namespace A024861.P6522082039831877776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023864 (n + 1) + A023860 (n + 1)

end

end A024861.P6522082039831877776

noncomputable section

/-- A024861: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (natural numbers), t = (F(2), F(3), F(4), ... ).

Offset 2, canonical program `A024861.P6522082039831877776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A024861 (n : ℕ) : ℤ :=
  A024861.P6522082039831877776.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A024861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024931.P12137656920575684940

`∑[A008619(n)-A294015(A152271(n))]`
-/

namespace A024931.P12137656920575684940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A294015 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024931.P12137656920575684940

noncomputable section

/-- A024931: a(n) = sum of remainders of n mod 2,4,6,...,2k, where k = [ n/2 ].

Offset 2, canonical program `A024931.P12137656920575684940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024931 (n : ℕ) : ℤ :=
  A024931.P12137656920575684940.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025126.P6333936916008910061

`∑[A024692(n+1)-A025125(n+1)]`
-/

namespace A025126.P6333936916008910061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024692 (n + 1) - A025125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025126.P6333936916008910061

noncomputable section

/-- A025126: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n-k+1), where k = floor(n/2), s = A023533, t = A014306.

Offset 1, canonical program `A025126.P6333936916008910061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025126 (n : ℕ) : ℤ :=
  A025126.P6333936916008910061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025304.P15644327718625747142

`eq[6, A002654(A028310(n))]`
-/

namespace A025304.P15644327718625747142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025304.P15644327718625747142

noncomputable section

/-- A025304: Numbers that are the sum of 2 distinct nonzero squares in exactly 3 ways.

Offset 1, canonical program `A025304.P15644327718625747142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A025304 (n : ℕ) : ℤ :=
  (A025304.P15644327718625747142.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A025304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026026.P10474121505985252545

`Δ[A026029(n)]-A099376(n)`
-/

namespace A026026.P10474121505985252545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099376 n

end

end A026026.P10474121505985252545

noncomputable section

/-- A026026: a(n) = number of (s(0), s(1), ..., s(2*n-1)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n, s(0) = 3, s(2*n-1) = 4. Also a(n) = T(2*n-1,n-1), where T is defined in A026022.

Offset 2, canonical program `A026026.P10474121505985252545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A026026 (n : ℕ) : ℤ :=
  A026026.P10474121505985252545.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A026026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026030.P8132233946044282258

`Δ[A026029(n+1)-A002057(n)]`
-/

namespace A026030.P8132233946044282258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026029 (n + 1) - A002057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026030.P8132233946044282258

noncomputable section

/-- A026030: a(n) = T(2n,n-1), where T is defined in A026022.

Offset 1, canonical program `A026030.P8132233946044282258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A026030 (n : ℕ) : ℤ :=
  A026030.P8132233946044282258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A026030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026085.P12262307412384960621

`Δ[A026069(n+3)]`
-/

namespace A026085.P12262307412384960621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026069 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026085.P12262307412384960621

noncomputable section

/-- A026085: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0, |s(i) - s(i-1)| = 1 for i = 1,2,3; |s(i) - s(i-1)| <= 1 for i >= 4, s(n) = 2. Also a(n) = T(n,n-2), where T is the array defined in A026082.

Offset 4, canonical program `A026085.P12262307412384960621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A026085 (n : ℕ) : ℤ :=
  A026085.P12262307412384960621.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A026085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026234.P1482690558561075150

`A022797(A026233(n+1))-(n+1)`
-/

namespace A026234.P1482690558561075150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022797 (A026233 (n + 1)).toNat - (n + 1 : ℤ)

end

end A026234.P1482690558561075150

noncomputable section

/-- A026234: In the sequence of positive integers, swap the k-th prime and k-th nonprime, for k = 1,2,3,...

Offset 1, canonical program `A026234.P1482690558561075150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026234 (n : ℕ) : ℤ :=
  A026234.P1482690558561075150.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026353.P11254182584666036756

`abs(A001489(n)-A026271(n+1))`
-/

namespace A026353.P11254182584666036756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n - A026271 (n + 1)|

end

end A026353.P11254182584666036756

noncomputable section

/-- A026353: a(n) = sum of the numbers between the two n's in A026350.

Offset 2, canonical program `A026353.P11254182584666036756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026353 (n : ℕ) : ℤ :=
  A026353.P11254182584666036756.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026679.P8036760827075094088

`∑[A026677(n)]`
-/

namespace A026679.P8036760827075094088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026679.P8036760827075094088

noncomputable section

/-- A026679: Sum{T(i,j)}, 0<=i<=n, 0<=j<=n, T given by A026670.

Offset 0, canonical program `A026679.P8036760827075094088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A026679 (n : ℕ) : ℤ :=
  A026679.P8036760827075094088.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A026679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026733.P9218894337222086257

`abs(Δ[A026677(abs(1-n))])`
-/

namespace A026733.P9218894337222086257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026677 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A026733.P9218894337222086257

noncomputable section

/-- A026733: a(n) = Sum_{k=0..floor(n/2)} T(n,k), T given by A026725.

Offset 0, canonical program `A026733.P9218894337222086257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A026733 (n : ℕ) : ℤ :=
  A026733.P9218894337222086257.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A026733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027259.P7321742831238855292

`A026069(2*(n+2))`
-/

namespace A027259.P7321742831238855292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026069 (2 * (n + 2))

end

end A027259.P7321742831238855292

noncomputable section

/-- A027259: a(n) = Sum_{k=0..2n-2} T(n,k) * T(n,k+2), with T given by A025177.

Offset 2, canonical program `A027259.P7321742831238855292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A027259 (n : ℕ) : ℤ :=
  A027259.P7321742831238855292.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A027259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027695.P1855430691776300506

`A011260(A028310(n))*A053285(n)`
-/

namespace A027695.P1855430691776300506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (A028310 n).toNat * A053285 n

end

end A027695.P1855430691776300506

noncomputable section

/-- A027695: Number of primitive polynomials of degree n over GF(4).

Offset 0, canonical program `A027695.P1855430691776300506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A027695 (n : ℕ) : ℤ :=
  A027695.P1855430691776300506.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A027695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027708.P12884605413985297978

`A027698(eq[1, Δ[A027698(n+1)]]+1)`
-/

namespace A027708.P12884605413985297978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027698 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A027708.P12884605413985297978

noncomputable section

/-- A027708: n-th prime has odd number of 1's in binary expansion and (n+1)st prime also has odd number of 1's.

Offset 0, canonical program `A027708.P12884605413985297978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5296 terms. -/
def A027708 (n : ℕ) : ℤ :=
  A027708.P12884605413985297978.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5296 terms. -/
def A027708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029371.P15358491422474167899

`A029238(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029371.P15358491422474167899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029238 n - a (n - 2)

end

end A029371.P15358491422474167899

noncomputable section

/-- A029371: Expansion of 1/((1-x^4)*(1-x^8)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029371.P15358491422474167899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029371 (n : ℕ) : ℤ :=
  A029371.P15358491422474167899.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029375.P12310892285696023417

`A029242(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029375.P12310892285696023417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029242 n - a (n - 2)

end

end A029375.P12310892285696023417

noncomputable section

/-- A029375: Expansion of 1/((1-x^4)*(1-x^9)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029375.P12310892285696023417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029375 (n : ℕ) : ℤ :=
  A029375.P12310892285696023417.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029422.P14037114085577055039

`A029315(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029422.P14037114085577055039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029315 n - a (n - 3)

end

end A029422.P14037114085577055039

noncomputable section

/-- A029422: Expansion of 1/((1-x^6)*(1-x^7)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029422.P14037114085577055039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029422 (n : ℕ) : ℤ :=
  A029422.P14037114085577055039.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029434.P6149917277553803081

`A029365(n)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A029434.P6149917277553803081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  A029365 n - a (n - 4)

end

end A029434.P6149917277553803081

noncomputable section

/-- A029434: Expansion of 1/((1-x^7)(1-x^8)(1-x^9)(1-x^12)).

Offset 0, canonical program `A029434.P6149917277553803081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029434 (n : ℕ) : ℤ :=
  A029434.P6149917277553803081.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029669.P12114681955380181384

`A029655(eq[1, A029655(n)%2])`
-/

namespace A029669.P12114681955380181384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029655 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029669.P12114681955380181384

noncomputable section

/-- A029669: Odd numbers in the (2,1)-Pascal triangle A029653.

Offset 0, canonical program `A029669.P12114681955380181384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2283 terms. -/
def A029669 (n : ℕ) : ℤ :=
  A029669.P12114681955380181384.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2283 terms. -/
def A029669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029882.P12571486424567980157

`∑{d}[n+1, A001285(#-1)]`
-/

namespace A029882.P12571486424567980157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001285 (d - 1)

end

end A029882.P12571486424567980157

noncomputable section

/-- A029882: Inverse Moebius transform of Thue-Morse sequence A001285.

Offset 0, canonical program `A029882.P12571486424567980157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029882 (n : ℕ) : ℤ :=
  A029882.P12571486424567980157.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031464.P2183421695892632133

`eq[A010717(A000523(n+1)), A037861(n)]`
-/

namespace A031464.P2183421695892632133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010717 (A000523 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031464.P2183421695892632133

noncomputable section

/-- A031464: Numbers whose base-4 representation has 3 more 0's than 3's.

Offset 1, canonical program `A031464.P2183421695892632133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 504 terms. -/
def A031464 (n : ℕ) : ℤ :=
  (A031464.P2183421695892632133.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 504 terms. -/
def A031464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032287.P15373671326478497758

`(A032198(n+1)+A308747(n+1))/2`
-/

namespace A032287.P15373671326478497758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032198 (n + 1) + A308747 (n + 1) : ℚ) / 2

end

end A032287.P15373671326478497758

noncomputable section

/-- A032287: "DIK" (bracelet, indistinct, unlabeled) transform of 1,2,3,4,...

Offset 1, canonical program `A032287.P15373671326478497758`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032198, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032287 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A032287.P15373671326478497758.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032198, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032287.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A032925.P17103236497457502139

`∑[A115716(n)]`
-/

namespace A032925.P17103236497457502139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032925.P17103236497457502139

noncomputable section

/-- A032925: Numbers whose set of base-4 digits is a subset of {1,2}.

Offset 1, canonical program `A032925.P17103236497457502139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032925 (n : ℕ) : ℤ :=
  A032925.P17103236497457502139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033041.P16799287757763172916

`record[or(n+1, A341691(A341691(n)))]`
-/

namespace A033041.P16799287757763172916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A341691 (A341691 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033041.P16799287757763172916

noncomputable section

/-- A033041: Numbers all of whose base 16 digits are odd.

Offset 1, canonical program `A033041.P16799287757763172916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1097 terms. -/
def A033041 (n : ℕ) : ℤ :=
  A033041.P16799287757763172916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1097 terms. -/
def A033041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035162.P985168465731373250

`A051000(2*(n+1))%7`
-/

namespace A035162.P985168465731373250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051000 (2 * (n + 1))) 7

end

end A035162.P985168465731373250

noncomputable section

/-- A035162: Number of positive odd solutions to equation x^2 + 7y^2 = 8n.

Offset 1, canonical program `A035162.P985168465731373250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A035162 (n : ℕ) : ℤ :=
  A035162.P985168465731373250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A035162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035184.P3251018831054104960

`(val(n+1, 2)+1)*A002654(n+1)`
-/

namespace A035184.P3251018831054104960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A002654 (n + 1)

end

end A035184.P3251018831054104960

noncomputable section

/-- A035184: a(n) = Sum_{d|n} Kronecker(-1, d).

Offset 1, canonical program `A035184.P3251018831054104960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035184 (n : ℕ) : ℤ :=
  A035184.P3251018831054104960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035487.P12920524519173018273

`A007067(A007064(n+1))`
-/

namespace A035487.P12920524519173018273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A007064 (n + 1)).toNat

end

end A035487.P12920524519173018273

noncomputable section

/-- A035487: Second column of Stolarsky array.

Offset 1, canonical program `A035487.P12920524519173018273`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007064, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035487 (n : ℕ) : ℤ :=
  A035487.P12920524519173018273.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007064, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035487.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A035510.P10984197623393377271

`A007064(A026355(2*n+1)-A004956(n))`
-/

namespace A035510.P10984197623393377271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (A026355 (2 * n + 1) - A004956 n).toNat

end

end A035510.P10984197623393377271

noncomputable section

/-- A035510: 2nd column of Inverse Stolarsky array.

Offset 0, canonical program `A035510.P10984197623393377271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A035510 (n : ℕ) : ℤ :=
  A035510.P10984197623393377271.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A035510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035606.P15826716796151369121

`∑[2*A035605(n)]-A035605(n)`
-/

namespace A035606.P15826716796151369121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035605 n

end

end A035606.P15826716796151369121

noncomputable section

/-- A035606: Number of points of L1 norm 12 in cubic lattice Z^n.

Offset 0, canonical program `A035606.P15826716796151369121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035606 (n : ℕ) : ℤ :=
  A035606.P15826716796151369121.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035706.P322796382435352986

`∑[2*A008420(n)]-A008420(n)`
-/

namespace A035706.P322796382435352986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008420 n

end

end A035706.P322796382435352986

noncomputable section

/-- A035706: Coordination sequence for 11-dimensional cubic lattice.

Offset 0, canonical program `A035706.P322796382435352986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035706 (n : ℕ) : ℤ :=
  A035706.P322796382435352986.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035747.P14738988222165584094

`A008420(2*n)`
-/

namespace A035747.P14738988222165584094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008420 (2 * n)

end

end A035747.P14738988222165584094

noncomputable section

/-- A035747: Coordination sequence for C_10 lattice.

Offset 0, canonical program `A035747.P14738988222165584094`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008420, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035747 (n : ℕ) : ℤ :=
  A035747.P14738988222165584094.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008420, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035747.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A035757.P14456028133830112634

`A035715(2*n)`
-/

namespace A035757.P14456028133830112634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035715 (2 * n)

end

end A035757.P14456028133830112634

noncomputable section

/-- A035757: Coordination sequence for C_20 lattice.

Offset 0, canonical program `A035757.P14456028133830112634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035757 (n : ℕ) : ℤ :=
  A035757.P14456028133830112634.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035759.P11254806603374259122

`A035717(2*n)`
-/

namespace A035759.P11254806603374259122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035717 (2 * n)

end

end A035759.P11254806603374259122

noncomputable section

/-- A035759: Coordination sequence for C_22 lattice.

Offset 0, canonical program `A035759.P11254806603374259122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035759 (n : ℕ) : ℤ :=
  A035759.P11254806603374259122.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036273.P9570373567943307012

`abs(Δ[A036272(n)])`
-/

namespace A036273.P9570373567943307012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036273.P9570373567943307012

noncomputable section

/-- A036273: Absolute values of differences of A036272.

Offset 0, canonical program `A036273.P9570373567943307012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A036273 (n : ℕ) : ℤ :=
  A036273.P9570373567943307012.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A036273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036348.P10794029547459417967

`∩[2*n, A036347(n+1)]`
-/

namespace A036348.P10794029547459417967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036348.P10794029547459417967

noncomputable section

/-- A036348: Even numbers whose number of odd prime factors is odd (when counted with multiplicity).

Offset 1, canonical program `A036348.P10794029547459417967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. -/
def A036348 (n : ℕ) : ℤ :=
  (A036348.P10794029547459417967.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. -/
def A036348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036997.P9898190539809888575

`A001221(n+1)+A037228(n+1)-1`
-/

namespace A036997.P9898190539809888575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A037228 (n + 1) - 1)

end

end A036997.P9898190539809888575

noncomputable section

/-- A036997: Number of composite numbers <= n and relatively prime to n.

Offset 1, canonical program `A036997.P9898190539809888575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036997 (n : ℕ) : ℤ :=
  A036997.P9898190539809888575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037301.P11869485949752062609

`eq[0, A180017(n)]`
-/

namespace A037301.P11869485949752062609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037301.P11869485949752062609

noncomputable section

/-- A037301: Numbers whose base-2 and base-3 expansions have the same digit sum.

Offset 1, canonical program `A037301.P11869485949752062609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1290 terms. -/
def A037301 (n : ℕ) : ℤ :=
  (A037301.P11869485949752062609.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1290 terms. -/
def A037301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037800.P4480434957642420409

`(A069010(n)+n)%(n+1)`
-/

namespace A037800.P4480434957642420409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069010 n + (n : ℤ)) (n + 1 : ℤ)

end

end A037800.P4480434957642420409

noncomputable section

/-- A037800: Number of occurrences of 01 in the binary expansion of n.

Offset 0, canonical program `A037800.P4480434957642420409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037800 (n : ℕ) : ℤ :=
  A037800.P4480434957642420409.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038064.P12333888609492393518

`∑{d}[n+1, A008683(#)*A343465((n+1)/#)]`
-/

namespace A038064.P12333888609492393518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A343465 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038064.P12333888609492393518

noncomputable section

/-- A038064: Product_{k>=1} 1/(1 - x^k)^a(k) = 1 + 3x.

Offset 1, canonical program `A038064.P12333888609492393518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A038064 (n : ℕ) : ℤ :=
  A038064.P12333888609492393518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A038064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038065.P11047722364589703808

`∑{d}[n+1, A008683(#)*A343466((n+1)/#)]`
-/

namespace A038065.P11047722364589703808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A343466 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038065.P11047722364589703808

noncomputable section

/-- A038065: Product_{k>=1} 1/(1 - x^k)^a(k) = 1 + 4x.

Offset 1, canonical program `A038065.P11047722364589703808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A038065 (n : ℕ) : ℤ :=
  A038065.P11047722364589703808.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A038065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038066.P9473377438778066105

`∑{d}[n+1, A008683(#)*A343467((n+1)/#)]`
-/

namespace A038066.P9473377438778066105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A343467 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038066.P9473377438778066105

noncomputable section

/-- A038066: Product_{k>=1} 1/(1 - x^k)^a(k) = 1 + 5x.

Offset 1, canonical program `A038066.P9473377438778066105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A038066 (n : ℕ) : ℤ :=
  A038066.P9473377438778066105.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A038066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038069.P16380306721213576042

`∑{d}[n+1, A087003(#)*A343466((n+1)/#)]`
-/

namespace A038069.P16380306721213576042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A343466 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038069.P16380306721213576042

noncomputable section

/-- A038069: Product_{k>=1} ((1 + x^k)^a(k)) = 1 + 4x.

Offset 1, canonical program `A038069.P16380306721213576042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A038069 (n : ℕ) : ℤ :=
  A038069.P16380306721213576042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A038069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038070.P1376458268860561211

`∑{d}[n+1, A087003(#)*A343467((n+1)/#)]`
-/

namespace A038070.P1376458268860561211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A343467 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038070.P1376458268860561211

noncomputable section

/-- A038070: Product_{k>=1} (1+x^k)^a(k) = 1 + 5x.

Offset 1, canonical program `A038070.P1376458268860561211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A038070 (n : ℕ) : ℤ :=
  A038070.P1376458268860561211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A038070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038228.P4054419155064048625

`A013622(n)*A059268(n)`
-/

namespace A038228.P4054419155064048625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013622 n * A059268 n

end

end A038228.P4054419155064048625

noncomputable section

/-- A038228: Triangle whose (i,j)-th entry is binomial(i,j)*3^(i-j)*10^j.

Offset 0, canonical program `A038228.P4054419155064048625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4251 terms. -/
def A038228 (n : ℕ) : ℤ :=
  A038228.P4054419155064048625.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4251 terms. -/
def A038228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038230.P9041281356629012167

`A038224(n)*A059268(n)`
-/

namespace A038230.P9041281356629012167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038224 n * A059268 n

end

end A038230.P9041281356629012167

noncomputable section

/-- A038230: Triangle whose (i,j)-th entry is binomial(i,j)*3^(i-j)*12^j.

Offset 0, canonical program `A038230.P9041281356629012167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3807 terms. -/
def A038230 (n : ℕ) : ℤ :=
  A038230.P9041281356629012167.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3807 terms. -/
def A038230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038232.P2014966778022240931

`A038231(n)*A059268(n)`
-/

namespace A038232.P2014966778022240931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 n * A059268 n

end

end A038232.P2014966778022240931

noncomputable section

/-- A038232: Triangle whose (i,j)-th entry is binomial(i,j)*4^(i-j)*2^j.

Offset 0, canonical program `A038232.P2014966778022240931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8557 terms. -/
def A038232 (n : ℕ) : ℤ :=
  A038232.P2014966778022240931.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8557 terms. -/
def A038232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038246.P15260867033814283851

`A038244(n)*A059268(n)`
-/

namespace A038246.P15260867033814283851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038244 n * A059268 n

end

end A038246.P15260867033814283851

noncomputable section

/-- A038246: Triangle whose (i,j)-th entry is binomial(i,j)*5^(i-j)*4^j.

Offset 0, canonical program `A038246.P15260867033814283851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5716 terms. -/
def A038246 (n : ℕ) : ℤ :=
  A038246.P15260867033814283851.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5716 terms. -/
def A038246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038252.P12906081018445517339

`A038247(n)*A059268(n)`
-/

namespace A038252.P12906081018445517339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038247 n * A059268 n

end

end A038252.P12906081018445517339

noncomputable section

/-- A038252: Triangle whose (i,j)-th entry is binomial(i,j)*5^(i-j)*10^j.

Offset 0, canonical program `A038252.P12906081018445517339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3796 terms. -/
def A038252 (n : ℕ) : ℤ :=
  A038252.P12906081018445517339.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3796 terms. -/
def A038252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038254.P7510998490279946778

`A038248(n)*A059268(n)`
-/

namespace A038254.P7510998490279946778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038248 n * A059268 n

end

end A038254.P7510998490279946778

noncomputable section

/-- A038254: Triangle whose (i,j)-th entry is binomial(i,j)*5^(i-j)*12^j.

Offset 0, canonical program `A038254.P7510998490279946778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3536 terms. -/
def A038254 (n : ℕ) : ℤ :=
  A038254.P7510998490279946778.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3536 terms. -/
def A038254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038256.P10874332263028825232

`A038255(n)*A059268(n)`
-/

namespace A038256.P10874332263028825232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038255 n * A059268 n

end

end A038256.P10874332263028825232

noncomputable section

/-- A038256: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j)*2^j.

Offset 0, canonical program `A038256.P10874332263028825232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6353 terms. -/
def A038256 (n : ℕ) : ℤ :=
  A038256.P10874332263028825232.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6353 terms. -/
def A038256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038264.P12280773742557705400

`A038259(n)*A059268(n)`
-/

namespace A038264.P12280773742557705400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038259 n * A059268 n

end

end A038264.P12280773742557705400

noncomputable section

/-- A038264: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j)*10^j.

Offset 0, canonical program `A038264.P12280773742557705400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3620 terms. -/
def A038264 (n : ℕ) : ℤ :=
  A038264.P12280773742557705400.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3620 terms. -/
def A038264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038268.P54957190970159689

`A027466(n)*A059268(n)`
-/

namespace A038268.P54957190970159689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 n * A059268 n

end

end A038268.P54957190970159689

noncomputable section

/-- A038268: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*2^j.

Offset 0, canonical program `A038268.P54957190970159689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5692 terms. -/
def A038268 (n : ℕ) : ℤ :=
  A038268.P54957190970159689.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5692 terms. -/
def A038268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038272.P15608293931360931004

`A038269(n)*A059268(n)`
-/

namespace A038272.P15608293931360931004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038269 n * A059268 n

end

end A038272.P15608293931360931004

noncomputable section

/-- A038272: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*6^j.

Offset 0, canonical program `A038272.P15608293931360931004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4223 terms. -/
def A038272 (n : ℕ) : ℤ :=
  A038272.P15608293931360931004.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4223 terms. -/
def A038272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038276.P15142727663705026605

`A038271(n)*A059268(n)`
-/

namespace A038276.P15142727663705026605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038271 n * A059268 n

end

end A038276.P15142727663705026605

noncomputable section

/-- A038276: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*10^j.

Offset 0, canonical program `A038276.P15142727663705026605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3525 terms. -/
def A038276 (n : ℕ) : ℤ :=
  A038276.P15142727663705026605.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3525 terms. -/
def A038276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038280.P13941131333894266772

`A038279(n)*A059268(n)`
-/

namespace A038280.P13941131333894266772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038279 n * A059268 n

end

end A038280.P13941131333894266772

noncomputable section

/-- A038280: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*2^j.

Offset 0, canonical program `A038280.P13941131333894266772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5265 terms. -/
def A038280 (n : ℕ) : ℤ :=
  A038280.P13941131333894266772.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5265 terms. -/
def A038280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038292.P13230035069150523367

`A038291(n)*A059268(n)`
-/

namespace A038292.P13230035069150523367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038291 n * A059268 n

end

end A038292.P13230035069150523367

noncomputable section

/-- A038292: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*2^j.

Offset 0, canonical program `A038292.P13230035069150523367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4769 terms. -/
def A038292 (n : ℕ) : ℤ :=
  A038292.P13230035069150523367.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4769 terms. -/
def A038292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038300.P16302804784907082499

`A038295(n)*A059268(n)`
-/

namespace A038300.P16302804784907082499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038295 n * A059268 n

end

end A038300.P16302804784907082499

noncomputable section

/-- A038300: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*10^j.

Offset 0, canonical program `A038300.P16302804784907082499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3272 terms. -/
def A038300 (n : ℕ) : ℤ :=
  A038300.P16302804784907082499.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3272 terms. -/
def A038300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038306.P5805800662738392835

`A038304(n)*A059268(n)`
-/

namespace A038306.P5805800662738392835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038304 n * A059268 n

end

end A038306.P5805800662738392835

noncomputable section

/-- A038306: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*4^j.

Offset 0, canonical program `A038306.P5805800662738392835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4022 terms. -/
def A038306 (n : ℕ) : ℤ :=
  A038306.P5805800662738392835.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4022 terms. -/
def A038306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038312.P16927072279910717967

`A038307(n)*A059268(n)`
-/

namespace A038312.P16927072279910717967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038307 n * A059268 n

end

end A038312.P16927072279910717967

noncomputable section

/-- A038312: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*10^j.

Offset 0, canonical program `A038312.P16927072279910717967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3114 terms. -/
def A038312 (n : ℕ) : ℤ :=
  A038312.P16927072279910717967.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3114 terms. -/
def A038312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038316.P17113037635497531853

`A038315(n)*A059268(n)`
-/

namespace A038316.P17113037635497531853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038315 n * A059268 n

end

end A038316.P17113037635497531853

noncomputable section

/-- A038316: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*2^j.

Offset 0, canonical program `A038316.P17113037635497531853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4196 terms. -/
def A038316 (n : ℕ) : ℤ :=
  A038316.P17113037635497531853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4196 terms. -/
def A038316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038320.P3855008514307432265

`A038317(n)*A059268(n)`
-/

namespace A038320.P3855008514307432265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038317 n * A059268 n

end

end A038320.P3855008514307432265

noncomputable section

/-- A038320: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*6^j.

Offset 0, canonical program `A038320.P3855008514307432265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3506 terms. -/
def A038320 (n : ℕ) : ℤ :=
  A038320.P3855008514307432265.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3506 terms. -/
def A038320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038324.P6800404260969209044

`A038319(n)*A059268(n)`
-/

namespace A038324.P6800404260969209044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038319 n * A059268 n

end

end A038324.P6800404260969209044

noncomputable section

/-- A038324: Triangle read by rows whose (i,j)-th entry is binomial(i,j)*11^(i-j)*10^j.

Offset 0, canonical program `A038324.P6800404260969209044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3032 terms. -/
def A038324 (n : ℕ) : ℤ :=
  A038324.P6800404260969209044.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3032 terms. -/
def A038324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038328.P13362805777604187505

`A038327(n)*A059268(n)`
-/

namespace A038328.P13362805777604187505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038327 n * A059268 n

end

end A038328.P13362805777604187505

noncomputable section

/-- A038328: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*2^j.

Offset 0, canonical program `A038328.P13362805777604187505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4011 terms. -/
def A038328 (n : ℕ) : ℤ :=
  A038328.P13362805777604187505.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4011 terms. -/
def A038328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038336.P2038556633556668892

`A038331(n)*A059268(n)`
-/

namespace A038336.P2038556633556668892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038331 n * A059268 n

end

end A038336.P2038556633556668892

noncomputable section

/-- A038336: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*10^j.

Offset 0, canonical program `A038336.P2038556633556668892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2952 terms. -/
def A038336 (n : ℕ) : ℤ :=
  A038336.P2038556633556668892.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2952 terms. -/
def A038336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038337.P13596972797405458484

`A038265(n)*A130321(n)`
-/

namespace A038337.P13596972797405458484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038265 n * A130321 n

end

end A038337.P13596972797405458484

noncomputable section

/-- A038337: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*11^j.

Offset 0, canonical program `A038337.P13596972797405458484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2877 terms. -/
def A038337 (n : ℕ) : ℤ :=
  A038337.P13596972797405458484.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2877 terms. -/
def A038337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038470.P16485816997203529762

`A059268(n)²+A140513(n)²`
-/

namespace A038470.P16485816997203529762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 + A140513 n ^ 2

end

end A038470.P16485816997203529762

noncomputable section

/-- A038470: Sums of 2 distinct powers of 4.

Offset 1, canonical program `A038470.P16485816997203529762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038470 (n : ℕ) : ℤ :=
  A038470.P16485816997203529762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038482.P3656652885610430883

`A033044(eq[4, A048896(n)]+2)`
-/

namespace A038482.P3656652885610430883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A038482.P3656652885610430883

noncomputable section

/-- A038482: Sums of 3 distinct powers of 7.

Offset 1, canonical program `A038482.P3656652885610430883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A038482 (n : ℕ) : ℤ :=
  A038482.P3656652885610430883.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A038482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038556.P6997511803854896681

`A001969(A038554(n)+1)`
-/

namespace A038556.P6997511803854896681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (A038554 n + 1).toNat

end

end A038556.P6997511803854896681

noncomputable section

/-- A038556: Periodic derivative of n.

Offset 0, canonical program `A038556.P6997511803854896681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038556 (n : ℕ) : ℤ :=
  A038556.P6997511803854896681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038735.P3675330770344052257

`∑[∑[A038734(n+5)]]`
-/

namespace A038735.P3675330770344052257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038734 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038735.P3675330770344052257

noncomputable section

/-- A038735: T(n,n-6), array T as in A038730.

Offset 6, canonical program `A038735.P3675330770344052257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A038735 (n : ℕ) : ℤ :=
  A038735.P3675330770344052257.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A038735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038742.P9813013638731696612

`∑[A038734(n+5)]`
-/

namespace A038742.P9813013638731696612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038734 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038742.P9813013638731696612

noncomputable section

/-- A038742: T(n,n-5), array T as in A038738.

Offset 5, canonical program `A038742.P9813013638731696612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A038742 (n : ℕ) : ℤ :=
  A038742.P9813013638731696612.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A038742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038824.P6591651217992895558

`A038813(n+1)%A038813(A000038(n)+n)`
-/

namespace A038824.P6591651217992895558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038813 (n + 1)) (A038813 (A000038 n + (n : ℤ)).toNat)

end

end A038824.P6591651217992895558

noncomputable section

/-- A038824: Number of primes between n*10000 and (n+1)*10000.

Offset 0, canonical program `A038824.P6591651217992895558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038824 (n : ℕ) : ℤ :=
  A038824.P6591651217992895558.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038993.P17198785173542543802

`∑{d}[n+1, #*A038992(#)]`
-/

namespace A038993.P17198785173542543802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A038992 d

end

end A038993.P17198785173542543802

noncomputable section

/-- A038993: Number of sublattices of index n in generic 6-dimensional lattice.

Offset 1, canonical program `A038993.P17198785173542543802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038993 (n : ℕ) : ℤ :=
  A038993.P17198785173542543802.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039767.P8796970690706761177

`eq[A001221(n+1), A049559(n+2)]+2`
-/

namespace A039767.P8796970690706761177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A039767.P8796970690706761177

noncomputable section

/-- A039767: Numbers k such that gcd(phi(k), k-1) = number of distinct prime factors of (k-1).

Offset 1, canonical program `A039767.P8796970690706761177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2212 terms. -/
def A039767 (n : ℕ) : ℤ :=
  (A039767.P8796970690706761177.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2212 terms. -/
def A039767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039790.P15010338616268529751

`A160668(n+1)+A100484(n+1)`
-/

namespace A039790.P15010338616268529751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160668 (n + 1) + A100484 (n + 1)

end

end A039790.P15010338616268529751

noncomputable section

/-- A039790: Prime numbers prefixed with a '1'.

Offset 1, canonical program `A039790.P15010338616268529751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039790 (n : ℕ) : ℤ :=
  A039790.P15010338616268529751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039974.P14858621183386826904

`A039973(floor(sqrt(n²+1)))`
-/

namespace A039974.P14858621183386826904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039973 (Nat.sqrt (n ^ 2 + 1))

end

end A039974.P14858621183386826904

noncomputable section

/-- A039974: An example of a d-perfect sequence.

Offset 1, canonical program `A039974.P14858621183386826904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1175 terms. -/
def A039974 (n : ℕ) : ℤ :=
  A039974.P14858621183386826904.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1175 terms. -/
def A039974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043726.P885760797965580928

`2*eq[2, and(2, A088748(n))]`
-/

namespace A043726.P885760797965580928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A088748 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043726.P885760797965580928

noncomputable section

/-- A043726: Numbers whose number of runs in the base-2 representation is congruent to 2 mod 4.

Offset 1, canonical program `A043726.P885760797965580928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8128 terms. -/
def A043726 (n : ℕ) : ℤ :=
  (A043726.P885760797965580928.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8128 terms. -/
def A043726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043729.P1874887262937552627

`eq[7, A096230(A088748(n))]`
-/

namespace A043729.P1874887262937552627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096230 (A088748 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043729.P1874887262937552627

noncomputable section

/-- A043729: Numbers whose number of runs in their base-2 representation is congruent to 1 mod 5.

Offset 1, canonical program `A043729.P1874887262937552627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3381 terms. -/
def A043729 (n : ℕ) : ℤ :=
  (A043729.P1874887262937552627.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3381 terms. -/
def A043729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043731.P10385380765839690596

`eq[1, A096230(A088748(n)+1)]`
-/

namespace A043731.P10385380765839690596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096230 (A088748 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043731.P10385380765839690596

noncomputable section

/-- A043731: Numbers whose number of runs in their base-2 representation is congruent to 3 mod 5.

Offset 1, canonical program `A043731.P10385380765839690596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3381 terms. -/
def A043731 (n : ℕ) : ℤ :=
  (A043731.P10385380765839690596.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3381 terms. -/
def A043731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043740.P5653825656500769311

`eq[gcd(2, n)², A069010(n)]`
-/

namespace A043740.P5653825656500769311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043740.P5653825656500769311

noncomputable section

/-- A043740: Numbers whose number of runs in the base-2 representation is congruent to 1 mod 7.

Offset 1, canonical program `A043740.P5653825656500769311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3017 terms. -/
def A043740 (n : ℕ) : ℤ :=
  (A043740.P5653825656500769311.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3017 terms. -/
def A043740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044967.P11768154619602539084

`A032924(eq[2, A023416(n+1)])`
-/

namespace A044967.P11768154619602539084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044967.P11768154619602539084

noncomputable section

/-- A044967: Numbers whose base-3 representation contains no 0's and exactly two 1's.

Offset 1, canonical program `A044967.P11768154619602539084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A044967 (n : ℕ) : ℤ :=
  A044967.P11768154619602539084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A044967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044968.P18330494829545156474

`A032924(eq[3, A023416(n+1)])`
-/

namespace A044968.P18330494829545156474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044968.P18330494829545156474

noncomputable section

/-- A044968: Numbers whose base-3 representation contains no 0's and exactly three 1's.

Offset 1, canonical program `A044968.P18330494829545156474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 718 terms. -/
def A044968 (n : ℕ) : ℤ :=
  A044968.P18330494829545156474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 718 terms. -/
def A044968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044969.P2565728100705881724

`A032924(eq[4, A023416(n+1)])`
-/

namespace A044969.P2565728100705881724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044969.P2565728100705881724

noncomputable section

/-- A044969: Numbers whose base-3 representation contains no 0's and exactly four 1's.

Offset 1, canonical program `A044969.P2565728100705881724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1314 terms. -/
def A044969 (n : ℕ) : ℤ :=
  A044969.P2565728100705881724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1314 terms. -/
def A044969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044991.P16800616075751073136

`A032924(eq[4, A048896(n)])`
-/

namespace A044991.P16800616075751073136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044991.P16800616075751073136

noncomputable section

/-- A044991: Numbers whose base-3 representation contains no 0's and exactly two 2's.

Offset 1, canonical program `A044991.P16800616075751073136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A044991 (n : ℕ) : ℤ :=
  A044991.P16800616075751073136.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A044991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044992.P3415523562355839909

`A032924(eq[8, A048896(n)])`
-/

namespace A044992.P3415523562355839909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044992.P3415523562355839909

noncomputable section

/-- A044992: Numbers whose base-3 representation contains no 0's and exactly three 2's.

Offset 1, canonical program `A044992.P3415523562355839909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A044992 (n : ℕ) : ℤ :=
  A044992.P3415523562355839909.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A044992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044993.P12653908327930465946

`A032924(eq[16, A048896(n)])`
-/

namespace A044993.P12653908327930465946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044993.P12653908327930465946

noncomputable section

/-- A044993: Numbers whose base-3 representation contains no 0's and exactly four 2's.

Offset 1, canonical program `A044993.P12653908327930465946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1614 terms. -/
def A044993 (n : ℕ) : ℤ :=
  A044993.P12653908327930465946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1614 terms. -/
def A044993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045000.P2718937104415212112

`∩[A023699(n+1), A031453(n+1)]`
-/

namespace A045000.P2718937104415212112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045000.P2718937104415212112

noncomputable section

/-- A045000: Numbers whose base-3 representation contains exactly two 0's and one 2.

Offset 1, canonical program `A045000.P2718937104415212112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 814 terms. -/
def A045000 (n : ℕ) : ℤ :=
  (A045000.P2718937104415212112.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 814 terms. -/
def A045000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045006.P6297844350569896683

`∩[A023700(n+1), A031453(n+1)]`
-/

namespace A045006.P6297844350569896683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045006.P6297844350569896683

noncomputable section

/-- A045006: Numbers whose base-3 representation contains exactly three 0's and two 2's.

Offset 1, canonical program `A045006.P6297844350569896683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2720 terms. -/
def A045006 (n : ℕ) : ℤ :=
  (A045006.P6297844350569896683.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2720 terms. -/
def A045006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045933.P13873207299260927009

`A045932(eq[1, A045932(n+2)-A045932(n+1)]+1)`
-/

namespace A045933.P13873207299260927009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045932 (n + 2) - A045932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045932 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A045933.P13873207299260927009

noncomputable section

/-- A045933: Numbers n such that n through n+4 are divisible by the same number of distinct primes.

Offset 1, canonical program `A045933.P13873207299260927009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A045933 (n : ℕ) : ℤ :=
  A045933.P13873207299260927009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A045933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046137.P13806103826788507979

`p?[A023202(n+1)-4]`
-/

namespace A046137.P13806103826788507979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046137.P13806103826788507979

noncomputable section

/-- A046137: Primes p such that p+4 and p+12 are also prime.

Offset 1, canonical program `A046137.P13806103826788507979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1440 terms. -/
def A046137 (n : ℕ) : ℤ :=
  A046137.P13806103826788507979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1440 terms. -/
def A046137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046208.P6883400748665039636

`A046207(A152271(n))-A059841(n)`
-/

namespace A046208.P6883400748665039636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046207 (A152271 n).toNat - A059841 n

end

end A046208.P6883400748665039636

noncomputable section

/-- A046208: In Leibniz's Harmonic Triangle, write the numerator first and then the denominator of each element to the right of the central elements.

Offset 1, canonical program `A046208.P6883400748665039636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046208 (n : ℕ) : ℤ :=
  A046208.P6883400748665039636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046211.P6519559171447150891

`∑{d}[n+1, A008683(#)*A364210((n+1)/#)]`
-/

namespace A046211.P6519559171447150891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A364210 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046211.P6519559171447150891

noncomputable section

/-- A046211: Number of ternary Lyndon words whose digits sum to 1 (or 2) mod 3; number of trace 1 (or 2) monic irreducible polynomials over GF(3).

Offset 1, canonical program `A046211.P6519559171447150891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A046211 (n : ℕ) : ℤ :=
  A046211.P6519559171447150891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A046211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046324.P5497481836361738201

`A000040(n+1)*A046303(n+2)`
-/

namespace A046324.P5497481836361738201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A046303 (n + 2)

end

end A046324.P5497481836361738201

noncomputable section

/-- A046324: Product of 6 successive primes.

Offset 1, canonical program `A046324.P5497481836361738201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A046324 (n : ℕ) : ℤ :=
  A046324.P5497481836361738201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A046324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046339.P7778013656365534105

`filter[A026424(n+1), A005171(#)]`
-/

namespace A046339.P7778013656365534105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A046339.P7778013656365534105

noncomputable section

/-- A046339: Composite numbers with an odd number of prime factors (counted with multiplicity).

Offset 1, canonical program `A046339.P7778013656365534105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7743 terms. -/
def A046339 (n : ℕ) : ℤ :=
  A046339.P7778013656365534105.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7743 terms. -/
def A046339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046688.P903510788573287376

`floor(A059268(n)/2)*A025581(n)+1`
-/

namespace A046688.P903510788573287376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059268 n : ℚ) / 2⌋ * A025581 n + 1

end

end A046688.P903510788573287376

noncomputable section

/-- A046688: Antidiagonals of square array in which k-th row (k>0) is an arithmetic progression of difference 2^(k-1).

Offset 0, canonical program `A046688.P903510788573287376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046688 (n : ℕ) : ℤ :=
  A046688.P903510788573287376.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046819.P1212913902005017791

`A001511(A001316(3*n+2)/2)`
-/

namespace A046819.P1212913902005017791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((A001316 (3 * n + 2) : ℚ) / 2)).toNat

end

end A046819.P1212913902005017791

noncomputable section

/-- A046819: Number of 1's in binary expansion of 3n+2.

Offset 0, canonical program `A046819.P1212913902005017791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046819 (n : ℕ) : ℤ :=
  A046819.P1212913902005017791.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046869.P16773520886354257536

`A000040(A046868(n+1))`
-/

namespace A046869.P16773520886354257536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A046868 (n + 1)).toNat

end

end A046869.P16773520886354257536

noncomputable section

/-- A046869: Good primes (version 1): prime(n)^2 > prime(n-1)*prime(n+1).

Offset 1, canonical program `A046869.P16773520886354257536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A046869 (n : ℕ) : ℤ :=
  A046869.P16773520886354257536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A046869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047885.P10276378217643726378

`A001222(A007318(n))-A001222(A172985(n))`
-/

namespace A047885.P10276378217643726378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007318 n).toNat - A001222 (A172985 n).toNat

end

end A047885.P10276378217643726378

noncomputable section

/-- A047885: Array a(m,n) = pi(m+n) - pi(m) - pi(n) read by antidiagonals, where pi() = A000720 (m,n >= 0).

Offset 0, canonical program `A047885.P10276378217643726378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A047885 (n : ℕ) : ℤ :=
  A047885.P10276378217643726378.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A047885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048135.P153787356439033696

`eq[6, or(6, A080400(n+1))]+1`
-/

namespace A048135.P153787356439033696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 (A080400 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048135.P153787356439033696

noncomputable section

/-- A048135: Tomahawk-constructible n-gons.

Offset 1, canonical program `A048135.P153787356439033696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1322 terms. -/
def A048135 (n : ℕ) : ℤ :=
  (A048135.P153787356439033696.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1322 terms. -/
def A048135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048136.P11448310694263798569

`lt[10, A080400(n+1)+1]+1`
-/

namespace A048136.P11448310694263798569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080400 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A048136.P11448310694263798569

noncomputable section

/-- A048136: Tomahawk-nonconstructible n-gons.

Offset 1, canonical program `A048136.P11448310694263798569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048136 (n : ℕ) : ℤ :=
  (A048136.P11448310694263798569.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048274.P10497283210798871903

`abs(∑[1-A046079(2*(n+1))])`
-/

namespace A048274.P10497283210798871903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A046079 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A048274.P10497283210798871903

noncomputable section

/-- A048274: Let G be the graph with n vertices, the i-th vertex consisting of all multiples of i <= n, where edges indicate that the vertices intersect; a(n) = |n-(number of edges of G)|.

Offset 1, canonical program `A048274.P10497283210798871903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3626 terms. -/
def A048274 (n : ℕ) : ℤ :=
  A048274.P10497283210798871903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3626 terms. -/
def A048274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048989.P13418413284039244819

`eq[1, A003415(A000720(n+1))]+1`
-/

namespace A048989.P13418413284039244819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000720 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048989.P13418413284039244819

noncomputable section

/-- A048989: Numbers k such that pi(k) is prime.

Offset 1, canonical program `A048989.P13418413284039244819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6468 terms. -/
def A048989 (n : ℕ) : ℤ :=
  (A048989.P13418413284039244819.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6468 terms. -/
def A048989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049116.P4118642355827191209

`lcm(a(A109606(n+1)), A006519(n+1))` with `a(0)=1`
-/

namespace A049116.P4118642355827191209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (A109606 (n + 1)).toNat : ℤ) (A006519 (n + 1))

end

end A049116.P4118642355827191209

noncomputable section

/-- A049116: Repeatedly apply Euler phi to n; a(n) = highest power of 2 that is seen.

Offset 1, canonical program `A049116.P4118642355827191209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049116 (n : ℕ) : ℤ :=
  (A049116.P4118642355827191209.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049196.P2749344971155733877

`record[A007913(A049149(n+1))]`
-/

namespace A049196.P2749344971155733877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A049149 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049196.P2749344971155733877

noncomputable section

/-- A049196: Squarefree numbers whose Euler totient function is also squarefree.

Offset 1, canonical program `A049196.P2749344971155733877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5542 terms. -/
def A049196 (n : ℕ) : ℤ :=
  A049196.P2749344971155733877.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5542 terms. -/
def A049196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049202.P14441440426540642835

`A049203(A000040(n+1))`
-/

namespace A049202.P14441440426540642835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049203 (A000040 (n + 1)).toNat

end

end A049202.P14441440426540642835

noncomputable section

/-- A049202: Primes p whose order of primeness A049076(p) is >= 6.

Offset 1, canonical program `A049202.P14441440426540642835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A049202 (n : ℕ) : ℤ :=
  A049202.P14441440426540642835.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A049202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049616.P9575760654266147499

`A121968(n+1)-A005598(n)`
-/

namespace A049616.P9575760654266147499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121968 (n + 1) - A005598 n

end

end A049616.P9575760654266147499

noncomputable section

/-- A049616: a(n) = Sum_{i=1..n} T(i,n-i), where T is A049615.

Offset 0, canonical program `A049616.P9575760654266147499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 717 terms. -/
def A049616 (n : ℕ) : ℤ :=
  A049616.P9575760654266147499.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 717 terms. -/
def A049616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049628.P9996388528544294496

`A005598(n)+2*n`
-/

namespace A049628.P9996388528544294496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005598 n + (2 * n : ℤ)

end

end A049628.P9996388528544294496

noncomputable section

/-- A049628: a(n) = Sum_{i=0..n} T(i,n-i) where T is A049627.

Offset 0, canonical program `A049628.P9996388528544294496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 707 terms. -/
def A049628 (n : ℕ) : ℤ :=
  A049628.P9996388528544294496.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 707 terms. -/
def A049628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049688.P4025135909260073091

`A005598(n)-1+n`
-/

namespace A049688.P4025135909260073091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005598 n - 1 + (n : ℤ)

end

end A049688.P4025135909260073091

noncomputable section

/-- A049688: a(n) = Sum_{i=0..n} T(i,n-i), array T as in A049687.

Offset 0, canonical program `A049688.P4025135909260073091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049688 (n : ℕ) : ℤ :=
  A049688.P4025135909260073091.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049703.P3662777776691455142

`floor(A005598(n)/2)`
-/

namespace A049703.P3662777776691455142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005598 n : ℚ) / 2⌋

end

end A049703.P3662777776691455142

noncomputable section

/-- A049703: a(0) = 0; for n>0, a(n) = A005598(n)/2.

Offset 0, canonical program `A049703.P3662777776691455142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049703 (n : ℕ) : ℤ :=
  A049703.P3662777776691455142.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049806.P8436587211597941545

`∑[A055034(A026741(n+1))]`
-/

namespace A049806.P8436587211597941545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A026741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049806.P8436587211597941545

noncomputable section

/-- A049806: Number of Farey fractions of order n that are <=1/2; cf. A049805.

Offset 1, canonical program `A049806.P8436587211597941545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049806 (n : ℕ) : ℤ :=
  A049806.P8436587211597941545.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049865.P13992076794767324350

`a(A047994(n+1)-1)+1` with `a(0)=0`
-/

namespace A049865.P13992076794767324350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A047994 (n + 1) - 1).toNat + 1

end

end A049865.P13992076794767324350

noncomputable section

/-- A049865: Number of iterations of unitary totient function (A047994) required to reach 1 from n.

Offset 1, canonical program `A049865.P13992076794767324350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049865 (n : ℕ) : ℤ :=
  (A049865.P13992076794767324350.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050384.P14843473006350326744

`filter[A003277(n+1), A005171(#)]`
-/

namespace A050384.P14843473006350326744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A050384.P14843473006350326744

noncomputable section

/-- A050384: Nonprimes such that n and phi(n) are relatively prime.

Offset 1, canonical program `A050384.P14843473006350326744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6488 terms. -/
def A050384 (n : ℕ) : ℤ :=
  A050384.P14843473006350326744.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6488 terms. -/
def A050384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050399.P12166716681260273006

`(n+1)*A000027((n+1)/A009195(n+1))`
-/

namespace A050399.P12166716681260273006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000027 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A009195 (n + 1) : ℚ))).toNat

end

end A050399.P12166716681260273006

noncomputable section

/-- A050399: Least k such that n = A009195(k) (= gcd(phi(k), k)).

Offset 1, canonical program `A050399.P12166716681260273006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050399 (n : ℕ) : ℤ :=
  A050399.P12166716681260273006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050622.P13515621561881358484

`record[A005843(n+1)%A103456(A001511(n+1))]`
-/

namespace A050622.P13515621561881358484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (n + 1)) (A103456 (A001511 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050622.P13515621561881358484

noncomputable section

/-- A050622: Numbers m that are divisible by 2^k, where k is the digit length of m.

Offset 1, canonical program `A050622.P13515621561881358484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1013 terms. -/
def A050622 (n : ℕ) : ℤ :=
  A050622.P13515621561881358484.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1013 terms. -/
def A050622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051222.P2891263857057906711

`2*A045979(n+1)`
-/

namespace A051222.P2891263857057906711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045979 (n + 1)

end

end A051222.P2891263857057906711

noncomputable section

/-- A051222: Numbers k such that Bernoulli number B_{k} has denominator 6.

Offset 1, canonical program `A051222.P2891263857057906711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A051222 (n : ℕ) : ℤ :=
  A051222.P2891263857057906711.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A051222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051547.P2764291257816859715

`lcm(a(n-1), Δ[A002088(n)])` with `a(0)=1`
-/

namespace A051547.P2764291257816859715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (f1 (n + 1) - f1 n)

end

end A051547.P2764291257816859715

noncomputable section

/-- A051547: a(n) = lcm{ phi(1), ..., phi(n) }, where phi is Euler's totient function A000010.

Offset 1, canonical program `A051547.P2764291257816859715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A051547 (n : ℕ) : ℤ :=
  (A051547.P2764291257816859715.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A051547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051679.P17576665333386059857

`∑[A048967(n)]`
-/

namespace A051679.P17576665333386059857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051679.P17576665333386059857

noncomputable section

/-- A051679: Total number of even entries in first n rows of Pascal's triangle (the zeroth and first rows being 1; 1,1).

Offset 0, canonical program `A051679.P17576665333386059857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051679 (n : ℕ) : ℤ :=
  A051679.P17576665333386059857.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051913.P17812452377997013029

`eq[6, A080400(n+1)]+1`
-/

namespace A051913.P17812452377997013029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051913.P17812452377997013029

noncomputable section

/-- A051913: Numbers k such that phi(k)/phi(phi(k)) = 3.

Offset 1, canonical program `A051913.P17812452377997013029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1218 terms. -/
def A051913 (n : ℕ) : ℤ :=
  (A051913.P17812452377997013029.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1218 terms. -/
def A051913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052823.P12858488528447412848

`A008965(A028310(n))-1`
-/

namespace A052823.P12858488528447412848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (A028310 n).toNat - 1

end

end A052823.P12858488528447412848

noncomputable section

/-- A052823: A simple grammar: cycles of pairs of sequences.

Offset 0, canonical program `A052823.P12858488528447412848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A052823 (n : ℕ) : ℤ :=
  A052823.P12858488528447412848.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A052823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053177.P14888561992425814603

`2*A053176(n+1)+1`
-/

namespace A053177.P14888561992425814603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053176 (n + 1) + 1

end

end A053177.P14888561992425814603

noncomputable section

/-- A053177: Odd composite k such that (k-1)/2 is prime.

Offset 1, canonical program `A053177.P14888561992425814603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053177 (n : ℕ) : ℤ :=
  A053177.P14888561992425814603.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053202.P5490274948657399534

`A053201(2*A133196(n+1)+n)`
-/

namespace A053202.P5490274948657399534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053201 (2 * A133196 (n + 1) + (n : ℤ)).toNat

end

end A053202.P5490274948657399534

noncomputable section

/-- A053202: Pascal's triangle (excluding first, last two elements of each row) read by rows, row n read mod n.

Offset 4, canonical program `A053202.P5490274948657399534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9720 terms. -/
def A053202 (n : ℕ) : ℤ :=
  A053202.P5490274948657399534.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9720 terms. -/
def A053202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053343.P17206480047150833733

`A050530(eq[2, ∑{e}[A050530(n+1), #²]]+1)`
-/

namespace A053343.P17206480047150833733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A053343.P17206480047150833733

noncomputable section

/-- A053343: Semiprimes of the form pq where p < q and p + q - 1 is prime.

Offset 1, canonical program `A053343.P17206480047150833733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6357 terms. -/
def A053343 (n : ℕ) : ℤ :=
  A053343.P17206480047150833733.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6357 terms. -/
def A053343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053568.P694929640187653470

`A000010(A007617(n+1))`
-/

namespace A053568.P694929640187653470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007617 (n + 1)).toNat

end

end A053568.P694929640187653470

noncomputable section

/-- A053568: Totients of nontotient numbers.

Offset 1, canonical program `A053568.P694929640187653470`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053568 (n : ℕ) : ℤ :=
  A053568.P694929640187653470.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053568.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053570.P6504364924522172844

`∑{d}[n+1, A008683(#)*A332686((n+1)/#)]`
-/

namespace A053570.P6504364924522172844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A332686 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053570.P6504364924522172844

noncomputable section

/-- A053570: Sum of totient functions over arguments running through reduced residue system of n.

Offset 1, canonical program `A053570.P6504364924522172844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053570 (n : ℕ) : ℤ :=
  A053570.P6504364924522172844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054271.P1599914643439914482

`A001248(n+1)-A054270(n+1)`
-/

namespace A054271.P1599914643439914482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A054270 (n + 1)

end

end A054271.P1599914643439914482

noncomputable section

/-- A054271: Difference between prime(n)^2 and the previous prime.

Offset 1, canonical program `A054271.P1599914643439914482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054271 (n : ℕ) : ℤ :=
  A054271.P1599914643439914482.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054541.P347795157194570387

`A046930(n)+2-a(n-1)` with `a(0)=2`
-/

namespace A054541.P347795157194570387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A046930 n + (2 - a (n - 1))

end

end A054541.P347795157194570387

noncomputable section

/-- A054541: Sum of first n terms equals n-th prime.

Offset 1, canonical program `A054541.P347795157194570387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054541 (n : ℕ) : ℤ :=
  A054541.P347795157194570387.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054585.P5592267134017480872

`∑[∑{d}[n, A341635(#)]]`
-/

namespace A054585.P5592267134017480872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A341635 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054585.P5592267134017480872

noncomputable section

/-- A054585: Sum_{d=1..n} phi(d)*mu(d).

Offset 0, canonical program `A054585.P5592267134017480872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054585 (n : ℕ) : ℤ :=
  A054585.P5592267134017480872.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054662.P6894399393543799590

`∑{d}[n+1, A008683(#)*A364211((n+1)/#)]`
-/

namespace A054662.P6894399393543799590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A364211 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A054662.P6894399393543799590

noncomputable section

/-- A054662: Number of monic irreducible polynomials over GF(5) with fixed nonzero trace.

Offset 1, canonical program `A054662.P6894399393543799590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A054662 (n : ℕ) : ℤ :=
  A054662.P6894399393543799590.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A054662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055077.P10178039189112641336

`A000079(A055460(n+1))`
-/

namespace A055077.P10178039189112641336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A055460 (n + 1)).toNat

end

end A055077.P10178039189112641336

noncomputable section

/-- A055077: Multiplicity of Max{gcd(d, n!/d)} when d runs over the divisors of n!.

Offset 1, canonical program `A055077.P10178039189112641336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3472 terms. -/
def A055077 (n : ℕ) : ℤ :=
  A055077.P10178039189112641336.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3472 terms. -/
def A055077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055436.P5718012716904594171

`(n+1)*(A020338(n+1)-n)`
-/

namespace A055436.P5718012716904594171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A020338 (n + 1) - (n : ℤ))

end

end A055436.P5718012716904594171

noncomputable section

/-- A055436: a(n) = concatenation of n^2 and n.

Offset 1, canonical program `A055436.P5718012716904594171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055436 (n : ℕ) : ℤ :=
  A055436.P5718012716904594171.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055499.P1678802310428195531

`A055498(n+1)-A010051(A007918(n)+1)`
-/

namespace A055499.P1678802310428195531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055498 (n + 1) - A010051 (A007918 n + 1).toNat

end

end A055499.P1678802310428195531

noncomputable section

/-- A055499: a(0)=0, a(1)=1, a(n) = smallest prime > a(n-1)+a(n-2).

Offset 0, canonical program `A055499.P1678802310428195531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A055499 (n : ℕ) : ℤ :=
  A055499.P1678802310428195531.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A055499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055938.P11436454756649086681

`A045412(n+1)-1`
-/

namespace A055938.P11436454756649086681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045412 (n + 1) - 1

end

end A055938.P11436454756649086681

noncomputable section

/-- A055938: Integers not generated by b(n) = b(floor(n/2)) + n (complement of A005187).

Offset 1, canonical program `A055938.P11436454756649086681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055938 (n : ℕ) : ℤ :=
  A055938.P11436454756649086681.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056194.P9218421642361807381

`A055230(n+1)^3`
-/

namespace A056194.P9218421642361807381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055230 (n + 1) ^ 3

end

end A056194.P9218421642361807381

noncomputable section

/-- A056194: Characteristic cube divisor of n!: a(n) = A056191(n!).

Offset 1, canonical program `A056194.P9218421642361807381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 395 terms. -/
def A056194 (n : ℕ) : ℤ :=
  A056194.P9218421642361807381.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 395 terms. -/
def A056194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056280.P10499943578114336456

`A056275(n+1)-A056274(n+1)`
-/

namespace A056280.P10499943578114336456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056275 (n + 1) - A056274 (n + 1)

end

end A056280.P10499943578114336456

noncomputable section

/-- A056280: Number of primitive (aperiodic) word structures of length n which contain exactly four different symbols.

Offset 1, canonical program `A056280.P10499943578114336456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A056280 (n : ℕ) : ℤ :=
  A056280.P10499943578114336456.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A056280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056334.P4039898044514616302

`A056333(n+1)+∑{d}[n+1, A008683(#)*A056329((n+1)/#)]`
-/

namespace A056334.P4039898044514616302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056333 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056329 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056334.P4039898044514616302

noncomputable section

/-- A056334: Number of primitive (aperiodic) reversible string structures with n beads using a maximum of five different colors.

Offset 1, canonical program `A056334.P4039898044514616302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A056334 (n : ℕ) : ℤ :=
  A056334.P4039898044514616302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A056334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056338.P9536420642399995847

`A056333(n+1)-A056332(n+1)`
-/

namespace A056338.P9536420642399995847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056333 (n + 1) - A056332 (n + 1)

end

end A056338.P9536420642399995847

noncomputable section

/-- A056338: Number of primitive (aperiodic) reversible string structures with n beads using exactly four different colors.

Offset 1, canonical program `A056338.P9536420642399995847`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056332, A056333, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056338 (n : ℕ) : ℤ :=
  A056338.P9536420642399995847.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056332, A056333, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056338.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056484.P389690693662882159

`∑{d}[n+1, A008683(#)*A056474((n+1)/#)]`
-/

namespace A056484.P389690693662882159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056474 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056484.P389690693662882159

noncomputable section

/-- A056484: Number of primitive (aperiodic) palindromic structures using exactly five different symbols.

Offset 1, canonical program `A056484.P389690693662882159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. -/
def A056484 (n : ℕ) : ℤ :=
  A056484.P389690693662882159.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. -/
def A056484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056558.P9838016409462188239

`n-A056556(n)*(A056556(n)+1)*(A056556(n)+2)/6-A056557(n)*(A056557(n)+1)/2`
-/

namespace A056558.P9838016409462188239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A056556 n * (A056556 n + 1) * (A056556 n + 2) : ℚ) / 6 - (A056557 n * (A056557 n + 1) : ℚ) / 2

end

end A056558.P9838016409462188239

noncomputable section

/-- A056558: Third tetrahedral coordinate, i.e., tetrahedron with T(t,n,k)=k; succession of growing finite triangles with increasing values towards bottom right.

Offset 0, canonical program `A056558.P9838016409462188239`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056558 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056558.P9838016409462188239.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056558.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056559.P3524647608024188451

`A056556(n)-A056557(n)`
-/

namespace A056559.P3524647608024188451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n - A056557 n

end

end A056559.P3524647608024188451

noncomputable section

/-- A056559: Tetrahedron with T(t,n,k) = t - n; succession of growing finite triangles with declining values per row.

Offset 0, canonical program `A056559.P3524647608024188451`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056559 (n : ℕ) : ℤ :=
  A056559.P3524647608024188451.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056559.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056611.P9328325300768638059

`A056610(n+1)/A056609(n+1)`
-/

namespace A056611.P9328325300768638059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056610 (n + 1) : ℚ) / (A056609 (n + 1) : ℚ)

end

end A056611.P9328325300768638059

noncomputable section

/-- A056611: Quotient: squarefree kernel of A002944(n) divided by that of A001405.

Offset 1, canonical program `A056611.P9328325300768638059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 828 terms. -/
def A056611 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056611.P9328325300768638059.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 828 terms. -/
def A056611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057168.P11619556814711801112

`A006519(n+1)+A006519(A025480(n)+1)+n`
-/

namespace A057168.P11619556814711801112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) + (A006519 (A025480 n + 1).toNat + (n : ℤ))

end

end A057168.P11619556814711801112

noncomputable section

/-- A057168: Next larger integer with same binary weight (number of 1 bits) as n.

Offset 1, canonical program `A057168.P11619556814711801112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057168 (n : ℕ) : ℤ :=
  A057168.P11619556814711801112.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057434.P11510506966022849158

`∑[(n+1-A121048(n+1))²]`
-/

namespace A057434.P11510506966022849158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A121048 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057434.P11510506966022849158

noncomputable section

/-- A057434: a(n) = Sum_{k=1..n} phi(k)^2.

Offset 1, canonical program `A057434.P11510506966022849158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057434 (n : ℕ) : ℤ :=
  A057434.P11510506966022849158.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057555.P13935349940139878963

`A057554(n+1)+1`
-/

namespace A057555.P13935349940139878963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (n + 1) + 1

end

end A057555.P13935349940139878963

noncomputable section

/-- A057555: Lexicographic ordering of N x N, where N = {1,2,3...}.

Offset 1, canonical program `A057555.P13935349940139878963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057555 (n : ℕ) : ℤ :=
  A057555.P13935349940139878963.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057728.P7080586031202781253

`A059268(A056943(n))`
-/

namespace A057728.P7080586031202781253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A056943 n).toNat

end

end A057728.P7080586031202781253

noncomputable section

/-- A057728: A triangular table of decreasing powers of two (with first column all ones).

Offset 1, canonical program `A057728.P7080586031202781253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057728 (n : ℕ) : ℤ :=
  A057728.P7080586031202781253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057851.P3476129261912973743

`A057850(A000040(n+1))`
-/

namespace A057851.P3476129261912973743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057850 (A000040 (n + 1)).toNat

end

end A057851.P3476129261912973743

noncomputable section

/-- A057851: Primes p whose order of primeness A078442(p) is at least 9.

Offset 1, canonical program `A057851.P3476129261912973743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1381 terms. -/
def A057851 (n : ℕ) : ℤ :=
  A057851.P3476129261912973743.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1381 terms. -/
def A057851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059144.P1467077077877523239

`A059143(3*n)+A059143(3*n+1)+A059143(3*n)`
-/

namespace A059144.P1467077077877523239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059143 (3 * n) + A059143 (3 * n + 1) + A059143 (3 * n)

end

end A059144.P1467077077877523239

noncomputable section

/-- A059144: A hierarchical sequence (W3{2,2}*cc - see A059126).

Offset 0, canonical program `A059144.P1467077077877523239`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059143, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059144 (n : ℕ) : ℤ :=
  A059144.P1467077077877523239.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059143, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059144.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059342.P11166942202048713264

`gcd(A059268(n), A159335(A080036(n)))`
-/

namespace A059342.P11166942202048713264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059268 n) (A159335 (A080036 n).toNat)

end

end A059342.P11166942202048713264

noncomputable section

/-- A059342: Triangle giving denominators of coefficients of Euler polynomials, highest powers first.

Offset 0, canonical program `A059342.P11166942202048713264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3869 terms. -/
def A059342 (n : ℕ) : ℤ :=
  (A059342.P11166942202048713264.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3869 terms. -/
def A059342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059452.P7730538796313932387

`∩[A053176(n+1), A072055(n+1)]`
-/

namespace A059452.P7730538796313932387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059452.P7730538796313932387

noncomputable section

/-- A059452: Safe primes (A005385) that are not Sophie Germain primes.

Offset 1, canonical program `A059452.P7730538796313932387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 633 terms. -/
def A059452 (n : ℕ) : ℤ :=
  (A059452.P7730538796313932387.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 633 terms. -/
def A059452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059787.P10805631217386349978

`A059786(n+1)-A100484(n+1)`
-/

namespace A059787.P10805631217386349978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059786 (n + 1) - A100484 (n + 1)

end

end A059787.P10805631217386349978

noncomputable section

/-- A059787: Distance between 2*(n-th prime) and next prime.

Offset 1, canonical program `A059787.P10805631217386349978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059787 (n : ℕ) : ℤ :=
  A059787.P10805631217386349978.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060329.P5601764562904454066

`p?[A053767(n+4)-A053767(n)]`
-/

namespace A060329.P5601764562904454066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (n + 4) - A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060329.P5601764562904454066

noncomputable section

/-- A060329: Primes the sum of four consecutive composite numbers.

Offset 1, canonical program `A060329.P5601764562904454066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A060329 (n : ℕ) : ℤ :=
  A060329.P5601764562904454066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A060329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060474.P1792175694855090900

`(n+2)/A058656(n+1)`
-/

namespace A060474.P1792175694855090900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A058656 (n + 1) : ℚ)

end

end A060474.P1792175694855090900

noncomputable section

/-- A060474: a(n) = denominator of phi(n)/(n+1), where phi(n) is Euler's phi, A000010.

Offset 1, canonical program `A060474.P1792175694855090900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060474 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060474.P1792175694855090900.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061771.P15852509562719419888

`A000040(lt[A100375(n+1), 2]+1)`
-/

namespace A061771.P15852509562719419888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100375 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A061771.P15852509562719419888

noncomputable section

/-- A061771: Primes p(k) such that p(k+1) - p(k) = 2^m for some m (smaller of a pair of consecutive primes which differ by a power of 2).

Offset 1, canonical program `A061771.P15852509562719419888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3724 terms. -/
def A061771 (n : ℕ) : ℤ :=
  A061771.P15852509562719419888.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3724 terms. -/
def A061771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062732.P15096758420271924634

`A000010(A039770(1+n))`
-/

namespace A062732.P15096758420271924634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A039770 (1 + n)).toNat

end

end A062732.P15096758420271924634

noncomputable section

/-- A062732: Squares arising in A039770.

Offset 1, canonical program `A062732.P15096758420271924634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1890 terms. -/
def A062732 (n : ℕ) : ℤ :=
  A062732.P15096758420271924634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1890 terms. -/
def A062732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062736.P495047314603251771

`p?[A060939(n+1)]`
-/

namespace A062736.P495047314603251771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062736.P495047314603251771

noncomputable section

/-- A062736: Primes of form Sum_{k=1..n} (prime(k)+1).

Offset 1, canonical program `A062736.P495047314603251771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A062736 (n : ℕ) : ℤ :=
  A062736.P495047314603251771.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A062736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062801.P17256889499220257639

`(n+1)²²-∑[A016813(A209295(n))]`
-/

namespace A062801.P17256889499220257639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A209295 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062801.P17256889499220257639

noncomputable section

/-- A062801: Number of 2 X 2 non-singular integer matrices with entries from {0,...,n}.

Offset 0, canonical program `A062801.P17256889499220257639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A062801 (n : ℕ) : ℤ :=
  A062801.P17256889499220257639.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A062801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062973.P1507118840475367549

`comp[A062972(n+1)-1]+1`
-/

namespace A062973.P1507118840475367549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A062973.P1507118840475367549

noncomputable section

/-- A062973: Chowla function of n is not divisible by phi(n).

Offset 1, canonical program `A062973.P1507118840475367549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062973 (n : ℕ) : ℤ :=
  (A062973.P1507118840475367549.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063113.P7442920505588382049

`A117592(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A063113.P7442920505588382049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A117592 (a (n - 1)).toNat + a (n - 1)

end

end A063113.P7442920505588382049

noncomputable section

/-- A063113: a(1) = 1; a(n+1) = a(n) + product of nonzero digits of a(n) when written in base 3. But display sequence in base 10.

Offset 1, canonical program `A063113.P7442920505588382049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1943 terms. -/
def A063113 (n : ℕ) : ℤ :=
  A063113.P7442920505588382049.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1943 terms. -/
def A063113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063532.P11767860691149820248

`∩[A063530(n+1), A063531(n+1)]`
-/

namespace A063532.P11767860691149820248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063532.P11767860691149820248

noncomputable section

/-- A063532: Numbers k such that phi(k) + 1 = x^2 and sigma(k) + 1 = y^2 for some x and y.

Offset 1, canonical program `A063532.P11767860691149820248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A063532 (n : ℕ) : ℤ :=
  (A063532.P11767860691149820248.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A063532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063745.P6674532134331063017

`2*A026424(n+1)`
-/

namespace A063745.P6674532134331063017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026424 (n + 1)

end

end A063745.P6674532134331063017

noncomputable section

/-- A063745: Even numbers with an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A063745.P6674532134331063017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063745 (n : ℕ) : ℤ :=
  A063745.P6674532134331063017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063776.P17139330215910369702

`1/(n+1)*A053636(n+1)`
-/

namespace A063776.P17139330215910369702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A053636 (n + 1) : ℚ)

end

end A063776.P17139330215910369702

noncomputable section

/-- A063776: Number of subsets of {1,2,...,n} which sum to 0 modulo n.

Offset 1, canonical program `A063776.P17139330215910369702`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053636, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063776 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A063776.P17139330215910369702.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053636, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063776.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064146.P8659284940769746330

`A064142(n+1)-A064143(n+1)`
-/

namespace A064146.P8659284940769746330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064142 (n + 1) - A064143 (n + 1)

end

end A064146.P8659284940769746330

noncomputable section

/-- A064146: Sum of non-unitary prime divisors of binomial(n,floor(n/2)).

Offset 1, canonical program `A064146.P8659284940769746330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. -/
def A064146 (n : ℕ) : ℤ :=
  A064146.P8659284940769746330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. -/
def A064146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064276.P18165099478647077307

`∑[A209295(n)+1+n]`
-/

namespace A064276.P18165099478647077307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209295 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064276.P18165099478647077307

noncomputable section

/-- A064276: Number of 2 X 2 singular integer matrices with elements from {0,...,n} up to row and column permutation.

Offset 0, canonical program `A064276.P18165099478647077307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A064276 (n : ℕ) : ℤ :=
  A064276.P18165099478647077307.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A064276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064804.P11046241250947440996

`2*lt[A055034(n+1), A055034(A028310(n))]`
-/

namespace A064804.P11046241250947440996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064804.P11046241250947440996

noncomputable section

/-- A064804: Numbers 2*k such that phi(2*k + 2) < phi(2*k).

Offset 1, canonical program `A064804.P11046241250947440996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4875 terms. -/
def A064804 (n : ℕ) : ℤ :=
  (A064804.P11046241250947440996.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4875 terms. -/
def A064804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064969.P2829125855322094774

`∑{d}[n+1, A160889(#)]`
-/

namespace A064969.P2829125855322094774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A160889 d

end

end A064969.P2829125855322094774

noncomputable section

/-- A064969: Number of cyclic subgroups of the group C_n X C_n X C_n (where C_n is the cyclic group of order n).

Offset 1, canonical program `A064969.P2829125855322094774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064969 (n : ℕ) : ℤ :=
  A064969.P2829125855322094774.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065386.P10145385021084767959

`record[A053158(n+1)-(n+1)]`
-/

namespace A065386.P10145385021084767959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065386.P10145385021084767959

noncomputable section

/-- A065386: Successive record values of the cototient function (A051953).

Offset 1, canonical program `A065386.P10145385021084767959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A065386 (n : ℕ) : ℤ :=
  A065386.P10145385021084767959.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A065386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065388.P11226850039941885690

`record[A051709(n+1)+2*(n+1)]`
-/

namespace A065388.P11226850039941885690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (n + 1) + (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065388.P11226850039941885690

noncomputable section

/-- A065388: Record values for sigma(m) + phi(m): sum of sigma and totient is larger than for any previous number.

Offset 1, canonical program `A065388.P11226850039941885690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A065388 (n : ℕ) : ℤ :=
  A065388.P11226850039941885690.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A065388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065394.P16057630150760024369

`record[A062402(2*n+3)-A062401(2*n+3)]`
-/

namespace A065394.P16057630150760024369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (2 * n + 3) - A062401 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065394.P16057630150760024369

noncomputable section

/-- A065394: Increasing values of A065395: a(n) = A065395(A065393(n)).

Offset 1, canonical program `A065394.P16057630150760024369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A065394 (n : ℕ) : ℤ :=
  A065394.P16057630150760024369.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A065394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065451.P16611610133996272809

`A000045(Δ[A002088(abs(1-n))]%(n+1))`
-/

namespace A065451.P16611610133996272809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)).toNat

end

end A065451.P16611610133996272809

noncomputable section

/-- A065451: a(n) = Fibonacci(phi(n)), a(0) = 0.

Offset 0, canonical program `A065451.P16611610133996272809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. -/
def A065451 (n : ℕ) : ℤ :=
  A065451.P16611610133996272809.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. -/
def A065451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065454.P12139817057846770347

`eq[n+2, A335024(n+1)]+1`
-/

namespace A065454.P12139817057846770347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065454.P12139817057846770347

noncomputable section

/-- A065454: Let the k-th harmonic number be H(k) = Sum_{i=1..k} 1/i = P(k)/Q(k) = A001008(k)/A002805(k); sequence gives values of k such that Q(k) = Q(k+1).

Offset 1, canonical program `A065454.P12139817057846770347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065454 (n : ℕ) : ℤ :=
  (A065454.P12139817057846770347.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065976.P14889509416752367906

`A065966(eq[1, A065966(n+2)-A065966(n+1)]+1)`
-/

namespace A065976.P14889509416752367906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 2) - A065966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A065976.P14889509416752367906

noncomputable section

/-- A065976: Consecutive terms of A065966 which are also consecutive integers.

Offset 1, canonical program `A065976.P14889509416752367906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 603 terms. -/
def A065976 (n : ℕ) : ℤ :=
  A065976.P14889509416752367906.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 603 terms. -/
def A065976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066077.P17456819099526645903

`A066075(n)+a(n-1)` with `a(0)=1`
-/

namespace A066077.P17456819099526645903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066075 n + a (n - 1)

end

end A066077.P17456819099526645903

noncomputable section

/-- A066077: a(n) is the number of x such that sigma(x)-1 is 0 or one of the first n-1 primes.

Offset 1, canonical program `A066077.P17456819099526645903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066077 (n : ℕ) : ℤ :=
  A066077.P17456819099526645903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066463.P11838001426021441979

`eq[0, A295301(A000010(n+1))]+1`
-/

namespace A066463.P11838001426021441979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295301 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066463.P11838001426021441979

noncomputable section

/-- A066463: Numbers k such that phi(sigma(phi(k))) = phi(k).

Offset 1, canonical program `A066463.P11838001426021441979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. -/
def A066463 (n : ℕ) : ℤ :=
  (A066463.P11838001426021441979.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. -/
def A066463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067240.P3266130279275368684

`A008475(n+1)-(A056169(n+1)+A008475(A003557(n+1)))`
-/

namespace A067240.P3266130279275368684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) - (A056169 (n + 1) + A008475 (A003557 (n + 1)).toNat)

end

end A067240.P3266130279275368684

noncomputable section

/-- A067240: If n = Product_{i} p_i^e_i, a(n) = Sum_{i} (p_i - 1)*p_i^(e_i - 1).

Offset 1, canonical program `A067240.P3266130279275368684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067240 (n : ℕ) : ℤ :=
  A067240.P3266130279275368684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067674.P2174303709818007905

`∩[A067673(n+1)-1, A067673(n+1)]`
-/

namespace A067674.P2174303709818007905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067673 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067674.P2174303709818007905

noncomputable section

/-- A067674: Numbers k such that floor((3/2)^(k+4))/floor((3/2)^k)=(3/2)^4.

Offset 1, canonical program `A067674.P2174303709818007905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3378 terms. -/
def A067674 (n : ℕ) : ℤ :=
  (A067674.P2174303709818007905.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3378 terms. -/
def A067674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068081.P7218818830272040274

`∩[A050530(n+1), A068080(n+1)]`
-/

namespace A068081.P7218818830272040274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068081.P7218818830272040274

noncomputable section

/-- A068081: Numbers n such that n + phi(n) and n - phi(n) are prime.

Offset 1, canonical program `A068081.P7218818830272040274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2725 terms. -/
def A068081 (n : ℕ) : ℤ :=
  (A068081.P7218818830272040274.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2725 terms. -/
def A068081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068519.P12357754682876032502

`A014689(A005451(n+1))+A014684(n+1)`
-/

namespace A068519.P12357754682876032502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (A005451 (n + 1)).toNat + A014684 (n + 1)

end

end A068519.P12357754682876032502

noncomputable section

/-- A068519: If n is prime then a(n) = n, else a(n) = prime(n).

Offset 1, canonical program `A068519.P12357754682876032502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068519 (n : ℕ) : ℤ :=
  A068519.P12357754682876032502.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068811.P10074877036579306103

`p?[A000040(n+1)*A001222(A160668(n+1))]`
-/

namespace A068811.P10074877036579306103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001222 (A160668 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068811.P10074877036579306103

noncomputable section

/-- A068811: Numbers k such that k and its 10's complement (10^d-k, where d is the number of digits in k) are both primes.

Offset 1, canonical program `A068811.P10074877036579306103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1715 terms. -/
def A068811 (n : ℕ) : ℤ :=
  A068811.P10074877036579306103.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1715 terms. -/
def A068811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069170.P12605403305095502815

`A069208(A018252(n+1))`
-/

namespace A069170.P12605403305095502815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069208 (A018252 (n + 1)).toNat

end

end A069170.P12605403305095502815

noncomputable section

/-- A069170: Values of phi(k)*Sum_{d|k} 1/phi(d) for nonprimes k.

Offset 1, canonical program `A069170.P12605403305095502815`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069170 (n : ℕ) : ℤ :=
  A069170.P12605403305095502815.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069987.P16382428948986739253

`A049533(n+1)²+1`
-/

namespace A069987.P16382428948986739253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049533 (n + 1) ^ 2 + 1

end

end A069987.P16382428948986739253

noncomputable section

/-- A069987: Squarefree numbers of form k^2 + 1.

Offset 1, canonical program `A069987.P16382428948986739253`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049533, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069987 (n : ℕ) : ℤ :=
  A069987.P16382428948986739253.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049533, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069987.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070163.P4710213129982356040

`A051953(A070162(n+1))-1`
-/

namespace A070163.P4710213129982356040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A070162 (n + 1)).toNat - 1

end

end A070163.P4710213129982356040

noncomputable section

/-- A070163: Primes arising in A070162.

Offset 1, canonical program `A070163.P4710213129982356040`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070162, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070163 (n : ℕ) : ℤ :=
  A070163.P4710213129982356040.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070162, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070163.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070236.P13553058838220906984

`A069891(n+1)-A002088(n+1)`
-/

namespace A070236.P13553058838220906984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 (n + 1) - A002088 (n + 1)

end

end A070236.P13553058838220906984

noncomputable section

/-- A070236: a(n) = Sum_{k=1..n} (core(k) - phi(k)), where core(k) is the squarefree part of k.

Offset 1, canonical program `A070236.P13553058838220906984`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070236 (n : ℕ) : ℤ :=
  A070236.P13553058838220906984.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070236.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070287.P15555425564075004326

`eq[1, char[A009286(n+1)]]`
-/

namespace A070287.P15555425564075004326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009286 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070287.P15555425564075004326

noncomputable section

/-- A070287: Numbers k such that the equation lcm(sigma(x),phi(x))=k has solutions.

Offset 1, canonical program `A070287.P15555425564075004326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A070287 (n : ℕ) : ℤ :=
  (A070287.P15555425564075004326.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A070287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071000.P4044688624235870522

`comp[A070999(n+1)-1]+1`
-/

namespace A071000.P4044688624235870522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070999 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A071000.P4044688624235870522

noncomputable section

/-- A071000: Numbers m such that the denominator of Sum_{k=1..m} 1/gcd(m,k) equals m.

Offset 1, canonical program `A071000.P4044688624235870522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071000 (n : ℕ) : ℤ :=
  (A071000.P4044688624235870522.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071041.P15932926825950590640

`A071040(A351782(n+1))`
-/

namespace A071041.P15932926825950590640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071040 (A351782 (n + 1)).toNat

end

end A071041.P15932926825950590640

noncomputable section

/-- A071041: Triangle read by rows giving successive states of cellular automaton generated by "Rule 246".

Offset 0, canonical program `A071041.P15932926825950590640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071041 (n : ℕ) : ℤ :=
  A071041.P15932926825950590640.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071264.P6853704357610007777

`Δ[A032952(n)]-A002057(n)`
-/

namespace A071264.P6853704357610007777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002057 n

end

end A071264.P6853704357610007777

noncomputable section

/-- A071264: Expansion of (1+x*C^4)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071264.P6853704357610007777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A071264 (n : ℕ) : ℤ :=
  A071264.P6853704357610007777.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A071264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071320.P16588707936141343234

`∩[A071319(n+1)-1, A071319(n+1)]`
-/

namespace A071320.P16588707936141343234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071319 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071320.P16588707936141343234

noncomputable section

/-- A071320: Least of four consecutive numbers which are cubefree and not squarefree, i.e., numbers k such that {k, k+1, k+2, k+3} are in A067259.

Offset 1, canonical program `A071320.P16588707936141343234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A071320 (n : ℕ) : ℤ :=
  (A071320.P16588707936141343234.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A071320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071739.P1815555829644906627

`A071736(n)-A099376(n)`
-/

namespace A071739.P1815555829644906627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071736 n - A099376 n

end

end A071739.P1815555829644906627

noncomputable section

/-- A071739: Expansion of (1+x^3*C^4)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071739.P1815555829644906627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071739 (n : ℕ) : ℤ :=
  A071739.P1815555829644906627.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071740.P5522841597563350787

`A026029(n)+A000245(n)`
-/

namespace A071740.P5522841597563350787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026029 n + A000245 n

end

end A071740.P5522841597563350787

noncomputable section

/-- A071740: Expansion of (1+x^3*C^4)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071740.P5522841597563350787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071740 (n : ℕ) : ℤ :=
  A071740.P5522841597563350787.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071741.P9703723317413013413

`Δ[A026029(n)]`
-/

namespace A071741.P9703723317413013413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071741.P9703723317413013413

noncomputable section

/-- A071741: Expansion of (1+x^3*C^4)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071741.P9703723317413013413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071741 (n : ℕ) : ℤ :=
  A071741.P9703723317413013413.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071757.P8104647612587833424

`Δ[A071736(n)-A000245(n)]`
-/

namespace A071757.P8104647612587833424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071736 n - A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071757.P8104647612587833424

noncomputable section

/-- A071757: Expansion of (1+x^4*C^4)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071757.P8104647612587833424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071757 (n : ℕ) : ℤ :=
  A071757.P8104647612587833424.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072439.P1791281845013310770

`A000040(A071600(n+1))`
-/

namespace A072439.P1791281845013310770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A071600 (n + 1)).toNat

end

end A072439.P1791281845013310770

noncomputable section

/-- A072439: Primes prime(k) such that the number of binary 1's in prime(k) equals the number of binary 1's in k.

Offset 1, canonical program `A072439.P1791281845013310770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071600, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072439 (n : ℕ) : ℤ :=
  A072439.P1791281845013310770.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071600, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072439.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072577.P9359693124357026708

`eq[A023416(n+1), A035103(n+1)]+1`
-/

namespace A072577.P9359693124357026708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A072577.P9359693124357026708

noncomputable section

/-- A072577: Numbers k such that k and the k-th prime have the same number of 0's in their binary representation.

Offset 1, canonical program `A072577.P9359693124357026708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1455 terms. -/
def A072577 (n : ℕ) : ℤ :=
  (A072577.P9359693124357026708.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1455 terms. -/
def A072577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072579.P12021979385402821400

`eq[A000120(n+1), A035103(n+1)]+1`
-/

namespace A072579.P12021979385402821400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A072579.P12021979385402821400

noncomputable section

/-- A072579: In binary representation: k has the same number of 1's as the k-th prime has 0's.

Offset 1, canonical program `A072579.P12021979385402821400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1585 terms. -/
def A072579 (n : ℕ) : ℤ :=
  (A072579.P12021979385402821400.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1585 terms. -/
def A072579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072585.P14181242269716564526

`eq[0, A010879(A051953(n+1))]+1`
-/

namespace A072585.P14181242269716564526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A051953 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072585.P14181242269716564526

noncomputable section

/-- A072585: Numbers k such that k and phi(k) end with the same digit in base 10.

Offset 1, canonical program `A072585.P14181242269716564526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1256 terms. -/
def A072585 (n : ℕ) : ℤ :=
  (A072585.P14181242269716564526.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1256 terms. -/
def A072585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072757.P10660546183651895635

`A026344(n+1)+1`
-/

namespace A072757.P10660546183651895635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026344 (n + 1) + 1

end

end A072757.P10660546183651895635

noncomputable section

/-- A072757: Complement of A072756.

Offset 0, canonical program `A072757.P10660546183651895635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072757 (n : ℕ) : ℤ :=
  A072757.P10660546183651895635.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073612.P11465339140112871520

`(A061802(n+1)+1)/2`
-/

namespace A073612.P11465339140112871520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061802 (n + 1) + 1 : ℚ) / 2

end

end A073612.P11465339140112871520

noncomputable section

/-- A073612: Group the positive integers as (1, 2), (3, 4, 5), (6, 7, 8, 9, 10), (11, 12, 13, 14, 15, 16, 17), ... the n-th group containing prime(n) elements. Except the first, all groups contain an odd number of elements and hence have a middle term. Sequence gives the middle terms starting from group 2.

Offset 2, canonical program `A073612.P11465339140112871520`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061802, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073612 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A073612.P11465339140112871520.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061802, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073612.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074204.P9056987276116765249

`eq[A000120(n), A133179(A061338(n))]`
-/

namespace A074204.P9056987276116765249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 (A061338 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074204.P9056987276116765249

noncomputable section

/-- A074204: Numbers k such that the number of 1's in the binary representation of k divides 2^k+1.

Offset 1, canonical program `A074204.P9056987276116765249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A074204 (n : ℕ) : ℤ :=
  (A074204.P9056987276116765249.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A074204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074644.P111578526858648291

`C(A002618(n+1), 3)%(n+1)`
-/

namespace A074644.P111578526858648291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002618 (n + 1)).toNat 3 % (n + 1)

end

end A074644.P111578526858648291

noncomputable section

/-- A074644: a(n) = (A074639(n^2) - A074639(n)) mod n.

Offset 1, canonical program `A074644.P111578526858648291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A074644 (n : ℕ) : ℤ :=
  (A074644.P111578526858648291.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A074644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074661.P11748437704259827702

`eq[1, A003415(A051903(n+1))]+1`
-/

namespace A074661.P11748437704259827702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A051903 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074661.P11748437704259827702

noncomputable section

/-- A074661: Let n = 2^e_2 * 3^e_3 * 5^e_5 * ... be the prime factorization of n; sequence gives n such that max{e_2, e_3, ...} is prime.

Offset 1, canonical program `A074661.P11748437704259827702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074661 (n : ℕ) : ℤ :=
  (A074661.P11748437704259827702.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074908.P11953398910720420392

`A061398(n+1)+2-A074905(n+1)`
-/

namespace A074908.P11953398910720420392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061398 (n + 1) + (2 - A074905 (n + 1))

end

end A074908.P11953398910720420392

noncomputable section

/-- A074908: Number of integers with an odd number of distinct primes (for which mu(n)=-1) between two consecutive primes prime(n) and prime(n+1).

Offset 1, canonical program `A074908.P11953398910720420392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074908 (n : ℕ) : ℤ :=
  A074908.P11953398910720420392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074929.P16736353383474102315

`A006094(n+1)-A078444(n+1)²`
-/

namespace A074929.P16736353383474102315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - A078444 (n + 1) ^ 2

end

end A074929.P16736353383474102315

noncomputable section

/-- A074929: a(n)>0 such that p(n)*p(n+1)-a(n) is a maximal square.

Offset 1, canonical program `A074929.P16736353383474102315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074929 (n : ℕ) : ℤ :=
  A074929.P16736353383474102315.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074993.P10055649416596531570

`ceil(n/(2*(n+1))*A020338(n+1))`
-/

namespace A074993.P10055649416596531570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (2 * (n + 1) : ℚ) * (A020338 (n + 1) : ℚ)⌉

end

end A074993.P10055649416596531570

noncomputable section

/-- A074993: a(n) = floor((concatenation of n, n+1)/2).

Offset 0, canonical program `A074993.P10055649416596531570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074993 (n : ℕ) : ℤ :=
  A074993.P10055649416596531570.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075287.P9261930736193490140

`∩[2*A138636(n+1), A072570(n+1)]`
-/

namespace A075287.P9261930736193490140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075287.P9261930736193490140

noncomputable section

/-- A075287: Interprimes which are of the form s*prime, s=12.

Offset 1, canonical program `A075287.P9261930736193490140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 490 terms. -/
def A075287 (n : ℕ) : ℤ :=
  (A075287.P9261930736193490140.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 490 terms. -/
def A075287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075302.P4171815956807541736

`A059268(n)*A099375(n)-1`
-/

namespace A075302.P4171815956807541736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A099375 n - 1

end

end A075302.P4171815956807541736

noncomputable section

/-- A075302: Transpose of array A075300.

Offset 0, canonical program `A075302.P4171815956807541736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075302 (n : ℕ) : ℤ :=
  A075302.P4171815956807541736.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075541.P5486897583937567191

`A000720(A054643(n+1))`
-/

namespace A075541.P5486897583937567191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A054643 (n + 1)).toNat

end

end A075541.P5486897583937567191

noncomputable section

/-- A075541: Numbers k such that prime(k) + prime(k+1) + prime(k+2) is a multiple of 3.

Offset 1, canonical program `A075541.P5486897583937567191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1395 terms. -/
def A075541 (n : ℕ) : ℤ :=
  A075541.P5486897583937567191.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1395 terms. -/
def A075541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075673.P275598027146111731

`Δ[A061802(∑[n]+1)]/2`
-/

namespace A075673.P275598027146111731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A075673.P275598027146111731

noncomputable section

/-- A075673: Sum of next n integer interprimes (cf. A024675).

Offset 1, canonical program `A075673.P275598027146111731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075673 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A075673.P275598027146111731.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075706.P15836604231121024393

`∩[A023228(n+1), A065966(n+1)]`
-/

namespace A075706.P15836604231121024393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075706.P15836604231121024393

noncomputable section

/-- A075706: Safe primes (A005385) (p and (p-1)/2 are primes) such that 8*p+1 (A023228) is also prime.

Offset 1, canonical program `A075706.P15836604231121024393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 868 terms. -/
def A075706 (n : ℕ) : ℤ :=
  (A075706.P15836604231121024393.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 868 terms. -/
def A075706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076485.P11010209865824294629

`lt[0, A066087(n+1)]+1`
-/

namespace A076485.P11010209865824294629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066087 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A076485.P11010209865824294629

noncomputable section

/-- A076485: Solutions to gcd(sigma(x), phi(x)) > gcd(sigma(core(x)), phi(core(x))), i.e., when A009223(x) > A066086(x) or if A066087(x) > 0.

Offset 1, canonical program `A076485.P11010209865824294629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A076485 (n : ℕ) : ℤ :=
  (A076485.P11010209865824294629.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A076485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076486.P4890063333090486517

`lt[A066087(n+1), 0]+1`
-/

namespace A076486.P4890063333090486517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066087 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A076486.P4890063333090486517

noncomputable section

/-- A076486: Solutions to gcd(sigma(x), phi(x)) < gcd(sigma(core(x)), phi(core(x))), i.e., when A009223(x) < A066086(x) or if A066087(x) < 0.

Offset 1, canonical program `A076486.P4890063333090486517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A076486 (n : ℕ) : ℤ :=
  (A076486.P4890063333090486517.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A076486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076487.P6113147361711761600

`eq[0, A066087(n+1)]+1`
-/

namespace A076487.P6113147361711761600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066087 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076487.P6113147361711761600

noncomputable section

/-- A076487: Solutions to gcd(sigma(x), phi(x)) = gcd(sigma(core(x)), phi(core(x))), i.e., when A009223(x) = A066086(x) or if A066087(x) = 0.

Offset 1, canonical program `A076487.P6113147361711761600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7060 terms. -/
def A076487 (n : ℕ) : ℤ :=
  (A076487.P6113147361711761600.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7060 terms. -/
def A076487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076608.P14954693056762481998

`A062298(n+1)-(A062602(n+1)+A005171(n+1))`
-/

namespace A076608.P14954693056762481998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) - (A062602 (n + 1) + A005171 (n + 1))

end

end A076608.P14954693056762481998

noncomputable section

/-- A076608: Number of nonprimes k < n such that also n-k is not a prime.

Offset 1, canonical program `A076608.P14954693056762481998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076608 (n : ℕ) : ℤ :=
  A076608.P14954693056762481998.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076953.P18252334485820112232

`A000010(A003990(n+1))*A051953(A003989(n+1))`
-/

namespace A076953.P18252334485820112232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003990 (n + 1)).toNat * A051953 (A003989 (n + 1)).toNat

end

end A076953.P18252334485820112232

noncomputable section

/-- A076953: Array T(m,n) = phi(mn)-phi(m)phi(n) (m,n >= 1), read by antidiagonals.

Offset 1, canonical program `A076953.P18252334485820112232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076953 (n : ℕ) : ℤ :=
  A076953.P18252334485820112232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077039.P5798426574250483865

`∑[A073579(n+1)]`
-/

namespace A077039.P5798426574250483865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077039.P5798426574250483865

noncomputable section

/-- A077039: Partial sums of A073579.

Offset 1, canonical program `A077039.P5798426574250483865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077039 (n : ℕ) : ℤ :=
  A077039.P5798426574250483865.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077088.P11718412499203878740

`∑{d}[2*A001065(n+1)-A051709(n+1), A007431(#)]`
-/

namespace A077088.P11718412499203878740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001065 (n + 1) - A051709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A077088.P11718412499203878740

noncomputable section

/-- A077088: a(n) = phi(sigma(n) - phi(n)), where phi is Euler's totient function and sigma is the sum of divisors function, with a(1) = 0.

Offset 1, canonical program `A077088.P11718412499203878740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6299 terms. -/
def A077088 (n : ℕ) : ℤ :=
  A077088.P11718412499203878740.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6299 terms. -/
def A077088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077436.P405008130095313056

`eq[0, A232243(n)]`
-/

namespace A077436.P405008130095313056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A077436.P405008130095313056

noncomputable section

/-- A077436: Let B(n) be the sum of binary digits of n. This sequence contains n such that B(n) = B(n^2).

Offset 1, canonical program `A077436.P405008130095313056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A077436 (n : ℕ) : ℤ :=
  (A077436.P405008130095313056.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A077436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078166.P6438144693366126053

`∩[A039770(n+1), A039771(n+1)]`
-/

namespace A078166.P6438144693366126053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078166.P6438144693366126053

noncomputable section

/-- A078166: Numbers k such that phi(k) is a perfect sixth power.

Offset 1, canonical program `A078166.P6438144693366126053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A078166 (n : ℕ) : ℤ :=
  (A078166.P6438144693366126053.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A078166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078426.P8470223486056224511

`record[xor(n+1, A001489(A063883(n+1)))]`
-/

namespace A078426.P8470223486056224511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A001489 (A063883 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078426.P8470223486056224511

noncomputable section

/-- A078426: Numbers k such that there is no solution to the equation sigma(x) = 2^k, where sigma(x) denotes the sum of the divisors of x.

Offset 1, canonical program `A078426.P8470223486056224511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A078426 (n : ℕ) : ℤ :=
  A078426.P8470223486056224511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A078426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079318.P1413714621886899686

`ceil(A162784(n)/3)`
-/

namespace A079318.P1413714621886899686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A162784 n : ℚ) / 3⌉

end

end A079318.P1413714621886899686

noncomputable section

/-- A079318: a(0) = 1; for n > 0, a(n) = (3^(A000120(n)-1) + 1)/2.

Offset 0, canonical program `A079318.P1413714621886899686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079318 (n : ℕ) : ℤ :=
  A079318.P1413714621886899686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079476.P11192462529891876628

`A007918(A002618(n+1))`
-/

namespace A079476.P11192462529891876628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A002618 (n + 1)).toNat

end

end A079476.P11192462529891876628

noncomputable section

/-- A079476: First prime greater than or equal to phi(n^2).

Offset 1, canonical program `A079476.P11192462529891876628`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079476 (n : ℕ) : ℤ :=
  A079476.P11192462529891876628.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079476.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079529.P10814540628979390956

`A079528(Δ[A053767(n)])`
-/

namespace A079529.P10814540628979390956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079528 (f1 (n + 1) - f1 n).toNat

end

end A079529.P10814540628979390956

noncomputable section

/-- A079529: a(n) = sigma(n) - ceiling(n + sqrt n) as n runs through the composite numbers A002808.

Offset 1, canonical program `A079529.P10814540628979390956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A079529 (n : ℕ) : ℤ :=
  A079529.P10814540628979390956.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A079529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079871.P17733197390291506852

`A079870(n+1)^A001222(n+1)`
-/

namespace A079871.P17733197390291506852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079870 (n + 1) : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A079871.P17733197390291506852

noncomputable section

/-- A079871: a(1)=1 and for n>1: ceiling(n^(1/Omega(n)))^Omega(n), where Omega(n) is the total number of prime factors of n (A001222).

Offset 1, canonical program `A079871.P17733197390291506852`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079870, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079871 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A079871.P17733197390291506852.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079870, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079871.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080192.P14998910337939777557

`A045344(eq[0, A102820(n+1)])`
-/

namespace A080192.P14998910337939777557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080192.P14998910337939777557

noncomputable section

/-- A080192: Complement of A080191 relative to A000040. Prime p is a term iff there is no prime between 2*p and 2*q, where q is the next prime after p.

Offset 1, canonical program `A080192.P14998910337939777557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2258 terms. -/
def A080192 (n : ℕ) : ℤ :=
  A080192.P14998910337939777557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2258 terms. -/
def A080192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080885.P16563174699111181845

`C(A080884(n+1), 2)`
-/

namespace A080885.P16563174699111181845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A080884 (n + 1)).toNat 2

end

end A080885.P16563174699111181845

noncomputable section

/-- A080885: Boolean AND of (0,1) versions of Thue-Morse word (A010060) and Fibonacci word (A003849).

Offset 1, canonical program `A080885.P16563174699111181845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080885 (n : ℕ) : ℤ :=
  (A080885.P16563174699111181845.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080886.P17709455679324199152

`floor(sqrt(A080884(n+1)))`
-/

namespace A080886.P17709455679324199152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A080884 (n + 1))

end

end A080886.P17709455679324199152

noncomputable section

/-- A080886: Boolean OR of (0,1) versions of Thue-Morse word (A010060) and Fibonacci word (A003849).

Offset 1, canonical program `A080886.P17709455679324199152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080886 (n : ℕ) : ℤ :=
  A080886.P17709455679324199152.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080887.P5959729836914886980

`A080884(n+1)%2`
-/

namespace A080887.P5959729836914886980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080884 (n + 1)) 2

end

end A080887.P5959729836914886980

noncomputable section

/-- A080887: Boolean XOR of (0,1) versions of Thue-Morse word (A010060) and Fibonacci word (A003849).

Offset 1, canonical program `A080887.P5959729836914886980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080887 (n : ℕ) : ℤ :=
  A080887.P5959729836914886980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081238.P2386912721371686134

`2*A070548(n+1)*A070549(n+1)`
-/

namespace A081238.P2386912721371686134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A070548 (n + 1) * A070549 (n + 1)

end

end A081238.P2386912721371686134

noncomputable section

/-- A081238: #{(i,j): mu(i)*mu(j) = -1, 1 <= i <= n, 1 <= j <= n}, where mu=A008683 (Moebius function).

Offset 1, canonical program `A081238.P2386912721371686134`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070548, A070549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A081238 (n : ℕ) : ℤ :=
  A081238.P2386912721371686134.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070548, A070549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A081238.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081240.P16420253042079056579

`A070548(n+1)²+A070549(n+1)²`
-/

namespace A081240.P16420253042079056579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (n + 1) ^ 2 + A070549 (n + 1) ^ 2

end

end A081240.P16420253042079056579

noncomputable section

/-- A081240: a(n) = #{(i,j): mu(i)*mu(j) = 1, 1<=i,j<=n}, where mu = A008683 (Moebius function).

Offset 1, canonical program `A081240.P16420253042079056579`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070548, A070549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A081240 (n : ℕ) : ℤ :=
  A081240.P16420253042079056579.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070548, A070549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A081240.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081605.P3535045395729995710

`comp[A032924(n+1)]`
-/

namespace A081605.P3535045395729995710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081605.P3535045395729995710

noncomputable section

/-- A081605: Numbers having at least one 0 in their ternary representation.

Offset 1, canonical program `A081605.P3535045395729995710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081605 (n : ℕ) : ℤ :=
  (A081605.P3535045395729995710.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081835.P3909569724700482251

`A016777(n)+comp[A007064(2*(n+1))]`
-/

namespace A081835.P3909569724700482251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A081835.P3909569724700482251

noncomputable section

/-- A081835: a(1)=1, a(n) = a(n-1) + 5 if n is already in the sequence, a(n) = a(n-1) + 4 otherwise.

Offset 1, canonical program `A081835.P3909569724700482251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081835 (n : ℕ) : ℤ :=
  A081835.P3909569724700482251.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082509.P14196802049557851940

`A001223(lt[1, A100375(n+1)]+1)`
-/

namespace A082509.P14196802049557851940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A082509.P14196802049557851940

noncomputable section

/-- A082509: Differences between consecutive primes that are not powers of 2 in order of their appearance. Differences which are powers of 2 are omitted from A001223.

Offset 1, canonical program `A082509.P14196802049557851940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6276 terms. -/
def A082509 (n : ℕ) : ℤ :=
  A082509.P14196802049557851940.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6276 terms. -/
def A082509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082968.P1835205782944855

`∑[(n+1)%A159481(n)]`
-/

namespace A082968.P1835205782944855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A159481 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082968.P1835205782944855

noncomputable section

/-- A082968: a(n)=sum(k=1,n, k mod sum(i=0,k-1,1-t(i))) where t(i)=A010060(i) is the Thue-Morse sequence.

Offset 1, canonical program `A082968.P1835205782944855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3162 terms. -/
def A082968 (n : ℕ) : ℤ :=
  A082968.P1835205782944855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3162 terms. -/
def A082968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000029.P13945956715463538310

`A059076(n)+A029744(n+1)`
-/

namespace A000029.P13945956715463538310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059076 n + A029744 (n + 1)

end

end A000029.P13945956715463538310

noncomputable section

/-- A000029: Number of necklaces with n beads of 2 colors, allowing turning over (these are also called bracelets).

Offset 0, canonical program `A000029.P13945956715463538310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A000029 (n : ℕ) : ℤ :=
  A000029.P13945956715463538310.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A000029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001617.P10653443517118313610

`1+A001615(n+1)/12-A000089(n+1)/4-A000086(n+1)/3-A001616(n+1)/2`
-/

namespace A001617.P10653443517118313610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (A001615 (n + 1) : ℚ) / 12 - (A000089 (n + 1) : ℚ) / 4 - (A000086 (n + 1) : ℚ) / 3 - (A001616 (n + 1) : ℚ) / 2

end

end A001617.P10653443517118313610

noncomputable section

/-- A001617: Genus of modular group Gamma_0(n). Or, genus of modular curve X_0(n).

Offset 1, canonical program `A001617.P10653443517118313610`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000086, A000089, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A001617 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001617.P10653443517118313610.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000086, A000089, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A001617.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A002701.P84297053768198759

`A007406(n+1)/gcd(A002738(n), A007406(n+1))`
-/

namespace A002701.P84297053768198759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007406 (n + 1) : ℚ) / (Int.gcd (A002738 n) (A007406 (n + 1)) : ℚ)

end

end A002701.P84297053768198759

noncomputable section

/-- A002701: Coefficients for numerical differentiation.

Offset 2, canonical program `A002701.P84297053768198759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A002701 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002701.P84297053768198759.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A002701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002731.P17861816823819005131

`filter[A385821(n+2), A360128(#)]`
-/

namespace A002731.P17861816823819005131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385821 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360128 (f1 j).toNat = 1) n)

end

end A002731.P17861816823819005131

noncomputable section

/-- A002731: Numbers k such that (k^2 + 1)/2 is prime.

Offset 1, canonical program `A002731.P17861816823819005131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6612 terms. -/
def A002731 (n : ℕ) : ℤ :=
  A002731.P17861816823819005131.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6612 terms. -/
def A002731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002740.P348049862178716560

`(A005408(n)-A133263(n))*A246432(n)`
-/

namespace A002740.P348049862178716560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - A133263 n) * A246432 n

end

end A002740.P348049862178716560

noncomputable section

/-- A002740: Number of tree-rooted bridgeless planar maps with two vertices and n faces.

Offset 0, canonical program `A002740.P348049862178716560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A002740 (n : ℕ) : ℤ :=
  A002740.P348049862178716560.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A002740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003145.P16204300471705086444

`lt[A317193(n+1)/17, 0]+1`
-/

namespace A003145.P16204300471705086444
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317193 (n + 1) : ℚ) / 17

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A003145.P16204300471705086444

noncomputable section

/-- A003145: Positions of letter b in the tribonacci word abacabaabacababac... generated by a->ab, b->ac, c->a (cf. A092782).

Offset 1, canonical program `A003145.P16204300471705086444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003145 (n : ℕ) : ℤ :=
  (A003145.P16204300471705086444.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003257.P5560299711947095320

`comp[A003256(n+1)-1]+1`
-/

namespace A003257.P5560299711947095320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003256 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A003257.P5560299711947095320

noncomputable section

/-- A003257: Complement of A003256.

Offset 1, canonical program `A003257.P5560299711947095320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003257 (n : ℕ) : ℤ :=
  (A003257.P5560299711947095320.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003265.P1824215656796251863

`lt[A317193(n+1), 1]`
-/

namespace A003265.P1824215656796251863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317193 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A003265.P1824215656796251863

noncomputable section

/-- A003265: Not representable by truncated tribonacci sequence 2, 4, 7, 13, 24, 44, 81, ....

Offset 1, canonical program `A003265.P1824215656796251863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003265 (n : ℕ) : ℤ :=
  (A003265.P1824215656796251863.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003617.P3664545779481022082

`A151800(A011557(n))`
-/

namespace A003617.P3664545779481022082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A011557 n).toNat

end

end A003617.P3664545779481022082

noncomputable section

/-- A003617: Smallest n-digit prime.

Offset 1, canonical program `A003617.P3664545779481022082`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003617 (n : ℕ) : ℤ :=
  A003617.P3664545779481022082.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003617.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004197.P2905520585302697030

`A003983(n+1)-1`
-/

namespace A004197.P2905520585302697030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) - 1

end

end A004197.P2905520585302697030

noncomputable section

/-- A004197: Triangle read by rows. T(n, k) = n - k if n - k < k, otherwise k.

Offset 0, canonical program `A004197.P2905520585302697030`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003983, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004197 (n : ℕ) : ℤ :=
  A004197.P2905520585302697030.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003983, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004197.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004730.P1125278465444381569

`gcd(A138364(n), A380909(n))`
-/

namespace A004730.P1125278465444381569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138364 n) (A380909 n)

end

end A004730.P1125278465444381569

noncomputable section

/-- A004730: Numerator of n!!/(n+1)!! (cf. A006882).

Offset 0, canonical program `A004730.P1125278465444381569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A004730 (n : ℕ) : ℤ :=
  (A004730.P1125278465444381569.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A004730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005322.P16684099688218700763

`∑[A026134(n+1)]`
-/

namespace A005322.P16684099688218700763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005322.P16684099688218700763

noncomputable section

/-- A005322: Column of Motzkin triangle.

Offset 2, canonical program `A005322.P16684099688218700763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A005322 (n : ℕ) : ℤ :=
  A005322.P16684099688218700763.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A005322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005594.P12083784087894004788

`A057427(n)+A032198(A028310(n))`
-/

namespace A005594.P12083784087894004788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A032198 (A028310 n).toNat

end

end A005594.P12083784087894004788

noncomputable section

/-- A005594: States of a dynamic storage system.

Offset 0, canonical program `A005594.P12083784087894004788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A005594 (n : ℕ) : ℤ :=
  A005594.P12083784087894004788.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A005594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005652.P16284320388527205357

`eq[2, A191329(2*(n+1))]+1`
-/

namespace A005652.P16284320388527205357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191329 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005652.P16284320388527205357

noncomputable section

/-- A005652: Lexicographically least increasing sequence, starting with 1, such that the sum of 2 distinct terms is never a Fibonacci number.

Offset 1, canonical program `A005652.P16284320388527205357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005652 (n : ℕ) : ℤ :=
  (A005652.P16284320388527205357.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005678.P5420556999215670440

`dr(Δ[A015521(A027615(n))])`
-/

namespace A005678.P5420556999215670440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015521 (A027615 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A005678.P5420556999215670440

noncomputable section

/-- A005678: A squarefree ternary sequence.

Offset 1, canonical program `A005678.P5420556999215670440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005678 (n : ℕ) : ℤ :=
  (A005678.P5420556999215670440.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006134.P14646737511889561180

`A100066(2*n+1)`
-/

namespace A006134.P14646737511889561180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100066 (2 * n + 1)

end

end A006134.P14646737511889561180

noncomputable section

/-- A006134: a(n) = Sum_{k=0..n} binomial(2*k,k).

Offset 0, canonical program `A006134.P14646737511889561180`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100066, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006134 (n : ℕ) : ℤ :=
  A006134.P14646737511889561180.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100066, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006134.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007345.P15189906619051462837

`∑[A082298(n)-Δ[A181768(n)]]`
-/

namespace A007345.P15189906619051462837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082298 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007345.P15189906619051462837

noncomputable section

/-- A007345: Number of Havender tableaux of height 2 with n columns.

Offset 0, canonical program `A007345.P15189906619051462837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A007345 (n : ℕ) : ℤ :=
  A007345.P15189906619051462837.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A007345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007432.P16663120023730915232

`∑{d}[n+1, #*A007428((n+1)/#)]`
-/

namespace A007432.P16663120023730915232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007432.P16663120023730915232

noncomputable section

/-- A007432: Moebius transform applied thrice to natural numbers.

Offset 1, canonical program `A007432.P16663120023730915232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007432 (n : ℕ) : ℤ :=
  A007432.P16663120023730915232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008376.P8710974549002367927

`A035746(n)-9*A035602(n)`
-/

namespace A008376.P8710974549002367927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035746 n - 9 * A035602 n

end

end A008376.P8710974549002367927

noncomputable section

/-- A008376: Coordination sequence for D_9 lattice.

Offset 0, canonical program `A008376.P8710974549002367927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008376 (n : ℕ) : ℤ :=
  A008376.P8710974549002367927.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009041.P2318627232109113920

`∑[char[∑[A046079(n+1)]]]+2`
-/

namespace A009041.P2318627232109113920
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A009041.P2318627232109113920

noncomputable section

/-- A009041: Ordered legs of Pythagorean triangles.

Offset 1, canonical program `A009041.P2318627232109113920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009041 (n : ℕ) : ℤ :=
  (A009041.P2318627232109113920.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011685.P17100655792265488863

`A011684(A008706(n)+83)`
-/

namespace A011685.P17100655792265488863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011684 (A008706 n + 83).toNat

end

end A011685.P17100655792265488863

noncomputable section

/-- A011685: A binary m-sequence: expansion of reciprocal of x^7+x^6+x^3+x+1.

Offset 0, canonical program `A011685.P17100655792265488863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1984 terms. -/
def A011685 (n : ℕ) : ℤ :=
  A011685.P17100655792265488863.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1984 terms. -/
def A011685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013600.P6360817973615106358

`A063766(n)-6^n`
-/

namespace A013600.P6360817973615106358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063766 n - (6 ^ n : ℤ)

end

end A013600.P6360817973615106358

noncomputable section

/-- A013600: a(n) = nextprime(6^n)-6^n.

Offset 0, canonical program `A013600.P6360817973615106358`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063766, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013600 (n : ℕ) : ℤ :=
  A013600.P6360817973615106358.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063766, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013600.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A013606.P5531938547174120995

`A000302(n+1)-A104089(n+1)`
-/

namespace A013606.P5531938547174120995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (n + 1) - A104089 (n + 1)

end

end A013606.P5531938547174120995

noncomputable section

/-- A013606: a(n) = 4^n - prevprime(4^n).

Offset 1, canonical program `A013606.P5531938547174120995`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013606 (n : ℕ) : ℤ :=
  A013606.P5531938547174120995.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013606.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A013634.P1496314925931275042

`A151800(n)+n`
-/

namespace A013634.P1496314925931275042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n + (n : ℤ)

end

end A013634.P1496314925931275042

noncomputable section

/-- A013634: a(n) = nextprime(n) + n.

Offset 0, canonical program `A013634.P1496314925931275042`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013634 (n : ℕ) : ℤ :=
  A013634.P1496314925931275042.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013634.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014211.P17006346503809986776

`A104081(n)+A000038(A008611(n))`
-/

namespace A014211.P17006346503809986776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104081 n + A000038 (A008611 n).toNat

end

end A014211.P17006346503809986776

noncomputable section

/-- A014211: Next prime after 3^n.

Offset 0, canonical program `A014211.P17006346503809986776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A014211 (n : ℕ) : ℤ :=
  A014211.P17006346503809986776.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A014211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014316.P17889708612490521663

`∑[∑[A155051(A004275(n))]-2]+1`
-/

namespace A014316.P17889708612490521663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155051 (A004275 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A014316.P17889708612490521663

noncomputable section

/-- A014316: Convolution of Catalan numbers and squares.

Offset 0, canonical program `A014316.P17889708612490521663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A014316 (n : ℕ) : ℤ :=
  A014316.P17889708612490521663.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A014316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014726.P17215168887441712385

`A014421(n)²`
-/

namespace A014726.P17215168887441712385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014421 n ^ 2

end

end A014726.P17215168887441712385

noncomputable section

/-- A014726: Squares of odd elements in Pascal triangle.

Offset 0, canonical program `A014726.P17215168887441712385`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014421, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014726 (n : ℕ) : ℤ :=
  A014726.P17215168887441712385.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014421, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014726.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014727.P2848132402637456183

`A014428(n+1)²`
-/

namespace A014727.P2848132402637456183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014428 (n + 1) ^ 2

end

end A014727.P2848132402637456183

noncomputable section

/-- A014727: Squares of even elements in Pascal's triangle A007318.

Offset 0, canonical program `A014727.P2848132402637456183`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014428, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014727 (n : ℕ) : ℤ :=
  A014727.P2848132402637456183.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014428, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014727.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A015049.P304313966047543276

`A019554(A013929(n+1))`
-/

namespace A015049.P304313966047543276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A013929 (n + 1)).toNat

end

end A015049.P304313966047543276

noncomputable section

/-- A015049: Let m = A013929(n); then a(n) = smallest k such that m divides k^2.

Offset 1, canonical program `A015049.P304313966047543276`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A015049 (n : ℕ) : ℤ :=
  A015049.P304313966047543276.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A015049.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A015051.P1678568298610178780

`A053166(A013929(n+1))`
-/

namespace A015051.P1678568298610178780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (A013929 (n + 1)).toNat

end

end A015051.P1678568298610178780

noncomputable section

/-- A015051: Let m = A013929(n); then a(n) = smallest k such that m divides k^4.

Offset 1, canonical program `A015051.P1678568298610178780`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A015051 (n : ℕ) : ℤ :=
  A015051.P1678568298610178780.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A015051.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A015627.P6012177256396085323

`A015622(n+2)-∑[A161680(n)]`
-/

namespace A015627.P6012177256396085323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015622 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015627.P6012177256396085323

noncomputable section

/-- A015627: Quadruples of different integers from [ 2,n ] with no global factor.

Offset 2, canonical program `A015627.P6012177256396085323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1010 terms. -/
def A015627 (n : ℕ) : ℤ :=
  A015627.P6012177256396085323.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1010 terms. -/
def A015627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015640.P16174645672135619219

`∑[A346761(n+1)]-A015622(n+1)`
-/

namespace A015640.P16174645672135619219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A015622 (n + 1)

end

end A015640.P16174645672135619219

noncomputable section

/-- A015640: Number of 5-tuples of different integers from [ 1,n ] with no global factor.

Offset 1, canonical program `A015640.P16174645672135619219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 362 terms. -/
def A015640 (n : ℕ) : ℤ :=
  A015640.P16174645672135619219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 362 terms. -/
def A015640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018160.P17934605926536604901

`A018124(2*n)`
-/

namespace A018160.P17934605926536604901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018124 (2 * n)

end

end A018160.P17934605926536604901

noncomputable section

/-- A018160: Powers of fifth root of 16 rounded to nearest integer.

Offset 0, canonical program `A018160.P17934605926536604901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 416 terms. -/
def A018160 (n : ℕ) : ℤ :=
  A018160.P17934605926536604901.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 416 terms. -/
def A018160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018892.P739243444939951687

`A046079(2*(n+1))+1`
-/

namespace A018892.P739243444939951687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (2 * (n + 1)) + 1

end

end A018892.P739243444939951687

noncomputable section

/-- A018892: Number of ways to write 1/n as a sum of exactly 2 unit fractions.

Offset 1, canonical program `A018892.P739243444939951687`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046079, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A018892 (n : ℕ) : ℤ :=
  A018892.P739243444939951687.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046079, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A018892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A019422.P17202336525411077466

`record[A006532(n+1)*A010052(A074385(n+1))]`
-/

namespace A019422.P17202336525411077466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (n + 1) * A010052 (A074385 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019422.P17202336525411077466

noncomputable section

/-- A019422: Numbers whose sum of divisors is a fourth power.

Offset 1, canonical program `A019422.P17202336525411077466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. -/
def A019422 (n : ℕ) : ℤ :=
  A019422.P17202336525411077466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. -/
def A019422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019462.P18100823857315622739

`A081123(n)+A019460(n)`
-/

namespace A019462.P18100823857315622739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 n + A019460 n

end

end A019462.P18100823857315622739

noncomputable section

/-- A019462: Add 1, multiply by 1, add 2, multiply by 2, etc., start with 3.

Offset 0, canonical program `A019462.P18100823857315622739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A019462 (n : ℕ) : ℤ :=
  A019462.P18100823857315622739.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A019462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019464.P11505818576841532554

`2*A082458(n)-A082459(n)`
-/

namespace A019464.P11505818576841532554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082458 n - A082459 n

end

end A019464.P11505818576841532554

noncomputable section

/-- A019464: Multiply by 1, add 1, multiply by 2, add 2, etc., start with 1.

Offset 0, canonical program `A019464.P11505818576841532554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A019464 (n : ℕ) : ℤ :=
  A019464.P11505818576841532554.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A019464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020643.P9151950905293445288

`record[A322590(A066779(n+1))]`
-/

namespace A020643.P9151950905293445288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322590 (A066779 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020643.P9151950905293445288

noncomputable section

/-- A020643: a(n)-th squarefree is sum of first k squarefrees for some k.

Offset 1, canonical program `A020643.P9151950905293445288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. -/
def A020643 (n : ℕ) : ℤ :=
  A020643.P9151950905293445288.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. -/
def A020643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020887.P8491908464742690034

`2*A020888(n+1)`
-/

namespace A020887.P8491908464742690034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020888 (n + 1)

end

end A020887.P8491908464742690034

noncomputable section

/-- A020887: Ordered set of a + b - c as (a,b,c) runs through all primitive Pythagorean triples with a<b<c.

Offset 1, canonical program `A020887.P8491908464742690034`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020888, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A020887 (n : ℕ) : ℤ :=
  A020887.P8491908464742690034.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020888, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A020887.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A022305.P12163215201102219091

`2*(A022293(n+2)-2)`
-/

namespace A022305.P12163215201102219091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A022293 (n + 2) - 2)

end

end A022305.P12163215201102219091

noncomputable section

/-- A022305: Exactly half the first a(n) terms of A022303 are 1's.

Offset 0, canonical program `A022305.P12163215201102219091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A022305 (n : ℕ) : ℤ :=
  A022305.P12163215201102219091.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A022305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022429.P17113811194930321929

`A099467(n+1)+comp[3*(n+1)]`
-/

namespace A022429.P17113811194930321929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099467 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A022429.P17113811194930321929

noncomputable section

/-- A022429: a(n) = c(n-1) + c(n-3) where c is the sequence of numbers not in a.

Offset 0, canonical program `A022429.P17113811194930321929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022429 (n : ℕ) : ℤ :=
  A022429.P17113811194930321929.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022890.P17059555627055075678

`eq[A046930(n+1), A046930(n+5)]`
-/

namespace A022890.P17059555627055075678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022890.P17059555627055075678

noncomputable section

/-- A022890: n-th index k such that p(k) + p(k+6) = p(k+2) + p(k+4).

Offset 1, canonical program `A022890.P17059555627055075678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. -/
def A022890 (n : ℕ) : ℤ :=
  (A022890.P17059555627055075678.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. -/
def A022890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023205.P16444965507466187398

`p?[A141544(n+1)]`
-/

namespace A023205.P16444965507466187398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023205.P16444965507466187398

noncomputable section

/-- A023205: Numbers m such that m and 2*m + 5 are both prime.

Offset 1, canonical program `A023205.P16444965507466187398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1702 terms. -/
def A023205 (n : ℕ) : ℤ :=
  A023205.P16444965507466187398.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1702 terms. -/
def A023205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023250.P13940782783570891803

`p?[A192638(n+1)]`
-/

namespace A023250.P13940782783570891803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023250.P13940782783570891803

noncomputable section

/-- A023250: Primes that remain prime through 2 iterations of function f(x) = 4x + 3.

Offset 1, canonical program `A023250.P13940782783570891803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. -/
def A023250 (n : ℕ) : ℤ :=
  A023250.P13940782783570891803.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. -/
def A023250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023516.P15735167272608923564

`A001221(A023515(n+1))`
-/

namespace A023516.P15735167272608923564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A023515 (n + 1)).toNat

end

end A023516.P15735167272608923564

noncomputable section

/-- A023516: Number of distinct prime divisors of prime(n)*prime(n-1) - 1.

Offset 1, canonical program `A023516.P15735167272608923564`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023516 (n : ℕ) : ℤ :=
  A023516.P15735167272608923564.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023516.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023518.P10021540487526343479

`A051903(A023515(n+1))`
-/

namespace A023518.P10021540487526343479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A023515 (n + 1)).toNat

end

end A023518.P10021540487526343479

noncomputable section

/-- A023518: Greatest exponent in prime-power factorization of prime(n)*prime(n-1) - 1; a(1) = 0.

Offset 1, canonical program `A023518.P10021540487526343479`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023515, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A023518 (n : ℕ) : ℤ :=
  A023518.P10021540487526343479.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023515, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A023518.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023521.P8353557815363639841

`A008472(A023515(n+2))`
-/

namespace A023521.P8353557815363639841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A023515 (n + 2)).toNat

end

end A023521.P8353557815363639841

noncomputable section

/-- A023521: Sum of distinct prime divisors of prime(n)*prime(n-1) - 1.

Offset 2, canonical program `A023521.P8353557815363639841`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023521 (n : ℕ) : ℤ :=
  A023521.P8353557815363639841.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023521.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023522.P7974521389471002608

`A001222(A023515(n+2))`
-/

namespace A023522.P7974521389471002608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A023515 (n + 2)).toNat

end

end A023522.P7974521389471002608

noncomputable section

/-- A023522: Sum of exponents in prime-power factorization of p(n)*p(n-1) - 1.

Offset 2, canonical program `A023522.P7974521389471002608`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023522 (n : ℕ) : ℤ :=
  A023522.P7974521389471002608.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023522.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023523.P8224990368586558717

`A023515(n+1)+2`
-/

namespace A023523.P8224990368586558717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1) + 2

end

end A023523.P8224990368586558717

noncomputable section

/-- A023523: a(n) = prime(n)*prime(n-1) + 1.

Offset 1, canonical program `A023523.P8224990368586558717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023523 (n : ℕ) : ℤ :=
  A023523.P8224990368586558717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023614.P12700019754917235797

`A001911(n)+1-A023613(n)`
-/

namespace A023614.P12700019754917235797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n + (1 - A023613 n)

end

end A023614.P12700019754917235797

noncomputable section

/-- A023614: Convolution of Fibonacci numbers and A014306.

Offset 0, canonical program `A023614.P12700019754917235797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A023614 (n : ℕ) : ℤ :=
  A023614.P12700019754917235797.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A023614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023622.P4193336609147366981

`A023621(n+1)+A023537(n+1)`
-/

namespace A023622.P4193336609147366981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023621 (n + 1) + A023537 (n + 1)

end

end A023622.P4193336609147366981

noncomputable section

/-- A023622: Convolution of Lucas numbers and A001950.

Offset 1, canonical program `A023622.P4193336609147366981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A023622 (n : ℕ) : ℤ :=
  A023622.P4193336609147366981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A023622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023623.P13509876401011652258

`A023655(n+1)+A023655(n+1)-A023613(n)`
-/

namespace A023623.P13509876401011652258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023655 (n + 1) + (A023655 (n + 1) - A023613 n)

end

end A023623.P13509876401011652258

noncomputable section

/-- A023623: Convolution of Lucas numbers and A023533.

Offset 1, canonical program `A023623.P13509876401011652258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A023623 (n : ℕ) : ℤ :=
  A023623.P13509876401011652258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A023623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023649.P8276616955042322382

`A023609(n+1)-A002808(n+2)`
-/

namespace A023649.P8276616955042322382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023609 (n + 1) - A002808 (n + 2)

end

end A023649.P8276616955042322382

noncomputable section

/-- A023649: Convolution of composite numbers and (F(2), F(3), F(4), ...).

Offset 1, canonical program `A023649.P8276616955042322382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A023649 (n : ℕ) : ℤ :=
  A023649.P8276616955042322382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A023649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023650.P1233721125443470116

`A023539(n+1)+∑[A053767(n)]`
-/

namespace A023650.P1233721125443470116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023539 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023650.P1233721125443470116

noncomputable section

/-- A023650: Convolution of composite numbers and odd numbers.

Offset 1, canonical program `A023650.P1233721125443470116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023650 (n : ℕ) : ℤ :=
  A023650.P1233721125443470116.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023662.P10648617195950893557

`A167214(n+1)-A062020(n+1)`
-/

namespace A023662.P10648617195950893557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167214 (n + 1) - A062020 (n + 1)

end

end A023662.P10648617195950893557

noncomputable section

/-- A023662: Convolution of odd numbers and primes.

Offset 1, canonical program `A023662.P10648617195950893557`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062020, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023662 (n : ℕ) : ℤ :=
  A023662.P10648617195950893557.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062020, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023662.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023673.P5873907408002808916

`∑[A014306(n+1)]-A023671(n+1)`
-/

namespace A023673.P5873907408002808916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023671 (n + 1)

end

end A023673.P5873907408002808916

noncomputable section

/-- A023673: Convolution of A014306 with itself.

Offset 1, canonical program `A023673.P5873907408002808916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023673 (n : ℕ) : ℤ :=
  A023673.P5873907408002808916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023707.P12285787741113753776

`eq[A160385(n)+2, A110591(n)]`
-/

namespace A023707.P12285787741113753776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023707.P12285787741113753776

noncomputable section

/-- A023707: Numbers with exactly 2 0's in their base 4 expansion.

Offset 1, canonical program `A023707.P12285787741113753776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2847 terms. -/
def A023707 (n : ℕ) : ℤ :=
  (A023707.P12285787741113753776.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2847 terms. -/
def A023707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023723.P1447336693853563496

`eq[A276134(n)+2, A110592(n)]`
-/

namespace A023723.P1447336693853563496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276134 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023723.P1447336693853563496

noncomputable section

/-- A023723: Numbers with exactly 2 0's in their base 5 expansion.

Offset 1, canonical program `A023723.P1447336693853563496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1972 terms. -/
def A023723 (n : ℕ) : ℤ :=
  (A023723.P1447336693853563496.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1972 terms. -/
def A023723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023861.P14188661982875319503

`A023864(n+1)+A023864(n+1)-A023860(n+1)`
-/

namespace A023861.P14188661982875319503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023864 (n + 1) + (A023864 (n + 1) - A023860 (n + 1))

end

end A023861.P14188661982875319503

noncomputable section

/-- A023861: a(n) = 1*t(n) + 2*t(n-1) + ... + k*t(n+1-k), where k=floor((n+1)/2) and t = A000032 (Lucas numbers).

Offset 1, canonical program `A023861.P14188661982875319503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A023861 (n : ℕ) : ℤ :=
  A023861.P14188661982875319503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A023861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024554.P10151573056255696748

`∑[A024553(n+1)]`
-/

namespace A024554.P10151573056255696748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024554.P10151573056255696748

noncomputable section

/-- A024554: a(n) = Sum_{k=1..n} floor( 1/{k*sqrt(5)} ), where {x} := x - floor(x).

Offset 1, canonical program `A024554.P10151573056255696748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024554 (n : ℕ) : ℤ :=
  A024554.P10151573056255696748.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024838.P16764802098399120150

`floor(3/2*A024835(n+2))`
-/

namespace A024838.P16764802098399120150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (A024835 (n + 2) : ℚ)⌋

end

end A024838.P16764802098399120150

noncomputable section

/-- A024838: Least m such that if r and s in {1/3, 1/6, 1/9, ..., 1/3n} satisfy r < s, then r < k/m < (k+1)/m < s for some integer k.

Offset 2, canonical program `A024838.P16764802098399120150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. -/
def A024838 (n : ℕ) : ℤ :=
  A024838.P16764802098399120150.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. -/
def A024838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024839.P430240173223612655

`2*A024835(n+2)-1`
-/

namespace A024839.P430240173223612655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024835 (n + 2) - 1

end

end A024839.P430240173223612655

noncomputable section

/-- A024839: Least m such that if r and s in {1/4, 1/8, 1/12, ..., 1/4n} satisfy r < s, then r < k/m < (k+1)/m < s for some integer k.

Offset 2, canonical program `A024839.P430240173223612655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 643 terms. -/
def A024839 (n : ℕ) : ℤ :=
  A024839.P430240173223612655.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 643 terms. -/
def A024839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025544.P11648437338997869476

`∑[A032741(ratio[A025543(n)])]`
-/

namespace A025544.P11648437338997869476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025543 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((f2 (n + 1) : ℚ) / (f2 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025544.P11648437338997869476

noncomputable section

/-- A025544: a(n) = sum of the exponents in the prime factorization of the least common multiple of the first n composite numbers.

Offset 1, canonical program `A025544.P11648437338997869476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 365 terms. -/
def A025544 (n : ℕ) : ℤ :=
  A025544.P11648437338997869476.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 365 terms. -/
def A025544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025743.P16932314400444451753

`A022335(n)+∑[n]`
-/

namespace A025743.P16932314400444451753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022335 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A025743.P16932314400444451753

noncomputable section

/-- A025743: Index of 10^n within the sequence of the numbers of the form 5^i*10^j.

Offset 0, canonical program `A025743.P16932314400444451753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025743 (n : ℕ) : ℤ :=
  A025743.P16932314400444451753.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026070.P16071561854489553922

`2*A025180(n+2)-A026134(n+1)`
-/

namespace A026070.P16071561854489553922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025180 (n + 2) - A026134 (n + 1)

end

end A026070.P16071561854489553922

noncomputable section

/-- A026070: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0, |s(i) - s(i-1)| = 1 for i = 1,2; |s(i) - s(i-1)| <= 1 for i >= 3, s(n) = 3. Also a(n) = T(n,n-3), where T is the array defined in A024996.

Offset 3, canonical program `A026070.P16071561854489553922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A026070 (n : ℕ) : ℤ :=
  A026070.P16071561854489553922.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A026070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026109.P346914583229573815

`Δ[A026134(n+2)]-A026107(n+3)`
-/

namespace A026109.P346914583229573815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026134 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026107 (n + 3)

end

end A026109.P346914583229573815

noncomputable section

/-- A026109: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is a nonnegative integer, s(0) = 0, s(1) = 1, s(n) = 3, |s(i) - s(i-1)| <= 1 for i >= 2. Also a(n) = T(n,n-3), where T is the array defined in A026105.

Offset 3, canonical program `A026109.P346914583229573815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A026109 (n : ℕ) : ℤ :=
  A026109.P346914583229573815.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A026109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026123.P266507043467753679

`Δ[A026134(n+1)]`
-/

namespace A026123.P266507043467753679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026123.P266507043467753679

noncomputable section

/-- A026123: a(n) = number of (s(0),s(1),...,s(n)) such that every s(i) is a nonnegative integer, s(0) = 1, s(n) = 2, |s(1) - s(0)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2. Also a(n) = T(n,n-1), where T is the array in A026120; a(n) = U(n,n+1), where U is the array in A026148.

Offset 2, canonical program `A026123.P266507043467753679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026123 (n : ℕ) : ℤ :=
  A026123.P266507043467753679.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026240.P3782494850126413018

`abs(1-A026239(n+1)+n)`
-/

namespace A026240.P3782494850126413018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A026239 (n + 1) + (n : ℤ)|

end

end A026240.P3782494850126413018

noncomputable section

/-- A026240: a(n) = |s(n) - n|, where s = A026239.

Offset 1, canonical program `A026240.P3782494850126413018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026240 (n : ℕ) : ℤ :=
  A026240.P3782494850126413018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026422.P17430373393506009573

`A026424(floor(C(n, a(n-1))/2+n))` with `a(0)=1`
-/

namespace A026422.P17430373393506009573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026424 ⌊(Nat.choose n (a (n - 1)).toNat : ℚ) / 2 + (n : ℚ)⌋.toNat

end

end A026422.P17430373393506009573

noncomputable section

/-- A026422: a(n) = least positive integer > a(n-1) and not a(i)*a(j) for 1 <= i <= j < n.

Offset 1, canonical program `A026422.P17430373393506009573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026422 (n : ℕ) : ℤ :=
  A026422.P17430373393506009573.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026515.P8276323896044920095

`Δ[eq[A101660(n), A285383(n+1)]]`
-/

namespace A026515.P8276323896044920095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101660 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285383 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A026515.P8276323896044920095

noncomputable section

/-- A026515: a(n) = length of n-th run of identical symbols in A026513.

Offset 1, canonical program `A026515.P8276323896044920095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3337 terms. -/
def A026515 (n : ℕ) : ℤ :=
  A026515.P8276323896044920095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3337 terms. -/
def A026515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026608.P5492152877420761031

`A026612(n+1)-Δ[A090239(n)]`
-/

namespace A026608.P5492152877420761031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026612 (n + 1) - (f1 (n + 1) - f1 n)

end

end A026608.P5492152877420761031

noncomputable section

/-- A026608: a(n) = number of 2's between n-th 1 and (n+1)st 1 in A026600.

Offset 1, canonical program `A026608.P5492152877420761031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026608 (n : ℕ) : ℤ :=
  A026608.P5492152877420761031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026842.P1998304907469912435

`A026672(n+4)-A026855(n+3)`
-/

namespace A026842.P1998304907469912435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026672 (n + 4) - A026855 (n + 3)

end

end A026842.P1998304907469912435

noncomputable section

/-- A026842: a(n) = T(2n,n-3), T given by A026725.

Offset 3, canonical program `A026842.P1998304907469912435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A026842 (n : ℕ) : ℤ :=
  A026842.P1998304907469912435.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A026842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026843.P4420461623608991391

`A026675(n+3)-A026855(n+2)`
-/

namespace A026843.P4420461623608991391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026675 (n + 3) - A026855 (n + 2)

end

end A026843.P4420461623608991391

noncomputable section

/-- A026843: a(n) = T(2n,n+3), T given by A026725.

Offset 3, canonical program `A026843.P4420461623608991391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A026843 (n : ℕ) : ℤ :=
  A026843.P4420461623608991391.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A026843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026851.P6803457974734952251

`A026855(n+2)-A026850(n+2)`
-/

namespace A026851.P6803457974734952251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026855 (n + 2) - A026850 (n + 2)

end

end A026851.P6803457974734952251

noncomputable section

/-- A026851: a(n) = T(2n,n+2), T given by A026736.

Offset 2, canonical program `A026851.P6803457974734952251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A026851 (n : ℕ) : ℤ :=
  A026851.P6803457974734952251.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A026851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027457.P5210784852604014020

`A025529(n+1)-Δ[A173185(n)]`
-/

namespace A027457.P5210784852604014020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025529 (n + 1) - (f1 (n + 1) - f1 n)

end

end A027457.P5210784852604014020

noncomputable section

/-- A027457: a(n) = (H(n) - 1)*lcm{1,...,n}, where H(n) is the n-th harmonic number.

Offset 1, canonical program `A027457.P5210784852604014020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A027457 (n : ℕ) : ℤ :=
  A027457.P5210784852604014020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A027457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027697.P9273385272130382931

`A000040(A027698(n+1))`
-/

namespace A027697.P9273385272130382931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A027698 (n + 1)).toNat

end

end A027697.P9273385272130382931

noncomputable section

/-- A027697: Odious primes: primes with odd number of 1's in binary expansion.

Offset 1, canonical program `A027697.P9273385272130382931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5316 terms. -/
def A027697 (n : ℕ) : ℤ :=
  A027697.P9273385272130382931.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5316 terms. -/
def A027697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027706.P6557649522257405168

`record[Δ[n*A200244(n+1)]]`
-/

namespace A027706.P6557649522257405168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A200244 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027706.P6557649522257405168

noncomputable section

/-- A027706: n-th prime has odd number of 1's in binary expansion and (n+1)st prime has even number of 1's.

Offset 1, canonical program `A027706.P6557649522257405168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. -/
def A027706 (n : ℕ) : ℤ :=
  A027706.P6557649522257405168.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. -/
def A027706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027883.P3043507636580154283

`A024620(n+1)-1`
-/

namespace A027883.P3043507636580154283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024620 (n + 1) - 1

end

end A027883.P3043507636580154283

noncomputable section

/-- A027883: Positions of primes in sequence (A246655) of primes and prime powers {p^i, i >= 1}.

Offset 1, canonical program `A027883.P3043507636580154283`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024620, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027883 (n : ℕ) : ℤ :=
  A027883.P3043507636580154283.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024620, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027883.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A028262.P11072633460123417746

`A323211(n)+A014473(n)`
-/

namespace A028262.P11072633460123417746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323211 n + A014473 n

end

end A028262.P11072633460123417746

noncomputable section

/-- A028262: Elements in 3-Pascal triangle (by row).

Offset 0, canonical program `A028262.P11072633460123417746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028262 (n : ℕ) : ℤ :=
  A028262.P11072633460123417746.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028277.P11561651408615929989

`A028275(A268231(n+1))`
-/

namespace A028277.P11561651408615929989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028275 (A268231 (n + 1)).toNat

end

end A028277.P11561651408615929989

noncomputable section

/-- A028277: Odd elements in 4-Pascal triangle A028275 (by row).

Offset 0, canonical program `A028277.P11561651408615929989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. -/
def A028277 (n : ℕ) : ℤ :=
  A028277.P11561651408615929989.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. -/
def A028277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028279.P15759741171861685895

`A028275(A268232(n+1))`
-/

namespace A028279.P15759741171861685895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028275 (A268232 (n + 1)).toNat

end

end A028279.P15759741171861685895

noncomputable section

/-- A028279: Even elements in 4-Pascal triangle A028275 (by row).

Offset 0, canonical program `A028279.P15759741171861685895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7718 terms. -/
def A028279 (n : ℕ) : ℤ :=
  A028279.P15759741171861685895.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7718 terms. -/
def A028279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028313.P12289256614395015877

`A028275(n)+A323211(n)-1`
-/

namespace A028313.P12289256614395015877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028275 n + (A323211 n - 1)

end

end A028313.P12289256614395015877

noncomputable section

/-- A028313: Elements in the 5-Pascal triangle (by row).

Offset 0, canonical program `A028313.P12289256614395015877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028313 (n : ℕ) : ℤ :=
  A028313.P12289256614395015877.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029213.P5201621740032638678

`A025827(n)+A029198(n)-A029225(n)`
-/

namespace A029213.P5201621740032638678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025827 n + (A029198 n - A029225 n)

end

end A029213.P5201621740032638678

noncomputable section

/-- A029213: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029213.P5201621740032638678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029213 (n : ℕ) : ℤ :=
  A029213.P5201621740032638678.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029411.P3027199765007840635

`A029376(n)+A029398(n)-A029365(n)`
-/

namespace A029411.P3027199765007840635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029376 n + (A029398 n - A029365 n)

end

end A029411.P3027199765007840635

noncomputable section

/-- A029411: Expansion of 1/((1-x^5)*(1-x^9)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029411.P3027199765007840635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029411 (n : ℕ) : ℤ :=
  A029411.P3027199765007840635.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029420.P6798218575498447443

`A029313(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029420.P6798218575498447443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029313 n - a (n - 3)

end

end A029420.P6798218575498447443

noncomputable section

/-- A029420: Expansion of 1/((1-x^6)*(1-x^7)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029420.P6798218575498447443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029420 (n : ℕ) : ℤ :=
  A029420.P6798218575498447443.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029606.P4750095902787503063

`A029604(lt[A319998(n+1), A029652(n+1)])`
-/

namespace A029606.P4750095902787503063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029604 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029606.P4750095902787503063

noncomputable section

/-- A029606: Odd numbers in the (2,3)-Pascal triangle A029600 that are different from 3.

Offset 0, canonical program `A029606.P4750095902787503063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9474 terms. -/
def A029606 (n : ℕ) : ℤ :=
  A029606.P4750095902787503063.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9474 terms. -/
def A029606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029609.P12791470884905269588

`A100320(n)+record[A138364(n)]`
-/

namespace A029609.P12791470884905269588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100320 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029609.P12791470884905269588

noncomputable section

/-- A029609: Central numbers in the (2,3)-Pascal triangle A029600.

Offset 0, canonical program `A029609.P12791470884905269588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A029609 (n : ℕ) : ℤ :=
  A029609.P12791470884905269588.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A029609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029621.P3765941121051379767

`2*A029655(n)-A206735(n)`
-/

namespace A029621.P3765941121051379767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029655 n - A206735 n

end

end A029621.P3765941121051379767

noncomputable section

/-- A029621: Numbers in (3,2)-Pascal triangle A029618 that are different from 3.

Offset 0, canonical program `A029621.P3765941121051379767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029621 (n : ℕ) : ℤ :=
  A029621.P3765941121051379767.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029624.P13598685353401142756

`A029622(lt[0, xor(3, A029622(n))])`
-/

namespace A029624.P13598685353401142756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A029622 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029622 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029624.P13598685353401142756

noncomputable section

/-- A029624: Odd numbers in (3,2)-Pascal triangle A029618 that are different from 3.

Offset 0, canonical program `A029624.P13598685353401142756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9473 terms. -/
def A029624 (n : ℕ) : ℤ :=
  A029624.P13598685353401142756.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9473 terms. -/
def A029624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029625.P8414473659430485930

`A029623(lt[2, A029623(n)])`
-/

namespace A029625.P8414473659430485930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029623 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029625.P8414473659430485930

noncomputable section

/-- A029625: Even numbers in (3,2)-Pascal triangle A029618 that are different from 2.

Offset 0, canonical program `A029625.P8414473659430485930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9844 terms. -/
def A029625 (n : ℕ) : ℤ :=
  A029625.P8414473659430485930.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9844 terms. -/
def A029625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029659.P14042741699956388996

`A029607(n+1)-2*A014428(n+1)`
-/

namespace A029659.P14042741699956388996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029607 (n + 1) - 2 * A014428 (n + 1)

end

end A029659.P14042741699956388996

noncomputable section

/-- A029659: Even numbers in the (2,1)-Pascal triangle A029653 that are different from 2.

Offset 0, canonical program `A029659.P14042741699956388996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029659 (n : ℕ) : ℤ :=
  A029659.P14042741699956388996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029715.P4140309927833293615

`∑[A007843(n)]`
-/

namespace A029715.P4140309927833293615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029715.P4140309927833293615

noncomputable section

/-- A029715: a(n) = Sum_{k divides 2^n} S(k), where S is the Kempner function A002034.

Offset 0, canonical program `A029715.P4140309927833293615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029715 (n : ℕ) : ℤ :=
  A029715.P4140309927833293615.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029922.P12532819948336392736

`A000038(A267368(n))+round(n/log(5))`
-/

namespace A029922.P12532819948336392736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A267368 n).toNat + SequenceMachineLib.roundAway ((n : ℝ) / Real.log (5 : ℝ))

end

end A029922.P12532819948336392736

noncomputable section

/-- A029922: Convert n from kilometers (km) to miles.

Offset 0, canonical program `A029922.P12532819948336392736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A029922 (n : ℕ) : ℤ :=
  A029922.P12532819948336392736.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A029922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031924.P13407024209646525674

`p?[A072571(n+1)-3]`
-/

namespace A031924.P13407024209646525674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072571 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031924.P13407024209646525674

noncomputable section

/-- A031924: Primes followed by a gap of 6, i.e., next prime is p + 6.

Offset 1, canonical program `A031924.P13407024209646525674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6756 terms. -/
def A031924 (n : ℕ) : ℤ :=
  A031924.P13407024209646525674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6756 terms. -/
def A031924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031929.P6327147624434897438

`A031928(n+1)+10`
-/

namespace A031929.P6327147624434897438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031928 (n + 1) + 10

end

end A031929.P6327147624434897438

noncomputable section

/-- A031929: Upper prime of a difference of 10 between consecutive primes.

Offset 0, canonical program `A031929.P6327147624434897438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031929 (n : ℕ) : ℤ :=
  A031929.P6327147624434897438.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032123.P2559086527313729286

`A007123(n+1)+n*A000150(n)`
-/

namespace A032123.P2559086527313729286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007123 (n + 1) + (n : ℤ) * A000150 n

end

end A032123.P2559086527313729286

noncomputable section

/-- A032123: Number of 2n-bead black-white reversible strings with n black beads.

Offset 0, canonical program `A032123.P2559086527313729286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A032123 (n : ℕ) : ℤ :=
  A032123.P2559086527313729286.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A032123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032189.P10074528383651059138

`A000358(n+1)-(1+(-1)^(n+1))/2`
-/

namespace A032189.P10074528383651059138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000358 (n + 1) : ℚ) - (1 + (-1) ^ (n + 1) : ℚ) / 2

end

end A032189.P10074528383651059138

noncomputable section

/-- A032189: Number of ways to partition n elements into pie slices each with an odd number of elements.

Offset 1, canonical program `A032189.P10074528383651059138`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000358, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032189 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A032189.P10074528383651059138.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000358, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032189.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A032190.P15511744543848954843

`A000358(n+1)-1`
-/

namespace A032190.P15511744543848954843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000358 (n + 1) - 1

end

end A032190.P15511744543848954843

noncomputable section

/-- A032190: Number of cyclic compositions of n into parts >= 2.

Offset 1, canonical program `A032190.P15511744543848954843`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000358, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032190 (n : ℕ) : ℤ :=
  A032190.P15511744543848954843.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000358, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032190.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A032927.P16396062760344607680

`∑[A147993(A135517(n+1))]`
-/

namespace A032927.P16396062760344607680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147993 (A135517 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032927.P16396062760344607680

noncomputable section

/-- A032927: Numbers whose set of base-6 digits is {1,2}.

Offset 1, canonical program `A032927.P16396062760344607680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032927 (n : ℕ) : ℤ :=
  A032927.P16396062760344607680.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033053.P7667902373871781944

`∑[A079882(n)*A115716(n)]`
-/

namespace A033053.P7667902373871781944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079882 n * A115716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033053.P7667902373871781944

noncomputable section

/-- A033053: Numbers whose base-2 representation Sum_{i=0..m} d(i)*2^i has d(i)=1 when i != m mod 2.

Offset 1, canonical program `A033053.P7667902373871781944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033053 (n : ℕ) : ℤ :=
  A033053.P7667902373871781944.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033820.P6750726917053275800

`A078817(A061579(n))`
-/

namespace A033820.P6750726917053275800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078817 (A061579 n).toNat

end

end A033820.P6750726917053275800

noncomputable section

/-- A033820: Triangle read by rows: T(k,j) = ((2*j+1)/(k+1))*binomial(2*j,j)*binomial(2*k-2*j,k-j).

Offset 0, canonical program `A033820.P6750726917053275800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033820 (n : ℕ) : ℤ :=
  A033820.P6750726917053275800.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034019.P502598824467370145

`filter[A013929(n+1), A353816(#)]`
-/

namespace A034019.P502598824467370145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A034019.P502598824467370145

noncomputable section

/-- A034019: Numbers that are imprimitively (and possibly also primitively) represented by x^2+xy+y^2.

Offset 1, canonical program `A034019.P502598824467370145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8724 terms. -/
def A034019 (n : ℕ) : ℤ :=
  A034019.P502598824467370145.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8724 terms. -/
def A034019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034050.P15289769784533318971

`2*A199986(n+1)-A131664(n+1)`
-/

namespace A034050.P15289769784533318971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199986 (n + 1) - A131664 (n + 1)

end

end A034050.P15289769784533318971

noncomputable section

/-- A034050: Numbers with multiplicative digital root value 3.

Offset 1, canonical program `A034050.P15289769784533318971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A034050 (n : ℕ) : ℤ :=
  A034050.P15289769784533318971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A034050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034104.P12814070935055898263

`A034099(n+1)-A002024(A016897(n))`
-/

namespace A034104.P12814070935055898263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034099 (n + 1) - A002024 (A016897 n).toNat

end

end A034104.P12814070935055898263

noncomputable section

/-- A034104: Fractional part of square root of a(n) starts with digit 8.

Offset 1, canonical program `A034104.P12814070935055898263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A034104 (n : ℕ) : ℤ :=
  A034104.P12814070935055898263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A034104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034736.P10113879758376514175

`∑{d}[n+1, A000740(#)*A030014((n+1)/#)]`
-/

namespace A034736.P10113879758376514175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000740 d * A030014 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034736.P10113879758376514175

noncomputable section

/-- A034736: Dirichlet convolution of b_n=2^(n-1) with Primes (with 1).

Offset 1, canonical program `A034736.P10113879758376514175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034736 (n : ℕ) : ℤ :=
  A034736.P10113879758376514175.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034738.P13091520895152506623

`A053635(n+1)/2`
-/

namespace A034738.P13091520895152506623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053635 (n + 1) : ℚ) / 2

end

end A034738.P13091520895152506623

noncomputable section

/-- A034738: Dirichlet convolution of b_n = 2^(n-1) with phi(n).

Offset 1, canonical program `A034738.P13091520895152506623`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053635, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034738 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034738.P13091520895152506623.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053635, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034738.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034762.P11132840516407714243

`∑{d}[n+1, #*A030014((n+1)/#)]`
-/

namespace A034762.P11132840516407714243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A030014 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034762.P11132840516407714243

noncomputable section

/-- A034762: Dirichlet convolution of primes (with 1) with sigma(n).

Offset 1, canonical program `A034762.P11132840516407714243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034762 (n : ℕ) : ℤ :=
  A034762.P11132840516407714243.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034763.P16998395620027400134

`∑{d}[n+1, A030014(#)*A034742((n+1)/#)]`
-/

namespace A034763.P16998395620027400134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A030014 d * A034742 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034763.P16998395620027400134

noncomputable section

/-- A034763: Dirichlet convolution of primes (with 1) with Catalan numbers.

Offset 1, canonical program `A034763.P16998395620027400134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A034763 (n : ℕ) : ℤ :=
  A034763.P16998395620027400134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A034763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034773.P6091639492477816883

`∑{d}[n+1, A030014(#)]`
-/

namespace A034773.P6091639492477816883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A030014 d

end

end A034773.P6091639492477816883

noncomputable section

/-- A034773: Dirichlet convolution of d(n) (number of divisors of n) with primes (with 1).

Offset 1, canonical program `A034773.P6091639492477816883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034773 (n : ℕ) : ℤ :=
  A034773.P6091639492477816883.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034960.P12268259456304225378

`A061802(n)*A000040(n+1)`
-/

namespace A034960.P12268259456304225378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n * A000040 (n + 1)

end

end A034960.P12268259456304225378

noncomputable section

/-- A034960: Divide odd numbers into groups with prime(n) elements and add together.

Offset 1, canonical program `A034960.P12268259456304225378`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061802, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034960 (n : ℕ) : ℤ :=
  A034960.P12268259456304225378.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061802, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034960.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A035172.P5026987147346886316

`A122071(A025480(n))`
-/

namespace A035172.P5026987147346886316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122071 (A025480 n).toNat

end

end A035172.P5026987147346886316

noncomputable section

/-- A035172: a(n) = Sum_{d|n} Kronecker(-18, d).

Offset 1, canonical program `A035172.P5026987147346886316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035172 (n : ℕ) : ℤ :=
  A035172.P5026987147346886316.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035186.P15949002848067084157

`∑{d}[n+1, A091338(#)]`
-/

namespace A035186.P15949002848067084157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091338 d

end

end A035186.P15949002848067084157

noncomputable section

/-- A035186: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 3.

Offset 1, canonical program `A035186.P15949002848067084157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035186 (n : ℕ) : ℤ :=
  A035186.P15949002848067084157.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035189.P17313188979383133820

`∑{d}[n+1, A089509(#)]`
-/

namespace A035189.P17313188979383133820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A089509 d

end

end A035189.P17313188979383133820

noncomputable section

/-- A035189: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 7.

Offset 1, canonical program `A035189.P17313188979383133820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035189 (n : ℕ) : ℤ :=
  A035189.P17313188979383133820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035227.P12722226152063359411

`A035187((n+1)/A038500(n+1))`
-/

namespace A035227.P12722226152063359411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A038500 (n + 1) : ℚ))).toNat

end

end A035227.P12722226152063359411

noncomputable section

/-- A035227: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 45.

Offset 1, canonical program `A035227.P12722226152063359411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035227 (n : ℕ) : ℤ :=
  A035227.P12722226152063359411.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035254.P2200993960505381021

`record[n-(A127648(n)+2)]`
-/

namespace A035254.P2200993960505381021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A127648 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035254.P2200993960505381021

noncomputable section

/-- A035254: First differences of A035253.

Offset 0, canonical program `A035254.P2200993960505381021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035254 (n : ℕ) : ℤ :=
  A035254.P2200993960505381021.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035292.P15683041574898853470

`A010684(n)*A045771(n+1)`
-/

namespace A035292.P15683041574898853470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A045771 (n + 1)

end

end A035292.P15683041574898853470

noncomputable section

/-- A035292: Number of similar sublattices of Z^4 of index n^2.

Offset 1, canonical program `A035292.P15683041574898853470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035292 (n : ℕ) : ℤ :=
  A035292.P15683041574898853470.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036215.P9235640545465369973

`A030101(A000244(n))`
-/

namespace A036215.P9235640545465369973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A000244 n).toNat

end

end A036215.P9235640545465369973

noncomputable section

/-- A036215: Binary reversal of 3^n.

Offset 0, canonical program `A036215.P9235640545465369973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036215 (n : ℕ) : ℤ :=
  A036215.P9235640545465369973.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036215.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A036345.P12048830508452336379

`∩[2*A036349(n+1), A036844(n+1)]`
-/

namespace A036345.P12048830508452336379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036345.P12048830508452336379

noncomputable section

/-- A036345: Divisible by its 'even' sum of prime factors (counted with multiplicity).

Offset 1, canonical program `A036345.P12048830508452336379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A036345 (n : ℕ) : ℤ :=
  (A036345.P12048830508452336379.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A036345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037127.P14189568244569981483

`A151800(A000244(n))-A000079(n)`
-/

namespace A037127.P14189568244569981483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000244 n).toNat - A000079 n

end

end A037127.P14189568244569981483

noncomputable section

/-- A037127: a(n) = nextprime(3^n) - 2^n.

Offset 0, canonical program `A037127.P14189568244569981483`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037127 (n : ℕ) : ℤ :=
  A037127.P14189568244569981483.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037127.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A037151.P13747861056298471043

`A151800(A000142(n+1))`
-/

namespace A037151.P13747861056298471043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000142 (n + 1)).toNat

end

end A037151.P13747861056298471043

noncomputable section

/-- A037151: Smallest prime > n!.

Offset 1, canonical program `A037151.P13747861056298471043`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037151 (n : ℕ) : ℤ :=
  A037151.P13747861056298471043.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037151.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A037152.P12694008118734574474

`A151800(A038507(n+1))`
-/

namespace A037152.P12694008118734574474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A038507 (n + 1)).toNat

end

end A037152.P12694008118734574474

noncomputable section

/-- A037152: Smallest prime > n!+1.

Offset 1, canonical program `A037152.P12694008118734574474`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037152 (n : ℕ) : ℤ :=
  A037152.P12694008118734574474.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037152.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A037201.P6658727426378706638

`A001223(eq[1, A079054(n+2)²]+1)`
-/

namespace A037201.P6658727426378706638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079054 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A037201.P6658727426378706638

noncomputable section

/-- A037201: Differences between consecutive primes (A001223) but with repeats omitted.

Offset 1, canonical program `A037201.P6658727426378706638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037201 (n : ℕ) : ℤ :=
  A037201.P6658727426378706638.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037954.P15656623579345578521

`A037957(n+1)-A037953(n)`
-/

namespace A037954.P15656623579345578521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037957 (n + 1) - A037953 n

end

end A037954.P15656623579345578521

noncomputable section

/-- A037954: a(n) = binomial(n, floor((n-7)/2)).

Offset 0, canonical program `A037954.P15656623579345578521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A037954 (n : ℕ) : ℤ :=
  A037954.P15656623579345578521.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A037954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037956.P945758566745438306

`A001405(n)-A026008(n)`
-/

namespace A037956.P945758566745438306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A026008 n

end

end A037956.P945758566745438306

noncomputable section

/-- A037956: a(n) = binomial(n, floor((n-4)/2)).

Offset 0, canonical program `A037956.P945758566745438306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A037956 (n : ℕ) : ℤ :=
  A037956.P945758566745438306.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A037956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038288.P15461604904291039397

`A038283(n)*A059268(n)`
-/

namespace A038288.P15461604904291039397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038283 n * A059268 n

end

end A038288.P15461604904291039397

noncomputable section

/-- A038288: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*10^j.

Offset 0, canonical program `A038288.P15461604904291039397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A038288 (n : ℕ) : ℤ :=
  A038288.P15461604904291039397.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A038288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038296.P12595348449861327754

`A038293(n)*A059268(n)`
-/

namespace A038296.P12595348449861327754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038293 n * A059268 n

end

end A038296.P12595348449861327754

noncomputable section

/-- A038296: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*6^j.

Offset 0, canonical program `A038296.P12595348449861327754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3773 terms. -/
def A038296 (n : ℕ) : ℤ :=
  A038296.P12595348449861327754.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3773 terms. -/
def A038296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038510.P9284818905078478089

`filter[A038509(n+1), A011558(#)]`
-/

namespace A038510.P9284818905078478089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A038510.P9284818905078478089

noncomputable section

/-- A038510: Composite numbers with smallest prime factor >= 7.

Offset 1, canonical program `A038510.P9284818905078478089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7092 terms. -/
def A038510 (n : ℕ) : ℤ :=
  A038510.P9284818905078478089.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7092 terms. -/
def A038510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038698.P1622945088266764411

`A267098(n+1)-A267097(n+1)`
-/

namespace A038698.P1622945088266764411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267098 (n + 1) - A267097 (n + 1)

end

end A038698.P1622945088266764411

noncomputable section

/-- A038698: Excess of 4k-1 primes over 4k+1 primes, beginning with prime 2.

Offset 1, canonical program `A038698.P1622945088266764411`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A267097, A267098, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A038698 (n : ℕ) : ℤ :=
  A038698.P1622945088266764411.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A267097, A267098, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A038698.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A038917.P6060502532703074723

`p?[comp[A038918(n+1)]]`
-/

namespace A038917.P6060502532703074723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038918 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038917.P6060502532703074723

noncomputable section

/-- A038917: Primes p such that 39 is a square mod p.

Offset 1, canonical program `A038917.P6060502532703074723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 638 terms. -/
def A038917 (n : ℕ) : ℤ :=
  (A038917.P6060502532703074723.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 638 terms. -/
def A038917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039012.P2916768435992472855

`eq[A001222(A338803(n)), A276134(n)]`
-/

namespace A039012.P2916768435992472855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A338803 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039012.P2916768435992472855

noncomputable section

/-- A039012: Numbers whose base-5 representation has the same number of 1's and 4's.

Offset 1, canonical program `A039012.P2916768435992472855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. -/
def A039012 (n : ℕ) : ℤ :=
  (A039012.P2916768435992472855.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. -/
def A039012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039564.P6864717838563937078

`∩[A039009(n+1), A039011(n+1)]`
-/

namespace A039564.P6864717838563937078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039564.P6864717838563937078

noncomputable section

/-- A039564: Numbers whose base-5 representation has the same number of 0's, 1's and 3's.

Offset 1, canonical program `A039564.P6864717838563937078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2498 terms. -/
def A039564 (n : ℕ) : ℤ :=
  (A039564.P6864717838563937078.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2498 terms. -/
def A039564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039766.P771001418354876832

`eq[A000005(n+1), A049559(n+1)]+1`
-/

namespace A039766.P771001418354876832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A039766.P771001418354876832

noncomputable section

/-- A039766: Numbers k such that gcd(phi(k), k-1) = number of divisors of k.

Offset 1, canonical program `A039766.P771001418354876832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 746 terms. -/
def A039766 (n : ℕ) : ℤ :=
  (A039766.P771001418354876832.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 746 terms. -/
def A039766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039768.P18004626891334739463

`eq[A000005(abs(1-n)+1), A049559(n+1)]+1`
-/

namespace A039768.P18004626891334739463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A039768.P18004626891334739463

noncomputable section

/-- A039768: Numbers k such that gcd(phi(k), k-1) = number of divisors of (k-1).

Offset 1, canonical program `A039768.P18004626891334739463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A039768 (n : ℕ) : ℤ :=
  (A039768.P18004626891334739463.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A039768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039965.P14292940567836305902

`A039973(Δ[n²])`
-/

namespace A039965.P14292940567836305902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039973 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A039965.P14292940567836305902

noncomputable section

/-- A039965: An example of a d-perfect sequence.

Offset 1, canonical program `A039965.P14292940567836305902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039965 (n : ℕ) : ℤ :=
  A039965.P14292940567836305902.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042988.P9376538551254334237

`∪[A023207(n+1), A044042(n+1)]`
-/

namespace A042988.P9376538551254334237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042988.P9376538551254334237

noncomputable section

/-- A042988: Primes not congruent to -1 (mod 7).

Offset 0, canonical program `A042988.P9376538551254334237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042988 (n : ℕ) : ℤ :=
  (A042988.P9376538551254334237.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043287.P1481354817054238234

`A080225(lcm(30, A026491(n)))`
-/

namespace A043287.P1481354817054238234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080225 (Int.lcm 30 (A026491 n))

end

end A043287.P1481354817054238234

noncomputable section

/-- A043287: Maximal run length in base-13 representation of n.

Offset 1, canonical program `A043287.P1481354817054238234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A043287 (n : ℕ) : ℤ :=
  A043287.P1481354817054238234.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A043287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043333.P3859592073351921722

`A023706(n+2)`
-/

namespace A043333.P3859592073351921722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (n + 2)

end

end A043333.P3859592073351921722

noncomputable section

/-- A043333: Numbers having one 0 in base 4.

Offset 1, canonical program `A043333.P3859592073351921722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A043333 (n : ℕ) : ℤ :=
  A043333.P3859592073351921722.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A043333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043369.P5469046483156148534

`eq[n*A055641(A084984(n+1)), A028310(n)]`
-/

namespace A043369.P5469046483156148534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A055641 (A084984 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043369.P5469046483156148534

noncomputable section

/-- A043369: Numbers having one 0 in base 6.

Offset 1, canonical program `A043369.P5469046483156148534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 430 terms. -/
def A043369 (n : ℕ) : ℤ :=
  (A043369.P5469046483156148534.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 430 terms. -/
def A043369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043385.P11786398378797061450

`eq[1, A316869(A084984(n+1))]`
-/

namespace A043385.P11786398378797061450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (A084984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043385.P11786398378797061450

noncomputable section

/-- A043385: Numbers having one 4 in base 6.

Offset 1, canonical program `A043385.P11786398378797061450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A043385 (n : ℕ) : ℤ :=
  (A043385.P11786398378797061450.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A043385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043386.P13446729167235893764

`eq[2, A316869(A084984(n+1))]`
-/

namespace A043386.P13446729167235893764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (A084984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043386.P13446729167235893764

noncomputable section

/-- A043386: Numbers having two 4's in base 6.

Offset 1, canonical program `A043386.P13446729167235893764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A043386 (n : ℕ) : ℤ :=
  (A043386.P13446729167235893764.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A043386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043556.P9155403054735313195

`A160385(A064706(A000007(n)+n))`
-/

namespace A043556.P9155403054735313195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A064706 (A000007 n + (n : ℤ)).toNat).toNat

end

end A043556.P9155403054735313195

noncomputable section

/-- A043556: Number of runs in base-4 representation of n.

Offset 0, canonical program `A043556.P9155403054735313195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A043556 (n : ℕ) : ℤ :=
  A043556.P9155403054735313195.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A043556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045042.P5036496588180730293

`∩[A023706(n+1), A023713(n+1)]`
-/

namespace A045042.P5036496588180730293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045042.P5036496588180730293

noncomputable section

/-- A045042: Numbers whose base-4 representation contains exactly one 0 and no 2's.

Offset 1, canonical program `A045042.P5036496588180730293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 951 terms. -/
def A045042 (n : ℕ) : ℤ :=
  (A045042.P5036496588180730293.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 951 terms. -/
def A045042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045044.P5944877663035332256

`∩[A023706(n+1), A023715(n+1)]`
-/

namespace A045044.P5944877663035332256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045044.P5944877663035332256

noncomputable section

/-- A045044: Numbers whose base-4 representation contains exactly one 0 and two 2's.

Offset 1, canonical program `A045044.P5944877663035332256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3264 terms. -/
def A045044 (n : ℕ) : ℤ :=
  (A045044.P5944877663035332256.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3264 terms. -/
def A045044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045067.P14652624658165700475

`∩[A023706(n+1), A023718(n+1)]`
-/

namespace A045067.P14652624658165700475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045067.P14652624658165700475

noncomputable section

/-- A045067: Numbers whose base-4 representation contains exactly one 0 and one 3.

Offset 1, canonical program `A045067.P14652624658165700475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2933 terms. -/
def A045067 (n : ℕ) : ℤ :=
  (A045067.P14652624658165700475.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2933 terms. -/
def A045067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045069.P18357878242646511179

`∩[A023706(n+1), A031467(n+1)]`
-/

namespace A045069.P18357878242646511179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045069.P18357878242646511179

noncomputable section

/-- A045069: Numbers whose base-4 representation contains exactly one 0 and three 3's.

Offset 1, canonical program `A045069.P18357878242646511179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1940 terms. -/
def A045069 (n : ℕ) : ℤ :=
  (A045069.P18357878242646511179.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1940 terms. -/
def A045069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045158.P3664676629981563040

`∩[A023721(n+1), A023726(n+1)]`
-/

namespace A045158.P3664676629981563040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045158.P3664676629981563040

noncomputable section

/-- A045158: Numbers whose base-5 representation contains no 0's and exactly one 1.

Offset 1, canonical program `A045158.P3664676629981563040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2653 terms. -/
def A045158 (n : ℕ) : ℤ :=
  (A045158.P3664676629981563040.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2653 terms. -/
def A045158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045174.P2012388389799234288

`∩[A023721(n+1), A023731(n+1)]`
-/

namespace A045174.P2012388389799234288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045174.P2012388389799234288

noncomputable section

/-- A045174: Numbers whose base-5 representation contains no 0's and exactly two 2's.

Offset 1, canonical program `A045174.P2012388389799234288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2923 terms. -/
def A045174 (n : ℕ) : ℤ :=
  (A045174.P2012388389799234288.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2923 terms. -/
def A045174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045188.P6201253518571770422

`∩[A023721(n+1), A023734(n+1)]`
-/

namespace A045188.P6201253518571770422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045188.P6201253518571770422

noncomputable section

/-- A045188: Numbers whose base-5 representation contains no 0's and exactly one 3.

Offset 1, canonical program `A045188.P6201253518571770422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2815 terms. -/
def A045188 (n : ℕ) : ℤ :=
  (A045188.P6201253518571770422.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2815 terms. -/
def A045188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045189.P7914584813931535098

`∩[A023721(n+1), A023735(n+1)]`
-/

namespace A045189.P7914584813931535098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045189.P7914584813931535098

noncomputable section

/-- A045189: Numbers whose base-5 representation contains no 0's and exactly two 3's.

Offset 1, canonical program `A045189.P7914584813931535098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2862 terms. -/
def A045189 (n : ℕ) : ℤ :=
  (A045189.P7914584813931535098.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2862 terms. -/
def A045189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045192.P4043128430338068210

`∩[A023734(n+1), A039009(n+1)]`
-/

namespace A045192.P4043128430338068210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045192.P4043128430338068210

noncomputable section

/-- A045192: Numbers whose base-5 representation contains exactly one 0 and one 3.

Offset 1, canonical program `A045192.P4043128430338068210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4036 terms. -/
def A045192 (n : ℕ) : ℤ :=
  (A045192.P4043128430338068210.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4036 terms. -/
def A045192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045203.P16200633240208871595

`∩[A023721(n+1), A023738(n+1)]`
-/

namespace A045203.P16200633240208871595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045203.P16200633240208871595

noncomputable section

/-- A045203: Numbers whose base-5 representation contains no 0's and exactly one 4.

Offset 1, canonical program `A045203.P16200633240208871595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2815 terms. -/
def A045203 (n : ℕ) : ℤ :=
  (A045203.P16200633240208871595.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2815 terms. -/
def A045203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045204.P2765214535292922617

`∩[A023721(n+1), A023739(n+1)]`
-/

namespace A045204.P2765214535292922617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045204.P2765214535292922617

noncomputable section

/-- A045204: Numbers whose base-5 representation contains no 0's and exactly two 4's.

Offset 1, canonical program `A045204.P2765214535292922617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2842 terms. -/
def A045204 (n : ℕ) : ℤ :=
  (A045204.P2765214535292922617.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2842 terms. -/
def A045204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045223.P8017231945570195036

`∩[A023726(n+1), A023731(n+1)]`
-/

namespace A045223.P8017231945570195036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045223.P8017231945570195036

noncomputable section

/-- A045223: Numbers whose base-5 representation contains exactly one 1 and two 2's.

Offset 1, canonical program `A045223.P8017231945570195036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2782 terms. -/
def A045223 (n : ℕ) : ℤ :=
  (A045223.P8017231945570195036.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2782 terms. -/
def A045223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045238.P198686045998000565

`∩[A023726(n+1), A023735(n+1)]`
-/

namespace A045238.P198686045998000565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045238.P198686045998000565

noncomputable section

/-- A045238: Numbers whose base-5 representation contains exactly one 1 and two 3's.

Offset 1, canonical program `A045238.P198686045998000565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2782 terms. -/
def A045238 (n : ℕ) : ℤ :=
  (A045238.P198686045998000565.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2782 terms. -/
def A045238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045242.P2725133411994737502

`∩[A023735(n+1), A039011(n+1)]`
-/

namespace A045242.P2725133411994737502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045242.P2725133411994737502

noncomputable section

/-- A045242: Numbers whose base-5 representation contains exactly two 1's and two 3's.

Offset 1, canonical program `A045242.P2725133411994737502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2979 terms. -/
def A045242 (n : ℕ) : ℤ :=
  (A045242.P2725133411994737502.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2979 terms. -/
def A045242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045252.P1369454173368973201

`∩[A023726(n+1), A023738(n+1)]`
-/

namespace A045252.P1369454173368973201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045252.P1369454173368973201

noncomputable section

/-- A045252: Numbers whose base-5 representation contains exactly one 1 and one 4.

Offset 1, canonical program `A045252.P1369454173368973201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3246 terms. -/
def A045252 (n : ℕ) : ℤ :=
  (A045252.P1369454173368973201.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3246 terms. -/
def A045252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045253.P1746793444030517754

`∩[A023726(n+1), A023739(n+1)]`
-/

namespace A045253.P1746793444030517754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045253.P1746793444030517754

noncomputable section

/-- A045253: Numbers whose base-5 representation contains exactly one 1 and two 4's.

Offset 1, canonical program `A045253.P1746793444030517754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2763 terms. -/
def A045253 (n : ℕ) : ℤ :=
  (A045253.P1746793444030517754.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2763 terms. -/
def A045253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045271.P15070719441981263181

`∩[A023731(n+1), A023734(n+1)]`
-/

namespace A045271.P15070719441981263181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045271.P15070719441981263181

noncomputable section

/-- A045271: Numbers whose base-5 representation contains exactly two 2's and one 3.

Offset 1, canonical program `A045271.P15070719441981263181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2701 terms. -/
def A045271 (n : ℕ) : ℤ :=
  (A045271.P15070719441981263181.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2701 terms. -/
def A045271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045272.P12300636511309598618

`∩[A023731(n+1), A023735(n+1)]`
-/

namespace A045272.P12300636511309598618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045272.P12300636511309598618

noncomputable section

/-- A045272: Numbers whose base-5 representation contains exactly two 2's and two 3's.

Offset 1, canonical program `A045272.P12300636511309598618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2124 terms. -/
def A045272 (n : ℕ) : ℤ :=
  (A045272.P12300636511309598618.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2124 terms. -/
def A045272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045286.P12771524637702086982

`∩[A023731(n+1), A023738(n+1)]`
-/

namespace A045286.P12771524637702086982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045286.P12771524637702086982

noncomputable section

/-- A045286: Numbers whose base-5 representation contains exactly two 2's and one 4.

Offset 1, canonical program `A045286.P12771524637702086982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2700 terms. -/
def A045286 (n : ℕ) : ℤ :=
  (A045286.P12771524637702086982.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2700 terms. -/
def A045286.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045287.P5177977857156502833

`∩[A023731(n+1), A023739(n+1)]`
-/

namespace A045287.P5177977857156502833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045287.P5177977857156502833

noncomputable section

/-- A045287: Numbers whose base-5 representation contains exactly two 2's and two 4's.

Offset 1, canonical program `A045287.P5177977857156502833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2056 terms. -/
def A045287 (n : ℕ) : ℤ :=
  (A045287.P5177977857156502833.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2056 terms. -/
def A045287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045297.P179767513394675842

`∩[A023734(n+1), A023738(n+1)]`
-/

namespace A045297.P179767513394675842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045297.P179767513394675842

noncomputable section

/-- A045297: Numbers whose base-5 representation contains exactly one 3 and one 4.

Offset 1, canonical program `A045297.P179767513394675842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4056 terms. -/
def A045297 (n : ℕ) : ℤ :=
  (A045297.P179767513394675842.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4056 terms. -/
def A045297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045298.P17596791945294144147

`∩[A023734(n+1), A023739(n+1)]`
-/

namespace A045298.P17596791945294144147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045298.P17596791945294144147

noncomputable section

/-- A045298: Numbers having one 3 and two 4's in base 5.

Offset 1, canonical program `A045298.P17596791945294144147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A045298 (n : ℕ) : ℤ :=
  (A045298.P17596791945294144147.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A045298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045301.P10348100126199338629

`∩[A023735(n+1), A023738(n+1)]`
-/

namespace A045301.P10348100126199338629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045301.P10348100126199338629

noncomputable section

/-- A045301: Numbers whose base-5 representation contains exactly two 3's and one 4.

Offset 1, canonical program `A045301.P10348100126199338629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2434 terms. -/
def A045301 (n : ℕ) : ℤ :=
  (A045301.P10348100126199338629.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2434 terms. -/
def A045301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045302.P15232411961889536853

`∩[A023735(n+1), A023739(n+1)]`
-/

namespace A045302.P15232411961889536853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045302.P15232411961889536853

noncomputable section

/-- A045302: Numbers whose base-5 representation contains exactly two 3's and two 4's.

Offset 1, canonical program `A045302.P15232411961889536853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1935 terms. -/
def A045302 (n : ℕ) : ℤ :=
  (A045302.P15232411961889536853.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1935 terms. -/
def A045302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045348.P16793999395921366390

`∪[A023207(n+1), A045371(n+1)]`
-/

namespace A045348.P16793999395921366390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045348.P16793999395921366390

noncomputable section

/-- A045348: Primes congruent to {0, 1, 2, 4} mod 5.

Offset 1, canonical program `A045348.P16793999395921366390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045348 (n : ℕ) : ℤ :=
  (A045348.P16793999395921366390.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045393.P17575290336670406807

`∪[A023210(n+1), A045402(n+1)]`
-/

namespace A045393.P17575290336670406807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045393.P17575290336670406807

noncomputable section

/-- A045393: Primes congruent to {0, 1, 3, 4, 5, 6} mod 7.

Offset 1, canonical program `A045393.P17575290336670406807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045393 (n : ℕ) : ℤ :=
  (A045393.P17575290336670406807.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045405.P9318787035671126970

`∪[A023225(n+1), A045428(n+1)]`
-/

namespace A045405.P9318787035671126970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045405.P9318787035671126970

noncomputable section

/-- A045405: Primes congruent to {0, 1, 3, 4} mod 5.

Offset 1, canonical program `A045405.P9318787035671126970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045405 (n : ℕ) : ℤ :=
  (A045405.P9318787035671126970.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045407.P10976223801705910227

`∪[A030431(n+1), A045453(n+1)]`
-/

namespace A045407.P10976223801705910227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045407.P10976223801705910227

noncomputable section

/-- A045407: Primes congruent to {0, 1, 3} mod 5.

Offset 1, canonical program `A045407.P10976223801705910227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045407 (n : ℕ) : ℤ :=
  (A045407.P10976223801705910227.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045548.P12713011086801001099

`eq[4, A374015(n)]`
-/

namespace A045548.P12713011086801001099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374015 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045548.P12713011086801001099

noncomputable section

/-- A045548: Numbers whose factorial has '4' as its final nonzero digit.

Offset 1, canonical program `A045548.P12713011086801001099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. -/
def A045548 (n : ℕ) : ℤ :=
  (A045548.P12713011086801001099.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. -/
def A045548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045718.P15743282503320170960

`∪[A006093(n+1), A028815(n)]`
-/

namespace A045718.P15743282503320170960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045718.P15743282503320170960

noncomputable section

/-- A045718: Nearest neighbors of primes.

Offset 0, canonical program `A045718.P15743282503320170960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045718 (n : ℕ) : ℤ :=
  (A045718.P15743282503320170960.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045723.P17563774538173166347

`A042971(A028310(n))+2^n-A058622(n)`
-/

namespace A045723.P17563774538173166347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042971 (A028310 n).toNat + ((2 ^ n : ℤ) - A058622 n)

end

end A045723.P17563774538173166347

noncomputable section

/-- A045723: Number of configurations, excluding reflections and black-white interchanges, of n black and n white beads on a string.

Offset 0, canonical program `A045723.P17563774538173166347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A045723 (n : ℕ) : ℤ :=
  A045723.P17563774538173166347.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A045723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045737.P2550653022607152751

`A026019(n)-A001764(n+1)`
-/

namespace A045737.P2550653022607152751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026019 n - A001764 (n + 1)

end

end A045737.P2550653022607152751

noncomputable section

/-- A045737: Number of nonroot branch nodes in all noncrossing rooted trees on n nodes on a circle.

Offset 2, canonical program `A045737.P2550653022607152751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A045737 (n : ℕ) : ℤ :=
  A045737.P2550653022607152751.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A045737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045839.P4359965335800922722

`A005929(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A045839.P4359965335800922722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005929 n : ℚ) / 2

end

end A045839.P4359965335800922722

noncomputable section

/-- A045839: a(n) = A005929(n)/2.

Offset 0, canonical program `A045839.P4359965335800922722`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045839 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A045839.P4359965335800922722.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045839.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A046219.P8977103861444328080

`gcd(2, A323211(n))`
-/

namespace A046219.P8977103861444328080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A323211 n)

end

end A046219.P8977103861444328080

noncomputable section

/-- A046219: Denominators of elements of 1/2-Pascal triangle (by row).

Offset 1, canonical program `A046219.P8977103861444328080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046219 (n : ℕ) : ℤ :=
  (A046219.P8977103861444328080.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046640.P10355392584185486359

`A045763(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A046640.P10355392584185486359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (n + 1) + 1

end

end A046640.P10355392584185486359

noncomputable section

/-- A046640: a(n) = A045763(n) + 1.

Offset 1, canonical program `A046640.P10355392584185486359`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046640 (n : ℕ) : ℤ :=
  A046640.P10355392584185486359.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046640.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046790.P4041262412351420373

`lt[7, A065745(n+1)]+1`
-/

namespace A046790.P4041262412351420373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065745 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046790.P4041262412351420373

noncomputable section

/-- A046790: Positive numbers divisible by 8 or by the square of an odd prime.

Offset 1, canonical program `A046790.P4041262412351420373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046790 (n : ℕ) : ℤ :=
  (A046790.P4041262412351420373.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048168.P17831030899034331783

`record[gcd(A048167(n+1)², A048166(n+1))]`
-/

namespace A048168.P17831030899034331783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048167 (n + 1) ^ 2) (A048166 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048168.P17831030899034331783

noncomputable section

/-- A048168: n is divisible by the square of the number of unitary divisors of n (A034444).

Offset 1, canonical program `A048168.P17831030899034331783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. -/
def A048168 (n : ℕ) : ℤ :=
  (A048168.P17831030899034331783.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. -/
def A048168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048701.P12021779623566832141

`A030101(n)+n*A062383(n)`
-/

namespace A048701.P12021779623566832141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n + (n : ℤ) * A062383 n

end

end A048701.P12021779623566832141

noncomputable section

/-- A048701: List of binary palindromes of even length (written in base 10).

Offset 0, canonical program `A048701.P12021779623566832141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048701 (n : ℕ) : ℤ :=
  A048701.P12021779623566832141.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048741.P2194570441843201245

`A007956(A002808(n+1))`
-/

namespace A048741.P2194570441843201245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (A002808 (n + 1)).toNat

end

end A048741.P2194570441843201245

noncomputable section

/-- A048741: Product of aliquot divisors of composite n (1 and primes omitted).

Offset 1, canonical program `A048741.P2194570441843201245`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048741 (n : ℕ) : ℤ :=
  A048741.P2194570441843201245.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048741.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048754.P5290523552306248918

`A007956(A048753(n+1))/A032741(A048753(n+1))`
-/

namespace A048754.P5290523552306248918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007956 (A048753 (n + 1)).toNat : ℚ) / (A032741 (A048753 (n + 1)).toNat : ℚ)

end

end A048754.P5290523552306248918

noncomputable section

/-- A048754: Mean integral quotients associated with A048753.

Offset 1, canonical program `A048754.P5290523552306248918`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032741, A048753, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048754 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048754.P5290523552306248918.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032741, A048753, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049079.P11299106101772179149

`A000040(A049078(n+1))`
-/

namespace A049079.P11299106101772179149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A049078 (n + 1)).toNat

end

end A049079.P11299106101772179149

noncomputable section

/-- A049079: Primes prime(k) for which A049076(k) = 3.

Offset 1, canonical program `A049079.P11299106101772179149`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049079 (n : ℕ) : ℤ :=
  A049079.P11299106101772179149.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049079.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049098.P8844519897010937386

`p?[A013929(n+1)-1]`
-/

namespace A049098.P8844519897010937386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049098.P8844519897010937386

noncomputable section

/-- A049098: Primes p such that p+1 is divisible by a square.

Offset 1, canonical program `A049098.P8844519897010937386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049098 (n : ℕ) : ℤ :=
  A049098.P8844519897010937386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049229.P12251038394700142042

`p?[A013929(n+1)+2]`
-/

namespace A049229.P12251038394700142042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049229.P12251038394700142042

noncomputable section

/-- A049229: Primes p such that p-2 is not squarefree.

Offset 1, canonical program `A049229.P12251038394700142042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5668 terms. -/
def A049229 (n : ℕ) : ℤ :=
  A049229.P12251038394700142042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5668 terms. -/
def A049229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049232.P8046376036610074650

`p?[A013929(n+1)-2]`
-/

namespace A049232.P8046376036610074650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049232.P8046376036610074650

noncomputable section

/-- A049232: Primes p such that p+2 is divisible by a square.

Offset 1, canonical program `A049232.P8046376036610074650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5630 terms. -/
def A049232 (n : ℕ) : ℤ :=
  A049232.P8046376036610074650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5630 terms. -/
def A049232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049321.P1209473950840220207

`(A026232(n+1)%A026227(n+1))%3`
-/

namespace A049321.P1209473950840220207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A026232 (n + 1)) (A026227 (n + 1))) 3

end

end A049321.P1209473950840220207

noncomputable section

/-- A049321: Primitive Chacon sequence: fixed under 0->0012, 1->12, 2->012.

Offset 0, canonical program `A049321.P1209473950840220207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049321 (n : ℕ) : ℤ :=
  A049321.P1209473950840220207.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049508.P1111944552521367574

`A000720(A030431(n+1))`
-/

namespace A049508.P1111944552521367574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A030431 (n + 1)).toNat

end

end A049508.P1111944552521367574

noncomputable section

/-- A049508: Numbers k such that prime(k) == 3 (mod 10).

Offset 1, canonical program `A049508.P1111944552521367574`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030431, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049508 (n : ℕ) : ℤ :=
  A049508.P1111944552521367574.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030431, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049508.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049585.P15303328923356932988

`eq[A003415(A097605(2*n+5)), A003415(n)]`
-/

namespace A049585.P15303328923356932988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A097605 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049585.P15303328923356932988

noncomputable section

/-- A049585: Primes p such that x^53 = 2 has a solution mod p.

Offset 1, canonical program `A049585.P15303328923356932988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A049585 (n : ℕ) : ℤ :=
  (A049585.P15303328923356932988.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A049585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049621.P790567699714540639

`floor((A049620(n+1)+A049620(n))/2)`
-/

namespace A049621.P790567699714540639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049620 (n + 1) + A049620 n : ℚ) / 2⌋

end

end A049621.P790567699714540639

noncomputable section

/-- A049621: a(n) = T(n,n+1), array T as in A049615.

Offset 0, canonical program `A049621.P790567699714540639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2723 terms. -/
def A049621 (n : ℕ) : ℤ :=
  A049621.P790567699714540639.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2723 terms. -/
def A049621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049644.P1684655514801948572

`A049632(A004526(n))-1`
-/

namespace A049644.P1684655514801948572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 (A004526 n).toNat - 1

end

end A049644.P1684655514801948572

noncomputable section

/-- A049644: T(n,n), array T given by A049639.

Offset 0, canonical program `A049644.P1684655514801948572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 558 terms. -/
def A049644 (n : ℕ) : ℤ :=
  A049644.P1684655514801948572.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 558 terms. -/
def A049644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050148.P3708266931219046583

`Δ[A002003(n)]-A086456(n)`
-/

namespace A050148.P3708266931219046583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A086456 n

end

end A050148.P3708266931219046583

noncomputable section

/-- A050148: a(n) = T(n,n-2), array T as in A050143.

Offset 2, canonical program `A050148.P3708266931219046583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A050148 (n : ℕ) : ℤ :=
  A050148.P3708266931219046583.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A050148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050149.P4252785858983221837

`Δ[A086456(n)+Δ[A002002(n)]]`
-/

namespace A050149.P4252785858983221837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086456 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050149.P4252785858983221837

noncomputable section

/-- A050149: a(n) = T(n,n-3), array T as in A050143.

Offset 3, canonical program `A050149.P4252785858983221837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A050149 (n : ℕ) : ℤ :=
  A050149.P4252785858983221837.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A050149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050174.P6005188988390205809

`A014430(A007401(n+1))-A183110(A007401(n+1))`
-/

namespace A050174.P6005188988390205809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 (A007401 (n + 1)).toNat - A183110 (A007401 (n + 1)).toNat

end

end A050174.P6005188988390205809

noncomputable section

/-- A050174: T(n,k) = S(n,k,k-2), 1<=k<=n-2, n >= 3, array S as in A050157.

Offset 3, canonical program `A050174.P6005188988390205809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 957 terms. -/
def A050174 (n : ℕ) : ℤ :=
  A050174.P6005188988390205809.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 957 terms. -/
def A050174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050182.P14663664458586946178

`A275206(n+2)/2`
-/

namespace A050182.P14663664458586946178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275206 (n + 2) : ℚ) / 2

end

end A050182.P14663664458586946178

noncomputable section

/-- A050182: a(n) = T(2*n+4, n), array T as in A051168 (a count of Lyndon words).

Offset 0, canonical program `A050182.P14663664458586946178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A050182 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A050182.P14663664458586946178.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A050182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050200.P6281150429617740541

`A151800(A052147(n+1))+A001043(n+1)`
-/

namespace A050200.P6281150429617740541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A052147 (n + 1)).toNat + A001043 (n + 1)

end

end A050200.P6281150429617740541

noncomputable section

/-- A050200: Let p = prime(n). Then a(n) = p + (next prime >= p+1) + (next prime >= p+3).

Offset 0, canonical program `A050200.P6281150429617740541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A050200 (n : ℕ) : ℤ :=
  A050200.P6281150429617740541.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A050200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050436.P13941268239678709413

`A002808(A050435(n+1))`
-/

namespace A050436.P13941268239678709413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A050435 (n + 1)).toNat

end

end A050436.P13941268239678709413

noncomputable section

/-- A050436: Third-order composites.

Offset 1, canonical program `A050436.P13941268239678709413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050436 (n : ℕ) : ℤ :=
  A050436.P13941268239678709413.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050451.P9220370011251437069

`A051000(n+1)-A050454(n+1)`
-/

namespace A050451.P9220370011251437069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051000 (n + 1) - A050454 (n + 1)

end

end A050451.P9220370011251437069

noncomputable section

/-- A050451: a(n) = Sum_{d|n, d=1 mod 4} d^3.

Offset 1, canonical program `A050451.P9220370011251437069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050451 (n : ℕ) : ℤ :=
  A050451.P9220370011251437069.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050614.P3798663840407021647

`A050613(2*n)`
-/

namespace A050614.P3798663840407021647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050613 (2 * n)

end

end A050614.P3798663840407021647

noncomputable section

/-- A050614: Products of distinct terms of A001566: a(n) = Product_{i=0..floor(log_2(n+1))} L(2^(i+1))^bit(n,i).

Offset 0, canonical program `A050614.P3798663840407021647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A050614 (n : ℕ) : ℤ :=
  A050614.P3798663840407021647.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A050614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050871.P14178361783424697463

`2*A050872(n)`
-/

namespace A050871.P14178361783424697463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050872 n

end

end A050871.P14178361783424697463

noncomputable section

/-- A050871: Row sums of even numbered rows of array T in A050870 (periodic binary words).

Offset 0, canonical program `A050871.P14178361783424697463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A050871 (n : ℕ) : ℤ :=
  A050871.P14178361783424697463.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A050871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051178.P2441463361311588415

`eq[0, A027857(n+1)]+1`
-/

namespace A051178.P2441463361311588415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027857 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051178.P2441463361311588415

noncomputable section

/-- A051178: Numbers k such that k divides the number of divisors of k!.

Offset 1, canonical program `A051178.P2441463361311588415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2960 terms. -/
def A051178 (n : ℕ) : ℤ :=
  (A051178.P2441463361311588415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2960 terms. -/
def A051178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051197.P11361868764992353229

`(n+2)*A275206(n+2)`
-/

namespace A051197.P11361868764992353229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A275206 (n + 2)

end

end A051197.P11361868764992353229

noncomputable section

/-- A051197: T(2n+4,n), array T as in A050186; a count of aperiodic binary words.

Offset 0, canonical program `A051197.P11361868764992353229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A051197 (n : ℕ) : ℤ :=
  A051197.P11361868764992353229.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A051197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051272.P18037893678165894194

`A045763(A002110(n+1))`
-/

namespace A051272.P18037893678165894194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (A002110 (n + 1)).toNat

end

end A051272.P18037893678165894194

noncomputable section

/-- A051272: Number of numbers neither relatively prime to nor divisors of primorial number(n).

Offset 1, canonical program `A051272.P18037893678165894194`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051272 (n : ℕ) : ℤ :=
  A051272.P18037893678165894194.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051272.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051455.P7397335918574363069

`A029623(n)/2`
-/

namespace A051455.P7397335918574363069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029623 n : ℚ) / 2

end

end A051455.P7397335918574363069

noncomputable section

/-- A051455: (Terms in A029623)/2.

Offset 0, canonical program `A051455.P7397335918574363069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051455 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051455.P7397335918574363069.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051634.P9175354426533819428

`A045319(eq[1, A079054(n+2)]+1)`
-/

namespace A051634.P9175354426533819428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079054 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A051634.P9175354426533819428

noncomputable section

/-- A051634: Strong primes: prime(k) > (prime(k-1) + prime(k+1))/2.

Offset 1, canonical program `A051634.P9175354426533819428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4748 terms. -/
def A051634 (n : ℕ) : ℤ :=
  A051634.P9175354426533819428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4748 terms. -/
def A051634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051666.P8179550014341494216

`A222404(n)-A051601(n)`
-/

namespace A051666.P8179550014341494216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222404 n - A051601 n

end

end A051666.P8179550014341494216

noncomputable section

/-- A051666: Rows of triangle formed using Pascal's rule except begin and end n-th row with n^2.

Offset 0, canonical program `A051666.P8179550014341494216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051666 (n : ℕ) : ℤ :=
  A051666.P8179550014341494216.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052288.P13034887197585829558

`A162345(n+3)`
-/

namespace A052288.P13034887197585829558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 3)

end

end A052288.P13034887197585829558

noncomputable section

/-- A052288: First differences of the average of two consecutive odd primes (A024675).

Offset 1, canonical program `A052288.P13034887197585829558`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162345, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052288 (n : ℕ) : ℤ :=
  A052288.P13034887197585829558.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162345, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052288.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A052728.P7992999568235782211

`n!*A052705(n)`
-/

namespace A052728.P7992999568235782211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052705 n

end

end A052728.P7992999568235782211

noncomputable section

/-- A052728: A simple context-free grammar in a labeled universe: labeled version of A052705.

Offset 0, canonical program `A052728.P7992999568235782211`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052705, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052728 (n : ℕ) : ℤ :=
  A052728.P7992999568235782211.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052705, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052728.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053023.P541668529944221178

`∏{e}[A053021(n+1), #+1]`
-/

namespace A053023.P541668529944221178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053021 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A053023.P541668529944221178

noncomputable section

/-- A053023: Divisor function applied thrice to n!.

Offset 1, canonical program `A053023.P541668529944221178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. -/
def A053023 (n : ℕ) : ℤ :=
  (A053023.P541668529944221178.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. -/
def A053023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053117.P11887934115580671576

`A049310(n)*A059268(n)`
-/

namespace A053117.P11887934115580671576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n * A059268 n

end

end A053117.P11887934115580671576

noncomputable section

/-- A053117: Triangle read by rows of coefficients of Chebyshev's U(n,x) polynomials (exponents in increasing order).

Offset 0, canonical program `A053117.P11887934115580671576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053117 (n : ℕ) : ℤ :=
  A053117.P11887934115580671576.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053124.P5499710438770500786

`A059268(n)²*A053122(n)`
-/

namespace A053124.P5499710438770500786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A053122 n

end

end A053124.P5499710438770500786

noncomputable section

/-- A053124: Triangle of coefficients of Chebyshev's U(n,2*x-1) polynomials (exponents of x in increasing order).

Offset 0, canonical program `A053124.P5499710438770500786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8735 terms. -/
def A053124 (n : ℕ) : ℤ :=
  A053124.P5499710438770500786.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8735 terms. -/
def A053124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053179.P11829121929846558222

`A017305(A153403(n+1))`
-/

namespace A053179.P11829121929846558222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (A153403 (n + 1)).toNat

end

end A053179.P11829121929846558222

noncomputable section

/-- A053179: Numbers ending in 3 which are not prime.

Offset 1, canonical program `A053179.P11829121929846558222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7598 terms. -/
def A053179 (n : ℕ) : ℤ :=
  A053179.P11829121929846558222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7598 terms. -/
def A053179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053207.P15737369054491189776

`A051598(n)-A007318(n)`
-/

namespace A053207.P15737369054491189776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051598 n - A007318 n

end

end A053207.P15737369054491189776

noncomputable section

/-- A053207: Rows of triangle formed using Pascal's rule except begin n-th row with n and end it with n+1.

Offset 0, canonical program `A053207.P15737369054491189776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053207 (n : ℕ) : ℤ :=
  A053207.P15737369054491189776.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053785.P3643210725324420680

`A053786(n+1)-(n+1)²²`
-/

namespace A053785.P3643210725324420680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053786 (n + 1) - (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A053785.P3643210725324420680

noncomputable section

/-- A053785: Nextprime(n^4) - n^4.

Offset 1, canonical program `A053785.P3643210725324420680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053785 (n : ℕ) : ℤ :=
  A053785.P3643210725324420680.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053850.P12600137398159799687

`A013929(eq[1, A013929(n+1)%2]+1)`
-/

namespace A053850.P12600137398159799687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013929 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A053850.P12600137398159799687

noncomputable section

/-- A053850: Odd numbers divisible by a square > 1.

Offset 1, canonical program `A053850.P12600137398159799687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053850 (n : ℕ) : ℤ :=
  A053850.P12600137398159799687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054012.P12555440370121058311

`A054009(A054011(n+1))`
-/

namespace A054012.P12555440370121058311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054009 (A054011 (n + 1)).toNat

end

end A054012.P12555440370121058311

noncomputable section

/-- A054012: Nonzero values of n read modulo (number of proper divisors of n).

Offset 1, canonical program `A054012.P12555440370121058311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7446 terms. -/
def A054012 (n : ℕ) : ℤ :=
  A054012.P12555440370121058311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7446 terms. -/
def A054012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054075.P9880067483023913226

`A054072(n+1)+∑[n]`
-/

namespace A054075.P9880067483023913226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054072 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A054075.P9880067483023913226

noncomputable section

/-- A054075: Position of first appearance of n in A054073.

Offset 1, canonical program `A054075.P9880067483023913226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054075 (n : ℕ) : ℤ :=
  A054075.P9880067483023913226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054080.P10690886715511353127

`∑{d}[n+1, A001037(#-1)]`
-/

namespace A054080.P10690886715511353127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001037 (d - 1)

end

end A054080.P10690886715511353127

noncomputable section

/-- A054080: Inverse Moebius transform of A001037 (starting at term 0).

Offset 0, canonical program `A054080.P10690886715511353127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A054080 (n : ℕ) : ℤ :=
  A054080.P10690886715511353127.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A054080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054114.P2092372370366146121

`∑[A001700(n)]*A036453(n+1)`
-/

namespace A054114.P2092372370366146121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A036453 (n + 1)

end

end A054114.P2092372370366146121

noncomputable section

/-- A054114: T(2n+1,n), array T as in A054110.

Offset 0, canonical program `A054114.P2092372370366146121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A054114 (n : ℕ) : ℤ :=
  A054114.P2092372370366146121.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A054114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054154.P14939316349495369977

`∑{d}[n+1, A001037(#-1)*A008683((n+1)/#)]`
-/

namespace A054154.P14939316349495369977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001037 (d - 1) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A054154.P14939316349495369977

noncomputable section

/-- A054154: Moebius transform of A001037 (starting at term 0).

Offset 0, canonical program `A054154.P14939316349495369977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A054154 (n : ℕ) : ℤ :=
  A054154.P14939316349495369977.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A054154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054550.P15837303380878172216

`∩[A038509(n+1), A080672(n+1)]`
-/

namespace A054550.P15837303380878172216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054550.P15837303380878172216

noncomputable section

/-- A054550: Composite numbers whose least prime factor is either 5 or 7.

Offset 1, canonical program `A054550.P15837303380878172216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1356 terms. -/
def A054550 (n : ℕ) : ℤ :=
  (A054550.P15837303380878172216.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1356 terms. -/
def A054550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055028.P9559815972415415958

`4*A055029(n)`
-/

namespace A055028.P9559815972415415958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A055029 n

end

end A055028.P9559815972415415958

noncomputable section

/-- A055028: Number of Gaussian primes of norm n.

Offset 0, canonical program `A055028.P9559815972415415958`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055029, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055028 (n : ℕ) : ℤ :=
  A055028.P9559815972415415958.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055029, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055028.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055201.P11625339162653954639

`eq[2, ∑{e}[A049632(n), #]]`
-/

namespace A055201.P11625339162653954639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055201.P11625339162653954639

noncomputable section

/-- A055201: Numbers k such that A005728(k) is prime.

Offset 1, canonical program `A055201.P11625339162653954639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A055201 (n : ℕ) : ℤ :=
  (A055201.P11625339162653954639.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A055201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055398.P5120495182018114897

`∪[A000040(n+1), A038511(n+1)]`
-/

namespace A055398.P5120495182018114897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055398.P5120495182018114897

noncomputable section

/-- A055398: Result of fourth stage of sieve of Eratosthenes (after eliminating multiples of 2, 3, 5, 7).

Offset 1, canonical program `A055398.P5120495182018114897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055398 (n : ℕ) : ℤ :=
  (A055398.P5120495182018114897.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055672.P17904768652882133137

`(n-A113638(n))*A005451(n+1)`
-/

namespace A055672.P17904768652882133137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A113638 n) * A005451 (n + 1)

end

end A055672.P17904768652882133137

noncomputable section

/-- A055672: Number of right-inequivalent prime Hurwitz quaternions of norm n.

Offset 0, canonical program `A055672.P17904768652882133137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055672 (n : ℕ) : ℤ :=
  A055672.P17904768652882133137.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055944.P9824612390251619605

`n+A030101(n)`
-/

namespace A055944.P9824612390251619605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A030101 n

end

end A055944.P9824612390251619605

noncomputable section

/-- A055944: a(n) = n + (reversal of base-2 digits of n) (written in base 10).

Offset 0, canonical program `A055944.P9824612390251619605`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055944 (n : ℕ) : ℤ :=
  A055944.P9824612390251619605.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055944.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056023.P18301880220554603864

`A038722(A056011(n+1))`
-/

namespace A056023.P18301880220554603864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A056011 (n + 1)).toNat

end

end A056023.P18301880220554603864

noncomputable section

/-- A056023: The positive integers written as a triangle, where row n is written from right to left if n is odd and otherwise from left to right.

Offset 1, canonical program `A056023.P18301880220554603864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056023 (n : ℕ) : ℤ :=
  A056023.P18301880220554603864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056203.P4742980478354179597

`sqrt(A057103(n+2)+A055096(n+2)²)`
-/

namespace A056203.P4742980478354179597
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A057103 (n + 2) + A055096 (n + 2) ^ 2 : ℝ)

end

end A056203.P4742980478354179597

noncomputable section

/-- A056203: Triangle of numbers related to congruum problem: T(n,k)=n^2+2nk-k^2 with n>k>0, starting at T(2,1)=7.

Offset 1, canonical program `A056203.P4742980478354179597`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056203 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056203.P4742980478354179597.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056203.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056290.P5622409132383994158

`A056270(n+1)/(n+1)`
-/

namespace A056290.P5622409132383994158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056270 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A056290.P5622409132383994158

noncomputable section

/-- A056290: Number of primitive (period n) n-bead necklaces with exactly five different colored beads.

Offset 1, canonical program `A056290.P5622409132383994158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A056290 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056290.P5622409132383994158.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A056290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056343.P18158920682156565457

`(A056489(n+1)+A056283(n+1))/2`
-/

namespace A056343.P18158920682156565457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056489 (n + 1) + A056283 (n + 1) : ℚ) / 2

end

end A056343.P18158920682156565457

noncomputable section

/-- A056343: Number of bracelets of length n using exactly three different colored beads.

Offset 1, canonical program `A056343.P18158920682156565457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A056343 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056343.P18158920682156565457.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A056343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056344.P7012098588156965107

`(A056284(n+1)+A056490(n+1))/2`
-/

namespace A056344.P7012098588156965107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056284 (n + 1) + A056490 (n + 1) : ℚ) / 2

end

end A056344.P7012098588156965107

noncomputable section

/-- A056344: Number of bracelets of length n using exactly four different colored beads.

Offset 1, canonical program `A056344.P7012098588156965107`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056284, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056344 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056344.P7012098588156965107.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056284, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056344.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056350.P5772277267185425881

`A326789(n+1)+A056500(n+1)`
-/

namespace A056350.P5772277267185425881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326789 (n + 1) + A056500 (n + 1)

end

end A056350.P5772277267185425881

noncomputable section

/-- A056350: Number of primitive (period n) bracelets using exactly four different colored beads.

Offset 1, canonical program `A056350.P5772277267185425881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A056350 (n : ℕ) : ℤ :=
  A056350.P5772277267185425881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A056350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056456.P10846034608747709919

`A056474(n+1)*A101100(n+1)`
-/

namespace A056456.P10846034608747709919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056474 (n + 1) * A101100 (n + 1)

end

end A056456.P10846034608747709919

noncomputable section

/-- A056456: Number of palindromes of length n using exactly five different symbols.

Offset 1, canonical program `A056456.P10846034608747709919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A056456 (n : ℕ) : ℤ :=
  A056456.P10846034608747709919.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A056456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056477.P15029080168793993472

`A056482(A028310(n))+A056476(n)`
-/

namespace A056477.P15029080168793993472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056482 (A028310 n).toNat + A056476 n

end

end A056477.P15029080168793993472

noncomputable section

/-- A056477: Number of primitive (aperiodic) palindromic structures using a maximum of three different symbols.

Offset 0, canonical program `A056477.P15029080168793993472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 423 terms. -/
def A056477 (n : ℕ) : ℤ :=
  A056477.P15029080168793993472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 423 terms. -/
def A056477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056596.P5937118824382541668

`A027423(n+1)-A055993(n+1)`
-/

namespace A056596.P5937118824382541668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 (n + 1) - A055993 (n + 1)

end

end A056596.P5937118824382541668

noncomputable section

/-- A056596: Number of nonsquare divisors of n!.

Offset 1, canonical program `A056596.P5937118824382541668`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056596 (n : ℕ) : ℤ :=
  A056596.P5937118824382541668.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056596.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056835.P10679261030270007209

`lcm(a(n-1), A024619(n))` with `a(0)=1`
-/

namespace A056835.P10679261030270007209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A024619 n)

end

end A056835.P10679261030270007209

noncomputable section

/-- A056835: a(n) = lcm(s(1),...,s(n)) where {s(n)} = A024619 and a(0) = 1.

Offset 0, canonical program `A056835.P10679261030270007209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. -/
def A056835 (n : ℕ) : ℤ :=
  (A056835.P10679261030270007209.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. -/
def A056835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056929.P6975652131116657014

`A000290(n+2)-A056928(n+2)`
-/

namespace A056929.P6975652131116657014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 2) - A056928 (n + 2)

end

end A056929.P6975652131116657014

noncomputable section

/-- A056929: Difference between n^2 and average of smallest prime greater than n^2 and largest prime less than n^2.

Offset 2, canonical program `A056929.P6975652131116657014`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056929 (n : ℕ) : ℤ :=
  A056929.P6975652131116657014.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056929.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056930.P2112737162764340499

`(A007491(n+2)+A053001(n+3))/2`
-/

namespace A056930.P2112737162764340499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007491 (n + 2) + A053001 (n + 3) : ℚ) / 2

end

end A056930.P2112737162764340499

noncomputable section

/-- A056930: Average of smallest prime greater than n^2 and largest prime less than (n+1)^2.

Offset 2, canonical program `A056930.P2112737162764340499`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056930 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056930.P2112737162764340499.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056930.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057036.P10749021010294889365

`A057037(A057037(n+1)+n+1)`
-/

namespace A057036.P10749021010294889365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057037 (A057037 (n + 1) + (n + 1 : ℤ)).toNat

end

end A057036.P10749021010294889365

noncomputable section

/-- A057036: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057036(n)=i(2n-1).

Offset 1, canonical program `A057036.P10749021010294889365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9851 terms. -/
def A057036 (n : ℕ) : ℤ :=
  A057036.P10749021010294889365.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9851 terms. -/
def A057036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057059.P4184647556311659396

`gcd(A080251(n), A141419(n+1))`
-/

namespace A057059.P4184647556311659396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080251 n) (A141419 (n + 1))

end

end A057059.P4184647556311659396

noncomputable section

/-- A057059: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ... Define i(m) and j(m) by R(i(m),j(m)) = m. Then a(n) = j(A057027(n)).

Offset 1, canonical program `A057059.P4184647556311659396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057059 (n : ℕ) : ℤ :=
  (A057059.P4184647556311659396.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057889.P1698969628910927929

`A006519(A028310(n))*A030101(n)`
-/

namespace A057889.P1698969628910927929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A028310 n).toNat * A030101 n

end

end A057889.P1698969628910927929

noncomputable section

/-- A057889: Bijective bit-reverse of n: keep the trailing zeros in the binary expansion of n fixed, but reverse all the digits up to that point.

Offset 0, canonical program `A057889.P1698969628910927929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057889 (n : ℕ) : ℤ :=
  A057889.P1698969628910927929.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057891.P12237480807863623377

`lt[0, A175919(xor(n, A175919(n)))]`
-/

namespace A057891.P12237480807863623377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (Int.xor (n : ℤ) (A175919 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A057891.P12237480807863623377

noncomputable section

/-- A057891: In base 2, neither a palindrome nor becomes a palindrome if trailing 0's are omitted.

Offset 1, canonical program `A057891.P12237480807863623377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057891 (n : ℕ) : ℤ :=
  (A057891.P12237480807863623377.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057921.P2394616819826387578

`eq[0, A145154(n)%A145154(n+1)]`
-/

namespace A057921.P2394616819826387578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145154 n) (A145154 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057921.P2394616819826387578

noncomputable section

/-- A057921: Numbers k such that d(k+1) divides d(k), where d(k) is number of positive divisors of k.

Offset 1, canonical program `A057921.P2394616819826387578`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4385 terms. -/
def A057921 (n : ℕ) : ℤ :=
  (A057921.P2394616819826387578.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4385 terms. -/
def A057921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057948.P3389524961642337781

`2*A327260(n+2)-1`
-/

namespace A057948.P3389524961642337781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A327260 (n + 2) - 1

end

end A057948.P3389524961642337781

noncomputable section

/-- A057948: S-primes: let S = {1,5,9, ... 4i+1, ...}; then an S-prime is in S but is not divisible by any members of S except itself and 1.

Offset 1, canonical program `A057948.P3389524961642337781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A057948 (n : ℕ) : ℤ :=
  A057948.P3389524961642337781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A057948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058043.P5464834808699039528

`2*(A056928(n+2)-A053001(n+2))`
-/

namespace A058043.P5464834808699039528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A056928 (n + 2) - A053001 (n + 2))

end

end A058043.P5464834808699039528

noncomputable section

/-- A058043: a(n) = nextprime(n^2) - prevprime(n^2).

Offset 2, canonical program `A058043.P5464834808699039528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058043 (n : ℕ) : ℤ :=
  A058043.P5464834808699039528.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058620.P3198521373101814188

`A243153(n+1)-2*p?[A028334(n+2)]`
-/

namespace A058620.P3198521373101814188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243153 (n + 1) - 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058620.P3198521373101814188

noncomputable section

/-- A058620: Lesser of two consecutive primes whose difference divided by two is a prime: ( prime(next prime after n) - prime(n) )/2 is prime.

Offset 1, canonical program `A058620.P3198521373101814188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5134 terms. -/
def A058620 (n : ℕ) : ℤ :=
  A058620.P3198521373101814188.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5134 terms. -/
def A058620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058766.P4843056571337141709

`abs(or(-2^n, A001037(n)))`
-/

namespace A058766.P4843056571337141709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (-(2 ^ n : ℤ)) (A001037 n)|

end

end A058766.P4843056571337141709

noncomputable section

/-- A058766: a(0) = 1, a(1) = 2; for n>=2 a(n) is the number of degree-n reducible polynomials over GF(2).

Offset 0, canonical program `A058766.P4843056571337141709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A058766 (n : ℕ) : ℤ :=
  A058766.P4843056571337141709.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A058766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059064.P3418469825707099881

`(A071028(n)*A249095(n))²`
-/

namespace A059064.P3418469825707099881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A071028 n * A249095 n) ^ 2

end

end A059064.P3418469825707099881

noncomputable section

/-- A059064: Card-matching numbers (Dinner-Diner matching numbers).

Offset 0, canonical program `A059064.P3418469825707099881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8263 terms. -/
def A059064 (n : ℕ) : ℤ :=
  A059064.P3418469825707099881.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8263 terms. -/
def A059064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059448.P3674555559967751262

`A010059(A054429(n+1))`
-/

namespace A059448.P3674555559967751262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A054429 (n + 1)).toNat

end

end A059448.P3674555559967751262

noncomputable section

/-- A059448: The parity of the number of zero digits when n is written in binary.

Offset 1, canonical program `A059448.P3674555559967751262`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059448 (n : ℕ) : ℤ :=
  A059448.P3674555559967751262.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059448.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059648.P7247611612074337130

`A327177((n-1)*A327205(n))`
-/

namespace A059648.P7247611612074337130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 (((n : ℤ) - 1) * A327205 n).toNat

end

end A059648.P7247611612074337130

noncomputable section

/-- A059648: a(n) = [[(k^2)*n]-(k*[k*n])], where k = sqrt(2) and [] is the floor function.

Offset 0, canonical program `A059648.P7247611612074337130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059648 (n : ℕ) : ℤ :=
  A059648.P7247611612074337130.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059797.P8076883929035700437

`A061928(n+1)-A194121(n)`
-/

namespace A059797.P8076883929035700437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061928 (n + 1) - A194121 n

end

end A059797.P8076883929035700437

noncomputable section

/-- A059797: Second in a series of arrays counting standard tableaux by partition type.

Offset 0, canonical program `A059797.P8076883929035700437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059797 (n : ℕ) : ℤ :=
  A059797.P8076883929035700437.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060264.P4854329161308632623

`A151800(2*n)`
-/

namespace A060264.P4854329161308632623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * n)

end

end A060264.P4854329161308632623

noncomputable section

/-- A060264: First prime after 2n.

Offset 0, canonical program `A060264.P4854329161308632623`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060264 (n : ℕ) : ℤ :=
  A060264.P4854329161308632623.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060264.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060266.P13024036352084086722

`A151800(2*(n+1))-2*(n+1)`
-/

namespace A060266.P13024036352084086722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * (n + 1)) - (2 * (n + 1) : ℤ)

end

end A060266.P13024036352084086722

noncomputable section

/-- A060266: Difference between 2n and the following prime.

Offset 1, canonical program `A060266.P13024036352084086722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060266 (n : ℕ) : ℤ :=
  A060266.P13024036352084086722.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060343.P12469655398525747036

`A151800(4*(n+3))`
-/

namespace A060343.P12469655398525747036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (4 * (n + 3))

end

end A060343.P12469655398525747036

noncomputable section

/-- A060343: Smallest prime which is the sum of n composite numbers.

Offset 2, canonical program `A060343.P12469655398525747036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9118 terms. -/
def A060343 (n : ℕ) : ℤ :=
  A060343.P12469655398525747036.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9118 terms. -/
def A060343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060357.P5151139434586093012

`A151800(A003418(n))`
-/

namespace A060357.P5151139434586093012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A003418 n).toNat

end

end A060357.P5151139434586093012

noncomputable section

/-- A060357: a(n) = smallest prime > lcm(1..n).

Offset 0, canonical program `A060357.P5151139434586093012`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060357 (n : ℕ) : ℤ :=
  A060357.P5151139434586093012.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060357.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060660.P16692280581307155305

`A103517(eq[2, A283486(n+1)-2])`
-/

namespace A060660.P16692280581307155305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283486 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060660.P16692280581307155305

noncomputable section

/-- A060660: Numbers k such that sigma(x) = k has exactly 4 solutions.

Offset 1, canonical program `A060660.P16692280581307155305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A060660 (n : ℕ) : ℤ :=
  A060660.P16692280581307155305.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A060660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060661.P14735911820516920844

`A103517(eq[5, A283486(n+1)])`
-/

namespace A060661.P14735911820516920844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060661.P14735911820516920844

noncomputable section

/-- A060661: Numbers k such that sigma(x) = k has exactly 5 solutions.

Offset 1, canonical program `A060661.P14735911820516920844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A060661 (n : ℕ) : ℤ :=
  A060661.P14735911820516920844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A060661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060821.P14686981588061014072

`A059268(n)*A112227(n)`
-/

namespace A060821.P14686981588061014072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A112227 n

end

end A060821.P14686981588061014072

noncomputable section

/-- A060821: Triangle read by rows. T(n, k) are the coefficients of the Hermite polynomial of order n, for 0 <= k <= n.

Offset 0, canonical program `A060821.P14686981588061014072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5163 terms. -/
def A060821 (n : ℕ) : ℤ :=
  A060821.P14686981588061014072.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5163 terms. -/
def A060821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060983.P4598278765053728380

`∑{d}[n+1, A069097(#)*A073184((n+1)/#)]`
-/

namespace A060983.P4598278765053728380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069097 d * A073184 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060983.P4598278765053728380

noncomputable section

/-- A060983: Number of primitive sublattices of index n in generic 3-dimensional lattice.

Offset 1, canonical program `A060983.P4598278765053728380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060983 (n : ℕ) : ℤ :=
  A060983.P4598278765053728380.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061202.P15389069381190773999

`∑{#}[n, A061201(floor((n+1)/(#+1)))]`
-/

namespace A061202.P15389069381190773999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A061201 ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋.toNat

end

end A061202.P15389069381190773999

noncomputable section

/-- A061202: (tau<=)_4(n).

Offset 1, canonical program `A061202.P15389069381190773999`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061202 (n : ℕ) : ℤ :=
  A061202.P15389069381190773999.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061202.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061304.P10532715459546115728

`A000217(A215726(n+1))`
-/

namespace A061304.P10532715459546115728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A215726 (n + 1)).toNat

end

end A061304.P10532715459546115728

noncomputable section

/-- A061304: Squarefree triangular numbers.

Offset 1, canonical program `A061304.P10532715459546115728`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A215726, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061304 (n : ℕ) : ℤ :=
  A061304.P10532715459546115728.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A215726, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061304.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061389.P4695000601348922787

`∏{e}[n+1, A214288(#)]`
-/

namespace A061389.P4695000601348922787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A214288 (Nat.factorization (f1 n) p)

end

end A061389.P4695000601348922787

noncomputable section

/-- A061389: Number of (1+phi)-divisors of n.

Offset 1, canonical program `A061389.P4695000601348922787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061389 (n : ℕ) : ℤ :=
  A061389.P4695000601348922787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061929.P10346754905062245999

`A054143(n)*A175840(n)`
-/

namespace A061929.P10346754905062245999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 n * A175840 n

end

end A061929.P10346754905062245999

noncomputable section

/-- A061929: Triangle with n >= k >= 0 where a(n,k) = 2^k*3^(n-k)*(C(n+1,0)+C(n+1,1)+...C(n+1,k)).

Offset 0, canonical program `A061929.P10346754905062245999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061929 (n : ℕ) : ℤ :=
  A061929.P10346754905062245999.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062042.P6136320871512992597

`A151800(2*a(n-1))-a(n-1)` with `a(0)=2`
-/

namespace A062042.P6136320871512992597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (2 * a (n - 1)).toNat - a (n - 1)

end

end A062042.P6136320871512992597

noncomputable section

/-- A062042: a(1) = 2, a(n) = least number greater than a(n-1) such that a(n-1) + a(n) is a prime.

Offset 1, canonical program `A062042.P6136320871512992597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5676 terms. -/
def A062042 (n : ℕ) : ℤ :=
  A062042.P6136320871512992597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5676 terms. -/
def A062042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062302.P17483310731157599861

`A062602(A000040(n+1))`
-/

namespace A062302.P17483310731157599861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (A000040 (n + 1)).toNat

end

end A062302.P17483310731157599861

noncomputable section

/-- A062302: Number of ways writing n-th prime as a sum of a prime and a nonprime.

Offset 1, canonical program `A062302.P17483310731157599861`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062302 (n : ℕ) : ℤ :=
  A062302.P17483310731157599861.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062302.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062305.P13485708107891257618

`A062602(2^n)`
-/

namespace A062305.P13485708107891257618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (2 ^ n)

end

end A062305.P13485708107891257618

noncomputable section

/-- A062305: Number of ways writing 2^n as a sum of a prime and a nonprime.

Offset 0, canonical program `A062305.P13485708107891257618`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062305 (n : ℕ) : ℤ :=
  A062305.P13485708107891257618.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062305.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062309.P11926032728110666298

`A062602((n+1)!)`
-/

namespace A062309.P11926032728110666298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (Nat.factorial (n + 1))

end

end A062309.P11926032728110666298

noncomputable section

/-- A062309: Number of ways writing n! as sums of a prime and a nonprime.

Offset 1, canonical program `A062309.P11926032728110666298`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062309 (n : ℕ) : ℤ :=
  A062309.P11926032728110666298.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062309.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062320.P2059323313079579979

`A013929(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A062320.P2059323313079579979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) ^ 2

end

end A062320.P2059323313079579979

noncomputable section

/-- A062320: Nonsquarefree numbers squared. A013929(n)^2.

Offset 1, canonical program `A062320.P2059323313079579979`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062320 (n : ℕ) : ℤ :=
  A062320.P2059323313079579979.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062320.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062333.P7322437637995011704

`∩[A030431(n+1), A077652(n+1)]`
-/

namespace A062333.P7322437637995011704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062333.P7322437637995011704

noncomputable section

/-- A062333: Primes starting and ending with 3.

Offset 1, canonical program `A062333.P7322437637995011704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2251 terms. -/
def A062333 (n : ℕ) : ℤ :=
  (A062333.P7322437637995011704.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2251 terms. -/
def A062333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062334.P13873159194991074977

`∩[A030432(n+1), A077652(n+1)]`
-/

namespace A062334.P13873159194991074977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062334.P13873159194991074977

noncomputable section

/-- A062334: Primes starting and ending with 7.

Offset 1, canonical program `A062334.P13873159194991074977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2104 terms. -/
def A062334 (n : ℕ) : ℤ :=
  (A062334.P13873159194991074977.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2104 terms. -/
def A062334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062347.P10586268289605082187

`A066909(A000040(n+1))`
-/

namespace A062347.P10586268289605082187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066909 (A000040 (n + 1)).toNat

end

end A062347.P10586268289605082187

noncomputable section

/-- A062347: a(n) = (product of first n primes) modulo prime(n+1).

Offset 0, canonical program `A062347.P10586268289605082187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A062347 (n : ℕ) : ℤ :=
  A062347.P10586268289605082187.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A062347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062772.P2777884273118347424

`A151800(A001248(n+1))`
-/

namespace A062772.P2777884273118347424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A001248 (n + 1)).toNat

end

end A062772.P2777884273118347424

noncomputable section

/-- A062772: Smallest prime larger than square of n-th prime.

Offset 1, canonical program `A062772.P2777884273118347424`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062772 (n : ℕ) : ℤ :=
  A062772.P2777884273118347424.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062772.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062948.P1375917266178059174

`A001281(A166362(n+2))`
-/

namespace A062948.P1375917266178059174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A166362 (n + 2)).toNat

end

end A062948.P1375917266178059174

noncomputable section

/-- A062948: a(n) = H(A002808(n)) where H(n) is the half-totient function, H(n) = phi(n)/2: (A023022) and A002808(n) are the composites.

Offset 1, canonical program `A062948.P1375917266178059174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8947 terms. -/
def A062948 (n : ℕ) : ℤ :=
  A062948.P1375917266178059174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8947 terms. -/
def A062948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063084.P11297547496359058065

`A005451(n+1)-A086936(n+1)`
-/

namespace A063084.P11297547496359058065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (n + 1) - A086936 (n + 1)

end

end A063084.P11297547496359058065

noncomputable section

/-- A063084: a(n) = pi(n-1)*n - pi(n)*(n-1), where pi() = A000720().

Offset 1, canonical program `A063084.P11297547496359058065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063084 (n : ℕ) : ℤ :=
  A063084.P11297547496359058065.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063088.P233869695303598364

`A002088(n+1)-A006218(n+1)`
-/

namespace A063088.P233869695303598364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) - A006218 (n + 1)

end

end A063088.P233869695303598364

noncomputable section

/-- A063088: a(n) = Sum_{k=1..n} phi(k) - Sum{k=1..n} d(k), where d() is the number of divisors function.

Offset 1, canonical program `A063088.P233869695303598364`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063088 (n : ℕ) : ℤ :=
  A063088.P233869695303598364.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063088.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063506.P8310104174550140496

`A062355(a(n-1))` with `a(0)=3`
-/

namespace A063506.P8310104174550140496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A062355 (a (n - 1)).toNat

end

end A063506.P8310104174550140496

noncomputable section

/-- A063506: a(n) = phi(a(n-1)) * number of divisors of a(n-1), a(1)=3.

Offset 1, canonical program `A063506.P8310104174550140496`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063506 (n : ℕ) : ℤ :=
  A063506.P8310104174550140496.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063506.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063645.P11828165529242582443

`∩[A063641(n+1), A063642(n+1)]`
-/

namespace A063645.P11828165529242582443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063645.P11828165529242582443

noncomputable section

/-- A063645: Primes with two representations: p*q*r - 2 = u*v*w + 2 where p, q, r, u, v and w are primes (not necessarily distinct).

Offset 1, canonical program `A063645.P11828165529242582443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3137 terms. -/
def A063645 (n : ℕ) : ℤ :=
  (A063645.P11828165529242582443.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3137 terms. -/
def A063645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063911.P1303039430308054328

`p?[A097069(n+1)]`
-/

namespace A063911.P1303039430308054328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063911.P1303039430308054328

noncomputable section

/-- A063911: Primes p such that 2*p - 9 is also prime.

Offset 1, canonical program `A063911.P1303039430308054328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1375 terms. -/
def A063911 (n : ℕ) : ℤ :=
  A063911.P1303039430308054328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1375 terms. -/
def A063911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064031.P6654393610759162702

`A061538((n+1)!)`
-/

namespace A064031.P6654393610759162702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061538 (Nat.factorial (n + 1))

end

end A064031.P6654393610759162702

noncomputable section

/-- A064031: Product of non-unitary divisors of n!.

Offset 1, canonical program `A064031.P6654393610759162702`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064031 (n : ℕ) : ℤ :=
  A064031.P6654393610759162702.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064031.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064033.P4449831178947753500

`A061538(A001405(n+1))`
-/

namespace A064033.P4449831178947753500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061538 (A001405 (n + 1)).toNat

end

end A064033.P4449831178947753500

noncomputable section

/-- A064033: Product of non-unitary divisors of binomial(n, floor(n/2)) or a(n) = 1 if all divisors are unitary. See A046098.

Offset 1, canonical program `A064033.P4449831178947753500`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064033 (n : ℕ) : ℤ :=
  A064033.P4449831178947753500.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064033.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064337.P4577822479173310774

`A151800(A000040(n)+a(n-1))` with `a(0)=2`
-/

namespace A064337.P4577822479173310774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (A000040 n + a (n - 1)).toNat

end

end A064337.P4577822479173310774

noncomputable section

/-- A064337: Minimal prime numbers with increasing prime differences.

Offset 1, canonical program `A064337.P4577822479173310774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. -/
def A064337 (n : ℕ) : ℤ :=
  A064337.P4577822479173310774.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. -/
def A064337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064532.P10940684509799697832

`A064531(n)-1`
-/

namespace A064532.P10940684509799697832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064531 n - 1

end

end A064532.P10940684509799697832

noncomputable section

/-- A064532: Total number of holes in decimal expansion of the number n, assuming 4 has no hole.

Offset 0, canonical program `A064532.P10940684509799697832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064532 (n : ℕ) : ℤ :=
  A064532.P10940684509799697832.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064578.P5706132154226791949

`A057944(n)+A194959(n+1)`
-/

namespace A064578.P5706132154226791949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A194959 (n + 1)

end

end A064578.P5706132154226791949

noncomputable section

/-- A064578: Inverse permutation to A057027.

Offset 1, canonical program `A064578.P5706132154226791949`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A194959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064578 (n : ℕ) : ℤ :=
  A064578.P5706132154226791949.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A194959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064578.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064778.P14139164401297173886

`A266620(n+1)-1`
-/

namespace A064778.P14139164401297173886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266620 (n + 1) - 1

end

end A064778.P14139164401297173886

noncomputable section

/-- A064778: Largest m such that 1..m all divide n!.

Offset 1, canonical program `A064778.P14139164401297173886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064778 (n : ℕ) : ℤ :=
  A064778.P14139164401297173886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065059.P1473631309085740643

`p?[A065042(n+1)]`
-/

namespace A065059.P1473631309085740643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065059.P1473631309085740643

noncomputable section

/-- A065059: Primes p such that prime(p) + pi(p) is a prime.

Offset 1, canonical program `A065059.P1473631309085740643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. -/
def A065059 (n : ℕ) : ℤ :=
  A065059.P1473631309085740643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. -/
def A065059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065060.P16835916227254583194

`p?[A065046(n+1)]`
-/

namespace A065060.P16835916227254583194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065060.P16835916227254583194

noncomputable section

/-- A065060: Primes p such that prime(p) - pi(p) is a prime.

Offset 1, canonical program `A065060.P16835916227254583194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 931 terms. -/
def A065060 (n : ℕ) : ℤ :=
  A065060.P16835916227254583194.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 931 terms. -/
def A065060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065341.P15603421437455654588

`2^A054723(n+1)-1`
-/

namespace A065341.P15603421437455654588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A054723 (n + 1) : ℤ) - 1

end

end A065341.P15603421437455654588

noncomputable section

/-- A065341: Mersenne composites: 2^prime(m) - 1 is not a prime.

Offset 1, canonical program `A065341.P15603421437455654588`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065341 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A065341.P15603421437455654588.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065341.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065383.P2629360467203917195

`A151800(and(∑[n], -2))`
-/

namespace A065383.P2629360467203917195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-2)).toNat

end

end A065383.P2629360467203917195

noncomputable section

/-- A065383: a(n) = smallest prime >= n*(n + 1)/2.

Offset 0, canonical program `A065383.P2629360467203917195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A065383 (n : ℕ) : ℤ :=
  A065383.P2629360467203917195.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A065383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065979.P12567528145830693224

`A280352(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A065979.P12567528145830693224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A280352 n + 2 * a (n - 1)

end

end A065979.P12567528145830693224

noncomputable section

/-- A065979: Binomial transform of A002024.

Offset 1, canonical program `A065979.P12567528145830693224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A065979 (n : ℕ) : ℤ :=
  A065979.P12567528145830693224.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A065979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066168.P525393161361809631

`A151800(∑{d}[n+1, #]+1)`
-/

namespace A066168.P525393161361809631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ d ∈ Nat.divisors (f1 n), d + 1)

end

end A066168.P525393161361809631

noncomputable section

/-- A066168: a(n) = least k such that phi(k) > sigma(n).

Offset 1, canonical program `A066168.P525393161361809631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066168 (n : ℕ) : ℤ :=
  A066168.P525393161361809631.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066520.P7437655284551336730

`A066490(n+1)-A066339(n+1)`
-/

namespace A066520.P7437655284551336730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (n + 1) - A066339 (n + 1)

end

end A066520.P7437655284551336730

noncomputable section

/-- A066520: Number of primes of the form 4m+3 <= n minus number of primes of the form 4m+1 <= n.

Offset 1, canonical program `A066520.P7437655284551336730`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066339, A066490, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A066520 (n : ℕ) : ℤ :=
  A066520.P7437655284551336730.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066339, A066490, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A066520.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066613.P5367228153376290154

`eq[A008574(A051801(n)), A145154(n)]`
-/

namespace A066613.P5367228153376290154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A051801 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066613.P5367228153376290154

noncomputable section

/-- A066613: Numbers k such that the product of the nonzero digits of k equals the number of divisors of k.

Offset 1, canonical program `A066613.P5367228153376290154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A066613 (n : ℕ) : ℤ :=
  (A066613.P5367228153376290154.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A066613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066656.P10645985252166079910

`A000031(n)-A001037(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066656.P10645985252166079910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n - A001037 n

end

end A066656.P10645985252166079910

noncomputable section

/-- A066656: a(n) = A000031(n) - A001037(n).

Offset 0, canonical program `A066656.P10645985252166079910`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, A001037, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A066656 (n : ℕ) : ℤ :=
  A066656.P10645985252166079910.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, A001037, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A066656.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067051.P9041529878251612629

`∪[A074216(n+1), ∑[A016825(n)]]`
-/

namespace A067051.P9041529878251612629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074216 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067051.P9041529878251612629

noncomputable section

/-- A067051: The smallest k > 1 such that k divides sigma(k*n) is equal to 3.

Offset 1, canonical program `A067051.P9041529878251612629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067051 (n : ℕ) : ℤ :=
  (A067051.P9041529878251612629.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067147.P5733309145928527977

`A061554(n)*A242653(n)`
-/

namespace A067147.P5733309145928527977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 n * A242653 n

end

end A067147.P5733309145928527977

noncomputable section

/-- A067147: Triangle of coefficients for expressing x^n in terms of Hermite polynomials.

Offset 0, canonical program `A067147.P5733309145928527977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5464 terms. -/
def A067147 (n : ℕ) : ℤ :=
  A067147.P5733309145928527977.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5464 terms. -/
def A067147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067350.P18314922694609519649

`eq[4, A067349(n+1)]+1`
-/

namespace A067350.P18314922694609519649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067349 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067350.P18314922694609519649

noncomputable section

/-- A067350: Numbers n such that sigma(n)+phi(n) has exactly 4 divisors.

Offset 1, canonical program `A067350.P18314922694609519649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1610 terms. -/
def A067350 (n : ℕ) : ℤ :=
  (A067350.P18314922694609519649.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1610 terms. -/
def A067350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067386.P7044445274366932039

`p?[A115165(n+1)]`
-/

namespace A067386.P7044445274366932039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067386.P7044445274366932039

noncomputable section

/-- A067386: Primes p such that p+1 and p-1 have the same number of distinct prime factors.

Offset 1, canonical program `A067386.P7044445274366932039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1810 terms. -/
def A067386 (n : ℕ) : ℤ :=
  A067386.P7044445274366932039.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1810 terms. -/
def A067386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067544.P2326297398031319186

`lt[A033537(A248909(n+2)), A010888(n)]`
-/

namespace A067544.P2326297398031319186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033537 (A248909 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067544.P2326297398031319186

noncomputable section

/-- A067544: Numbers k such that phi(k*(k+1)*(k+2)/6)/phi(k*(k+1)/2) is not an integer where phi(k) = A000010(k) is the Euler totient function.

Offset 1, canonical program `A067544.P2326297398031319186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 822 terms. -/
def A067544 (n : ℕ) : ℤ :=
  (A067544.P2326297398031319186.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 822 terms. -/
def A067544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067832.P6338250715673220495

`p?[A038509(n+2)+6]`
-/

namespace A067832.P6338250715673220495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 2) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067832.P6338250715673220495

noncomputable section

/-- A067832: Primes p such that sigma(p-6) > p.

Offset 1, canonical program `A067832.P6338250715673220495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3256 terms. -/
def A067832 (n : ℕ) : ℤ :=
  A067832.P6338250715673220495.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3256 terms. -/
def A067832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068419.P7642446315281868870

`p?[A226586(n+1)]`
-/

namespace A068419.P7642446315281868870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068419.P7642446315281868870

noncomputable section

/-- A068419: Odd prime values of sigma(k) - phi(k) taking k in increasing order.

Offset 1, canonical program `A068419.P7642446315281868870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A068419 (n : ℕ) : ℤ :=
  A068419.P7642446315281868870.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A068419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068781.P14060761799375853709

`A013929(eq[1, A013929(n+2)-A013929(n+1)]+1)`
-/

namespace A068781.P14060761799375853709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 2) - A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A068781.P14060761799375853709

noncomputable section

/-- A068781: Lesser of two consecutive numbers each divisible by a square.

Offset 1, canonical program `A068781.P14060761799375853709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068781 (n : ℕ) : ℤ :=
  A068781.P14060761799375853709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068919.P16495689797022882545

`∩[A000469(n+1), A069209(n+1)]`
-/

namespace A068919.P16495689797022882545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068919.P16495689797022882545

noncomputable section

/-- A068919: Squarefree orders of non-Abelian groups.

Offset 1, canonical program `A068919.P16495689797022882545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4654 terms. -/
def A068919 (n : ℕ) : ℤ :=
  (A068919.P16495689797022882545.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4654 terms. -/
def A068919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069081.P13948387109957077000

`eq[2, A057021(n+1)]+1`
-/

namespace A069081.P13948387109957077000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069081.P13948387109957077000

noncomputable section

/-- A069081: Numbers n such that sigma(n)/tau(n) has denominator 2.

Offset 1, canonical program `A069081.P13948387109957077000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 899 terms. -/
def A069081 (n : ℕ) : ℤ :=
  (A069081.P13948387109957077000.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 899 terms. -/
def A069081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069084.P9884750403589385875

`eq[5, A057021(n+1)]+1`
-/

namespace A069084.P9884750403589385875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069084.P9884750403589385875

noncomputable section

/-- A069084: Numbers n such that sigma(n)/tau(n) has denominator 5.

Offset 1, canonical program `A069084.P9884750403589385875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A069084 (n : ℕ) : ℤ :=
  (A069084.P9884750403589385875.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A069084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069562.P5904755138920581150

`filter[A028982(n+1), A202238(#)]`
-/

namespace A069562.P5904755138920581150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A069562.P5904755138920581150

noncomputable section

/-- A069562: Numbers, m, whose odd part (largest odd divisor, A000265(m)) is a nontrivial square.

Offset 1, canonical program `A069562.P5904755138920581150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A069562 (n : ℕ) : ℤ :=
  A069562.P5904755138920581150.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A069562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069639.P8862387872476146711

`A007491(n+1)²`
-/

namespace A069639.P8862387872476146711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (n + 1) ^ 2

end

end A069639.P8862387872476146711

noncomputable section

/-- A069639: Smallest composite k such that phi(k) > k*(1-1/n^2).

Offset 1, canonical program `A069639.P8862387872476146711`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069639 (n : ℕ) : ℤ :=
  A069639.P8862387872476146711.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069639.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069709.P16883846701480238033

`p?[A061383(n)]`
-/

namespace A069709.P16883846701480238033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069709.P16883846701480238033

noncomputable section

/-- A069709: Primes with arithmetic mean of digits an integer (sum of digits = a multiple of number of digits).

Offset 1, canonical program `A069709.P16883846701480238033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1009 terms. -/
def A069709 (n : ℕ) : ℤ :=
  A069709.P16883846701480238033.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1009 terms. -/
def A069709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070323.P14060972304361339220

`2*A037169(n+1)/A000040(n+1)`
-/

namespace A070323.P14060972304361339220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A037169 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A070323.P14060972304361339220

noncomputable section

/-- A070323: Let M_n be the n X n matrix m(i,j) = min(prime(i), prime(j)); then a(n) = det(M_n).

Offset 1, canonical program `A070323.P14060972304361339220`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037169, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070323 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A070323.P14060972304361339220.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037169, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070323.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070689.P1393312578879141227

`p?[A067720(n+1)+1]-1`
-/

namespace A070689.P1393312578879141227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067720 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A070689.P1393312578879141227

noncomputable section

/-- A070689: Numbers k such that k+1 and k^2+1 are primes.

Offset 1, canonical program `A070689.P1393312578879141227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6961 terms. -/
def A070689 (n : ℕ) : ℤ :=
  A070689.P1393312578879141227.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6961 terms. -/
def A070689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070800.P10333098883038954083

`A151800(A000010(n+2))`
-/

namespace A070800.P10333098883038954083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000010 (n + 2)).toNat

end

end A070800.P10333098883038954083

noncomputable section

/-- A070800: Smallest prime greater than phi(n): a(n) = nextprime(phi(n)).

Offset 2, canonical program `A070800.P10333098883038954083`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070800 (n : ℕ) : ℤ :=
  A070800.P10333098883038954083.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070800.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071224.P12951188151330650985

`(n+1)*A002808(n+1)/A064814(n+1)`
-/

namespace A071224.P12951188151330650985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A002808 (n + 1) : ℚ) / (A064814 (n + 1) : ℚ)

end

end A071224.P12951188151330650985

noncomputable section

/-- A071224: LCM of n and n-th composite number.

Offset 1, canonical program `A071224.P12951188151330650985`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071224 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A071224.P12951188151330650985.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071224.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071227.P17938757858889274973

`A000010(A033950(n+1)/A039819(n+1))`
-/

namespace A071227.P17938757858889274973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A033950 (n + 1) : ℚ) / (A039819 (n + 1) : ℚ))).toNat

end

end A071227.P17938757858889274973

noncomputable section

/-- A071227: Number of solutions 1<=x<=m to gcd(m,x) = tau(m) where m = A033950(n).

Offset 1, canonical program `A071227.P17938757858889274973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071227 (n : ℕ) : ℤ :=
  A071227.P17938757858889274973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071260.P4436838018633827743

`floor(sqrt(A067563(n+1)))`
-/

namespace A071260.P4436838018633827743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A067563 (n + 1))

end

end A071260.P4436838018633827743

noncomputable section

/-- A071260: Integer part of the geometric mean of the n-th prime prime(n) and the n-th composite number C(n).

Offset 0, canonical program `A071260.P4436838018633827743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071260 (n : ℕ) : ℤ :=
  A071260.P4436838018633827743.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071328.P14920521615999072632

`A151800(A095116(n+1))`
-/

namespace A071328.P14920521615999072632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A095116 (n + 1)).toNat

end

end A071328.P14920521615999072632

noncomputable section

/-- A071328: Smallest prime q such that q - prime(n) >= n.

Offset 1, canonical program `A071328.P14920521615999072632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. -/
def A071328 (n : ℕ) : ℤ :=
  A071328.P14920521615999072632.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. -/
def A071328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071749.P11877832049882480316

`Δ[A071728(n)]-A071717(n)`
-/

namespace A071749.P11877832049882480316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A071717 n

end

end A071749.P11877832049882480316

noncomputable section

/-- A071749: Expansion of (1+x^4*C^2)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071749.P11877832049882480316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071749 (n : ℕ) : ℤ :=
  A071749.P11877832049882480316.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071751.P10296614711207118545

`A071748(n)-A099376(n)`
-/

namespace A071751.P10296614711207118545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071748 n - A099376 n

end

end A071751.P10296614711207118545

noncomputable section

/-- A071751: Expansion of (1+x^4*C^3)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071751.P10296614711207118545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071751 (n : ℕ) : ℤ :=
  A071751.P10296614711207118545.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071839.P2169769857197006636

`A066339(n+1)-A071841(n+1)`
-/

namespace A071839.P2169769857197006636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (n + 1) - A071841 (n + 1)

end

end A071839.P2169769857197006636

noncomputable section

/-- A071839: Number of primes == 1 mod 8 <= n.

Offset 1, canonical program `A071839.P2169769857197006636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071839 (n : ℕ) : ℤ :=
  A071839.P2169769857197006636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071923.P103564520230020603

`record[A000040(2*A213649(n+1)+n)]`
-/

namespace A071923.P103564520230020603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * A213649 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071923.P103564520230020603

noncomputable section

/-- A071923: a(n) is the prime p such that pi(n^2, (n+1)^2+1) = pi((n+1)^2, p) where pi(s,t) = pi(t) - pi(s) is the number of primes between s and t.

Offset 1, canonical program `A071923.P103564520230020603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A071923 (n : ℕ) : ℤ :=
  A071923.P103564520230020603.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A071923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072046.P1909165167796001889

`gcd(A007955(n+1), A055067(n+1))`
-/

namespace A072046.P1909165167796001889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007955 (n + 1)) (A055067 (n + 1))

end

end A072046.P1909165167796001889

noncomputable section

/-- A072046: Greatest common divisor of product of divisors of n and product of non-divisors < n.

Offset 1, canonical program `A072046.P1909165167796001889`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072046 (n : ℕ) : ℤ :=
  (A072046.P1909165167796001889.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072046.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072073.P17267982466277803017

`A332220(n+1)+1`
-/

namespace A072073.P17267982466277803017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332220 (n + 1) + 1

end

end A072073.P17267982466277803017

noncomputable section

/-- A072073: Number of solutions to cototient(x) = A051953(x) = 2^n.

Offset 1, canonical program `A072073.P17267982466277803017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072073 (n : ℕ) : ℤ :=
  A072073.P17267982466277803017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072357.P5178513811147103073

`filter[A060687(n+1), A049240(#)]`
-/

namespace A072357.P5178513811147103073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A072357.P5178513811147103073

noncomputable section

/-- A072357: Cubefree nonsquares whose factorization into a product of primes contains exactly one square.

Offset 1, canonical program `A072357.P5178513811147103073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9952 terms. -/
def A072357 (n : ℕ) : ℤ :=
  A072357.P5178513811147103073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9952 terms. -/
def A072357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072476.P1718783776541712770

`∑[A038529(n+1)]`
-/

namespace A072476.P1718783776541712770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072476.P1718783776541712770

noncomputable section

/-- A072476: Difference between the sum of first n prime numbers and the sum of first n composite numbers.

Offset 1, canonical program `A072476.P1718783776541712770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072476 (n : ℕ) : ℤ :=
  A072476.P1718783776541712770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072492.P5866814603808169309

`eq[3, A072491(n)]`
-/

namespace A072492.P5866814603808169309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072492.P5866814603808169309

noncomputable section

/-- A072492: Values of n for which A072491(n)=3.

Offset 1, canonical program `A072492.P5866814603808169309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3398 terms. -/
def A072492 (n : ℕ) : ℤ :=
  (A072492.P5866814603808169309.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3398 terms. -/
def A072492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072568.P6946884247769924292

`∪[A072570(n+1), A072571(n+1)]`
-/

namespace A072568.P6946884247769924292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072568.P6946884247769924292

noncomputable section

/-- A072568: Even interprimes.

Offset 1, canonical program `A072568.P6946884247769924292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072568 (n : ℕ) : ℤ :=
  (A072568.P6946884247769924292.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072588.P14826125497487737405

`filter[A072587(n+1), A049240(#)]`
-/

namespace A072588.P14826125497487737405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A072588.P14826125497487737405

noncomputable section

/-- A072588: Numbers having at least one prime factor with an odd and one with an even exponent.

Offset 1, canonical program `A072588.P14826125497487737405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9817 terms. -/
def A072588 (n : ℕ) : ℤ :=
  A072588.P14826125497487737405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9817 terms. -/
def A072588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072681.P11367421680311934153

`A064722(n+2)*A007920(n+2)`
-/

namespace A072681.P11367421680311934153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (n + 2) * A007920 (n + 2)

end

end A072681.P11367421680311934153

noncomputable section

/-- A072681: a(n) = (n - A007917(n)) * (A007918(n) - n).

Offset 2, canonical program `A072681.P11367421680311934153`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007920, A064722, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072681 (n : ℕ) : ℤ :=
  A072681.P11367421680311934153.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007920, A064722, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072681.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072698.P923313346502833611

`∑{p}[A072697(n+1), #]`
-/

namespace A072698.P923313346502833611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072697 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A072698.P923313346502833611

noncomputable section

/-- A072698: Sum of prime factors of A072697(n).

Offset 1, canonical program `A072698.P923313346502833611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072698 (n : ℕ) : ℤ :=
  (A072698.P923313346502833611.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072699.P9031974156586421973

`∑{e}[A072697(n+1), #]`
-/

namespace A072699.P9031974156586421973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072697 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A072699.P9031974156586421973

noncomputable section

/-- A072699: Number of prime factors of A072697(n).

Offset 1, canonical program `A072699.P9031974156586421973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072699 (n : ℕ) : ℤ :=
  (A072699.P9031974156586421973.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072901.P7101582238389632081

`∩[A000469(n+1), A042964(n+1)]`
-/

namespace A072901.P7101582238389632081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072901.P7101582238389632081

noncomputable section

/-- A072901: Composite numbers n such that the discriminant of the quadratic field Q(sqrt(n)) equals 4n.

Offset 1, canonical program `A072901.P7101582238389632081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6974 terms. -/
def A072901 (n : ℕ) : ℤ :=
  (A072901.P7101582238389632081.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6974 terms. -/
def A072901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072978.P7446069945173957888

`filter[A123666(n+1), A356170(#)]`
-/

namespace A072978.P7446069945173957888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356170 (f1 j).toNat = 1) n)

end

end A072978.P7446069945173957888

noncomputable section

/-- A072978: Numbers of the form m * 2^bigomega(m), where m>1 is odd and bigomega(m) = A001222(m), the number of prime factors of m.

Offset 1, canonical program `A072978.P7446069945173957888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7312 terms. -/
def A072978 (n : ℕ) : ℤ :=
  A072978.P7446069945173957888.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7312 terms. -/
def A072978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072989.P6622915283749842125

`lt[A009195(n+1), A072994(n+1)]+1`
-/

namespace A072989.P6622915283749842125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A072989.P6622915283749842125

noncomputable section

/-- A072989: Numbers m>0 such that the number of solutions to x^m==1 (mod m), 1<=x<=m, is not equal to gcd(m, phi(m)).

Offset 1, canonical program `A072989.P6622915283749842125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4081 terms. -/
def A072989 (n : ℕ) : ℤ :=
  (A072989.P6622915283749842125.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4081 terms. -/
def A072989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073168.P7500810570419237010

`A007821(n+2)-A022449(n+2)`
-/

namespace A073168.P7500810570419237010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 2) - A022449 (n + 2)

end

end A073168.P7500810570419237010

noncomputable section

/-- A073168: a(n) = A007821(n) - A022449(n).

Offset 1, canonical program `A073168.P7500810570419237010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A073168 (n : ℕ) : ℤ :=
  A073168.P7500810570419237010.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A073168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073251.P16935436493994467128

`∩[A121495(n+1)-1, A121495(n+1)]`
-/

namespace A073251.P16935436493994467128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121495 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073251.P16935436493994467128

noncomputable section

/-- A073251: Numbers k such that k, k+1 and k+2 are nonprime and squarefree.

Offset 1, canonical program `A073251.P16935436493994467128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A073251 (n : ℕ) : ℤ :=
  (A073251.P16935436493994467128.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A073251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073426.P5918157491881724604

`A004737(A072668(n+1)+n²)`
-/

namespace A073426.P5918157491881724604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (A072668 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A073426.P5918157491881724604

noncomputable section

/-- A073426: Number of primes between n-th prime and n-th composite or number of primes that are >=Min[prime(n),c(n)] and are < Max[prime(n),c(n)].

Offset 1, canonical program `A073426.P5918157491881724604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A073426 (n : ℕ) : ℤ :=
  A073426.P5918157491881724604.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A073426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073433.P3593679991118794542

`A071259(A073432(n+1))`
-/

namespace A073433.P3593679991118794542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071259 (A073432 (n + 1)).toNat

end

end A073433.P3593679991118794542

noncomputable section

/-- A073433: Value of [p(n)+c(n)]/2 when it is an integer; p(n) is n-th prime, c(n) is n-th composite.

Offset 1, canonical program `A073433.P3593679991118794542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4315 terms. -/
def A073433 (n : ℕ) : ℤ :=
  A073433.P3593679991118794542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4315 terms. -/
def A073433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073719.P6846242541982887763

`floor(A033844(n)/A065856(n))`
-/

namespace A073719.P6846242541982887763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033844 n : ℚ) / (A065856 n : ℚ)⌋

end

end A073719.P6846242541982887763

noncomputable section

/-- A073719: a(n) = floor(prime(2^n)/composite(2^n)).

Offset 0, canonical program `A073719.P6846242541982887763`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073719 (n : ℕ) : ℤ :=
  A073719.P6846242541982887763.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073719.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073811.P16080894711694834372

`A000005(A009195(n+1))`
-/

namespace A073811.P16080894711694834372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A009195 (n + 1)).toNat

end

end A073811.P16080894711694834372

noncomputable section

/-- A073811: Number of common divisors of n and phi(n).

Offset 1, canonical program `A073811.P16080894711694834372`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073811 (n : ℕ) : ℤ :=
  A073811.P16080894711694834372.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073811.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073839.P2498259996426853723

`A101203(A163300(n+1))-A101203(n)`
-/

namespace A073839.P2498259996426853723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 (A163300 (n + 1)).toNat - A101203 n

end

end A073839.P2498259996426853723

noncomputable section

/-- A073839: Sum of the composite numbers between n and 2n (both inclusive).

Offset 1, canonical program `A073839.P2498259996426853723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A073839 (n : ℕ) : ℤ :=
  A073839.P2498259996426853723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A073839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073841.P7314902352590072057

`A025543(A065896(n+1))`
-/

namespace A073841.P7314902352590072057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025543 (A065896 (n + 1)).toNat

end

end A073841.P7314902352590072057

noncomputable section

/-- A073841: LCM of the composite numbers between n and 2n (both inclusive).

Offset 1, canonical program `A073841.P7314902352590072057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. -/
def A073841 (n : ℕ) : ℤ :=
  A073841.P7314902352590072057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. -/
def A073841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074384.P15572785342951822992

`(eq[3, A000005(A248909(n+1))]+1)²`
-/

namespace A074384.P15572785342951822992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A248909 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A074384.P15572785342951822992

noncomputable section

/-- A074384: Solutions to mod(sigma(x), 6) = 5.

Offset 1, canonical program `A074384.P15572785342951822992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A074384 (n : ℕ) : ℤ :=
  (A074384.P15572785342951822992.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A074384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074397.P9951868034758738243

`A000720(A067792(n+1))-Δ[A002815(n)]`
-/

namespace A074397.P9951868034758738243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A067792 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A074397.P9951868034758738243

noncomputable section

/-- A074397: Number of primes between sigma(n) and n exclusive.

Offset 1, canonical program `A074397.P9951868034758738243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074397 (n : ℕ) : ℤ :=
  A074397.P9951868034758738243.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074495.P8235273495252244141

`A151800(A000203(n+1))`
-/

namespace A074495.P8235273495252244141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000203 (n + 1)).toNat

end

end A074495.P8235273495252244141

noncomputable section

/-- A074495: a(n) = the first prime > sigma(n).

Offset 1, canonical program `A074495.P8235273495252244141`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074495 (n : ℕ) : ℤ :=
  A074495.P8235273495252244141.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074495.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074594.P12974540694644133885

`A001221(A024619(n+1))`
-/

namespace A074594.P12974540694644133885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A024619 (n + 1)).toNat

end

end A074594.P12974540694644133885

noncomputable section

/-- A074594: Number of distinct prime factors of numbers that are not prime powers.

Offset 1, canonical program `A074594.P12974540694644133885`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024619, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074594 (n : ℕ) : ℤ :=
  A074594.P12974540694644133885.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024619, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074594.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074595.P16093768430276289458

`A001222(A024619(n+1))`
-/

namespace A074595.P16093768430276289458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A024619 (n + 1)).toNat

end

end A074595.P16093768430276289458

noncomputable section

/-- A074595: Number of prime factors of numbers that are not prime powers (with multiplicity).

Offset 1, canonical program `A074595.P16093768430276289458`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024619, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074595 (n : ℕ) : ℤ :=
  A074595.P16093768430276289458.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024619, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074595.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074757.P1339424889027573742

`eq[0, A051951(n+1)]+2`
-/

namespace A074757.P1339424889027573742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051951 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A074757.P1339424889027573742

noncomputable section

/-- A074757: Numbers n such that tau(n) = (tau(n+1)+tau(n-1))/2.

Offset 1, canonical program `A074757.P1339424889027573742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 428 terms. -/
def A074757 (n : ℕ) : ℤ :=
  (A074757.P1339424889027573742.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 428 terms. -/
def A074757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074822.P17874906260609589235

`p?[A030431(n+1)-4]`
-/

namespace A074822.P17874906260609589235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074822.P17874906260609589235

noncomputable section

/-- A074822: Primes p such that p + 4 is prime and p == 9 (mod 10).

Offset 1, canonical program `A074822.P17874906260609589235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2702 terms. -/
def A074822 (n : ℕ) : ℤ :=
  A074822.P17874906260609589235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2702 terms. -/
def A074822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074922.P6112303066442032603

`n*A037953(comp[2*(n+1)])`
-/

namespace A074922.P6112303066442032603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A037953 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A074922.P6112303066442032603

noncomputable section

/-- A074922: Number of ways of arranging n chords on a circle (handshakes between 2n people across a table) with exactly 2 simple intersections.

Offset 0, canonical program `A074922.P6112303066442032603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A074922 (n : ℕ) : ℤ :=
  A074922.P6112303066442032603.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A074922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074997.P11484418625540137745

`∩[A067888(n+1), A280382(n+1)]`
-/

namespace A074997.P11484418625540137745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074997.P11484418625540137745

noncomputable section

/-- A074997: Numbers which are sandwiched between two numbers having the same unordered canonical form.

Offset 1, canonical program `A074997.P11484418625540137745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5993 terms. -/
def A074997 (n : ℕ) : ℤ :=
  (A074997.P11484418625540137745.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5993 terms. -/
def A074997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075003.P17913588332677353199

`ceil(A111708(n)/2+n)`
-/

namespace A075003.P17913588332677353199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A111708 n : ℚ) / 2 + (n : ℚ)⌉

end

end A075003.P17913588332677353199

noncomputable section

/-- A075003: Floor[ concatenation of n+1 and n divided by 2 ].

Offset 0, canonical program `A075003.P17913588332677353199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075003 (n : ℕ) : ℤ :=
  A075003.P17913588332677353199.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075283.P12820807251186463982

`∩[A063080(n+1), A072571(n+1)]`
-/

namespace A075283.P12820807251186463982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075283.P12820807251186463982

noncomputable section

/-- A075283: Interprimes which are of the form s*prime, s=8.

Offset 1, canonical program `A075283.P12820807251186463982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. -/
def A075283 (n : ℕ) : ℤ :=
  (A075283.P12820807251186463982.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. -/
def A075283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075291.P15903210363753547292

`∩[2*A063080(n+1), A072571(n+1)]`
-/

namespace A075291.P15903210363753547292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075291.P15903210363753547292

noncomputable section

/-- A075291: Interprimes which are of the form s*prime, s=16.

Offset 1, canonical program `A075291.P15903210363753547292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. -/
def A075291 (n : ℕ) : ℤ :=
  (A075291.P15903210363753547292.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. -/
def A075291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075559.P16905746750259773074

`lcm(n+1, A020338(n+1)-A127421(n+1))+n+1`
-/

namespace A075559.P16905746750259773074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A020338 (n + 1) - A127421 (n + 1)) + (n + 1)

end

end A075559.P16905746750259773074

noncomputable section

/-- A075559: Smallest multiple of n not equal to n ending in (digits of) n.

Offset 1, canonical program `A075559.P16905746750259773074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075559 (n : ℕ) : ℤ :=
  (A075559.P16905746750259773074.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075694.P11278241029682646582

`2*A151800(a(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A075694.P11278241029682646582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A151800 (a (n - 1)).toNat - a (n - 1)

end

end A075694.P11278241029682646582

noncomputable section

/-- A075694: a(1)=1, then "jump over next prime": a(n) = 2 nextprime(a(n-1))-a(n-1).

Offset 1, canonical program `A075694.P11278241029682646582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5266 terms. -/
def A075694 (n : ℕ) : ℤ :=
  A075694.P11278241029682646582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5266 terms. -/
def A075694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075695.P3023950291633561010

`2*A151800(A151800(a(n-1)))-a(n-1)` with `a(0)=1`
-/

namespace A075695.P3023950291633561010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A151800 (A151800 (a (n - 1)).toNat).toNat - a (n - 1)

end

end A075695.P3023950291633561010

noncomputable section

/-- A075695: a(1)=1, then "jump over two primes": a(n) = 2*nextprime(nextprime(a(n-1))) - a(n-1).

Offset 1, canonical program `A075695.P3023950291633561010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2546 terms. -/
def A075695 (n : ℕ) : ℤ :=
  A075695.P3023950291633561010.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2546 terms. -/
def A075695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075707.P9445237608610281782

`∩[A065966(n+1), A075704(n)]`
-/

namespace A075707.P9445237608610281782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075704 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075707.P9445237608610281782

noncomputable section

/-- A075707: Safe primes (A005385) (p and (p-1)/2 are primes) such that 12*p+1 is also prime.

Offset 1, canonical program `A075707.P9445237608610281782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 536 terms. -/
def A075707 (n : ℕ) : ℤ :=
  (A075707.P9445237608610281782.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 536 terms. -/
def A075707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075794.P2063623705962702064

`A151800(∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]+1)`
-/

namespace A075794.P2063623705962702064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A075794.P2063623705962702064

noncomputable section

/-- A075794: a(n) = the least positive integer k such that phi(k) > phi(1) + ... + phi(n).

Offset 1, canonical program `A075794.P2063623705962702064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 572 terms. -/
def A075794 (n : ℕ) : ℤ :=
  A075794.P2063623705962702064.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 572 terms. -/
def A075794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076179.P2951851553065995208

`A067747(A074147(n+1))`
-/

namespace A076179.P2951851553065995208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A074147 (n + 1)).toNat

end

end A076179.P2951851553065995208

noncomputable section

/-- A076179: 2n-1 primes followed by 2n composite numbers.

Offset 1, canonical program `A076179.P2951851553065995208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9970 terms. -/
def A076179 (n : ℕ) : ℤ :=
  A076179.P2951851553065995208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9970 terms. -/
def A076179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076236.P15465252075086350596

`A050435(n+1)%A002808(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A076236.P15465252075086350596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050435 (n + 1)) (A002808 (n + 1))

end

end A076236.P15465252075086350596

noncomputable section

/-- A076236: a(n) = A050435(n) mod A002808(n).

Offset 1, canonical program `A076236.P15465252075086350596`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A050435(n+1)%A002808(n+1)` (program `A076236.P15465252075086350596`, by `A076236.P15465252075086350596.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A076236 (n : ℕ) : ℤ :=
  A076236.P15465252075086350596.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A050435(n+1)%A002808(n+1)` (program `A076236.P15465252075086350596`, by `A076236.P15465252075086350596.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A076236.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A076237.P11217215264667886405

`A050435(n+1)%(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A076237.P11217215264667886405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050435 (n + 1)) (n + 1 : ℤ)

end

end A076237.P11217215264667886405

noncomputable section

/-- A076237: a(n) = A050435(n) mod n.

Offset 1, canonical program `A076237.P11217215264667886405`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A050435(n+1)%(n+1)` (program `A076237.P11217215264667886405`, by `A076237.P11217215264667886405.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A076237 (n : ℕ) : ℤ :=
  A076237.P11217215264667886405.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A050435(n+1)%(n+1)` (program `A076237.P11217215264667886405`, by `A076237.P11217215264667886405.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A076237.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A076333.P3429154276433821462

`A007947(A013929(n+1))`
-/

namespace A076333.P3429154276433821462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A013929 (n + 1)).toNat

end

end A076333.P3429154276433821462

noncomputable section

/-- A076333: Squarefree kernels of nonsquarefree numbers.

Offset 1, canonical program `A076333.P3429154276433821462`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076333 (n : ℕ) : ℤ :=
  A076333.P3429154276433821462.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076333.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076361.P78704012862514364

`eq[0, A076360(n+1)]+1`
-/

namespace A076361.P78704012862514364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076360 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076361.P78704012862514364

noncomputable section

/-- A076361: Numbers k such that d(sigma(k)) = sigma(d(k)).

Offset 1, canonical program `A076361.P78704012862514364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A076361 (n : ℕ) : ℤ :=
  (A076361.P78704012862514364.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A076361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076407.P16447474876734789034

`∑[(n+1)*A075802(n+1)]`
-/

namespace A076407.P16447474876734789034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A075802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076407.P16447474876734789034

noncomputable section

/-- A076407: Sum of perfect powers <= n.

Offset 1, canonical program `A076407.P16447474876734789034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076407 (n : ℕ) : ℤ :=
  A076407.P16447474876734789034.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076471.P3211783425861885313

`∑[char[A076273(n+2)]]`
-/

namespace A076471.P3211783425861885313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076471.P3211783425861885313

noncomputable section

/-- A076471: Number of pairs (p,q) of successive primes with p+q<=n.

Offset 1, canonical program `A076471.P3211783425861885313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076471 (n : ℕ) : ℤ :=
  (A076471.P3211783425861885313.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076873.P18423737301945540033

`A151800(∑[p?[2*n+1]]+1-p?[2*n+1])`
-/

namespace A076873.P18423737301945540033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j + 1 - f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n))

end

end A076873.P18423737301945540033

noncomputable section

/-- A076873: Smallest prime not less than sum of first n primes.

Offset 1, canonical program `A076873.P18423737301945540033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A076873 (n : ℕ) : ℤ :=
  A076873.P18423737301945540033.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A076873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077448.P14987210060085299177

`A030229(n+1)²`
-/

namespace A077448.P14987210060085299177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030229 (n + 1) ^ 2

end

end A077448.P14987210060085299177

noncomputable section

/-- A077448: Numbers k such that Sum_{d|k} mu(d)*mu(k/d)^2 = +1.

Offset 1, canonical program `A077448.P14987210060085299177`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077448 (n : ℕ) : ℤ :=
  A077448.P14987210060085299177.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077448.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077481.P7431961850676343439

`A077480(n+1)/A077479(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077481.P7431961850676343439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077480 (n + 1) : ℚ) / (A077479 (n + 1) : ℚ)

end

end A077481.P7431961850676343439

noncomputable section

/-- A077481: Quotient A077480(n) / A077479(n).

Offset 1, canonical program `A077481.P7431961850676343439`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077479, A077480, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077481 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A077481.P7431961850676343439.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077479, A077480, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077481.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078147.P6737435720449306481

`A013929(n+2)-A013929(n+1)`
-/

namespace A078147.P6737435720449306481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 2) - A013929 (n + 1)

end

end A078147.P6737435720449306481

noncomputable section

/-- A078147: First differences of sequence of nonsquarefree numbers, A013929.

Offset 1, canonical program `A078147.P6737435720449306481`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078147 (n : ℕ) : ℤ :=
  A078147.P6737435720449306481.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078147.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078153.P11915035993394285373

`A051201(n+1)-A000203(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078153.P11915035993394285373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (n + 1) - A000203 (n + 1)

end

end A078153.P11915035993394285373

noncomputable section

/-- A078153: a(n) = A051201(n) - A000203(n).

Offset 1, canonical program `A078153.P11915035993394285373`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078153 (n : ℕ) : ℤ :=
  A078153.P11915035993394285373.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078153.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078161.P15379382876916595624

`A051201(2^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078161.P15379382876916595624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (2 ^ n)

end

end A078161.P15379382876916595624

noncomputable section

/-- A078161: a(n) = A051201(2^n).

Offset 0, canonical program `A078161.P15379382876916595624`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078161 (n : ℕ) : ℤ :=
  A078161.P15379382876916595624.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078161.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078162.P2737128330194667250

`A051201(n!)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078162.P2737128330194667250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (Nat.factorial n)

end

end A078162.P2737128330194667250

noncomputable section

/-- A078162: a(n) = A051201(n!).

Offset 0, canonical program `A078162.P2737128330194667250`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078162 (n : ℕ) : ℤ :=
  A078162.P2737128330194667250.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078162.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078163.P10734314273824272191

`A051201((n+1)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078163.P10734314273824272191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 ((n + 1) ^ 2)

end

end A078163.P10734314273824272191

noncomputable section

/-- A078163: a(n) = A051201(n^2).

Offset 1, canonical program `A078163.P10734314273824272191`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078163 (n : ℕ) : ℤ :=
  A078163.P10734314273824272191.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078163.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078172.P693633647040685283

`A051201(A000040(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078172.P693633647040685283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (A000040 (n + 1)).toNat

end

end A078172.P693633647040685283

noncomputable section

/-- A078172: a(n) = A051201(A000040(n)).

Offset 1, canonical program `A078172.P693633647040685283`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078172 (n : ℕ) : ℤ :=
  A078172.P693633647040685283.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078172.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078428.P675862069735494792

`∑[A035187(n+1)]`
-/

namespace A078428.P675862069735494792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078428.P675862069735494792

noncomputable section

/-- A078428: Partial sums of A035187.

Offset 0, canonical program `A078428.P675862069735494792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078428 (n : ℕ) : ℤ :=
  A078428.P675862069735494792.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079421.P9358731664964090965

`A078510(n)%2`
-/

namespace A079421.P9358731664964090965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078510 n) 2

end

end A079421.P9358731664964090965

noncomputable section

/-- A079421: Spiro-Fibonacci differences, a(n) = difference of two previous terms that are nearest when terms arranged in a spiral.

Offset 0, canonical program `A079421.P9358731664964090965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079421 (n : ℕ) : ℤ :=
  A079421.P9358731664964090965.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079477.P16249418504405446302

`A151800(A036689(n+1))`
-/

namespace A079477.P16249418504405446302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A036689 (n + 1)).toNat

end

end A079477.P16249418504405446302

noncomputable section

/-- A079477: First prime after phi(prime(n)^2).

Offset 1, canonical program `A079477.P16249418504405446302`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079477 (n : ℕ) : ℤ :=
  A079477.P16249418504405446302.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079477.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079533.P15741439843851512584

`A079532(A002808(n+1))`
-/

namespace A079533.P15741439843851512584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079532 (A002808 (n + 1)).toNat

end

end A079533.P15741439843851512584

noncomputable section

/-- A079533: Floor(k - sqrt(k)) - phi(k) as k runs through the composite numbers (A002808).

Offset 1, canonical program `A079533.P15741439843851512584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A079533 (n : ℕ) : ℤ :=
  A079533.P15741439843851512584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A079533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079538.P11266938155067841056

`A001157(n+1)-(A127473(n+1)+A035116(n+1))`
-/

namespace A079538.P11266938155067841056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) - (A127473 (n + 1) + A035116 (n + 1))

end

end A079538.P11266938155067841056

noncomputable section

/-- A079538: a(n) = sigma[k](n) - phi(n)^k - d(n)^k for k=2.

Offset 1, canonical program `A079538.P11266938155067841056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079538 (n : ℕ) : ℤ :=
  A079538.P11266938155067841056.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079779.P14774343609716682029

`A151800(A033286(n+1))`
-/

namespace A079779.P14774343609716682029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A033286 (n + 1)).toNat

end

end A079779.P14774343609716682029

noncomputable section

/-- A079779: a(n) = smallest prime > n*prime(n).

Offset 1, canonical program `A079779.P14774343609716682029`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079779 (n : ℕ) : ℤ :=
  A079779.P14774343609716682029.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079779.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079944.P122616085984779513

`A000035(A004526(A030101(n+2)))`
-/

namespace A079944.P122616085984779513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004526 (A030101 (n + 2)).toNat).toNat

end

end A079944.P122616085984779513

noncomputable section

/-- A079944: A run of 2^n 0's followed by a run of 2^n 1's, for n=0, 1, 2, ...

Offset 0, canonical program `A079944.P122616085984779513`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079944 (n : ℕ) : ℤ :=
  A079944.P122616085984779513.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079944.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080650.P7881313728176217598

`eq[A000005(∑{d}[n+1, #]), A062821(n+1)]+1`
-/

namespace A080650.P7881313728176217598
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f2 n), d)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A080650.P7881313728176217598

noncomputable section

/-- A080650: Numbers n such that phi(n) and sigma(n) have the same number of divisors.

Offset 1, canonical program `A080650.P7881313728176217598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A080650 (n : ℕ) : ℤ :=
  (A080650.P7881313728176217598.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A080650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080756.P4272015836434097147

`A013929(n+2)`
-/

namespace A080756.P4272015836434097147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 2)

end

end A080756.P4272015836434097147

noncomputable section

/-- A080756: Numbers k such that there are infinitely many multiples of k that have exactly k divisors.

Offset 1, canonical program `A080756.P4272015836434097147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080756 (n : ℕ) : ℤ :=
  A080756.P4272015836434097147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080818.P16206206201295920908

`A068527(A127773(n+1))+A002260(n+1)`
-/

namespace A080818.P16206206201295920908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A127773 (n + 1)).toNat + A002260 (n + 1)

end

end A080818.P16206206201295920908

noncomputable section

/-- A080818: Triangle read by rows in which the n-th row contains n distinct numbers whose sum is the smallest square.

Offset 1, canonical program `A080818.P16206206201295920908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080818 (n : ℕ) : ℤ :=
  A080818.P16206206201295920908.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081062.P2782983440295120224

`lt[6, A166142(n+1)]+1`
-/

namespace A081062.P2782983440295120224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166142 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A081062.P2782983440295120224

noncomputable section

/-- A081062: Neither 3-smooth numbers nor prime powers.

Offset 1, canonical program `A081062.P2782983440295120224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081062 (n : ℕ) : ℤ :=
  (A081062.P2782983440295120224.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081289.P17307542022439683697

`A081291(A081290(n))`
-/

namespace A081289.P17307542022439683697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081291 (A081290 n).toNat

end

end A081289.P17307542022439683697

noncomputable section

/-- A081289: a(0) = 0, a(n) = A081293(A081288(n)-1).

Offset 0, canonical program `A081289.P17307542022439683697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081289 (n : ℕ) : ℤ :=
  A081289.P17307542022439683697.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081672.P4891467764290445925

`A027306(n)*A036453(n+1)`
-/

namespace A081672.P4891467764290445925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 n * A036453 (n + 1)

end

end A081672.P4891467764290445925

noncomputable section

/-- A081672: Expansion of exp(2x) - exp(0) + BesselI_0(2x).

Offset 0, canonical program `A081672.P4891467764290445925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A081672 (n : ℕ) : ℤ :=
  A081672.P4891467764290445925.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A081672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081769.P1839311465366829947

`∑[3*A092910(n)-4]`
-/

namespace A081769.P1839311465366829947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A092910 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081769.P1839311465366829947

noncomputable section

/-- A081769: a(n)-th term of the continued fraction for 2*Sum_{k>=0} 1/2^(2^k) is 2.

Offset 1, canonical program `A081769.P1839311465366829947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081769 (n : ℕ) : ℤ :=
  A081769.P1839311465366829947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082294.P3187455701052448076

`eq[2, A071325(n+1)]+1`
-/

namespace A082294.P3187455701052448076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A082294.P3187455701052448076

noncomputable section

/-- A082294: Numbers having exactly two square divisors > 1.

Offset 1, canonical program `A082294.P3187455701052448076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A082294 (n : ℕ) : ℤ :=
  (A082294.P3187455701052448076.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A082294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082728.P8463879847482110208

`filter[A078643(n+3), A005614(#)]`
-/

namespace A082728.P8463879847482110208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078643 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005614 (f1 j).toNat = 1) n)

end

end A082728.P8463879847482110208

noncomputable section

/-- A082728: Numbers expressible as a sum of 2 nonzero Fibonacci numbers in exactly 1 way.

Offset 1, canonical program `A082728.P8463879847482110208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A082728 (n : ℕ) : ℤ :=
  A082728.P8463879847482110208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A082728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082851.P6825031164580738321

`∑[(A308188(n+1)-1)*a(n-1)+1]` with `a(0)=1`
-/

namespace A082851.P6825031164580738321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (A308188 (n + 1) - 1) * f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082851.P6825031164580738321

noncomputable section

/-- A082851: Partial sums of A082850.

Offset 1, canonical program `A082851.P6825031164580738321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082851 (n : ℕ) : ℤ :=
  A082851.P6825031164580738321.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082852.P5408554968582082285

`A155587(A072643(n))-1`
-/

namespace A082852.P5408554968582082285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 (A072643 n).toNat - 1

end

end A082852.P5408554968582082285

noncomputable section

/-- A082852: a(0)=0, a(n) = A014137(A072643(n)-1).

Offset 0, canonical program `A082852.P5408554968582082285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082852 (n : ℕ) : ℤ :=
  A082852.P5408554968582082285.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000161.P12733227588245460575

`ceil((A063725(n)+char[(n+1)²]+char[n²])/2)`
-/

namespace A000161.P12733227588245460575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A063725 n + (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ) : ℚ) / 2⌉

end

end A000161.P12733227588245460575

noncomputable section

/-- A000161: Number of partitions of n into 2 squares.

Offset 0, canonical program `A000161.P12733227588245460575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000161 (n : ℕ) : ℤ :=
  A000161.P12733227588245460575.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002035.P10680891556500623091

`eq[1, A295316(n+2)]+2`
-/

namespace A002035.P10680891556500623091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295316 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A002035.P10680891556500623091

noncomputable section

/-- A002035: Numbers that contain primes to odd powers only.

Offset 1, canonical program `A002035.P10680891556500623091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002035 (n : ℕ) : ℤ :=
  (A002035.P10680891556500623091.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003601.P1376783723534109363

`eq[1, A245656(n+1)]+1`
-/

namespace A003601.P1376783723534109363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A003601.P1376783723534109363

noncomputable section

/-- A003601: Numbers j such that the average of the divisors of j is an integer: sigma_0(j) divides sigma_1(j). Alternatively, numbers j such that tau(j) (A000005(j)) divides sigma(j) (A000203(j)).

Offset 1, canonical program `A003601.P1376783723534109363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003601 (n : ℕ) : ℤ :=
  (A003601.P1376783723534109363.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003658.P12929696761515540924

`eq[1, A290098(n+1)]+1`
-/

namespace A003658.P12929696761515540924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290098 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A003658.P12929696761515540924

noncomputable section

/-- A003658: Indices of primitive positive Dirichlet L-series; 1 and the fundamental discriminants of real quadratic fields.

Offset 1, canonical program `A003658.P12929696761515540924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003658 (n : ℕ) : ℤ :=
  (A003658.P12929696761515540924.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004429.P14034330055574467056

`A000194(A001511(n²+1))*A000194(A111707(n))`
-/

namespace A004429.P14034330055574467056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A001511 (n ^ 2 + 1)).toNat * A000194 (A111707 n).toNat

end

end A004429.P14034330055574467056

noncomputable section

/-- A004429: Geometric mean of digits of n (rounded to nearest integer).

Offset 0, canonical program `A004429.P14034330055574467056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A004429 (n : ℕ) : ℤ :=
  A004429.P14034330055574467056.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A004429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005508.P2090669877977170398

`A026008(n+2)-A026021(n)`
-/

namespace A005508.P2090669877977170398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 (n + 2) - A026021 n

end

end A005508.P2090669877977170398

noncomputable section

/-- A005508: Number of unrooted triangulations with reflection symmetry of a disk with one internal node and n+3 nodes on the boundary.

Offset 0, canonical program `A005508.P2090669877977170398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A005508 (n : ℕ) : ℤ :=
  A005508.P2090669877977170398.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A005508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005882.P16544228379664512821

`A033685(3*n+1)`
-/

namespace A005882.P16544228379664512821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033685 (3 * n + 1)

end

end A005882.P16544228379664512821

noncomputable section

/-- A005882: Theta series of planar hexagonal lattice (A2) with respect to deep hole.

Offset 0, canonical program `A005882.P16544228379664512821`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033685, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005882 (n : ℕ) : ℤ :=
  A005882.P16544228379664512821.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033685, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005882.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A006466.P13063757461679902126

`∏{e}[Δ[A076216(A028310(n))]², #]`
-/

namespace A006466.P13063757461679902126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076216 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A006466.P13063757461679902126

noncomputable section

/-- A006466: Continued fraction expansion of C = 2*Sum_{n>=0} 1/2^(2^n).

Offset 0, canonical program `A006466.P13063757461679902126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006466 (n : ℕ) : ℤ :=
  (A006466.P13063757461679902126.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006591.P9768436482632367221

`(n+1)²-A351362(n+1)`
-/

namespace A006591.P9768436482632367221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A351362 (n + 1)

end

end A006591.P9768436482632367221

noncomputable section

/-- A006591: a(n) = Sum_{k=1..n} nearest integer to n/k (if n/k is midway between two numbers take the smaller).

Offset 1, canonical program `A006591.P9768436482632367221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006591 (n : ℕ) : ℤ :=
  A006591.P9768436482632367221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007422.P2892307068334706217

`record[(n+1)*A354927(n+1)]`
-/

namespace A007422.P2892307068334706217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A354927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007422.P2892307068334706217

noncomputable section

/-- A007422: Multiplicatively perfect numbers j: product of divisors of j is j^2.

Offset 1, canonical program `A007422.P2892307068334706217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007422 (n : ℕ) : ℤ :=
  A007422.P2892307068334706217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008508.P16450631041842970422

`A000720(A071904(n+1))-1`
-/

namespace A008508.P16450631041842970422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A071904 (n + 1)).toNat - 1

end

end A008508.P16450631041842970422

noncomputable section

/-- A008508: Number of odd primes less than n-th odd composite number.

Offset 1, canonical program `A008508.P16450631041842970422`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008508 (n : ℕ) : ℤ :=
  A008508.P16450631041842970422.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008508.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008846.P8671149939260561417

`filter[A008784(n+2), A187074(#)]`
-/

namespace A008846.P8671149939260561417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A008846.P8671149939260561417

noncomputable section

/-- A008846: Hypotenuses of primitive Pythagorean triangles.

Offset 1, canonical program `A008846.P8671149939260561417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6594 terms. -/
def A008846 (n : ℕ) : ℤ :=
  A008846.P8671149939260561417.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6594 terms. -/
def A008846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011681.P13883477490797957766

`A011684(A033627(n+1))`
-/

namespace A011681.P13883477490797957766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011684 (A033627 (n + 1)).toNat

end

end A011681.P13883477490797957766

noncomputable section

/-- A011681: A binary m-sequence: expansion of reciprocal of x^7+x^6+x^5+x^3+x^2+x+1.

Offset 0, canonical program `A011681.P13883477490797957766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A011681 (n : ℕ) : ℤ :=
  A011681.P13883477490797957766.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A011681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011708.P12198016498169537590

`A011704(A017053(n+6)+3)`
-/

namespace A011708.P12198016498169537590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011704 (A017053 (n + 6) + 3).toNat

end

end A011708.P12198016498169537590

noncomputable section

/-- A011708: A binary m-sequence: expansion of reciprocal of x^8+x^7+x^6+x^3+x^2+x+1.

Offset 0, canonical program `A011708.P12198016498169537590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1422 terms. -/
def A011708 (n : ℕ) : ℤ :=
  A011708.P12198016498169537590.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1422 terms. -/
def A011708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014414.P8989341581527788122

`A014421(lt[1, A014421(n)])`
-/

namespace A014414.P8989341581527788122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014421 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014414.P8989341581527788122

noncomputable section

/-- A014414: Odd elements in Pascal's triangle that are not 1.

Offset 1, canonical program `A014414.P8989341581527788122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9255 terms. -/
def A014414 (n : ℕ) : ℤ :=
  A014414.P8989341581527788122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9255 terms. -/
def A014414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014567.P6675992213739059239

`eq[1, A325964(n+1)]+1`
-/

namespace A014567.P6675992213739059239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325964 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014567.P6675992213739059239

noncomputable section

/-- A014567: Numbers k such that k and sigma(k) are relatively prime, where sigma(k) = sum of divisors of k (A000203).

Offset 1, canonical program `A014567.P6675992213739059239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014567 (n : ℕ) : ℤ :=
  (A014567.P6675992213739059239.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014688.P4990984272387159238

`A090178(n+2)-1`
-/

namespace A014688.P4990984272387159238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (n + 2) - 1

end

end A014688.P4990984272387159238

noncomputable section

/-- A014688: a(n) = n-th prime + n.

Offset 1, canonical program `A014688.P4990984272387159238`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014688 (n : ℕ) : ℤ :=
  A014688.P4990984272387159238.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014688.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020652.P12873781580618070316

`A002260(A166527(n+1))`
-/

namespace A020652.P12873781580618070316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A166527 (n + 1)).toNat

end

end A020652.P12873781580618070316

noncomputable section

/-- A020652: Numerators in canonical bijection from positive integers to positive rationals.

Offset 1, canonical program `A020652.P12873781580618070316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7007 terms. -/
def A020652 (n : ℕ) : ℤ :=
  A020652.P12873781580618070316.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7007 terms. -/
def A020652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020893.P11290844334682551427

`filter[A008784(n+1), A359377(#)]`
-/

namespace A020893.P11290844334682551427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A020893.P11290844334682551427

noncomputable section

/-- A020893: Squarefree sums of two squares; or squarefree numbers with no prime factors of the form 4k+3.

Offset 1, canonical program `A020893.P11290844334682551427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9316 terms. -/
def A020893 (n : ℕ) : ℤ :=
  A020893.P11290844334682551427.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9316 terms. -/
def A020893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020907.P7636625289105979311

`∑[A283325(n+1)+1]`
-/

namespace A020907.P7636625289105979311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283325 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020907.P7636625289105979311

noncomputable section

/-- A020907: Position of n-th 2 in A020906.

Offset 1, canonical program `A020907.P7636625289105979311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020907 (n : ℕ) : ℤ :=
  A020907.P7636625289105979311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020934.P7643348161234849820

`A099801(A076274(n+2))`
-/

namespace A020934.P7643348161234849820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A076274 (n + 2)).toNat

end

end A020934.P7643348161234849820

noncomputable section

/-- A020934: Greatest k such that (k-th prime) < (4 times n-th prime).

Offset 1, canonical program `A020934.P7643348161234849820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2762 terms. -/
def A020934 (n : ℕ) : ℤ :=
  A020934.P7643348161234849820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2762 terms. -/
def A020934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020936.P1853754602566167102

`A100637(A076274(n+2))`
-/

namespace A020936.P1853754602566167102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 (A076274 (n + 2)).toNat

end

end A020936.P1853754602566167102

noncomputable section

/-- A020936: Greatest k such that (k-th prime) < (6 times n-th prime).

Offset 1, canonical program `A020936.P1853754602566167102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1928 terms. -/
def A020936 (n : ℕ) : ℤ :=
  A020936.P1853754602566167102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1928 terms. -/
def A020936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023584.P17412108272901523238

`A051903(A076274(n+2))`
-/

namespace A023584.P17412108272901523238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A076274 (n + 2)).toNat

end

end A023584.P17412108272901523238

noncomputable section

/-- A023584: Greatest exponent in prime-power factorization of 2*prime(n)-1.

Offset 1, canonical program `A023584.P17412108272901523238`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023584 (n : ℕ) : ℤ :=
  A023584.P17412108272901523238.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023584.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023708.P16351005740160143642

`eq[3, A160380(n)]`
-/

namespace A023708.P16351005740160143642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023708.P16351005740160143642

noncomputable section

/-- A023708: Numbers with exactly 3 0's in their base 4 expansion.

Offset 1, canonical program `A023708.P16351005740160143642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1204 terms. -/
def A023708 (n : ℕ) : ℤ :=
  (A023708.P16351005740160143642.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1204 terms. -/
def A023708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023801.P9421328058165886828

`eq[1, A178788(A084984(n+1))]`
-/

namespace A023801.P9421328058165886828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 (A084984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023801.P9421328058165886828

noncomputable section

/-- A023801: Xenodromes: numbers such that all digits in base 6 are different.

Offset 1, canonical program `A023801.P9421328058165886828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 431 terms. -/
def A023801 (n : ℕ) : ℤ :=
  (A023801.P9421328058165886828.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 431 terms. -/
def A023801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023883.P886848519556204530

`filter[A018252(n+1), A245656(#)]`
-/

namespace A023883.P886848519556204530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A023883.P886848519556204530

noncomputable section

/-- A023883: Nonprimes whose average of divisors is an integer.

Offset 1, canonical program `A023883.P886848519556204530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023883 (n : ℕ) : ℤ :=
  A023883.P886848519556204530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024362.P4327117018867467884

`A157228(2*(n+1))`
-/

namespace A024362.P4327117018867467884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157228 (2 * (n + 1))

end

end A024362.P4327117018867467884

noncomputable section

/-- A024362: Number of primitive Pythagorean triangles with hypotenuse n.

Offset 1, canonical program `A024362.P4327117018867467884`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A157228, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024362 (n : ℕ) : ℤ :=
  A024362.P4327117018867467884.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A157228, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024362.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024608.P9945346834874073053

`eq[0, A181932(n+1)]+1`
-/

namespace A024608.P9945346834874073053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181932 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024608.P9945346834874073053

noncomputable section

/-- A024608: Positions of even numbers in A003136.

Offset 1, canonical program `A024608.P9945346834874073053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2720 terms. -/
def A024608 (n : ℕ) : ℤ :=
  (A024608.P9945346834874073053.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2720 terms. -/
def A024608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024828.P13656246315567213299

`A071111(n+2)+A280193(A007918(n))²`
-/

namespace A024828.P13656246315567213299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071111 (n + 2) + A280193 (A007918 n).toNat ^ 2

end

end A024828.P13656246315567213299

noncomputable section

/-- A024828: a(n) = least m such that if r and s in {h/(1 + h^2): h = 1,2,...,n} satisfy r < s, then r < k/m < s for some integer k.

Offset 2, canonical program `A024828.P13656246315567213299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A024828 (n : ℕ) : ℤ :=
  A024828.P13656246315567213299.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A024828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025284.P7403956482281687192

`eq[1, ceil(A063725(n)/2)]`
-/

namespace A025284.P7403956482281687192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A063725 n : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025284.P7403956482281687192

noncomputable section

/-- A025284: Numbers that are the sum of 2 nonzero squares in exactly 1 way.

Offset 1, canonical program `A025284.P7403956482281687192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1724 terms. -/
def A025284 (n : ℕ) : ℤ :=
  (A025284.P7403956482281687192.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1724 terms. -/
def A025284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025303.P15711616276104886077

`eq[2, A004526(A125061(n))]`
-/

namespace A025303.P15711616276104886077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A125061 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025303.P15711616276104886077

noncomputable section

/-- A025303: Numbers that are the sum of 2 distinct nonzero squares in exactly 2 ways.

Offset 1, canonical program `A025303.P15711616276104886077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 766 terms. -/
def A025303 (n : ℕ) : ℤ :=
  (A025303.P15711616276104886077.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 766 terms. -/
def A025303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026169.P10383142877277565433

`(A057427(n)+1)*A026138(A028310(n))`
-/

namespace A026169.P10383142877277565433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A026138 (A028310 n).toNat

end

end A026169.P10383142877277565433

noncomputable section

/-- A026169: a(n) = s(k), where k is the n-th number k such that s(j)<s(k) for all j<k, where s = A026166.

Offset 1, canonical program `A026169.P10383142877277565433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026169 (n : ℕ) : ℤ :=
  A026169.P10383142877277565433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026224.P5311099254236011223

`A057428(n)+A026228(n+1)`
-/

namespace A026224.P5311099254236011223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A026228 (n + 1)

end

end A026224.P5311099254236011223

noncomputable section

/-- A026224: Numbers n such that t(n) = s(n) + 1, where s = A026136, t = A026142.

Offset 1, canonical program `A026224.P5311099254236011223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026224 (n : ℕ) : ℤ :=
  A026224.P5311099254236011223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026231.P13603207205108125394

`3*A026232(n+1)-1`
-/

namespace A026231.P13603207205108125394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A026232 (n + 1) - 1

end

end A026231.P13603207205108125394

noncomputable section

/-- A026231: Numbers k such that A026166(k) = A026142(k) + 1.

Offset 1, canonical program `A026231.P13603207205108125394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026231 (n : ℕ) : ℤ :=
  A026231.P13603207205108125394.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026269.P3901397121172539667

`record[Δ[A105695(A008612(n))]]`
-/

namespace A026269.P3901397121172539667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 (A008612 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026269.P3901397121172539667

noncomputable section

/-- A026269: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is a nonnegative integer, s(0) = 0 = s(n), s(1) = 1, |s(i) - s(i-1)| <= 1 for i >= 2, |s(2) - s(1)| = 1, |s(3) - s(2)| = 1 if s(2) = 1. Also a(n) = T(n,n) and a(n) = Sum{T(k,k-1)}, k = 1,2,...,n, where T is array in A026268.

Offset 2, canonical program `A026269.P3901397121172539667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A026269 (n : ℕ) : ℤ :=
  A026269.P3901397121172539667.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A026269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027745.P14601779731189882620

`A027385(A004277(n))*A036453(n+1)`
-/

namespace A027745.P14601779731189882620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027385 (A004277 n).toNat * A036453 (n + 1)

end

end A027745.P14601779731189882620

noncomputable section

/-- A027745: Number of primitive polynomials of degree n over GF(9).

Offset 0, canonical program `A027745.P14601779731189882620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A027745 (n : ℕ) : ℤ :=
  A027745.P14601779731189882620.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A027745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029224.P11078861318480278839

`A029357(abs(2-n))+A029357(n)`
-/

namespace A029224.P11078861318480278839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029357 |2 - (n : ℤ)|.toNat + A029357 n

end

end A029224.P11078861318480278839

noncomputable section

/-- A029224: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029224.P11078861318480278839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029224 (n : ℕ) : ℤ :=
  A029224.P11078861318480278839.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029664.P8303718336109731663

`A029662(eq[1, A029662(n)%2])`
-/

namespace A029664.P8303718336109731663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029662 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029662 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029664.P8303718336109731663

noncomputable section

/-- A029664: Odd numbers to the left of the central elements of the (2,1)-Pascal triangle A029653.

Offset 0, canonical program `A029664.P8303718336109731663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1853 terms. -/
def A029664 (n : ℕ) : ℤ :=
  A029664.P8303718336109731663.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1853 terms. -/
def A029664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029667.P12356662964523118376

`A029629(n)-A014463(n+1)`
-/

namespace A029667.P12356662964523118376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029629 n - A014463 (n + 1)

end

end A029667.P12356662964523118376

noncomputable section

/-- A029667: Numbers to the left of the central elements of the (2,1)-Pascal triangle A029653 that are different from 2.

Offset 0, canonical program `A029667.P12356662964523118376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029667 (n : ℕ) : ℤ :=
  A029667.P12356662964523118376.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030013.P3659823557313004055

`∑{d}[n+1, A007427(#)*A030014((n+1)/#)]`
-/

namespace A030013.P3659823557313004055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A030014 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A030013.P3659823557313004055

noncomputable section

/-- A030013: Moebius transform of {1, primes}.

Offset 1, canonical program `A030013.P3659823557313004055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030013 (n : ℕ) : ℤ :=
  A030013.P3659823557313004055.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030636.P8220618962207978145

`filter[A036457(n+1), A123927(#)]`
-/

namespace A030636.P8220618962207978145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A030636.P8220618962207978145

noncomputable section

/-- A030636: Numbers with 18 divisors.

Offset 1, canonical program `A030636.P8220618962207978145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 581 terms. -/
def A030636 (n : ℕ) : ℤ :=
  A030636.P8220618962207978145.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 581 terms. -/
def A030636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030664.P2721385197302219876

`∏{p}[A136548(n+1), #*A007918(n)]`
-/

namespace A030664.P2721385197302219876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℤ) * A007918 n

end

end A030664.P2721385197302219876

noncomputable section

/-- A030664: Product of largest prime <= n and smallest prime >= n.

Offset 0, canonical program `A030664.P2721385197302219876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A030664 (n : ℕ) : ℤ :=
  A030664.P2721385197302219876.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A030664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033015.P17530871968754790428

`filter[A048717(n+1), A152822(#)]`
-/

namespace A033015.P17530871968754790428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A033015.P17530871968754790428

noncomputable section

/-- A033015: Numbers whose base-2 expansion has no run of digits with length < 2.

Offset 1, canonical program `A033015.P17530871968754790428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1596 terms. -/
def A033015 (n : ℕ) : ℤ :=
  A033015.P17530871968754790428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1596 terms. -/
def A033015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033245.P10583328777124407485

`∪[A139655(n+1), A139914(n+1)]`
-/

namespace A033245.P10583328777124407485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033245.P10583328777124407485

noncomputable section

/-- A033245: Primes of form x^2+70*y^2.

Offset 1, canonical program `A033245.P10583328777124407485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033245 (n : ℕ) : ℤ :=
  (A033245.P10583328777124407485.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033634.P7485427623378639722

`∑{d}[n+1, A295316(#)*#]`
-/

namespace A033634.P7485427623378639722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A295316 d * (d : ℤ)

end

end A033634.P7485427623378639722

noncomputable section

/-- A033634: OddPowerSigma(n) = sum of odd power divisors of n.

Offset 1, canonical program `A033634.P7485427623378639722`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033634 (n : ℕ) : ℤ :=
  A033634.P7485427623378639722.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033634.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033859.P9143334773756198897

`eq[2^A001221(n+1), A033831(n+1)]+1`
-/

namespace A033859.P9143334773756198897
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033831 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A033859.P9143334773756198897

noncomputable section

/-- A033859: Numbers k such that A033831(k) = A034444(k) where A034444(k) = number of unitary divisors of k.

Offset 1, canonical program `A033859.P9143334773756198897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 770 terms. -/
def A033859 (n : ℕ) : ℤ :=
  (A033859.P9143334773756198897.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 770 terms. -/
def A033859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034025.P14022890828150912476

`∩[A008784(n+1), A034046(n+1)]`
-/

namespace A034025.P14022890828150912476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034025.P14022890828150912476

noncomputable section

/-- A034025: Both primitively and imprimitively represented by x^2+y^2.

Offset 0, canonical program `A034025.P14022890828150912476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 684 terms. -/
def A034025 (n : ℕ) : ℤ :=
  (A034025.P14022890828150912476.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 684 terms. -/
def A034025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034056.P9846014939436274111

`∩[A174813(n+1), A245383(n+1)]`
-/

namespace A034056.P9846014939436274111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034056.P9846014939436274111

noncomputable section

/-- A034056: Numbers with multiplicative digital root value 9.

Offset 1, canonical program `A034056.P9846014939436274111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A034056 (n : ℕ) : ℤ :=
  (A034056.P9846014939436274111.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A034056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035928.P1929867611185398910

`(n+1)*A062383(n+1)+A036044(n+1)`
-/

namespace A035928.P1929867611185398910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A062383 (n + 1) + A036044 (n + 1)

end

end A035928.P1929867611185398910

noncomputable section

/-- A035928: Numbers n such that BCR(n) = n, where BCR = binary-complement-and-reverse = take one's complement then reverse bit order.

Offset 1, canonical program `A035928.P1929867611185398910`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036044, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035928 (n : ℕ) : ℤ :=
  A035928.P1929867611185398910.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036044, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035928.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A037130.P1803988098589939308

`A014210(2*n)-A014210(n)`
-/

namespace A037130.P1803988098589939308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (2 * n) - A014210 n

end

end A037130.P1803988098589939308

noncomputable section

/-- A037130: Nextprime(4^n)-nextprime(2^n).

Offset 0, canonical program `A037130.P1803988098589939308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A037130 (n : ℕ) : ℤ :=
  A037130.P1803988098589939308.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A037130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037197.P6784349758619348236

`lt[A295306(n+1)², 1]+1`
-/

namespace A037197.P6784349758619348236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295306 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A037197.P6784349758619348236

noncomputable section

/-- A037197: Numbers k such that tau(sigma(k)) = tau(k) where tau(k) is the number of divisors of k and sigma(k) their sum.

Offset 1, canonical program `A037197.P6784349758619348236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A037197 (n : ℕ) : ℤ :=
  (A037197.P6784349758619348236.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A037197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037208.P757796877470365880

`lt[A137735(n), A056813(A151800(n))]`
-/

namespace A037208.P757796877470365880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A151800 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037208.P757796877470365880

noncomputable section

/-- A037208: Numbers k such that q^2 < p, where p=nextprime(k), q=nextprime(square root of k).

Offset 1, canonical program `A037208.P757796877470365880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A037208 (n : ℕ) : ℤ :=
  (A037208.P757796877470365880.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A037208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038615.P850949430042522498

`p?[A376047(n+1)]`
-/

namespace A038615.P850949430042522498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038615.P850949430042522498

noncomputable section

/-- A038615: Primes not containing the digit '7'.

Offset 1, canonical program `A038615.P850949430042522498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1119 terms. -/
def A038615 (n : ℕ) : ℤ :=
  A038615.P850949430042522498.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1119 terms. -/
def A038615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039733.P7472038918648065283

`∑[A217564(n+1)]+1`
-/

namespace A039733.P7472038918648065283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A039733.P7472038918648065283

noncomputable section

/-- A039733: a(n)=k such that prime(k) is the prime q<prime(n) for which (prime(n) mod q) is maximal.

Offset 2, canonical program `A039733.P7472038918648065283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039733 (n : ℕ) : ℤ :=
  A039733.P7472038918648065283.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043336.P7301550884485477738

`eq[4, A160380(n)]`
-/

namespace A043336.P7301550884485477738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043336.P7301550884485477738

noncomputable section

/-- A043336: Numbers having four 0's in base 4.

Offset 1, canonical program `A043336.P7301550884485477738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A043336 (n : ℕ) : ℤ :=
  (A043336.P7301550884485477738.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A043336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045347.P16404716568036589971

`∪[A045351(n+1), A045389(n+1)]`
-/

namespace A045347.P16404716568036589971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045347.P16404716568036589971

noncomputable section

/-- A045347: Primes congruent to {0, 2, 4, 5, 6} mod 7.

Offset 1, canonical program `A045347.P16404716568036589971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045347 (n : ℕ) : ℤ :=
  (A045347.P16404716568036589971.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045353.P9662914916560255161

`∪[A045358(n+1), A045389(n+1)]`
-/

namespace A045353.P9662914916560255161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045353.P9662914916560255161

noncomputable section

/-- A045353: Primes congruent to {0, 1, 2, 5, 6} mod 7.

Offset 1, canonical program `A045353.P9662914916560255161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045353 (n : ℕ) : ℤ :=
  (A045353.P9662914916560255161.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045762.P4093010058980405591

`comp[p?[A072226(n+1)]]`
-/

namespace A045762.P4093010058980405591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072226 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A045762.P4093010058980405591

noncomputable section

/-- A045762: Numbers k such that 2^k - 1 is not a prime.

Offset 1, canonical program `A045762.P4093010058980405591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045762 (n : ℕ) : ℤ :=
  (A045762.P4093010058980405591.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046099.P4464155253018047528

`lt[1, A050361(n+1)]+1`
-/

namespace A046099.P4464155253018047528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046099.P4464155253018047528

noncomputable section

/-- A046099: Numbers that are not cubefree. Numbers divisible by a cube greater than 1. Complement of A004709.

Offset 1, canonical program `A046099.P4464155253018047528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8403 terms. -/
def A046099 (n : ℕ) : ℤ :=
  (A046099.P4464155253018047528.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8403 terms. -/
def A046099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046841.P12442994457345878225

`eq[1, A091258(n+1)]+1`
-/

namespace A046841.P12442994457345878225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091258 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046841.P12442994457345878225

noncomputable section

/-- A046841: Numbers whose sum of divisors divides their sum of cubes of divisors.

Offset 1, canonical program `A046841.P12442994457345878225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046841 (n : ℕ) : ℤ :=
  (A046841.P12442994457345878225.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047074.P16291066266653691884

`ceil((n+1)/2*A089408(n))`
-/

namespace A047074.P16291066266653691884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2 * (A089408 n : ℚ)⌉

end

end A047074.P16291066266653691884

noncomputable section

/-- A047074: a(n) = Sum_{i=0..floor(n/2)} T(i,n-i), array T as in A047072.

Offset 0, canonical program `A047074.P16291066266653691884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A047074 (n : ℕ) : ℤ :=
  A047074.P16291066266653691884.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A047074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047727.P4578526210664008932

`∩[A033950(n+1), A301975(n+1)]`
-/

namespace A047727.P4578526210664008932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047727.P4578526210664008932

noncomputable section

/-- A047727: Average divisor is an integer (A003601) and the number is refactorable (A033950).

Offset 1, canonical program `A047727.P4578526210664008932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 806 terms. -/
def A047727 (n : ℕ) : ℤ :=
  (A047727.P4578526210664008932.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 806 terms. -/
def A047727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048272.P6639145440777643207

`A001227(n+1)-A183063(n+1)`
-/

namespace A048272.P6639145440777643207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A183063 (n + 1)

end

end A048272.P6639145440777643207

noncomputable section

/-- A048272: Number of odd divisors of n minus number of even divisors of n.

Offset 1, canonical program `A048272.P6639145440777643207`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048272 (n : ℕ) : ℤ :=
  A048272.P6639145440777643207.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048272.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049593.P11643952065115088752

`p?[A071904(n+1)-(4%(n+1))²]`
-/

namespace A049593.P11643952065115088752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1) - (((4 % (n + 1)) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049593.P11643952065115088752

noncomputable section

/-- A049593: Primes p for which residue of ((p-1)! + 1) modulo (p + 16) equals 1.

Offset 1, canonical program `A049593.P11643952065115088752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2419 terms. -/
def A049593 (n : ℕ) : ℤ :=
  A049593.P11643952065115088752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2419 terms. -/
def A049593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049642.P13855088796741878616

`eq[0, A245656(n+1)]+1`
-/

namespace A049642.P13855088796741878616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049642.P13855088796741878616

noncomputable section

/-- A049642: Numbers k such that the number of divisors of k does not divide the sum of divisors of k.

Offset 1, canonical program `A049642.P13855088796741878616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3690 terms. -/
def A049642 (n : ℕ) : ℤ :=
  (A049642.P13855088796741878616.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3690 terms. -/
def A049642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049716.P16933746543691876245

`A049711(2*n+3)`
-/

namespace A049716.P16933746543691876245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (2 * n + 3)

end

end A049716.P16933746543691876245

noncomputable section

/-- A049716: a(n) = 2*n + 1 - prevprime(2*n + 1).

Offset 1, canonical program `A049716.P16933746543691876245`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049716 (n : ℕ) : ℤ :=
  A049716.P16933746543691876245.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049716.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049756.P14980323311031342040

`A305117(n²+1)+1`
-/

namespace A049756.P14980323311031342040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 (n ^ 2 + 1) + 1

end

end A049756.P14980323311031342040

noncomputable section

/-- A049756: a(n) = T(n,1), array T as in A049747.

Offset 0, canonical program `A049756.P14980323311031342040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A049756 (n : ℕ) : ℤ :=
  A049756.P14980323311031342040.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A049756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049757.P1655446980647832021

`A305117(n²+4)+1`
-/

namespace A049757.P1655446980647832021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 (n ^ 2 + 4) + 1

end

end A049757.P1655446980647832021

noncomputable section

/-- A049757: a(n) = T(n,2), array T as in A049747.

Offset 0, canonical program `A049757.P1655446980647832021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A049757 (n : ℕ) : ℤ :=
  A049757.P1655446980647832021.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A049757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049758.P9833744827448509849

`A305117(n²+9)+1`
-/

namespace A049758.P9833744827448509849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 (n ^ 2 + 9) + 1

end

end A049758.P9833744827448509849

noncomputable section

/-- A049758: a(n) = T(n,3), array T as in A049747.

Offset 0, canonical program `A049758.P9833744827448509849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A049758 (n : ℕ) : ℤ :=
  A049758.P9833744827448509849.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A049758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050150.P9836629661305837996

`filter[A009087(n+1), A361023(#)]`
-/

namespace A050150.P9836629661305837996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361023 (f1 j).toNat = 1) n)

end

end A050150.P9836629661305837996

noncomputable section

/-- A050150: Odd numbers with prime number of divisors.

Offset 1, canonical program `A050150.P9836629661305837996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9664 terms. -/
def A050150 (n : ℕ) : ℤ :=
  A050150.P9836629661305837996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9664 terms. -/
def A050150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050321.P13414595198554501131

`lt[1, abs(A065359(n))]`
-/

namespace A050321.P13414595198554501131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065359 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A050321.P13414595198554501131

noncomputable section

/-- A050321: k such that A050292(k) is different from A004396(k).

Offset 0, canonical program `A050321.P13414595198554501131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050321 (n : ℕ) : ℤ :=
  (A050321.P13414595198554501131.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050796.P11538834227986178576

`eq[A000038(n), A156297(A333167(n))]`
-/

namespace A050796.P11538834227986178576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156297 (A333167 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050796.P11538834227986178576

noncomputable section

/-- A050796: Numbers n such that n^2 + 1 is expressible as the sum of two nonzero squares in at least one way (the trivial solution n^2 + 1 = n^2 + 1^2 is not counted).

Offset 1, canonical program `A050796.P11538834227986178576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8250 terms. -/
def A050796 (n : ℕ) : ℤ :=
  (A050796.P11538834227986178576.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8250 terms. -/
def A050796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050799.P9551313652604683105

`A050795(n+1)²-1`
-/

namespace A050799.P9551313652604683105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050795 (n + 1) ^ 2 - 1

end

end A050799.P9551313652604683105

noncomputable section

/-- A050799: Values of n^2 - 1 resulting from A050795.

Offset 0, canonical program `A050799.P9551313652604683105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1347 terms. -/
def A050799 (n : ℕ) : ℤ :=
  A050799.P9551313652604683105.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1347 terms. -/
def A050799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051458.P2421049686485935770

`A029631(n)/2`
-/

namespace A051458.P2421049686485935770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029631 n : ℚ) / 2

end

end A051458.P2421049686485935770

noncomputable section

/-- A051458: (Terms in A029631)/2.

Offset 0, canonical program `A051458.P2421049686485935770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051458 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051458.P2421049686485935770.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051471.P4968011604832206761

`A029647(n)/2`
-/

namespace A051471.P4968011604832206761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029647 n : ℚ) / 2

end

end A051471.P4968011604832206761

noncomputable section

/-- A051471: (Terms in A029647)/2.

Offset 0, canonical program `A051471.P4968011604832206761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051471 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051471.P4968011604832206761.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053239.P5244932916170375337

`A053238(A053240(n+1))`
-/

namespace A053239.P5244932916170375337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053238 (A053240 (n + 1)).toNat

end

end A053239.P5244932916170375337

noncomputable section

/-- A053239: First differences between n for which sigma(n) > sigma(n+1), which are not 2.

Offset 1, canonical program `A053239.P5244932916170375337`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053238, A053240, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A053239 (n : ℕ) : ℤ :=
  A053239.P5244932916170375337.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053238, A053240, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A053239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053542.P1380259865153201069

`A065890(A073169(n+1))-n`
-/

namespace A053542.P1380259865153201069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (A073169 (n + 1)).toNat - (n : ℤ)

end

end A053542.P1380259865153201069

noncomputable section

/-- A053542: Distance from n-th composite number (A002808) to next prime.

Offset 1, canonical program `A053542.P1380259865153201069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053542 (n : ℕ) : ℤ :=
  A053542.P1380259865153201069.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053797.P12604746864527782063

`A378619(A072284(n+2)-1)`
-/

namespace A053797.P12604746864527782063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378619 (A072284 (n + 2) - 1).toNat

end

end A053797.P12604746864527782063

noncomputable section

/-- A053797: Lengths of successive gaps between squarefree numbers.

Offset 1, canonical program `A053797.P12604746864527782063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8553 terms. -/
def A053797 (n : ℕ) : ℤ :=
  A053797.P12604746864527782063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8553 terms. -/
def A053797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053806.P2914688566939015278

`A373415(n+1)+1`
-/

namespace A053806.P2914688566939015278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373415 (n + 1) + 1

end

end A053806.P2914688566939015278

noncomputable section

/-- A053806: Numbers where a gap begins in the sequence of squarefree numbers (A005117).

Offset 1, canonical program `A053806.P2914688566939015278`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053806 (n : ℕ) : ℤ :=
  A053806.P2914688566939015278.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053806.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053858.P11786584042857971729

`2*A056913(n+2)`
-/

namespace A053858.P11786584042857971729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056913 (n + 2)

end

end A053858.P11786584042857971729

noncomputable section

/-- A053858: Squarefree even composite numbers with an odd number of prime factors.

Offset 1, canonical program `A053858.P11786584042857971729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A053858 (n : ℕ) : ℤ :=
  A053858.P11786584042857971729.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A053858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054023.P16419217150835548806

`comp[A054022(n+1)-1]+1`
-/

namespace A054023.P16419217150835548806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054022 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A054023.P16419217150835548806

noncomputable section

/-- A054023: Chowla function of n is not divisible by the number of divisors of n.

Offset 1, canonical program `A054023.P16419217150835548806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054023 (n : ℕ) : ℤ :=
  (A054023.P16419217150835548806.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054964.P645230808875844543

`record[A002522(n)%(A333169(n)+A333167(n))]`
-/

namespace A054964.P645230808875844543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002522 n) (A333169 n + A333167 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054964.P645230808875844543

noncomputable section

/-- A054964: Numbers whose divisors have the form m^k + 1, k>1.

Offset 1, canonical program `A054964.P645230808875844543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 843 terms. -/
def A054964 (n : ℕ) : ℤ :=
  A054964.P645230808875844543.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 843 terms. -/
def A054964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055930.P12939233674708047952

`A217564(n)+a(n-1)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A055930.P12939233674708047952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A217564 n + a (n - 1)

end

end A055930.P12939233674708047952

noncomputable section

/-- A055930: Number of distinct prime factors of totient of (n-th prime)!.

Offset 1, canonical program `A055930.P12939233674708047952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A055930 (n : ℕ) : ℤ :=
  A055930.P12939233674708047952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A055930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056458.P16273720211195638125

`2*A056476(n+1)`
-/

namespace A056458.P16273720211195638125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056476 (n + 1)

end

end A056458.P16273720211195638125

noncomputable section

/-- A056458: Number of primitive (aperiodic) palindromes using a maximum of two different symbols.

Offset 1, canonical program `A056458.P16273720211195638125`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056476, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056458 (n : ℕ) : ℤ :=
  A056458.P16273720211195638125.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056476, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056458.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056812.P14896031248377744571

`A078342(n+1)-A066247(n+1)`
-/

namespace A056812.P14896031248377744571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078342 (n + 1) - A066247 (n + 1)

end

end A056812.P14896031248377744571

noncomputable section

/-- A056812: Number of unitary prime factors of lcm[1..n], i.e., primes in LCM with exponent 1.

Offset 1, canonical program `A056812.P14896031248377744571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056812 (n : ℕ) : ℤ :=
  A056812.P14896031248377744571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057525.P7715182706857150833

`A277327(A180200(Δ[A002378(n)]))`
-/

namespace A057525.P7715182706857150833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277327 (A180200 (f1 (n + 1) - f1 n).toNat).toNat

end

end A057525.P7715182706857150833

noncomputable section

/-- A057525: Number of applications of f to reduce n to 1, where f(k) is the integer among k/2,(k+1)/4, (k+3)/4.

Offset 2, canonical program `A057525.P7715182706857150833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A057525 (n : ℕ) : ℤ :=
  A057525.P7715182706857150833.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A057525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057872.P8502585632871789703

`A215260(A230980(n))`
-/

namespace A057872.P8502585632871789703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215260 (A230980 n).toNat

end

end A057872.P8502585632871789703

noncomputable section

/-- A057872: A version of the Chebyshev function theta(n): a(n) = round(Sum_{primes p <= n } log(p)).

Offset 0, canonical program `A057872.P8502585632871789703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057872 (n : ℕ) : ℤ :=
  A057872.P8502585632871789703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057963.P10501732461278672615

`A104712(n+2)*A126646(A002262(n))`
-/

namespace A057963.P10501732461278672615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104712 (n + 2) * A126646 (A002262 n).toNat

end

end A057963.P10501732461278672615

noncomputable section

/-- A057963: Triangle T(n,k) of number of minimal 2-covers of a labeled n-set that cover k points of that set uniquely (k=2,..,n).

Offset 2, canonical program `A057963.P10501732461278672615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057963 (n : ℕ) : ℤ :=
  A057963.P10501732461278672615.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059456.P4556274000742435863

`∪[A082539(n+1), A176902(n+1)]`
-/

namespace A059456.P4556274000742435863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059456.P4556274000742435863

noncomputable section

/-- A059456: Unsafe primes: primes not in A005385.

Offset 1, canonical program `A059456.P4556274000742435863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059456 (n : ℕ) : ℤ :=
  (A059456.P4556274000742435863.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060475.P9234065763977217028

`A247490(comp[∑[n]])`
-/

namespace A060475.P9234065763977217028
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247490 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A060475.P9234065763977217028

noncomputable section

/-- A060475: Triangular array formed from successive differences of factorial numbers, then with factorials removed.

Offset 0, canonical program `A060475.P9234065763977217028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. -/
def A060475 (n : ℕ) : ℤ :=
  A060475.P9234065763977217028.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. -/
def A060475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060872.P4140804828554997717

`(n+1)*A038548(n+1)`
-/

namespace A060872.P4140804828554997717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A038548 (n + 1)

end

end A060872.P4140804828554997717

noncomputable section

/-- A060872: Sum of d*d' over all unordered pairs (d,d') with d*d' = n.

Offset 1, canonical program `A060872.P4140804828554997717`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060872 (n : ℕ) : ℤ :=
  A060872.P4140804828554997717.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060872.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061043.P8978401913737900306

`A172370(A055998(n+2))%(3*n+1)²`
-/

namespace A061043.P8978401913737900306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172370 (A055998 (n + 2)).toNat) ((3 * n + 1) ^ 2 : ℤ)

end

end A061043.P8978401913737900306

noncomputable section

/-- A061043: Numerator of 1/25 - 1/n^2.

Offset 5, canonical program `A061043.P8978401913737900306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A061043 (n : ℕ) : ℤ :=
  A061043.P8978401913737900306.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A061043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062301.P7583159109600131455

`A010051(A075526(n))`
-/

namespace A062301.P7583159109600131455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A075526 n).toNat

end

end A062301.P7583159109600131455

noncomputable section

/-- A062301: Number of ways writing n-th prime as a sum of two primes.

Offset 1, canonical program `A062301.P7583159109600131455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062301 (n : ℕ) : ℤ :=
  A062301.P7583159109600131455.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063765.P12169801839756139973

`2*A014210(n+1)`
-/

namespace A063765.P12169801839756139973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014210 (n + 1)

end

end A063765.P12169801839756139973

noncomputable section

/-- A063765: Least integer m whose largest prime factor > m^(n/(n+1)).

Offset 1, canonical program `A063765.P12169801839756139973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014210, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063765 (n : ℕ) : ℤ :=
  A063765.P12169801839756139973.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014210, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063765.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063768.P1427965183729236015

`A014210(3*n)`
-/

namespace A063768.P1427965183729236015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (3 * n)

end

end A063768.P1427965183729236015

noncomputable section

/-- A063768: Smallest prime >= 8^n.

Offset 0, canonical program `A063768.P1427965183729236015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A063768 (n : ℕ) : ℤ :=
  A063768.P1427965183729236015.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A063768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065079.P18023857822470704852

`p?[(2*n+1)*A043545(A065359(n)²)]`
-/

namespace A065079.P18023857822470704852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A043545 (A065359 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065079.P18023857822470704852

noncomputable section

/-- A065079: Primes > 3 for which the alternating bit sum (A065359) is not equal to 1 or 2.

Offset 1, canonical program `A065079.P18023857822470704852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5432 terms. -/
def A065079 (n : ℕ) : ℤ :=
  A065079.P18023857822470704852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5432 terms. -/
def A065079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065081.P8743477589480820839

`A057427(n)-A065359(A130290(n+1))`
-/

namespace A065081.P8743477589480820839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A065359 (A130290 (n + 1)).toNat

end

end A065081.P8743477589480820839

noncomputable section

/-- A065081: Alternating bit sum (A065359) for n-th prime p: replace 2^k with (-1)^k in binary expansion of p.

Offset 1, canonical program `A065081.P8743477589480820839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065081 (n : ℕ) : ℤ :=
  A065081.P8743477589480820839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065312.P1319422233856677202

`A093515(A068780(n+1)-2+n)`
-/

namespace A065312.P1319422233856677202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (A068780 (n + 1) - 2 + (n : ℤ)).toNat

end

end A065312.P1319422233856677202

noncomputable section

/-- A065312: Primes which occur exactly once in A065308 (prime(n - pi(n))).

Offset 1, canonical program `A065312.P1319422233856677202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8628 terms. -/
def A065312 (n : ℕ) : ℤ :=
  A065312.P1319422233856677202.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8628 terms. -/
def A065312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065683.P16875126102504137122

`∑[A316865(A137589(n+1))]`
-/

namespace A065683.P16875126102504137122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A137589 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065683.P16875126102504137122

noncomputable section

/-- A065683: Number of primes <= prime(n) which begin with a 4.

Offset 1, canonical program `A065683.P16875126102504137122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065683 (n : ℕ) : ℤ :=
  A065683.P16875126102504137122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066047.P375633196085682392

`A175212(n+2)`
-/

namespace A066047.P375633196085682392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175212 (n + 2)

end

end A066047.P375633196085682392

noncomputable section

/-- A066047: Numbers k that divide A001045(k-1).

Offset 1, canonical program `A066047.P375633196085682392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9969 terms. -/
def A066047 (n : ℕ) : ℤ :=
  A066047.P375633196085682392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9969 terms. -/
def A066047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066073.P15506222458200392670

`filter[A248792(n+1), A005171(#)]`
-/

namespace A066073.P15506222458200392670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A066073.P15506222458200392670

noncomputable section

/-- A066073: Composite numbers k such that sigma(k) - 1 is prime.

Offset 1, canonical program `A066073.P15506222458200392670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7086 terms. -/
def A066073 (n : ℕ) : ℤ :=
  A066073.P15506222458200392670.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7086 terms. -/
def A066073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066249.P1311895009433369201

`A067747(xor(1, n)+1)-1`
-/

namespace A066249.P1311895009433369201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (Nat.xor 1 n + 1) - 1

end

end A066249.P1311895009433369201

noncomputable section

/-- A066249: Inverse permutation to A066248.

Offset 1, canonical program `A066249.P1311895009433369201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066249 (n : ℕ) : ℤ :=
  A066249.P1311895009433369201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066251.P7552776329069287313

`A067747(n+1)-1`
-/

namespace A066251.P7552776329069287313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (n + 1) - 1

end

end A066251.P7552776329069287313

noncomputable section

/-- A066251: Inverse permutation to A066250.

Offset 1, canonical program `A066251.P7552776329069287313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066251 (n : ℕ) : ℤ :=
  A066251.P7552776329069287313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067079.P1175467807256603628

`A321243(A037213(n²))`
-/

namespace A067079.P1175467807256603628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321243 (A037213 (n ^ 2)).toNat

end

end A067079.P1175467807256603628

noncomputable section

/-- A067079: Right digitorial function Rd(n) = abcd...*bcd...*cd...*d...*..., for n = abcd... in decimal notation.

Offset 0, canonical program `A067079.P1175467807256603628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A067079 (n : ℕ) : ℤ :=
  A067079.P1175467807256603628.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A067079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067466.P3837231332204403752

`p?[A100367(n+1)+1]`
-/

namespace A067466.P3837231332204403752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067466.P3837231332204403752

noncomputable section

/-- A067466: Primes p such that p-1 has 2 distinct prime factors.

Offset 1, canonical program `A067466.P3837231332204403752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1352 terms. -/
def A067466 (n : ℕ) : ℤ :=
  A067466.P3837231332204403752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1352 terms. -/
def A067466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067889.P13334168951864869108

`A045319(lt[A145337(n)², 1])`
-/

namespace A067889.P13334168951864869108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145337 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A067889.P13334168951864869108

noncomputable section

/-- A067889: Primes sandwiched between two numbers having same number of divisors.

Offset 1, canonical program `A067889.P13334168951864869108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 650 terms. -/
def A067889 (n : ℕ) : ℤ :=
  A067889.P13334168951864869108.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 650 terms. -/
def A067889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068306.P5310264729729129435

`lt[A240471(n+1), A001222(n+1)]+1`
-/

namespace A068306.P5310264729729129435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A068306.P5310264729729129435

noncomputable section

/-- A068306: Numbers n such that n*tau(n) < sigma(n)*bigomega(n) where tau(n)=A000005(n), sigma(n)=A000203(n), and bigomega(n)=A001222(n).

Offset 1, canonical program `A068306.P5310264729729129435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A068306 (n : ℕ) : ℤ :=
  (A068306.P5310264729729129435.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A068306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068577.P762481586230944513

`A020725(lt[A279507(n+1), ∏{e}[n+1, #+1]])`
-/

namespace A068577.P762481586230944513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279507 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A068577.P762481586230944513

noncomputable section

/-- A068577: Numbers k such that tau(k)^2 > phi(k).

Offset 1, canonical program `A068577.P762481586230944513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A068577 (n : ℕ) : ℤ :=
  A068577.P762481586230944513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A068577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069059.P15537564215172939838

`eq[0, A325964(n+1)]+1`
-/

namespace A069059.P15537564215172939838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325964 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069059.P15537564215172939838

noncomputable section

/-- A069059: Numbers k such that k and sigma(k) are not relatively prime.

Offset 1, canonical program `A069059.P15537564215172939838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069059 (n : ℕ) : ℤ :=
  (A069059.P15537564215172939838.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069735.P7037159933635836489

`A000005(n+1)+A183063(n+1)`
-/

namespace A069735.P7037159933635836489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A183063 (n + 1)

end

end A069735.P7037159933635836489

noncomputable section

/-- A069735: Number of regular orientable coverings of the Klein bottle with 2n lists.

Offset 1, canonical program `A069735.P7037159933635836489`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069735 (n : ℕ) : ℤ :=
  A069735.P7037159933635836489.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069735.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070176.P12484260426223726726

`A166687(∑[char[A166687(n+1)]]+1)-(n+1)`
-/

namespace A070176.P12484260426223726726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - (n + 1 : ℤ)

end

end A070176.P12484260426223726726

noncomputable section

/-- A070176: Let s(n) be smallest number >= n which is a sum of two squares (A001481); sequence gives s(n) - n.

Offset 0, canonical program `A070176.P12484260426223726726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070176 (n : ℕ) : ℤ :=
  A070176.P12484260426223726726.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070545.P9962568616879436559

`∑[A325964(n+1)]`
-/

namespace A070545.P9962568616879436559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070545.P9962568616879436559

noncomputable section

/-- A070545: a(n) = Card( k, 0<k<=n such that k is relatively prime to sigma(k)).

Offset 1, canonical program `A070545.P9962568616879436559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070545 (n : ℕ) : ℤ :=
  A070545.P9962568616879436559.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071745.P1552346463266665555

`A071719(n)+A071748(n)-A071722(n)`
-/

namespace A071745.P1552346463266665555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071719 n + (A071748 n - A071722 n)

end

end A071745.P1552346463266665555

noncomputable section

/-- A071745: Expansion of (1+x^4*C)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071745.P1552346463266665555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071745 (n : ℕ) : ℤ :=
  A071745.P1552346463266665555.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072516.P18149148055783031557

`∑[A000196(n)-A293235(n+1)]`
-/

namespace A072516.P18149148055783031557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n - A293235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072516.P18149148055783031557

noncomputable section

/-- A072516: Sum of remainders when n is divided by lesser squares.

Offset 1, canonical program `A072516.P18149148055783031557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072516 (n : ℕ) : ℤ :=
  A072516.P18149148055783031557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072553.P644284163393021583

`A066246(A073255(n+1))`
-/

namespace A072553.P644284163393021583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (A073255 (n + 1)).toNat

end

end A072553.P644284163393021583

noncomputable section

/-- A072553: Sigma of n-th composite number equals a(n)-th composite number if it is also a composite or equals zero if sigma[c] is prime.

Offset 1, canonical program `A072553.P644284163393021583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2674 terms. -/
def A072553 (n : ℕ) : ℤ :=
  A072553.P644284163393021583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2674 terms. -/
def A072553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072670.P17694124448625562099

`A038548(n+1)-1`
-/

namespace A072670.P17694124448625562099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) - 1

end

end A072670.P17694124448625562099

noncomputable section

/-- A072670: Number of ways to write n as i*j + i + j, 0 < i <= j.

Offset 0, canonical program `A072670.P17694124448625562099`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072670 (n : ℕ) : ℤ :=
  A072670.P17694124448625562099.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072670.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073445.P10904794807909655656

`A073783(n+2)-A073783(n+1)`
-/

namespace A073445.P10904794807909655656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073783 (n + 2) - A073783 (n + 1)

end

end A073445.P10904794807909655656

noncomputable section

/-- A073445: Second differences of A002808, the sequence of composites.

Offset 1, canonical program `A073445.P10904794807909655656`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073445 (n : ℕ) : ℤ :=
  A073445.P10904794807909655656.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073445.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073804.P4353422266090088354

`eq[1-4/2, A295306(n+2)]+2`
-/

namespace A073804.P4353422266090088354
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (4 : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295306 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 2

end

end A073804.P4353422266090088354

noncomputable section

/-- A073804: Numbers k such that the number of divisors of k is greater than that of sigma(k).

Offset 1, canonical program `A073804.P4353422266090088354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 885 terms. -/
def A073804 (n : ℕ) : ℤ :=
  (A073804.P4353422266090088354.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 885 terms. -/
def A073804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074775.P4617323649837205606

`lt[0, A182394(n+2)]+1`
-/

namespace A074775.P4617323649837205606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A074775.P4617323649837205606

noncomputable section

/-- A074775: Numbers n such that tau(n) < tau(n+1) where tau(x)=A000005(x).

Offset 1, canonical program `A074775.P4617323649837205606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8895 terms. -/
def A074775 (n : ℕ) : ℤ :=
  (A074775.P4617323649837205606.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8895 terms. -/
def A074775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074802.P3858761796293181444

`∑[A130638(n+1)]`
-/

namespace A074802.P3858761796293181444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074802.P3858761796293181444

noncomputable section

/-- A074802: Number of numbers k <= n such that tau(k) = tau(k+1) where tau(x) = A000005(x) is the number of divisors of x.

Offset 1, canonical program `A074802.P3858761796293181444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074802 (n : ℕ) : ℤ :=
  A074802.P3858761796293181444.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075928.P14773802074895312158

`A001969(A075926(n)+1)`
-/

namespace A075928.P14773802074895312158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (A075926 n + 1).toNat

end

end A075928.P14773802074895312158

noncomputable section

/-- A075928: List of codewords in binary lexicode with Hamming distance 4 written as decimal numbers.

Offset 0, canonical program `A075928.P14773802074895312158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 626 terms. -/
def A075928 (n : ℕ) : ℤ :=
  A075928.P14773802074895312158.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 626 terms. -/
def A075928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076078.P3842631660775757890

`2*A069626(n+1)-A000007(n)`
-/

namespace A076078.P3842631660775757890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069626 (n + 1) - A000007 n

end

end A076078.P3842631660775757890

noncomputable section

/-- A076078: a(n) is the number of nonempty sets of distinct positive integers that have a least common multiple of n.

Offset 1, canonical program `A076078.P3842631660775757890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076078 (n : ℕ) : ℤ :=
  A076078.P3842631660775757890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077171.P15624260767854281939

`A136548(∑[C(2, a(n-1))+n]+1)` with `a(0)=1`
-/

namespace A077171.P15624260767854281939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.choose 2 (f1 (n - 1)) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A077171.P15624260767854281939

noncomputable section

/-- A077171: a(n) = k where k! is the product of the terms of the n-th row of A077168.

Offset 0, canonical program `A077171.P15624260767854281939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A077171 (n : ℕ) : ℤ :=
  A077171.P15624260767854281939.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A077171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077598.P2942604265624404829

`∑[A143356(n+1)-A131089(n+1)]`
-/

namespace A077598.P2942604265624404829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143356 (n + 1) - A131089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077598.P2942604265624404829

noncomputable section

/-- A077598: Coefficient of x^2 in the n-th Moebius polynomial (A074586), M(n,x), which satisfies M(n,-1)=mu(n) the Moebius function of n.

Offset 1, canonical program `A077598.P2942604265624404829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077598 (n : ℕ) : ℤ :=
  A077598.P2942604265624404829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079667.P14511190976572101937

`A357259(n+1)-A038548(n+1)`
-/

namespace A079667.P14511190976572101937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357259 (n + 1) - A038548 (n + 1)

end

end A079667.P14511190976572101937

noncomputable section

/-- A079667: a(n) = (1/2) * Sum_{d divides n} abs(n/d-d).

Offset 1, canonical program `A079667.P14511190976572101937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079667 (n : ℕ) : ℤ :=
  A079667.P14511190976572101937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080310.P2147886227810751610

`A080303(2*n)/2`
-/

namespace A080310.P2147886227810751610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080303 (2 * n) : ℚ) / 2

end

end A080310.P2147886227810751610

noncomputable section

/-- A080310: a(0) = 2 and, for n >= 1, rewrite 0->100 in the binary expansion of n and append 10 to the right.

Offset 0, canonical program `A080310.P2147886227810751610`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080303, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080310 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080310.P2147886227810751610.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080303, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080310.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082522.P5892597509266673484

`A050376(n+1)²`
-/

namespace A082522.P5892597509266673484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) ^ 2

end

end A082522.P5892597509266673484

noncomputable section

/-- A082522: Numbers of the form p^(2^k) with p prime and k>0.

Offset 1, canonical program `A082522.P5892597509266673484`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082522 (n : ℕ) : ℤ :=
  A082522.P5892597509266673484.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082522.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008313.P7466062722273303324

`A008311(n)-A008311(n+1)%A008311(n)`
-/

namespace A008313.P7466062722273303324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008311 n - Int.tmod (A008311 (n + 1)) (A008311 n)

end

end A008313.P7466062722273303324

noncomputable section

/-- A008313: Triangle of expansions of powers of x in terms of Chebyshev polynomials U_n(x).

Offset 0, canonical program `A008313.P7466062722273303324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A008313 (n : ℕ) : ℤ :=
  A008313.P7466062722273303324.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A008313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008556.P3156705809874669738

`A034868(n)*A094527(A091018(n))`
-/

namespace A008556.P3156705809874669738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034868 n * A094527 (A091018 n).toNat

end

end A008556.P3156705809874669738

noncomputable section

/-- A008556: Triangle of coefficients of Legendre polynomials 2^n P_n (x).

Offset 0, canonical program `A008556.P3156705809874669738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A008556 (n : ℕ) : ℤ :=
  A008556.P3156705809874669738.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A008556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010067.P2197668765657089128

`lt[char[A053827(n)+n], 1/A055151(n)]`
-/

namespace A010067.P2197668765657089128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A055151 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A010067.P2197668765657089128

noncomputable section

/-- A010067: Base 6 self or Colombian numbers (not of form k + sum of base 6 digits of k).

Offset 1, canonical program `A010067.P2197668765657089128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 783 terms. -/
def A010067 (n : ℕ) : ℤ :=
  (A010067.P2197668765657089128.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 783 terms. -/
def A010067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014411.P10381451059067802495

`A008311(lt[A008311(n+1), A008311(n)])`
-/

namespace A014411.P10381451059067802495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008311 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A014411.P10381451059067802495

noncomputable section

/-- A014411: Triangular array formed from elements to right of middle of rows of Pascal's triangle that are not 1.

Offset 1, canonical program `A014411.P10381451059067802495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9702 terms. -/
def A014411 (n : ℕ) : ℤ :=
  A014411.P10381451059067802495.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9702 terms. -/
def A014411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015450.P9628221473587249471

`A036987(∑[A093882(n)²])`
-/

namespace A015450.P9628221473587249471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093882 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015450.P9628221473587249471

noncomputable section

/-- A015450: Inverse of 1441st cyclotomic polynomial.

Offset 0, canonical program `A015450.P9628221473587249471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A015450 (n : ℕ) : ℤ :=
  A015450.P9628221473587249471.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A015450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028297.P10095592831867531636

`A118800(A091018(n))`
-/

namespace A028297.P10095592831867531636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118800 (A091018 n).toNat

end

end A028297.P10095592831867531636

noncomputable section

/-- A028297: Coefficients of Chebyshev polynomials of the first kind: triangle of coefficients in expansion of cos(n*x) in descending powers of cos(x).

Offset 0, canonical program `A028297.P10095592831867531636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A028297 (n : ℕ) : ℤ :=
  A028297.P10095592831867531636.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A028297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028846.P7450383305862241760

`A261189(A308496(n+1))`
-/

namespace A028846.P7450383305862241760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261189 (A308496 (n + 1)).toNat

end

end A028846.P7450383305862241760

noncomputable section

/-- A028846: Numbers whose product of digits is a power of 2.

Offset 1, canonical program `A028846.P7450383305862241760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 724 terms. -/
def A028846 (n : ℕ) : ℤ :=
  A028846.P7450383305862241760.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 724 terms. -/
def A028846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029611.P2146311653280549813

`A029610(A049068(n+1))`
-/

namespace A029611.P2146311653280549813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029610 (A049068 (n + 1)).toNat

end

end A029611.P2146311653280549813

noncomputable section

/-- A029611: Numbers to the left of the central elements of the (2,3)-Pascal triangle A029600 that are different from 2.

Offset 0, canonical program `A029611.P2146311653280549813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A029611 (n : ℕ) : ℤ :=
  A029611.P2146311653280549813.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A029611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031498.P8103621898576385170

`A007095(A043454(n+1))*A007913(A062503(n+1))`
-/

namespace A031498.P8103621898576385170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043454 (n + 1)).toNat * A007913 (A062503 (n + 1)).toNat

end

end A031498.P8103621898576385170

noncomputable section

/-- A031498: Numbers whose base-10 representation has 2 more 0's than 9's.

Offset 1, canonical program `A031498.P8103621898576385170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. -/
def A031498 (n : ℕ) : ℤ :=
  A031498.P8103621898576385170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. -/
def A031498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033035.P7501407559641855011

`A037477(A033034(n+1))`
-/

namespace A033035.P7501407559641855011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A033034 (n + 1)).toNat

end

end A033035.P7501407559641855011

noncomputable section

/-- A033035: Numbers such that all base 9 digits are odd.

Offset 1, canonical program `A033035.P7501407559641855011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A033035 (n : ℕ) : ℤ :=
  A033035.P7501407559641855011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A033035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034807.P8516672241715785906

`A029635(A091018(n))`
-/

namespace A034807.P8516672241715785906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (A091018 n).toNat

end

end A034807.P8516672241715785906

noncomputable section

/-- A034807: Triangle T(n,k) of coefficients of Lucas (or Cardan) polynomials.

Offset 0, canonical program `A034807.P8516672241715785906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A034807 (n : ℕ) : ℤ :=
  A034807.P8516672241715785906.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A034807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036795.P10115071211355073936

`A062879(n+1)+1-A062877(n)`
-/

namespace A036795.P10115071211355073936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062879 (n + 1) + (1 - A062877 n)

end

end A036795.P10115071211355073936

noncomputable section

/-- A036795: Integers that can be decomposed into sums of different Fibonacci numbers of even argument.

Offset 0, canonical program `A036795.P10115071211355073936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A036795 (n : ℕ) : ℤ :=
  A036795.P10115071211355073936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A036795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037997.P5303989114763957412

`eq[2, A043283(n+1)]+1`
-/

namespace A037997.P5303989114763957412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037997.P5303989114763957412

noncomputable section

/-- A037997: Numbers whose maximal base-9 run length is 2.

Offset 1, canonical program `A037997.P5303989114763957412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037997 (n : ℕ) : ℤ :=
  (A037997.P5303989114763957412.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037998.P10736495446636954267

`eq[3, A043283(A028310(n))]`
-/

namespace A037998.P10736495446636954267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037998.P10736495446636954267

noncomputable section

/-- A037998: Numbers whose maximal base-9 run length is 3.

Offset 1, canonical program `A037998.P10736495446636954267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. -/
def A037998 (n : ℕ) : ℤ :=
  (A037998.P10736495446636954267.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. -/
def A037998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043095.P4901901167020790074

`eq[3, A043283(A028310(n))+2]`
-/

namespace A043095.P4901901167020790074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A028310 n).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043095.P4901901167020790074

noncomputable section

/-- A043095: Numbers with property that no two consecutive base 9 digits are equal.

Offset 1, canonical program `A043095.P4901901167020790074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6571 terms. -/
def A043095 (n : ℕ) : ℤ :=
  (A043095.P4901901167020790074.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6571 terms. -/
def A043095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043281.P4877973788972823573

`A043283(A037475(n+1))`
-/

namespace A043281.P4877973788972823573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A037475 (n + 1)).toNat

end

end A043281.P4877973788972823573

noncomputable section

/-- A043281: Maximal run length in base-7 representation of n.

Offset 1, canonical program `A043281.P4877973788972823573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A043281 (n : ℕ) : ℤ :=
  A043281.P4877973788972823573.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A043281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043282.P4792003988380030781

`A043283(A037477(n+1))`
-/

namespace A043282.P4792003988380030781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A037477 (n + 1)).toNat

end

end A043282.P4792003988380030781

noncomputable section

/-- A043282: Maximal run length in base 8 representation of n.

Offset 1, canonical program `A043282.P4792003988380030781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043282 (n : ℕ) : ℤ :=
  A043282.P4792003988380030781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045328.P12171368475854525433

`∪[A045329(n+1), A045463(n+1)]`
-/

namespace A045328.P12171368475854525433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045328.P12171368475854525433

noncomputable section

/-- A045328: Primes congruent to {0, 1, 2, 3, 6} (mod 7).

Offset 1, canonical program `A045328.P12171368475854525433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045328 (n : ℕ) : ℤ :=
  (A045328.P12171368475854525433.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049653.P2986559009846252833

`A049711(2*(n+2))`
-/

namespace A049653.P2986559009846252833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (2 * (n + 2))

end

end A049653.P2986559009846252833

noncomputable section

/-- A049653: a(n) = 2*n - prevprime(2*n).

Offset 2, canonical program `A049653.P2986559009846252833`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049653 (n : ℕ) : ℤ :=
  A049653.P2986559009846252833.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049653.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049692.P17847140543767200427

`lt[A286628(n+2), 2]+2`
-/

namespace A049692.P17847140543767200427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286628 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A049692.P17847140543767200427

noncomputable section

/-- A049692: Numbers k such that the square of the number of divisors of k does not divide the sum of the divisors of k.

Offset 1, canonical program `A049692.P17847140543767200427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7345 terms. -/
def A049692 (n : ℕ) : ℤ :=
  (A049692.P17847140543767200427.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7345 terms. -/
def A049692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053178.P15316804422992662611

`record[A171435(10*n+11)]`
-/

namespace A053178.P15316804422992662611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (10 * n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053178.P15316804422992662611

noncomputable section

/-- A053178: Numbers ending in 1 which are not prime.

Offset 1, canonical program `A053178.P15316804422992662611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7613 terms. -/
def A053178 (n : ℕ) : ℤ :=
  A053178.P15316804422992662611.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7613 terms. -/
def A053178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053181.P9598775767197643253

`record[A171435(10*n+9)]`
-/

namespace A053181.P9598775767197643253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (10 * n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053181.P9598775767197643253

noncomputable section

/-- A053181: Composite numbers ending in 9.

Offset 1, canonical program `A053181.P9598775767197643253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7610 terms. -/
def A053181 (n : ℕ) : ℤ :=
  A053181.P9598775767197643253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7610 terms. -/
def A053181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053795.P9037477365799927319

`A100490(n+1)`
-/

namespace A053795.P9037477365799927319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 (n + 1)

end

end A053795.P9037477365799927319

noncomputable section

/-- A053795: Composite numbers ending in 1, 3, 7 or 9.

Offset 1, canonical program `A053795.P9037477365799927319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A053795 (n : ℕ) : ℤ :=
  A053795.P9037477365799927319.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A053795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073803.P4157823894038143292

`A020725(lt[A334954(n+1), A062068(n+1)+1])`
-/

namespace A073803.P4157823894038143292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A073803.P4157823894038143292

noncomputable section

/-- A073803: Numbers k such that the number of divisors of k is smaller than that of sigma(k).

Offset 1, canonical program `A073803.P4157823894038143292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9631 terms. -/
def A073803 (n : ℕ) : ℤ :=
  A073803.P4157823894038143292.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9631 terms. -/
def A073803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080218.P8051704122228594511

`comp[A182859(n+1)-1]+1`
-/

namespace A080218.P8051704122228594511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182859 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A080218.P8051704122228594511

noncomputable section

/-- A080218: Monotonically increasing sequence such that every positive integer n appears if and only if d(n) doesn't (d(n)=number of divisors of n, A000005).

Offset 1, canonical program `A080218.P8051704122228594511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080218 (n : ℕ) : ℤ :=
  (A080218.P8051704122228594511.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045320.P2739606859632727750

`∪[A066436(n+1), A045334(n+1)]`
-/

namespace A045320.P2739606859632727750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045320.P2739606859632727750

noncomputable section

/-- A045320: Primes not congruent to 5 (mod 7).

Offset 1, canonical program `A045320.P2739606859632727750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045320 (n : ℕ) : ℤ :=
  (A045320.P2739606859632727750.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045417.P13044081721877140394

`∪[A066436(n+1), A045426(n+1)]`
-/

namespace A045417.P13044081721877140394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045417.P13044081721877140394

noncomputable section

/-- A045417: Primes congruent to {0, 1, 3, 4, 6} mod 7.

Offset 1, canonical program `A045417.P13044081721877140394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045417 (n : ℕ) : ℤ :=
  (A045417.P13044081721877140394.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045422.P2170341325868455356

`∪[A066436(n+1), A045433(n+1)]`
-/

namespace A045422.P2170341325868455356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045422.P2170341325868455356

noncomputable section

/-- A045422: Primes congruent to {0, 1, 3, 6} mod 7.

Offset 1, canonical program `A045422.P2170341325868455356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045422 (n : ℕ) : ℤ :=
  (A045422.P2170341325868455356.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006881.P9546401734316253315

`eq[2, A051709(n+1)]+1`
-/

namespace A006881.P9546401734316253315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A006881.P9546401734316253315

noncomputable section

/-- A006881: Squarefree semiprimes: Numbers that are the product of two distinct primes.

Offset 1, canonical program `A006881.P9546401734316253315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006881 (n : ℕ) : ℤ :=
  (A006881.P9546401734316253315.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030109.P14199666590729784855

`floor(A030101(n+1)/2)`
-/

namespace A030109.P14199666590729784855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030101 (n + 1) : ℚ) / 2⌋

end

end A030109.P14199666590729784855

noncomputable section

/-- A030109: Write n in binary, reverse bits, subtract 1, divide by 2.

Offset 1, canonical program `A030109.P14199666590729784855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030109 (n : ℕ) : ℤ :=
  A030109.P14199666590729784855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036556.P10612096107422092398

`lt[0, A293162(n)]`
-/

namespace A036556.P10612096107422092398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A036556.P10612096107422092398

noncomputable section

/-- A036556: Integers which when multiplied by 3 have an odd number of 1's in their binary expansion (cf. A000069).

Offset 1, canonical program `A036556.P10612096107422092398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8736 terms. -/
def A036556 (n : ℕ) : ℤ :=
  (A036556.P10612096107422092398.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8736 terms. -/
def A036556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044450.P2422719575531033708

`record[A225822(n+1)+A006519(A003159(n+1))]`
-/

namespace A044450.P2422719575531033708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225822 (n + 1) + A006519 (A003159 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044450.P2422719575531033708

noncomputable section

/-- A044450: Numbers k such that string 2,0 occurs in the base 4 representation of k but not of k+1.

Offset 1, canonical program `A044450.P2422719575531033708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4909 terms. -/
def A044450 (n : ℕ) : ℤ :=
  A044450.P2422719575531033708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4909 terms. -/
def A044450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046117.P460302525211984613

`A023201(n+1)+6`
-/

namespace A046117.P460302525211984613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1) + 6

end

end A046117.P460302525211984613

noncomputable section

/-- A046117: Primes p such that p-6 is also prime. (Upper of a pair of sexy primes.)

Offset 1, canonical program `A046117.P460302525211984613`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046117 (n : ℕ) : ℤ :=
  A046117.P460302525211984613.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046117.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A046136.P11134419459334397821

`p?[A023201(n+1)-4]`
-/

namespace A046136.P11134419459334397821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046136.P11134419459334397821

noncomputable section

/-- A046136: Primes p such that p, p+4 and p+10 are primes.

Offset 1, canonical program `A046136.P11134419459334397821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1352 terms. -/
def A046136 (n : ℕ) : ℤ :=
  A046136.P11134419459334397821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1352 terms. -/
def A046136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049092.P669335479257422354

`p?[A013929(n+1)+1]`
-/

namespace A049092.P669335479257422354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049092.P669335479257422354

noncomputable section

/-- A049092: Primes p such that p-1 is not squarefree.

Offset 1, canonical program `A049092.P669335479257422354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049092 (n : ℕ) : ℤ :=
  A049092.P669335479257422354.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050985.P12411912326700818488

`∑{d}[n+1, A073185(#)*A210826((n+1)/#)]`
-/

namespace A050985.P12411912326700818488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073185 d * A210826 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050985.P12411912326700818488

noncomputable section

/-- A050985: Cubefree part of n.

Offset 1, canonical program `A050985.P12411912326700818488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050985 (n : ℕ) : ℤ :=
  A050985.P12411912326700818488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055041.P17568345596612921113

`filter[A155504(n+1), A182581(#)]`
-/

namespace A055041.P17568345596612921113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182581 (f1 j).toNat = 1) n)

end

end A055041.P17568345596612921113

noncomputable section

/-- A055041: Numbers of the form 3^(2i+1)*(3*j+1).

Offset 1, canonical program `A055041.P17568345596612921113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7499 terms. -/
def A055041 (n : ℕ) : ℤ :=
  A055041.P17568345596612921113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7499 terms. -/
def A055041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056135.P11892783401694523385

`A056134(n+1)²/(n+1)`
-/

namespace A056135.P11892783401694523385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056134 (n + 1) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A056135.P11892783401694523385

noncomputable section

/-- A056135: Smallest positive integer other than n where geometric mean of n and a(n) is an integer.

Offset 1, canonical program `A056135.P11892783401694523385`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056135 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056135.P11892783401694523385.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056135.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056196.P11886638519316626035

`A008590(record[A056192(A003159(n+1))])`
-/

namespace A056196.P11886638519316626035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056192 (A003159 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A056196.P11886638519316626035

noncomputable section

/-- A056196: Numbers n such that A055229(n) = 2.

Offset 1, canonical program `A056196.P11886638519316626035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6411 terms. -/
def A056196 (n : ℕ) : ℤ :=
  A056196.P11886638519316626035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6411 terms. -/
def A056196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071974.P9686884691264808123

`A071975(A003557(n+1))`
-/

namespace A071974.P9686884691264808123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (A003557 (n + 1)).toNat

end

end A071974.P9686884691264808123

noncomputable section

/-- A071974: Numerator of rational number i/j such that Sagher map sends i/j to n.

Offset 1, canonical program `A071974.P9686884691264808123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071974 (n : ℕ) : ℤ :=
  A071974.P9686884691264808123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074293.P13089180557891282767

`A003983(Δ[A054353(A008706(n))])`
-/

namespace A074293.P13089180557891282767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (A008706 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (f1 (n + 1) - f1 n).toNat

end

end A074293.P13089180557891282767

noncomputable section

/-- A074293: Dominant (i.e., most populous) digit in Kolakoski sequence (A000002) when partitioned into groups of 5.

Offset 0, canonical program `A074293.P13089180557891282767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A074293 (n : ℕ) : ℤ :=
  A074293.P13089180557891282767.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A074293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080332.P12047644629895740680

`A010815(n)*A116916(n)`
-/

namespace A080332.P12047644629895740680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A116916 n

end

end A080332.P12047644629895740680

noncomputable section

/-- A080332: G.f.: Product_{n>0} (1 - x^n)^3 * (1 - x^(2*n - 1))^2 = Sum_{n in Z} (6*n + 1) * x^(n*(3*n + 1)/2).

Offset 0, canonical program `A080332.P12047644629895740680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080332 (n : ℕ) : ℤ :=
  A080332.P12047644629895740680.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002107.P1488823676428473732

`∑{#}[n, A010815(#)*A010815(n-#)]`
-/

namespace A002107.P1488823676428473732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A010815 k * A010815 (n - k)

end

end A002107.P1488823676428473732

noncomputable section

/-- A002107: Expansion of Product_{k>=1} (1 - x^k)^2.

Offset 0, canonical program `A002107.P1488823676428473732`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002107 (n : ℕ) : ℤ :=
  A002107.P1488823676428473732.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002107.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003958.P196685604458257440

`abs(A125131(n+1))`
-/

namespace A003958.P196685604458257440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A125131 (n + 1)|

end

end A003958.P196685604458257440

noncomputable section

/-- A003958: If n = Product p(k)^e(k) then a(n) = Product (p(k)-1)^e(k).

Offset 1, canonical program `A003958.P196685604458257440`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A125131, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003958 (n : ℕ) : ℤ :=
  A003958.P196685604458257440.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A125131, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003958.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005076.P7083894196155953315

`A005064(n+1)-A005072(n+1)-27*A079978(n+1)`
-/

namespace A005076.P7083894196155953315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (n + 1) - A005072 (n + 1) - 27 * A079978 (n + 1)

end

end A005076.P7083894196155953315

noncomputable section

/-- A005076: Sum of cubes of primes = 2 mod 3 dividing n.

Offset 1, canonical program `A005076.P7083894196155953315`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005064, A005072, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005076 (n : ℕ) : ℤ :=
  A005076.P7083894196155953315.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005064, A005072, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005076.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005080.P9273284340090812152

`A005064(n+1)-A005084(n+1)-8*A059841(n+1)`
-/

namespace A005080.P9273284340090812152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (n + 1) - A005084 (n + 1) - 8 * A059841 (n + 1)

end

end A005080.P9273284340090812152

noncomputable section

/-- A005080: Sum of cubes of primes = 1 mod 4 dividing n.

Offset 1, canonical program `A005080.P9273284340090812152`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005064, A005084, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005080 (n : ℕ) : ℤ :=
  A005080.P9273284340090812152.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005064, A005084, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005080.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A013947.P11385183315367073616

`∪[A156242(n+1)+1, A156243(n+1)]`
-/

namespace A013947.P11385183315367073616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A013947.P11385183315367073616

noncomputable section

/-- A013947: Positions of 1's in Kolakoski sequence (A000002).

Offset 1, canonical program `A013947.P11385183315367073616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013947 (n : ℕ) : ℤ :=
  (A013947.P11385183315367073616.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022422.P1741204150297171016

`A002251(A022418(n)-n)`
-/

namespace A022422.P1741204150297171016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A022418 n - (n : ℤ)).toNat

end

end A022422.P1741204150297171016

noncomputable section

/-- A022422: Kim-sums: "Kimberling sums" K_n + K_11.

Offset 0, canonical program `A022422.P1741204150297171016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6172 terms. -/
def A022422 (n : ℕ) : ℤ :=
  A022422.P1741204150297171016.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6172 terms. -/
def A022422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023778.P2903462885975821254

`∩[A023751(n+1), A023804(n+1)]`
-/

namespace A023778.P2903462885975821254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023778.P2903462885975821254

noncomputable section

/-- A023778: Metadromes: digits in base 9 are in strict ascending order.

Offset 1, canonical program `A023778.P2903462885975821254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A023778 (n : ℕ) : ℤ :=
  (A023778.P2903462885975821254.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A023778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023889.P17073280978498141665

`A023888(n+1)-1`
-/

namespace A023889.P17073280978498141665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (n + 1) - 1

end

end A023889.P17073280978498141665

noncomputable section

/-- A023889: Sum of the prime power divisors of n (not including 1).

Offset 1, canonical program `A023889.P17073280978498141665`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023888, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023889 (n : ℕ) : ℤ :=
  A023889.P17073280978498141665.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023888, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023889.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A026132.P6477276082390710073

`A026111(n+2)-A026112(n+1)`
-/

namespace A026132.P6477276082390710073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026111 (n + 2) - A026112 (n + 1)

end

end A026132.P6477276082390710073

noncomputable section

/-- A026132: a(n) = A026120(2n,n+1).

Offset 1, canonical program `A026132.P6477276082390710073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A026132 (n : ℕ) : ℤ :=
  A026132.P6477276082390710073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A026132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026272.P3028833638085150316

`A026242(n+3)-1`
-/

namespace A026272.P3028833638085150316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026242 (n + 3) - 1

end

end A026272.P3028833638085150316

noncomputable section

/-- A026272: a(n) = smallest k such that k=a(n-k-1) is the only appearance of k so far; if there is no such k, then a(n) = least positive integer that has not yet appeared.

Offset 1, canonical program `A026272.P3028833638085150316`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026242, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026272 (n : ℕ) : ℤ :=
  A026272.P3028833638085150316.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026242, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026272.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A028890.P17409885626667997560

`eq[1, A007895(A007954(n))]`
-/

namespace A028890.P17409885626667997560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028890.P17409885626667997560

noncomputable section

/-- A028890: Product of digits of n is a nonzero Fibonacci number.

Offset 1, canonical program `A028890.P17409885626667997560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A028890 (n : ℕ) : ℤ :=
  (A028890.P17409885626667997560.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A028890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042942.P7773469861340243061

`A001083(n+3)-1`
-/

namespace A042942.P7773469861340243061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001083 (n + 3) - 1

end

end A042942.P7773469861340243061

noncomputable section

/-- A042942: From substitutional generation of Kolakoski sequence (A000002).

Offset 1, canonical program `A042942.P7773469861340243061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001083, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A042942 (n : ℕ) : ℤ :=
  A042942.P7773469861340243061.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001083, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A042942.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A043741.P2963682673950430182

`eq[8, A007953(A073334(n))]`
-/

namespace A043741.P2963682673950430182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A073334 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043741.P2963682673950430182

noncomputable section

/-- A043741: Numbers whose number of runs in the base-2 representation is congruent to 2 mod 7.

Offset 1, canonical program `A043741.P2963682673950430182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1096 terms. -/
def A043741 (n : ℕ) : ℤ :=
  (A043741.P2963682673950430182.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1096 terms. -/
def A043741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048111.P6696636643899640312

`filter[A013929(n+1), A380454(#)]`
-/

namespace A048111.P6696636643899640312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380454 (f1 j).toNat = 1) n)

end

end A048111.P6696636643899640312

noncomputable section

/-- A048111: Number of unitary divisors of n (A034444) < number of non-unitary divisors of n (A048105).

Offset 1, canonical program `A048111.P6696636643899640312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048111 (n : ℕ) : ℤ :=
  A048111.P6696636643899640312.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049511.P8890718646906056889

`A000720(A030430(n+1))`
-/

namespace A049511.P8890718646906056889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A030430 (n + 1)).toNat

end

end A049511.P8890718646906056889

noncomputable section

/-- A049511: Numbers k such that prime(k) == 1 (mod 10).

Offset 1, canonical program `A049511.P8890718646906056889`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049511 (n : ℕ) : ℤ :=
  A049511.P8890718646906056889.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049511.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053324.P2910710581834118285

`Δ[A031930(n+1)]`
-/

namespace A053324.P2910710581834118285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053324.P2910710581834118285

noncomputable section

/-- A053324: First differences of A031930.

Offset 1, canonical program `A053324.P2910710581834118285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A053324 (n : ℕ) : ℤ :=
  A053324.P2910710581834118285.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A053324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064786.P10676103472922795577

`2*A026242(n+1)-A003849(n)`
-/

namespace A064786.P10676103472922795577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026242 (n + 1) - A003849 n

end

end A064786.P10676103472922795577

noncomputable section

/-- A064786: Inverse permutation to A054084.

Offset 1, canonical program `A064786.P10676103472922795577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064786 (n : ℕ) : ℤ :=
  A064786.P10676103472922795577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066427.P8185841536175877705

`lt[A064179(n+1), A008683(n+1)]+1`
-/

namespace A066427.P8185841536175877705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A066427.P8185841536175877705

noncomputable section

/-- A066427: Numbers with mu = 0 and infinitary MoebiusMu = -1; (sum of binary digits of prime exponents is odd).

Offset 1, canonical program `A066427.P8185841536175877705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9809 terms. -/
def A066427 (n : ℕ) : ℤ :=
  (A066427.P8185841536175877705.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9809 terms. -/
def A066427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066428.P8799136072068236919

`lt[A008683(n+1), A064179(n+1)]+1`
-/

namespace A066428.P8799136072068236919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A066428.P8799136072068236919

noncomputable section

/-- A066428: Numbers with mu = 0 and infinitary MoebiusMu = +1 (sum of binary digits of prime exponents is even).

Offset 1, canonical program `A066428.P8799136072068236919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9790 terms. -/
def A066428 (n : ℕ) : ℤ :=
  (A066428.P8799136072068236919.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9790 terms. -/
def A066428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066691.P12764247508307257723

`A000005(A066692(n+1))`
-/

namespace A066691.P12764247508307257723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A066692 (n + 1)).toNat

end

end A066691.P12764247508307257723

noncomputable section

/-- A066691: Value of tau(2n-1) when tau(2n-1) = tau(2n+1).

Offset 1, canonical program `A066691.P12764247508307257723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066691 (n : ℕ) : ℤ :=
  A066691.P12764247508307257723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072666.P4852007313916300024

`A000720(A072667(n+1))`
-/

namespace A072666.P4852007313916300024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A072667 (n + 1)).toNat

end

end A072666.P4852007313916300024

noncomputable section

/-- A072666: Numbers n such that prime(n) + prime(n+1) - 1 is prime.

Offset 1, canonical program `A072666.P4852007313916300024`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072667, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072666 (n : ℕ) : ℤ :=
  A072666.P4852007313916300024.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072667, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072666.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074173.P5413134121168354343

`∩[A054753(n+1)-2, A054753(n+1)]`
-/

namespace A074173.P5413134121168354343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074173.P5413134121168354343

noncomputable section

/-- A074173: Numbers n such that n and n+2 are of the form p^2*q where p and q are distinct primes.

Offset 1, canonical program `A074173.P5413134121168354343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 276 terms. -/
def A074173 (n : ℕ) : ℤ :=
  (A074173.P5413134121168354343.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 276 terms. -/
def A074173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080258.P17237642647837230985

`∪[A030514(n+1), A054753(n+1)]`
-/

namespace A080258.P17237642647837230985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080258.P17237642647837230985

noncomputable section

/-- A080258: Either 4th power of a prime, or product of a prime and the square of a different prime.

Offset 1, canonical program `A080258.P17237642647837230985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080258 (n : ℕ) : ℤ :=
  (A080258.P17237642647837230985.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000028.P8857618948248108747

`lt[A064179(n+1), 0]+1`
-/

namespace A000028.P8857618948248108747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A000028.P8857618948248108747

noncomputable section

/-- A000028: Let k = p_1^e_1 p_2^e_2 p_3^e_3 ... be the prime factorization of n. Sequence gives k such that the sum of the numbers of 1's in the binary expansions of e_1, e_2, e_3, ... is odd.

Offset 1, canonical program `A000028.P8857618948248108747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000028 (n : ℕ) : ℤ :=
  (A000028.P8857618948248108747.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000379.P2146762870191125064

`eq[1, A064179(n+1)]+1`
-/

namespace A000379.P2146762870191125064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A000379.P2146762870191125064

noncomputable section

/-- A000379: Numbers where total number of 1-bits in the exponents of their prime factorization is even; a 2-way classification of integers: complement of A000028.

Offset 1, canonical program `A000379.P2146762870191125064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000379 (n : ℕ) : ℤ :=
  (A000379.P2146762870191125064.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003324.P909769212695493746

`and(1, n)+and(3, A335115(n+1))`
-/

namespace A003324.P909769212695493746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) + Int.land 3 (A335115 (n + 1))

end

end A003324.P909769212695493746

noncomputable section

/-- A003324: A nonrepetitive sequence.

Offset 1, canonical program `A003324.P909769212695493746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003324 (n : ℕ) : ℤ :=
  A003324.P909769212695493746.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030515.P12955825658277504300

`∪[A050997(n+1), A054753(n+1)]`
-/

namespace A030515.P12955825658277504300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A030515.P12955825658277504300

noncomputable section

/-- A030515: Numbers with exactly 6 divisors.

Offset 1, canonical program `A030515.P12955825658277504300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030515 (n : ℕ) : ℤ :=
  (A030515.P12955825658277504300.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043638.P8660108337525184615

`eq[2, A055640(A098488(n))]`
-/

namespace A043638.P8660108337525184615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A098488 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043638.P8660108337525184615

noncomputable section

/-- A043638: Numbers whose base-10 representation has exactly 2 runs.

Offset 1, canonical program `A043638.P8660108337525184615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A043638 (n : ℕ) : ℤ :=
  (A043638.P8660108337525184615.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A043638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043639.P17311220086423612145

`eq[1, A055640(A098488(n))-2]`
-/

namespace A043639.P17311220086423612145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A098488 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043639.P17311220086423612145

noncomputable section

/-- A043639: Numbers whose base-10 representation has exactly 3 runs.

Offset 1, canonical program `A043639.P17311220086423612145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. -/
def A043639 (n : ℕ) : ℤ :=
  (A043639.P17311220086423612145.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. -/
def A043639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044056.P17555869598845722757

`eq[A048735(A289813(n+1)), A318666(n+1)]+1`
-/

namespace A044056.P17555869598845722757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 (A289813 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318666 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A044056.P17555869598845722757

noncomputable section

/-- A044056: Numbers n such that string 1,1 occurs in the base 3 representation of n but not of n-1.

Offset 1, canonical program `A044056.P17555869598845722757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 707 terms. -/
def A044056 (n : ℕ) : ℤ :=
  (A044056.P17555869598845722757.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 707 terms. -/
def A044056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048519.P10135432408505313688

`p?[A047791(n+1)]`
-/

namespace A048519.P10135432408505313688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048519.P10135432408505313688

noncomputable section

/-- A048519: Prime plus its digit sum equals a prime.

Offset 1, canonical program `A048519.P10135432408505313688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1418 terms. -/
def A048519 (n : ℕ) : ℤ :=
  A048519.P10135432408505313688.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1418 terms. -/
def A048519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058049.P13942602292199883948

`eq[2, A000005(A051351(n+1))]+1`
-/

namespace A058049.P13942602292199883948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A051351 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A058049.P13942602292199883948

noncomputable section

/-- A058049: Numbers k such that the sum of the digits of the first k primes is a prime.

Offset 1, canonical program `A058049.P13942602292199883948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 512 terms. -/
def A058049 (n : ℕ) : ℤ :=
  (A058049.P13942602292199883948.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 512 terms. -/
def A058049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058370.P2006344636146154017

`p?[A058369(n+1)]`
-/

namespace A058370.P2006344636146154017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058370.P2006344636146154017

noncomputable section

/-- A058370: Primes p such that p and p^2 have same digit sum.

Offset 1, canonical program `A058370.P2006344636146154017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 519 terms. -/
def A058370 (n : ℕ) : ℤ :=
  A058370.P2006344636146154017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 519 terms. -/
def A058370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061244.P17061896473766329541

`∩[A030096(n+1), A179239(n)]`
-/

namespace A061244.P17061896473766329541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061244.P17061896473766329541

noncomputable section

/-- A061244: Prime numbers with odd digits in ascending order.

Offset 1, canonical program `A061244.P17061896473766329541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A061244 (n : ℕ) : ℤ :=
  (A061244.P17061896473766329541.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A061244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061763.P17211553431124948696

`∩[A038366(n+1), A052382(n+1)]`
-/

namespace A061763.P17211553431124948696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061763.P17211553431124948696

noncomputable section

/-- A061763: Numbers k such that k is divisible by A061762(k) and the product of digits of k (A007954(k)) is not zero.

Offset 1, canonical program `A061763.P17211553431124948696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A061763 (n : ℕ) : ℤ :=
  (A061763.P17211553431124948696.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A061763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061910.P79250679325321170

`sqrt(A053057(n+2))`
-/

namespace A061910.P79250679325321170
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053057 (n + 2) : ℝ)

end

end A061910.P79250679325321170

noncomputable section

/-- A061910: Positive numbers k such that sum of digits of k^2 is a square.

Offset 1, canonical program `A061910.P79250679325321170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A061910 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061910.P79250679325321170.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A061910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062099.P2797821682979061663

`record[A000217(n)/A059268(A004157(n))]`
-/

namespace A062099.P2797821682979061663
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 n : ℚ) / (A059268 (A004157 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062099.P2797821682979061663

noncomputable section

/-- A062099: Triangular numbers whose sum of digits is a triangular number.

Offset 1, canonical program `A062099.P2797821682979061663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3183 terms. -/
def A062099 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A062099.P2797821682979061663.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3183 terms. -/
def A062099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062336.P8122795505287334106

`p?[A273159(n+1)]`
-/

namespace A062336.P8122795505287334106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062336.P8122795505287334106

noncomputable section

/-- A062336: Primes whose sum of digits is a multiple of 7.

Offset 1, canonical program `A062336.P8122795505287334106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 820 terms. -/
def A062336 (n : ℕ) : ℤ :=
  A062336.P8122795505287334106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 820 terms. -/
def A062336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065075.P5743143580939958103

`∑{digits}[A004207(n), #]`
-/

namespace A065075.P5743143580939958103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004207 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A065075.P5743143580939958103

noncomputable section

/-- A065075: Sum of digits of the sum of the preceding numbers.

Offset 1, canonical program `A065075.P5743143580939958103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065075 (n : ℕ) : ℤ :=
  (A065075.P5743143580939958103.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067874.P9560290715763698654

`2*A272799(n+1)`
-/

namespace A067874.P9560290715763698654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A272799 (n + 1)

end

end A067874.P9560290715763698654

noncomputable section

/-- A067874: Positive integers x satisfying x^2 - D*y^2 = 1 for a unique integer D.

Offset 1, canonical program `A067874.P9560290715763698654`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A272799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067874 (n : ℕ) : ℤ :=
  A067874.P9560290715763698654.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A272799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067874.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A068951.P13108073047141062751

`∑{digits}[A046704(n+1), #]`
-/

namespace A068951.P13108073047141062751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A068951.P13108073047141062751

noncomputable section

/-- A068951: Scan the primes, record digit-sum if it is itself prime.

Offset 1, canonical program `A068951.P13108073047141062751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068951 (n : ℕ) : ℤ :=
  (A068951.P13108073047141062751.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069912.P9604506837947316734

`A067552(n)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069912.P9604506837947316734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067552 n : ℚ) / 9

end

end A069912.P9604506837947316734

noncomputable section

/-- A069912: a(n) = A067552(n)/9 where A067552(n) = SumOfDigits(n)^2 - SumOfDigits(n^2), with SumOfDigits = A007953.

Offset 0, canonical program `A069912.P9604506837947316734`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067552, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069912 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069912.P9604506837947316734.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067552, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069912.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070027.P5242665352771384426

`∩[A046704(n+1), A078403(n+1)]`
-/

namespace A070027.P5242665352771384426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070027.P5242665352771384426

noncomputable section

/-- A070027: Prime numbers whose initial, all intermediate and final iterated sums of digits are primes.

Offset 1, canonical program `A070027.P5242665352771384426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3626 terms. -/
def A070027 (n : ℕ) : ℤ :=
  (A070027.P5242665352771384426.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3626 terms. -/
def A070027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073434.P6686306003510608694

`p?[A000035(A107347(n+1))*A130290(n+1)]`
-/

namespace A073434.P6686306003510608694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A107347 (n + 1)).toNat * A130290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073434.P6686306003510608694

noncomputable section

/-- A073434: Primes p such that 2p+1 is prime and there are an even number of primes in the interval [p+1,2p+1].

Offset 1, canonical program `A073434.P6686306003510608694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 362 terms. -/
def A073434 (n : ℕ) : ℤ :=
  A073434.P6686306003510608694.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 362 terms. -/
def A073434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075177.P14538536249306811539

`A000720(A046704(n+1))`
-/

namespace A075177.P14538536249306811539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A046704 (n + 1)).toNat

end

end A075177.P14538536249306811539

noncomputable section

/-- A075177: Indices of additive primes, see A046704.

Offset 1, canonical program `A075177.P14538536249306811539`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075177 (n : ℕ) : ℤ :=
  A075177.P14538536249306811539.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075177.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080324.P5087934849441666262

`∪[A030229(n+1), A039956(n+1)]`
-/

namespace A080324.P5087934849441666262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080324.P5087934849441666262

noncomputable section

/-- A080324: Union of even squarefree numbers (A039956) and squarefree numbers for which the number of prime factors is even (A030229).

Offset 1, canonical program `A080324.P5087934849441666262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080324 (n : ℕ) : ℤ :=
  (A080324.P5087934849441666262.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061423.P247878433871587893

`∩[A178366(n+1), A274319(n+1)]`
-/

namespace A061423.P247878433871587893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061423.P247878433871587893

noncomputable section

/-- A061423: Sum of digits = 6 times number of digits.

Offset 1, canonical program `A061423.P247878433871587893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1434 terms. -/
def A061423 (n : ℕ) : ℤ :=
  (A061423.P247878433871587893.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1434 terms. -/
def A061423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061424.P9634388697526268422

`∩[A178367(n+1), A273159(n+1)]`
-/

namespace A061424.P9634388697526268422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061424.P9634388697526268422

noncomputable section

/-- A061424: Sum of digits = 7 times number of digits.

Offset 1, canonical program `A061424.P9634388697526268422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. -/
def A061424 (n : ℕ) : ℤ :=
  (A061424.P9634388697526268422.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. -/
def A061424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066270.P16574927822782617413

`∩[A073763(n+1), A216997(n+1)]`
-/

namespace A066270.P16574927822782617413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066270.P16574927822782617413

noncomputable section

/-- A066270: Multiples of 24 whose digits also sum to 24.

Offset 1, canonical program `A066270.P16574927822782617413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A066270 (n : ℕ) : ℤ :=
  (A066270.P16574927822782617413.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A066270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068498.P10147595051279811510

`A000045(lt[A280185(n), 0])`
-/

namespace A068498.P10147595051279811510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280185 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A068498.P10147595051279811510

noncomputable section

/-- A068498: Fibonacci numbers whose sum of decimal digits is greater than its index.

Offset 1, canonical program `A068498.P10147595051279811510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A068498 (n : ℕ) : ℤ :=
  A068498.P10147595051279811510.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A068498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071701.P18388032048899093452

`A071538(n+1)-A071702(n+1)`
-/

namespace A071701.P18388032048899093452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (n + 1) - A071702 (n + 1)

end

end A071701.P18388032048899093452

noncomputable section

/-- A071701: Number of twin prime pairs <= n of form (4*k+1,4*k+3), k>0.

Offset 1, canonical program `A071701.P18388032048899093452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071701 (n : ℕ) : ℤ :=
  A071701.P18388032048899093452.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071701.provenance : SequenceMachineLib.Provenance := .conjectured

