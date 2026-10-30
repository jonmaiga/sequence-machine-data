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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
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
import SequenceMachineLib.Triangle

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

/-! ## A002808.P568819275912777150

`lt[2, A000005(n+1)]+1`
-/

namespace A002808.P568819275912777150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A002808.P568819275912777150

noncomputable section

/-- A002808: The composite numbers: numbers n of the form x*y for x > 1 and y > 1.

Offset 1, canonical program `A002808.P568819275912777150`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A002808.anchor (n : ℕ) (hn : 1 ≤ n) : A002808 n = (Nat.nth (fun k => 1 < k ∧ ¬ k.Prime) (n - 1) : ℤ)` in `Proof.A002.A002808`. -/
def A002808 (n : ℕ) : ℤ :=
  (A002808.P568819275912777150.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A002808.anchor (n : ℕ) (hn : 1 ≤ n) : A002808 n = (Nat.nth (fun k => 1 < k ∧ ¬ k.Prime) (n - 1) : ℤ)` in `Proof.A002.A002808`. -/
def A002808.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A003165.P18392943898696329135

`A004526(n+1)-A000005(n+1)+1`
-/

namespace A003165.P18392943898696329135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) - A000005 (n + 1) + 1

end

end A003165.P18392943898696329135

noncomputable section

/-- A003165: a(n) = floor(n/2) + 1 - d(n), where d(n) is the number of divisors of n.

Offset 1, canonical program `A003165.P18392943898696329135`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003165 (n : ℕ) : ℤ :=
  A003165.P18392943898696329135.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003165.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005361.P7238185687981551187

`A000005((n+1)/A007947(n+1))`
-/

namespace A005361.P7238185687981551187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A005361.P7238185687981551187

noncomputable section

/-- A005361: Product of exponents of prime factorization of n.

Offset 1, canonical program `A005361.P7238185687981551187`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005361 (n : ℕ) : ℤ :=
  A005361.P7238185687981551187.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005361.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006218.P9218434490128439557

`a(n-1)+A000005(n)` with `a(0)=0`
-/

namespace A006218.P9218434490128439557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000005 n

end

end A006218.P9218434490128439557

noncomputable section

/-- A006218: a(n) = Sum_{k=1..n} floor(n/k); also Sum_{k=1..n} d(k), where d = number of divisors (A000005); also number of solutions to x*y = z with 1 <= x,y,z <= n.

Offset 0, canonical program `A006218.P9218434490128439557`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A006218.anchor (n : ℕ) : A006218 n = ∑ k ∈ Finset.Icc 1 n, (ArithmeticFunction.sigma 0 k : ℤ)` in `Proof.A006.A006218`. -/
def A006218 (n : ℕ) : ℤ :=
  A006218.P9218434490128439557.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A006218.anchor (n : ℕ) : A006218 n = ∑ k ∈ Finset.Icc 1 n, (ArithmeticFunction.sigma 0 k : ℤ)` in `Proof.A006.A006218`. -/
def A006218.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A007425.P13740274416881294389

`∑{d}[n+1, A000005(#)]`
-/

namespace A007425.P13740274416881294389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d

end

end A007425.P13740274416881294389

noncomputable section

/-- A007425: d_3(n), or tau_3(n), the number of ordered factorizations of n as n = r s t.

Offset 1, canonical program `A007425.P13740274416881294389`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007425 (n : ℕ) : ℤ :=
  A007425.P13740274416881294389.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007425.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007430.P16019433643120249359

`∑{d}[n+1, A000203(#)*A000005((n+1)/#)]`
-/

namespace A007430.P16019433643120249359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007430.P16019433643120249359

noncomputable section

/-- A007430: Inverse Moebius transform applied thrice to natural numbers.

Offset 1, canonical program `A007430.P16019433643120249359`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007430 (n : ℕ) : ℤ :=
  A007430.P16019433643120249359.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007430.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007433.P1894244349410239925

`∑{d}[n+1, #²*A000005((n+1)/#)]`
-/

namespace A007433.P1894244349410239925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ 2 : ℤ) * A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007433.P1894244349410239925

noncomputable section

/-- A007433: Inverse Moebius transform applied twice to squares.

Offset 1, canonical program `A007433.P1894244349410239925`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007433 (n : ℕ) : ℤ :=
  A007433.P1894244349410239925.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007433.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007503.P13484425310514315912

`A000005(n+1)+A000203(n+1)`
-/

namespace A007503.P13484425310514315912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A000203 (n + 1)

end

end A007503.P13484425310514315912

noncomputable section

/-- A007503: Number of subgroups of dihedral group: sigma(n) + d(n).

Offset 1, canonical program `A007503.P13484425310514315912`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007503 (n : ℕ) : ℤ :=
  A007503.P13484425310514315912.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007503.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A007955.P14752630106558465512

`(n+1)^(A000005(n+1)/2)`
-/

namespace A007955.P14752630106558465512
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A000005 (n + 1) : ℚ) / 2 : ℝ)

end

end A007955.P14752630106558465512

noncomputable section

/-- A007955: Product of divisors of n.

Offset 1, canonical program `A007955.P14752630106558465512`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007955 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007955.P14752630106558465512.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007955.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008328.P3425095105082656605

`A000005(A006093(n+1))`
-/

namespace A008328.P3425095105082656605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006093 (n + 1)).toNat

end

end A008328.P3425095105082656605

noncomputable section

/-- A008328: Number of divisors of prime(n)-1.

Offset 1, canonical program `A008328.P3425095105082656605`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008328 (n : ℕ) : ℤ :=
  A008328.P3425095105082656605.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008328.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008329.P18061230809908035593

`A000005(A008864(n+1))`
-/

namespace A008329.P18061230809908035593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008864 (n + 1)).toNat

end

end A008329.P18061230809908035593

noncomputable section

/-- A008329: Number of divisors of p+1, p prime.

Offset 1, canonical program `A008329.P18061230809908035593`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008329 (n : ℕ) : ℤ :=
  A008329.P18061230809908035593.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008329.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A009191.P6662661648928745988

`gcd(n+1, A000005(n+1))`
-/

namespace A009191.P6662661648928745988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000005 (n + 1))

end

end A009191.P6662661648928745988

noncomputable section

/-- A009191: a(n) = gcd(n, d(n)), where d(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A009191.P6662661648928745988`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009191 (n : ℕ) : ℤ :=
  (A009191.P6662661648928745988.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009191.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A009205.P2297388309160115762

`gcd(A000005(n+1), A000203(n+1))`
-/

namespace A009205.P2297388309160115762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1)) (A000203 (n + 1))

end

end A009205.P2297388309160115762

noncomputable section

/-- A009205: a(n) = gcd(d(n), sigma(n)).

Offset 1, canonical program `A009205.P2297388309160115762`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009205 (n : ℕ) : ℤ :=
  (A009205.P2297388309160115762.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009205.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A009213.P12402477796330107786

`gcd(A000005(n+1), A000010(n+1))`
-/

namespace A009213.P12402477796330107786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1)) (A000010 (n + 1))

end

end A009213.P12402477796330107786

noncomputable section

/-- A009213: a(n) = gcd(d(n), phi(n)), where d is the number of divisors of n (A000005) and phi is Euler's totient function (A000010).

Offset 1, canonical program `A009213.P12402477796330107786`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009213 (n : ℕ) : ℤ :=
  (A009213.P12402477796330107786.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009213.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A009278.P8639639460306029723

`lcm(A000005(n+1), A000203(n+1))`
-/

namespace A009278.P8639639460306029723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (n + 1)) (A000203 (n + 1))

end

end A009278.P8639639460306029723

noncomputable section

/-- A009278: a(n) = lcm(d(n), sigma(n)).

Offset 1, canonical program `A009278.P8639639460306029723`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009278 (n : ℕ) : ℤ :=
  (A009278.P8639639460306029723.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009278.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010553.P11932377395426747626

`A000005(A000005(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A010553.P11932377395426747626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (n + 1)).toNat

end

end A010553.P11932377395426747626

noncomputable section

/-- A010553: a(n) = tau(tau(n)).

Offset 1, canonical program `A010553.P11932377395426747626`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(A000005(n+1))` (program `A010553.P11932377395426747626`, by `A010553.P11932377395426747626.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A010553 (n : ℕ) : ℤ :=
  A010553.P11932377395426747626.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(A000005(n+1))` (program `A010553.P11932377395426747626`, by `A010553.P11932377395426747626.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A010553.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A015996.P15461774812698289129

`(A000005((n+1)^4)+3)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A015996.P15461774812698289129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 ((n + 1) ^ 4) + 3 : ℚ) / 4

end

end A015996.P15461774812698289129

noncomputable section

/-- A015996: (tau(n^4) + 3)/4, where tau = A000005.

Offset 1, canonical program `A015996.P15461774812698289129`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A015996 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A015996.P15461774812698289129.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A015996.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022157.P15504735402148631401

`(n+1)²-A000010(n+1)*A000005(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022157.P15504735402148631401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000010 (n + 1) * A000005 (n + 1) ^ 2

end

end A022157.P15504735402148631401

noncomputable section

/-- A022157: a(n) = n^2 - phi(n)*tau(n)^2.

Offset 1, canonical program `A022157.P15504735402148631401`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²-A000010(n+1)*A000005(n+1)²` (program `A022157.P15504735402148631401`, by `A022157.P15504735402148631401.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A022157 (n : ℕ) : ℤ :=
  A022157.P15504735402148631401.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²-A000010(n+1)*A000005(n+1)²` (program `A022157.P15504735402148631401`, by `A022157.P15504735402148631401.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A022157.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023645.P14181426108447540437

`A000005(n+1)-2+(n+1)%2`
-/

namespace A023645.P14181426108447540437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - 2 + (((n + 1) % 2 : ℕ) : ℤ)

end

end A023645.P14181426108447540437

noncomputable section

/-- A023645: a(n) = tau(n)-1 if n is odd or tau(n)-2 if n is even.

Offset 1, canonical program `A023645.P14181426108447540437`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023645 (n : ℕ) : ℤ :=
  A023645.P14181426108447540437.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023645.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027423.P14066705804803784298

`A000005(A000142(n))`
-/

namespace A027423.P14066705804803784298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000142 n).toNat

end

end A027423.P14066705804803784298

noncomputable section

/-- A027423: Number of divisors of n!.

Offset 0, canonical program `A027423.P14066705804803784298`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027423 (n : ℕ) : ℤ :=
  A027423.P14066705804803784298.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027423.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033273.P18420659424697249895

`A000005(n+1)-A001221(n+1)`
-/

namespace A033273.P18420659424697249895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A001221 (n + 1)

end

end A033273.P18420659424697249895

noncomputable section

/-- A033273: Number of nonprime divisors of n.

Offset 1, canonical program `A033273.P18420659424697249895`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033273 (n : ℕ) : ℤ :=
  A033273.P18420659424697249895.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033273.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034974.P7253154564856362011

`A000005(A001405(n+1))`
-/

namespace A034974.P7253154564856362011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001405 (n + 1)).toNat

end

end A034974.P7253154564856362011

noncomputable section

/-- A034974: Number of divisors of binomial(n, floor(n/2)), the terms of A001405.

Offset 1, canonical program `A034974.P7253154564856362011`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034974 (n : ℕ) : ℤ :=
  A034974.P7253154564856362011.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034974.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035116.P9275486073209873569

`A000005(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A035116.P9275486073209873569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2

end

end A035116.P9275486073209873569

noncomputable section

/-- A035116: a(n) = tau(n)^2, where tau(n) = A000005(n).

Offset 1, canonical program `A035116.P9275486073209873569`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)²` (program `A035116.P9275486073209873569`, by `A035116.P9275486073209873569.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A035116 (n : ℕ) : ℤ :=
  A035116.P9275486073209873569.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)²` (program `A035116.P9275486073209873569`, by `A035116.P9275486073209873569.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A035116.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A035191.P4075086936734830837

`A000005(A038502(n+1))`
-/

namespace A035191.P4075086936734830837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A038502 (n + 1)).toNat

end

end A035191.P4075086936734830837

noncomputable section

/-- A035191: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 9.

Offset 1, canonical program `A035191.P4075086936734830837`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035191 (n : ℕ) : ℤ :=
  A035191.P4075086936734830837.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035191.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035207.P10094144340329401523

`A000005(5*(n+1))-A000005(n+1)`
-/

namespace A035207.P10094144340329401523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * (n + 1)) - A000005 (n + 1)

end

end A035207.P10094144340329401523

noncomputable section

/-- A035207: Coefficients in expansion of Dirichlet series Product_p (1 - (Kronecker(m,p) + 1)*p^(-s) + Kronecker(m,p)*p^(-2s))^(-1) for m = 25.

Offset 1, canonical program `A035207.P10094144340329401523`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035207 (n : ℕ) : ℤ :=
  A035207.P10094144340329401523.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035207.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A036450.P17654615826854850628

`A000005(A000005(A000005(n+1)))`
-/

namespace A036450.P17654615826854850628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A000005 (n + 1)).toNat).toNat

end

end A036450.P17654615826854850628

noncomputable section

/-- A036450: a(n) = d(d(d(n))), the 3rd iterate of the number-of-divisors function with an initial value of n.

Offset 1, canonical program `A036450.P17654615826854850628`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036450 (n : ℕ) : ℤ :=
  A036450.P17654615826854850628.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036450.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037852.P11291151360236801937

`A000005(n+1)+A176040(n+1)`
-/

namespace A037852.P11291151360236801937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A176040 (n + 1)

end

end A037852.P11291151360236801937

noncomputable section

/-- A037852: Number of normal subgroups of dihedral group with 2n elements.

Offset 1, canonical program `A037852.P11291151360236801937`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037852 (n : ℕ) : ℤ :=
  A037852.P11291151360236801937.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037852.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038040.P16512896840577774730

`(n+1)*A000005(n+1)`
-/

namespace A038040.P16512896840577774730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (n + 1)

end

end A038040.P16512896840577774730

noncomputable section

/-- A038040: a(n) = n*d(n), where d(n) = number of divisors of n (A000005).

Offset 1, canonical program `A038040.P16512896840577774730`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038040 (n : ℕ) : ℤ :=
  A038040.P16512896840577774730.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038040.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A045763.P9156243808986750239

`n+2-A000005(n+1)-A000010(n+1)`
-/

namespace A045763.P9156243808986750239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A000005 (n + 1) - A000010 (n + 1)

end

end A045763.P9156243808986750239

noncomputable section

/-- A045763: Number of numbers "unrelated to n": m < n such that m is neither a divisor of n nor relatively prime to n.

Offset 1, canonical program `A045763.P9156243808986750239`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045763 (n : ℕ) : ℤ :=
  A045763.P9156243808986750239.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045763.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046520.P408125302691526791

`A000203(n+1)-A000010(n+1)-A000005(n+1)`
-/

namespace A046520.P408125302691526791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000010 (n + 1) - A000005 (n + 1)

end

end A046520.P408125302691526791

noncomputable section

/-- A046520: a(n) = (sum of divisors of n) - phi(n) - (number of divisors of n).

Offset 1, canonical program `A046520.P408125302691526791`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046520 (n : ℕ) : ℤ :=
  A046520.P408125302691526791.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046520.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046522.P2243799263287364353

`2*floor(sqrt(n+1))-A000005(n+1)`
-/

namespace A046522.P2243799263287364353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.sqrt (n + 1) : ℤ) - A000005 (n + 1)

end

end A046522.P2243799263287364353

noncomputable section

/-- A046522: a(n) = 2*floor(sqrt(n)) - d(n), where d(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A046522.P2243799263287364353`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046522 (n : ℕ) : ℤ :=
  A046522.P2243799263287364353.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046522.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046798.P1283499417333976298

`A000005(2^n+1)`
-/

namespace A046798.P1283499417333976298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 ^ n + 1)

end

end A046798.P1283499417333976298

noncomputable section

/-- A046798: Number of divisors of 2^n + 1.

Offset 0, canonical program `A046798.P1283499417333976298`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046798 (n : ℕ) : ℤ :=
  A046798.P1283499417333976298.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046798.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046801.P9484727387141696253

`A000005(2^(n+1)-1)`
-/

namespace A046801.P9484727387141696253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 ^ (n + 1) - 1)

end

end A046801.P9484727387141696253

noncomputable section

/-- A046801: Number of divisors of 2^n-1.

Offset 1, canonical program `A046801.P9484727387141696253`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046801 (n : ℕ) : ℤ :=
  A046801.P9484727387141696253.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046801.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046951.P12586408086602964063

`A000005(A000188(n+1))`
-/

namespace A046951.P12586408086602964063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000188 (n + 1)).toNat

end

end A046951.P12586408086602964063

noncomputable section

/-- A046951: a(n) is the number of squares dividing n.

Offset 1, canonical program `A046951.P12586408086602964063`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046951 (n : ℕ) : ℤ :=
  A046951.P12586408086602964063.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046951.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048105.P14513846835403787716

`A000005(n+1)-A034444(n+1)`
-/

namespace A048105.P14513846835403787716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A034444 (n + 1)

end

end A048105.P14513846835403787716

noncomputable section

/-- A048105: Number of non-unitary divisors of n.

Offset 1, canonical program `A048105.P14513846835403787716`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048105 (n : ℕ) : ℤ :=
  A048105.P14513846835403787716.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048105.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048106.P2251062442645378634

`2^(1+A001221(n+1))-A000005(n+1)`
-/

namespace A048106.P2251062442645378634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (1 + A001221 (n + 1) : ℤ) - (A000005 (n + 1) : ℚ)

end

end A048106.P2251062442645378634

noncomputable section

/-- A048106: Number of unitary divisors of n (A034444) - number of non-unitary divisors of n (A048105).

Offset 1, canonical program `A048106.P2251062442645378634`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048106 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048106.P2251062442645378634.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048106.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048570.P17125824842376526747

`A000005(A007318(n))`
-/

namespace A048570.P17125824842376526747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007318 n).toNat

end

end A048570.P17125824842376526747

noncomputable section

/-- A048570: Triangle T(n,k) = number of divisors of binomial(n,k).

Offset 0, canonical program `A048570.P17125824842376526747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048570 (n : ℕ) : ℤ :=
  A048570.P17125824842376526747.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048570.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048691.P3815437841091875311

`A000005((n+1)²)`
-/

namespace A048691.P3815437841091875311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1) ^ 2)

end

end A048691.P3815437841091875311

noncomputable section

/-- A048691: a(n) = d(n^2), where d(k) = A000005(k) is the number of divisors of k.

Offset 1, canonical program `A048691.P3815437841091875311`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048691 (n : ℕ) : ℤ :=
  A048691.P3815437841091875311.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048691.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048784.P11824088214636792720

`A000005(C(2*n, n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048784.P11824088214636792720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose (2 * n) n)

end

end A048784.P11824088214636792720

noncomputable section

/-- A048784: a(n) = tau(binomial(2*n,n)), where tau = number of divisors (A000005).

Offset 0, canonical program `A048784.P11824088214636792720`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(C(2*n, n))` (program `A048784.P11824088214636792720`, by `A048784.P11824088214636792720.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A048784 (n : ℕ) : ℤ :=
  A048784.P11824088214636792720.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(C(2*n, n))` (program `A048784.P11824088214636792720`, by `A048784.P11824088214636792720.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A048784.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A049234.P3422205690596115663

`A000005(A052147(n+1))`
-/

namespace A049234.P3422205690596115663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A052147 (n + 1)).toNat

end

end A049234.P3422205690596115663

noncomputable section

/-- A049234: Number of divisors of prime(n) + 2.

Offset 1, canonical program `A049234.P3422205690596115663`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049234 (n : ℕ) : ℤ :=
  A049234.P3422205690596115663.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049234.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049238.P1185425134299913023

`A000005(A040976(n+2))`
-/

namespace A049238.P1185425134299913023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A040976 (n + 2)).toNat

end

end A049238.P1185425134299913023

noncomputable section

/-- A049238: a(n) is the number of divisors of prime(n) - 2.

Offset 2, canonical program `A049238.P1185425134299913023`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049238 (n : ℕ) : ℤ :=
  A049238.P1185425134299913023.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049238.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049820.P9428372222244335888

`n+1-A000005(n+1)`
-/

namespace A049820.P9428372222244335888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000005 (n + 1)

end

end A049820.P9428372222244335888

noncomputable section

/-- A049820: a(n) = n - d(n), where d(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A049820.P9428372222244335888`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A049820.anchor (n : ℕ) (hn : 1 ≤ n) : A049820 n = (n : ℤ) - (n.divisors.card : ℤ)` in `Proof.A049.A049820`. -/
def A049820 (n : ℕ) : ℤ :=
  A049820.P9428372222244335888.a (n - 1)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A049820.anchor (n : ℕ) (hn : 1 ≤ n) : A049820 n = (n : ℤ) - (n.divisors.card : ℤ)` in `Proof.A049.A049820`. -/
def A049820.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051194.P17118644438746036718

`A000005(A050873(n+1))`
-/

namespace A051194.P17118644438746036718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A050873 (n + 1)).toNat

end

end A051194.P17118644438746036718

noncomputable section

/-- A051194: Triangular array T read by rows: T(n,k) = number of positive integers that divide both n and k.

Offset 1, canonical program `A051194.P17118644438746036718`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051194 (n : ℕ) : ℤ :=
  A051194.P17118644438746036718.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051194.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051271.P13278558174722187888

`A000005(A002110(n+1))+A000010(A002110(n+1))`
-/

namespace A051271.P13278558174722187888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002110 (n + 1)).toNat + A000010 (A002110 (n + 1)).toNat

end

end A051271.P13278558174722187888

noncomputable section

/-- A051271: Number of numbers either relatively prime to or divisors of primorial number(n).

Offset 1, canonical program `A051271.P13278558174722187888`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051271 (n : ℕ) : ℤ :=
  A051271.P13278558174722187888.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051271.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051950.P1558606958145203364

`A000005(n+2)-A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051950.P1558606958145203364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2) - A000005 (n + 1)

end

end A051950.P1558606958145203364

noncomputable section

/-- A051950: Differences between values of tau(n) (A000005): a(n) = tau(n)-tau(n-1).

Offset 2, canonical program `A051950.P1558606958145203364`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+2)-A000005(n+1)` (program `A051950.P1558606958145203364`, by `A051950.P1558606958145203364.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A051950 (n : ℕ) : ℤ :=
  A051950.P1558606958145203364.a (n - 2)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+2)-A000005(n+1)` (program `A051950.P1558606958145203364`, by `A051950.P1558606958145203364.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A051950.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A054008.P12646982696001564694

`(n+1)%A000005(n+1)`
-/

namespace A054008.P12646982696001564694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000005 (n + 1))

end

end A054008.P12646982696001564694

noncomputable section

/-- A054008: n read modulo (number of divisors of n).

Offset 1, canonical program `A054008.P12646982696001564694`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054008 (n : ℕ) : ℤ :=
  A054008.P12646982696001564694.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054008.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054009.P16648506082513592123

`(n+2)%(A000005(n+2)-1)`
-/

namespace A054009.P16648506082513592123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A000005 (n + 2) - 1)

end

end A054009.P16648506082513592123

noncomputable section

/-- A054009: n read modulo (number of proper divisors of n).

Offset 2, canonical program `A054009.P16648506082513592123`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054009 (n : ℕ) : ℤ :=
  A054009.P16648506082513592123.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054009.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054014.P1187298453451747541

`A048050(n+1)%A000005(n+1)`
-/

namespace A054014.P1187298453451747541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048050 (n + 1)) (A000005 (n + 1))

end

end A054014.P1187298453451747541

noncomputable section

/-- A054014: Chowla function of n read modulo (the number of divisors of n).

Offset 1, canonical program `A054014.P1187298453451747541`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054014 (n : ℕ) : ℤ :=
  A054014.P1187298453451747541.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054014.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054025.P3713677026187420569

`A000203(n+1)%A000005(n+1)`
-/

namespace A054025.P3713677026187420569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A000005 (n + 1))

end

end A054025.P3713677026187420569

noncomputable section

/-- A054025: Sum of divisors of n read modulo (number of divisors of n).

Offset 1, canonical program `A054025.P3713677026187420569`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054025 (n : ℕ) : ℤ :=
  A054025.P3713677026187420569.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054025.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055993.P16266584228034744191

`A000005(A055772(n+1))`
-/

namespace A055993.P16266584228034744191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A055772 (n + 1)).toNat

end

end A055993.P16266584228034744191

noncomputable section

/-- A055993: Number of square divisors of n!.

Offset 1, canonical program `A055993.P16266584228034744191`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055993 (n : ℕ) : ℤ :=
  A055993.P16266584228034744191.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055993.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056548.P13265841583646913387

`∑{#}[n-1, A000005(n+#)]`
-/

namespace A056548.P13265841583646913387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A000005 (n + k)

end

end A056548.P13265841583646913387

noncomputable section

/-- A056548: a(n) = Sum_{k>=1} round(n/k) where round(1/2) = 0.

Offset 0, canonical program `A056548.P13265841583646913387`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056548 (n : ℕ) : ℤ :=
  A056548.P13265841583646913387.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056548.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A056793.P8595197413582490209

`A000005(A003418(n+1))`
-/

namespace A056793.P8595197413582490209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003418 (n + 1)).toNat

end

end A056793.P8595197413582490209

noncomputable section

/-- A056793: Number of divisors of lcm(1..n).

Offset 1, canonical program `A056793.P8595197413582490209`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056793 (n : ℕ) : ℤ :=
  A056793.P8595197413582490209.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056793.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056924.P8846060015044098494

`floor(A000005(n+1)/2)`
-/

namespace A056924.P8846060015044098494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (n + 1) : ℚ) / 2⌋

end

end A056924.P8846060015044098494

noncomputable section

/-- A056924: Number of divisors of n that are smaller than sqrt(n).

Offset 1, canonical program `A056924.P8846060015044098494`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056924 (n : ℕ) : ℤ :=
  A056924.P8846060015044098494.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056924.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A058060.P4447355735283951934

`A001221(A000005(n+1))`
-/

namespace A058060.P4447355735283951934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000005 (n + 1)).toNat

end

end A058060.P4447355735283951934

noncomputable section

/-- A058060: Number of distinct prime factors of d(n), the number of divisors of n.

Offset 1, canonical program `A058060.P4447355735283951934`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058060 (n : ℕ) : ℤ :=
  A058060.P4447355735283951934.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058060.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A058061.P15238060395017308637

`A001222(A000005(n+1))`
-/

namespace A058061.P15238060395017308637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000005 (n + 1)).toNat

end

end A058061.P15238060395017308637

noncomputable section

/-- A058061: Number of prime factors (counted with multiplicity) of d(n), the number of divisors of n.

Offset 1, canonical program `A058061.P15238060395017308637`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058061 (n : ℕ) : ℤ :=
  A058061.P15238060395017308637.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058061.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060724.P14364815665599411484

`∑{#}[n, A000005(gcd(#+1, n+1))²]`
-/

namespace A060724.P14364815665599411484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000005 (Nat.gcd (k + 1) (n + 1)) ^ 2

end

end A060724.P14364815665599411484

noncomputable section

/-- A060724: Number of subgroups of the group C_n X C_n (where C_n is the cyclic group of order n).

Offset 1, canonical program `A060724.P14364815665599411484`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060724 (n : ℕ) : ℤ :=
  A060724.P14364815665599411484.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060724.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060778.P264232021939492228

`gcd(A000005(n+2), A000005(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A060778.P264232021939492228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 2)) (A000005 (n + 1))

end

end A060778.P264232021939492228

noncomputable section

/-- A060778: a(n) = gcd(tau(n+1), tau(n)), where tau = A000005.

Offset 1, canonical program `A060778.P264232021939492228`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000005(n+2), A000005(n+1))` (program `A060778.P264232021939492228`, by `A060778.P264232021939492228.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A060778 (n : ℕ) : ℤ :=
  (A060778.P264232021939492228.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000005(n+2), A000005(n+1))` (program `A060778.P264232021939492228`, by `A060778.P264232021939492228.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A060778.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A060779.P6742782322133404121

`lcm(A000005(n+2), A000005(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A060779.P6742782322133404121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (n + 2)) (A000005 (n + 1))

end

end A060779.P6742782322133404121

noncomputable section

/-- A060779: a(n) = lcm(tau(n+1), tau(n)), where tau = A000005.

Offset 1, canonical program `A060779.P6742782322133404121`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(A000005(n+2), A000005(n+1))` (program `A060779.P6742782322133404121`, by `A060779.P6742782322133404121.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A060779 (n : ℕ) : ℤ :=
  (A060779.P6742782322133404121.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(A000005(n+2), A000005(n+1))` (program `A060779.P6742782322133404121`, by `A060779.P6742782322133404121.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A060779.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A061391.P7175820142030662866

`∑{d}[n+1, A000005(#^3)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A061391.P7175820142030662866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 (d ^ 3)

end

end A061391.P7175820142030662866

noncomputable section

/-- A061391: a(n) = t(n,3) = Sum_{d|n} tau(d^3), where tau(n) = number of divisors of n, cf. A000005.

Offset 1, canonical program `A061391.P7175820142030662866`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A000005(#^3)]` (program `A061391.P7175820142030662866`, by `A061391.P7175820142030662866.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A061391 (n : ℕ) : ℤ :=
  A061391.P7175820142030662866.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A000005(#^3)]` (program `A061391.P7175820142030662866`, by `A061391.P7175820142030662866.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A061391.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A061468.P5735709615131522244

`A000005(n+1)+A000010(n+1)`
-/

namespace A061468.P5735709615131522244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A000010 (n + 1)

end

end A061468.P5735709615131522244

noncomputable section

/-- A061468: a(n) = d(n) + phi(n), where d(n) is the number of divisors (A000005) and phi(n) is Euler's totient function (A000010).

Offset 1, canonical program `A061468.P5735709615131522244`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061468 (n : ℕ) : ℤ :=
  A061468.P5735709615131522244.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061468.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061502.P4531479721918010964

`∑{#}[n, A000005((#+1)²)*floor((n+1)/(#+1))]`
-/

namespace A061502.P4531479721918010964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000005 ((k + 1) ^ 2) * ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋

end

end A061502.P4531479721918010964

noncomputable section

/-- A061502: a(n) = Sum_{k<=n} tau(k)^2, where tau = number of divisors function A000005.

Offset 1, canonical program `A061502.P4531479721918010964`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061502 (n : ℕ) : ℤ :=
  A061502.P4531479721918010964.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061502.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062011.P17525320077853469406

`2*A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A062011.P17525320077853469406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (n + 1)

end

end A062011.P17525320077853469406

noncomputable section

/-- A062011: a(n) = 2*tau(n) = 2*A000005(n).

Offset 1, canonical program `A062011.P17525320077853469406`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000005(n+1)` (program `A062011.P17525320077853469406`, by `A062011.P17525320077853469406.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A062011 (n : ℕ) : ℤ :=
  A062011.P17525320077853469406.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000005(n+1)` (program `A062011.P17525320077853469406`, by `A062011.P17525320077853469406.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A062011.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A062068.P2815547987536140537

`A000005(A000203(n+1))`
-/

namespace A062068.P2815547987536140537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (n + 1)).toNat

end

end A062068.P2815547987536140537

noncomputable section

/-- A062068: a(n) = d(sigma(n)), where d(k) is the number of divisors function (A000005) and sigma(k) is the sum of divisor function (A000203).

Offset 1, canonical program `A062068.P2815547987536140537`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062068 (n : ℕ) : ℤ :=
  A062068.P2815547987536140537.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062068.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062069.P14373188164258229122

`A000203(A000005(n+1))`
-/

namespace A062069.P14373188164258229122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000005 (n + 1)).toNat

end

end A062069.P14373188164258229122

noncomputable section

/-- A062069: a(n) = sigma(d(n)), where d(k) is the number of divisors function (A000005) and sigma(k) is the sum of divisors function (A000203).

Offset 1, canonical program `A062069.P14373188164258229122`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062069 (n : ℕ) : ℤ :=
  A062069.P14373188164258229122.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062069.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062249.P5473932307129171226

`n+1+A000005(n+1)`
-/

namespace A062249.P5473932307129171226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A000005 (n + 1)

end

end A062249.P5473932307129171226

noncomputable section

/-- A062249: a(n) = n + d(n), where d(n) = number of divisors of n, cf. A000005.

Offset 1, canonical program `A062249.P5473932307129171226`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062249 (n : ℕ) : ℤ :=
  A062249.P5473932307129171226.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062249.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062355.P11902626262927596143

`A000005(n+1)*A000010(n+1)`
-/

namespace A062355.P11902626262927596143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000010 (n + 1)

end

end A062355.P11902626262927596143

noncomputable section

/-- A062355: a(n) = d(n) * phi(n), where d(n) is the number of divisors function.

Offset 1, canonical program `A062355.P11902626262927596143`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062355 (n : ℕ) : ℤ :=
  A062355.P11902626262927596143.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062355.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062358.P16688096118729418345

`(n+1)!/A000005(n+1)`
-/

namespace A062358.P16688096118729418345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A062358.P16688096118729418345

noncomputable section

/-- A062358: a(n) = n! / d(n), where d(n) is the number of divisors of n.

Offset 1, canonical program `A062358.P16688096118729418345`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062358 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A062358.P16688096118729418345.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062358.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062367.P6945717950428540145

`∑{d}[n+1, A000005(#)²]`
-/

namespace A062367.P6945717950428540145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d ^ 2

end

end A062367.P6945717950428540145

noncomputable section

/-- A062367: Multiplicative with a(p^e) = (e+1)*(e+2)*(2*e+3)/6.

Offset 1, canonical program `A062367.P6945717950428540145`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062367 (n : ℕ) : ℤ :=
  A062367.P6945717950428540145.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062367.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062369.P1448251453459129178

`∑{d}[n+1, #*A000005((n+1)/#)²]`
-/

namespace A062369.P1448251453459129178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ 2

end

end A062369.P1448251453459129178

noncomputable section

/-- A062369: Dirichlet convolution of n and tau^2(n).

Offset 1, canonical program `A062369.P1448251453459129178`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062369 (n : ℕ) : ℤ :=
  A062369.P1448251453459129178.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062369.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062370.P2152810718572047867

`∑{d}[n+1, A000005(#²)*A000203(#)]`
-/

namespace A062370.P2152810718572047867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 (d ^ 2) * A000203 d

end

end A062370.P2152810718572047867

noncomputable section

/-- A062370: a(n) = Sum_{i|n,j|n} sigma(i)*sigma(j)/sigma(gcd(i,j)), where sigma(n) = sum of divisors of n.

Offset 1, canonical program `A062370.P2152810718572047867`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062370 (n : ℕ) : ℤ :=
  A062370.P2152810718572047867.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062370.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062380.P11776332830920576052

`∑{#}[n, A000005(((n+1)/gcd(#+1, n+1))²)]`
-/

namespace A062380.P11776332830920576052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000005 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (Nat.gcd (k + 1) (n + 1) : ℚ)) ^ 2)).toNat

end

end A062380.P11776332830920576052

noncomputable section

/-- A062380: a(n) = Sum_{i|n,j|n} phi(i)*phi(j)/phi(gcd(i,j)), where phi is Euler totient function.

Offset 1, canonical program `A062380.P11776332830920576052`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062380 (n : ℕ) : ℤ :=
  A062380.P11776332830920576052.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062380.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062558.P7608322866353480072

`A000005(n+1)+A000035(n+1)`
-/

namespace A062558.P7608322866353480072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A000035 (n + 1)

end

end A062558.P7608322866353480072

noncomputable section

/-- A062558: Number of nonisomorphic cyclic subgroups of dihedral group with 2n elements.

Offset 1, canonical program `A062558.P7608322866353480072`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062558 (n : ℕ) : ℤ :=
  A062558.P7608322866353480072.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062558.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062816.P6661153086151831594

`A000010(n+1)*A000005(n+1)-2*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A062816.P6661153086151831594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A000005 (n + 1) - (2 * (n + 1) : ℤ)

end

end A062816.P6661153086151831594

noncomputable section

/-- A062816: a(n) = phi(n)*tau(n) - 2n = A000010(n)*A000005(n) - 2*n.

Offset 1, canonical program `A062816.P6661153086151831594`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)*A000005(n+1)-2*(n+1)` (program `A062816.P6661153086151831594`, by `A062816.P6661153086151831594.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A062816 (n : ℕ) : ℤ :=
  A062816.P6661153086151831594.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)*A000005(n+1)-2*(n+1)` (program `A062816.P6661153086151831594`, by `A062816.P6661153086151831594.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A062816.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A062821.P4034696018881516945

`A000005(A000010(n+1))`
-/

namespace A062821.P4034696018881516945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (n + 1)).toNat

end

end A062821.P4034696018881516945

noncomputable section

/-- A062821: Number of divisors of totient of n.

Offset 1, canonical program `A062821.P4034696018881516945`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062821 (n : ℕ) : ℤ :=
  A062821.P4034696018881516945.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062821.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062833.P4238056213169230346

`2*(n+1)!/A000005(n+1)`
-/

namespace A062833.P4238056213169230346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.factorial (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A062833.P4238056213169230346

noncomputable section

/-- A062833: a(n) = 2 * n! / number of divisors of n.

Offset 1, canonical program `A062833.P4238056213169230346`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062833 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A062833.P4238056213169230346.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062833.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062949.P13251923550202936897

`∑{d}[n+1, A000010(#)*A000005(#)]`
-/

namespace A062949.P13251923550202936897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A000005 d

end

end A062949.P13251923550202936897

noncomputable section

/-- A062949: Multiplicative with a(p^e) = ((e+1)*p^(e+1)-(e+2)*p^e+1)/(p-1).

Offset 1, canonical program `A062949.P13251923550202936897`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062949 (n : ℕ) : ℤ :=
  A062949.P13251923550202936897.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062949.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063038.P10011791712976178041

`A000093(n+1)-A000005(n+1)`
-/

namespace A063038.P10011791712976178041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (n + 1) - A000005 (n + 1)

end

end A063038.P10011791712976178041

noncomputable section

/-- A063038: a(n) = floor(n*sqrt(n)) - d(n), where d(n) is the number of divisors function.

Offset 1, canonical program `A063038.P10011791712976178041`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063038 (n : ℕ) : ℤ :=
  A063038.P10011791712976178041.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063038.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063070.P5416196495209204381

`A000010(n+1)-A000005(n+1)`
-/

namespace A063070.P5416196495209204381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A000005 (n + 1)

end

end A063070.P5416196495209204381

noncomputable section

/-- A063070: a(n) = phi(n) - d(n), where d(n) is the number of divisors function (A000005).

Offset 1, canonical program `A063070.P5416196495209204381`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063070 (n : ℕ) : ℤ :=
  A063070.P5416196495209204381.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063070.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A063375.P4586247262053786237

`A000005(A000045(n+1))`
-/

namespace A063375.P4586247262053786237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000045 (n + 1)).toNat

end

end A063375.P4586247262053786237

noncomputable section

/-- A063375: Number of divisors of Fibonacci(n).

Offset 1, canonical program `A063375.P4586247262053786237`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063375 (n : ℕ) : ℤ :=
  A063375.P4586247262053786237.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063375.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063440.P18217187952549154344

`A000005((n+1)*(n+2)/2)`
-/

namespace A063440.P18217187952549154344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (((n + 1) * (n + 2) : ℚ) / 2)).toNat

end

end A063440.P18217187952549154344

noncomputable section

/-- A063440: Number of divisors of n-th triangular number.

Offset 1, canonical program `A063440.P18217187952549154344`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063440 (n : ℕ) : ℤ :=
  A063440.P18217187952549154344.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063440.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063715.P3803731739422137136

`∑{d}[(n+1)², A000005((n+1+#)²)]`
-/

namespace A063715.P3803731739422137136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 ((n + 1 + d) ^ 2)

end

end A063715.P3803731739422137136

noncomputable section

/-- A063715: Number of solutions (r,u,s,t) in positive integers to the system of equations 1/r + 1/u = 1/n, 1/s + 1/t = 1/u.

Offset 1, canonical program `A063715.P3803731739422137136`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063715 (n : ℕ) : ℤ :=
  A063715.P3803731739422137136.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063715.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064840.P1031066778155785146

`A000005(n+1)*A000203(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064840.P1031066778155785146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000203 (n + 1)

end

end A064840.P1031066778155785146

noncomputable section

/-- A064840: a(n) = tau(n)*sigma(n).

Offset 1, canonical program `A064840.P1031066778155785146`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)*A000203(n+1)` (program `A064840.P1031066778155785146`, by `A064840.P1031066778155785146.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A064840 (n : ℕ) : ℤ :=
  A064840.P1031066778155785146.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)*A000203(n+1)` (program `A064840.P1031066778155785146`, by `A064840.P1031066778155785146.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A064840.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064950.P2151914887466212463

`∑{d}[n+1, #*A000005(#²)]`
-/

namespace A064950.P2151914887466212463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000005 (d ^ 2)

end

end A064950.P2151914887466212463

noncomputable section

/-- A064950: a(n) = Sum_{i|n, j|n} lcm(i,j).

Offset 1, canonical program `A064950.P2151914887466212463`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064950 (n : ℕ) : ℤ :=
  A064950.P2151914887466212463.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064950.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065608.P12445239359989980431

`A000203(n+1)-A000005(n+1)`
-/

namespace A065608.P12445239359989980431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000005 (n + 1)

end

end A065608.P12445239359989980431

noncomputable section

/-- A065608: Sum of divisors of n minus the number of divisors of n.

Offset 1, canonical program `A065608.P12445239359989980431`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065608 (n : ℕ) : ℤ :=
  A065608.P12445239359989980431.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065608.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065814.P17060691313472206262

`A000005(n+1)²-A000005((n+1)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065814.P17060691313472206262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2 - A000005 ((n + 1) ^ 2)

end

end A065814.P17060691313472206262

noncomputable section

/-- A065814: a(n) = tau(n)^2 - tau(n^2), where tau(n) = A000005(n).

Offset 1, canonical program `A065814.P17060691313472206262`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)²-A000005((n+1)²)` (program `A065814.P17060691313472206262`, by `A065814.P17060691313472206262.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A065814 (n : ℕ) : ℤ :=
  A065814.P17060691313472206262.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)²-A000005((n+1)²)` (program `A065814.P17060691313472206262`, by `A065814.P17060691313472206262.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A065814.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A066446.P5739828571146208619

`A000217(A000005(n+1)-1)`
-/

namespace A066446.P5739828571146208619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000005 (n + 1) - 1).toNat

end

end A066446.P5739828571146208619

noncomputable section

/-- A066446: Number of unordered divisor pairs of n.

Offset 1, canonical program `A066446.P5739828571146208619`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066446 (n : ℕ) : ℤ :=
  A066446.P5739828571146208619.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066446.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066620.P11508911738246050856

`(A000005((n+1)^3)-3*A000005(n+1)+2)/6`
-/

namespace A066620.P11508911738246050856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 ((n + 1) ^ 3) - 3 * A000005 (n + 1) + 2 : ℚ) / 6

end

end A066620.P11508911738246050856

noncomputable section

/-- A066620: Number of unordered triples of distinct pairwise coprime divisors of n.

Offset 1, canonical program `A066620.P11508911738246050856`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066620 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A066620.P11508911738246050856.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066620.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066728.P7235498834417940186

`A000005((n+1)*(n+3))/2-1`
-/

namespace A066728.P7235498834417940186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 ((n + 1) * (n + 3)) : ℚ) / 2 - 1

end

end A066728.P7235498834417940186

noncomputable section

/-- A066728: a(n) is the number of integers of the form (n+k+n*k)/(n-k) for k = 1,2,...,n-1.

Offset 1, canonical program `A066728.P7235498834417940186`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066728 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A066728.P7235498834417940186.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066728.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066843.P18056148427984289734

`a(n-1)*A000005(n)` with `a(0)=1`
-/

namespace A066843.P18056148427984289734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000005 n

end

end A066843.P18056148427984289734

noncomputable section

/-- A066843: a(n) = Product_{k=1..n} d(k); d(k) = A000005(k) is the number of positive divisors of k.

Offset 0, canonical program `A066843.P18056148427984289734`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066843 (n : ℕ) : ℤ :=
  A066843.P18056148427984289734.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066843.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067292.P1668061141920978615

`A000040(n+1)-(n+1)*A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067292.P1668061141920978615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (n + 1 : ℤ) * A000005 (n + 1)

end

end A067292.P1668061141920978615

noncomputable section

/-- A067292: a(n) = prime(n)-n*tau(n) where tau(n) is the number of divisors of n.

Offset 1, canonical program `A067292.P1668061141920978615`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)-(n+1)*A000005(n+1)` (program `A067292.P1668061141920978615`, by `A067292.P1668061141920978615.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A067292 (n : ℕ) : ℤ :=
  A067292.P1668061141920978615.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)-(n+1)*A000005(n+1)` (program `A067292.P1668061141920978615`, by `A067292.P1668061141920978615.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A067292.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A067349.P12324079268096477612

`A000005(A000010(n+1)+A000203(n+1))`
-/

namespace A067349.P12324079268096477612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (n + 1) + A000203 (n + 1)).toNat

end

end A067349.P12324079268096477612

noncomputable section

/-- A067349: Number of divisors of sigma(n)+phi(n).

Offset 1, canonical program `A067349.P12324079268096477612`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067349 (n : ℕ) : ℤ :=
  A067349.P12324079268096477612.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067349.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068903.P12295161243239988693

`C(A000005(n+1), A001221(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A068903.P12295161243239988693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (n + 1)).toNat (A001221 (n + 1)).toNat

end

end A068903.P12295161243239988693

noncomputable section

/-- A068903: Binomial(tau(n),omega(n)), where tau(n) is the number of divisors of n (A000005) and omega the number of distinct prime factors (A001221).

Offset 1, canonical program `A068903.P12295161243239988693`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A000005(n+1), A001221(n+1))` (program `A068903.P12295161243239988693`, by `A068903.P12295161243239988693.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A068903 (n : ℕ) : ℤ :=
  (A068903.P12295161243239988693.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A000005(n+1), A001221(n+1))` (program `A068903.P12295161243239988693`, by `A068903.P12295161243239988693.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A068903.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A068904.P11299921973537422911

`C(A000203(n+1), A000005(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A068904.P11299921973537422911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000203 (n + 1)).toNat (A000005 (n + 1)).toNat

end

end A068904.P11299921973537422911

noncomputable section

/-- A068904: a(n) = binomial(sigma(n),tau(n)), where sigma(n) is the sum and tau(n) the number of divisors of n (A000203, A000005).

Offset 1, canonical program `A068904.P11299921973537422911`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A000203(n+1), A000005(n+1))` (program `A068904.P11299921973537422911`, by `A068904.P11299921973537422911.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A068904 (n : ℕ) : ℤ :=
  (A068904.P11299921973537422911.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A000203(n+1), A000005(n+1))` (program `A068904.P11299921973537422911`, by `A068904.P11299921973537422911.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A068904.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A068984.P3913925788532137687

`∑{d}[n+1, #*A000005(#)²]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A068984.P3913925788532137687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000005 d ^ 2

end

end A068984.P3913925788532137687

noncomputable section

/-- A068984: a(n) = Sum_{d|n} d*tau(d)^2.

Offset 1, canonical program `A068984.P3913925788532137687`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, #*A000005(#)²]` (program `A068984.P3913925788532137687`, by `A068984.P3913925788532137687.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A068984 (n : ℕ) : ℤ :=
  A068984.P3913925788532137687.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, #*A000005(#)²]` (program `A068984.P3913925788532137687`, by `A068984.P3913925788532137687.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A068984.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A069141.P16616877968455605190

`(n+2)!/(n+1)^(A000005(n+1)-2)`
-/

namespace A069141.P16616877968455605190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℚ) / (n + 1 : ℚ) ^ (A000005 (n + 1) - 2 : ℤ)

end

end A069141.P16616877968455605190

noncomputable section

/-- A069141: a(n) = n^2*(n+1)!/(n^tau(n)) where tau(n) is the number of divisors of n.

Offset 1, canonical program `A069141.P16616877968455605190`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069141 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069141.P16616877968455605190.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069141.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069152.P15886533522229236481

`(n+1)!-(n+2)^A000005(n+2)/(n+2)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069152.P15886533522229236481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) - (n + 2 : ℚ) ^ (A000005 (n + 2) : ℤ) / ((n + 2) ^ 2 : ℚ)

end

end A069152.P15886533522229236481

noncomputable section

/-- A069152: a(n) = (n-1)!-n^tau(n)/n^2.

Offset 2, canonical program `A069152.P15886533522229236481`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069152 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069152.P15886533522229236481.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069152.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069264.P13901458901501386413

`A000005(n+1)*A001222(n+1)/2`
-/

namespace A069264.P13901458901501386413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A001222 (n + 1) : ℚ) / 2

end

end A069264.P13901458901501386413

noncomputable section

/-- A069264: Inverse Moebius transform of bigomega(n).

Offset 1, canonical program `A069264.P13901458901501386413`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069264 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069264.P13901458901501386413.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069264.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069553.P833839346037670753

`(n+1)*(n+1-A000005(n+1)+1)`
-/

namespace A069553.P833839346037670753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - A000005 (n + 1) + 1)

end

end A069553.P833839346037670753

noncomputable section

/-- A069553: Define S(k) to be the sequence of divisors and multiples of k, e.g. S(1) = 1,2,3,4,5... S(2) = 1,2,4,6,8,10,... S(10) = 1,2,5,10,20,30,40,50,...; a(n) = n-th term of the n-th sequence S(n).

Offset 1, canonical program `A069553.P833839346037670753`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069553 (n : ℕ) : ℤ :=
  A069553.P833839346037670753.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069553.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069780.P15483284136396145549

`gcd(A000005((n+1)^3), A000005(n+1))`
-/

namespace A069780.P15483284136396145549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 ((n + 1) ^ 3)) (A000005 (n + 1))

end

end A069780.P15483284136396145549

noncomputable section

/-- A069780: a(n) = gcd(d(n^3), d(n)).

Offset 1, canonical program `A069780.P15483284136396145549`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069780 (n : ℕ) : ℤ :=
  (A069780.P15483284136396145549.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069780.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A069913.P8056426615521579122

`∑{d}[n+1, (#-1)*A000005((n+1)/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069913.P8056426615521579122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1) * A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069913.P8056426615521579122

noncomputable section

/-- A069913: a(n) = Sum_{d|n} (d-1)*tau(n/d).

Offset 1, canonical program `A069913.P8056426615521579122`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, (#-1)*A000005((n+1)/#)]` (program `A069913.P8056426615521579122`, by `A069913.P8056426615521579122.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A069913 (n : ℕ) : ℤ :=
  A069913.P8056426615521579122.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, (#-1)*A000005((n+1)/#)]` (program `A069913.P8056426615521579122`, by `A069913.P8056426615521579122.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A069913.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A070919.P17954277911126135004

`∑{d}[n+1, A000005(#)^3*A008683((n+1)/#)]`
-/

namespace A070919.P17954277911126135004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d ^ 3 * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A070919.P17954277911126135004

noncomputable section

/-- A070919: a(n) = Card{ (x,y,z) | lcm(x,y,z)=n }.

Offset 1, canonical program `A070919.P17954277911126135004`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070919 (n : ℕ) : ℤ :=
  A070919.P17954277911126135004.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070919.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070920.P14461345224939383111

`∑{d}[n+1, A000005(#)^4*A008683((n+1)/#)]`
-/

namespace A070920.P14461345224939383111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d ^ 4 * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A070920.P14461345224939383111

noncomputable section

/-- A070920: a(n) = Card{ (x,y,z,u) | lcm(x,y,z,u)=n }.

Offset 1, canonical program `A070920.P14461345224939383111`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070920 (n : ℕ) : ℤ :=
  A070920.P14461345224939383111.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070920.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070921.P1530389744322270203

`∑{d}[n+1, A000005(#)^5*A008683((n+1)/#)]`
-/

namespace A070921.P1530389744322270203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d ^ 5 * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A070921.P1530389744322270203

noncomputable section

/-- A070921: a(n) = Card{ (x,y,z,u,v) | lcm(x,y,z,u,v)=n }.

Offset 1, canonical program `A070921.P1530389744322270203`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070921 (n : ℕ) : ℤ :=
  A070921.P1530389744322270203.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070921.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071108.P11210016546691817073

`A000005(n+1)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A071108.P11210016546691817073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A000005 (n + 1) * a (n - 1) + a (n - 2)

end

end A071108.P11210016546691817073

noncomputable section

/-- A071108: CONTINUANT transform of {d(n)}, 1, 2, 2, 3, 2, 4, ... (A000005).

Offset 1, canonical program `A071108.P11210016546691817073`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071108 (n : ℕ) : ℤ :=
  A071108.P11210016546691817073.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071108.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072048.P3004576775245362888

`A000005(A005117(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072048.P3004576775245362888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A005117 (n + 1)).toNat

end

end A072048.P3004576775245362888

noncomputable section

/-- A072048: Number of divisors of the squarefree numbers: tau(A005117(n)).

Offset 1, canonical program `A072048.P3004576775245362888`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(A005117(n+1))` (program `A072048.P3004576775245362888`, by `A072048.P3004576775245362888.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A072048 (n : ℕ) : ℤ :=
  A072048.P3004576775245362888.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(A005117(n+1))` (program `A072048.P3004576775245362888`, by `A072048.P3004576775245362888.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A072048.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A072056.P13940639996211056336

`A000005(A072055(n+1))`
-/

namespace A072056.P13940639996211056336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A072055 (n + 1)).toNat

end

end A072056.P13940639996211056336

noncomputable section

/-- A072056: Number of divisors of 2*prime(n)+1.

Offset 1, canonical program `A072056.P13940639996211056336`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072056 (n : ℕ) : ℤ :=
  A072056.P13940639996211056336.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072056.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072695.P4658259756490484901

`lcm(A000005(n+1), A000005((n+1)²))`
-/

namespace A072695.P4658259756490484901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (n + 1)) (A000005 ((n + 1) ^ 2))

end

end A072695.P4658259756490484901

noncomputable section

/-- A072695: a(n) = lcm(d(n^2),d(n)), where d(n) = A000005, the number of divisors of n.

Offset 1, canonical program `A072695.P4658259756490484901`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072695 (n : ℕ) : ℤ :=
  (A072695.P4658259756490484901.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072695.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072696.P2919287904563779489

`lcm(A000005(n+1), A000005((n+1)^3))`
-/

namespace A072696.P2919287904563779489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (n + 1)) (A000005 ((n + 1) ^ 3))

end

end A072696.P2919287904563779489

noncomputable section

/-- A072696: a(n) = lcm(d(n^3), d(n)), where d(n) = A000005, the number of divisors of n.

Offset 1, canonical program `A072696.P2919287904563779489`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072696 (n : ℕ) : ℤ :=
  (A072696.P2919287904563779489.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072696.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073757.P6861480467973211752

`A000005(n+1)+A000010(n+1)-1`
-/

namespace A073757.P6861480467973211752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A000010 (n + 1) - 1

end

end A073757.P6861480467973211752

noncomputable section

/-- A073757: a(n) = d(n) + phi(n) - 1.

Offset 1, canonical program `A073757.P6861480467973211752`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073757 (n : ℕ) : ℤ :=
  A073757.P6861480467973211752.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073757.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073802.P5532415741210097139

`A000005(A009194(n+1))`
-/

namespace A073802.P5532415741210097139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A009194 (n + 1)).toNat

end

end A073802.P5532415741210097139

noncomputable section

/-- A073802: Number of common divisors of n and sigma(n).

Offset 1, canonical program `A073802.P5532415741210097139`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073802 (n : ℕ) : ℤ :=
  A073802.P5532415741210097139.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073802.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073806.P9628583595315297770

`A000005(A001157(n+1))`
-/

namespace A073806.P9628583595315297770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001157 (n + 1)).toNat

end

end A073806.P9628583595315297770

noncomputable section

/-- A073806: Number of divisors of sum of square of divisors.

Offset 1, canonical program `A073806.P9628583595315297770`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073806 (n : ℕ) : ℤ :=
  A073806.P9628583595315297770.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073806.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073807.P6967064192508235977

`A000005(A001158(n+1))`
-/

namespace A073807.P6967064192508235977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001158 (n + 1)).toNat

end

end A073807.P6967064192508235977

noncomputable section

/-- A073807: Number of divisors of sum of cube of divisors.

Offset 1, canonical program `A073807.P6967064192508235977`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073807 (n : ℕ) : ℤ :=
  A073807.P6967064192508235977.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073807.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073808.P17656715201060370419

`A000005(gcd(A000203(n+1), A001157(n+1)))`
-/

namespace A073808.P17656715201060370419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A000203 (n + 1)) (A001157 (n + 1)))

end

end A073808.P17656715201060370419

noncomputable section

/-- A073808: Number of common divisors of sigma_1(n) and sigma_2(n).

Offset 1, canonical program `A073808.P17656715201060370419`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073808 (n : ℕ) : ℤ :=
  A073808.P17656715201060370419.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073808.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A074369.P8450492352750418475

`A000005(A007504(n+1))`
-/

namespace A074369.P8450492352750418475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007504 (n + 1)).toNat

end

end A074369.P8450492352750418475

noncomputable section

/-- A074369: Number of divisors of Sum_{i=1..n} prime(i).

Offset 1, canonical program `A074369.P8450492352750418475`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074369 (n : ℕ) : ℤ :=
  A074369.P8450492352750418475.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074369.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A001659.P12358863397149417246

`∑{#}[n, (-1)^(n-#)*C(n, #)*A000005(#+1)]`
-/

namespace A001659.P12358863397149417246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A000005 (k + 1) : ℚ)

end

end A001659.P12358863397149417246

noncomputable section

/-- A001659: Expansion of bracket function.

Offset 1, canonical program `A001659.P12358863397149417246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A001659 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001659.P12358863397149417246.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A001659.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A007422.P6090757407708890179

`lt[((A000005(n+1)-4)*n)², 2]+1`
-/

namespace A007422.P6090757407708890179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A000005 (n + 1) - 4) * (n : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A007422.P6090757407708890179

noncomputable section

/-- A007422: Multiplicatively perfect numbers j: product of divisors of j is j^2.

Offset 1, canonical program `A007422.P6090757407708890179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007422 (n : ℕ) : ℤ :=
  (A007422.P6090757407708890179.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007422.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A014344.P10374461214958288225

`∑{#}[n, A014342(#+1)*A014342(n-#+1)]`
-/

namespace A014344.P10374461214958288225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A014342 (k + 1) * A014342 ((n : ℤ) - (k : ℤ) + 1).toNat

end

end A014344.P10374461214958288225

noncomputable section

/-- A014344: Four-fold convolution of primes with themselves.

Offset 0, canonical program `A014344.P10374461214958288225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A014344 (n : ℕ) : ℤ :=
  A014344.P10374461214958288225.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A014344.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A019301.P12202991287404582398

`2^n-A019302(n)`
-/

namespace A019301.P12202991287404582398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A019302 n

end

end A019301.P12202991287404582398

noncomputable section

/-- A019301: Binomial transform of Thue-Morse sequence A010059.

Offset 0, canonical program `A019301.P12202991287404582398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A019301 (n : ℕ) : ℤ :=
  A019301.P12202991287404582398.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A019301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020491.P11470953447631525672

`record[gcd(n+1, A000010(n+1)%A000005(n+1))]`
-/

namespace A020491.P11470953447631525672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (A000010 (n + 1)) (A000005 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020491.P11470953447631525672

noncomputable section

/-- A020491: Numbers k such that sigma_0(k) divides phi(k).

Offset 1, canonical program `A020491.P11470953447631525672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020491 (n : ℕ) : ℤ :=
  (A020491.P11470953447631525672.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020491.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A024678.P18114292375164896393

`row(A152527(n+1))-n`
-/

namespace A024678.P18114292375164896393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow (A152527 (n + 1)).toNat : ℤ) - (n : ℤ)

end

end A024678.P18114292375164896393

noncomputable section

/-- A024678: a(n) is the position of (prime(n+1) + prime(n+2))/2 in the ordered nonprimes.

Offset 1, canonical program `A024678.P18114292375164896393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024678 (n : ℕ) : ℤ :=
  A024678.P18114292375164896393.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024678.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A026497.P5491450168355389602

`runs[A293162(n)]`
-/

namespace A026497.P5491450168355389602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A026497.P5491450168355389602

noncomputable section

/-- A026497: a(n) = length of n-th run of identical symbols in A026492.

Offset 1, canonical program `A026497.P5491450168355389602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7272 terms. -/
def A026497 (n : ℕ) : ℤ :=
  (A026497.P5491450168355389602.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7272 terms. -/
def A026497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026499.P4093150224022101121

`runs[A293162(2*n+1)]`
-/

namespace A026499.P4093150224022101121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A026499.P4093150224022101121

noncomputable section

/-- A026499: a(n) = length of n-th run of identical symbols in A026498.

Offset 1, canonical program `A026499.P4093150224022101121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3636 terms. -/
def A026499 (n : ℕ) : ℤ :=
  (A026499.P4093150224022101121.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3636 terms. -/
def A026499.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A027909.P15729517213780400596

`(1+n)*A143927(n)`
-/

namespace A027909.P15729517213780400596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A143927 n

end

end A027909.P15729517213780400596

noncomputable section

/-- A027909: T(2n,n-1), T given by A027907.

Offset 0, canonical program `A027909.P15729517213780400596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A027909 (n : ℕ) : ℤ :=
  A027909.P15729517213780400596.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A027909.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A029879.P15255540095964528569

`A019302(n)+2^n`
-/

namespace A029879.P15255540095964528569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019302 n + (2 ^ n : ℤ)

end

end A029879.P15255540095964528569

noncomputable section

/-- A029879: Binomial transform of Thue-Morse sequence A001285.

Offset 0, canonical program `A029879.P15255540095964528569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A029879 (n : ℕ) : ℤ :=
  A029879.P15255540095964528569.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A029879.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A030626.P13020075489056266396

`eq[8, A000005(n+1)]+1`
-/

namespace A030626.P13020075489056266396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030626.P13020075489056266396

noncomputable section

/-- A030626: Numbers with exactly 8 divisors.

Offset 1, canonical program `A030626.P13020075489056266396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030626 (n : ℕ) : ℤ :=
  (A030626.P13020075489056266396.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030630.P18236272023832021536

`eq[12, A000005(n+1)]+1`
-/

namespace A030630.P18236272023832021536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030630.P18236272023832021536

noncomputable section

/-- A030630: Numbers with 12 divisors.

Offset 1, canonical program `A030630.P18236272023832021536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5091 terms. -/
def A030630 (n : ℕ) : ℤ :=
  (A030630.P18236272023832021536.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5091 terms. -/
def A030630.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A033041.P13039344764442907686

`record[or(1+n, A341691(A341691(n)))]`
-/

namespace A033041.P13039344764442907686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (1 + n : ℤ) (A341691 (A341691 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033041.P13039344764442907686

noncomputable section

/-- A033041: Numbers all of whose base 16 digits are odd.

Offset 1, canonical program `A033041.P13039344764442907686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1097 terms. -/
def A033041 (n : ℕ) : ℤ :=
  A033041.P13039344764442907686.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1097 terms. -/
def A033041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033950.P9371750250849887585

`record[(n+1)/A002878((n+1)%A000005(n+1))]`
-/

namespace A033950.P9371750250849887585
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A002878 (Int.tmod (n + 1 : ℤ) (A000005 (n + 1))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033950.P9371750250849887585

noncomputable section

/-- A033950: Refactorable numbers: number of divisors of k divides k. Also known as tau numbers.

Offset 1, canonical program `A033950.P9371750250849887585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5257 terms. -/
def A033950 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A033950.P9371750250849887585.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5257 terms. -/
def A033950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035004.P15043719525226089971

`A000005(A018252(n+1))`
-/

namespace A035004.P15043719525226089971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A018252 (n + 1)).toNat

end

end A035004.P15043719525226089971

noncomputable section

/-- A035004: Number of divisors of the n-th nonprime.

Offset 1, canonical program `A035004.P15043719525226089971`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035004 (n : ℕ) : ℤ :=
  A035004.P15043719525226089971.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035004.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A035714.P17015648478226489726

`∑[2*A035713(n)]-A035713(n)`
-/

namespace A035714.P17015648478226489726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035713 n

end

end A035714.P17015648478226489726

noncomputable section

/-- A035714: Coordination sequence for 19-dimensional cubic lattice.

Offset 0, canonical program `A035714.P17015648478226489726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035714 (n : ℕ) : ℤ :=
  A035714.P17015648478226489726.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035727.P18218307387999517216

`∑{#}[n, A035711(#)*A035711(n-#)]`
-/

namespace A035727.P18218307387999517216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A035711 k * A035711 (n - k)

end

end A035727.P18218307387999517216

noncomputable section

/-- A035727: Coordination sequence for 32-dimensional cubic lattice.

Offset 0, canonical program `A035727.P18218307387999517216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A035727 (n : ℕ) : ℤ :=
  A035727.P18218307387999517216.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A035727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035731.P5642720262345999562

`∑{#}[n, A035713(#)*A035713(n-#)]`
-/

namespace A035731.P5642720262345999562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A035713 k * A035713 (n - k)

end

end A035731.P5642720262345999562

noncomputable section

/-- A035731: Coordination sequence for 36-dimensional cubic lattice.

Offset 0, canonical program `A035731.P5642720262345999562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A035731 (n : ℕ) : ℤ :=
  A035731.P5642720262345999562.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A035731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035738.P17752026540711242118

`∑[2*A035737(n)]-A035737(n)`
-/

namespace A035738.P17752026540711242118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035737 n

end

end A035738.P17752026540711242118

noncomputable section

/-- A035738: Coordination sequence for 43-dimensional cubic lattice.

Offset 0, canonical program `A035738.P17752026540711242118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1952 terms. -/
def A035738 (n : ℕ) : ℤ :=
  A035738.P17752026540711242118.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1952 terms. -/
def A035738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035739.P11573595438409489286

`∑{#}[n, A035717(#)*A035717(n-#)]`
-/

namespace A035739.P11573595438409489286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A035717 k * A035717 (n - k)

end

end A035739.P11573595438409489286

noncomputable section

/-- A035739: Coordination sequence for 44-dimensional cubic lattice.

Offset 0, canonical program `A035739.P11573595438409489286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A035739 (n : ℕ) : ℤ :=
  A035739.P11573595438409489286.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A035739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035743.P17131833288566115238

`∑[2*A035742(n)]-A035742(n)`
-/

namespace A035743.P17131833288566115238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035742 n

end

end A035743.P17131833288566115238

noncomputable section

/-- A035743: Coordination sequence for 48-dimensional cubic lattice.

Offset 0, canonical program `A035743.P17131833288566115238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1214 terms. -/
def A035743 (n : ℕ) : ℤ :=
  A035743.P17131833288566115238.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1214 terms. -/
def A035743.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A035753.P4090825401291878675

`A035711(2*n)`
-/

namespace A035753.P4090825401291878675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035711 (2 * n)

end

end A035753.P4090825401291878675

noncomputable section

/-- A035753: Coordination sequence for C_16 lattice.

Offset 0, canonical program `A035753.P4090825401291878675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035753 (n : ℕ) : ℤ :=
  A035753.P4090825401291878675.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035755.P17301947102453587029

`A035713(2*n)`
-/

namespace A035755.P17301947102453587029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035713 (2 * n)

end

end A035755.P17301947102453587029

noncomputable section

/-- A035755: Coordination sequence for C_18 lattice.

Offset 0, canonical program `A035755.P17301947102453587029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035755 (n : ℕ) : ℤ :=
  A035755.P17301947102453587029.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035755.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A035779.P10283618986506506502

`A035737(2*n)`
-/

namespace A035779.P10283618986506506502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035737 (2 * n)

end

end A035779.P10283618986506506502

noncomputable section

/-- A035779: Coordination sequence for C_42 lattice.

Offset 0, canonical program `A035779.P10283618986506506502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1091 terms. -/
def A035779 (n : ℕ) : ℤ :=
  A035779.P10283618986506506502.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1091 terms. -/
def A035779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035784.P3505627391424349669

`A035742(2*n)`
-/

namespace A035784.P3505627391424349669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035742 (2 * n)

end

end A035784.P3505627391424349669

noncomputable section

/-- A035784: Coordination sequence for C_47 lattice.

Offset 0, canonical program `A035784.P3505627391424349669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 662 terms. -/
def A035784 (n : ℕ) : ℤ :=
  A035784.P3505627391424349669.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 662 terms. -/
def A035784.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A036434.P3593396346774278777

`1+comp[A000005(n+1)+n]`
-/

namespace A036434.P3593396346774278777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A036434.P3593396346774278777

noncomputable section

/-- A036434: Integers which cannot be written as k+tau(k) for some k.

Offset 1, canonical program `A036434.P3593396346774278777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036434 (n : ℕ) : ℤ :=
  (A036434.P3593396346774278777.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036436.P3368658604629938610

`record[(n+1)*A010052(A000005(n+2))+1]`
-/

namespace A036436.P3368658604629938610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010052 (A000005 (n + 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036436.P3368658604629938610

noncomputable section

/-- A036436: Numbers whose number of divisors is a square.

Offset 1, canonical program `A036436.P3368658604629938610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036436 (n : ℕ) : ℤ :=
  A036436.P3368658604629938610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036455.P9092321913124468015

`eq[3, A000005(a(A000005(n)))]` with `a(0)=1, a(1)=1, a(2)=12`
-/

namespace A036455.P9092321913124468015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 12] fun n f2 =>
  A000005 (f2 (A000005 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036455.P9092321913124468015

noncomputable section

/-- A036455: Numbers n such that d(d(n)) is an odd prime, where d(k) is the number of divisors of k.

Offset 1, canonical program `A036455.P9092321913124468015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036455 (n : ℕ) : ℤ :=
  (A036455.P9092321913124468015.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036456.P315112515821829930

`eq[3, A000005(a(A000005(n)))]` with `a(0)=4, a(1)=1, a(2)=1, a(3)=12`
-/

namespace A036456.P315112515821829930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1, 1, 12] fun n f2 =>
  A000005 (f2 (A000005 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036456.P315112515821829930

noncomputable section

/-- A036456: Numbers k for which exactly 4 applications of A000005 are needed to reach 2.

Offset 1, canonical program `A036456.P315112515821829930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036456 (n : ℕ) : ℤ :=
  (A036456.P315112515821829930.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036456.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A037198.P4959961532228558436

`eq[A000005(A001065(n+2)), A000005(n+2)]+2`
-/

namespace A037198.P4959961532228558436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001065 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A037198.P4959961532228558436

noncomputable section

/-- A037198: Number of divisors of (sigma(n)-n) = number of divisors of n.

Offset 1, canonical program `A037198.P4959961532228558436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2137 terms. -/
def A037198 (n : ℕ) : ℤ :=
  (A037198.P4959961532228558436.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2137 terms. -/
def A037198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037217.P9144439722755073366

`∑{#}[n, A037216(#)*A037216(n-#)]`
-/

namespace A037217.P9144439722755073366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A037216 k * A037216 (n - k)

end

end A037217.P9144439722755073366

noncomputable section

/-- A037217: Expansion of ( Sum_{k>=0} k*q^(k^2) )^8.

Offset 0, canonical program `A037217.P9144439722755073366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A037217 (n : ℕ) : ℤ :=
  A037217.P9144439722755073366.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A037217.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A037800.P11724207491536330253

`row(C(A069010(n), 2))`
-/

namespace A037800.P11724207491536330253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (Nat.choose (A069010 n).toNat 2)

end

end A037800.P11724207491536330253

noncomputable section

/-- A037800: Number of occurrences of 01 in the binary expansion of n.

Offset 0, canonical program `A037800.P11724207491536330253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037800 (n : ℕ) : ℤ :=
  (A037800.P11724207491536330253.a n : ℤ)

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

/-! ## A038743.P9627818471373104012

`∑[A038735(n+6)]`
-/

namespace A038743.P9627818471373104012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038735 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038743.P9627818471373104012

noncomputable section

/-- A038743: T(n,n-6), array T as in A038738.

Offset 6, canonical program `A038743.P9627818471373104012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A038743 (n : ℕ) : ℤ :=
  A038743.P9627818471373104012.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A038743.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A043728.P18335464426851925308

`eq[12, A000203(A088748(n))]`
-/

namespace A043728.P18335464426851925308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A088748 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043728.P18335464426851925308

noncomputable section

/-- A043728: Numbers whose number of runs in their base-2 representation is congruent to 0 mod 5.

Offset 1, canonical program `A043728.P18335464426851925308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3003 terms. -/
def A043728 (n : ℕ) : ℤ :=
  (A043728.P18335464426851925308.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3003 terms. -/
def A043728.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A043739.P5244345767597072638

`eq[A040007(n)+1, A069010(n)]`
-/

namespace A043739.P5244345767597072638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040007 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043739.P5244345767597072638

noncomputable section

/-- A043739: Numbers whose number of runs in the base-2 representation is congruent to 0 mod 7.

Offset 1, canonical program `A043739.P5244345767597072638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3433 terms. -/
def A043739 (n : ℕ) : ℤ :=
  (A043739.P5244345767597072638.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3433 terms. -/
def A043739.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A043744.P5393515672696595907

`eq[A040007(n), A069010(n)]`
-/

namespace A043744.P5393515672696595907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043744.P5393515672696595907

noncomputable section

/-- A043744: Numbers whose number of runs in the base-2 representation is congruent to 5 mod 7.

Offset 1, canonical program `A043744.P5393515672696595907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2093 terms. -/
def A043744 (n : ℕ) : ℤ :=
  (A043744.P5393515672696595907.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2093 terms. -/
def A043744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043750.P4056074130007044425

`eq[3, A035327(A088748(n)-1)]`
-/

namespace A043750.P4056074130007044425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A088748 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043750.P4056074130007044425

noncomputable section

/-- A043750: Numbers n such that number of runs in the base 2 representation of n is congruent to 4 mod 8.

Offset 1, canonical program `A043750.P4056074130007044425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1092 terms. -/
def A043750 (n : ℕ) : ℤ :=
  (A043750.P4056074130007044425.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1092 terms. -/
def A043750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043751.P15511838032920354139

`eq[2, A035327(A088748(n)-1)]`
-/

namespace A043751.P15511838032920354139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A088748 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043751.P15511838032920354139

noncomputable section

/-- A043751: Numbers n such that number of runs in the base 2 representation of n is congruent to 5 mod 8.

Offset 1, canonical program `A043751.P15511838032920354139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. -/
def A043751 (n : ℕ) : ℤ :=
  (A043751.P15511838032920354139.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. -/
def A043751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043757.P9839536396272687958

`eq[4, dr(A088748(n))]`
-/

namespace A043757.P9839536396272687958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A088748 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043757.P9839536396272687958

noncomputable section

/-- A043757: Numbers n such that number of runs in the base 2 representation of n is congruent to 3 mod 9.

Offset 1, canonical program `A043757.P9839536396272687958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 455 terms. -/
def A043757 (n : ℕ) : ℤ :=
  (A043757.P9839536396272687958.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 455 terms. -/
def A043757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043758.P14523860445594406317

`eq[1, dr(2*A088748(n))]`
-/

namespace A043758.P14523860445594406317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (2 * A088748 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043758.P14523860445594406317

noncomputable section

/-- A043758: Numbers n such that number of runs in the base 2 representation of n is congruent to 4 mod 9.

Offset 1, canonical program `A043758.P14523860445594406317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1015 terms. -/
def A043758 (n : ℕ) : ℤ :=
  (A043758.P14523860445594406317.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1015 terms. -/
def A043758.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A045708.P4966505932698422722

`p?[A034843(n+1)]`
-/

namespace A045708.P4966505932698422722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045708.P4966505932698422722

noncomputable section

/-- A045708: Primes with first digit 2.

Offset 1, canonical program `A045708.P4966505932698422722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4299 terms. -/
def A045708 (n : ℕ) : ℤ :=
  A045708.P4966505932698422722.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4299 terms. -/
def A045708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045765.P13008518942715425430

`comp[1-A000005(n+1)+n]`
-/

namespace A045765.P13008518942715425430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000005 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A045765.P13008518942715425430

noncomputable section

/-- A045765: k - d(k) never takes these values, where d(k) = A000005(k).

Offset 1, canonical program `A045765.P13008518942715425430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045765 (n : ℕ) : ℤ :=
  (A045765.P13008518942715425430.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045765.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A046839.P16105332668956259502

`lt[A001158(n+1)%A000005(n+1), 1]+1`
-/

namespace A046839.P16105332668956259502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001158 (n + 1)) (A000005 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A046839.P16105332668956259502

noncomputable section

/-- A046839: Numbers k such that the number of divisors of k divides the sum of cubes of divisors of k.

Offset 1, canonical program `A046839.P16105332668956259502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7812 terms. -/
def A046839 (n : ℕ) : ℤ :=
  (A046839.P16105332668956259502.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7812 terms. -/
def A046839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046840.P11712278196667640381

`eq[0, A001159(n+1)%A000005(n+1)]+1`
-/

namespace A046840.P11712278196667640381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001159 (n + 1)) (A000005 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046840.P11712278196667640381

noncomputable section

/-- A046840: Numbers k such that the number of divisors of k divides the sum of the 4th powers of the divisors of k.

Offset 1, canonical program `A046840.P11712278196667640381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6066 terms. -/
def A046840 (n : ℕ) : ℤ :=
  (A046840.P11712278196667640381.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6066 terms. -/
def A046840.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A048136.P11824991628301135588

`lt[6, A080400(n+1)]+1`
-/

namespace A048136.P11824991628301135588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A048136.P11824991628301135588

noncomputable section

/-- A048136: Tomahawk-nonconstructible n-gons.

Offset 1, canonical program `A048136.P11824991628301135588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048136 (n : ℕ) : ℤ :=
  (A048136.P11824991628301135588.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048166.P12188423200704413564

`lt[(n+1)%A000005(A007947(n+1)), 1]+1`
-/

namespace A048166.P12188423200704413564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000005 (A007947 (n + 1)).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A048166.P12188423200704413564

noncomputable section

/-- A048166: Numbers k that are divisible by the number of unitary divisors of k (A034444).

Offset 1, canonical program `A048166.P12188423200704413564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7090 terms. -/
def A048166 (n : ℕ) : ℤ :=
  (A048166.P12188423200704413564.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7090 terms. -/
def A048166.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A049202.P11018219603717020538

`A049203(A000040(1+n))`
-/

namespace A049202.P11018219603717020538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049203 (A000040 (1 + n)).toNat

end

end A049202.P11018219603717020538

noncomputable section

/-- A049202: Primes p whose order of primeness A049076(p) is >= 6.

Offset 1, canonical program `A049202.P11018219603717020538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A049202 (n : ℕ) : ℤ :=
  A049202.P11018219603717020538.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A049202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049482.P14194032820589337229

`p?[n+1-C(10, A000005(n+1)²)]`
-/

namespace A049482.P14194032820589337229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.choose 10 (A000005 (n + 1) ^ 2).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049482.P14194032820589337229

noncomputable section

/-- A049482: Primes p such that p + 210 is also prime.

Offset 1, canonical program `A049482.P14194032820589337229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3923 terms. -/
def A049482 (n : ℕ) : ℤ :=
  A049482.P14194032820589337229.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3923 terms. -/
def A049482.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A049645.P576075873221011945

`lt[A000203(n+1)%A000005(n+1)², 1]+1`
-/

namespace A049645.P576075873221011945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A000005 (n + 1) ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A049645.P576075873221011945

noncomputable section

/-- A049645: Numbers k such that the square of the number of divisors of k divides the sum of the divisors of k.

Offset 1, canonical program `A049645.P576075873221011945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049645 (n : ℕ) : ℤ :=
  (A049645.P576075873221011945.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049645.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A049865.P6597726982139926102

`1+a(A047994(n+1)-1)` with `a(0)=0`
-/

namespace A049865.P6597726982139926102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A047994 (n + 1) - 1).toNat

end

end A049865.P6597726982139926102

noncomputable section

/-- A049865: Number of iterations of unitary totient function (A047994) required to reach 1 from n.

Offset 1, canonical program `A049865.P6597726982139926102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049865 (n : ℕ) : ℤ :=
  (A049865.P6597726982139926102.a (n - 1) : ℤ)

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

/-! ## A053177.P9836042802240580860

`1+2*A053176(n+1)`
-/

namespace A053177.P9836042802240580860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A053176 (n + 1)

end

end A053177.P9836042802240580860

noncomputable section

/-- A053177: Odd composite k such that (k-1)/2 is prime.

Offset 1, canonical program `A053177.P9836042802240580860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053177 (n : ℕ) : ℤ :=
  A053177.P9836042802240580860.a (n - 1)

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

/-! ## A055097.P7629506041412364577

`A000005(A055096(n+2))`
-/

namespace A055097.P7629506041412364577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A055096 (n + 2)).toNat

end

end A055097.P7629506041412364577

noncomputable section

/-- A055097: Number of divisors for each term in the triangle A055096. It is 2 for primes (all of the form 4k+1).

Offset 1, canonical program `A055097.P7629506041412364577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055097 (n : ℕ) : ℤ :=
  A055097.P7629506041412364577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055097.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A055720.P4153619795851742296

`eq[1, (n+2)%(A000005(n+1)+1)]+1`
-/

namespace A055720.P4153619795851742296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A000005 (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055720.P4153619795851742296

noncomputable section

/-- A055720: Numbers k such that d(k)+1 | k.

Offset 1, canonical program `A055720.P4153619795851742296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3364 terms. -/
def A055720 (n : ℕ) : ℤ :=
  (A055720.P4153619795851742296.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3364 terms. -/
def A055720.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A056224.P11237647721291882159

`A000005(n+2)²-A000005(n+1)*A000005(n+3)`
-/

namespace A056224.P11237647721291882159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2) ^ 2 - A000005 (n + 1) * A000005 (n + 3)

end

end A056224.P11237647721291882159

noncomputable section

/-- A056224: Image of number of divisors sequence (A000005) under "little Hankel" transform that sends [c_0, c_1, ...] to [d_0, d_1, ...] where d_n = c_n^2 - c_{n+1}*c_{n-1}.

Offset 1, canonical program `A056224.P11237647721291882159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056224 (n : ℕ) : ℤ :=
  A056224.P11237647721291882159.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056224.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A056757.P10338499769578600041

`lt[n+1, A000005(n+1)^3]+1`
-/

namespace A056757.P10338499769578600041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A056757.P10338499769578600041

noncomputable section

/-- A056757: Cube of number of divisors is larger than the number.

Offset 1, canonical program `A056757.P10338499769578600041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4259 terms. -/
def A056757 (n : ℕ) : ℤ :=
  (A056757.P10338499769578600041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4259 terms. -/
def A056757.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A057851.P5593958897623650929

`A057850(A000040(1+n))`
-/

namespace A057851.P5593958897623650929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057850 (A000040 (1 + n)).toNat

end

end A057851.P5593958897623650929

noncomputable section

/-- A057851: Primes p whose order of primeness A078442(p) is at least 9.

Offset 1, canonical program `A057851.P5593958897623650929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1381 terms. -/
def A057851 (n : ℕ) : ℤ :=
  A057851.P5593958897623650929.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1381 terms. -/
def A057851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058074.P81869804986245876

`record[(n+1)/gcd(A000005(n+2), A000005(n+1))]`
-/

namespace A058074.P81869804986245876
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A000005 (n + 2)) (A000005 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058074.P81869804986245876

noncomputable section

/-- A058074: Integers m such that gcd(d(m),d(m+1)) = 1, where d(m) is number of positive divisors of m.

Offset 1, canonical program `A058074.P81869804986245876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A058074 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A058074.P81869804986245876.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A058074.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A062823.P15371580975150479790

`eq[0, A000005(A000010(n+1))%A000005(n+1)]+1`
-/

namespace A062823.P15371580975150479790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A000010 (n + 1)).toNat) (A000005 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062823.P15371580975150479790

noncomputable section

/-- A062823: Numbers k such that the number of divisors of k divides the number of divisors of the totient of k.

Offset 1, canonical program `A062823.P15371580975150479790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062823 (n : ℕ) : ℤ :=
  (A062823.P15371580975150479790.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062832.P107409337447898240

`eq[A000005(n+1), A000005(n+3)]+1`
-/

namespace A062832.P107409337447898240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A062832.P107409337447898240

noncomputable section

/-- A062832: Numbers k such that k and k+2 have the same number of divisors.

Offset 1, canonical program `A062832.P107409337447898240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6968 terms. -/
def A062832 (n : ℕ) : ℤ :=
  (A062832.P107409337447898240.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6968 terms. -/
def A062832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062969.P2182184149283088773

`eq[2, A000005(2-A000005(n+1)+n)]+1`
-/

namespace A062969.P2182184149283088773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 - A000005 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062969.P2182184149283088773

noncomputable section

/-- A062969: Numbers k such that abs(d(k)-k-1) is prime, where d(k) is the number of divisors of k.

Offset 1, canonical program `A062969.P2182184149283088773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5201 terms. -/
def A062969 (n : ℕ) : ℤ :=
  (A062969.P2182184149283088773.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5201 terms. -/
def A062969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062973.P6301330748735975263

`comp[A062972(1+n)-1]+1`
-/

namespace A062973.P6301330748735975263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A062973.P6301330748735975263

noncomputable section

/-- A062973: Chowla function of n is not divisible by phi(n).

Offset 1, canonical program `A062973.P6301330748735975263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062973 (n : ℕ) : ℤ :=
  (A062973.P6301330748735975263.a (n - 1) : ℤ)

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

/-! ## A063446.P12120454612501902942

`eq[2*A000005(n+1), A000005(n+2)]+1`
-/

namespace A063446.P12120454612501902942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A063446.P12120454612501902942

noncomputable section

/-- A063446: Integers m such that d(m+1) = 2*d(m), where d(m) = A000005(m).

Offset 1, canonical program `A063446.P12120454612501902942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4747 terms. -/
def A063446 (n : ℕ) : ℤ :=
  (A063446.P12120454612501902942.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4747 terms. -/
def A063446.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A064372.P556679171329570331

`A000005(A000005(∑{e}[n+1, A001221(#)!]!))`
-/

namespace A064372.P556679171329570331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial (A001221 (Nat.factorization (f1 n) p)).toNat))).toNat

end

end A064372.P556679171329570331

noncomputable section

/-- A064372: Additive function a(n) defined by the recursive formula a(1)=1 and a(p^k)=a(k) for any prime p.

Offset 1, canonical program `A064372.P556679171329570331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064372 (n : ℕ) : ℤ :=
  A064372.P556679171329570331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064491.P8693567279936684108

`a(n-1)+A000005(a(n-1))` with `a(0)=1`
-/

namespace A064491.P8693567279936684108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000005 (a (n - 1)).toNat

end

end A064491.P8693567279936684108

noncomputable section

/-- A064491: a(1) = 1, a(n+1) = a(n) + tau(a(n)), where tau(n) (A000005) is the number of divisors of n.

Offset 1, canonical program `A064491.P8693567279936684108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7877 terms. -/
def A064491 (n : ℕ) : ℤ :=
  A064491.P8693567279936684108.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7877 terms. -/
def A064491.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A067274.P8254854340625410811

`a(n-1)+2*(A000005(n)+1)+A010052(n)` with `a(0)=1, a(1)=4`
-/

namespace A067274.P8254854340625410811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + 2 * (A000005 n + 1) + A010052 n

end

end A067274.P8254854340625410811

noncomputable section

/-- A067274: Number of ordered integer pairs (b,c), with -n<=b<=n, -n<=c<=n, such that both roots of x^2+bx+c=0 are integers.

Offset 0, canonical program `A067274.P8254854340625410811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067274 (n : ℕ) : ℤ :=
  A067274.P8254854340625410811.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067274.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067532.P15581183791114753305

`record[(n+1)/A001222(A000005(n+1)+n+1)]`
-/

namespace A067532.P15581183791114753305
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001222 (A000005 (n + 1) + (n + 1 : ℤ)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067532.P15581183791114753305

noncomputable section

/-- A067532: Numbers k such that k + number of divisors of k is a prime.

Offset 1, canonical program `A067532.P15581183791114753305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8651 terms. -/
def A067532 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067532.P15581183791114753305.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8651 terms. -/
def A067532.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A068526.P8816428566634844446

`eq[A000005(n+1), A001223(n+1)]+1`
-/

namespace A068526.P8816428566634844446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068526.P8816428566634844446

noncomputable section

/-- A068526: Numbers n such that prime(n+1)-prime(n) = tau(n) = A000005(n).

Offset 1, canonical program `A068526.P8816428566634844446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4175 terms. -/
def A068526 (n : ℕ) : ℤ :=
  (A068526.P8816428566634844446.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4175 terms. -/
def A068526.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A069065.P1712221855339844223

`eq[2, col(A051612(n+1))+2]+1`
-/

namespace A069065.P1712221855339844223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A051612 (n + 1)).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069065.P1712221855339844223

noncomputable section

/-- A069065: Sigma(n)-phi(n) is a triangular number.

Offset 1, canonical program `A069065.P1712221855339844223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A069065 (n : ℕ) : ℤ :=
  (A069065.P1712221855339844223.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A069065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069067.P5386481408011505101

`eq[A007913(A000005(n+1)), A007913(n+1)]+1`
-/

namespace A069067.P5386481408011505101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000005 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069067.P5386481408011505101

noncomputable section

/-- A069067: Numbers k such that k*tau(k) is a perfect square.

Offset 1, canonical program `A069067.P5386481408011505101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A069067 (n : ℕ) : ℤ :=
  (A069067.P5386481408011505101.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A069067.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A069230.P4570500113169538551

`A000720(A000005(n+1)²+n)-A000720(n+1)`
-/

namespace A069230.P4570500113169538551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000005 (n + 1) ^ 2 + (n : ℤ)).toNat - A000720 (n + 1)

end

end A069230.P4570500113169538551

noncomputable section

/-- A069230: Number of primes p such that n < p < n + tau(n)^2 where tau(n) = A000005(n).

Offset 1, canonical program `A069230.P4570500113169538551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069230 (n : ℕ) : ℤ :=
  A069230.P4570500113169538551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069809.P15229151927026619136

`eq[gcd(n+1, A000010(n+1)), A000005(n+1)]+1`
-/

namespace A069809.P15229151927026619136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000010 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069809.P15229151927026619136

noncomputable section

/-- A069809: Numbers k such that gcd(k, phi(k)) = tau(k).

Offset 1, canonical program `A069809.P15229151927026619136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1278 terms. -/
def A069809 (n : ℕ) : ℤ :=
  (A069809.P15229151927026619136.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1278 terms. -/
def A069809.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A070418.P12910822427567143407

`eq[A000005(n+1), A000005(A000010(n+1))]+1`
-/

namespace A070418.P12910822427567143407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A070418.P12910822427567143407

noncomputable section

/-- A070418: Numbers k such that k and phi(k) have the same number of divisors.

Offset 1, canonical program `A070418.P12910822427567143407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1409 terms. -/
def A070418 (n : ℕ) : ℤ :=
  (A070418.P12910822427567143407.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1409 terms. -/
def A070418.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A071186.P1213708103561543319

`eq[2, A000005(A022457(n+1))]+1`
-/

namespace A071186.P1213708103561543319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A022457 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A071186.P1213708103561543319

noncomputable section

/-- A071186: Numbers k such that prime(2*k)-2*prime(k) is prime.

Offset 1, canonical program `A071186.P1213708103561543319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1560 terms. -/
def A071186 (n : ℕ) : ℤ :=
  (A071186.P1213708103561543319.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1560 terms. -/
def A071186.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A071593.P17632102132566079091

`eq[A000079(A000005(n+1)), A001316(n+1)]+1`
-/

namespace A071593.P17632102132566079091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000005 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071593.P17632102132566079091

noncomputable section

/-- A071593: Number of 1's in binary representation of n equals tau(n), the number of divisors of n.

Offset 1, canonical program `A071593.P17632102132566079091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2995 terms. -/
def A071593 (n : ℕ) : ℤ :=
  (A071593.P17632102132566079091.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2995 terms. -/
def A071593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071681.P16240436218121733233

`A061357(eq[2, A000005(n+1)]+1)`
-/

namespace A071681.P16240436218121733233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A071681.P16240436218121733233

noncomputable section

/-- A071681: Number of ways to represent the n-th prime as arithmetic mean of two other primes.

Offset 1, canonical program `A071681.P16240436218121733233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. -/
def A071681 (n : ℕ) : ℤ :=
  A071681.P16240436218121733233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. -/
def A071681.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A072589.P6703439860602350751

`∩[A072566(n+1), A072585(n+1)]`
-/

namespace A072589.P6703439860602350751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072589.P6703439860602350751

noncomputable section

/-- A072589: n, phi(n) and sigma(n) end with the same digit.

Offset 1, canonical program `A072589.P6703439860602350751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1861 terms. -/
def A072589 (n : ℕ) : ℤ :=
  (A072589.P6703439860602350751.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1861 terms. -/
def A072589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072628.P15487048248922606126

`A000005(n+1)-A072627(n+1)`
-/

namespace A072628.P15487048248922606126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A072627 (n + 1)

end

end A072628.P15487048248922606126

noncomputable section

/-- A072628: Number of divisors d of n such that d-1 is not prime.

Offset 1, canonical program `A072628.P15487048248922606126`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072627, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072628 (n : ℕ) : ℤ :=
  A072628.P15487048248922606126.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072627, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072628.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A072757.P13852614188243680561

`A026344(1+n)+1`
-/

namespace A072757.P13852614188243680561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026344 (1 + n) + 1

end

end A072757.P13852614188243680561

noncomputable section

/-- A072757: Complement of A072756.

Offset 0, canonical program `A072757.P13852614188243680561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072757 (n : ℕ) : ℤ :=
  A072757.P13852614188243680561.a n

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

/-! ## A073740.P16195723083880833964

`∑{#}[n, A073739(#)*A073739(n-#)]`
-/

namespace A073740.P16195723083880833964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A073739 k * A073739 (n - k)

end

end A073740.P16195723083880833964

noncomputable section

/-- A073740: Self-convolution of A073739; odd-indexed terms are twice the odd primes.

Offset 0, canonical program `A073740.P16195723083880833964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A073740 (n : ℕ) : ℤ :=
  A073740.P16195723083880833964.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A073740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073809.P76428896373836633

`A000005(gcd(∑{d}[n+1, #^3], ∑{d}[n+1, #]))`
-/

namespace A073809.P76428896373836633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd (∑ d ∈ Nat.divisors (f1 n), d ^ 3) (∑ d ∈ Nat.divisors (f2 n), d))

end

end A073809.P76428896373836633

noncomputable section

/-- A073809: Number of common divisors of sigma_1(n) and sigma_3(n).

Offset 1, canonical program `A073809.P76428896373836633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073809 (n : ℕ) : ℤ :=
  A073809.P76428896373836633.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073810.P16325406888385012119

`A000005(gcd(∑{d}[n+1, #^3], ∑{d}[n+1, #²]))`
-/

namespace A073810.P16325406888385012119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd (∑ d ∈ Nat.divisors (f1 n), d ^ 3) (∑ d ∈ Nat.divisors (f2 n), d ^ 2))

end

end A073810.P16325406888385012119

noncomputable section

/-- A073810: Number of common divisors of sigma(2,n) and sigma(3,n).

Offset 1, canonical program `A073810.P16325406888385012119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8511 terms. -/
def A073810 (n : ℕ) : ℤ :=
  A073810.P16325406888385012119.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8511 terms. -/
def A073810.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A013633.P4197287257682480100

`A151800(n+3)-A151799(n+3)`
-/

namespace A013633.P4197287257682480100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 3) - A151799 (n + 3)

end

end A013633.P4197287257682480100

noncomputable section

/-- A013633: a(n) = nextprime(n) - prevprime(n).

Offset 3, canonical program `A013633.P4197287257682480100`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013633 (n : ℕ) : ℤ :=
  A013633.P4197287257682480100.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013633.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A013638.P7696064577368165913

`A151799(n+3)*A151800(n+3)`
-/

namespace A013638.P7696064577368165913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (n + 3) * A151800 (n + 3)

end

end A013638.P7696064577368165913

noncomputable section

/-- A013638: a(n) = prevprime(n)*nextprime(n).

Offset 3, canonical program `A013638.P7696064577368165913`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013638 (n : ℕ) : ℤ :=
  A013638.P7696064577368165913.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013638.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A015627.P3103946943151081506

`A015622(2+n)-∑[A161680(n)]`
-/

namespace A015627.P3103946943151081506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015622 (2 + n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015627.P3103946943151081506

noncomputable section

/-- A015627: Quadruples of different integers from [ 2,n ] with no global factor.

Offset 2, canonical program `A015627.P3103946943151081506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1010 terms. -/
def A015627 (n : ℕ) : ℤ :=
  A015627.P3103946943151081506.a (n - 2)

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

/-! ## A023523.P7592543716660556623

`A023515(1+n)+2`
-/

namespace A023523.P7592543716660556623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (1 + n) + 2

end

end A023523.P7592543716660556623

noncomputable section

/-- A023523: a(n) = prime(n)*prime(n-1) + 1.

Offset 1, canonical program `A023523.P7592543716660556623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023523 (n : ℕ) : ℤ :=
  A023523.P7592543716660556623.a (n - 1)

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

/-! ## A026616.P16899319297321886475

`A026615(C(2*n+1, 2)+n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A026616.P16899319297321886475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026615 (Nat.choose (2 * n + 1) 2 + n)

end

end A026616.P16899319297321886475

noncomputable section

/-- A026616: a(n) = A026615(2*n, n).

Offset 0, canonical program `A026616.P16899319297321886475`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026616 (n : ℕ) : ℤ :=
  A026616.P16899319297321886475.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026616.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A026617.P12676393969057175049

`A026615(C(2*(n+1)+1, 2)+n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A026617.P12676393969057175049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026615 (Nat.choose (2 * (n + 1) + 1) 2 + n)

end

end A026617.P12676393969057175049

noncomputable section

/-- A026617: a(n) = A026615(2*n, n-1).

Offset 1, canonical program `A026617.P12676393969057175049`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026617 (n : ℕ) : ℤ :=
  A026617.P12676393969057175049.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026617.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A026619.P13922369350371558015

`A026615(C(2*(n+1), 2)+n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A026619.P13922369350371558015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026615 (Nat.choose (2 * (n + 1)) 2 + n)

end

end A026619.P13922369350371558015

noncomputable section

/-- A026619: a(n) = A026615(2*n-1, n-1).

Offset 1, canonical program `A026619.P13922369350371558015`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026619 (n : ℕ) : ℤ :=
  A026619.P13922369350371558015.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026619.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A026620.P10345420458012627715

`A026615(C(2*(n+2), 2)+n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A026620.P10345420458012627715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026615 (Nat.choose (2 * (n + 2)) 2 + n)

end

end A026620.P10345420458012627715

noncomputable section

/-- A026620: a(n) = A026615(2*n-1, n-2).

Offset 2, canonical program `A026620.P10345420458012627715`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026620 (n : ℕ) : ℤ :=
  A026620.P10345420458012627715.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026620.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A026621.P1790604425329706064

`A026615(C(n+1, 2)+floor(n/2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A026621.P1790604425329706064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026615 ((Nat.choose (n + 1) 2 : ℤ) + ⌊(n : ℚ) / 2⌋).toNat

end

end A026621.P1790604425329706064

noncomputable section

/-- A026621: a(n) = A026615(n, floor(n/2)).

Offset 0, canonical program `A026621.P1790604425329706064`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026621 (n : ℕ) : ℤ :=
  A026621.P1790604425329706064.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026621.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A026623.P13493584362564714170

`∑{#}[floor(n/2), A026615(C(n+1, 2)+#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A026623.P13493584362564714170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A026615 (Nat.choose (n + 1) 2 + k)

end

end A026623.P13493584362564714170

noncomputable section

/-- A026623: a(n) = Sum_{k=0..floor(n/2)} A026615(n, k).

Offset 0, canonical program `A026623.P13493584362564714170`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026623 (n : ℕ) : ℤ :=
  A026623.P13493584362564714170.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026623.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A026956.P7595714240448590771

`∑{#}[n, A026615(C(n+1, 2)+#)*A026615(C(n+1, 2)+n-#)]`
-/

namespace A026956.P7595714240448590771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A026615 (Nat.choose (n + 1) 2 + k) * A026615 ((Nat.choose (n + 1) 2 : ℤ) + ((n : ℤ) - (k : ℤ))).toNat

end

end A026956.P7595714240448590771

noncomputable section

/-- A026956: Self-convolution of array T given by A026615.

Offset 0, canonical program `A026956.P7595714240448590771`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026956 (n : ℕ) : ℤ :=
  A026956.P7595714240448590771.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026956.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A027703.P2928990236243762317

`A000040(A027704(n+1))`
-/

namespace A027703.P2928990236243762317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A027704 (n + 1)).toNat

end

end A027703.P2928990236243762317

noncomputable section

/-- A027703: Primes with even number of 1's in binary expansion such that next prime has odd number of 1's.

Offset 1, canonical program `A027703.P2928990236243762317`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027703 (n : ℕ) : ℤ :=
  A027703.P2928990236243762317.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027703.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A028279.P4405261564463952686

`A028275(A268232(1+n))`
-/

namespace A028279.P4405261564463952686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028275 (A268232 (1 + n)).toNat

end

end A028279.P4405261564463952686

noncomputable section

/-- A028279: Even elements in 4-Pascal triangle A028275 (by row).

Offset 0, canonical program `A028279.P4405261564463952686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7718 terms. -/
def A028279 (n : ℕ) : ℤ :=
  A028279.P4405261564463952686.a n

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

/-! ## A028612.P3597305288717292760

`∑{#}[n, A028610(#)*A028610(n-#)]`
-/

namespace A028612.P3597305288717292760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028610 k * A028610 (n - k)

end

end A028612.P3597305288717292760

noncomputable section

/-- A028612: Expansion of (theta_3(z)*theta_3(11z) + theta_2(z)*theta_2(11z))^4.

Offset 0, canonical program `A028612.P3597305288717292760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A028612 (n : ℕ) : ℤ :=
  A028612.P3597305288717292760.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A028612.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038109.P16162064952721351486

`lt[1, A329376(n+1)]+1`
-/

namespace A038109.P16162064952721351486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329376 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A038109.P16162064952721351486

noncomputable section

/-- A038109: Divisible exactly by the square of a prime.

Offset 1, canonical program `A038109.P16162064952721351486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038109 (n : ℕ) : ℤ :=
  (A038109.P16162064952721351486.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038109.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A039734.P4610202696470931323

`A151800(A005097(n+1))`
-/

namespace A039734.P4610202696470931323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A005097 (n + 1)).toNat

end

end A039734.P4610202696470931323

noncomputable section

/-- A039734: a(n)=the prime q<prime(n) for which (prime(n) mod q) is maximal.

Offset 2, canonical program `A039734.P4610202696470931323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039734 (n : ℕ) : ℤ :=
  A039734.P4610202696470931323.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039734.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A045019.P3254261549593624795

`∩[A023706(n+1), A023710(n+1)]`
-/

namespace A045019.P3254261549593624795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045019.P3254261549593624795

noncomputable section

/-- A045019: Numbers whose base-4 representation contains exactly one 0 and one 1.

Offset 1, canonical program `A045019.P3254261549593624795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2013 terms. -/
def A045019 (n : ℕ) : ℤ :=
  (A045019.P3254261549593624795.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2013 terms. -/
def A045019.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A045850.P449428707628621992

`∑{#}[n, A014110(#)*A014110(n-#)]`
-/

namespace A045850.P449428707628621992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A014110 k * A014110 (n - k)

end

end A045850.P449428707628621992

noncomputable section

/-- A045850: Number of nonnegative solutions of x1^2 + x2^2 + ... + x8^2 = n.

Offset 0, canonical program `A045850.P449428707628621992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A045850 (n : ℕ) : ℤ :=
  A045850.P449428707628621992.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A045850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046217.P15675039198389379782

`lcm(2, A134636(n+1))/2`
-/

namespace A046217.P15675039198389379782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A134636 (n + 1)) : ℚ) / 2

end

end A046217.P15675039198389379782

noncomputable section

/-- A046217: First numerator and then denominator of 1/2-Pascal triangle (by row) excluding 1's and 2's.

Offset 1, canonical program `A046217.P15675039198389379782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A046217 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A046217.P15675039198389379782.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A046217.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A049773.P1551376104383176353

`ceil(A030101(n+1)/2)`
-/

namespace A049773.P1551376104383176353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A030101 (n + 1) : ℚ) / 2⌉

end

end A049773.P1551376104383176353

noncomputable section

/-- A049773: Triangular array T read by rows: if row n is r(1),...,r(m), then row n+1 is 2r(1)-1,...,2r(m)-1,2r(1),...,2r(m).

Offset 1, canonical program `A049773.P1551376104383176353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049773 (n : ℕ) : ℤ :=
  A049773.P1551376104383176353.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049773.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A051244.P16168233201162668743

`eq[1, A000120(A175298(n)-n)]`
-/

namespace A051244.P16168233201162668743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A175298 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051244.P16168233201162668743

noncomputable section

/-- A051244: Binary numbers d(1)...d(j) such that d(i) = d(j+1-i) for all but two values of i.

Offset 1, canonical program `A051244.P16168233201162668743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. -/
def A051244 (n : ℕ) : ℤ :=
  (A051244.P16168233201162668743.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. -/
def A051244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051247.P14634796646116237137

`eq[2, A000120(A175298(n)-n)]`
-/

namespace A051247.P14634796646116237137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A175298 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051247.P14634796646116237137

noncomputable section

/-- A051247: Binary numbers d(1)...d(j) such that d(i) = d(j+1-i) for all but 4 values of i.

Offset 1, canonical program `A051247.P14634796646116237137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3450 terms. -/
def A051247 (n : ℕ) : ℤ :=
  (A051247.P14634796646116237137.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3450 terms. -/
def A051247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051428.P11068231016985716309

`A029658(n)/2`
-/

namespace A051428.P11068231016985716309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029658 n : ℚ) / 2

end

end A051428.P11068231016985716309

noncomputable section

/-- A051428: (Terms in A029658)/2.

Offset 0, canonical program `A051428.P11068231016985716309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051428 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051428.P11068231016985716309.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051468.P6533800774819959610

`A051456(n)-A014428(n+1)`
-/

namespace A051468.P6533800774819959610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051456 n - A014428 (n + 1)

end

end A051468.P6533800774819959610

noncomputable section

/-- A051468: (Terms in A029641)/2.

Offset 0, canonical program `A051468.P6533800774819959610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051468 (n : ℕ) : ℤ :=
  A051468.P6533800774819959610.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051598.P11098162579697711574

`A134636(n)-A097805(n+1)`
-/

namespace A051598.P11098162579697711574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134636 n - A097805 (n + 1)

end

end A051598.P11098162579697711574

noncomputable section

/-- A051598: Rows of triangle formed using Pascal's rule except begin n-th row with 2*n and end it with 2*n+1.

Offset 0, canonical program `A051598.P11098162579697711574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051598 (n : ℕ) : ℤ :=
  A051598.P11098162579697711574.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051598.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A053232.P9418367847596789785

`comp[A053233(n+1)-1]+1`
-/

namespace A053232.P9418367847596789785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053233 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A053232.P9418367847596789785

noncomputable section

/-- A053232: Numbers for which values not equal to 2 occur in the expansion of A053230.

Offset 1, canonical program `A053232.P9418367847596789785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1758 terms. -/
def A053232 (n : ℕ) : ℤ :=
  (A053232.P9418367847596789785.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1758 terms. -/
def A053232.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A054190.P16795925632748562184

`∑{#}[n, C(n, #)*A001037(#)]`
-/

namespace A054190.P16795925632748562184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A001037 k

end

end A054190.P16795925632748562184

noncomputable section

/-- A054190: Binomial transform of A001037.

Offset 0, canonical program `A054190.P16795925632748562184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A054190 (n : ℕ) : ℤ :=
  A054190.P16795925632748562184.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A054190.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A056616.P529159178269024505

`A001316(n)*A055786(n)`
-/

namespace A056616.P529159178269024505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A055786 n

end

end A056616.P529159178269024505

noncomputable section

/-- A056616: Numerator of binomial(2n,n)/(2n+1).

Offset 0, canonical program `A056616.P529159178269024505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A056616 (n : ℕ) : ℤ :=
  A056616.P529159178269024505.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A056616.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A057537.P2140538622276713862

`A339094(A172471(∑[n]))`
-/

namespace A057537.P2140538622276713862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339094 (A172471 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A057537.P2140538622276713862

noncomputable section

/-- A057537: Number of ways of making change for n Euro-cents using the Euro currency.

Offset 0, canonical program `A057537.P2140538622276713862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A057537 (n : ℕ) : ℤ :=
  A057537.P2140538622276713862.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A057537.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A059343.P8688508278763230459

`A060821(eq[A049310(n+1), A053117(n+1)])`
-/

namespace A059343.P8688508278763230459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060821 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A059343.P8688508278763230459

noncomputable section

/-- A059343: Triangle of nonzero coefficients of Hermite polynomials H_n(x) in increasing powers of x.

Offset 0, canonical program `A059343.P8688508278763230459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2607 terms. -/
def A059343 (n : ℕ) : ℤ :=
  A059343.P8688508278763230459.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2607 terms. -/
def A059343.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A066660.P17487963968517902439

`A069930(n+1)+1`
-/

namespace A066660.P17487963968517902439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069930 (n + 1) + 1

end

end A066660.P17487963968517902439

noncomputable section

/-- A066660: Number of divisors of 2n excluding 1.

Offset 1, canonical program `A066660.P17487963968517902439`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069930, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066660 (n : ℕ) : ℤ :=
  A066660.P17487963968517902439.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069930, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066660.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A072678.P4263313104401652014

`A052852(2*(n+1)-1)`
-/

namespace A072678.P4263313104401652014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052852 (2 * (n + 1) - 1)

end

end A072678.P4263313104401652014

noncomputable section

/-- A072678: Generalized Bell numbers B_{4,2}.

Offset 1, canonical program `A072678.P4263313104401652014`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052852, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072678 (n : ℕ) : ℤ :=
  A072678.P4263313104401652014.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052852, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072678.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A072699.P6302006378633389520

`∑{e}[A072697(1+n), #]`
-/

namespace A072699.P6302006378633389520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072697 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A072699.P6302006378633389520

noncomputable section

/-- A072699: Number of prime factors of A072697(n).

Offset 1, canonical program `A072699.P6302006378633389520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072699 (n : ℕ) : ℤ :=
  (A072699.P6302006378633389520.a (n - 1) : ℤ)

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

/-! ## A073730.P1025248942146789471

`A054055(n+1)*10+A054054(n+1)`
-/

namespace A073730.P1025248942146789471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (n + 1) * 10 + A054054 (n + 1)

end

end A073730.P1025248942146789471

noncomputable section

/-- A073730: Concatenation of largest and smallest digits of n in decimal representation.

Offset 1, canonical program `A073730.P1025248942146789471`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054054, A054055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073730 (n : ℕ) : ℤ :=
  A073730.P1025248942146789471.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054054, A054055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073730.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A003658.P6132184232108440165

`lt[0, A290098(n+1)]+1`
-/

namespace A003658.P6132184232108440165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290098 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A003658.P6132184232108440165

noncomputable section

/-- A003658: Indices of primitive positive Dirichlet L-series; 1 and the fundamental discriminants of real quadratic fields.

Offset 1, canonical program `A003658.P6132184232108440165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003658 (n : ℕ) : ℤ :=
  (A003658.P6132184232108440165.a (n - 1) : ℤ)

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

/-! ## A007477.P14592794955063562945

`∑{#}[n, (-1)^(n-#)*C(n, #)*A105633(#)]`
-/

namespace A007477.P14592794955063562945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A105633 k : ℚ)

end

end A007477.P14592794955063562945

noncomputable section

/-- A007477: Shifts 2 places left when convolved with itself.

Offset 0, canonical program `A007477.P14592794955063562945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A007477 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007477.P14592794955063562945.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A007477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008312.P3158500406307596981

`A053117(record[1-abs(A049310(n))+n])`
-/

namespace A008312.P3158500406307596981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A049310 n| + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053117 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A008312.P3158500406307596981

noncomputable section

/-- A008312: Triangle of coefficients of Chebyshev polynomials U_n(x).

Offset 0, canonical program `A008312.P3158500406307596981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5035 terms. -/
def A008312 (n : ℕ) : ℤ :=
  A008312.P3158500406307596981.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5035 terms. -/
def A008312.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A032810.P1971984483397515625

`A007931(n+1)+A002275(A000523(n+2))`
-/

namespace A032810.P1971984483397515625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1) + A002275 (A000523 (n + 2)).toNat

end

end A032810.P1971984483397515625

noncomputable section

/-- A032810: Numbers using only digits 2 and 3.

Offset 1, canonical program `A032810.P1971984483397515625`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032810 (n : ℕ) : ℤ :=
  A032810.P1971984483397515625.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032810.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A032822.P12745688592124505838

`A284963(n+1)-2*A007931(n+1)`
-/

namespace A032822.P12745688592124505838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284963 (n + 1) - 2 * A007931 (n + 1)

end

end A032822.P12745688592124505838

noncomputable section

/-- A032822: Numbers whose set of base-10 digits is {1,4}.

Offset 1, canonical program `A032822.P12745688592124505838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032822 (n : ℕ) : ℤ :=
  A032822.P12745688592124505838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032822.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A037904.P3734509193850289562

`A054055(n+1)-A054054(n+1)`
-/

namespace A037904.P3734509193850289562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (n + 1) - A054054 (n + 1)

end

end A037904.P3734509193850289562

noncomputable section

/-- A037904: Greatest digit of n - least digit of n.

Offset 1, canonical program `A037904.P3734509193850289562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037904 (n : ℕ) : ℤ :=
  A037904.P3734509193850289562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037904.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A043631.P2860025414284165306

`eq[2, A043568(A023717(n))]`
-/

namespace A043631.P2860025414284165306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 (A023717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043631.P2860025414284165306

noncomputable section

/-- A043631: Numbers whose base-9 representation has exactly 2 runs.

Offset 1, canonical program `A043631.P2860025414284165306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A043631 (n : ℕ) : ℤ :=
  (A043631.P2860025414284165306.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A043631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043675.P7425814826625443261

`eq[2, A043568(n)]`
-/

namespace A043675.P7425814826625443261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043675.P7425814826625443261

noncomputable section

/-- A043675: Numbers whose base-16 representation has exactly 2 runs.

Offset 1, canonical program `A043675.P7425814826625443261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 756 terms. -/
def A043675 (n : ℕ) : ℤ :=
  (A043675.P7425814826625443261.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 756 terms. -/
def A043675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043676.P12031253644088371133

`eq[3, A043568(n)]`
-/

namespace A043676.P12031253644088371133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043676.P12031253644088371133

noncomputable section

/-- A043676: Numbers whose base-16 representation has exactly 3 runs.

Offset 1, canonical program `A043676.P12031253644088371133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4456 terms. -/
def A043676 (n : ℕ) : ℤ :=
  (A043676.P12031253644088371133.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4456 terms. -/
def A043676.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A048675.P15792214674053257917

`∑{d}[n+1, A297108(#)]`
-/

namespace A048675.P15792214674053257917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A297108 d

end

end A048675.P15792214674053257917

noncomputable section

/-- A048675: If n = p_i^e_i * ... * p_k^e_k, p_i < ... < p_k primes (with p_i = prime(i)), then a(n) = (1/2) * (e_i * 2^i + ... + e_k * 2^k).

Offset 1, canonical program `A048675.P15792214674053257917`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A297108, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048675 (n : ℕ) : ℤ :=
  A048675.P15792214674053257917.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A297108, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048675.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A066073.P13082219183644664540

`filter[A248792(1+n), A005171(#)]`
-/

namespace A066073.P13082219183644664540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248792 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A066073.P13082219183644664540

noncomputable section

/-- A066073: Composite numbers k such that sigma(k) - 1 is prime.

Offset 1, canonical program `A066073.P13082219183644664540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7086 terms. -/
def A066073 (n : ℕ) : ℤ :=
  A066073.P13082219183644664540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7086 terms. -/
def A066073.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A067773.P6147887538923262934

`A014342(n+1)+A001747(n+2)-A023626(n+2)`
-/

namespace A067773.P6147887538923262934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014342 (n + 1) + (A001747 (n + 2) - A023626 (n + 2))

end

end A067773.P6147887538923262934

noncomputable section

/-- A067773: a(n) is the unique positive integer m which has a self-conjugate partition whose parts are the first n primes.

Offset 1, canonical program `A067773.P6147887538923262934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A067773 (n : ℕ) : ℤ :=
  A067773.P6147887538923262934.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A067773.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A035317.P15945536660630351488

`A128176(A038722(n+1))`
-/

namespace A035317.P15945536660630351488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128176 (A038722 (n + 1)).toNat

end

end A035317.P15945536660630351488

noncomputable section

/-- A035317: Pascal-like triangle associated with A000670.

Offset 0, canonical program `A035317.P15945536660630351488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A035317 (n : ℕ) : ℤ :=
  A035317.P15945536660630351488.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A035317.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A043095.P12549996353665687778

`eq[1, A043283(A028310(n))]`
-/

namespace A043095.P12549996353665687778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043095.P12549996353665687778

noncomputable section

/-- A043095: Numbers with property that no two consecutive base 9 digits are equal.

Offset 1, canonical program `A043095.P12549996353665687778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6571 terms. -/
def A043095 (n : ℕ) : ℤ :=
  (A043095.P12549996353665687778.a (n - 1) : ℤ)

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

/-! ## A043282.P5881847742895163389

`A043283(A037477(1+n))`
-/

namespace A043282.P5881847742895163389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A037477 (1 + n)).toNat

end

end A043282.P5881847742895163389

noncomputable section

/-- A043282: Maximal run length in base 8 representation of n.

Offset 1, canonical program `A043282.P5881847742895163389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043282 (n : ℕ) : ℤ :=
  A043282.P5881847742895163389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043567.P10585350026588919122

`A043568(lt[A217558(n), A106618(n)²]-16)`
-/

namespace A043567.P10585350026588919122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n - 16)

end

end A043567.P10585350026588919122

noncomputable section

/-- A043567: Number of runs in base-15 representation of n.

Offset 0, canonical program `A043567.P10585350026588919122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A043567 (n : ℕ) : ℤ :=
  A043567.P10585350026588919122.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A043567.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A053178.P6541716823927617101

`record[A171435(1+10*n)]`
-/

namespace A053178.P6541716823927617101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (1 + 10 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053178.P6541716823927617101

noncomputable section

/-- A053178: Numbers ending in 1 which are not prime.

Offset 1, canonical program `A053178.P6541716823927617101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7613 terms. -/
def A053178 (n : ℕ) : ℤ :=
  A053178.P6541716823927617101.a (n - 1)

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

/-! ## A060461.P16999376877635500582

`lt[A161996(n+1), 1]+1`
-/

namespace A060461.P16999376877635500582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161996 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A060461.P16999376877635500582

noncomputable section

/-- A060461: Numbers k such that 6*k-1 and 6*k+1 are twin composites.

Offset 1, canonical program `A060461.P16999376877635500582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060461 (n : ℕ) : ℤ :=
  (A060461.P16999376877635500582.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060461.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A072667.P10592464437317700849

`A000040(eq[2, A000005(A011974(n+1)-1)])`
-/

namespace A072667.P10592464437317700849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A011974 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072667.P10592464437317700849

noncomputable section

/-- A072667: Consider m such that prime(m) + prime(m+1) = prime(k) + 1 for some k; sequence gives values of prime(m).

Offset 1, canonical program `A072667.P10592464437317700849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1245 terms. -/
def A072667 (n : ℕ) : ℤ :=
  A072667.P10592464437317700849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1245 terms. -/
def A072667.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A020899.P407132473760746687

`eq[1, A007895(n)%2]`
-/

namespace A020899.P407132473760746687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007895 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020899.P407132473760746687

noncomputable section

/-- A020899: Numbers k with an odd number of terms in their Zeckendorf representation (write k as a sum of non-consecutive distinct Fibonacci numbers).

Offset 1, canonical program `A020899.P407132473760746687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A020899 (n : ℕ) : ℤ :=
  (A020899.P407132473760746687.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A020899.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A034968.P11463317321541393924

`A099563(n)+a(A257687(n))` with `a(0)=0, a(1)=1`
-/

namespace A034968.P11463317321541393924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A099563 n + a (A257687 n).toNat

end

end A034968.P11463317321541393924

noncomputable section

/-- A034968: Minimal number of factorials that add to n.

Offset 0, canonical program `A034968.P11463317321541393924`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099563, A257687, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A034968 (n : ℕ) : ℤ :=
  A034968.P11463317321541393924.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099563, A257687, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A034968.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A057532.P4710718478601077176

`A057531(eq[1, A057531(n+1)%2]+1)`
-/

namespace A057532.P4710718478601077176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057531 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057531 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A057532.P4710718478601077176

noncomputable section

/-- A057532: n is odd and sum of digits of n equals the numbers of divisors of n.

Offset 1, canonical program `A057532.P4710718478601077176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1840 terms. -/
def A057532 (n : ℕ) : ℤ :=
  A057532.P4710718478601077176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1840 terms. -/
def A057532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060130.P13983426075283678403

`1+a(A257687(n))` with `a(0)=0`
-/

namespace A060130.P13983426075283678403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A257687 n).toNat

end

end A060130.P13983426075283678403

noncomputable section

/-- A060130: Number of nonzero digits in factorial base representation (A007623) of n; minimum number of transpositions needed to compose each permutation in the lists A060117 & A060118.

Offset 0, canonical program `A060130.P13983426075283678403`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257687, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060130 (n : ℕ) : ℤ :=
  (A060130.P13983426075283678403.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257687, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060130.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A074262.P11865346292723131209

`A156242(lt[1, A100428(n+1)])+1`
-/

namespace A074262.P11865346292723131209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 1

end

end A074262.P11865346292723131209

noncomputable section

/-- A074262: Positions of '11' in Kolakoski sequence A000002.

Offset 1, canonical program `A074262.P11865346292723131209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A074262 (n : ℕ) : ℤ :=
  A074262.P11865346292723131209.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A074262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074274.P5256342783301417173

`Δ[A074273(n+1)]`
-/

namespace A074274.P5256342783301417173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074274.P5256342783301417173

noncomputable section

/-- A074274: Gaps between even number of 1's in the Kolakoski sequence A000002.

Offset 1, canonical program `A074274.P5256342783301417173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A074274 (n : ℕ) : ℤ :=
  A074274.P5256342783301417173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A074274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074276.P923500997283116459

`A156242(lt[A100429(n+1), A100428(n+1)])`
-/

namespace A074276.P923500997283116459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A074276.P923500997283116459

noncomputable section

/-- A074276: Positions of occurrences of 2,1,1,2,1 in the Kolakoski sequence A000002.

Offset 1, canonical program `A074276.P923500997283116459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A074276 (n : ℕ) : ℤ :=
  A074276.P923500997283116459.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A074276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074289.P13643960160893623

`∩[2*A022297(n+2)-n, record[A074288(n+1)]]`
-/

namespace A074289.P13643960160893623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022297 (n + 2) - (n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074289.P13643960160893623

noncomputable section

/-- A074289: Values of A000002(n)*A054353(n) that are repeated.

Offset 1, canonical program `A074289.P13643960160893623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1729 terms. -/
def A074289 (n : ℕ) : ℤ :=
  (A074289.P13643960160893623.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1729 terms. -/
def A074289.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A013948.P3339504944308927508

`A078649(n+1)-n`
-/

namespace A013948.P3339504944308927508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1) - (n : ℤ)

end

end A013948.P3339504944308927508

noncomputable section

/-- A013948: Positions of 2's in Kolakoski sequence (A000002).

Offset 1, canonical program `A013948.P3339504944308927508`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013948 (n : ℕ) : ℤ :=
  A013948.P3339504944308927508.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013948.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A022304.P12337399357003774958

`∑[A327239(n+2)]`
-/

namespace A022304.P12337399357003774958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327239 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022304.P12337399357003774958

noncomputable section

/-- A022304: Index of n-th 1 in A022303.

Offset 0, canonical program `A022304.P12337399357003774958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A022304 (n : ℕ) : ℤ :=
  A022304.P12337399357003774958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A022304.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A074263.P1367974971333941862

`∩[A078649(n+1), A156243(n+1)+1]`
-/

namespace A074263.P1367974971333941862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074263.P1367974971333941862

noncomputable section

/-- A074263: Positions of '22' in Kolakoski sequence A000002.

Offset 1, canonical program `A074263.P1367974971333941862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5008 terms. -/
def A074263 (n : ℕ) : ℤ :=
  (A074263.P1367974971333941862.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5008 terms. -/
def A074263.provenance : SequenceMachineLib.Provenance := .conjectured

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

